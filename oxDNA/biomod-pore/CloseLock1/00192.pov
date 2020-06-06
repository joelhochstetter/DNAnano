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
	<24.198479, 34.662113, 34.643909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202122, 35.054867, 34.719616>,  <24.204308, 35.290520, 34.765038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202122, 35.054867, 34.719616>,  <24.198479, 34.662113, 34.643909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.202122, 35.054867, 34.719616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829061, -0.113240, 0.547572,
		0.559084, 0.151923, -0.815073,
		0.009110, 0.981884, 0.189264,
		24.204855, 35.349434, 34.776394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.770184, 35.136936, 34.261940>,  <24.198479, 34.662113, 34.643909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.770184, 35.136936, 34.261940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.651131, 35.233120, 34.631500>,  <24.579699, 35.290829, 34.853237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.651131, 35.233120, 34.631500>,  <24.770184, 35.136936, 34.261940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.651131, 35.233120, 34.631500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853424, -0.366729, 0.370375,
		0.427881, 0.898716, -0.096060,
		-0.297634, 0.240457, 0.923902,
		24.561840, 35.305256, 34.908672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.276279, 35.524292, 34.462788>,  <24.770184, 35.136936, 34.261940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.276279, 35.524292, 34.462788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.068771, 35.424118, 34.789749>,  <24.944265, 35.364014, 34.985928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.068771, 35.424118, 34.789749>,  <25.276279, 35.524292, 34.462788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.068771, 35.424118, 34.789749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853839, -0.103868, 0.510069,
		-0.042838, 0.962545, 0.267717,
		-0.518772, -0.250438, 0.817408,
		24.913139, 35.348988, 35.034973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.244020, 36.075508, 35.146160>,  <25.276279, 35.524292, 34.462788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.244020, 36.075508, 35.146160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223309, 35.681091, 35.209454>,  <25.210882, 35.444439, 35.247429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223309, 35.681091, 35.209454>,  <25.244020, 36.075508, 35.146160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.223309, 35.681091, 35.209454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886264, 0.027656, 0.462354,
		-0.460277, 0.164174, 0.872463,
		-0.051778, -0.986044, 0.158231,
		25.207775, 35.385277, 35.256924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792028, 36.100307, 35.594090>,  <25.244020, 36.075508, 35.146160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792028, 36.100307, 35.594090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713856, 35.720650, 35.495350>,  <25.666952, 35.492855, 35.436108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713856, 35.720650, 35.495350>,  <25.792028, 36.100307, 35.594090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713856, 35.720650, 35.495350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933150, -0.257401, 0.250950,
		-0.301725, -0.181300, 0.935998,
		-0.195430, -0.949144, -0.246844,
		25.655228, 35.435905, 35.421295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478041, 36.443535, 35.534508>,  <25.792028, 36.100307, 35.594090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478041, 36.443535, 35.534508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279768, 36.662743, 35.804020>,  <26.160805, 36.794266, 35.965725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279768, 36.662743, 35.804020>,  <26.478041, 36.443535, 35.534508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279768, 36.662743, 35.804020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435771, -0.828002, 0.352869,
		0.751268, -0.118703, 0.649235,
		-0.495681, 0.548017, 0.673778,
		26.131063, 36.827148, 36.006153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375288, 36.031921, 36.136574>,  <26.478041, 36.443535, 35.534508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375288, 36.031921, 36.136574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750338, 36.006119, 35.999928>,  <26.975367, 35.990639, 35.917938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750338, 36.006119, 35.999928>,  <26.375288, 36.031921, 36.136574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750338, 36.006119, 35.999928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254005, 0.798031, 0.546469,
		0.237370, -0.599154, 0.764637,
		0.937623, -0.064507, -0.341617,
		27.031624, 35.986767, 35.897442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844522, 35.977478, 36.730030>,  <26.375288, 36.031921, 36.136574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844522, 35.977478, 36.730030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049540, 36.108910, 36.412708>,  <27.172550, 36.187767, 36.222313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049540, 36.108910, 36.412708>,  <26.844522, 35.977478, 36.730030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049540, 36.108910, 36.412708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222072, 0.841731, 0.492110,
		0.829450, -0.428397, 0.358453,
		0.512539, 0.328579, -0.793309,
		27.203302, 36.207481, 36.174717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280994, 36.353127, 37.061543>,  <26.844522, 35.977478, 36.730030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280994, 36.353127, 37.061543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361145, 36.474586, 36.688953>,  <27.409235, 36.547462, 36.465401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361145, 36.474586, 36.688953>,  <27.280994, 36.353127, 37.061543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361145, 36.474586, 36.688953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376607, 0.853833, 0.359355,
		0.904443, -0.422806, 0.056730,
		0.200376, 0.303651, -0.931475,
		27.421257, 36.565681, 36.409512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986982, 36.784424, 37.005001>,  <27.280994, 36.353127, 37.061543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986982, 36.784424, 37.005001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787918, 36.876766, 36.670567>,  <27.668480, 36.932171, 36.469906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787918, 36.876766, 36.670567>,  <27.986982, 36.784424, 37.005001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787918, 36.876766, 36.670567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451435, 0.892022, -0.022411,
		0.740634, -0.388592, -0.548139,
		-0.497661, 0.230851, -0.836087,
		27.638620, 36.946022, 36.419739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359594, 37.288937, 36.650940>,  <27.986982, 36.784424, 37.005001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359594, 37.288937, 36.650940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031385, 37.366016, 36.435677>,  <27.834461, 37.412266, 36.306519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031385, 37.366016, 36.435677>,  <28.359594, 37.288937, 36.650940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031385, 37.366016, 36.435677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281472, 0.955620, -0.086971,
		0.497512, -0.222837, -0.838347,
		-0.820522, 0.192702, -0.538154,
		27.785229, 37.423828, 36.274231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513920, 37.854679, 36.061684>,  <28.359594, 37.288937, 36.650940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513920, 37.854679, 36.061684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117384, 37.857468, 36.114143>,  <27.879463, 37.859142, 36.145618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117384, 37.857468, 36.114143>,  <28.513920, 37.854679, 36.061684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117384, 37.857468, 36.114143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004117, 0.996448, -0.084114,
		-0.131271, -0.083926, -0.987788,
		-0.991338, 0.006975, 0.131150,
		27.819983, 37.859562, 36.153488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260025, 38.266724, 35.494217>,  <28.513920, 37.854679, 36.061684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260025, 38.266724, 35.494217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996675, 38.246937, 35.794643>,  <27.838665, 38.235065, 35.974899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996675, 38.246937, 35.794643>,  <28.260025, 38.266724, 35.494217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996675, 38.246937, 35.794643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210792, 0.970026, -0.120893,
		-0.722572, -0.237911, -0.649066,
		-0.658373, -0.049464, 0.751064,
		27.799164, 38.232098, 36.019962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674686, 38.550606, 35.223099>,  <28.260025, 38.266724, 35.494217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674686, 38.550606, 35.223099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621731, 38.593117, 35.617294>,  <27.589958, 38.618622, 35.853809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621731, 38.593117, 35.617294>,  <27.674686, 38.550606, 35.223099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621731, 38.593117, 35.617294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263555, 0.954671, -0.138356,
		-0.955517, -0.278046, -0.098379,
		-0.132388, 0.106273, 0.985484,
		27.582014, 38.625000, 35.912941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119499, 39.014797, 35.234486>,  <27.674686, 38.550606, 35.223099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119499, 39.014797, 35.234486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297825, 38.992008, 35.591808>,  <27.404821, 38.978336, 35.806202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297825, 38.992008, 35.591808>,  <27.119499, 39.014797, 35.234486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297825, 38.992008, 35.591808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059364, 0.993894, 0.093011,
		-0.893154, -0.094496, 0.439712,
		0.445816, -0.056971, 0.893310,
		27.431570, 38.974918, 35.859802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747826, 39.506187, 35.611012>,  <27.119499, 39.014797, 35.234486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747826, 39.506187, 35.611012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082743, 39.449036, 35.822113>,  <27.283693, 39.414745, 35.948772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082743, 39.449036, 35.822113>,  <26.747826, 39.506187, 35.611012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082743, 39.449036, 35.822113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002195, 0.964364, 0.264571,
		-0.546750, -0.222682, 0.807141,
		0.837293, -0.142883, 0.527755,
		27.333931, 39.406170, 35.980438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600050, 39.896122, 36.132103>,  <26.747826, 39.506187, 35.611012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600050, 39.896122, 36.132103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996523, 39.844631, 36.144661>,  <27.234407, 39.813736, 36.152195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996523, 39.844631, 36.144661>,  <26.600050, 39.896122, 36.132103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996523, 39.844631, 36.144661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118658, 0.967781, 0.222081,
		-0.058972, -0.216398, 0.974523,
		0.991182, -0.128732, 0.031395,
		27.293879, 39.806011, 36.154079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852385, 40.181202, 36.703869>,  <26.600050, 39.896122, 36.132103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852385, 40.181202, 36.703869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157001, 40.184883, 36.444649>,  <27.339771, 40.187092, 36.289116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157001, 40.184883, 36.444649>,  <26.852385, 40.181202, 36.703869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157001, 40.184883, 36.444649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107139, 0.984355, 0.139879,
		0.639199, -0.175955, 0.748642,
		0.761542, 0.009202, -0.648050,
		27.385464, 40.187645, 36.250233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468513, 40.544918, 37.107613>,  <26.852385, 40.181202, 36.703869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468513, 40.544918, 37.107613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535084, 40.561459, 36.713539>,  <27.575026, 40.571384, 36.477093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535084, 40.561459, 36.713539>,  <27.468513, 40.544918, 37.107613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535084, 40.561459, 36.713539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195339, 0.977937, 0.074046,
		0.966512, -0.204768, 0.154676,
		0.166426, 0.041352, -0.985187,
		27.585011, 40.573864, 36.417984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022743, 40.899536, 37.082714>,  <27.468513, 40.544918, 37.107613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022743, 40.899536, 37.082714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897625, 40.942894, 36.705269>,  <27.822554, 40.968910, 36.478802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897625, 40.942894, 36.705269>,  <28.022743, 40.899536, 37.082714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897625, 40.942894, 36.705269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360855, 0.932538, -0.012494,
		0.878603, -0.344416, -0.330809,
		-0.312795, 0.108397, -0.943615,
		27.803787, 40.975414, 36.422184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578991, 41.177162, 36.826302>,  <28.022743, 40.899536, 37.082714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578991, 41.177162, 36.826302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306702, 41.249725, 36.542412>,  <28.143328, 41.293262, 36.372078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306702, 41.249725, 36.542412>,  <28.578991, 41.177162, 36.826302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306702, 41.249725, 36.542412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443272, 0.873348, -0.201923,
		0.583204, -0.452054, -0.674922,
		-0.680722, 0.181412, -0.709723,
		28.102486, 41.304150, 36.329494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009722, 41.399239, 36.190517>,  <28.578991, 41.177162, 36.826302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009722, 41.399239, 36.190517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638113, 41.541492, 36.149639>,  <28.415148, 41.626842, 36.125111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638113, 41.541492, 36.149639>,  <29.009722, 41.399239, 36.190517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638113, 41.541492, 36.149639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368140, 0.860497, -0.352162,
		-0.037300, -0.364789, -0.930343,
		-0.929022, 0.355632, -0.102196,
		28.359406, 41.648182, 36.118980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919264, 41.669079, 35.397373>,  <29.009722, 41.399239, 36.190517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919264, 41.669079, 35.397373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652098, 41.854336, 35.630402>,  <28.491798, 41.965492, 35.770218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652098, 41.854336, 35.630402>,  <28.919264, 41.669079, 35.397373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652098, 41.854336, 35.630402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325742, 0.885736, -0.330701,
		-0.669164, -0.031114, -0.742463,
		-0.667916, 0.463144, 0.582568,
		28.451723, 41.993279, 35.805172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555843, 42.061714, 34.967243>,  <28.919264, 41.669079, 35.397373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555843, 42.061714, 34.967243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497648, 42.240593, 35.320251>,  <28.462730, 42.347919, 35.532059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497648, 42.240593, 35.320251>,  <28.555843, 42.061714, 34.967243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497648, 42.240593, 35.320251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322144, 0.864815, -0.385120,
		-0.935444, 0.228270, -0.269883,
		-0.145488, 0.447200, 0.882522,
		28.454002, 42.374752, 35.585007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072939, 42.537579, 34.813225>,  <28.555843, 42.061714, 34.967243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072939, 42.537579, 34.813225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313038, 42.626232, 35.120621>,  <28.457098, 42.679424, 35.305058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313038, 42.626232, 35.120621>,  <28.072939, 42.537579, 34.813225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313038, 42.626232, 35.120621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279475, 0.842148, -0.461173,
		-0.749396, 0.491592, 0.443557,
		0.600250, 0.221638, 0.768490,
		28.493113, 42.692722, 35.351170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042364, 43.167282, 34.994259>,  <28.072939, 42.537579, 34.813225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042364, 43.167282, 34.994259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430178, 43.069416, 34.989437>,  <28.662865, 43.010696, 34.986546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430178, 43.069416, 34.989437>,  <28.042364, 43.167282, 34.994259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430178, 43.069416, 34.989437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188867, 0.777930, -0.599295,
		0.156005, 0.578759, 0.800438,
		0.969532, -0.244669, -0.012053,
		28.721037, 42.996014, 34.985821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496382, 43.726810, 35.122314>,  <28.042364, 43.167282, 34.994259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496382, 43.726810, 35.122314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704477, 43.478188, 34.888046>,  <28.829334, 43.329014, 34.747482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704477, 43.478188, 34.888046>,  <28.496382, 43.726810, 35.122314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704477, 43.478188, 34.888046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279566, 0.771947, -0.570912,
		0.806966, 0.133276, 0.575364,
		0.520239, -0.621559, -0.585675,
		28.860550, 43.291721, 34.712345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979208, 44.082523, 34.911823>,  <28.496382, 43.726810, 35.122314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979208, 44.082523, 34.911823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043306, 43.778759, 34.659599>,  <29.081764, 43.596500, 34.508263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043306, 43.778759, 34.659599>,  <28.979208, 44.082523, 34.911823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043306, 43.778759, 34.659599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485930, 0.616739, -0.619278,
		0.859182, -0.207173, 0.467852,
		0.160245, -0.759416, -0.630563,
		29.091379, 43.550934, 34.470428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618622, 44.168755, 34.663147>,  <28.979208, 44.082523, 34.911823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618622, 44.168755, 34.663147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485826, 43.935371, 34.366673>,  <29.406149, 43.795341, 34.188789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485826, 43.935371, 34.366673>,  <29.618622, 44.168755, 34.663147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485826, 43.935371, 34.366673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679521, 0.397054, -0.616927,
		0.654243, -0.708465, 0.264655,
		-0.331989, -0.583459, -0.741187,
		29.386230, 43.760334, 34.144318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205441, 43.808922, 34.245354>,  <29.618622, 44.168755, 34.663147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205441, 43.808922, 34.245354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881561, 43.871605, 34.019138>,  <29.687233, 43.909214, 33.883411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881561, 43.871605, 34.019138>,  <30.205441, 43.808922, 34.245354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881561, 43.871605, 34.019138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541482, 0.571026, -0.617031,
		0.226242, -0.805836, -0.547213,
		-0.809699, 0.156708, -0.565536,
		29.638651, 43.918617, 33.849476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440147, 43.735542, 33.617668>,  <30.205441, 43.808922, 34.245354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440147, 43.735542, 33.617668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693428, 43.714989, 33.308758>,  <30.845396, 43.702656, 33.123409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693428, 43.714989, 33.308758>,  <30.440147, 43.735542, 33.617668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693428, 43.714989, 33.308758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723129, 0.394999, 0.566622,
		0.275933, -0.917243, 0.287273,
		0.633203, -0.051385, -0.772279,
		30.883389, 43.699574, 33.077076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523203, 43.127243, 34.015308>,  <30.440147, 43.735542, 33.617668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523203, 43.127243, 34.015308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777855, 43.319126, 33.773785>,  <30.930645, 43.434258, 33.628872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777855, 43.319126, 33.773785>,  <30.523203, 43.127243, 34.015308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777855, 43.319126, 33.773785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242002, 0.867696, 0.434210,
		0.732216, -0.130308, 0.668491,
		0.636628, 0.479711, -0.603807,
		30.968843, 43.463039, 33.592644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977623, 43.429115, 34.463192>,  <30.523203, 43.127243, 34.015308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977623, 43.429115, 34.463192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988396, 43.608318, 34.105743>,  <30.994860, 43.715839, 33.891273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988396, 43.608318, 34.105743>,  <30.977623, 43.429115, 34.463192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988396, 43.608318, 34.105743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027964, 0.893260, 0.448669,
		0.999246, -0.037073, 0.011530,
		0.026933, 0.448008, -0.893624,
		30.996475, 43.742722, 33.837658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488459, 43.996468, 34.386444>,  <30.977623, 43.429115, 34.463192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488459, 43.996468, 34.386444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209040, 44.075638, 34.111385>,  <31.041389, 44.123138, 33.946350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209040, 44.075638, 34.111385>,  <31.488459, 43.996468, 34.386444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209040, 44.075638, 34.111385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039367, 0.948900, 0.313112,
		0.714482, 0.245793, -0.655058,
		-0.698545, 0.197926, -0.687648,
		30.999475, 44.135014, 33.905090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722353, 43.947330, 35.224773>,  <31.488459, 43.996468, 34.386444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722353, 43.947330, 35.224773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899790, 43.760284, 34.918949>,  <32.006252, 43.648056, 34.735455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899790, 43.760284, 34.918949>,  <31.722353, 43.947330, 35.224773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899790, 43.760284, 34.918949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356204, 0.874807, -0.328377,
		0.822401, -0.126675, 0.554625,
		0.443593, -0.467617, -0.764565,
		32.032867, 43.619999, 34.689579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391861, 44.224892, 35.286930>,  <31.722353, 43.947330, 35.224773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391861, 44.224892, 35.286930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465767, 44.390015, 35.643681>,  <32.510109, 44.489090, 35.857731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465767, 44.390015, 35.643681>,  <32.391861, 44.224892, 35.286930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465767, 44.390015, 35.643681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284744, -0.846094, 0.450606,
		0.940630, -0.337212, -0.038780,
		0.184761, 0.412811, 0.891880,
		32.521194, 44.513859, 35.911243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714413, 43.703587, 35.735950>,  <32.391861, 44.224892, 35.286930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714413, 43.703587, 35.735950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489529, 43.959362, 35.945728>,  <32.354599, 44.112827, 36.071594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489529, 43.959362, 35.945728>,  <32.714413, 43.703587, 35.735950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489529, 43.959362, 35.945728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366492, -0.761126, 0.535136,
		0.741353, 0.108655, 0.662261,
		-0.562210, 0.639438, 0.524442,
		32.320866, 44.151192, 36.103062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901604, 43.645687, 36.514893>,  <32.714413, 43.703587, 35.735950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901604, 43.645687, 36.514893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537991, 43.811394, 36.532990>,  <32.319824, 43.910816, 36.543846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537991, 43.811394, 36.532990>,  <32.901604, 43.645687, 36.514893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537991, 43.811394, 36.532990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317104, -0.758072, 0.569888,
		0.270380, 0.503700, 0.820476,
		-0.909032, 0.414263, 0.045242,
		32.265282, 43.935673, 36.546562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679878, 43.318146, 37.032330>,  <32.901604, 43.645687, 36.514893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679878, 43.318146, 37.032330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323330, 43.458454, 36.917500>,  <32.109402, 43.542637, 36.848602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323330, 43.458454, 36.917500>,  <32.679878, 43.318146, 37.032330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323330, 43.458454, 36.917500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452641, -0.722139, 0.523097,
		-0.023824, 0.596219, 0.802468,
		-0.891374, 0.350768, -0.287077,
		32.055916, 43.563686, 36.831375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281124, 43.486977, 37.602684>,  <32.679878, 43.318146, 37.032330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281124, 43.486977, 37.602684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033920, 43.401569, 37.300034>,  <31.885599, 43.350327, 37.118443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033920, 43.401569, 37.300034>,  <32.281124, 43.486977, 37.602684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033920, 43.401569, 37.300034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462569, -0.679436, 0.569558,
		-0.635687, 0.701981, 0.321130,
		-0.618006, -0.213516, -0.756624,
		31.848518, 43.337513, 37.073048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529778, 43.315380, 37.901157>,  <32.281124, 43.486977, 37.602684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529778, 43.315380, 37.901157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544640, 43.178696, 37.525528>,  <31.553556, 43.096684, 37.300152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544640, 43.178696, 37.525528>,  <31.529778, 43.315380, 37.901157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544640, 43.178696, 37.525528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544962, -0.794616, 0.267586,
		-0.837637, 0.501815, -0.215746,
		0.037157, -0.341713, -0.939070,
		31.555786, 43.076183, 37.243809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890564, 43.092510, 37.779305>,  <31.529778, 43.315380, 37.901157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890564, 43.092510, 37.779305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079624, 42.892239, 37.489220>,  <31.193060, 42.772076, 37.315170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079624, 42.892239, 37.489220>,  <30.890564, 43.092510, 37.779305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079624, 42.892239, 37.489220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524748, -0.821031, 0.224828,
		-0.707984, 0.274287, -0.650787,
		0.472649, -0.500674, -0.725209,
		31.221418, 42.742035, 37.271656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358627, 42.698792, 37.427208>,  <30.890564, 43.092510, 37.779305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358627, 42.698792, 37.427208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710205, 42.526688, 37.344906>,  <30.921152, 42.423428, 37.295525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710205, 42.526688, 37.344906>,  <30.358627, 42.698792, 37.427208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710205, 42.526688, 37.344906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381079, -0.892994, 0.239461,
		-0.286764, -0.132065, -0.948855,
		0.878945, -0.430257, -0.205752,
		30.973888, 42.397610, 37.283180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276106, 42.247139, 36.849312>,  <30.358627, 42.698792, 37.427208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276106, 42.247139, 36.849312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566572, 42.125225, 37.095821>,  <30.740852, 42.052078, 37.243729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566572, 42.125225, 37.095821>,  <30.276106, 42.247139, 36.849312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566572, 42.125225, 37.095821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453704, -0.885916, 0.096470,
		0.516563, -0.349658, -0.781602,
		0.726165, -0.304783, 0.616273,
		30.784422, 42.033791, 37.280704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455149, 41.674419, 36.526588>,  <30.276106, 42.247139, 36.849312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455149, 41.674419, 36.526588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623493, 41.621975, 36.885628>,  <30.724501, 41.590508, 37.101051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623493, 41.621975, 36.885628>,  <30.455149, 41.674419, 36.526588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623493, 41.621975, 36.885628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216622, -0.975398, -0.040904,
		0.880880, -0.177225, -0.438910,
		0.420862, -0.131109, 0.897600,
		30.749752, 41.582642, 37.154907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851896, 41.043781, 36.486473>,  <30.455149, 41.674419, 36.526588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851896, 41.043781, 36.486473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833630, 41.090919, 36.883266>,  <30.822670, 41.119202, 37.121342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833630, 41.090919, 36.883266>,  <30.851896, 41.043781, 36.486473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833630, 41.090919, 36.883266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137971, -0.984244, 0.110576,
		0.989383, -0.131815, 0.061207,
		-0.045667, 0.117846, 0.991981,
		30.819929, 41.126274, 37.180862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375277, 40.541115, 36.728081>,  <30.851896, 41.043781, 36.486473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375277, 40.541115, 36.728081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089691, 40.636253, 36.991501>,  <30.918341, 40.693336, 37.149551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089691, 40.636253, 36.991501>,  <31.375277, 40.541115, 36.728081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089691, 40.636253, 36.991501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189390, -0.971077, 0.145398,
		0.674085, -0.020913, 0.738358,
		-0.713962, 0.237848, 0.658549,
		30.875504, 40.707607, 37.189064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514603, 40.099102, 37.266567>,  <31.375277, 40.541115, 36.728081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514603, 40.099102, 37.266567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146269, 40.243774, 37.324879>,  <30.925268, 40.330578, 37.359867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146269, 40.243774, 37.324879>,  <31.514603, 40.099102, 37.266567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146269, 40.243774, 37.324879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297623, -0.893392, 0.336558,
		0.251968, 0.266525, 0.930310,
		-0.920832, 0.361684, 0.145782,
		30.870020, 40.352280, 37.368614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220804, 39.764942, 37.838249>,  <31.514603, 40.099102, 37.266567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220804, 39.764942, 37.838249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876005, 39.859905, 37.659096>,  <30.669127, 39.916882, 37.551601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876005, 39.859905, 37.659096>,  <31.220804, 39.764942, 37.838249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876005, 39.859905, 37.659096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353695, -0.914611, 0.195923,
		-0.363129, 0.327300, 0.872360,
		-0.861996, 0.237404, -0.447887,
		30.617407, 39.931126, 37.524731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735504, 39.265125, 38.024239>,  <31.220804, 39.764942, 37.838249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735504, 39.265125, 38.024239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563782, 39.421898, 37.698765>,  <30.460749, 39.515961, 37.503479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563782, 39.421898, 37.698765>,  <30.735504, 39.265125, 38.024239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563782, 39.421898, 37.698765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415626, -0.885601, -0.207280,
		-0.801843, 0.249204, 0.543089,
		-0.429306, 0.391929, -0.813689,
		30.434990, 39.539474, 37.454659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913797, 39.121506, 37.993858>,  <30.735504, 39.265125, 38.024239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913797, 39.121506, 37.993858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043406, 39.192036, 37.622070>,  <30.121170, 39.234352, 37.398998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043406, 39.192036, 37.622070>,  <29.913797, 39.121506, 37.993858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043406, 39.192036, 37.622070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356301, -0.887391, -0.292551,
		-0.876391, 0.425965, -0.224707,
		0.324020, 0.176325, -0.929473,
		30.140612, 39.244934, 37.343227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365273, 38.872097, 37.622421>,  <29.913797, 39.121506, 37.993858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365273, 38.872097, 37.622421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659155, 38.907475, 37.353382>,  <29.835484, 38.928699, 37.191959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659155, 38.907475, 37.353382>,  <29.365273, 38.872097, 37.622421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659155, 38.907475, 37.353382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314238, -0.834311, -0.452967,
		-0.601216, 0.544153, -0.585181,
		0.734707, 0.088445, -0.672595,
		29.879566, 38.934010, 37.151604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028755, 38.829960, 36.908821>,  <29.365273, 38.872097, 37.622421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028755, 38.829960, 36.908821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412912, 38.728306, 36.863117>,  <29.643408, 38.667313, 36.835693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412912, 38.728306, 36.863117>,  <29.028755, 38.829960, 36.908821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412912, 38.728306, 36.863117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278629, -0.879797, -0.385128,
		-0.002655, 0.401713, -0.915762,
		0.960395, -0.254135, -0.114264,
		29.701031, 38.652065, 36.828838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022438, 38.380611, 36.359261>,  <29.028755, 38.829960, 36.908821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022438, 38.380611, 36.359261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400743, 38.339176, 36.482418>,  <29.627728, 38.314316, 36.556313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400743, 38.339176, 36.482418>,  <29.022438, 38.380611, 36.359261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400743, 38.339176, 36.482418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040787, -0.902427, -0.428908,
		0.322285, 0.418203, -0.849257,
		0.945764, -0.103592, 0.307896,
		29.684473, 38.308098, 36.574787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415363, 38.249378, 35.786575>,  <29.022438, 38.380611, 36.359261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415363, 38.249378, 35.786575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581831, 38.084297, 36.110668>,  <29.681711, 37.985249, 36.305122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581831, 38.084297, 36.110668>,  <29.415363, 38.249378, 35.786575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581831, 38.084297, 36.110668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031459, -0.897067, -0.440774,
		0.908742, 0.157948, -0.386315,
		0.416170, -0.412703, 0.810234,
		29.706682, 37.960487, 36.353737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141399, 37.801308, 35.583424>,  <29.415363, 38.249378, 35.786575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141399, 37.801308, 35.583424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021864, 37.660053, 35.938049>,  <29.950142, 37.575302, 36.150826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021864, 37.660053, 35.938049>,  <30.141399, 37.801308, 35.583424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021864, 37.660053, 35.938049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103768, -0.935531, -0.337659,
		0.948645, -0.008909, 0.316216,
		-0.298838, -0.353132, 0.886563,
		29.932213, 37.554115, 36.204018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637218, 37.358349, 35.723938>,  <30.141399, 37.801308, 35.583424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637218, 37.358349, 35.723938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315126, 37.257343, 35.938541>,  <30.121872, 37.196739, 36.067303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315126, 37.257343, 35.938541>,  <30.637218, 37.358349, 35.723938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315126, 37.257343, 35.938541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184846, -0.966603, -0.177510,
		0.563414, -0.043765, 0.825015,
		-0.805231, -0.252512, 0.536508,
		30.073557, 37.181591, 36.099495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853508, 36.909515, 36.290482>,  <30.637218, 37.358349, 35.723938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853508, 36.909515, 36.290482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468050, 36.803715, 36.275394>,  <30.236774, 36.740234, 36.266342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468050, 36.803715, 36.275394>,  <30.853508, 36.909515, 36.290482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468050, 36.803715, 36.275394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265709, -0.933965, -0.238973,
		0.027980, -0.240308, 0.970293,
		-0.963647, -0.264502, -0.037720,
		30.178955, 36.724365, 36.264080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752213, 36.338623, 36.686611>,  <30.853508, 36.909515, 36.290482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752213, 36.338623, 36.686611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473211, 36.328621, 36.400154>,  <30.305811, 36.322620, 36.228279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473211, 36.328621, 36.400154>,  <30.752213, 36.338623, 36.686611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473211, 36.328621, 36.400154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299154, -0.918295, -0.259309,
		-0.651149, -0.395106, 0.647994,
		-0.697504, -0.025002, -0.716144,
		30.263960, 36.321121, 36.185310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515188, 35.615829, 36.668633>,  <30.752213, 36.338623, 36.686611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515188, 35.615829, 36.668633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404720, 35.772854, 36.317719>,  <30.338440, 35.867069, 36.107170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404720, 35.772854, 36.317719>,  <30.515188, 35.615829, 36.668633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404720, 35.772854, 36.317719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329047, -0.819001, -0.470069,
		-0.903028, -0.418485, 0.097010,
		-0.276169, 0.392565, -0.877282,
		30.321869, 35.890625, 36.054535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076324, 35.181194, 36.226357>,  <30.515188, 35.615829, 36.668633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076324, 35.181194, 36.226357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295855, 35.422371, 35.994755>,  <30.427572, 35.567078, 35.855793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295855, 35.422371, 35.994755>,  <30.076324, 35.181194, 36.226357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295855, 35.422371, 35.994755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323672, -0.791889, -0.517831,
		-0.770730, 0.096793, -0.629767,
		0.548828, 0.602946, -0.579003,
		30.460503, 35.603256, 35.821053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801458, 35.128433, 35.452827>,  <30.076324, 35.181194, 36.226357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801458, 35.128433, 35.452827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189871, 35.204502, 35.510696>,  <30.422918, 35.250141, 35.545418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189871, 35.204502, 35.510696>,  <29.801458, 35.128433, 35.452827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189871, 35.204502, 35.510696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238813, -0.792703, -0.560883,
		0.008022, 0.579187, -0.815156,
		0.971033, 0.190170, 0.144677,
		30.481180, 35.261555, 35.554100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244564, 35.203281, 34.846943>,  <29.801458, 35.128433, 35.452827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244564, 35.203281, 34.846943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485155, 35.052502, 35.128689>,  <30.629511, 34.962036, 35.297737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485155, 35.052502, 35.128689>,  <30.244564, 35.203281, 34.846943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485155, 35.052502, 35.128689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138584, -0.917549, -0.372690,
		0.786776, 0.126551, -0.604126,
		0.601480, -0.376946, 0.704368,
		30.665600, 34.939419, 35.340000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839806, 34.861851, 34.511745>,  <30.244564, 35.203281, 34.846943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839806, 34.861851, 34.511745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765373, 34.695744, 34.867931>,  <30.720715, 34.596077, 35.081642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765373, 34.695744, 34.867931>,  <30.839806, 34.861851, 34.511745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765373, 34.695744, 34.867931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157854, -0.881883, -0.444257,
		0.969771, -0.223231, 0.098549,
		-0.186081, -0.415271, 0.890463,
		30.709549, 34.571163, 35.135071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378826, 34.575607, 34.871300>,  <30.839806, 34.861851, 34.511745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378826, 34.575607, 34.871300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649645, 34.611820, 35.163441>,  <31.812136, 34.633549, 35.338726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649645, 34.611820, 35.163441>,  <31.378826, 34.575607, 34.871300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649645, 34.611820, 35.163441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735272, -0.125497, -0.666052,
		0.031358, 0.987955, -0.151533,
		0.677046, 0.090532, 0.730351,
		31.852758, 34.638981, 35.382545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700993, 33.984512, 34.700512>,  <31.378826, 34.575607, 34.871300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700993, 33.984512, 34.700512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037384, 33.811470, 34.830502>,  <32.239220, 33.707645, 34.908497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037384, 33.811470, 34.830502>,  <31.700993, 33.984512, 34.700512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037384, 33.811470, 34.830502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393361, -0.076431, 0.916202,
		-0.371520, -0.898336, -0.234448,
		0.840976, -0.432610, 0.324974,
		32.289677, 33.681686, 34.927994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548763, 33.383018, 35.049854>,  <31.700993, 33.984512, 34.700512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548763, 33.383018, 35.049854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899908, 33.502590, 35.199520>,  <32.110596, 33.574333, 35.289322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899908, 33.502590, 35.199520>,  <31.548763, 33.383018, 35.049854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899908, 33.502590, 35.199520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344249, -0.149289, 0.926933,
		0.332948, -0.942525, -0.028148,
		0.877860, 0.298930, 0.374169,
		32.163265, 33.592270, 35.311771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791389, 32.754257, 35.417320>,  <31.548763, 33.383018, 35.049854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791389, 32.754257, 35.417320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957865, 33.098396, 35.535023>,  <32.057751, 33.304882, 35.605644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957865, 33.098396, 35.535023>,  <31.791389, 32.754257, 35.417320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957865, 33.098396, 35.535023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244370, -0.205874, 0.947575,
		0.875826, -0.466276, 0.124562,
		0.416187, 0.860350, 0.294254,
		32.082722, 33.356503, 35.623299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270889, 32.475922, 35.840401>,  <31.791389, 32.754257, 35.417320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270889, 32.475922, 35.840401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282341, 32.854874, 35.967930>,  <32.289211, 33.082245, 36.044449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282341, 32.854874, 35.967930>,  <32.270889, 32.475922, 35.840401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282341, 32.854874, 35.967930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015383, -0.319333, 0.947518,
		0.999472, -0.022226, -0.023717,
		0.028633, 0.947382, 0.318822,
		32.290932, 33.139088, 36.063576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955242, 32.629890, 36.339867>,  <32.270889, 32.475922, 35.840401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955242, 32.629890, 36.339867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658291, 32.889999, 36.404400>,  <32.480122, 33.046066, 36.443119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658291, 32.889999, 36.404400>,  <32.955242, 32.629890, 36.339867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658291, 32.889999, 36.404400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116590, -0.111744, 0.986874,
		0.659763, 0.751439, 0.007141,
		-0.742374, 0.650271, 0.161335,
		32.435577, 33.085079, 36.452801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124638, 32.945816, 36.920589>,  <32.955242, 32.629890, 36.339867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124638, 32.945816, 36.920589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743382, 33.066494, 36.911690>,  <32.514626, 33.138901, 36.906349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743382, 33.066494, 36.911690>,  <33.124638, 32.945816, 36.920589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743382, 33.066494, 36.911690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001527, 0.068754, 0.997633,
		0.302513, 0.950922, -0.065071,
		-0.953144, 0.301697, -0.022251,
		32.457439, 33.157001, 36.905014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108154, 33.516682, 37.373730>,  <33.124638, 32.945816, 36.920589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108154, 33.516682, 37.373730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730141, 33.394135, 37.328045>,  <32.503330, 33.320606, 37.300632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730141, 33.394135, 37.328045>,  <33.108154, 33.516682, 37.373730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730141, 33.394135, 37.328045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135880, 0.050284, 0.989448,
		-0.297391, 0.950585, -0.089149,
		-0.945037, -0.306367, -0.114211,
		32.446629, 33.302223, 37.293781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677967, 33.931454, 37.741276>,  <33.108154, 33.516682, 37.373730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677967, 33.931454, 37.741276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482105, 33.588070, 37.680244>,  <32.364590, 33.382038, 37.643627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482105, 33.588070, 37.680244>,  <32.677967, 33.931454, 37.741276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482105, 33.588070, 37.680244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146177, -0.091690, 0.985000,
		-0.859577, 0.504612, -0.080591,
		-0.489653, -0.858463, -0.152577,
		32.335209, 33.330532, 37.634472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063374, 33.932869, 38.162731>,  <32.677967, 33.931454, 37.741276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063374, 33.932869, 38.162731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130341, 33.546215, 38.085186>,  <32.170521, 33.314220, 38.038658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130341, 33.546215, 38.085186>,  <32.063374, 33.932869, 38.162731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130341, 33.546215, 38.085186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245513, -0.231321, 0.941389,
		-0.954828, -0.110004, -0.276049,
		0.167413, -0.966638, -0.193865,
		32.180565, 33.256222, 38.027027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476076, 33.655334, 38.395107>,  <32.063374, 33.932869, 38.162731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476076, 33.655334, 38.395107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769035, 33.382992, 38.392769>,  <31.944811, 33.219585, 38.391365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769035, 33.382992, 38.392769>,  <31.476076, 33.655334, 38.395107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769035, 33.382992, 38.392769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260091, -0.287700, 0.921727,
		-0.629245, -0.673548, -0.387795,
		0.732396, -0.680854, -0.005850,
		31.988754, 33.178734, 38.391014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105001, 33.125210, 38.670132>,  <31.476076, 33.655334, 38.395107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105001, 33.125210, 38.670132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494051, 33.036400, 38.697590>,  <31.727480, 32.983112, 38.714066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494051, 33.036400, 38.697590>,  <31.105001, 33.125210, 38.670132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494051, 33.036400, 38.697590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148747, -0.367825, 0.917921,
		-0.178550, -0.903001, -0.390780,
		0.972622, -0.222022, 0.068643,
		31.785837, 32.969791, 38.718182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127100, 32.453571, 38.965847>,  <31.105001, 33.125210, 38.670132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127100, 32.453571, 38.965847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501881, 32.572151, 39.039864>,  <31.726749, 32.643299, 39.084274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501881, 32.572151, 39.039864>,  <31.127100, 32.453571, 38.965847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501881, 32.572151, 39.039864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086684, -0.315794, 0.944860,
		0.338543, -0.901326, -0.270185,
		0.936950, 0.296455, 0.185041,
		31.782965, 32.661087, 39.095375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507252, 31.905910, 39.173180>,  <31.127100, 32.453571, 38.965847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507252, 31.905910, 39.173180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640015, 32.251774, 39.324020>,  <31.719671, 32.459290, 39.414524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640015, 32.251774, 39.324020>,  <31.507252, 31.905910, 39.173180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640015, 32.251774, 39.324020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031325, -0.409649, 0.911705,
		0.942793, -0.290787, -0.163050,
		0.331905, 0.864657, 0.377105,
		31.739586, 32.511169, 39.437153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952641, 31.710083, 39.829906>,  <31.507252, 31.905910, 39.173180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952641, 31.710083, 39.829906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835409, 32.086514, 39.897415>,  <31.765070, 32.312370, 39.937920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835409, 32.086514, 39.897415>,  <31.952641, 31.710083, 39.829906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835409, 32.086514, 39.897415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136338, -0.215852, 0.966861,
		0.946318, 0.260355, 0.191566,
		-0.293077, 0.941076, 0.168768,
		31.747486, 32.368835, 39.948044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316551, 31.859726, 40.424519>,  <31.952641, 31.710083, 39.829906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316551, 31.859726, 40.424519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984310, 32.080246, 40.393089>,  <31.784966, 32.212559, 40.374233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984310, 32.080246, 40.393089>,  <32.316551, 31.859726, 40.424519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984310, 32.080246, 40.393089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267087, -0.270586, 0.924904,
		0.488638, 0.789211, 0.371993,
		-0.830600, 0.551298, -0.078569,
		31.735130, 32.245636, 40.369518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173019, 32.060246, 41.071842>,  <32.316551, 31.859726, 40.424519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173019, 32.060246, 41.071842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818882, 32.189960, 40.938576>,  <31.606400, 32.267788, 40.858616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818882, 32.189960, 40.938576>,  <32.173019, 32.060246, 41.071842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818882, 32.189960, 40.938576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426666, -0.281990, 0.859324,
		0.184717, 0.902950, 0.388021,
		-0.885345, 0.324287, -0.333170,
		31.553278, 32.287247, 40.838623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894802, 32.430180, 41.559666>,  <32.173019, 32.060246, 41.071842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894802, 32.430180, 41.559666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587585, 32.328991, 41.324337>,  <31.403255, 32.268276, 41.183140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587585, 32.328991, 41.324337>,  <31.894802, 32.430180, 41.559666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587585, 32.328991, 41.324337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529202, -0.266629, 0.805515,
		-0.360635, 0.930008, 0.070908,
		-0.768041, -0.252973, -0.588317,
		31.357174, 32.253098, 41.147842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340754, 32.678913, 41.901981>,  <31.894802, 32.430180, 41.559666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340754, 32.678913, 41.901981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186649, 32.408630, 41.650585>,  <31.094187, 32.246460, 41.499748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186649, 32.408630, 41.650585>,  <31.340754, 32.678913, 41.901981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186649, 32.408630, 41.650585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584100, -0.348710, 0.732959,
		-0.714425, 0.649478, -0.260337,
		-0.385258, -0.675707, -0.628487,
		31.071072, 32.205917, 41.462040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733643, 32.847672, 42.012859>,  <31.340754, 32.678913, 41.901981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733643, 32.847672, 42.012859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748480, 32.478146, 41.860447>,  <30.757381, 32.256428, 41.769001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748480, 32.478146, 41.860447>,  <30.733643, 32.847672, 42.012859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748480, 32.478146, 41.860447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609644, -0.323036, 0.723866,
		-0.791807, 0.205443, -0.575182,
		0.037091, -0.923818, -0.381029,
		30.759607, 32.201000, 41.746140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017887, 32.638622, 42.203632>,  <30.733643, 32.847672, 42.012859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017887, 32.638622, 42.203632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242224, 32.314350, 42.136395>,  <30.376825, 32.119789, 42.096050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242224, 32.314350, 42.136395>,  <30.017887, 32.638622, 42.203632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242224, 32.314350, 42.136395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588483, -0.533157, 0.607809,
		-0.582361, -0.241960, -0.776087,
		0.560841, -0.810678, -0.168100,
		30.410477, 32.071148, 42.085964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492210, 32.087177, 42.138210>,  <30.017887, 32.638622, 42.203632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492210, 32.087177, 42.138210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862583, 31.952850, 42.207352>,  <30.084806, 31.872253, 42.248837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862583, 31.952850, 42.207352>,  <29.492210, 32.087177, 42.138210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862583, 31.952850, 42.207352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360371, -0.648503, 0.670505,
		-0.113075, -0.683131, -0.721488,
		0.925930, -0.335821, 0.172851,
		30.140362, 31.852104, 42.259209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373482, 31.367840, 42.261562>,  <29.492210, 32.087177, 42.138210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373482, 31.367840, 42.261562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741650, 31.399597, 42.414677>,  <29.962549, 31.418652, 42.506546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741650, 31.399597, 42.414677>,  <29.373482, 31.367840, 42.261562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741650, 31.399597, 42.414677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292186, -0.510818, 0.808513,
		0.259727, -0.856015, -0.446968,
		0.920418, 0.079394, 0.382788,
		30.017775, 31.423416, 42.529514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541824, 30.767725, 42.504246>,  <29.373482, 31.367840, 42.261562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541824, 30.767725, 42.504246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794930, 31.006241, 42.701851>,  <29.946793, 31.149351, 42.820415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794930, 31.006241, 42.701851>,  <29.541824, 30.767725, 42.504246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794930, 31.006241, 42.701851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226040, -0.467953, 0.854357,
		0.740620, -0.652272, -0.161317,
		0.632762, 0.596290, 0.494015,
		29.984758, 31.185127, 42.850056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063673, 30.330553, 42.788452>,  <29.541824, 30.767725, 42.504246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063673, 30.330553, 42.788452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041498, 30.663115, 43.009609>,  <30.028194, 30.862652, 43.142303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041498, 30.663115, 43.009609>,  <30.063673, 30.330553, 42.788452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041498, 30.663115, 43.009609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259180, -0.546747, 0.796174,
		0.964237, -0.099163, 0.245793,
		-0.055436, 0.831405, 0.552894,
		30.024868, 30.912537, 43.175476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434338, 30.154711, 43.426300>,  <30.063673, 30.330553, 42.788452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434338, 30.154711, 43.426300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229324, 30.486027, 43.516853>,  <30.106316, 30.684816, 43.571186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229324, 30.486027, 43.516853>,  <30.434338, 30.154711, 43.426300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229324, 30.486027, 43.516853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313251, -0.425834, 0.848846,
		0.799489, 0.364149, 0.477717,
		-0.512534, 0.828288, 0.226379,
		30.075563, 30.734512, 43.584766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525082, 30.308447, 44.107071>,  <30.434338, 30.154711, 43.426300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525082, 30.308447, 44.107071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208168, 30.546377, 44.052719>,  <30.018019, 30.689137, 44.020107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208168, 30.546377, 44.052719>,  <30.525082, 30.308447, 44.107071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208168, 30.546377, 44.052719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352186, -0.263984, 0.897930,
		0.498244, 0.759271, 0.418641,
		-0.792286, 0.594828, -0.135876,
		29.970482, 30.724825, 44.011955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409792, 30.684746, 44.700874>,  <30.525082, 30.308447, 44.107071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409792, 30.684746, 44.700874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053480, 30.704393, 44.520164>,  <29.839693, 30.716181, 44.411739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053480, 30.704393, 44.520164>,  <30.409792, 30.684746, 44.700874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053480, 30.704393, 44.520164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451165, 0.023501, 0.892131,
		0.054436, 0.998516, 0.001226,
		-0.890779, 0.049117, -0.451775,
		29.786247, 30.719130, 44.384632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032663, 31.138340, 45.182636>,  <30.409792, 30.684746, 44.700874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032663, 31.138340, 45.182636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754257, 30.953665, 44.962669>,  <29.587214, 30.842859, 44.830688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754257, 30.953665, 44.962669>,  <30.032663, 31.138340, 45.182636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754257, 30.953665, 44.962669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565607, -0.119272, 0.816004,
		-0.442327, 0.878988, -0.178118,
		-0.696014, -0.461686, -0.549919,
		29.545454, 30.815159, 44.797695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341915, 31.497213, 45.368649>,  <30.032663, 31.138340, 45.182636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341915, 31.497213, 45.368649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248186, 31.130531, 45.239193>,  <29.191948, 30.910522, 45.161518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248186, 31.130531, 45.239193>,  <29.341915, 31.497213, 45.368649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248186, 31.130531, 45.239193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440735, -0.196562, 0.875852,
		-0.866514, 0.347872, -0.357965,
		-0.234322, -0.916705, -0.323643,
		29.177889, 30.855520, 45.142101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619564, 31.516197, 45.502697>,  <29.341915, 31.497213, 45.368649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619564, 31.516197, 45.502697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762777, 31.146173, 45.451984>,  <28.848705, 30.924158, 45.421558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762777, 31.146173, 45.451984>,  <28.619564, 31.516197, 45.502697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762777, 31.146173, 45.451984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441873, -0.287485, 0.849765,
		-0.822533, -0.248223, -0.511688,
		0.358034, -0.925061, -0.126782,
		28.870188, 30.868654, 45.413948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161509, 31.231876, 45.854427>,  <28.619564, 31.516197, 45.502697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161509, 31.231876, 45.854427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402889, 30.916847, 45.804508>,  <28.547718, 30.727831, 45.774555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402889, 30.916847, 45.804508>,  <28.161509, 31.231876, 45.854427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402889, 30.916847, 45.804508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340049, -0.395735, 0.853089,
		-0.721256, -0.472362, -0.506620,
		0.603454, -0.787571, -0.124800,
		28.583925, 30.680576, 45.767067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761225, 30.525042, 45.835598>,  <28.161509, 31.231876, 45.854427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761225, 30.525042, 45.835598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141970, 30.504875, 45.956535>,  <28.370417, 30.492775, 46.029099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141970, 30.504875, 45.956535>,  <27.761225, 30.525042, 45.835598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141970, 30.504875, 45.956535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305918, -0.218188, 0.926719,
		0.019247, -0.974604, -0.223109,
		0.951864, -0.050416, 0.302348,
		28.427528, 30.489750, 46.047241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715065, 29.966764, 46.186390>,  <27.761225, 30.525042, 45.835598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715065, 29.966764, 46.186390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052786, 30.146782, 46.302746>,  <28.255419, 30.254793, 46.372559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052786, 30.146782, 46.302746>,  <27.715065, 29.966764, 46.186390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052786, 30.146782, 46.302746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147767, -0.326257, 0.933660,
		0.515094, -0.831273, -0.208957,
		0.844300, 0.450046, 0.290888,
		28.306076, 30.281796, 46.390011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195152, 29.482704, 46.473713>,  <27.715065, 29.966764, 46.186390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195152, 29.482704, 46.473713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264198, 29.850721, 46.614410>,  <28.305626, 30.071531, 46.698830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264198, 29.850721, 46.614410>,  <28.195152, 29.482704, 46.473713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264198, 29.850721, 46.614410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154772, -0.327337, 0.932146,
		0.972754, -0.215341, 0.085894,
		0.172613, 0.920043, 0.351747,
		28.315983, 30.126734, 46.719933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818550, 29.341700, 46.882534>,  <28.195152, 29.482704, 46.473713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818550, 29.341700, 46.882534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658628, 29.676580, 47.031799>,  <28.562675, 29.877508, 47.121357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658628, 29.676580, 47.031799>,  <28.818550, 29.341700, 46.882534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658628, 29.676580, 47.031799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101588, -0.364135, 0.925789,
		0.910954, 0.408042, 0.060533,
		-0.399803, 0.837202, 0.373162,
		28.538687, 29.927742, 47.143749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314917, 29.556231, 47.370903>,  <28.818550, 29.341700, 46.882534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314917, 29.556231, 47.370903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970335, 29.733961, 47.469269>,  <28.763586, 29.840599, 47.528290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970335, 29.733961, 47.469269>,  <29.314917, 29.556231, 47.370903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970335, 29.733961, 47.469269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133397, -0.269254, 0.953786,
		0.490005, 0.854446, 0.172677,
		-0.861453, 0.444325, 0.245916,
		28.711899, 29.867258, 47.543045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460402, 29.969036, 47.914345>,  <29.314917, 29.556231, 47.370903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460402, 29.969036, 47.914345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065861, 29.921915, 47.960354>,  <28.829136, 29.893642, 47.987957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065861, 29.921915, 47.960354>,  <29.460402, 29.969036, 47.914345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065861, 29.921915, 47.960354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149574, -0.349216, 0.925027,
		-0.068803, 0.929608, 0.362070,
		-0.986354, -0.117802, 0.115018,
		28.769955, 29.886574, 47.994858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306654, 30.159876, 48.662285>,  <29.460402, 29.969036, 47.914345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306654, 30.159876, 48.662285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994513, 29.944839, 48.534508>,  <28.807228, 29.815817, 48.457840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994513, 29.944839, 48.534508>,  <29.306654, 30.159876, 48.662285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994513, 29.944839, 48.534508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013721, -0.495995, 0.868217,
		-0.625190, 0.681898, 0.379675,
		-0.780352, -0.537591, -0.319447,
		28.760406, 29.783562, 48.438675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829168, 30.211130, 49.171158>,  <29.306654, 30.159876, 48.662285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829168, 30.211130, 49.171158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773577, 29.861071, 48.985771>,  <28.740223, 29.651035, 48.874538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773577, 29.861071, 48.985771>,  <28.829168, 30.211130, 49.171158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773577, 29.861071, 48.985771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101558, -0.452945, 0.885735,
		-0.985074, 0.170166, -0.025930,
		-0.138977, -0.875148, -0.463466,
		28.731884, 29.598526, 48.846733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220583, 29.849371, 49.421867>,  <28.829168, 30.211130, 49.171158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220583, 29.849371, 49.421867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426416, 29.547916, 49.258289>,  <28.549917, 29.367044, 49.160141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426416, 29.547916, 49.258289>,  <28.220583, 29.849371, 49.421867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426416, 29.547916, 49.258289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118070, -0.534674, 0.836769,
		-0.849271, -0.382305, -0.364117,
		0.514585, -0.753635, -0.408945,
		28.580791, 29.321825, 49.135605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891291, 29.214119, 49.360847>,  <28.220583, 29.849371, 49.421867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891291, 29.214119, 49.360847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281620, 29.157730, 49.427658>,  <28.515818, 29.123896, 49.467747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281620, 29.157730, 49.427658>,  <27.891291, 29.214119, 49.360847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281620, 29.157730, 49.427658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215677, -0.497151, 0.840431,
		-0.035440, -0.856135, -0.515536,
		0.975821, -0.140974, 0.167030,
		28.574366, 29.115438, 49.477768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059584, 28.464508, 49.452900>,  <27.891291, 29.214119, 49.360847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059584, 28.464508, 49.452900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312044, 28.709112, 49.643772>,  <28.463520, 28.855875, 49.758293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312044, 28.709112, 49.643772>,  <28.059584, 28.464508, 49.452900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312044, 28.709112, 49.643772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217294, -0.451164, 0.865583,
		0.744601, -0.650002, -0.151876,
		0.631152, 0.611513, 0.477179,
		28.501390, 28.892567, 49.786926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461279, 28.060106, 50.005665>,  <28.059584, 28.464508, 49.452900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461279, 28.060106, 50.005665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446674, 28.450811, 50.090145>,  <28.437912, 28.685234, 50.140831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446674, 28.450811, 50.090145>,  <28.461279, 28.060106, 50.005665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446674, 28.450811, 50.090145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420492, -0.206737, 0.883429,
		0.906561, -0.056550, 0.418269,
		-0.036514, 0.976761, 0.211199,
		28.435720, 28.743839, 50.153503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166702, 28.088593, 50.161819>,  <28.461279, 28.060106, 50.005665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166702, 28.088593, 50.161819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237665, 28.305599, 50.490257>,  <29.280243, 28.435802, 50.687321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237665, 28.305599, 50.490257>,  <29.166702, 28.088593, 50.161819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237665, 28.305599, 50.490257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823897, 0.374451, -0.425417,
		-0.538257, 0.751973, -0.380547,
		0.177406, 0.542515, 0.821099,
		29.290888, 28.468353, 50.736588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237411, 28.966644, 50.145226>,  <29.166702, 28.088593, 50.161819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237411, 28.966644, 50.145226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478600, 28.784380, 50.407158>,  <29.623312, 28.675022, 50.564316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478600, 28.784380, 50.407158>,  <29.237411, 28.966644, 50.145226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478600, 28.784380, 50.407158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796648, 0.387300, -0.464059,
		-0.042162, 0.801482, 0.596531,
		0.602971, -0.455660, 0.654828,
		29.659491, 28.647682, 50.603607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888966, 29.345104, 50.117706>,  <29.237411, 28.966644, 50.145226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888966, 29.345104, 50.117706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980581, 29.008980, 50.314243>,  <30.035551, 28.807304, 50.432167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980581, 29.008980, 50.314243>,  <29.888966, 29.345104, 50.117706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980581, 29.008980, 50.314243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889708, -0.024066, -0.455896,
		0.394919, 0.541571, 0.742119,
		0.229040, -0.840311, 0.491344,
		30.049294, 28.756887, 50.461647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548647, 29.003447, 49.856228>,  <29.888966, 29.345104, 50.117706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548647, 29.003447, 49.856228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361151, 29.289827, 49.649269>,  <30.248653, 29.461657, 49.525093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361151, 29.289827, 49.649269>,  <30.548647, 29.003447, 49.856228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361151, 29.289827, 49.649269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604889, -0.166690, -0.778668,
		-0.643733, -0.677957, -0.354938,
		-0.468739, 0.715953, -0.517393,
		30.220530, 29.504614, 49.494053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245808, 28.749146, 49.206768>,  <30.548647, 29.003447, 49.856228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245808, 28.749146, 49.206768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299843, 29.140499, 49.144135>,  <30.332264, 29.375311, 49.106556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299843, 29.140499, 49.144135>,  <30.245808, 28.749146, 49.206768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299843, 29.140499, 49.144135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579058, -0.206190, -0.788783,
		-0.804017, 0.015886, -0.594394,
		0.135089, 0.978383, -0.156582,
		30.340370, 29.434013, 49.097160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925623, 28.224098, 48.872704>,  <30.245808, 28.749146, 49.206768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925623, 28.224098, 48.872704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767658, 27.861614, 48.812263>,  <29.672880, 27.644125, 48.776001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767658, 27.861614, 48.812263>,  <29.925623, 28.224098, 48.872704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767658, 27.861614, 48.812263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115590, 0.114153, -0.986716,
		0.911419, -0.407131, 0.059669,
		-0.394912, -0.906208, -0.151101,
		29.649185, 27.589752, 48.766933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372503, 27.640657, 48.700924>,  <29.925623, 28.224098, 48.872704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372503, 27.640657, 48.700924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007252, 27.657957, 48.538776>,  <29.788101, 27.668337, 48.441486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007252, 27.657957, 48.538776>,  <30.372503, 27.640657, 48.700924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007252, 27.657957, 48.538776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403665, 0.234932, -0.884229,
		0.056992, -0.971049, -0.231982,
		-0.913130, 0.043249, -0.405368,
		29.733313, 27.670931, 48.417168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306566, 27.250927, 48.082397>,  <30.372503, 27.640657, 48.700924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306566, 27.250927, 48.082397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021561, 27.531492, 48.075008>,  <29.850557, 27.699831, 48.070576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021561, 27.531492, 48.075008>,  <30.306566, 27.250927, 48.082397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021561, 27.531492, 48.075008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261246, 0.240761, -0.934765,
		-0.651208, -0.670861, -0.354787,
		-0.712516, 0.701413, -0.018474,
		29.807806, 27.741917, 48.069466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024944, 27.211859, 47.499054>,  <30.306566, 27.250927, 48.082397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024944, 27.211859, 47.499054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928373, 27.582306, 47.614998>,  <29.870430, 27.804575, 47.684563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928373, 27.582306, 47.614998>,  <30.024944, 27.211859, 47.499054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928373, 27.582306, 47.614998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237215, 0.345954, -0.907769,
		-0.940979, -0.150402, -0.303212,
		-0.241427, 0.926118, 0.289858,
		29.855946, 27.860142, 47.701954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631542, 27.518599, 46.906975>,  <30.024944, 27.211859, 47.499054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631542, 27.518599, 46.906975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767334, 27.830231, 47.117798>,  <29.848808, 28.017210, 47.244289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767334, 27.830231, 47.117798>,  <29.631542, 27.518599, 46.906975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767334, 27.830231, 47.117798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390643, 0.392945, -0.832461,
		-0.855659, 0.488493, -0.170946,
		0.339479, 0.779082, 0.527053,
		29.869177, 28.063955, 47.275913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412201, 28.144060, 46.582710>,  <29.631542, 27.518599, 46.906975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412201, 28.144060, 46.582710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719942, 28.281210, 46.798313>,  <29.904587, 28.363499, 46.927677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719942, 28.281210, 46.798313>,  <29.412201, 28.144060, 46.582710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719942, 28.281210, 46.798313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405335, 0.390146, -0.826734,
		-0.493757, 0.854531, 0.161183,
		0.769355, 0.342873, 0.539009,
		29.950748, 28.384071, 46.960014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490643, 28.903215, 46.517078>,  <29.412201, 28.144060, 46.582710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490643, 28.903215, 46.517078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846676, 28.737343, 46.592754>,  <30.060295, 28.637819, 46.638161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846676, 28.737343, 46.592754>,  <29.490643, 28.903215, 46.517078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846676, 28.737343, 46.592754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359124, 0.382425, -0.851341,
		0.280682, 0.825707, 0.489311,
		0.890083, -0.414680, 0.189191,
		30.113701, 28.612940, 46.649513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859825, 29.253338, 46.128746>,  <29.490643, 28.903215, 46.517078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859825, 29.253338, 46.128746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121374, 28.969732, 46.234390>,  <30.278303, 28.799570, 46.297775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121374, 28.969732, 46.234390>,  <29.859825, 29.253338, 46.128746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121374, 28.969732, 46.234390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561175, 0.220341, -0.797830,
		0.507477, 0.669890, 0.541955,
		0.653873, -0.709012, 0.264108,
		30.317535, 28.757029, 46.313622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581020, 29.481764, 46.009396>,  <29.859825, 29.253338, 46.128746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581020, 29.481764, 46.009396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628262, 29.085659, 46.038872>,  <30.656607, 28.847996, 46.056557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628262, 29.085659, 46.038872>,  <30.581020, 29.481764, 46.009396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628262, 29.085659, 46.038872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640093, 0.019187, -0.768058,
		0.759166, 0.137878, 0.636126,
		0.118104, -0.990263, 0.073689,
		30.663692, 28.788580, 46.060978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310513, 29.259453, 45.995449>,  <30.581020, 29.481764, 46.009396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310513, 29.259453, 45.995449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105347, 28.938339, 45.873821>,  <30.982246, 28.745670, 45.800846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105347, 28.938339, 45.873821>,  <31.310513, 29.259453, 45.995449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105347, 28.938339, 45.873821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624788, -0.106200, -0.773538,
		0.588692, -0.586737, 0.556041,
		-0.512915, -0.802784, -0.304067,
		30.951471, 28.697504, 45.782600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870157, 28.847242, 45.758881>,  <31.310513, 29.259453, 45.995449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870157, 28.847242, 45.758881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555094, 28.661715, 45.596664>,  <31.366055, 28.550398, 45.499336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555094, 28.661715, 45.596664>,  <31.870157, 28.847242, 45.758881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555094, 28.661715, 45.596664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522130, -0.153095, -0.839013,
		0.327065, -0.872601, 0.362761,
		-0.787660, -0.463820, -0.405540,
		31.318796, 28.522568, 45.475002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185696, 28.272297, 45.439270>,  <31.870157, 28.847242, 45.758881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185696, 28.272297, 45.439270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832933, 28.337629, 45.262375>,  <31.621277, 28.376829, 45.156239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832933, 28.337629, 45.262375>,  <32.185696, 28.272297, 45.439270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832933, 28.337629, 45.262375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464042, 0.135288, -0.875421,
		-0.083154, -0.977251, -0.195104,
		-0.881901, 0.163331, -0.442236,
		31.568363, 28.386629, 45.129704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231018, 27.915714, 44.775631>,  <32.185696, 28.272297, 45.439270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231018, 27.915714, 44.775631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925835, 28.171501, 44.737717>,  <31.742725, 28.324972, 44.714966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925835, 28.171501, 44.737717>,  <32.231018, 27.915714, 44.775631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925835, 28.171501, 44.737717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349190, 0.284270, -0.892892,
		-0.544028, -0.714335, -0.440180,
		-0.762954, 0.639465, -0.094788,
		31.696949, 28.363340, 44.709282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996162, 27.930302, 43.985943>,  <32.231018, 27.915714, 44.775631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996162, 27.930302, 43.985943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867022, 28.274343, 44.143925>,  <31.789537, 28.480768, 44.238712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867022, 28.274343, 44.143925>,  <31.996162, 27.930302, 43.985943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867022, 28.274343, 44.143925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403790, 0.502590, -0.764433,
		-0.855990, -0.087322, -0.509564,
		-0.322854, 0.860103, 0.394952,
		31.770164, 28.532375, 44.262409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431377, 28.150364, 43.610409>,  <31.996162, 27.930302, 43.985943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431377, 28.150364, 43.610409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524879, 28.488188, 43.803104>,  <31.580980, 28.690882, 43.918724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524879, 28.488188, 43.803104>,  <31.431377, 28.150364, 43.610409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524879, 28.488188, 43.803104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063543, 0.507680, -0.859199,
		-0.970217, 0.170230, 0.172338,
		0.233754, 0.844561, 0.481743,
		31.595005, 28.741556, 43.947628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894819, 28.604071, 43.410793>,  <31.431377, 28.150364, 43.610409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894819, 28.604071, 43.410793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182886, 28.834167, 43.565945>,  <31.355726, 28.972225, 43.659035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182886, 28.834167, 43.565945>,  <30.894819, 28.604071, 43.410793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182886, 28.834167, 43.565945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007844, 0.552282, -0.833620,
		-0.693756, 0.603389, 0.393223,
		0.720168, 0.575244, 0.387882,
		31.398937, 29.006741, 43.682308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808685, 29.328876, 43.244297>,  <30.894819, 28.604071, 43.410793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808685, 29.328876, 43.244297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201365, 29.291309, 43.310566>,  <31.436972, 29.268770, 43.350327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201365, 29.291309, 43.310566>,  <30.808685, 29.328876, 43.244297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201365, 29.291309, 43.310566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190357, 0.458097, -0.868280,
		0.005652, 0.883927, 0.467591,
		0.981699, -0.093916, 0.165672,
		31.495874, 29.263134, 43.360268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950495, 29.980156, 42.913452>,  <30.808685, 29.328876, 43.244297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950495, 29.980156, 42.913452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287415, 29.776920, 42.985432>,  <31.489567, 29.654980, 43.028618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287415, 29.776920, 42.985432>,  <30.950495, 29.980156, 42.913452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287415, 29.776920, 42.985432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419400, 0.408071, -0.810914,
		0.338583, 0.758502, 0.556809,
		0.842298, -0.508087, 0.179950,
		31.540104, 29.624495, 43.039417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489180, 30.471117, 42.711349>,  <30.950495, 29.980156, 42.913452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489180, 30.471117, 42.711349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658777, 30.108858, 42.709206>,  <31.760536, 29.891502, 42.707920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658777, 30.108858, 42.709206>,  <31.489180, 30.471117, 42.711349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658777, 30.108858, 42.709206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464973, 0.222756, -0.856843,
		0.777192, 0.360806, 0.515550,
		0.423996, -0.905648, -0.005359,
		31.785976, 29.837164, 42.707600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087105, 30.672909, 42.399776>,  <31.489180, 30.471117, 42.711349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087105, 30.672909, 42.399776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025120, 30.280701, 42.351494>,  <31.987928, 30.045376, 42.322525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025120, 30.280701, 42.351494>,  <32.087105, 30.672909, 42.399776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025120, 30.280701, 42.351494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344020, 0.060974, -0.936980,
		0.926087, -0.186721, 0.327870,
		-0.154962, -0.980519, -0.120703,
		31.978632, 29.986546, 42.315285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699448, 30.245426, 42.125954>,  <32.087105, 30.672909, 42.399776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699448, 30.245426, 42.125954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393047, 30.007711, 42.027924>,  <32.209206, 29.865082, 41.969105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393047, 30.007711, 42.027924>,  <32.699448, 30.245426, 42.125954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393047, 30.007711, 42.027924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311888, -0.010214, -0.950064,
		0.562109, -0.804187, 0.193175,
		-0.766002, -0.594289, -0.245075,
		32.163246, 29.829424, 41.954399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004162, 29.731190, 41.628429>,  <32.699448, 30.245426, 42.125954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004162, 29.731190, 41.628429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614059, 29.710028, 41.542568>,  <32.379997, 29.697330, 41.491051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614059, 29.710028, 41.542568>,  <33.004162, 29.731190, 41.628429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614059, 29.710028, 41.542568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218600, -0.085900, -0.972026,
		0.032985, -0.994898, 0.095339,
		-0.975257, -0.052904, -0.214651,
		32.321484, 29.694157, 41.478172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985600, 29.159863, 41.184856>,  <33.004162, 29.731190, 41.628429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985600, 29.159863, 41.184856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644333, 29.363321, 41.138565>,  <32.439575, 29.485395, 41.110790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644333, 29.363321, 41.138565>,  <32.985600, 29.159863, 41.184856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644333, 29.363321, 41.138565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152718, 0.031413, -0.987770,
		-0.498790, -0.860403, -0.104480,
		-0.853162, 0.508646, -0.115731,
		32.388386, 29.515915, 41.103848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699821, 28.807795, 40.660603>,  <32.985600, 29.159863, 41.184856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699821, 28.807795, 40.660603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504871, 29.156961, 40.669376>,  <32.387901, 29.366461, 40.674641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504871, 29.156961, 40.669376>,  <32.699821, 28.807795, 40.660603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504871, 29.156961, 40.669376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100574, 0.081075, -0.991621,
		-0.867380, -0.481086, -0.127307,
		-0.487377, 0.872916, 0.021938,
		32.358658, 29.418837, 40.675957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256855, 28.779470, 40.077168>,  <32.699821, 28.807795, 40.660603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256855, 28.779470, 40.077168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267578, 29.167515, 40.173641>,  <32.274010, 29.400341, 40.231525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267578, 29.167515, 40.173641>,  <32.256855, 28.779470, 40.077168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267578, 29.167515, 40.173641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115396, 0.236653, -0.964717,
		-0.992958, 0.053692, -0.105603,
		0.026806, 0.970110, 0.241183,
		32.275620, 29.458548, 40.245995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861633, 29.118748, 39.582485>,  <32.256855, 28.779470, 40.077168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861633, 29.118748, 39.582485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053471, 29.441648, 39.720085>,  <32.168571, 29.635389, 39.802643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053471, 29.441648, 39.720085>,  <31.861633, 29.118748, 39.582485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053471, 29.441648, 39.720085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109914, 0.333669, -0.936260,
		-0.870580, 0.486834, 0.071297,
		0.479593, 0.807253, 0.343996,
		32.197350, 29.683825, 39.823284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607533, 29.787725, 39.224335>,  <31.861633, 29.118748, 39.582485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607533, 29.787725, 39.224335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977695, 29.865664, 39.354355>,  <32.199795, 29.912426, 39.432365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977695, 29.865664, 39.354355>,  <31.607533, 29.787725, 39.224335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977695, 29.865664, 39.354355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311881, 0.095691, -0.945290,
		-0.215290, 0.976155, 0.027785,
		0.925408, 0.194846, 0.325046,
		32.255318, 29.924118, 39.451870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808552, 30.345961, 38.859943>,  <31.607533, 29.787725, 39.224335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808552, 30.345961, 38.859943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145573, 30.169205, 38.983131>,  <32.347786, 30.063152, 39.057045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145573, 30.169205, 38.983131>,  <31.808552, 30.345961, 38.859943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145573, 30.169205, 38.983131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445392, 0.250079, -0.859701,
		0.302876, 0.861508, 0.407518,
		0.842551, -0.441888, 0.307966,
		32.398338, 30.036638, 39.075520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355846, 30.794167, 38.640175>,  <31.808552, 30.345961, 38.859943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355846, 30.794167, 38.640175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569004, 30.464209, 38.715614>,  <32.696899, 30.266233, 38.760880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569004, 30.464209, 38.715614>,  <32.355846, 30.794167, 38.640175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569004, 30.464209, 38.715614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524931, 0.147452, -0.838275,
		0.663680, 0.545714, 0.511590,
		0.532894, -0.824896, 0.188602,
		32.728870, 30.216740, 38.772194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076229, 30.923540, 38.540329>,  <32.355846, 30.794167, 38.640175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076229, 30.923540, 38.540329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045258, 30.527967, 38.489712>,  <33.026672, 30.290623, 38.459339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045258, 30.527967, 38.489712>,  <33.076229, 30.923540, 38.540329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045258, 30.527967, 38.489712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472199, 0.075413, -0.878260,
		0.878085, -0.127760, 0.461134,
		-0.077431, -0.988934, -0.126548,
		33.022030, 30.231287, 38.451748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771389, 30.591648, 38.470715>,  <33.076229, 30.923540, 38.540329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771389, 30.591648, 38.470715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497536, 30.350708, 38.306545>,  <33.333221, 30.206144, 38.208046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497536, 30.350708, 38.306545>,  <33.771389, 30.591648, 38.470715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497536, 30.350708, 38.306545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461732, 0.077277, -0.883647,
		0.563982, -0.794482, 0.225218,
		-0.684637, -0.602351, -0.410421,
		33.292145, 30.170002, 38.183418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055828, 30.037043, 38.038208>,  <33.771389, 30.591648, 38.470715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055828, 30.037043, 38.038208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688908, 29.995008, 37.884575>,  <33.468754, 29.969788, 37.792397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688908, 29.995008, 37.884575>,  <34.055828, 30.037043, 38.038208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688908, 29.995008, 37.884575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391353, -0.059882, -0.918290,
		0.073502, -0.992659, 0.096056,
		-0.917301, -0.105088, -0.384079,
		33.413719, 29.963482, 37.769352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088551, 29.489162, 37.579803>,  <34.055828, 30.037043, 38.038208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088551, 29.489162, 37.579803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745586, 29.663795, 37.470810>,  <33.539810, 29.768576, 37.405415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745586, 29.663795, 37.470810>,  <34.088551, 29.489162, 37.579803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745586, 29.663795, 37.470810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306101, 0.007002, -0.951973,
		-0.413709, -0.899636, -0.139642,
		-0.857407, 0.436585, -0.272483,
		33.488365, 29.794771, 37.389065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852165, 29.269567, 36.861813>,  <34.088551, 29.489162, 37.579803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852165, 29.269567, 36.861813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676025, 29.624237, 36.918240>,  <33.570339, 29.837038, 36.952095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676025, 29.624237, 36.918240>,  <33.852165, 29.269567, 36.861813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676025, 29.624237, 36.918240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160291, 0.232240, -0.959360,
		-0.883400, -0.399845, -0.244393,
		-0.440353, 0.886673, 0.141069,
		33.543919, 29.890240, 36.960560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431507, 29.296864, 36.322598>,  <33.852165, 29.269567, 36.861813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431507, 29.296864, 36.322598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492710, 29.677986, 36.427475>,  <33.529430, 29.906660, 36.490402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492710, 29.677986, 36.427475>,  <33.431507, 29.296864, 36.322598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492710, 29.677986, 36.427475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095776, 0.278369, -0.955687,
		-0.983573, 0.121111, 0.133847,
		0.153003, 0.952808, 0.262196,
		33.538612, 29.963829, 36.506134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111149, 29.644999, 35.794113>,  <33.431507, 29.296864, 36.322598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111149, 29.644999, 35.794113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326305, 29.931196, 35.972435>,  <33.455399, 30.102915, 36.079430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326305, 29.931196, 35.972435>,  <33.111149, 29.644999, 35.794113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326305, 29.931196, 35.972435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130963, 0.451479, -0.882618,
		-0.832779, 0.533137, 0.149144,
		0.537892, 0.715494, 0.445803,
		33.487675, 30.145844, 36.106174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939648, 30.139496, 35.420513>,  <33.111149, 29.644999, 35.794113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939648, 30.139496, 35.420513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273010, 30.273655, 35.596214>,  <33.473026, 30.354151, 35.701633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273010, 30.273655, 35.596214>,  <32.939648, 30.139496, 35.420513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273010, 30.273655, 35.596214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157325, 0.617933, -0.770329,
		-0.529797, 0.711102, 0.462222,
		0.833405, 0.335399, 0.439253,
		33.523033, 30.374275, 35.727989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870987, 30.841269, 35.525284>,  <32.939648, 30.139496, 35.420513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870987, 30.841269, 35.525284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265175, 30.773399, 35.522312>,  <33.501690, 30.732677, 35.520531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265175, 30.773399, 35.522312>,  <32.870987, 30.841269, 35.525284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265175, 30.773399, 35.522312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129338, 0.778118, -0.614657,
		0.110071, 0.604767, 0.788759,
		0.985473, -0.169672, -0.007429,
		33.560818, 30.722498, 35.520084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083145, 31.551592, 35.562405>,  <32.870987, 30.841269, 35.525284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083145, 31.551592, 35.562405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403790, 31.335474, 35.460037>,  <33.596176, 31.205803, 35.398617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403790, 31.335474, 35.460037>,  <33.083145, 31.551592, 35.562405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403790, 31.335474, 35.460037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269333, 0.708546, -0.652244,
		0.533738, 0.453919, 0.713499,
		0.801613, -0.540296, -0.255922,
		33.644272, 31.173386, 35.383259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619190, 31.986719, 35.542145>,  <33.083145, 31.551592, 35.562405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619190, 31.986719, 35.542145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760464, 31.678782, 35.329506>,  <33.845230, 31.494019, 35.201923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760464, 31.678782, 35.329506>,  <33.619190, 31.986719, 35.542145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760464, 31.678782, 35.329506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413212, 0.638157, -0.649625,
		0.839353, 0.009777, 0.543499,
		0.353188, -0.769845, -0.531599,
		33.866421, 31.447828, 35.170025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342266, 32.153740, 35.550686>,  <33.619190, 31.986719, 35.542145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342266, 32.153740, 35.550686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253979, 31.915558, 35.241695>,  <34.201008, 31.772648, 35.056301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253979, 31.915558, 35.241695>,  <34.342266, 32.153740, 35.550686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253979, 31.915558, 35.241695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420825, 0.656351, -0.626187,
		0.879881, -0.463284, 0.105718,
		-0.220714, -0.595459, -0.772472,
		34.187763, 31.736919, 35.009953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919392, 32.340714, 35.094879>,  <34.342266, 32.153740, 35.550686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919392, 32.340714, 35.094879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650299, 32.178566, 34.847298>,  <34.488842, 32.081280, 34.698750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650299, 32.178566, 34.847298>,  <34.919392, 32.340714, 35.094879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650299, 32.178566, 34.847298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204165, 0.702376, -0.681898,
		0.711174, -0.585096, -0.389736,
		-0.672717, -0.405377, -0.618967,
		34.448479, 32.056957, 34.661610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302132, 32.705399, 35.778309>,  <34.919392, 32.340714, 35.094879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302132, 32.705399, 35.778309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683796, 32.805511, 35.843956>,  <35.912796, 32.865578, 35.883343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683796, 32.805511, 35.843956>,  <35.302132, 32.705399, 35.778309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683796, 32.805511, 35.843956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056409, -0.688919, 0.722640,
		0.293926, -0.680258, -0.671458,
		0.954162, 0.250279, 0.164118,
		35.970043, 32.880596, 35.893192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624752, 32.118046, 35.871475>,  <35.302132, 32.705399, 35.778309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624752, 32.118046, 35.871475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902481, 32.355721, 36.033886>,  <36.069118, 32.498325, 36.131332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902481, 32.355721, 36.033886>,  <35.624752, 32.118046, 35.871475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902481, 32.355721, 36.033886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094868, -0.634841, 0.766797,
		0.713382, -0.493887, -0.497155,
		0.694325, 0.594183, 0.406030,
		36.110779, 32.533974, 36.155693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236107, 31.650042, 36.048252>,  <35.624752, 32.118046, 35.871475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236107, 31.650042, 36.048252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219864, 31.987560, 36.262302>,  <36.210117, 32.190071, 36.390732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219864, 31.987560, 36.262302>,  <36.236107, 31.650042, 36.048252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219864, 31.987560, 36.262302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089164, -0.530372, 0.843063,
		0.995189, 0.081946, -0.053700,
		-0.040604, 0.843795, 0.535127,
		36.207684, 32.240700, 36.422840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862576, 31.698547, 36.525921>,  <36.236107, 31.650042, 36.048252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862576, 31.698547, 36.525921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607731, 31.941551, 36.715668>,  <36.454826, 32.087353, 36.829517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607731, 31.941551, 36.715668>,  <36.862576, 31.698547, 36.525921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607731, 31.941551, 36.715668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160039, -0.497771, 0.852415,
		0.753977, 0.618998, 0.219909,
		-0.637108, 0.607508, 0.474372,
		36.416599, 32.123802, 36.857979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243301, 31.729343, 37.083141>,  <36.862576, 31.698547, 36.525921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243301, 31.729343, 37.083141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880405, 31.889166, 37.135708>,  <36.662666, 31.985060, 37.167248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880405, 31.889166, 37.135708>,  <37.243301, 31.729343, 37.083141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880405, 31.889166, 37.135708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042173, -0.397266, 0.916734,
		0.418494, 0.826155, 0.377266,
		-0.907240, 0.399558, 0.131412,
		36.608234, 32.009033, 37.175133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287922, 31.989965, 37.698067>,  <37.243301, 31.729343, 37.083141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287922, 31.989965, 37.698067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893555, 31.956457, 37.640167>,  <36.656933, 31.936352, 37.605427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893555, 31.956457, 37.640167>,  <37.287922, 31.989965, 37.698067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893555, 31.956457, 37.640167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115263, -0.286753, 0.951045,
		-0.121174, 0.954335, 0.273059,
		-0.985916, -0.083769, -0.144746,
		36.597778, 31.931326, 37.596745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040230, 32.310307, 38.139591>,  <37.287922, 31.989965, 37.698067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040230, 32.310307, 38.139591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775944, 32.025928, 38.043247>,  <36.617374, 31.855301, 37.985439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775944, 32.025928, 38.043247>,  <37.040230, 32.310307, 38.139591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775944, 32.025928, 38.043247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091046, -0.394406, 0.914415,
		-0.745097, 0.582236, 0.325318,
		-0.660713, -0.710946, -0.240861,
		36.577728, 31.812645, 37.970989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672783, 32.248203, 38.765297>,  <37.040230, 32.310307, 38.139591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672783, 32.248203, 38.765297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542076, 31.927595, 38.564987>,  <36.463650, 31.735229, 38.444801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542076, 31.927595, 38.564987>,  <36.672783, 32.248203, 38.765297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542076, 31.927595, 38.564987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193404, -0.461942, 0.865566,
		-0.925103, 0.379695, -0.004069,
		-0.326771, -0.801525, -0.500778,
		36.444046, 31.687138, 38.414753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917854, 32.088402, 39.025883>,  <36.672783, 32.248203, 38.765297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917854, 32.088402, 39.025883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070538, 31.758905, 38.858192>,  <36.162148, 31.561209, 38.757576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070538, 31.758905, 38.858192>,  <35.917854, 32.088402, 39.025883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070538, 31.758905, 38.858192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361545, -0.550499, 0.752486,
		-0.850639, -0.135657, -0.507947,
		0.381704, -0.823740, -0.419230,
		36.185047, 31.511784, 38.732422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305824, 31.495394, 38.971439>,  <35.917854, 32.088402, 39.025883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305824, 31.495394, 38.971439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666363, 31.322226, 38.976337>,  <35.882687, 31.218325, 38.979275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666363, 31.322226, 38.976337>,  <35.305824, 31.495394, 38.971439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666363, 31.322226, 38.976337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280197, -0.561345, 0.778705,
		-0.330244, -0.705316, -0.627270,
		0.901348, -0.432922, 0.012246,
		35.936768, 31.192348, 38.980011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211037, 30.856714, 39.177856>,  <35.305824, 31.495394, 38.971439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211037, 30.856714, 39.177856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608616, 30.867002, 39.220566>,  <35.847164, 30.873175, 39.246189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608616, 30.867002, 39.220566>,  <35.211037, 30.856714, 39.177856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608616, 30.867002, 39.220566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060397, -0.683949, 0.727026,
		0.091724, -0.729077, -0.678258,
		0.993951, 0.025721, 0.106769,
		35.906799, 30.874720, 39.252598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358803, 30.187510, 39.198727>,  <35.211037, 30.856714, 39.177856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358803, 30.187510, 39.198727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659966, 30.396187, 39.359211>,  <35.840664, 30.521393, 39.455502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659966, 30.396187, 39.359211>,  <35.358803, 30.187510, 39.198727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659966, 30.396187, 39.359211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035868, -0.576188, 0.816530,
		0.657147, -0.629163, -0.415104,
		0.752909, 0.521691, 0.401207,
		35.885838, 30.552694, 39.479572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896435, 29.667044, 39.417095>,  <35.358803, 30.187510, 39.198727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896435, 29.667044, 39.417095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924141, 30.002678, 39.632927>,  <35.940765, 30.204058, 39.762424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924141, 30.002678, 39.632927>,  <35.896435, 29.667044, 39.417095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924141, 30.002678, 39.632927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011162, -0.540188, 0.841470,
		0.997536, -0.064304, -0.028049,
		0.069262, 0.839084, 0.539575,
		35.944920, 30.254402, 39.794800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317501, 29.493254, 39.961983>,  <35.896435, 29.667044, 39.417095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317501, 29.493254, 39.961983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167168, 29.843899, 40.082184>,  <36.076969, 30.054285, 40.154305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167168, 29.843899, 40.082184>,  <36.317501, 29.493254, 39.961983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167168, 29.843899, 40.082184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021655, -0.315879, 0.948552,
		0.926435, 0.363002, 0.099734,
		-0.375831, 0.876613, 0.300503,
		36.054417, 30.106882, 40.172333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523926, 29.535492, 40.619095>,  <36.317501, 29.493254, 39.961983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523926, 29.535492, 40.619095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218029, 29.793158, 40.613079>,  <36.034492, 29.947758, 40.609470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218029, 29.793158, 40.613079>,  <36.523926, 29.535492, 40.619095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218029, 29.793158, 40.613079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220873, -0.240150, 0.945274,
		0.605300, 0.726210, 0.325931,
		-0.764740, 0.644164, -0.015037,
		35.988605, 29.986406, 40.608566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716415, 29.828156, 41.163853>,  <36.523926, 29.535492, 40.619095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716415, 29.828156, 41.163853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329987, 29.888248, 41.079823>,  <36.098129, 29.924303, 41.029404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329987, 29.888248, 41.079823>,  <36.716415, 29.828156, 41.163853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329987, 29.888248, 41.079823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245557, -0.282303, 0.927365,
		0.080014, 0.947489, 0.309616,
		-0.966074, 0.150230, -0.210074,
		36.040165, 29.933317, 41.016800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418671, 30.281237, 41.749485>,  <36.716415, 29.828156, 41.163853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418671, 30.281237, 41.749485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130386, 30.073370, 41.565956>,  <35.957417, 29.948650, 41.455837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130386, 30.073370, 41.565956>,  <36.418671, 30.281237, 41.749485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130386, 30.073370, 41.565956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349018, -0.299855, 0.887848,
		-0.598967, 0.800020, 0.034736,
		-0.720711, -0.519668, -0.458824,
		35.914173, 29.917469, 41.428310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854633, 30.391096, 42.131321>,  <36.418671, 30.281237, 41.749485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854633, 30.391096, 42.131321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728394, 30.077202, 41.917934>,  <35.652649, 29.888865, 41.789902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728394, 30.077202, 41.917934>,  <35.854633, 30.391096, 42.131321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728394, 30.077202, 41.917934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560962, -0.299144, 0.771903,
		-0.765323, 0.542867, -0.345798,
		-0.315597, -0.784735, -0.533469,
		35.633713, 29.841782, 41.757893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179855, 30.409676, 42.195286>,  <35.854633, 30.391096, 42.131321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179855, 30.409676, 42.195286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269947, 30.026560, 42.123833>,  <35.324001, 29.796690, 42.080959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269947, 30.026560, 42.123833>,  <35.179855, 30.409676, 42.195286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269947, 30.026560, 42.123833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603789, -0.281107, 0.745934,
		-0.764664, -0.060147, -0.641616,
		0.225229, -0.957790, -0.178636,
		35.337517, 29.739223, 42.070240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589836, 30.051651, 42.238178>,  <35.179855, 30.409676, 42.195286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589836, 30.051651, 42.238178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879723, 29.781462, 42.292618>,  <35.053654, 29.619349, 42.325283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879723, 29.781462, 42.292618>,  <34.589836, 30.051651, 42.238178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879723, 29.781462, 42.292618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502925, -0.383523, 0.774581,
		-0.471011, -0.629799, -0.617657,
		0.724717, -0.675472, 0.136098,
		35.097137, 29.578819, 42.333447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206127, 29.393967, 42.461391>,  <34.589836, 30.051651, 42.238178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206127, 29.393967, 42.461391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583305, 29.321766, 42.573296>,  <34.809612, 29.278444, 42.640438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583305, 29.321766, 42.573296>,  <34.206127, 29.393967, 42.461391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583305, 29.321766, 42.573296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315166, -0.213080, 0.924807,
		-0.107317, -0.960217, -0.257811,
		0.942949, -0.180501, 0.279761,
		34.866192, 29.267614, 42.657223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124378, 28.735405, 42.779980>,  <34.206127, 29.393967, 42.461391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124378, 28.735405, 42.779980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458469, 28.914192, 42.908112>,  <34.658924, 29.021465, 42.984989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458469, 28.914192, 42.908112>,  <34.124378, 28.735405, 42.779980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458469, 28.914192, 42.908112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264612, -0.183957, 0.946647,
		0.482047, -0.875431, -0.035374,
		0.835232, 0.446968, 0.320325,
		34.709038, 29.048283, 43.004208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468987, 28.366421, 43.358665>,  <34.124378, 28.735405, 42.779980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468987, 28.366421, 43.358665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591621, 28.746855, 43.373863>,  <34.665203, 28.975115, 43.382980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591621, 28.746855, 43.373863>,  <34.468987, 28.366421, 43.358665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591621, 28.746855, 43.373863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362321, 0.079704, 0.928639,
		0.880185, -0.298477, 0.369034,
		0.306591, 0.951083, 0.037990,
		34.683598, 29.032179, 43.385262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706932, 28.365499, 44.006973>,  <34.468987, 28.366421, 43.358665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706932, 28.365499, 44.006973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692566, 28.756025, 43.921635>,  <34.683945, 28.990341, 43.870430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692566, 28.756025, 43.921635>,  <34.706932, 28.365499, 44.006973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692566, 28.756025, 43.921635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332074, 0.189694, 0.923982,
		0.942569, 0.104032, 0.317397,
		-0.035916, 0.976316, -0.213346,
		34.681789, 29.048920, 43.857632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062580, 28.731787, 44.542564>,  <34.706932, 28.365499, 44.006973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062580, 28.731787, 44.542564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806152, 28.994833, 44.384289>,  <34.652294, 29.152660, 44.289326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806152, 28.994833, 44.384289>,  <35.062580, 28.731787, 44.542564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806152, 28.994833, 44.384289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324095, 0.235380, 0.916274,
		0.695693, 0.715638, 0.062234,
		-0.641072, 0.657615, -0.395687,
		34.613831, 29.192118, 44.265583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055565, 29.361490, 44.942490>,  <35.062580, 28.731787, 44.542564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055565, 29.361490, 44.942490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715580, 29.374218, 44.732136>,  <34.511589, 29.381855, 44.605923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715580, 29.374218, 44.732136>,  <35.055565, 29.361490, 44.942490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715580, 29.374218, 44.732136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501836, 0.254991, 0.826523,
		0.160396, 0.966419, -0.200764,
		-0.849961, 0.031820, -0.525884,
		34.460590, 29.383764, 44.574371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790939, 29.884045, 45.229099>,  <35.055565, 29.361490, 44.942490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790939, 29.884045, 45.229099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479969, 29.740246, 45.022652>,  <34.293388, 29.653967, 44.898785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479969, 29.740246, 45.022652>,  <34.790939, 29.884045, 45.229099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479969, 29.740246, 45.022652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626490, 0.369643, 0.686202,
		-0.055907, 0.856812, -0.512589,
		-0.777422, -0.359496, -0.516119,
		34.246742, 29.632397, 44.867817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340038, 30.478497, 45.202065>,  <34.790939, 29.884045, 45.229099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340038, 30.478497, 45.202065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151051, 30.133181, 45.131073>,  <34.037659, 29.925991, 45.088478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151051, 30.133181, 45.131073>,  <34.340038, 30.478497, 45.202065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151051, 30.133181, 45.131073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679201, 0.228314, 0.697537,
		-0.561656, 0.450112, -0.694220,
		-0.472470, -0.863291, -0.177483,
		34.009308, 29.874193, 45.077827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590977, 30.656258, 45.264046>,  <34.340038, 30.478497, 45.202065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590977, 30.656258, 45.264046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665585, 30.268829, 45.329868>,  <33.710350, 30.036371, 45.369362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665585, 30.268829, 45.329868>,  <33.590977, 30.656258, 45.264046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665585, 30.268829, 45.329868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550367, 0.035729, 0.834158,
		-0.813821, -0.246153, -0.526406,
		0.186523, -0.968572, 0.164552,
		33.721542, 29.978258, 45.379234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965302, 30.394924, 45.438488>,  <33.590977, 30.656258, 45.264046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965302, 30.394924, 45.438488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229321, 30.131096, 45.582325>,  <33.387730, 29.972799, 45.668629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229321, 30.131096, 45.582325>,  <32.965302, 30.394924, 45.438488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229321, 30.131096, 45.582325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437872, 0.051168, 0.897580,
		-0.610417, -0.749899, -0.255035,
		0.660044, -0.659571, 0.359593,
		33.427334, 29.933224, 45.690205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581669, 29.898003, 45.735718>,  <32.965302, 30.394924, 45.438488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581669, 29.898003, 45.735718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948685, 29.852043, 45.887985>,  <33.168896, 29.824467, 45.979347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948685, 29.852043, 45.887985>,  <32.581669, 29.898003, 45.735718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948685, 29.852043, 45.887985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396076, -0.179409, 0.900520,
		-0.035169, -0.977042, -0.210123,
		0.917544, -0.114895, 0.380673,
		33.223949, 29.817574, 46.002186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400009, 29.366817, 46.109154>,  <32.581669, 29.898003, 45.735718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400009, 29.366817, 46.109154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756721, 29.461241, 46.263557>,  <32.970749, 29.517895, 46.356201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756721, 29.461241, 46.263557>,  <32.400009, 29.366817, 46.109154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756721, 29.461241, 46.263557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354550, -0.165467, 0.920280,
		0.281115, -0.957547, -0.063865,
		0.891778, 0.236062, 0.386014,
		33.024254, 29.532059, 46.379360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607704, 28.790789, 46.540417>,  <32.400009, 29.366817, 46.109154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607704, 28.790789, 46.540417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749805, 29.148726, 46.648533>,  <32.835068, 29.363487, 46.713402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749805, 29.148726, 46.648533>,  <32.607704, 28.790789, 46.540417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749805, 29.148726, 46.648533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361888, -0.134941, 0.922403,
		0.861876, -0.425503, 0.275894,
		0.355256, 0.894840, 0.270287,
		32.856380, 29.417177, 46.729618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974415, 28.670107, 47.288689>,  <32.607704, 28.790789, 46.540417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974415, 28.670107, 47.288689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918789, 29.064495, 47.251759>,  <32.885414, 29.301128, 47.229599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918789, 29.064495, 47.251759>,  <32.974415, 28.670107, 47.288689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918789, 29.064495, 47.251759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110466, 0.077204, 0.990877,
		0.984102, 0.147998, 0.098179,
		-0.139068, 0.985970, -0.092325,
		32.877068, 29.360287, 47.224060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373554, 28.919312, 47.718067>,  <32.974415, 28.670107, 47.288689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373554, 28.919312, 47.718067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122822, 29.224154, 47.653221>,  <32.972382, 29.407059, 47.614315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122822, 29.224154, 47.653221>,  <33.373554, 28.919312, 47.718067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122822, 29.224154, 47.653221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155774, 0.081283, 0.984443,
		0.763423, 0.642334, 0.067765,
		-0.626832, 0.762103, -0.162112,
		32.934772, 29.452784, 47.604588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560349, 29.455563, 48.261150>,  <33.373554, 28.919312, 47.718067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560349, 29.455563, 48.261150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198124, 29.543600, 48.116089>,  <32.980789, 29.596422, 48.029053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198124, 29.543600, 48.116089>,  <33.560349, 29.455563, 48.261150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198124, 29.543600, 48.116089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305925, 0.253409, 0.917711,
		0.293880, 0.941989, -0.162146,
		-0.905563, 0.220092, -0.362650,
		32.926456, 29.609629, 48.007294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306553, 30.059238, 48.535477>,  <33.560349, 29.455563, 48.261150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306553, 30.059238, 48.535477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965061, 29.890350, 48.413574>,  <32.760166, 29.789019, 48.340431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965061, 29.890350, 48.413574>,  <33.306553, 30.059238, 48.535477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965061, 29.890350, 48.413574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409946, 0.184108, 0.893336,
		-0.321075, 0.887601, -0.330265,
		-0.853730, -0.422218, -0.304756,
		32.708942, 29.763685, 48.322147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694954, 30.605045, 48.479557>,  <33.306553, 30.059238, 48.535477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694954, 30.605045, 48.479557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586704, 30.230162, 48.567562>,  <32.521755, 30.005232, 48.620365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586704, 30.230162, 48.567562>,  <32.694954, 30.605045, 48.479557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586704, 30.230162, 48.567562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133196, 0.262790, 0.955615,
		-0.953427, 0.229305, -0.195949,
		-0.270621, -0.937209, 0.220009,
		32.505516, 29.948999, 48.633564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525429, 31.182270, 48.905552>,  <32.694954, 30.605045, 48.479557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525429, 31.182270, 48.905552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820751, 31.234970, 49.170139>,  <32.997944, 31.266590, 49.328892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820751, 31.234970, 49.170139>,  <32.525429, 31.182270, 48.905552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820751, 31.234970, 49.170139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672599, -0.070898, -0.736603,
		-0.050152, 0.988744, -0.140961,
		0.738305, 0.131752, 0.661473,
		33.042244, 31.274496, 49.368580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918266, 31.818211, 48.749668>,  <32.525429, 31.182270, 48.905552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918266, 31.818211, 48.749668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181889, 31.601349, 48.958172>,  <33.340061, 31.471231, 49.083275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181889, 31.601349, 48.958172>,  <32.918266, 31.818211, 48.749668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181889, 31.601349, 48.958172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699606, 0.187563, -0.689472,
		0.276031, 0.819078, 0.502910,
		0.659058, -0.542155, 0.521259,
		33.379604, 31.438702, 49.114548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460899, 32.206879, 48.675163>,  <32.918266, 31.818211, 48.749668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460899, 32.206879, 48.675163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592590, 31.847015, 48.789860>,  <33.671604, 31.631096, 48.858677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592590, 31.847015, 48.789860>,  <33.460899, 32.206879, 48.675163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592590, 31.847015, 48.789860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783279, 0.090616, -0.615030,
		0.527336, 0.427080, 0.734519,
		0.329227, -0.899662, 0.286738,
		33.691357, 31.577116, 48.875881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141602, 32.325813, 48.754898>,  <33.460899, 32.206879, 48.675163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141602, 32.325813, 48.754898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123642, 31.926506, 48.770054>,  <34.112865, 31.686920, 48.779148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123642, 31.926506, 48.770054>,  <34.141602, 32.325813, 48.754898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123642, 31.926506, 48.770054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813243, -0.058558, -0.578971,
		0.580190, 0.004819, 0.814467,
		-0.044903, -0.998272, 0.037894,
		34.110172, 31.627024, 48.781422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801212, 32.226646, 48.868427>,  <34.141602, 32.325813, 48.754898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801212, 32.226646, 48.868427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637383, 31.908123, 48.690376>,  <34.539085, 31.717009, 48.583546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637383, 31.908123, 48.690376>,  <34.801212, 32.226646, 48.868427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637383, 31.908123, 48.690376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773349, -0.044237, -0.632435,
		0.483923, -0.603269, 0.633944,
		-0.409572, -0.796310, -0.445130,
		34.514511, 31.669230, 48.556839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335674, 31.744043, 48.649254>,  <34.801212, 32.226646, 48.868427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335674, 31.744043, 48.649254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027168, 31.651354, 48.412121>,  <34.842064, 31.595741, 48.269840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027168, 31.651354, 48.412121>,  <35.335674, 31.744043, 48.649254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027168, 31.651354, 48.412121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633545, -0.189680, -0.750095,
		0.061365, -0.954110, 0.293101,
		-0.771268, -0.231723, -0.592832,
		34.795788, 31.581837, 48.234272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618324, 31.082689, 48.238445>,  <35.335674, 31.744043, 48.649254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618324, 31.082689, 48.238445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275562, 31.168852, 48.051121>,  <35.069904, 31.220551, 47.938728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275562, 31.168852, 48.051121>,  <35.618324, 31.082689, 48.238445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275562, 31.168852, 48.051121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432178, -0.194952, -0.880464,
		-0.280956, -0.956867, 0.073961,
		-0.856905, 0.215407, -0.468309,
		35.018490, 31.233475, 47.910629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529778, 30.505545, 47.762199>,  <35.618324, 31.082689, 48.238445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529778, 30.505545, 47.762199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353344, 30.845665, 47.647358>,  <35.247482, 31.049738, 47.578453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353344, 30.845665, 47.647358>,  <35.529778, 30.505545, 47.762199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353344, 30.845665, 47.647358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395699, -0.102876, -0.912600,
		-0.805522, -0.516143, -0.291086,
		-0.441086, 0.850302, -0.287106,
		35.221020, 31.100756, 47.561226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170570, 30.284113, 47.150719>,  <35.529778, 30.505545, 47.762199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170570, 30.284113, 47.150719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190170, 30.683559, 47.143097>,  <35.201931, 30.923227, 47.138523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190170, 30.683559, 47.143097>,  <35.170570, 30.284113, 47.150719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190170, 30.683559, 47.143097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413011, -0.037627, -0.909948,
		-0.909407, 0.036721, -0.414284,
		0.049002, 0.998617, -0.019052,
		35.204872, 30.983145, 47.137383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984928, 30.507700, 46.431332>,  <35.170570, 30.284113, 47.150719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984928, 30.507700, 46.431332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178772, 30.826878, 46.574684>,  <35.295078, 31.018385, 46.660698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178772, 30.826878, 46.574684>,  <34.984928, 30.507700, 46.431332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178772, 30.826878, 46.574684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449449, 0.124350, -0.884609,
		-0.750435, 0.589763, -0.298375,
		0.484606, 0.797945, 0.358385,
		35.324154, 31.066261, 46.682201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948551, 31.092813, 45.895317>,  <34.984928, 30.507700, 46.431332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948551, 31.092813, 45.895317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248817, 31.238867, 46.115562>,  <35.428978, 31.326498, 46.247711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248817, 31.238867, 46.115562>,  <34.948551, 31.092813, 45.895317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248817, 31.238867, 46.115562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422525, 0.375381, -0.824962,
		-0.507911, 0.851920, 0.127509,
		0.750666, 0.365132, 0.550618,
		35.474018, 31.348406, 46.280746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017258, 31.762596, 45.688362>,  <34.948551, 31.092813, 45.895317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017258, 31.762596, 45.688362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355587, 31.670746, 45.880966>,  <35.558586, 31.615635, 45.996529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355587, 31.670746, 45.880966>,  <35.017258, 31.762596, 45.688362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355587, 31.670746, 45.880966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532129, 0.426879, -0.731173,
		-0.037651, 0.874670, 0.483255,
		0.845826, -0.229625, 0.481509,
		35.609333, 31.601858, 46.025417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420959, 32.382339, 45.677914>,  <35.017258, 31.762596, 45.688362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420959, 32.382339, 45.677914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658543, 32.068119, 45.747337>,  <35.801094, 31.879587, 45.788994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658543, 32.068119, 45.747337>,  <35.420959, 32.382339, 45.677914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658543, 32.068119, 45.747337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603229, 0.292135, -0.742140,
		0.532283, 0.545500, 0.647383,
		0.593961, -0.785549, 0.173563,
		35.836731, 31.832455, 45.799408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093399, 32.667339, 45.607586>,  <35.420959, 32.382339, 45.677914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093399, 32.667339, 45.607586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150341, 32.273075, 45.571342>,  <36.184505, 32.036518, 45.549595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150341, 32.273075, 45.571342>,  <36.093399, 32.667339, 45.607586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150341, 32.273075, 45.571342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512173, 0.151684, -0.845382,
		0.847003, 0.073937, 0.526421,
		0.142355, -0.985660, -0.090608,
		36.193047, 31.977377, 45.544159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820385, 32.498077, 45.513805>,  <36.093399, 32.667339, 45.607586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820385, 32.498077, 45.513805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602478, 32.211811, 45.338966>,  <36.471733, 32.040051, 45.234062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602478, 32.211811, 45.338966>,  <36.820385, 32.498077, 45.513805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602478, 32.211811, 45.338966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479574, 0.161703, -0.862474,
		0.687924, -0.679464, 0.255126,
		-0.544766, -0.715668, -0.437093,
		36.439049, 31.997110, 45.207840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338112, 32.176502, 45.077503>,  <36.820385, 32.498077, 45.513805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338112, 32.176502, 45.077503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990055, 32.046181, 44.929604>,  <36.781223, 31.967987, 44.840866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990055, 32.046181, 44.929604>,  <37.338112, 32.176502, 45.077503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990055, 32.046181, 44.929604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393820, -0.008681, -0.919146,
		0.296255, -0.945396, 0.135863,
		-0.870137, -0.325808, -0.369744,
		36.729015, 31.948439, 44.818680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586929, 31.784117, 44.526470>,  <37.338112, 32.176502, 45.077503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586929, 31.784117, 44.526470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194881, 31.843815, 44.474182>,  <36.959652, 31.879635, 44.442810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194881, 31.843815, 44.474182>,  <37.586929, 31.784117, 44.526470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194881, 31.843815, 44.474182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092718, -0.237940, -0.966844,
		-0.175400, -0.959745, 0.219372,
		-0.980121, 0.149245, -0.130720,
		36.900845, 31.888590, 44.434967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355034, 31.193445, 44.095898>,  <37.586929, 31.784117, 44.526470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355034, 31.193445, 44.095898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069122, 31.471483, 44.065083>,  <36.897575, 31.638306, 44.046593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069122, 31.471483, 44.065083>,  <37.355034, 31.193445, 44.095898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069122, 31.471483, 44.065083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114044, 0.007166, -0.993450,
		-0.689992, -0.718881, -0.084393,
		-0.714777, 0.695097, -0.077039,
		36.854691, 31.680012, 44.041969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876751, 30.979807, 43.666050>,  <37.355034, 31.193445, 44.095898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876751, 30.979807, 43.666050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834728, 31.377205, 43.648483>,  <36.809513, 31.615644, 43.637943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834728, 31.377205, 43.648483>,  <36.876751, 30.979807, 43.666050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834728, 31.377205, 43.648483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154196, -0.027350, -0.987662,
		-0.982439, -0.110533, -0.150320,
		-0.105058, 0.993496, -0.043913,
		36.803211, 31.675253, 43.635311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401485, 31.086016, 43.204762>,  <36.876751, 30.979807, 43.666050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401485, 31.086016, 43.204762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579498, 31.443136, 43.232605>,  <36.686306, 31.657410, 43.249313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579498, 31.443136, 43.232605>,  <36.401485, 31.086016, 43.204762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579498, 31.443136, 43.232605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287832, -0.069001, -0.955192,
		-0.847995, 0.445131, -0.287685,
		0.445036, 0.892803, 0.069611,
		36.713009, 31.710978, 43.253487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276447, 31.363089, 42.555424>,  <36.401485, 31.086016, 43.204762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276447, 31.363089, 42.555424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556309, 31.606537, 42.705124>,  <36.724224, 31.752605, 42.794945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556309, 31.606537, 42.705124>,  <36.276447, 31.363089, 42.555424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556309, 31.606537, 42.705124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288812, 0.238195, -0.927281,
		-0.653509, 0.756864, -0.009123,
		0.699652, 0.608622, 0.374254,
		36.766205, 31.789124, 42.817402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193424, 31.986454, 42.222012>,  <36.276447, 31.363089, 42.555424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193424, 31.986454, 42.222012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570732, 31.944405, 42.347984>,  <36.797119, 31.919174, 42.423569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570732, 31.944405, 42.347984>,  <36.193424, 31.986454, 42.222012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570732, 31.944405, 42.347984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323337, 0.075412, -0.943274,
		0.075412, 0.991596, 0.105124,
		0.943274, -0.105124, 0.314932,
		36.853714, 31.912867, 42.442463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533604, 32.504940, 41.797562>,  <36.193424, 31.986454, 42.222012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533604, 32.504940, 41.797562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808994, 32.245243, 41.926865>,  <36.974228, 32.089424, 42.004444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808994, 32.245243, 41.926865>,  <36.533604, 32.504940, 41.797562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808994, 32.245243, 41.926865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427271, 0.002933, -0.904119,
		0.586041, 0.760579, 0.279420,
		0.688473, -0.649239, 0.323255,
		37.015537, 32.050472, 42.023842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261539, 32.764946, 41.618351>,  <36.533604, 32.504940, 41.797562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261539, 32.764946, 41.618351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322319, 32.373974, 41.677063>,  <37.358788, 32.139389, 41.712292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322319, 32.373974, 41.677063>,  <37.261539, 32.764946, 41.618351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322319, 32.373974, 41.677063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600694, -0.026608, -0.799036,
		0.784906, 0.209582, 0.583093,
		0.151948, -0.977429, 0.146780,
		37.367905, 32.080746, 41.721096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901794, 32.746147, 41.571262>,  <37.261539, 32.764946, 41.618351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901794, 32.746147, 41.571262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775097, 32.373653, 41.499184>,  <37.699078, 32.150158, 41.455936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775097, 32.373653, 41.499184>,  <37.901794, 32.746147, 41.571262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775097, 32.373653, 41.499184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617455, -0.058228, -0.784448,
		0.720015, -0.359730, 0.593441,
		-0.316744, -0.931238, -0.180192,
		37.680073, 32.094280, 41.445126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493225, 32.360165, 41.512100>,  <37.901794, 32.746147, 41.571262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493225, 32.360165, 41.512100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208069, 32.162411, 41.313152>,  <38.036976, 32.043758, 41.193783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208069, 32.162411, 41.313152>,  <38.493225, 32.360165, 41.512100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208069, 32.162411, 41.313152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610603, -0.088774, -0.786946,
		0.344900, -0.864699, 0.365158,
		-0.712888, -0.494384, -0.497369,
		37.994202, 32.014095, 41.163940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844471, 31.994781, 41.059624>,  <38.493225, 32.360165, 41.512100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844471, 31.994781, 41.059624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474598, 31.941648, 40.916893>,  <38.252674, 31.909769, 40.831257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474598, 31.941648, 40.916893>,  <38.844471, 31.994781, 41.059624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474598, 31.941648, 40.916893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361808, -0.014667, -0.932137,
		0.118587, -0.991030, 0.061623,
		-0.924680, -0.132835, -0.356823,
		38.197193, 31.901798, 40.809845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938812, 31.647337, 40.497448>,  <38.844471, 31.994781, 41.059624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938812, 31.647337, 40.497448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562492, 31.764019, 40.428387>,  <38.336700, 31.834028, 40.386951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562492, 31.764019, 40.428387>,  <38.938812, 31.647337, 40.497448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562492, 31.764019, 40.428387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244335, 0.230550, -0.941885,
		-0.234948, -0.928308, -0.288174,
		-0.940798, 0.291705, -0.172651,
		38.280254, 31.851530, 40.376591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632889, 31.249041, 39.888466>,  <38.938812, 31.647337, 40.497448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632889, 31.249041, 39.888466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416008, 31.584873, 39.901829>,  <38.285881, 31.786373, 39.909847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416008, 31.584873, 39.901829>,  <38.632889, 31.249041, 39.888466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416008, 31.584873, 39.901829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296988, 0.228684, -0.927093,
		-0.786012, -0.492751, -0.373339,
		-0.542202, 0.839584, 0.033407,
		38.253345, 31.836748, 39.911850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094940, 31.273510, 39.373375>,  <38.632889, 31.249041, 39.888466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094940, 31.273510, 39.373375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153267, 31.661524, 39.451111>,  <38.188263, 31.894333, 39.497753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153267, 31.661524, 39.451111>,  <38.094940, 31.273510, 39.373375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153267, 31.661524, 39.451111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092641, 0.182186, -0.978890,
		-0.984964, 0.160744, -0.063299,
		0.145818, 0.970036, 0.194338,
		38.197014, 31.952534, 39.509411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976635, 31.502386, 38.776520>,  <38.094940, 31.273510, 39.373375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976635, 31.502386, 38.776520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160267, 31.805292, 38.962337>,  <38.270447, 31.987036, 39.073826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160267, 31.805292, 38.962337>,  <37.976635, 31.502386, 38.776520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160267, 31.805292, 38.962337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316094, 0.349449, -0.882026,
		-0.830261, 0.551757, -0.078943,
		0.459077, 0.757265, 0.464541,
		38.297989, 32.032471, 39.101700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772545, 32.091969, 38.404034>,  <37.976635, 31.502386, 38.776520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772545, 32.091969, 38.404034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101147, 32.203266, 38.603115>,  <38.298309, 32.270046, 38.722565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101147, 32.203266, 38.603115>,  <37.772545, 32.091969, 38.404034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101147, 32.203266, 38.603115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383483, 0.376352, -0.843386,
		-0.421980, 0.883707, 0.202473,
		0.821507, 0.278247, 0.497700,
		38.347599, 32.286739, 38.752426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823269, 32.847691, 38.170891>,  <37.772545, 32.091969, 38.404034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823269, 32.847691, 38.170891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186386, 32.767288, 38.318138>,  <38.404255, 32.719048, 38.406487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186386, 32.767288, 38.318138>,  <37.823269, 32.847691, 38.170891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186386, 32.767288, 38.318138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418704, 0.485563, -0.767408,
		-0.024493, 0.850780, 0.524951,
		0.907792, -0.201003, 0.368118,
		38.458725, 32.706985, 38.428574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180119, 33.527359, 38.151745>,  <37.823269, 32.847691, 38.170891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180119, 33.527359, 38.151745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463112, 33.246010, 38.179279>,  <38.632908, 33.077202, 38.195801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463112, 33.246010, 38.179279>,  <38.180119, 33.527359, 38.151745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463112, 33.246010, 38.179279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505604, 0.435676, -0.744682,
		0.493799, 0.561651, 0.663860,
		0.707479, -0.703374, 0.068837,
		38.675354, 33.034996, 38.199932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820751, 33.904575, 38.199009>,  <38.180119, 33.527359, 38.151745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820751, 33.904575, 38.199009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923553, 33.530800, 38.100395>,  <38.985233, 33.306534, 38.041225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923553, 33.530800, 38.100395>,  <38.820751, 33.904575, 38.199009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923553, 33.530800, 38.100395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636320, 0.355622, -0.684566,
		0.727355, 0.019063, 0.685997,
		0.257005, -0.934435, -0.246533,
		39.000656, 33.250469, 38.026436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564865, 33.895710, 38.159195>,  <38.820751, 33.904575, 38.199009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564865, 33.895710, 38.159195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435059, 33.600693, 37.922310>,  <39.357174, 33.423683, 37.780178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435059, 33.600693, 37.922310>,  <39.564865, 33.895710, 38.159195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435059, 33.600693, 37.922310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460290, 0.423826, -0.780068,
		0.826331, -0.525733, 0.201947,
		-0.324517, -0.737548, -0.592209,
		39.337704, 33.379429, 37.744648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150097, 33.594002, 37.734444>,  <39.564865, 33.895710, 38.159195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150097, 33.594002, 37.734444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824322, 33.480350, 37.532070>,  <39.628857, 33.412159, 37.410648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824322, 33.480350, 37.532070>,  <40.150097, 33.594002, 37.734444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824322, 33.480350, 37.532070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454899, 0.228643, -0.860691,
		0.360220, -0.931126, -0.056968,
		-0.814438, -0.284124, -0.505930,
		39.579990, 33.395115, 37.380291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429783, 33.133446, 37.222511>,  <40.150097, 33.594002, 37.734444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429783, 33.133446, 37.222511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077515, 33.281807, 37.104630>,  <39.866154, 33.370823, 37.033901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077515, 33.281807, 37.104630>,  <40.429783, 33.133446, 37.222511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077515, 33.281807, 37.104630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414008, 0.300214, -0.859342,
		-0.230255, -0.878808, -0.417946,
		-0.880670, 0.370901, -0.294708,
		39.813313, 33.393078, 37.016216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322006, 32.990108, 36.507938>,  <40.429783, 33.133446, 37.222511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322006, 32.990108, 36.507938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059078, 33.288620, 36.549900>,  <39.901321, 33.467728, 36.575077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059078, 33.288620, 36.549900>,  <40.322006, 32.990108, 36.507938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059078, 33.288620, 36.549900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374741, 0.444449, -0.813655,
		-0.653834, -0.495520, -0.571805,
		-0.657320, 0.746274, 0.104904,
		39.861881, 33.512501, 36.581371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011421, 33.154781, 35.844341>,  <40.322006, 32.990108, 36.507938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011421, 33.154781, 35.844341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961014, 33.471706, 36.083126>,  <39.930771, 33.661861, 36.226395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961014, 33.471706, 36.083126>,  <40.011421, 33.154781, 35.844341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961014, 33.471706, 36.083126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434363, 0.585073, -0.684849,
		-0.891879, 0.172995, -0.417880,
		-0.126015, 0.792314, 0.596957,
		39.923210, 33.709400, 36.262215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714500, 33.666977, 35.430767>,  <40.011421, 33.154781, 35.844341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714500, 33.666977, 35.430767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891502, 33.830032, 35.750271>,  <39.997704, 33.927868, 35.941975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891502, 33.830032, 35.750271>,  <39.714500, 33.666977, 35.430767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891502, 33.830032, 35.750271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527535, 0.601964, -0.599455,
		-0.725188, 0.686635, 0.051326,
		0.442504, 0.407641, 0.798761,
		40.024254, 33.952324, 35.989899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519180, 34.447842, 35.538651>,  <39.714500, 33.666977, 35.430767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519180, 34.447842, 35.538651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887550, 34.370975, 35.674282>,  <40.108570, 34.324856, 35.755661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887550, 34.370975, 35.674282>,  <39.519180, 34.447842, 35.538651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887550, 34.370975, 35.674282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383628, 0.600526, -0.701568,
		-0.068808, 0.776170, 0.626758,
		0.920921, -0.192168, 0.339081,
		40.163826, 34.313324, 35.776005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940296, 35.138866, 35.734592>,  <39.519180, 34.447842, 35.538651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940296, 35.138866, 35.734592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163849, 34.817257, 35.653397>,  <40.297981, 34.624290, 35.604679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163849, 34.817257, 35.653397>,  <39.940296, 35.138866, 35.734592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163849, 34.817257, 35.653397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548951, 0.542183, -0.636153,
		0.621538, 0.244102, 0.744382,
		0.558878, -0.804022, -0.202987,
		40.331512, 34.576050, 35.592499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684822, 35.296673, 35.933861>,  <39.940296, 35.138866, 35.734592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684822, 35.296673, 35.933861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632534, 35.043358, 35.628742>,  <40.601162, 34.891369, 35.445671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632534, 35.043358, 35.628742>,  <40.684822, 35.296673, 35.933861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632534, 35.043358, 35.628742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546581, 0.595876, -0.588372,
		0.827142, -0.493839, 0.268253,
		-0.130716, -0.633289, -0.762797,
		40.593319, 34.853371, 35.399902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330238, 35.001286, 35.630100>,  <40.684822, 35.296673, 35.933861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330238, 35.001286, 35.630100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023071, 35.014374, 35.374214>,  <40.838772, 35.022228, 35.220684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023071, 35.014374, 35.374214>,  <41.330238, 35.001286, 35.630100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023071, 35.014374, 35.374214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545535, 0.556812, -0.626380,
		0.335704, -0.829994, -0.445436,
		-0.767916, 0.032722, -0.639714,
		40.792698, 35.024189, 35.182301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657776, 34.741306, 34.958527>,  <41.330238, 35.001286, 35.630100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657776, 34.741306, 34.958527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342392, 34.984528, 34.921444>,  <41.153160, 35.130463, 34.899197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342392, 34.984528, 34.921444>,  <41.657776, 34.741306, 34.958527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342392, 34.984528, 34.921444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509867, 0.561826, -0.651450,
		-0.344036, -0.560911, -0.753006,
		-0.788464, 0.608056, -0.092702,
		41.105854, 35.166943, 34.893635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255997, 34.984951, 35.475422>,  <41.657776, 34.741306, 34.958527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255997, 34.984951, 35.475422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623283, 34.947891, 35.321388>,  <42.843655, 34.925655, 35.228966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623283, 34.947891, 35.321388>,  <42.255997, 34.984951, 35.475422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623283, 34.947891, 35.321388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394337, -0.122878, -0.910714,
		0.037054, 0.988088, -0.149362,
		0.918219, -0.092645, -0.385087,
		42.898750, 34.920097, 35.205864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240627, 35.336025, 34.992931>,  <42.255997, 34.984951, 35.475422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240627, 35.336025, 34.992931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546078, 35.094856, 34.900536>,  <42.729347, 34.950157, 34.845097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546078, 35.094856, 34.900536>,  <42.240627, 35.336025, 34.992931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546078, 35.094856, 34.900536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336976, -0.066995, -0.939127,
		0.550741, 0.794985, -0.254329,
		0.763631, -0.602918, -0.230994,
		42.775166, 34.913982, 34.831238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593094, 35.653145, 34.378735>,  <42.240627, 35.336025, 34.992931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593094, 35.653145, 34.378735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692448, 35.266022, 34.362492>,  <42.752060, 35.033749, 34.352745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692448, 35.266022, 34.362492>,  <42.593094, 35.653145, 34.378735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692448, 35.266022, 34.362492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294469, -0.035504, -0.955002,
		0.922819, 0.249163, -0.293809,
		0.248382, -0.967811, -0.040607,
		42.766964, 34.975677, 34.350311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846031, 35.554073, 33.738743>,  <42.593094, 35.653145, 34.378735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846031, 35.554073, 33.738743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755768, 35.178829, 33.843838>,  <42.701611, 34.953682, 33.906895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755768, 35.178829, 33.843838>,  <42.846031, 35.554073, 33.738743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755768, 35.178829, 33.843838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158844, -0.230651, -0.959984,
		0.961170, -0.258361, -0.096965,
		-0.225658, -0.938110, 0.262734,
		42.688072, 34.897396, 33.922657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160198, 35.070061, 33.235214>,  <42.846031, 35.554073, 33.738743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160198, 35.070061, 33.235214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856480, 34.867332, 33.398476>,  <42.674248, 34.745693, 33.496433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856480, 34.867332, 33.398476>,  <43.160198, 35.070061, 33.235214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856480, 34.867332, 33.398476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395149, -0.139240, -0.908003,
		0.517031, -0.850729, -0.094547,
		-0.759300, -0.506826, 0.408156,
		42.628689, 34.715286, 33.520924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077080, 34.563911, 32.754845>,  <43.160198, 35.070061, 33.235214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077080, 34.563911, 32.754845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750046, 34.592644, 32.983364>,  <42.553825, 34.609882, 33.120476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750046, 34.592644, 32.983364>,  <43.077080, 34.563911, 32.754845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750046, 34.592644, 32.983364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571672, 0.017345, -0.820299,
		-0.068835, -0.997266, 0.026884,
		-0.817589, 0.071834, 0.571303,
		42.504768, 34.614193, 33.154755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592556, 34.076916, 32.418079>,  <43.077080, 34.563911, 32.754845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592556, 34.076916, 32.418079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366623, 34.338356, 32.619583>,  <42.231064, 34.495220, 32.740486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366623, 34.338356, 32.619583>,  <42.592556, 34.076916, 32.418079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366623, 34.338356, 32.619583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574320, 0.127000, -0.808720,
		-0.592558, -0.746108, 0.303642,
		-0.564830, 0.653601, 0.503759,
		42.197174, 34.534435, 32.770710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014732, 33.817669, 32.245819>,  <42.592556, 34.076916, 32.418079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014732, 33.817669, 32.245819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967453, 34.198536, 32.358528>,  <41.939083, 34.427055, 32.426155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967453, 34.198536, 32.358528>,  <42.014732, 33.817669, 32.245819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967453, 34.198536, 32.358528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570682, 0.167081, -0.803993,
		-0.812619, -0.255839, 0.523638,
		-0.118203, 0.952171, 0.281776,
		41.931992, 34.484188, 32.443062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218037, 33.993793, 32.165588>,  <42.014732, 33.817669, 32.245819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218037, 33.993793, 32.165588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418358, 34.338528, 32.197701>,  <41.538551, 34.545368, 32.216969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418358, 34.338528, 32.197701>,  <41.218037, 33.993793, 32.165588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418358, 34.338528, 32.197701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509888, 0.368685, -0.777229,
		-0.699438, 0.348304, 0.624075,
		0.500800, 0.861832, 0.080277,
		41.568596, 34.597076, 32.221783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728348, 34.540493, 32.252377>,  <41.218037, 33.993793, 32.165588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728348, 34.540493, 32.252377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039894, 34.755650, 32.123348>,  <41.226822, 34.884743, 32.045933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039894, 34.755650, 32.123348>,  <40.728348, 34.540493, 32.252377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039894, 34.755650, 32.123348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581409, 0.426295, -0.692991,
		-0.235242, 0.727289, 0.644757,
		0.778862, 0.537888, -0.322570,
		41.273552, 34.917015, 32.026577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556572, 35.326923, 32.228798>,  <40.728348, 34.540493, 32.252377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556572, 35.326923, 32.228798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866886, 35.256104, 31.986538>,  <41.053074, 35.213612, 31.841183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866886, 35.256104, 31.986538>,  <40.556572, 35.326923, 32.228798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866886, 35.256104, 31.986538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553832, 0.268882, -0.788018,
		0.302366, 0.946761, 0.110539,
		0.775786, -0.177050, -0.605647,
		41.099621, 35.202988, 31.804844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444107, 35.874069, 31.782190>,  <40.556572, 35.326923, 32.228798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444107, 35.874069, 31.782190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691284, 35.618084, 31.599503>,  <40.839592, 35.464493, 31.489889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691284, 35.618084, 31.599503>,  <40.444107, 35.874069, 31.782190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691284, 35.618084, 31.599503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540372, 0.076249, -0.837964,
		0.571090, 0.764614, -0.298700,
		0.617943, -0.639963, -0.456721,
		40.876667, 35.426094, 31.462486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672375, 36.158672, 31.138058>,  <40.444107, 35.874069, 31.782190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672375, 36.158672, 31.138058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725132, 35.765560, 31.086290>,  <40.756786, 35.529694, 31.055229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725132, 35.765560, 31.086290>,  <40.672375, 36.158672, 31.138058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725132, 35.765560, 31.086290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406686, 0.065418, -0.911223,
		0.903997, 0.172815, -0.391055,
		0.131891, -0.982779, -0.129419,
		40.764698, 35.470726, 31.047464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071636, 36.024479, 30.570974>,  <40.672375, 36.158672, 31.138058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071636, 36.024479, 30.570974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861202, 35.687019, 30.613846>,  <40.734940, 35.484543, 30.639568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861202, 35.687019, 30.613846>,  <41.071636, 36.024479, 30.570974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861202, 35.687019, 30.613846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355642, 0.103774, -0.928843,
		0.772495, -0.526771, -0.354631,
		-0.526089, -0.843649, 0.107178,
		40.703377, 35.433926, 30.646000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050976, 35.724541, 29.860956>,  <41.071636, 36.024479, 30.570974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050976, 35.724541, 29.860956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782658, 35.496887, 30.051165>,  <40.621666, 35.360294, 30.165289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782658, 35.496887, 30.051165>,  <41.050976, 35.724541, 29.860956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782658, 35.496887, 30.051165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469686, -0.170203, -0.866271,
		0.573962, -0.804435, -0.153145,
		-0.670793, -0.569136, 0.475522,
		40.581421, 35.326145, 30.193821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866783, 35.127430, 29.439293>,  <41.050976, 35.724541, 29.860956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866783, 35.127430, 29.439293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547596, 35.195251, 29.670635>,  <40.356083, 35.235947, 29.809441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547596, 35.195251, 29.670635>,  <40.866783, 35.127430, 29.439293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547596, 35.195251, 29.670635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568995, 0.104464, -0.815679,
		-0.198722, -0.979968, 0.013118,
		-0.797969, 0.169558, 0.578356,
		40.308205, 35.246117, 29.844143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253563, 34.742989, 29.098066>,  <40.866783, 35.127430, 29.439293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253563, 34.742989, 29.098066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095760, 35.021000, 29.338501>,  <40.001080, 35.187805, 29.482761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095760, 35.021000, 29.338501>,  <40.253563, 34.742989, 29.098066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095760, 35.021000, 29.338501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735600, 0.153149, -0.659877,
		-0.550687, -0.702485, 0.450843,
		-0.394507, 0.695025, 0.601085,
		39.977409, 35.229507, 29.518827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522072, 34.686607, 29.030939>,  <40.253563, 34.742989, 29.098066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522072, 34.686607, 29.030939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583401, 35.052185, 29.181244>,  <39.620197, 35.271530, 29.271427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583401, 35.052185, 29.181244>,  <39.522072, 34.686607, 29.030939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583401, 35.052185, 29.181244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724571, 0.362541, -0.586141,
		-0.671929, -0.182397, 0.717804,
		0.153324, 0.913945, 0.375761,
		39.629398, 35.326370, 29.293972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824833, 35.030602, 29.076216>,  <39.522072, 34.686607, 29.030939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824833, 35.030602, 29.076216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072327, 35.343380, 29.106504>,  <39.220821, 35.531048, 29.124678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072327, 35.343380, 29.106504>,  <38.824833, 35.030602, 29.076216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072327, 35.343380, 29.106504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429202, 0.417193, -0.801084,
		-0.657991, 0.463160, 0.593743,
		0.618735, 0.781942, 0.075721,
		39.257946, 35.577961, 29.129221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393223, 35.595474, 29.241310>,  <38.824833, 35.030602, 29.076216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393223, 35.595474, 29.241310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730194, 35.694141, 29.049696>,  <38.932377, 35.753342, 28.934729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730194, 35.694141, 29.049696>,  <38.393223, 35.595474, 29.241310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730194, 35.694141, 29.049696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535262, 0.281245, -0.796490,
		-0.061739, 0.927393, 0.368958,
		0.842427, 0.246663, -0.479034,
		38.982922, 35.768139, 28.905985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308517, 36.124908, 28.956604>,  <38.393223, 35.595474, 29.241310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308517, 36.124908, 28.956604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618359, 36.019402, 28.726673>,  <38.804264, 35.956097, 28.588715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618359, 36.019402, 28.726673>,  <38.308517, 36.124908, 28.956604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618359, 36.019402, 28.726673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464518, 0.379536, -0.800110,
		0.429206, 0.886782, 0.171466,
		0.774600, -0.263763, -0.574825,
		38.850739, 35.940273, 28.554226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231964, 36.671394, 28.395699>,  <38.308517, 36.124908, 28.956604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231964, 36.671394, 28.395699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460320, 36.360203, 28.290754>,  <38.597332, 36.173489, 28.227789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460320, 36.360203, 28.290754>,  <38.231964, 36.671394, 28.395699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460320, 36.360203, 28.290754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354936, 0.054287, -0.933313,
		0.740344, 0.625936, -0.245143,
		0.570886, -0.777982, -0.262359,
		38.631584, 36.126808, 28.212048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848907, 36.918282, 28.009161>,  <38.231964, 36.671394, 28.395699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848907, 36.918282, 28.009161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192593, 36.714767, 28.030647>,  <39.398804, 36.592659, 28.043539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192593, 36.714767, 28.030647>,  <38.848907, 36.918282, 28.009161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192593, 36.714767, 28.030647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504671, -0.825638, 0.252247,
		-0.083988, -0.243844, -0.966171,
		0.859217, -0.508784, 0.053717,
		39.450359, 36.562134, 28.046762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126141, 37.606705, 28.052172>,  <38.848907, 36.918282, 28.009161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126141, 37.606705, 28.052172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409019, 37.606125, 28.334978>,  <39.578747, 37.605778, 28.504662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409019, 37.606125, 28.334978>,  <39.126141, 37.606705, 28.052172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409019, 37.606125, 28.334978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189591, 0.962985, 0.191611,
		-0.681125, -0.269550, 0.680743,
		0.707194, -0.001448, 0.707018,
		39.621178, 37.605690, 28.547083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885040, 37.612259, 28.819372>,  <39.126141, 37.606705, 28.052172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885040, 37.612259, 28.819372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202168, 37.832664, 28.715200>,  <39.392445, 37.964909, 28.652699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202168, 37.832664, 28.715200>,  <38.885040, 37.612259, 28.819372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202168, 37.832664, 28.715200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514739, 0.834181, 0.197954,
		0.326319, -0.022890, 0.944982,
		0.792817, 0.551016, -0.260427,
		39.440014, 37.997971, 28.637072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038704, 38.089367, 29.300350>,  <38.885040, 37.612259, 28.819372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038704, 38.089367, 29.300350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162285, 38.203758, 28.937525>,  <39.236435, 38.272392, 28.719830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162285, 38.203758, 28.937525>,  <39.038704, 38.089367, 29.300350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162285, 38.203758, 28.937525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653275, 0.756949, 0.016139,
		0.691216, 0.587576, 0.420684,
		0.308953, 0.285978, -0.907064,
		39.254971, 38.289551, 28.665405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977119, 38.849564, 29.318045>,  <39.038704, 38.089367, 29.300350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977119, 38.849564, 29.318045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010864, 38.757351, 28.930285>,  <39.031113, 38.702023, 28.697628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010864, 38.757351, 28.930285>,  <38.977119, 38.849564, 29.318045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010864, 38.757351, 28.930285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591154, 0.771583, -0.234939,
		0.802134, 0.592885, -0.071186,
		0.084366, -0.230534, -0.969400,
		39.036175, 38.688190, 28.639465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264847, 39.375366, 28.735783>,  <38.977119, 38.849564, 29.318045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264847, 39.375366, 28.735783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970760, 39.129204, 28.622129>,  <38.794308, 38.981506, 28.553938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970760, 39.129204, 28.622129>,  <39.264847, 39.375366, 28.735783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970760, 39.129204, 28.622129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555712, 0.787269, -0.267192,
		0.388122, -0.038548, -0.920802,
		-0.735218, -0.615403, -0.284135,
		38.750195, 38.944584, 28.536888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559776, 39.950397, 29.201551>,  <39.264847, 39.375366, 28.735783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559776, 39.950397, 29.201551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667076, 40.063667, 28.833235>,  <39.731457, 40.131630, 28.612246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667076, 40.063667, 28.833235>,  <39.559776, 39.950397, 29.201551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667076, 40.063667, 28.833235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852906, 0.374569, 0.363662,
		0.447880, -0.882899, -0.141046,
		0.268245, 0.283176, -0.920791,
		39.747551, 40.148621, 28.556997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249516, 39.700966, 28.979527>,  <39.559776, 39.950397, 29.201551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249516, 39.700966, 28.979527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190010, 40.041920, 28.779003>,  <40.154308, 40.246490, 28.658689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190010, 40.041920, 28.779003>,  <40.249516, 39.700966, 28.979527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190010, 40.041920, 28.779003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922110, 0.302687, 0.241028,
		0.357187, -0.426403, -0.831022,
		-0.148765, 0.852385, -0.501306,
		40.145382, 40.297634, 28.628611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872150, 39.741177, 28.617443>,  <40.249516, 39.700966, 28.979527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872150, 39.741177, 28.617443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687389, 40.094650, 28.647772>,  <40.576534, 40.306736, 28.665970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687389, 40.094650, 28.647772>,  <40.872150, 39.741177, 28.617443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687389, 40.094650, 28.647772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859593, 0.424963, 0.283737,
		0.218512, 0.196236, -0.955900,
		-0.461901, 0.883684, 0.075824,
		40.548820, 40.359756, 28.670519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320374, 40.297066, 28.241938>,  <40.872150, 39.741177, 28.617443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320374, 40.297066, 28.241938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081635, 40.413940, 28.540842>,  <40.938393, 40.484066, 28.720184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081635, 40.413940, 28.540842>,  <41.320374, 40.297066, 28.241938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081635, 40.413940, 28.540842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785903, 0.400529, 0.471097,
		-0.161650, 0.868448, -0.468688,
		-0.596846, 0.292190, 0.747261,
		40.902580, 40.501598, 28.765020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678860, 39.755360, 28.338770>,  <41.320374, 40.297066, 28.241938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678860, 39.755360, 28.338770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445919, 39.440746, 28.420971>,  <41.306156, 39.251980, 28.470291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445919, 39.440746, 28.420971>,  <41.678860, 39.755360, 28.338770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445919, 39.440746, 28.420971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728700, -0.392996, 0.560848,
		-0.360364, 0.476361, 0.802009,
		-0.582353, -0.786533, 0.205503,
		41.271214, 39.204788, 28.482622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551479, 39.634186, 29.107494>,  <41.678860, 39.755360, 28.338770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551479, 39.634186, 29.107494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540104, 39.297031, 28.892559>,  <41.533279, 39.094738, 28.763597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540104, 39.297031, 28.892559>,  <41.551479, 39.634186, 29.107494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540104, 39.297031, 28.892559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586129, -0.449510, 0.674087,
		-0.809718, -0.295777, 0.506826,
		-0.028443, -0.842886, -0.537340,
		41.531570, 39.044167, 28.731358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310734, 39.189209, 29.555309>,  <41.551479, 39.634186, 29.107494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310734, 39.189209, 29.555309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503101, 38.976917, 29.276155>,  <41.618523, 38.849545, 29.108664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503101, 38.976917, 29.276155>,  <41.310734, 39.189209, 29.555309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503101, 38.976917, 29.276155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512858, -0.475312, 0.714881,
		-0.711118, -0.701719, 0.043598,
		0.480923, -0.530725, -0.697885,
		41.647377, 38.817699, 29.066790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436359, 38.667473, 29.915459>,  <41.310734, 39.189209, 29.555309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436359, 38.667473, 29.915459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643646, 38.570129, 29.587500>,  <41.768017, 38.511723, 29.390724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643646, 38.570129, 29.587500>,  <41.436359, 38.667473, 29.915459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643646, 38.570129, 29.587500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671413, -0.478071, 0.566262,
		-0.529772, -0.843935, -0.084352,
		0.518215, -0.243354, -0.819898,
		41.799110, 38.497124, 29.341530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520489, 37.916271, 29.883776>,  <41.436359, 38.667473, 29.915459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520489, 37.916271, 29.883776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806576, 38.079254, 29.656637>,  <41.978226, 38.177044, 29.520355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806576, 38.079254, 29.656637>,  <41.520489, 37.916271, 29.883776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806576, 38.079254, 29.656637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694392, -0.506445, 0.511207,
		-0.079288, -0.759930, -0.645152,
		0.715215, 0.407456, -0.567844,
		42.021141, 38.201492, 29.486284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061417, 37.397606, 29.609539>,  <41.520489, 37.916271, 29.883776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061417, 37.397606, 29.609539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228493, 37.759254, 29.645540>,  <42.328739, 37.976242, 29.667141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228493, 37.759254, 29.645540>,  <42.061417, 37.397606, 29.609539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228493, 37.759254, 29.645540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728201, -0.392354, 0.561945,
		0.543379, -0.169178, -0.822264,
		0.417687, 0.904122, 0.090002,
		42.353798, 38.030491, 29.672541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760464, 37.316395, 29.540743>,  <42.061417, 37.397606, 29.609539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760464, 37.316395, 29.540743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748775, 37.664547, 29.737345>,  <42.741760, 37.873440, 29.855307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748775, 37.664547, 29.737345>,  <42.760464, 37.316395, 29.540743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748775, 37.664547, 29.737345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655942, -0.354335, 0.666474,
		0.754246, 0.341877, -0.560565,
		-0.029225, 0.870383, 0.491507,
		42.740009, 37.925663, 29.884796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357368, 37.294140, 29.732746>,  <42.760464, 37.316395, 29.540743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357368, 37.294140, 29.732746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198223, 37.575108, 29.968817>,  <43.102734, 37.743687, 30.110460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198223, 37.575108, 29.968817>,  <43.357368, 37.294140, 29.732746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198223, 37.575108, 29.968817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607132, -0.280694, 0.743371,
		0.687818, 0.654078, -0.314783,
		-0.397865, 0.702419, 0.590178,
		43.078865, 37.785831, 30.145870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880245, 37.596760, 30.014652>,  <43.357368, 37.294140, 29.732746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880245, 37.596760, 30.014652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580662, 37.683079, 30.265247>,  <43.400909, 37.734871, 30.415606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580662, 37.683079, 30.265247>,  <43.880245, 37.596760, 30.014652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580662, 37.683079, 30.265247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611113, -0.140499, 0.778974,
		0.256119, 0.966278, -0.026646,
		-0.748962, 0.215794, 0.626490,
		43.355972, 37.747818, 30.453194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195286, 37.948135, 30.652647>,  <43.880245, 37.596760, 30.014652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195286, 37.948135, 30.652647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848099, 37.802341, 30.787571>,  <43.639786, 37.714863, 30.868526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848099, 37.802341, 30.787571>,  <44.195286, 37.948135, 30.652647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848099, 37.802341, 30.787571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484650, -0.473472, 0.735485,
		-0.108367, 0.801856, 0.587608,
		-0.867969, -0.364486, 0.337311,
		43.587708, 37.692997, 30.888763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221474, 38.224545, 31.321196>,  <44.195286, 37.948135, 30.652647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221474, 38.224545, 31.321196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929630, 37.952103, 31.345762>,  <43.754524, 37.788639, 31.360502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929630, 37.952103, 31.345762>,  <44.221474, 38.224545, 31.321196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929630, 37.952103, 31.345762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483525, -0.450274, 0.750638,
		-0.483604, 0.577370, 0.657853,
		-0.729610, -0.681100, 0.061418,
		43.710747, 37.747772, 31.364187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005867, 38.150631, 32.003006>,  <44.221474, 38.224545, 31.321196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005867, 38.150631, 32.003006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872272, 37.809719, 31.841969>,  <43.792118, 37.605171, 31.745346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872272, 37.809719, 31.841969>,  <44.005867, 38.150631, 32.003006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872272, 37.809719, 31.841969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284946, -0.498423, 0.818768,
		-0.898477, 0.158738, 0.409318,
		-0.333983, -0.852278, -0.402590,
		43.772079, 37.554035, 31.721191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.541740, 37.845974, 32.505749>,  <44.005867, 38.150631, 32.003006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.541740, 37.845974, 32.505749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694107, 37.563881, 32.266567>,  <43.785526, 37.394623, 32.123058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694107, 37.563881, 32.266567>,  <43.541740, 37.845974, 32.505749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694107, 37.563881, 32.266567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236388, -0.550936, 0.800369,
		-0.893882, -0.446221, -0.043150,
		0.380914, -0.705235, -0.597952,
		43.808380, 37.352310, 32.087181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109444, 37.261395, 32.618759>,  <43.541740, 37.845974, 32.505749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109444, 37.261395, 32.618759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454773, 37.115196, 32.479568>,  <43.661968, 37.027477, 32.396053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454773, 37.115196, 32.479568>,  <43.109444, 37.261395, 32.618759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454773, 37.115196, 32.479568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047991, -0.626952, 0.777579,
		-0.502370, -0.687999, -0.523719,
		0.863320, -0.365498, -0.347979,
		43.713768, 37.005547, 32.375175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183544, 36.458839, 32.669441>,  <43.109444, 37.261395, 32.618759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183544, 36.458839, 32.669441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564983, 36.574982, 32.637600>,  <43.793846, 36.644669, 32.618496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564983, 36.574982, 32.637600>,  <43.183544, 36.458839, 32.669441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564983, 36.574982, 32.637600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268000, -0.698163, 0.663886,
		0.137183, -0.654418, -0.743585,
		0.953602, 0.290355, -0.079608,
		43.851063, 36.662086, 32.613716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530888, 35.879044, 32.776470>,  <43.183544, 36.458839, 32.669441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530888, 35.879044, 32.776470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843182, 36.122150, 32.834522>,  <44.030560, 36.268017, 32.869354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843182, 36.122150, 32.834522>,  <43.530888, 35.879044, 32.776470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843182, 36.122150, 32.834522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280713, -0.548657, 0.787512,
		0.558256, -0.574099, -0.598966,
		0.780737, 0.607771, 0.145134,
		44.077404, 36.304482, 32.878063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117245, 35.442924, 32.691269>,  <43.530888, 35.879044, 32.776470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117245, 35.442924, 32.691269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259750, 35.750225, 32.904007>,  <44.345253, 35.934605, 33.031651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259750, 35.750225, 32.904007>,  <44.117245, 35.442924, 32.691269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.259750, 35.750225, 32.904007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451581, -0.639877, 0.621798,
		0.818015, 0.018647, -0.574895,
		0.356267, 0.768251, 0.531850,
		44.366631, 35.980701, 33.063560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893738, 35.296574, 32.818272>,  <44.117245, 35.442924, 32.691269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893738, 35.296574, 32.818272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762100, 35.562790, 33.086227>,  <44.683117, 35.722519, 33.247002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762100, 35.562790, 33.086227>,  <44.893738, 35.296574, 32.818272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762100, 35.562790, 33.086227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561962, -0.432077, 0.705343,
		0.758880, 0.608573, -0.231818,
		-0.329089, 0.665543, 0.669890,
		44.663372, 35.762451, 33.287193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.481113, 35.649361, 33.070164>,  <44.893738, 35.296574, 32.818272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.481113, 35.649361, 33.070164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.200871, 35.680496, 33.353878>,  <45.032722, 35.699177, 33.524105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.200871, 35.680496, 33.353878>,  <45.481113, 35.649361, 33.070164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.200871, 35.680496, 33.353878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552786, -0.569341, 0.608505,
		0.451191, 0.818408, 0.355858,
		-0.700610, 0.077838, 0.709286,
		44.990688, 35.703846, 33.566666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.834919, 35.854782, 33.667854>,  <45.481113, 35.649361, 33.070164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.834919, 35.854782, 33.667854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493080, 35.717403, 33.823650>,  <45.287975, 35.634975, 33.917126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493080, 35.717403, 33.823650>,  <45.834919, 35.854782, 33.667854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493080, 35.717403, 33.823650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503834, -0.366800, 0.782055,
		-0.125733, 0.864581, 0.486509,
		-0.854601, -0.343450, 0.389486,
		45.236698, 35.614368, 33.940495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.808544, 35.985016, 34.441238>,  <45.834919, 35.854782, 33.667854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.808544, 35.985016, 34.441238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579842, 35.674088, 34.336269>,  <45.442619, 35.487530, 34.273289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579842, 35.674088, 34.336269>,  <45.808544, 35.985016, 34.441238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579842, 35.674088, 34.336269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459922, -0.568557, 0.682067,
		-0.679386, 0.269284, 0.682584,
		-0.571758, -0.777322, -0.262420,
		45.408314, 35.440891, 34.257542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.073349, 35.289722, 34.189758>,  <45.808544, 35.985016, 34.441238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.073349, 35.289722, 34.189758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457813, 35.339813, 34.091381>,  <46.688492, 35.369869, 34.032352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457813, 35.339813, 34.091381>,  <46.073349, 35.289722, 34.189758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457813, 35.339813, 34.091381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270210, -0.245513, 0.930972,
		0.056203, -0.961270, -0.269816,
		0.961160, 0.125231, -0.245946,
		46.746162, 35.377384, 34.017597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.595104, 34.668133, 34.315144>,  <46.073349, 35.289722, 34.189758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.595104, 34.668133, 34.315144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.801441, 35.010715, 34.322971>,  <46.925243, 35.216267, 34.327667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.801441, 35.010715, 34.322971>,  <46.595104, 34.668133, 34.315144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.801441, 35.010715, 34.322971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143922, -0.109162, 0.983550,
		0.844506, -0.504542, -0.179574,
		0.515844, 0.856459, 0.019573,
		46.956196, 35.267654, 34.328842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.278976, 34.487316, 34.588985>,  <46.595104, 34.668133, 34.315144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.278976, 34.487316, 34.588985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.205574, 34.877029, 34.641296>,  <47.161533, 35.110855, 34.672684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.205574, 34.877029, 34.641296>,  <47.278976, 34.487316, 34.588985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.205574, 34.877029, 34.641296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211745, -0.090740, 0.973104,
		0.959943, 0.206262, -0.189647,
		-0.183505, 0.974281, 0.130780,
		47.150524, 35.169315, 34.680531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.846893, 34.974972, 34.669418>,  <47.278976, 34.487316, 34.588985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.846893, 34.974972, 34.669418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.505558, 35.054756, 34.862095>,  <47.300755, 35.102627, 34.977699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.505558, 35.054756, 34.862095>,  <47.846893, 34.974972, 34.669418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.505558, 35.054756, 34.862095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489266, -0.012734, 0.872042,
		0.180070, 0.979823, -0.086722,
		-0.853343, 0.199459, 0.481687,
		47.249554, 35.114594, 35.006599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.993174, 34.340431, 43.947540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.758535, 34.112095, 43.717739>,  <31.617752, 33.975094, 43.579861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.758535, 34.112095, 43.717739>,  <31.993174, 34.340431, 43.947540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758535, 34.112095, 43.717739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680637, 0.036954, -0.731688,
		0.438906, -0.820230, 0.366858,
		-0.586595, -0.570839, -0.574498,
		31.582556, 33.940842, 43.545391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430279, 33.876507, 43.479900>,  <31.993174, 34.340431, 43.947540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430279, 33.876507, 43.479900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.075718, 33.888515, 43.295124>,  <31.862982, 33.895721, 43.184258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.075718, 33.888515, 43.295124>,  <32.430279, 33.876507, 43.479900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075718, 33.888515, 43.295124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454978, 0.240495, -0.857413,
		0.085356, -0.970186, -0.226833,
		-0.886402, 0.030019, -0.461941,
		31.809797, 33.897522, 43.156540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457191, 33.386856, 42.916771>,  <32.430279, 33.876507, 43.479900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457191, 33.386856, 42.916771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.149815, 33.625347, 42.823814>,  <31.965387, 33.768440, 42.768040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.149815, 33.625347, 42.823814>,  <32.457191, 33.386856, 42.916771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149815, 33.625347, 42.823814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371759, 0.120354, -0.920494,
		-0.520851, -0.793746, -0.314138,
		-0.768446, 0.596224, -0.232396,
		31.919281, 33.804214, 42.754097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191734, 33.095100, 42.198814>,  <32.457191, 33.386856, 42.916771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191734, 33.095100, 42.198814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.061924, 33.470844, 42.243141>,  <31.984037, 33.696293, 42.269737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.061924, 33.470844, 42.243141>,  <32.191734, 33.095100, 42.198814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061924, 33.470844, 42.243141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398370, 0.241997, -0.884725,
		-0.857893, -0.242976, -0.452749,
		-0.324530, 0.939362, 0.110813,
		31.964565, 33.752651, 42.276386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743076, 33.305710, 41.568958>,  <32.191734, 33.095100, 42.198814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743076, 33.305710, 41.568958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.865187, 33.650021, 41.731865>,  <31.938452, 33.856609, 41.829609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.865187, 33.650021, 41.731865>,  <31.743076, 33.305710, 41.568958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865187, 33.650021, 41.731865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382611, 0.280766, -0.880215,
		-0.872018, 0.424531, -0.243634,
		0.305274, 0.860781, 0.407264,
		31.956770, 33.908257, 41.854046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651386, 33.640545, 41.051571>,  <31.743076, 33.305710, 41.568958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651386, 33.640545, 41.051571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.885939, 33.883785, 41.265629>,  <32.026669, 34.029728, 41.394062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.885939, 33.883785, 41.265629>,  <31.651386, 33.640545, 41.051571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885939, 33.883785, 41.265629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430716, 0.325444, -0.841766,
		-0.686034, 0.724089, -0.071083,
		0.586380, 0.608097, 0.535142,
		32.061852, 34.066216, 41.426170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586369, 34.310028, 40.838913>,  <31.651386, 33.640545, 41.051571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586369, 34.310028, 40.838913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.945274, 34.326954, 41.014698>,  <32.160618, 34.337109, 41.120167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.945274, 34.326954, 41.014698>,  <31.586369, 34.310028, 40.838913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945274, 34.326954, 41.014698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362433, 0.497802, -0.787932,
		-0.252105, 0.866258, 0.431324,
		0.897266, 0.042316, 0.439458,
		32.214455, 34.339649, 41.146534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897589, 35.034016, 40.845295>,  <31.586369, 34.310028, 40.838913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897589, 35.034016, 40.845295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.190357, 34.761566, 40.852901>,  <32.366016, 34.598095, 40.857468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.190357, 34.761566, 40.852901>,  <31.897589, 35.034016, 40.845295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190357, 34.761566, 40.852901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431432, 0.441640, -0.786652,
		0.527409, 0.583972, 0.617104,
		0.731920, -0.681125, 0.019020,
		32.409935, 34.557228, 40.858608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441196, 35.410904, 40.508324>,  <31.897589, 35.034016, 40.845295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441196, 35.410904, 40.508324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.609596, 35.049530, 40.540707>,  <32.710636, 34.832706, 40.560139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.609596, 35.049530, 40.540707>,  <32.441196, 35.410904, 40.508324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609596, 35.049530, 40.540707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729440, 0.284160, -0.622231,
		0.539142, 0.321016, 0.778636,
		0.421003, -0.903439, 0.080959,
		32.735897, 34.778500, 40.564995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164299, 35.583160, 40.451660>,  <32.441196, 35.410904, 40.508324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164299, 35.583160, 40.451660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.106823, 35.193932, 40.379559>,  <33.072338, 34.960396, 40.336296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.106823, 35.193932, 40.379559>,  <33.164299, 35.583160, 40.451660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106823, 35.193932, 40.379559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702967, 0.027842, -0.710678,
		0.696556, -0.228833, 0.680033,
		-0.143693, -0.973067, -0.180255,
		33.063717, 34.902012, 40.325481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823868, 35.398521, 40.198318>,  <33.164299, 35.583160, 40.451660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823868, 35.398521, 40.198318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.605175, 35.091320, 40.064896>,  <33.473961, 34.907001, 39.984844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.605175, 35.091320, 40.064896>,  <33.823868, 35.398521, 40.198318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605175, 35.091320, 40.064896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493242, 0.026499, -0.869488,
		0.676606, -0.639901, 0.364322,
		-0.546732, -0.768000, -0.333555,
		33.441154, 34.860920, 39.964828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280392, 34.949383, 39.990711>,  <33.823868, 35.398521, 40.198318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280392, 34.949383, 39.990711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.957726, 34.824207, 39.790169>,  <33.764126, 34.749104, 39.669842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.957726, 34.824207, 39.790169>,  <34.280392, 34.949383, 39.990711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957726, 34.824207, 39.790169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531215, -0.012104, -0.847150,
		0.259038, -0.949696, 0.176002,
		-0.806666, -0.312940, -0.501358,
		33.715725, 34.730324, 39.639763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501450, 34.393501, 39.454258>,  <34.280392, 34.949383, 39.990711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501450, 34.393501, 39.454258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.165920, 34.575352, 39.334461>,  <33.964603, 34.684464, 39.262585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.165920, 34.575352, 39.334461>,  <34.501450, 34.393501, 39.454258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165920, 34.575352, 39.334461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350788, 0.030660, -0.935953,
		-0.416327, -0.890154, -0.185196,
		-0.838820, 0.454627, -0.299490,
		33.914272, 34.711739, 39.244614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408901, 34.095764, 38.782173>,  <34.501450, 34.393501, 39.454258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408901, 34.095764, 38.782173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.176292, 34.421173, 38.780552>,  <34.036728, 34.616417, 38.779579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.176292, 34.421173, 38.780552>,  <34.408901, 34.095764, 38.782173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176292, 34.421173, 38.780552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271505, 0.189382, -0.943620,
		-0.766887, -0.549836, -0.331005,
		-0.581523, 0.813520, -0.004049,
		34.001835, 34.665230, 38.779339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032768, 34.035957, 38.127525>,  <34.408901, 34.095764, 38.782173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032768, 34.035957, 38.127525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.029655, 34.419621, 38.240631>,  <34.027786, 34.649818, 38.308495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.029655, 34.419621, 38.240631>,  <34.032768, 34.035957, 38.127525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029655, 34.419621, 38.240631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347622, 0.267731, -0.898599,
		-0.937602, 0.091302, -0.335508,
		-0.007782, 0.959158, 0.282764,
		34.027321, 34.707367, 38.325459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768013, 34.428234, 37.513840>,  <34.032768, 34.035957, 38.127525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768013, 34.428234, 37.513840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.978313, 34.677601, 37.745331>,  <34.104496, 34.827221, 37.884228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.978313, 34.677601, 37.745331>,  <33.768013, 34.428234, 37.513840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978313, 34.677601, 37.745331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443758, 0.379422, -0.811860,
		-0.725714, 0.683656, -0.077165,
		0.525755, 0.623421, 0.578730,
		34.136040, 34.864628, 37.918949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832478, 35.026016, 37.090382>,  <33.768013, 34.428234, 37.513840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832478, 35.026016, 37.090382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.127655, 35.048969, 37.359348>,  <34.304760, 35.062740, 37.520729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.127655, 35.048969, 37.359348>,  <33.832478, 35.026016, 37.090382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127655, 35.048969, 37.359348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604289, 0.387409, -0.696239,
		-0.300454, 0.920120, 0.251209,
		0.737944, 0.057385, 0.672417,
		34.349037, 35.066185, 37.561073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216133, 35.503105, 36.851536>,  <33.832478, 35.026016, 37.090382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216133, 35.503105, 36.851536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.473503, 35.350327, 37.116905>,  <34.627926, 35.258659, 37.276127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.473503, 35.350327, 37.116905>,  <34.216133, 35.503105, 36.851536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473503, 35.350327, 37.116905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761560, 0.231415, -0.605370,
		0.077693, 0.894742, 0.439773,
		0.643421, -0.381947, 0.663421,
		34.666531, 35.235741, 37.315933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671917, 36.052540, 36.964447>,  <34.216133, 35.503105, 36.851536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671917, 36.052540, 36.964447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886063, 35.737366, 37.086132>,  <35.014549, 35.548260, 37.159142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886063, 35.737366, 37.086132>,  <34.671917, 36.052540, 36.964447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886063, 35.737366, 37.086132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658600, 0.163939, -0.734419,
		0.528801, 0.593535, 0.606700,
		0.535365, -0.787934, 0.304211,
		35.046673, 35.500984, 37.177395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326210, 36.356213, 37.209885>,  <34.671917, 36.052540, 36.964447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326210, 36.356213, 37.209885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.393009, 35.970310, 37.128540>,  <35.433086, 35.738770, 37.079735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.393009, 35.970310, 37.128540>,  <35.326210, 36.356213, 37.209885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393009, 35.970310, 37.128540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805489, 0.252442, -0.536153,
		0.568595, -0.074270, 0.819258,
		0.166995, -0.964758, -0.203361,
		35.443108, 35.680882, 37.067532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100937, 36.176704, 37.326569>,  <35.326210, 36.356213, 37.209885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100937, 36.176704, 37.326569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.962955, 35.914032, 37.058308>,  <35.880165, 35.756428, 36.897350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.962955, 35.914032, 37.058308>,  <36.100937, 36.176704, 37.326569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962955, 35.914032, 37.058308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715617, 0.278353, -0.640634,
		0.607370, -0.700922, 0.373912,
		-0.344955, -0.656680, -0.670655,
		35.859470, 35.717030, 36.857113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724659, 35.879848, 36.905296>,  <36.100937, 36.176704, 37.326569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724659, 35.879848, 36.905296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408344, 35.770386, 36.686287>,  <36.218555, 35.704708, 36.554882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408344, 35.770386, 36.686287>,  <36.724659, 35.879848, 36.905296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408344, 35.770386, 36.686287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546430, 0.087467, -0.832925,
		0.275822, -0.957843, 0.080365,
		-0.790782, -0.273653, -0.547519,
		36.171108, 35.688290, 36.522030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367516, 35.732586, 37.134460>,  <36.724659, 35.879848, 36.905296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367516, 35.732586, 37.134460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724979, 35.812592, 37.295139>,  <37.939457, 35.860596, 37.391548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724979, 35.812592, 37.295139>,  <37.367516, 35.732586, 37.134460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724979, 35.812592, 37.295139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281688, -0.446798, 0.849131,
		0.349314, -0.871991, -0.342946,
		0.893662, 0.200010, 0.401702,
		37.993076, 35.872593, 37.415649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340061, 35.242783, 37.587574>,  <37.367516, 35.732586, 37.134460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340061, 35.242783, 37.587574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.668839, 35.431038, 37.715893>,  <37.866104, 35.543991, 37.792885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.668839, 35.431038, 37.715893>,  <37.340061, 35.242783, 37.587574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668839, 35.431038, 37.715893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091572, -0.446708, 0.889981,
		0.562165, -0.760887, -0.324070,
		0.821940, 0.470640, 0.320799,
		37.915421, 35.572231, 37.812134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780277, 34.711662, 37.755249>,  <37.340061, 35.242783, 37.587574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780277, 34.711662, 37.755249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.899807, 35.029171, 37.967144>,  <37.971523, 35.219677, 38.094280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.899807, 35.029171, 37.967144>,  <37.780277, 34.711662, 37.755249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899807, 35.029171, 37.967144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108506, -0.523245, 0.845246,
		0.948120, -0.310060, -0.070229,
		0.298824, 0.793774, 0.529742,
		37.989456, 35.267303, 38.126068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288956, 34.516365, 38.320805>,  <37.780277, 34.711662, 37.755249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288956, 34.516365, 38.320805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.161102, 34.877342, 38.436337>,  <38.084389, 35.093929, 38.505657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.161102, 34.877342, 38.436337>,  <38.288956, 34.516365, 38.320805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161102, 34.877342, 38.436337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051942, -0.321053, 0.945636,
		0.946116, 0.287257, 0.149495,
		-0.319636, 0.902446, 0.288833,
		38.065212, 35.148075, 38.522987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444420, 34.621853, 39.071831>,  <38.288956, 34.516365, 38.320805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444420, 34.621853, 39.071831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.182468, 34.918835, 39.015404>,  <38.025299, 35.097023, 38.981548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.182468, 34.918835, 39.015404>,  <38.444420, 34.621853, 39.071831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182468, 34.918835, 39.015404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268726, -0.054308, 0.961684,
		0.706345, 0.667692, 0.235081,
		-0.654876, 0.742454, -0.141066,
		37.986004, 35.141571, 38.973083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539890, 35.102558, 39.681606>,  <38.444420, 34.621853, 39.071831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539890, 35.102558, 39.681606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173912, 35.131985, 39.522881>,  <37.954327, 35.149639, 39.427643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173912, 35.131985, 39.522881>,  <38.539890, 35.102558, 39.681606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173912, 35.131985, 39.522881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401865, -0.256575, 0.879019,
		-0.037150, 0.963721, 0.264315,
		-0.914945, 0.073563, -0.396817,
		37.899429, 35.154053, 39.403835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317806, 35.421963, 40.189522>,  <38.539890, 35.102558, 39.681606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317806, 35.421963, 40.189522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.004368, 35.281647, 39.984421>,  <37.816303, 35.197456, 39.861359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.004368, 35.281647, 39.984421>,  <38.317806, 35.421963, 40.189522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004368, 35.281647, 39.984421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470641, -0.203585, 0.858516,
		-0.405547, 0.914057, -0.005566,
		-0.783600, -0.350789, -0.512756,
		37.769287, 35.176411, 39.830593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662357, 35.809872, 40.469532>,  <38.317806, 35.421963, 40.189522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662357, 35.809872, 40.469532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.567219, 35.468487, 40.284042>,  <37.510136, 35.263657, 40.172749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.567219, 35.468487, 40.284042>,  <37.662357, 35.809872, 40.469532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567219, 35.468487, 40.284042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428303, -0.336344, 0.838707,
		-0.871771, 0.398098, -0.285540,
		-0.237847, -0.853458, -0.463722,
		37.495865, 35.212448, 40.144924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944710, 35.740879, 40.492268>,  <37.662357, 35.809872, 40.469532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944710, 35.740879, 40.492268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.112316, 35.379711, 40.453964>,  <37.212879, 35.163010, 40.430981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.112316, 35.379711, 40.453964>,  <36.944710, 35.740879, 40.492268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112316, 35.379711, 40.453964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573978, -0.345119, 0.742592,
		-0.703546, -0.256194, -0.662864,
		0.419014, -0.902916, -0.095758,
		37.238022, 35.108837, 40.425236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459644, 35.300846, 40.689941>,  <36.944710, 35.740879, 40.492268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459644, 35.300846, 40.689941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741280, 35.016991, 40.679634>,  <36.910263, 34.846676, 40.673450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741280, 35.016991, 40.679634>,  <36.459644, 35.300846, 40.689941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741280, 35.016991, 40.679634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553024, -0.570736, 0.606980,
		-0.445444, -0.413121, -0.794299,
		0.704091, -0.709642, -0.025765,
		36.952507, 34.804096, 40.671906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079319, 34.753292, 40.534466>,  <36.459644, 35.300846, 40.689941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079319, 34.753292, 40.534466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.424782, 34.669651, 40.717934>,  <36.632061, 34.619465, 40.828014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.424782, 34.669651, 40.717934>,  <36.079319, 34.753292, 40.534466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424782, 34.669651, 40.717934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502104, -0.437403, 0.746037,
		0.044625, -0.874617, -0.482756,
		0.863655, -0.209102, 0.458667,
		36.683880, 34.606922, 40.855534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095726, 34.021877, 40.634102>,  <36.079319, 34.753292, 40.534466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095726, 34.021877, 40.634102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.330189, 34.189869, 40.911240>,  <36.470867, 34.290665, 41.077522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.330189, 34.189869, 40.911240>,  <36.095726, 34.021877, 40.634102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330189, 34.189869, 40.911240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576094, -0.385243, 0.720905,
		0.569678, -0.821709, 0.016134,
		0.586159, 0.419979, 0.692846,
		36.506035, 34.315861, 41.119095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206589, 33.471230, 41.073589>,  <36.095726, 34.021877, 40.634102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206589, 33.471230, 41.073589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.283882, 33.800091, 41.287773>,  <36.330257, 33.997410, 41.416283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.283882, 33.800091, 41.287773>,  <36.206589, 33.471230, 41.073589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283882, 33.800091, 41.287773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435652, -0.417106, 0.797640,
		0.879130, -0.387403, 0.277577,
		0.193229, 0.822157, 0.535463,
		36.341850, 34.046738, 41.448414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334908, 33.255264, 41.699188>,  <36.206589, 33.471230, 41.073589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334908, 33.255264, 41.699188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.236763, 33.641453, 41.734203>,  <36.177876, 33.873165, 41.755215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.236763, 33.641453, 41.734203>,  <36.334908, 33.255264, 41.699188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236763, 33.641453, 41.734203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650660, -0.230945, 0.723398,
		0.718638, 0.120532, 0.684859,
		-0.245358, 0.965472, 0.087540,
		36.163155, 33.931095, 41.760464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326466, 33.428539, 42.415218>,  <36.334908, 33.255264, 41.699188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326466, 33.428539, 42.415218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.116367, 33.745419, 42.290936>,  <35.990307, 33.935547, 42.216366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.116367, 33.745419, 42.290936>,  <36.326466, 33.428539, 42.415218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116367, 33.745419, 42.290936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628805, -0.115317, 0.768965,
		0.573341, 0.599271, 0.558707,
		-0.525247, 0.792197, -0.310709,
		35.958794, 33.983078, 42.197723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353573, 33.957130, 42.980106>,  <36.326466, 33.428539, 42.415218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353573, 33.957130, 42.980106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032993, 33.999962, 42.744747>,  <35.840645, 34.025661, 42.603531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032993, 33.999962, 42.744747>,  <36.353573, 33.957130, 42.980106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032993, 33.999962, 42.744747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590944, 0.009563, 0.806656,
		0.092006, 0.994204, 0.055615,
		-0.801449, 0.107082, -0.588398,
		35.792557, 34.032085, 42.568226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959335, 34.411411, 43.326271>,  <36.353573, 33.957130, 42.980106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959335, 34.411411, 43.326271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.662697, 34.296391, 43.083832>,  <35.484715, 34.227379, 42.938370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.662697, 34.296391, 43.083832>,  <35.959335, 34.411411, 43.326271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662697, 34.296391, 43.083832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642882, 0.046487, 0.764553,
		-0.191670, 0.956637, -0.219334,
		-0.741596, -0.287548, -0.606095,
		35.440216, 34.210125, 42.902004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382778, 34.956463, 43.430592>,  <35.959335, 34.411411, 43.326271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382778, 34.956463, 43.430592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231586, 34.616978, 43.282639>,  <35.140873, 34.413288, 43.193867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231586, 34.616978, 43.282639>,  <35.382778, 34.956463, 43.430592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231586, 34.616978, 43.282639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745769, 0.042375, 0.664855,
		-0.548598, 0.527152, -0.648962,
		-0.377980, -0.848714, -0.369886,
		35.118191, 34.362362, 43.171673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.436291, 35.061779, 43.346012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521156, 34.670887, 43.347080>,  <34.572075, 34.436352, 43.347721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521156, 34.670887, 43.347080>,  <34.436291, 35.061779, 43.346012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521156, 34.670887, 43.347080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793554, -0.170686, 0.584070,
		-0.570315, -0.126038, -0.811699,
		0.212161, -0.977231, 0.002673,
		34.584805, 34.377716, 43.347881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788906, 34.774788, 43.307343>,  <34.436291, 35.061779, 43.346012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788906, 34.774788, 43.307343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.027443, 34.485977, 43.447659>,  <34.170567, 34.312691, 43.531849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.027443, 34.485977, 43.447659>,  <33.788906, 34.774788, 43.307343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027443, 34.485977, 43.447659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722801, -0.292891, 0.625918,
		-0.349186, -0.626813, -0.696545,
		0.596345, -0.722025, 0.350788,
		34.206348, 34.269371, 43.552895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355747, 34.208012, 43.210117>,  <33.788906, 34.774788, 43.307343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355747, 34.208012, 43.210117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631973, 34.123241, 43.486729>,  <33.797710, 34.072380, 43.652695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631973, 34.123241, 43.486729>,  <33.355747, 34.208012, 43.210117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631973, 34.123241, 43.486729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723171, -0.186545, 0.665000,
		-0.011928, -0.959318, -0.282077,
		0.690566, -0.211922, 0.691525,
		33.839142, 34.059666, 43.694187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115692, 33.556465, 43.567116>,  <33.355747, 34.208012, 43.210117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115692, 33.556465, 43.567116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.380440, 33.744972, 43.800297>,  <33.539288, 33.858078, 43.940205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.380440, 33.744972, 43.800297>,  <33.115692, 33.556465, 43.567116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380440, 33.744972, 43.800297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609159, -0.115073, 0.784655,
		0.436868, -0.874449, 0.210916,
		0.661870, 0.471272, 0.582950,
		33.579002, 33.886353, 43.975182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164833, 33.229294, 44.179386>,  <33.115692, 33.556465, 43.567116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164833, 33.229294, 44.179386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.374989, 33.539169, 44.320141>,  <33.501083, 33.725094, 44.404594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.374989, 33.539169, 44.320141>,  <33.164833, 33.229294, 44.179386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374989, 33.539169, 44.320141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295993, -0.221327, 0.929195,
		0.797716, -0.592348, 0.113018,
		0.525393, 0.774686, 0.351887,
		33.532608, 33.771576, 44.425709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523392, 32.999847, 44.639267>,  <33.164833, 33.229294, 44.179386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523392, 32.999847, 44.639267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.483799, 33.390522, 44.715466>,  <33.460045, 33.624928, 44.761185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.483799, 33.390522, 44.715466>,  <33.523392, 32.999847, 44.639267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483799, 33.390522, 44.715466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315654, -0.212365, 0.924805,
		0.943698, 0.031405, 0.329314,
		-0.098978, 0.976685, 0.190495,
		33.454105, 33.683529, 44.772614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886482, 33.153301, 45.312485>,  <33.523392, 32.999847, 44.639267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886482, 33.153301, 45.312485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.626171, 33.453125, 45.264069>,  <33.469986, 33.633018, 45.235020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.626171, 33.453125, 45.264069>,  <33.886482, 33.153301, 45.312485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626171, 33.453125, 45.264069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264768, -0.074626, 0.961420,
		0.711610, 0.657715, 0.247024,
		-0.650775, 0.749561, -0.121038,
		33.430939, 33.677994, 45.227757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075901, 33.669220, 45.837250>,  <33.886482, 33.153301, 45.312485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075901, 33.669220, 45.837250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.703087, 33.763493, 45.727150>,  <33.479397, 33.820057, 45.661091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.703087, 33.763493, 45.727150>,  <34.075901, 33.669220, 45.837250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703087, 33.763493, 45.727150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279774, 0.014716, 0.959953,
		0.230295, 0.971718, 0.052222,
		-0.932036, 0.235683, -0.275250,
		33.423477, 33.834198, 45.644573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848465, 34.296898, 46.258324>,  <34.075901, 33.669220, 45.837250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848465, 34.296898, 46.258324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.529675, 34.091553, 46.131020>,  <33.338402, 33.968346, 46.054638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.529675, 34.091553, 46.131020>,  <33.848465, 34.296898, 46.258324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529675, 34.091553, 46.131020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424227, 0.100673, 0.899942,
		-0.429959, 0.852244, -0.298018,
		-0.796973, -0.513366, -0.318260,
		33.290581, 33.937542, 46.035542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297146, 34.784214, 46.363491>,  <33.848465, 34.296898, 46.258324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297146, 34.784214, 46.363491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.168003, 34.407650, 46.324493>,  <33.090515, 34.181713, 46.301094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.168003, 34.407650, 46.324493>,  <33.297146, 34.784214, 46.363491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168003, 34.407650, 46.324493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417171, 0.049087, 0.907501,
		-0.849546, 0.333670, -0.408577,
		-0.322861, -0.941411, -0.097496,
		33.071144, 34.125225, 46.295246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553074, 34.802010, 46.724274>,  <33.297146, 34.784214, 46.363491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553074, 34.802010, 46.724274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668091, 34.419918, 46.752144>,  <32.737103, 34.190662, 46.768867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668091, 34.419918, 46.752144>,  <32.553074, 34.802010, 46.724274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668091, 34.419918, 46.752144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605020, -0.124760, 0.786376,
		-0.742476, -0.268273, -0.613806,
		0.287542, -0.955230, 0.069679,
		32.754353, 34.133350, 46.773048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949284, 34.386696, 46.814724>,  <32.553074, 34.802010, 46.724274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949284, 34.386696, 46.814724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.235573, 34.125942, 46.914951>,  <32.407349, 33.969490, 46.975086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.235573, 34.125942, 46.914951>,  <31.949284, 34.386696, 46.814724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235573, 34.125942, 46.914951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521533, -0.260281, 0.812562,
		-0.464480, -0.712250, -0.526269,
		0.715724, -0.651885, 0.250567,
		32.450291, 33.930378, 46.990120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594555, 33.700340, 47.049141>,  <31.949284, 34.386696, 46.814724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594555, 33.700340, 47.049141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.957781, 33.687988, 47.216217>,  <32.175716, 33.680576, 47.316463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.957781, 33.687988, 47.216217>,  <31.594555, 33.700340, 47.049141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957781, 33.687988, 47.216217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411962, -0.245739, 0.877439,
		0.075551, -0.968844, -0.235867,
		0.908064, -0.030877, 0.417692,
		32.230202, 33.678726, 47.341526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585840, 33.097202, 47.451504>,  <31.594555, 33.700340, 47.049141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585840, 33.097202, 47.451504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.892492, 33.312176, 47.592041>,  <32.076485, 33.441158, 47.676365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.892492, 33.312176, 47.592041>,  <31.585840, 33.097202, 47.451504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892492, 33.312176, 47.592041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269107, -0.227880, 0.935763,
		0.582974, -0.811934, -0.030073,
		0.766631, 0.537432, 0.351345,
		32.122482, 33.473404, 47.697445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923872, 32.580704, 47.910793>,  <31.585840, 33.097202, 47.451504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923872, 32.580704, 47.910793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.020947, 32.948338, 48.034985>,  <32.079189, 33.168919, 48.109497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.020947, 32.948338, 48.034985>,  <31.923872, 32.580704, 47.910793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020947, 32.948338, 48.034985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286407, -0.237898, 0.928103,
		0.926863, -0.314160, 0.205497,
		0.242685, 0.919080, 0.310476,
		32.093754, 33.224060, 48.128128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430531, 32.575993, 48.548889>,  <31.923872, 32.580704, 47.910793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430531, 32.575993, 48.548889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.270832, 32.941868, 48.574036>,  <32.175014, 33.161392, 48.589123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.270832, 32.941868, 48.574036>,  <32.430531, 32.575993, 48.548889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270832, 32.941868, 48.574036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177090, -0.144213, 0.973572,
		0.899580, 0.377559, 0.219558,
		-0.399244, 0.914687, 0.062869,
		32.151058, 33.216274, 48.592896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828209, 32.768257, 49.043625>,  <32.430531, 32.575993, 48.548889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828209, 32.768257, 49.043625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.492790, 32.982395, 49.003117>,  <32.291538, 33.110878, 48.978809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.492790, 32.982395, 49.003117>,  <32.828209, 32.768257, 49.043625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492790, 32.982395, 49.003117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121220, -0.002091, 0.992624,
		0.531180, 0.844633, 0.066647,
		-0.838542, 0.535341, -0.101275,
		32.241226, 33.142998, 48.972733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851784, 33.259392, 49.555180>,  <32.828209, 32.768257, 49.043625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851784, 33.259392, 49.555180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.467140, 33.216526, 49.454128>,  <32.236355, 33.190807, 49.393497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.467140, 33.216526, 49.454128>,  <32.851784, 33.259392, 49.555180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467140, 33.216526, 49.454128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258742, 0.047349, 0.964786,
		-0.091427, 0.993114, -0.073258,
		-0.961610, -0.107162, -0.252631,
		32.178658, 33.184376, 49.378338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424305, 33.612431, 50.059330>,  <32.851784, 33.259392, 49.555180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424305, 33.612431, 50.059330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.138062, 33.396706, 49.881771>,  <31.966316, 33.267269, 49.775234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.138062, 33.396706, 49.881771>,  <32.424305, 33.612431, 50.059330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138062, 33.396706, 49.881771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442982, -0.140956, 0.885381,
		-0.540066, 0.830225, -0.138036,
		-0.715609, -0.539312, -0.443900,
		31.923380, 33.234913, 49.748600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796686, 33.921028, 50.287029>,  <32.424305, 33.612431, 50.059330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796686, 33.921028, 50.287029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.695787, 33.551075, 50.173206>,  <31.635248, 33.329105, 50.104912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.695787, 33.551075, 50.173206>,  <31.796686, 33.921028, 50.287029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695787, 33.551075, 50.173206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625760, -0.068394, 0.777011,
		-0.738103, 0.374060, -0.561500,
		-0.252246, -0.924879, -0.284554,
		31.620113, 33.273613, 50.087841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166679, 33.927563, 50.501160>,  <31.796686, 33.921028, 50.287029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166679, 33.927563, 50.501160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.261358, 33.542542, 50.448299>,  <31.318165, 33.311527, 50.416584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.261358, 33.542542, 50.448299>,  <31.166679, 33.927563, 50.501160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261358, 33.542542, 50.448299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436527, -0.226868, 0.870618,
		-0.867997, -0.148385, -0.473880,
		0.236695, -0.962555, -0.132147,
		31.332367, 33.253777, 50.408657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573952, 33.443134, 50.403423>,  <31.166679, 33.927563, 50.501160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573952, 33.443134, 50.403423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.910091, 33.334240, 50.590912>,  <31.111776, 33.268906, 50.703407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.910091, 33.334240, 50.590912>,  <30.573952, 33.443134, 50.403423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910091, 33.334240, 50.590912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517008, -0.142790, 0.843987,
		-0.162852, -0.951571, -0.260751,
		0.840346, -0.272256, 0.468717,
		31.162197, 33.252571, 50.731529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020439, 33.362652, 50.839397>,  <30.573952, 33.443134, 50.403423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020439, 33.362652, 50.839397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.277996, 33.112583, 51.015835>,  <30.432529, 32.962543, 51.121696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.277996, 33.112583, 51.015835>,  <30.020439, 33.362652, 50.839397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277996, 33.112583, 51.015835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692932, -0.232035, 0.682646,
		-0.324423, -0.745197, -0.582608,
		0.643891, -0.625173, 0.441093,
		30.471165, 32.925034, 51.148163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633001, 32.741405, 50.816662>,  <30.020439, 33.362652, 50.839397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633001, 32.741405, 50.816662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.909676, 32.802753, 51.098953>,  <30.075680, 32.839561, 51.268330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.909676, 32.802753, 51.098953>,  <29.633001, 32.741405, 50.816662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909676, 32.802753, 51.098953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667362, -0.237774, 0.705756,
		0.276045, -0.959136, -0.062111,
		0.691684, 0.153370, 0.705727,
		30.117180, 32.848763, 51.310673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908772, 32.611732, 50.893406>,  <29.633001, 32.741405, 50.816662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908772, 32.611732, 50.893406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.556253, 32.620907, 50.704601>,  <28.344744, 32.626411, 50.591320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.556253, 32.620907, 50.704601>,  <28.908772, 32.611732, 50.893406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556253, 32.620907, 50.704601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472409, 0.016824, -0.881219,
		-0.012267, -0.999596, -0.025661,
		-0.881294, 0.022933, -0.472011,
		28.291864, 32.627785, 50.563000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804577, 31.955999, 50.470833>,  <28.908772, 32.611732, 50.893406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804577, 31.955999, 50.470833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.555185, 32.232853, 50.325382>,  <28.405550, 32.398964, 50.238110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.555185, 32.232853, 50.325382>,  <28.804577, 31.955999, 50.470833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555185, 32.232853, 50.325382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416152, -0.099955, -0.903785,
		-0.661886, -0.714815, -0.225713,
		-0.623477, 0.692134, -0.363631,
		28.368141, 32.440495, 50.216293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564991, 31.607817, 49.865162>,  <28.804577, 31.955999, 50.470833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564991, 31.607817, 49.865162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.524237, 31.998955, 49.792019>,  <28.499784, 32.233639, 49.748135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.524237, 31.998955, 49.792019>,  <28.564991, 31.607817, 49.865162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524237, 31.998955, 49.792019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226922, -0.156122, -0.961318,
		-0.968569, -0.139438, -0.205988,
		-0.101885, 0.977846, -0.182857,
		28.493671, 32.292309, 49.737164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095436, 31.614851, 49.216343>,  <28.564991, 31.607817, 49.865162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095436, 31.614851, 49.216343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.271770, 31.972509, 49.247753>,  <28.377571, 32.187103, 49.266602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.271770, 31.972509, 49.247753>,  <28.095436, 31.614851, 49.216343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271770, 31.972509, 49.247753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203250, -0.014225, -0.979023,
		-0.874274, 0.447548, -0.188006,
		0.440835, 0.894147, 0.078527,
		28.404020, 32.240753, 49.271313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892561, 31.928089, 48.610229>,  <28.095436, 31.614851, 49.216343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892561, 31.928089, 48.610229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.208376, 32.143597, 48.727772>,  <28.397865, 32.272903, 48.798298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.208376, 32.143597, 48.727772>,  <27.892561, 31.928089, 48.610229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208376, 32.143597, 48.727772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348692, 0.000204, -0.937238,
		-0.505017, 0.842452, -0.187704,
		0.789539, 0.538771, 0.293859,
		28.445238, 32.305229, 48.815929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079361, 32.199966, 47.962719>,  <27.892561, 31.928089, 48.610229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079361, 32.199966, 47.962719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.418442, 32.255356, 48.167553>,  <28.621889, 32.288589, 48.290451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.418442, 32.255356, 48.167553>,  <28.079361, 32.199966, 47.962719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418442, 32.255356, 48.167553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519564, -0.021956, -0.854149,
		-0.107038, 0.990122, -0.090560,
		0.847701, 0.138478, 0.512082,
		28.672752, 32.296898, 48.321178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556776, 32.758198, 47.729801>,  <28.079361, 32.199966, 47.962719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556776, 32.758198, 47.729801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.805563, 32.502743, 47.911041>,  <28.954836, 32.349468, 48.019783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.805563, 32.502743, 47.911041>,  <28.556776, 32.758198, 47.729801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805563, 32.502743, 47.911041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620987, 0.049800, -0.782237,
		0.477002, 0.767894, 0.427560,
		0.621968, -0.638638, 0.453097,
		28.992153, 32.311150, 48.046970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106014, 33.153164, 47.501385>,  <28.556776, 32.758198, 47.729801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106014, 33.153164, 47.501385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.243528, 32.806122, 47.645088>,  <29.326036, 32.597897, 47.731312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.243528, 32.806122, 47.645088>,  <29.106014, 33.153164, 47.501385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243528, 32.806122, 47.645088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814223, 0.084813, -0.574323,
		0.467818, 0.489962, 0.735584,
		0.343783, -0.867608, 0.359261,
		29.346663, 32.545837, 47.752865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760227, 33.315998, 47.750660>,  <29.106014, 33.153164, 47.501385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760227, 33.315998, 47.750660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.742895, 32.923607, 47.674973>,  <29.732496, 32.688171, 47.629562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.742895, 32.923607, 47.674973>,  <29.760227, 33.315998, 47.750660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742895, 32.923607, 47.674973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791389, 0.081893, -0.605802,
		0.609774, -0.175995, 0.772788,
		-0.043332, -0.980979, -0.189216,
		29.729895, 32.629314, 47.618206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395651, 33.068916, 47.717461>,  <29.760227, 33.315998, 47.750660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395651, 33.068916, 47.717461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.217268, 32.776768, 47.510509>,  <30.110239, 32.601479, 47.386337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.217268, 32.776768, 47.510509>,  <30.395651, 33.068916, 47.717461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217268, 32.776768, 47.510509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704384, 0.070264, -0.706333,
		0.552237, -0.679429, 0.483126,
		-0.445957, -0.730369, -0.517381,
		30.083481, 32.557655, 47.355293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849178, 32.837391, 47.440964>,  <30.395651, 33.068916, 47.717461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849178, 32.837391, 47.440964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574192, 32.659157, 47.211582>,  <30.409201, 32.552216, 47.073952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574192, 32.659157, 47.211582>,  <30.849178, 32.837391, 47.440964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574192, 32.659157, 47.211582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559822, 0.177840, -0.809303,
		0.462594, -0.877399, 0.127189,
		-0.687463, -0.445582, -0.573455,
		30.367952, 32.525482, 47.039547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273455, 32.361351, 47.030403>,  <30.849178, 32.837391, 47.440964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273455, 32.361351, 47.030403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.921759, 32.437119, 46.855560>,  <30.710741, 32.482578, 46.750656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.921759, 32.437119, 46.855560>,  <31.273455, 32.361351, 47.030403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921759, 32.437119, 46.855560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472416, 0.228553, -0.851226,
		-0.061340, -0.954926, -0.290438,
		-0.879238, 0.189422, -0.437103,
		30.657988, 32.493946, 46.724430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295872, 32.078587, 46.322685>,  <31.273455, 32.361351, 47.030403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295872, 32.078587, 46.322685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.996130, 32.342556, 46.300896>,  <30.816284, 32.500938, 46.287823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.996130, 32.342556, 46.300896>,  <31.295872, 32.078587, 46.322685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996130, 32.342556, 46.300896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306517, 0.272776, -0.911943,
		-0.586955, -0.700065, -0.406684,
		-0.749354, 0.659925, -0.054474,
		30.771324, 32.540535, 46.284554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947039, 31.925543, 45.710285>,  <31.295872, 32.078587, 46.322685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947039, 31.925543, 45.710285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.854219, 32.302887, 45.805130>,  <30.798529, 32.529293, 45.862038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.854219, 32.302887, 45.805130>,  <30.947039, 31.925543, 45.710285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854219, 32.302887, 45.805130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110239, 0.267702, -0.957174,
		-0.966437, -0.195971, -0.166114,
		-0.232047, 0.943362, 0.237114,
		30.784605, 32.585896, 45.876263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635626, 32.137390, 45.164417>,  <30.947039, 31.925543, 45.710285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635626, 32.137390, 45.164417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.711599, 32.488232, 45.340878>,  <30.757183, 32.698738, 45.446754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.711599, 32.488232, 45.340878>,  <30.635626, 32.137390, 45.164417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711599, 32.488232, 45.340878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050584, 0.439991, -0.896576,
		-0.980493, 0.192605, 0.039201,
		0.189934, 0.877104, 0.441151,
		30.768579, 32.751362, 45.473225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133518, 32.560127, 44.917622>,  <30.635626, 32.137390, 45.164417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133518, 32.560127, 44.917622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455362, 32.775002, 45.018845>,  <30.648468, 32.903927, 45.079578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455362, 32.775002, 45.018845>,  <30.133518, 32.560127, 44.917622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455362, 32.775002, 45.018845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055994, 0.355627, -0.932949,
		-0.591160, 0.764828, 0.256061,
		0.804608, 0.537185, 0.253058,
		30.696745, 32.936157, 45.094761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058254, 33.150928, 44.518497>,  <30.133518, 32.560127, 44.917622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058254, 33.150928, 44.518497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438501, 33.175068, 44.640270>,  <30.666651, 33.189552, 44.713333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438501, 33.175068, 44.640270>,  <30.058254, 33.150928, 44.518497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438501, 33.175068, 44.640270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237078, 0.491828, -0.837794,
		-0.200288, 0.868599, 0.453234,
		0.950620, 0.060348, 0.304433,
		30.723688, 33.193172, 44.731602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178886, 33.835835, 44.397446>,  <30.058254, 33.150928, 44.518497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178886, 33.835835, 44.397446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.522604, 33.631248, 44.395931>,  <30.728834, 33.508495, 44.395023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.522604, 33.631248, 44.395931>,  <30.178886, 33.835835, 44.397446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522604, 33.631248, 44.395931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291285, 0.495432, -0.818353,
		0.420438, 0.702102, 0.574704,
		0.859294, -0.511469, -0.003786,
		30.780392, 33.477806, 44.394794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686676, 34.335316, 44.406078>,  <30.178886, 33.835835, 44.397446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686676, 34.335316, 44.406078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.871399, 33.998112, 44.295761>,  <30.982233, 33.795788, 44.229572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.871399, 33.998112, 44.295761>,  <30.686676, 34.335316, 44.406078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871399, 33.998112, 44.295761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356021, 0.460963, -0.812872,
		0.812392, 0.277203, 0.513008,
		0.461809, -0.843013, -0.275793,
		31.009941, 33.745209, 44.213024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296997, 34.575397, 44.112270>,  <30.686676, 34.335316, 44.406078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296997, 34.575397, 44.112270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.244139, 34.199699, 43.985554>,  <31.212423, 33.974281, 43.909523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.244139, 34.199699, 43.985554>,  <31.296997, 34.575397, 44.112270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244139, 34.199699, 43.985554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455729, 0.226245, -0.860885,
		0.880254, -0.258136, 0.398143,
		-0.132147, -0.939244, -0.316793,
		31.204494, 33.917927, 43.890514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.463783, 35.517456, 27.472805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.267159, 35.785339, 27.695465>,  <39.149185, 35.946068, 27.829062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.267159, 35.785339, 27.695465>,  <39.463783, 35.517456, 27.472805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267159, 35.785339, 27.695465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541011, -0.266042, 0.797828,
		0.682405, 0.693333, -0.231544,
		-0.491560, 0.669709, 0.556649,
		39.119690, 35.986252, 27.862459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927376, 35.859428, 27.868580>,  <39.463783, 35.517456, 27.472805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927376, 35.859428, 27.868580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.587780, 35.893063, 28.077250>,  <39.384022, 35.913242, 28.202452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.587780, 35.893063, 28.077250>,  <39.927376, 35.859428, 27.868580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587780, 35.893063, 28.077250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505640, -0.157382, 0.848269,
		0.153430, 0.983951, 0.091098,
		-0.848992, 0.084087, 0.521672,
		39.333084, 35.918289, 28.233751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129673, 36.171074, 28.422762>,  <39.927376, 35.859428, 27.868580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129673, 36.171074, 28.422762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.769341, 36.062561, 28.558359>,  <39.553143, 35.997456, 28.639717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.769341, 36.062561, 28.558359>,  <40.129673, 36.171074, 28.422762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769341, 36.062561, 28.558359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355806, -0.013796, 0.934458,
		-0.248822, 0.962402, 0.108951,
		-0.900827, -0.271279, 0.338995,
		39.499092, 35.981178, 28.660057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111832, 36.544518, 29.040112>,  <40.129673, 36.171074, 28.422762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111832, 36.544518, 29.040112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.860699, 36.234901, 29.072824>,  <39.710018, 36.049133, 29.092453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.860699, 36.234901, 29.072824>,  <40.111832, 36.544518, 29.040112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860699, 36.234901, 29.072824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387221, -0.219465, 0.895486,
		-0.675194, 0.593883, 0.437512,
		-0.627832, -0.774040, 0.081782,
		39.672348, 36.002689, 29.097359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839565, 36.519432, 29.719479>,  <40.111832, 36.544518, 29.040112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839565, 36.519432, 29.719479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.773163, 36.146603, 29.590675>,  <39.733322, 35.922905, 29.513393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.773163, 36.146603, 29.590675>,  <39.839565, 36.519432, 29.719479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773163, 36.146603, 29.590675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326586, -0.360074, 0.873892,
		-0.930476, 0.039904, 0.364174,
		-0.166002, -0.932070, -0.322008,
		39.723362, 35.866982, 29.494072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478313, 36.167179, 30.236837>,  <39.839565, 36.519432, 29.719479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478313, 36.167179, 30.236837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.643318, 35.884277, 30.007187>,  <39.742321, 35.714535, 29.869396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.643318, 35.884277, 30.007187>,  <39.478313, 36.167179, 30.236837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643318, 35.884277, 30.007187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437063, -0.399306, 0.805935,
		-0.799255, -0.583387, 0.144397,
		0.412513, -0.707258, -0.574124,
		39.767071, 35.672100, 29.834949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261909, 35.461349, 30.509512>,  <39.478313, 36.167179, 30.236837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261909, 35.461349, 30.509512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.605064, 35.432884, 30.305958>,  <39.810959, 35.415806, 30.183825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.605064, 35.432884, 30.305958>,  <39.261909, 35.461349, 30.509512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605064, 35.432884, 30.305958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447026, -0.384978, 0.807440,
		-0.253366, -0.920178, -0.298459,
		0.857889, -0.071159, -0.508884,
		39.862431, 35.411537, 30.153292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518711, 34.877319, 30.849102>,  <39.261909, 35.461349, 30.509512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518711, 34.877319, 30.849102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.836655, 35.028465, 30.659189>,  <40.027420, 35.119152, 30.545242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.836655, 35.028465, 30.659189>,  <39.518711, 34.877319, 30.849102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836655, 35.028465, 30.659189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603473, -0.410499, 0.683601,
		0.063413, -0.829884, -0.554321,
		0.794857, 0.377867, -0.474782,
		40.075111, 35.141827, 30.516754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108566, 34.342377, 30.917601>,  <39.518711, 34.877319, 30.849102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108566, 34.342377, 30.917601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.310696, 34.675667, 30.827810>,  <40.431973, 34.875641, 30.773937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.310696, 34.675667, 30.827810>,  <40.108566, 34.342377, 30.917601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310696, 34.675667, 30.827810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661415, -0.206909, 0.720915,
		0.554237, -0.512765, -0.655662,
		0.505323, 0.833223, -0.224474,
		40.462292, 34.925632, 30.760468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821712, 34.217827, 30.942108>,  <40.108566, 34.342377, 30.917601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821712, 34.217827, 30.942108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.829594, 34.616817, 30.969381>,  <40.834324, 34.856213, 30.985744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.829594, 34.616817, 30.969381>,  <40.821712, 34.217827, 30.942108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829594, 34.616817, 30.969381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670667, -0.063761, 0.739013,
		0.741497, 0.031167, -0.670232,
		0.019701, 0.997478, 0.068181,
		40.835503, 34.916061, 30.989836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572651, 34.565876, 30.792427>,  <40.821712, 34.217827, 30.942108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572651, 34.565876, 30.792427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.351067, 34.811691, 31.017094>,  <41.218117, 34.959179, 31.151894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.351067, 34.811691, 31.017094>,  <41.572651, 34.565876, 30.792427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351067, 34.811691, 31.017094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720653, 0.016142, 0.693108,
		0.416872, 0.788724, -0.451809,
		-0.553964, 0.614535, 0.561667,
		41.184875, 34.996052, 31.185595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073753, 35.077312, 31.006317>,  <41.572651, 34.565876, 30.792427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073753, 35.077312, 31.006317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.760555, 35.076729, 31.255127>,  <41.572636, 35.076378, 31.404413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.760555, 35.076729, 31.255127>,  <42.073753, 35.077312, 31.006317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760555, 35.076729, 31.255127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620077, -0.080969, 0.780351,
		0.049227, 0.996716, 0.064303,
		-0.782995, -0.001458, 0.622026,
		41.525658, 35.076290, 31.441734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313572, 35.520775, 31.513508>,  <42.073753, 35.077312, 31.006317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313572, 35.520775, 31.513508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.997219, 35.339722, 31.678253>,  <41.807407, 35.231091, 31.777100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.997219, 35.339722, 31.678253>,  <42.313572, 35.520775, 31.513508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997219, 35.339722, 31.678253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471107, -0.020753, 0.881832,
		-0.390603, 0.891453, 0.229653,
		-0.790878, -0.452637, 0.411863,
		41.759956, 35.203930, 31.801813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156704, 35.812813, 32.260483>,  <42.313572, 35.520775, 31.513508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156704, 35.812813, 32.260483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.980484, 35.453724, 32.259762>,  <41.874752, 35.238270, 32.259327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.980484, 35.453724, 32.259762>,  <42.156704, 35.812813, 32.260483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980484, 35.453724, 32.259762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367377, -0.182120, 0.912067,
		-0.819115, 0.401150, 0.410037,
		-0.440551, -0.897726, -0.001804,
		41.848320, 35.184406, 32.259220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695797, 35.717541, 32.831001>,  <42.156704, 35.812813, 32.260483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695797, 35.717541, 32.831001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.772068, 35.343231, 32.712368>,  <41.817833, 35.118645, 32.641186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.772068, 35.343231, 32.712368>,  <41.695797, 35.717541, 32.831001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772068, 35.343231, 32.712368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380776, -0.207967, 0.900977,
		-0.904793, -0.284733, 0.316665,
		0.190682, -0.935776, -0.296586,
		41.829273, 35.062500, 32.623394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555382, 35.410244, 33.421154>,  <41.695797, 35.717541, 32.831001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555382, 35.410244, 33.421154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719383, 35.110786, 33.212761>,  <41.817783, 34.931110, 33.087727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719383, 35.110786, 33.212761>,  <41.555382, 35.410244, 33.421154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719383, 35.110786, 33.212761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489520, -0.301341, 0.818269,
		-0.769588, -0.590525, 0.242927,
		0.410005, -0.748648, -0.520982,
		41.842384, 34.886192, 33.056465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346024, 34.823563, 33.778934>,  <41.555382, 35.410244, 33.421154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346024, 34.823563, 33.778934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.688328, 34.743843, 33.587955>,  <41.893711, 34.696011, 33.473370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.688328, 34.743843, 33.587955>,  <41.346024, 34.823563, 33.778934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688328, 34.743843, 33.587955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393698, -0.347892, 0.850866,
		-0.335684, -0.916105, -0.219244,
		0.855756, -0.199306, -0.477451,
		41.945057, 34.684055, 33.444721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549454, 34.138638, 34.016602>,  <41.346024, 34.823563, 33.778934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549454, 34.138638, 34.016602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.878044, 34.315083, 33.872047>,  <42.075199, 34.420948, 33.785316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.878044, 34.315083, 33.872047>,  <41.549454, 34.138638, 34.016602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878044, 34.315083, 33.872047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465420, -0.152466, 0.871859,
		0.329490, -0.884405, -0.330550,
		0.821474, 0.441114, -0.361384,
		42.124485, 34.447418, 33.763634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248768, 33.720699, 34.223263>,  <41.549454, 34.138638, 34.016602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248768, 33.720699, 34.223263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.369781, 34.092213, 34.137634>,  <42.442390, 34.315121, 34.086258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.369781, 34.092213, 34.137634>,  <42.248768, 33.720699, 34.223263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369781, 34.092213, 34.137634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520989, 0.026931, 0.853138,
		0.798149, -0.369634, -0.475740,
		0.302537, 0.928787, -0.214071,
		42.460541, 34.370850, 34.073414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982513, 33.619766, 34.378788>,  <42.248768, 33.720699, 34.223263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982513, 33.619766, 34.378788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.924652, 34.014423, 34.408775>,  <42.889935, 34.251217, 34.426769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.924652, 34.014423, 34.408775>,  <42.982513, 33.619766, 34.378788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924652, 34.014423, 34.408775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723234, 0.053717, 0.688510,
		0.675284, 0.153811, -0.721341,
		-0.144649, 0.986639, 0.074967,
		42.881256, 34.310413, 34.431267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584972, 33.959824, 34.590469>,  <42.982513, 33.619766, 34.378788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584972, 33.959824, 34.590469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.358566, 34.278122, 34.676647>,  <43.222721, 34.469101, 34.728355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.358566, 34.278122, 34.676647>,  <43.584972, 33.959824, 34.590469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358566, 34.278122, 34.676647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549179, 0.169047, 0.818429,
		0.614839, 0.581563, -0.532689,
		-0.566017, 0.795744, 0.215445,
		43.188763, 34.516846, 34.741280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085602, 34.441200, 34.709663>,  <43.584972, 33.959824, 34.590469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085602, 34.441200, 34.709663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.744946, 34.611782, 34.831551>,  <43.540554, 34.714130, 34.904682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.744946, 34.611782, 34.831551>,  <44.085602, 34.441200, 34.709663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744946, 34.611782, 34.831551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493969, 0.458652, 0.738670,
		0.175246, 0.779601, -0.601259,
		-0.851636, 0.426452, 0.304721,
		43.489456, 34.739719, 34.922966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129551, 35.185791, 34.576668>,  <44.085602, 34.441200, 34.709663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129551, 35.185791, 34.576668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.458340, 35.306644, 34.383556>,  <44.655613, 35.379158, 34.267689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.458340, 35.306644, 34.383556>,  <44.129551, 35.185791, 34.576668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458340, 35.306644, 34.383556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538649, 0.687740, -0.486694,
		0.184975, 0.660096, 0.728051,
		0.821974, 0.302138, -0.482775,
		44.704933, 35.397285, 34.238724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115288, 35.936985, 34.570541>,  <44.129551, 35.185791, 34.576668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115288, 35.936985, 34.570541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.370449, 35.851929, 34.274471>,  <44.523544, 35.800896, 34.096828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.370449, 35.851929, 34.274471>,  <44.115288, 35.936985, 34.570541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370449, 35.851929, 34.274471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508474, 0.605552, -0.612177,
		0.578390, 0.766871, 0.278161,
		0.637902, -0.212639, -0.740179,
		44.561821, 35.788136, 34.052418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.236561, 36.548256, 34.274448>,  <44.115288, 35.936985, 34.570541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.236561, 36.548256, 34.274448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.378029, 36.314556, 33.982265>,  <44.462910, 36.174335, 33.806953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.378029, 36.314556, 33.982265>,  <44.236561, 36.548256, 34.274448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.378029, 36.314556, 33.982265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206507, 0.712890, -0.670181,
		0.912291, 0.387866, 0.131473,
		0.353666, -0.584250, -0.730460,
		44.484127, 36.139282, 33.763126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.694733, 37.034332, 33.798309>,  <44.236561, 36.548256, 34.274448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.694733, 37.034332, 33.798309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.606808, 36.711136, 33.579647>,  <44.554050, 36.517220, 33.448452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.606808, 36.711136, 33.579647>,  <44.694733, 37.034332, 33.798309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606808, 36.711136, 33.579647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363504, 0.587845, -0.722706,
		0.905288, 0.039848, -0.422926,
		-0.219817, -0.807992, -0.546653,
		44.540863, 36.468739, 33.415649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061314, 37.056141, 33.157192>,  <44.694733, 37.034332, 33.798309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061314, 37.056141, 33.157192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.726311, 36.852268, 33.078388>,  <44.525311, 36.729946, 33.031105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.726311, 36.852268, 33.078388>,  <45.061314, 37.056141, 33.157192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.726311, 36.852268, 33.078388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248775, 0.676658, -0.692998,
		0.486516, -0.531377, -0.693499,
		-0.837504, -0.509679, -0.197012,
		44.475060, 36.699364, 33.019283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061653, 37.046452, 32.461460>,  <45.061314, 37.056141, 33.157192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061653, 37.046452, 32.461460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.688450, 36.924370, 32.537724>,  <44.464527, 36.851120, 32.583481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.688450, 36.924370, 32.537724>,  <45.061653, 37.046452, 32.461460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688450, 36.924370, 32.537724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314517, 0.434112, -0.844172,
		0.174877, -0.847582, -0.501021,
		-0.933004, -0.305206, 0.190663,
		44.408550, 36.832809, 32.594921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.825245, 36.621441, 31.805769>,  <45.061653, 37.046452, 32.461460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.825245, 36.621441, 31.805769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.494175, 36.746906, 31.991915>,  <44.295532, 36.822186, 32.103603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.494175, 36.746906, 31.991915>,  <44.825245, 36.621441, 31.805769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494175, 36.746906, 31.991915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368627, 0.321395, -0.872250,
		-0.423161, -0.893487, -0.150385,
		-0.827677, 0.313666, 0.465365,
		44.245872, 36.841007, 32.131523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302910, 36.406403, 31.332859>,  <44.825245, 36.621441, 31.805769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302910, 36.406403, 31.332859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.141388, 36.687088, 31.567648>,  <44.044476, 36.855499, 31.708521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.141388, 36.687088, 31.567648>,  <44.302910, 36.406403, 31.332859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.141388, 36.687088, 31.567648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573484, 0.305733, -0.760028,
		-0.712781, -0.643522, 0.278967,
		-0.403806, 0.701717, 0.586971,
		44.020245, 36.897602, 31.743738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490391, 36.363827, 31.344236>,  <44.302910, 36.406403, 31.332859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490391, 36.363827, 31.344236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.622688, 36.731392, 31.430216>,  <43.702068, 36.951931, 31.481804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.622688, 36.731392, 31.430216>,  <43.490391, 36.363827, 31.344236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622688, 36.731392, 31.430216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630401, 0.384628, -0.674281,
		-0.702282, 0.087512, 0.706499,
		0.330747, 0.918914, 0.214950,
		43.721912, 37.007065, 31.494701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879776, 36.780823, 31.371290>,  <43.490391, 36.363827, 31.344236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879776, 36.780823, 31.371290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137127, 37.086906, 31.380423>,  <43.291538, 37.270557, 31.385902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137127, 37.086906, 31.380423>,  <42.879776, 36.780823, 31.371290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137127, 37.086906, 31.380423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563038, 0.493176, -0.663149,
		-0.518709, 0.413797, 0.748140,
		0.643374, 0.765212, 0.022831,
		43.330139, 37.316471, 31.387272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444473, 37.375942, 31.288826>,  <42.879776, 36.780823, 31.371290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444473, 37.375942, 31.288826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807533, 37.506931, 31.183807>,  <43.025372, 37.585526, 31.120796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807533, 37.506931, 31.183807>,  <42.444473, 37.375942, 31.288826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807533, 37.506931, 31.183807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409154, 0.550848, -0.727433,
		-0.093590, 0.767678, 0.633964,
		0.907653, 0.327470, -0.262545,
		43.079830, 37.605171, 31.105043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370518, 38.132481, 31.301558>,  <42.444473, 37.375942, 31.288826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370518, 38.132481, 31.301558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.670288, 38.028286, 31.058079>,  <42.850151, 37.965767, 30.911991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.670288, 38.028286, 31.058079>,  <42.370518, 38.132481, 31.301558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670288, 38.028286, 31.058079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441595, 0.488338, -0.752675,
		0.493313, 0.832869, 0.250941,
		0.749424, -0.260490, -0.608695,
		42.895115, 37.950138, 30.875471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608044, 38.697044, 30.939825>,  <42.370518, 38.132481, 31.301558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608044, 38.697044, 30.939825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.774799, 38.433731, 30.689106>,  <42.874851, 38.275745, 30.538675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.774799, 38.433731, 30.689106>,  <42.608044, 38.697044, 30.939825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774799, 38.433731, 30.689106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365570, 0.509922, -0.778678,
		0.832204, 0.553759, -0.028067,
		0.416888, -0.658279, -0.626796,
		42.899864, 38.236248, 30.501066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943699, 39.041866, 30.389023>,  <42.608044, 38.697044, 30.939825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943699, 39.041866, 30.389023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.865612, 38.681755, 30.233383>,  <42.818760, 38.465691, 30.139999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.865612, 38.681755, 30.233383>,  <42.943699, 39.041866, 30.389023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865612, 38.681755, 30.233383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375249, 0.435107, -0.818456,
		0.906135, -0.013763, -0.422765,
		-0.195213, -0.900273, -0.389101,
		42.807049, 38.411674, 30.116653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767361, 39.220970, 29.711285>,  <42.943699, 39.041866, 30.389023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767361, 39.220970, 29.711285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.682632, 38.831093, 29.682705>,  <42.631794, 38.597168, 29.665558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.682632, 38.831093, 29.682705>,  <42.767361, 39.220970, 29.711285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682632, 38.831093, 29.682705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445125, 0.161303, -0.880821,
		0.870054, -0.154777, -0.468028,
		-0.211825, -0.974692, -0.071447,
		42.619083, 38.538685, 29.661270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048805, 38.861839, 29.020195>,  <42.767361, 39.220970, 29.711285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048805, 38.861839, 29.020195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.733280, 38.656666, 29.155649>,  <42.543964, 38.533562, 29.236921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.733280, 38.656666, 29.155649>,  <43.048805, 38.861839, 29.020195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733280, 38.656666, 29.155649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484056, 0.178913, -0.856551,
		0.378770, -0.839575, -0.389419,
		-0.788811, -0.512936, 0.338635,
		42.496635, 38.502785, 29.257240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686085, 38.589283, 28.414116>,  <43.048805, 38.861839, 29.020195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686085, 38.589283, 28.414116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.389595, 38.525162, 28.674849>,  <42.211700, 38.486691, 28.831287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.389595, 38.525162, 28.674849>,  <42.686085, 38.589283, 28.414116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389595, 38.525162, 28.674849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669514, 0.106711, -0.735095,
		0.048275, -0.981284, -0.186418,
		-0.741229, -0.160296, 0.651831,
		42.167225, 38.477070, 28.870398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150127, 38.070385, 28.123631>,  <42.686085, 38.589283, 28.414116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150127, 38.070385, 28.123631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.990967, 38.290337, 28.417379>,  <41.895470, 38.422310, 28.593628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.990967, 38.290337, 28.417379>,  <42.150127, 38.070385, 28.123631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990967, 38.290337, 28.417379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781008, 0.216958, -0.585625,
		-0.481353, -0.806572, 0.343135,
		-0.397902, 0.549883, 0.734372,
		41.871597, 38.455303, 28.637691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501137, 37.942661, 27.986465>,  <42.150127, 38.070385, 28.123631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501137, 37.942661, 27.986465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.507904, 38.264065, 28.224487>,  <41.511963, 38.456905, 28.367300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.507904, 38.264065, 28.224487>,  <41.501137, 37.942661, 27.986465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507904, 38.264065, 28.224487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794918, 0.371798, -0.479449,
		-0.606480, -0.464909, 0.645012,
		0.016914, 0.803509, 0.595053,
		41.512978, 38.505116, 28.403004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870461, 38.027958, 28.260986>,  <41.501137, 37.942661, 27.986465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870461, 38.027958, 28.260986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.052120, 38.383987, 28.245394>,  <41.161118, 38.597603, 28.236038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.052120, 38.383987, 28.245394>,  <40.870461, 38.027958, 28.260986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052120, 38.383987, 28.245394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703695, 0.331533, -0.628410,
		-0.546406, 0.312825, 0.776905,
		0.454152, 0.890071, -0.038981,
		41.188366, 38.651009, 28.233700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.302494, 34.722424, 42.050556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052448, 34.596622, 41.764809>,  <36.902420, 34.521141, 41.593361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052448, 34.596622, 41.764809>,  <37.302494, 34.722424, 42.050556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052448, 34.596622, 41.764809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671587, 0.249665, -0.697595,
		0.397751, -0.915834, 0.055150,
		-0.625112, -0.314507, -0.714366,
		36.864914, 34.502270, 41.550499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735268, 34.339447, 41.554504>,  <37.302494, 34.722424, 42.050556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735268, 34.339447, 41.554504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410137, 34.403862, 41.330582>,  <37.215057, 34.442513, 41.196228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410137, 34.403862, 41.330582>,  <37.735268, 34.339447, 41.554504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410137, 34.403862, 41.330582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580725, 0.148906, -0.800366,
		-0.045533, -0.975650, -0.214554,
		-0.812825, 0.161040, -0.559805,
		37.166290, 34.452175, 41.162640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855591, 33.955414, 40.904858>,  <37.735268, 34.339447, 41.554504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855591, 33.955414, 40.904858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586899, 34.241795, 40.828766>,  <37.425686, 34.413624, 40.783112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586899, 34.241795, 40.828766>,  <37.855591, 33.955414, 40.904858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586899, 34.241795, 40.828766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381147, 0.113821, -0.917481,
		-0.635224, -0.688804, -0.349341,
		-0.671727, 0.715956, -0.190234,
		37.385380, 34.456581, 40.771694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746113, 33.923771, 40.173653>,  <37.855591, 33.955414, 40.904858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746113, 33.923771, 40.173653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585953, 34.278290, 40.266739>,  <37.489857, 34.491001, 40.322590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585953, 34.278290, 40.266739>,  <37.746113, 33.923771, 40.173653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585953, 34.278290, 40.266739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215990, 0.338088, -0.915994,
		-0.890519, -0.316504, -0.326803,
		-0.400404, 0.886296, 0.232712,
		37.465832, 34.544178, 40.336552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146404, 34.071030, 39.681362>,  <37.746113, 33.923771, 40.173653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146404, 34.071030, 39.681362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299294, 34.417416, 39.810364>,  <37.391026, 34.625248, 39.887764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299294, 34.417416, 39.810364>,  <37.146404, 34.071030, 39.681362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299294, 34.417416, 39.810364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062007, 0.324178, -0.943962,
		-0.921987, 0.380802, 0.070213,
		0.382224, 0.865967, 0.322500,
		37.413960, 34.677204, 39.907112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898869, 34.466339, 39.133480>,  <37.146404, 34.071030, 39.681362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898869, 34.466339, 39.133480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137806, 34.698036, 39.355347>,  <37.281170, 34.837055, 39.488464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137806, 34.698036, 39.355347>,  <36.898869, 34.466339, 39.133480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137806, 34.698036, 39.355347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052869, 0.661669, -0.747929,
		-0.800238, 0.476098, 0.364622,
		0.597347, 0.579244, 0.554664,
		37.317009, 34.871811, 39.521748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703602, 35.196167, 38.934280>,  <36.898869, 34.466339, 39.133480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703602, 35.196167, 38.934280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075623, 35.176548, 39.079933>,  <37.298836, 35.164776, 39.167324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075623, 35.176548, 39.079933>,  <36.703602, 35.196167, 38.934280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075623, 35.176548, 39.079933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320101, 0.594676, -0.737493,
		-0.180372, 0.802468, 0.568780,
		0.930055, -0.049044, 0.364134,
		37.354637, 35.161835, 39.189175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963516, 35.837112, 38.764137>,  <36.703602, 35.196167, 38.934280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963516, 35.837112, 38.764137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278702, 35.596012, 38.814415>,  <37.467812, 35.451351, 38.844582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278702, 35.596012, 38.814415>,  <36.963516, 35.837112, 38.764137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278702, 35.596012, 38.814415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465994, 0.450365, -0.761591,
		0.402445, 0.658679, 0.635752,
		0.787964, -0.602755, 0.125693,
		37.515091, 35.415184, 38.852123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541416, 36.255177, 38.894604>,  <36.963516, 35.837112, 38.764137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541416, 36.255177, 38.894604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703163, 35.903343, 38.794353>,  <37.800213, 35.692242, 38.734203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703163, 35.903343, 38.794353>,  <37.541416, 36.255177, 38.894604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703163, 35.903343, 38.794353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445823, 0.428837, -0.785710,
		0.798578, 0.205982, 0.565548,
		0.404370, -0.879585, -0.250628,
		37.824474, 35.639469, 38.719166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154423, 36.451153, 38.617092>,  <37.541416, 36.255177, 38.894604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154423, 36.451153, 38.617092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093590, 36.085907, 38.465782>,  <38.057091, 35.866760, 38.374996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093590, 36.085907, 38.465782>,  <38.154423, 36.451153, 38.617092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093590, 36.085907, 38.465782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495192, 0.260835, -0.828704,
		0.855369, -0.313351, 0.412499,
		-0.152081, -0.913113, -0.378279,
		38.047966, 35.811974, 38.352299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755241, 36.395741, 38.330940>,  <38.154423, 36.451153, 38.617092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755241, 36.395741, 38.330940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507664, 36.139938, 38.148537>,  <38.359116, 35.986458, 38.039093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507664, 36.139938, 38.148537>,  <38.755241, 36.395741, 38.330940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507664, 36.139938, 38.148537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374035, 0.270535, -0.887079,
		0.690655, -0.719616, 0.071749,
		-0.618946, -0.639502, -0.456008,
		38.321980, 35.948090, 38.011734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176414, 35.869881, 37.947273>,  <38.755241, 36.395741, 38.330940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176414, 35.869881, 37.947273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812859, 35.931435, 37.792233>,  <38.594723, 35.968369, 37.699207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812859, 35.931435, 37.792233>,  <39.176414, 35.869881, 37.947273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812859, 35.931435, 37.792233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410854, 0.171026, -0.895516,
		-0.071519, -0.973174, -0.218670,
		-0.908891, 0.153888, -0.387601,
		38.540192, 35.977600, 37.675953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043774, 35.665203, 37.223820>,  <39.176414, 35.869881, 37.947273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043774, 35.665203, 37.223820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773865, 35.953949, 37.285263>,  <38.611919, 36.127197, 37.322128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773865, 35.953949, 37.285263>,  <39.043774, 35.665203, 37.223820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773865, 35.953949, 37.285263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074848, 0.273998, -0.958813,
		-0.734225, -0.635478, -0.238915,
		-0.674767, 0.721867, 0.153611,
		38.571434, 36.170509, 37.331345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758205, 34.998016, 37.159077>,  <39.043774, 35.665203, 37.223820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758205, 34.998016, 37.159077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522121, 35.167568, 36.884274>,  <38.380470, 35.269299, 36.719391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522121, 35.167568, 36.884274>,  <38.758205, 34.998016, 37.159077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522121, 35.167568, 36.884274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683360, 0.715400, -0.145681,
		0.429736, -0.555457, -0.711895,
		-0.590209, 0.423876, -0.687010,
		38.345058, 35.294731, 36.678169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473499, 34.847927, 36.806728>,  <38.758205, 34.998016, 37.159077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473499, 34.847927, 36.806728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587120, 34.511211, 36.623119>,  <39.655293, 34.309181, 36.512955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587120, 34.511211, 36.623119>,  <39.473499, 34.847927, 36.806728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587120, 34.511211, 36.623119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358285, -0.537248, 0.763542,
		-0.889353, -0.052422, -0.454206,
		0.284047, -0.841794, -0.459021,
		39.672333, 34.258675, 36.485413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899506, 34.475666, 36.662613>,  <39.473499, 34.847927, 36.806728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899506, 34.475666, 36.662613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186382, 34.196930, 36.665535>,  <39.358509, 34.029690, 36.667290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186382, 34.196930, 36.665535>,  <38.899506, 34.475666, 36.662613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186382, 34.196930, 36.665535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532268, -0.540988, 0.651171,
		-0.449804, -0.470907, -0.758896,
		0.717194, -0.696835, 0.007310,
		39.401539, 33.987881, 36.667728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591122, 33.759571, 36.729294>,  <38.899506, 34.475666, 36.662613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591122, 33.759571, 36.729294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967766, 33.639286, 36.789879>,  <39.193752, 33.567116, 36.826229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967766, 33.639286, 36.789879>,  <38.591122, 33.759571, 36.729294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967766, 33.639286, 36.789879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313211, -0.617180, 0.721795,
		-0.123571, -0.727090, -0.675329,
		0.941610, -0.300714, 0.151467,
		39.250248, 33.549072, 36.835320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524010, 33.064472, 36.783855>,  <38.591122, 33.759571, 36.729294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524010, 33.064472, 36.783855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862644, 33.164478, 36.971806>,  <39.065826, 33.224483, 37.084576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862644, 33.164478, 36.971806>,  <38.524010, 33.064472, 36.783855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862644, 33.164478, 36.971806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212703, -0.650335, 0.729261,
		0.487905, -0.717327, -0.497385,
		0.846585, 0.250015, 0.469879,
		39.116619, 33.239483, 37.112770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759811, 32.405598, 37.020607>,  <38.524010, 33.064472, 36.783855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759811, 32.405598, 37.020607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940006, 32.689037, 37.237843>,  <39.048122, 32.859100, 37.368183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940006, 32.689037, 37.237843>,  <38.759811, 32.405598, 37.020607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940006, 32.689037, 37.237843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078667, -0.574437, 0.814760,
		0.889310, -0.409763, -0.203033,
		0.450488, 0.708602, 0.543088,
		39.075153, 32.901619, 37.400768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180763, 32.074741, 37.524132>,  <38.759811, 32.405598, 37.020607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180763, 32.074741, 37.524132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150562, 32.441635, 37.680580>,  <39.132442, 32.661774, 37.774448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150562, 32.441635, 37.680580>,  <39.180763, 32.074741, 37.524132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150562, 32.441635, 37.680580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223594, -0.397827, 0.889797,
		0.971754, -0.020274, 0.235124,
		-0.075499, 0.917236, 0.391123,
		39.127914, 32.716805, 37.797916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551582, 32.093750, 38.164192>,  <39.180763, 32.074741, 37.524132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551582, 32.093750, 38.164192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283623, 32.389622, 38.189865>,  <39.122849, 32.567142, 38.205269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283623, 32.389622, 38.189865>,  <39.551582, 32.093750, 38.164192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283623, 32.389622, 38.189865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318005, -0.363966, 0.875443,
		0.670905, 0.566045, 0.479041,
		-0.669895, 0.739677, 0.064182,
		39.082653, 32.611526, 38.209118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533092, 32.223495, 38.841686>,  <39.551582, 32.093750, 38.164192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533092, 32.223495, 38.841686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201847, 32.415325, 38.725594>,  <39.003101, 32.530422, 38.655937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201847, 32.415325, 38.725594>,  <39.533092, 32.223495, 38.841686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201847, 32.415325, 38.725594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388235, -0.117200, 0.914078,
		0.404355, 0.869638, 0.283243,
		-0.828113, 0.479577, -0.290233,
		38.953415, 32.559196, 38.638523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445587, 32.729851, 39.311749>,  <39.533092, 32.223495, 38.841686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445587, 32.729851, 39.311749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104137, 32.603634, 39.145973>,  <38.899269, 32.527905, 39.046509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104137, 32.603634, 39.145973>,  <39.445587, 32.729851, 39.311749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104137, 32.603634, 39.145973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365071, -0.205106, 0.908105,
		-0.371550, 0.926479, 0.059887,
		-0.853624, -0.315544, -0.414438,
		38.848049, 32.508972, 39.021641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916611, 33.088810, 39.596256>,  <39.445587, 32.729851, 39.311749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916611, 33.088810, 39.596256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731342, 32.763889, 39.454472>,  <38.620182, 32.568939, 39.369400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731342, 32.763889, 39.454472>,  <38.916611, 33.088810, 39.596256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731342, 32.763889, 39.454472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511454, -0.081647, 0.855423,
		-0.723798, 0.577501, -0.377636,
		-0.463175, -0.812297, -0.354461,
		38.592388, 32.520199, 39.348133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224281, 33.213955, 39.602779>,  <38.916611, 33.088810, 39.596256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224281, 33.213955, 39.602779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251205, 32.815220, 39.585888>,  <38.267361, 32.575977, 39.575752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251205, 32.815220, 39.585888>,  <38.224281, 33.213955, 39.602779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251205, 32.815220, 39.585888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423558, -0.066874, 0.903397,
		-0.903365, -0.042924, -0.426720,
		0.067314, -0.996838, -0.042231,
		38.271400, 32.516167, 39.573219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706367, 33.013264, 40.012215>,  <38.224281, 33.213955, 39.602779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706367, 33.013264, 40.012215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858932, 32.644157, 39.990208>,  <37.950470, 32.422695, 39.977005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858932, 32.644157, 39.990208>,  <37.706367, 33.013264, 40.012215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858932, 32.644157, 39.990208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404867, -0.220257, 0.887451,
		-0.831028, -0.316212, -0.457606,
		0.381414, -0.922766, -0.055016,
		37.973358, 32.367329, 39.973701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173954, 32.505478, 40.215809>,  <37.706367, 33.013264, 40.012215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173954, 32.505478, 40.215809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498013, 32.272579, 40.243118>,  <37.692448, 32.132839, 40.259502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498013, 32.272579, 40.243118>,  <37.173954, 32.505478, 40.215809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498013, 32.272579, 40.243118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296245, -0.306111, 0.904729,
		-0.505872, -0.753186, -0.420481,
		0.810143, -0.582243, 0.068275,
		37.741055, 32.097908, 40.263599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997166, 31.814228, 40.367432>,  <37.173954, 32.505478, 40.215809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997166, 31.814228, 40.367432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374023, 31.838102, 40.499367>,  <37.600140, 31.852427, 40.578529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374023, 31.838102, 40.499367>,  <36.997166, 31.814228, 40.367432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374023, 31.838102, 40.499367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307691, -0.236392, 0.921653,
		0.132980, -0.969823, -0.204352,
		0.942148, 0.059684, 0.329841,
		37.656670, 31.856007, 40.598320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907299, 31.230215, 39.959316>,  <36.997166, 31.814228, 40.367432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907299, 31.230215, 39.959316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597466, 31.021627, 39.816154>,  <36.411568, 30.896475, 39.730259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597466, 31.021627, 39.816154>,  <36.907299, 31.230215, 39.959316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597466, 31.021627, 39.816154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181311, 0.359055, -0.915536,
		0.605932, -0.774047, -0.183568,
		-0.774579, -0.521470, -0.357906,
		36.365093, 30.865187, 39.708782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197117, 30.790802, 39.432152>,  <36.907299, 31.230215, 39.959316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197117, 30.790802, 39.432152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803448, 30.836866, 39.378265>,  <36.567245, 30.864506, 39.345936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803448, 30.836866, 39.378265>,  <37.197117, 30.790802, 39.432152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803448, 30.836866, 39.378265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170834, 0.414110, -0.894052,
		-0.047176, -0.902912, -0.427228,
		-0.984170, 0.115163, -0.134712,
		36.508198, 30.871416, 39.337852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118355, 30.561701, 38.786137>,  <37.197117, 30.790802, 39.432152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118355, 30.561701, 38.786137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785343, 30.767265, 38.868874>,  <36.585533, 30.890604, 38.918514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785343, 30.767265, 38.868874>,  <37.118355, 30.561701, 38.786137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785343, 30.767265, 38.868874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008232, 0.361857, -0.932197,
		-0.553913, -0.777788, -0.297027,
		-0.832534, 0.513911, 0.206839,
		36.535583, 30.921438, 38.930927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726608, 30.370260, 38.235062>,  <37.118355, 30.561701, 38.786137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726608, 30.370260, 38.235062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562721, 30.711197, 38.365074>,  <36.464390, 30.915760, 38.443081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562721, 30.711197, 38.365074>,  <36.726608, 30.370260, 38.235062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562721, 30.711197, 38.365074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001501, 0.355678, -0.934607,
		-0.912213, -0.383410, -0.144447,
		-0.409714, 0.852344, 0.325029,
		36.439808, 30.966900, 38.462582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151699, 30.585428, 37.728497>,  <36.726608, 30.370260, 38.235062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151699, 30.585428, 37.728497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223667, 30.908945, 37.952454>,  <36.266850, 31.103056, 38.086826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223667, 30.908945, 37.952454>,  <36.151699, 30.585428, 37.728497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223667, 30.908945, 37.952454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027809, 0.573137, -0.818987,
		-0.983288, 0.131784, 0.125612,
		0.179923, 0.808793, 0.559894,
		36.277645, 31.151583, 38.120422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605877, 31.043104, 37.713707>,  <36.151699, 30.585428, 37.728497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605877, 31.043104, 37.713707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924461, 31.274347, 37.784637>,  <36.115612, 31.413094, 37.827194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924461, 31.274347, 37.784637>,  <35.605877, 31.043104, 37.713707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924461, 31.274347, 37.784637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176096, 0.502280, -0.846584,
		-0.578481, 0.643045, 0.501849,
		0.796461, 0.578106, 0.177322,
		36.163399, 31.447779, 37.837833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283138, 31.717321, 37.387901>,  <35.605877, 31.043104, 37.713707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283138, 31.717321, 37.387901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668266, 31.798479, 37.459244>,  <35.899342, 31.847174, 37.502048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668266, 31.798479, 37.459244>,  <35.283138, 31.717321, 37.387901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668266, 31.798479, 37.459244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033815, 0.564510, -0.824734,
		-0.268015, 0.800102, 0.536661,
		0.962821, 0.202894, 0.178352,
		35.957111, 31.859346, 37.512749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370457, 32.432789, 37.435883>,  <35.283138, 31.717321, 37.387901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370457, 32.432789, 37.435883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744442, 32.313915, 37.358387>,  <35.968834, 32.242592, 37.311890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744442, 32.313915, 37.358387>,  <35.370457, 32.432789, 37.435883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744442, 32.313915, 37.358387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089456, 0.725980, -0.681873,
		0.343292, 0.620192, 0.705346,
		0.934959, -0.297179, -0.193743,
		36.024929, 32.224762, 37.300262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762405, 33.034161, 37.523682>,  <35.370457, 32.432789, 37.435883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762405, 33.034161, 37.523682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953938, 32.763851, 37.299522>,  <36.068859, 32.601665, 37.165028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953938, 32.763851, 37.299522>,  <35.762405, 33.034161, 37.523682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953938, 32.763851, 37.299522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111599, 0.680015, -0.724655,
		0.870784, 0.284449, 0.401029,
		0.478833, -0.675773, -0.560402,
		36.097588, 32.561119, 37.131401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199913, 33.348644, 37.124401>,  <35.762405, 33.034161, 37.523682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199913, 33.348644, 37.124401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185768, 33.008949, 36.913673>,  <36.177280, 32.805130, 36.787235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185768, 33.008949, 36.913673>,  <36.199913, 33.348644, 37.124401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185768, 33.008949, 36.913673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050609, 0.527997, -0.847737,
		0.998092, -0.003319, -0.061653,
		-0.035366, -0.849240, -0.526821,
		36.175159, 32.754177, 36.755627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853127, 33.409840, 36.741550>,  <36.199913, 33.348644, 37.124401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853127, 33.409840, 36.741550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633343, 33.130241, 36.558472>,  <36.501472, 32.962482, 36.448624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633343, 33.130241, 36.558472>,  <36.853127, 33.409840, 36.741550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633343, 33.130241, 36.558472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015106, 0.539404, -0.841912,
		0.835381, -0.469514, -0.285824,
		-0.549463, -0.698999, -0.457700,
		36.468502, 32.920540, 36.421162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217224, 33.140297, 36.188137>,  <36.853127, 33.409840, 36.741550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217224, 33.140297, 36.188137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834679, 33.068562, 36.095871>,  <36.605152, 33.025520, 36.040512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834679, 33.068562, 36.095871>,  <37.217224, 33.140297, 36.188137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834679, 33.068562, 36.095871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121594, 0.473558, -0.872329,
		0.265676, -0.862310, -0.431087,
		-0.956363, -0.179340, -0.230665,
		36.547771, 33.014759, 36.026672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.087856, 29.123394, 43.040531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.708221, 29.162838, 42.920864>,  <35.480438, 29.186504, 42.849064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.708221, 29.162838, 42.920864>,  <36.087856, 29.123394, 43.040531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708221, 29.162838, 42.920864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298453, -0.022263, -0.954165,
		-0.100753, -0.994877, -0.008301,
		-0.949092, 0.098613, -0.299167,
		35.423492, 29.192421, 42.831116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915009, 28.643541, 42.541531>,  <36.087856, 29.123394, 43.040531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915009, 28.643541, 42.541531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.685085, 28.965422, 42.482128>,  <35.547131, 29.158550, 42.446487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.685085, 28.965422, 42.482128>,  <35.915009, 28.643541, 42.541531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685085, 28.965422, 42.482128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316046, 0.050914, -0.947377,
		-0.754793, -0.591494, -0.283588,
		-0.574806, 0.804700, -0.148510,
		35.512642, 29.206831, 42.437576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659863, 28.522186, 41.860401>,  <35.915009, 28.643541, 42.541531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659863, 28.522186, 41.860401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559471, 28.900864, 41.941174>,  <35.499237, 29.128071, 41.989639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559471, 28.900864, 41.941174>,  <35.659863, 28.522186, 41.860401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559471, 28.900864, 41.941174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267587, 0.268336, -0.925415,
		-0.930273, -0.178224, -0.320670,
		-0.250978, 0.946696, 0.201935,
		35.484177, 29.184872, 42.001755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288002, 28.759769, 41.233242>,  <35.659863, 28.522186, 41.860401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288002, 28.759769, 41.233242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.383148, 29.116720, 41.386650>,  <35.440235, 29.330891, 41.478695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.383148, 29.116720, 41.386650>,  <35.288002, 28.759769, 41.233242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383148, 29.116720, 41.386650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257987, 0.322624, -0.910690,
		-0.936410, 0.315565, -0.153480,
		0.237865, 0.892375, 0.383520,
		35.454506, 29.384432, 41.501705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827797, 29.383459, 40.855499>,  <35.288002, 28.759769, 41.233242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827797, 29.383459, 40.855499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.160229, 29.530739, 41.022228>,  <35.359688, 29.619106, 41.122265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.160229, 29.530739, 41.022228>,  <34.827797, 29.383459, 40.855499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160229, 29.530739, 41.022228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280275, 0.370055, -0.885723,
		-0.480370, 0.852929, 0.204347,
		0.831078, 0.368201, 0.416818,
		35.409554, 29.641199, 41.147274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816242, 30.171324, 40.687763>,  <34.827797, 29.383459, 40.855499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816242, 30.171324, 40.687763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.195538, 30.099752, 40.792698>,  <35.423115, 30.056810, 40.855659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.195538, 30.099752, 40.792698>,  <34.816242, 30.171324, 40.687763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195538, 30.099752, 40.792698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313948, 0.652271, -0.689913,
		-0.047672, 0.736565, 0.674685,
		0.948243, -0.178926, 0.262338,
		35.480011, 30.046074, 40.871399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113506, 30.869261, 40.602909>,  <34.816242, 30.171324, 40.687763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113506, 30.869261, 40.602909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.387386, 30.577883, 40.612278>,  <35.551716, 30.403055, 40.617901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.387386, 30.577883, 40.612278>,  <35.113506, 30.869261, 40.602909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387386, 30.577883, 40.612278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534580, 0.480119, -0.695492,
		0.495383, 0.488727, 0.718152,
		0.684704, -0.728444, 0.023421,
		35.592796, 30.359350, 40.619305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642635, 31.302187, 40.589043>,  <35.113506, 30.869261, 40.602909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642635, 31.302187, 40.589043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.752487, 30.939247, 40.461735>,  <35.818398, 30.721483, 40.385349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.752487, 30.939247, 40.461735>,  <35.642635, 31.302187, 40.589043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752487, 30.939247, 40.461735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525719, 0.418830, -0.740407,
		0.805109, 0.036016, 0.592033,
		0.274628, -0.907350, -0.318269,
		35.834877, 30.667042, 40.366253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361210, 31.328831, 40.456120>,  <35.642635, 31.302187, 40.589043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361210, 31.328831, 40.456120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.228756, 31.018450, 40.241364>,  <36.149284, 30.832222, 40.112511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.228756, 31.018450, 40.241364>,  <36.361210, 31.328831, 40.456120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228756, 31.018450, 40.241364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315396, 0.445243, -0.838024,
		0.889311, -0.446833, 0.097295,
		-0.331137, -0.775950, -0.536888,
		36.129414, 30.785666, 40.080296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159336, 31.158466, 40.696571>,  <36.361210, 31.328831, 40.456120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159336, 31.158466, 40.696571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.425655, 31.411438, 40.854939>,  <37.585445, 31.563221, 40.949959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.425655, 31.411438, 40.854939>,  <37.159336, 31.158466, 40.696571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425655, 31.411438, 40.854939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294322, -0.264983, 0.918236,
		0.685631, -0.727885, 0.009713,
		0.665796, 0.632430, 0.395914,
		37.625393, 31.601168, 40.973713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426056, 30.837246, 41.334404>,  <37.159336, 31.158466, 40.696571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426056, 30.837246, 41.334404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.498062, 31.228878, 41.372345>,  <37.541267, 31.463858, 41.395107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.498062, 31.228878, 41.372345>,  <37.426056, 30.837246, 41.334404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498062, 31.228878, 41.372345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238954, -0.050009, 0.969742,
		0.954198, -0.197237, 0.224952,
		0.180020, 0.979080, 0.094849,
		37.552067, 31.522602, 41.400799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675003, 30.857121, 41.947350>,  <37.426056, 30.837246, 41.334404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675003, 30.857121, 41.947350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.598362, 31.244411, 41.883072>,  <37.552376, 31.476786, 41.844505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.598362, 31.244411, 41.883072>,  <37.675003, 30.857121, 41.947350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598362, 31.244411, 41.883072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094018, 0.144872, 0.984973,
		0.976959, 0.203834, 0.063273,
		-0.191604, 0.968227, -0.160698,
		37.540882, 31.534880, 41.834862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944881, 31.219046, 42.514080>,  <37.675003, 30.857121, 41.947350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944881, 31.219046, 42.514080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.656788, 31.459982, 42.376415>,  <37.483932, 31.604544, 42.293816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.656788, 31.459982, 42.376415>,  <37.944881, 31.219046, 42.514080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656788, 31.459982, 42.376415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119950, 0.380502, 0.916968,
		0.683283, 0.701713, -0.201799,
		-0.720234, 0.602343, -0.344161,
		37.440720, 31.640684, 42.273167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168438, 31.888243, 42.801250>,  <37.944881, 31.219046, 42.514080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168438, 31.888243, 42.801250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.782822, 31.909805, 42.697155>,  <37.551453, 31.922743, 42.634697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.782822, 31.909805, 42.697155>,  <38.168438, 31.888243, 42.801250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782822, 31.909805, 42.697155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241627, 0.229941, 0.942732,
		0.110658, 0.971711, -0.208647,
		-0.964039, 0.053906, -0.260237,
		37.493610, 31.925978, 42.619083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887985, 32.342762, 43.182037>,  <38.168438, 31.888243, 42.801250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887985, 32.342762, 43.182037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.528397, 32.201427, 43.078499>,  <37.312645, 32.116627, 43.016376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.528397, 32.201427, 43.078499>,  <37.887985, 32.342762, 43.182037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528397, 32.201427, 43.078499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343199, 0.201040, 0.917495,
		-0.272148, 0.913638, -0.301995,
		-0.898972, -0.353339, -0.258847,
		37.258705, 32.095425, 43.000843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400978, 32.799744, 43.382626>,  <37.887985, 32.342762, 43.182037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400978, 32.799744, 43.382626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.159241, 32.484692, 43.334621>,  <37.014198, 32.295658, 43.305820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.159241, 32.484692, 43.334621>,  <37.400978, 32.799744, 43.382626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159241, 32.484692, 43.334621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424111, 0.190524, 0.885342,
		-0.674459, 0.585949, -0.449186,
		-0.604346, -0.787632, -0.120006,
		36.977936, 32.248402, 43.298618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742641, 32.971897, 43.713562>,  <37.400978, 32.799744, 43.382626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742641, 32.971897, 43.713562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.759014, 32.574413, 43.671875>,  <36.768837, 32.335922, 43.646862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.759014, 32.574413, 43.671875>,  <36.742641, 32.971897, 43.713562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759014, 32.574413, 43.671875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371665, -0.111960, 0.921591,
		-0.927464, 0.001011, -0.373910,
		0.040931, -0.993712, -0.104215,
		36.771294, 32.276299, 43.640610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064941, 32.766518, 43.939362>,  <36.742641, 32.971897, 43.713562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064941, 32.766518, 43.939362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.308338, 32.450687, 43.971111>,  <36.454376, 32.261189, 43.990162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.308338, 32.450687, 43.971111>,  <36.064941, 32.766518, 43.939362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308338, 32.450687, 43.971111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474245, -0.281628, 0.834133,
		-0.636259, -0.545208, -0.545823,
		0.608495, -0.789578, 0.079374,
		36.490887, 32.213814, 43.994923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641937, 32.163456, 44.063690>,  <36.064941, 32.766518, 43.939362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641937, 32.163456, 44.063690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.008801, 32.063793, 44.188107>,  <36.228916, 32.003994, 44.262756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.008801, 32.063793, 44.188107>,  <35.641937, 32.163456, 44.063690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008801, 32.063793, 44.188107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395968, -0.481341, 0.781998,
		-0.045123, -0.840376, -0.540123,
		0.917155, -0.249157, 0.311043,
		36.283947, 31.989046, 44.281418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539932, 31.485088, 44.415585>,  <35.641937, 32.163456, 44.063690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539932, 31.485088, 44.415585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.896500, 31.630409, 44.523945>,  <36.110439, 31.717602, 44.588963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.896500, 31.630409, 44.523945>,  <35.539932, 31.485088, 44.415585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896500, 31.630409, 44.523945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093466, -0.437542, 0.894327,
		0.443443, -0.822538, -0.356076,
		0.891416, 0.363302, 0.270904,
		36.163925, 31.739399, 44.605217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847908, 30.950415, 44.710438>,  <35.539932, 31.485088, 44.415585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847908, 30.950415, 44.710438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.025307, 31.275049, 44.862564>,  <36.131744, 31.469830, 44.953838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.025307, 31.275049, 44.862564>,  <35.847908, 30.950415, 44.710438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025307, 31.275049, 44.862564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024713, -0.413095, 0.910353,
		0.895936, -0.413135, -0.163148,
		0.443495, 0.811586, 0.380317,
		36.158356, 31.518524, 44.976658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167248, 30.691385, 45.309181>,  <35.847908, 30.950415, 44.710438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167248, 30.691385, 45.309181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.181694, 31.084808, 45.379963>,  <36.190361, 31.320862, 45.422432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.181694, 31.084808, 45.379963>,  <36.167248, 30.691385, 45.309181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181694, 31.084808, 45.379963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010311, -0.177427, 0.984080,
		0.999294, -0.033716, -0.016549,
		0.036116, 0.983556, 0.176954,
		36.192528, 31.379875, 45.433048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656986, 30.808857, 45.903393>,  <36.167248, 30.691385, 45.309181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656986, 30.808857, 45.903393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.399574, 31.112638, 45.865227>,  <36.245129, 31.294907, 45.842327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.399574, 31.112638, 45.865227>,  <36.656986, 30.808857, 45.903393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399574, 31.112638, 45.865227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242705, -0.084232, 0.966436,
		0.725925, 0.645087, 0.238529,
		-0.643527, 0.759452, -0.095420,
		36.206516, 31.340475, 45.836601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.974895, 31.469707, 43.829144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.270512, 31.202335, 43.862656>,  <29.447882, 31.041912, 43.882763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.270512, 31.202335, 43.862656>,  <28.974895, 31.469707, 43.829144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270512, 31.202335, 43.862656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404930, 0.341392, -0.848223,
		0.538376, 0.660798, 0.522970,
		0.739042, -0.668429, 0.083780,
		29.492224, 31.001806, 43.887791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396193, 31.860134, 43.729439>,  <28.974895, 31.469707, 43.829144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396193, 31.860134, 43.729439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.579756, 31.508062, 43.680965>,  <29.689894, 31.296820, 43.651882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.579756, 31.508062, 43.680965>,  <29.396193, 31.860134, 43.729439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579756, 31.508062, 43.680965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505726, 0.370915, -0.778886,
		0.730510, 0.296151, 0.615346,
		0.458909, -0.880180, -0.121186,
		29.717428, 31.244009, 43.644611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020584, 32.088943, 43.787884>,  <29.396193, 31.860134, 43.729439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020584, 32.088943, 43.787884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.038633, 31.728804, 43.614754>,  <30.049463, 31.512720, 43.510876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.038633, 31.728804, 43.614754>,  <30.020584, 32.088943, 43.787884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038633, 31.728804, 43.614754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518842, 0.391372, -0.760021,
		0.853679, -0.190276, 0.484797,
		0.045122, -0.900346, -0.432829,
		30.052170, 31.458700, 43.484905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706106, 31.947800, 43.583565>,  <30.020584, 32.088943, 43.787884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706106, 31.947800, 43.583565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.479870, 31.717615, 43.347275>,  <30.344128, 31.579504, 43.205502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.479870, 31.717615, 43.347275>,  <30.706106, 31.947800, 43.583565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479870, 31.717615, 43.347275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584490, 0.225612, -0.779404,
		0.581790, -0.786095, 0.208746,
		-0.565590, -0.575460, -0.590723,
		30.310192, 31.544977, 43.170059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116198, 31.443256, 43.234428>,  <30.706106, 31.947800, 43.583565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116198, 31.443256, 43.234428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.785042, 31.508680, 43.019825>,  <30.586348, 31.547935, 42.891064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.785042, 31.508680, 43.019825>,  <31.116198, 31.443256, 43.234428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785042, 31.508680, 43.019825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551619, 0.064246, -0.831618,
		-0.101550, -0.984439, -0.143411,
		-0.827891, 0.163559, -0.536511,
		30.536674, 31.557749, 42.858871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318216, 31.220348, 42.562981>,  <31.116198, 31.443256, 43.234428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318216, 31.220348, 42.562981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.971453, 31.395426, 42.467575>,  <30.763395, 31.500473, 42.410332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.971453, 31.395426, 42.467575>,  <31.318216, 31.220348, 42.562981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971453, 31.395426, 42.467575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261459, -0.008114, -0.965180,
		-0.424391, -0.899086, -0.107405,
		-0.866909, 0.437696, -0.238517,
		30.711380, 31.526735, 42.396019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108749, 30.848606, 42.052303>,  <31.318216, 31.220348, 42.562981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108749, 30.848606, 42.052303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.917490, 31.197756, 42.013401>,  <30.802734, 31.407246, 41.990059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.917490, 31.197756, 42.013401>,  <31.108749, 30.848606, 42.052303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917490, 31.197756, 42.013401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255736, 0.032433, -0.966202,
		-0.840221, -0.486863, -0.238734,
		-0.478151, 0.872876, -0.097258,
		30.774044, 31.459620, 41.984222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873013, 30.926517, 41.316414>,  <31.108749, 30.848606, 42.052303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873013, 30.926517, 41.316414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.818937, 31.306309, 41.429703>,  <30.786493, 31.534184, 41.497677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.818937, 31.306309, 41.429703>,  <30.873013, 30.926517, 41.316414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818937, 31.306309, 41.429703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268401, 0.310252, -0.911979,
		-0.953774, -0.047271, -0.296783,
		-0.135187, 0.949478, 0.283222,
		30.778381, 31.591152, 41.514671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517773, 31.278984, 40.776234>,  <30.873013, 30.926517, 41.316414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517773, 31.278984, 40.776234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.686081, 31.580576, 40.978012>,  <30.787066, 31.761532, 41.099079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.686081, 31.580576, 40.978012>,  <30.517773, 31.278984, 40.776234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686081, 31.580576, 40.978012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366419, 0.367430, -0.854829,
		-0.829873, 0.544524, -0.121670,
		0.420770, 0.753982, 0.504444,
		30.812311, 31.806770, 41.129345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379709, 31.869026, 40.406063>,  <30.517773, 31.278984, 40.776234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379709, 31.869026, 40.406063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.666452, 32.006512, 40.648708>,  <30.838499, 32.089005, 40.794296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.666452, 32.006512, 40.648708>,  <30.379709, 31.869026, 40.406063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666452, 32.006512, 40.648708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382843, 0.533095, -0.754481,
		-0.582705, 0.773092, 0.250566,
		0.716859, 0.343712, 0.606610,
		30.881510, 32.109627, 40.830692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364023, 32.546642, 40.272270>,  <30.379709, 31.869026, 40.406063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364023, 32.546642, 40.272270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.720346, 32.482430, 40.442303>,  <30.934139, 32.443901, 40.544323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.720346, 32.482430, 40.442303>,  <30.364023, 32.546642, 40.272270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720346, 32.482430, 40.442303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439066, 0.544965, -0.714307,
		-0.116986, 0.822948, 0.555942,
		0.890806, -0.160531, 0.425081,
		30.987589, 32.434269, 40.569828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796778, 33.163994, 40.200073>,  <30.364023, 32.546642, 40.272270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796778, 33.163994, 40.200073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.095177, 32.911003, 40.283463>,  <31.274216, 32.759209, 40.333496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.095177, 32.911003, 40.283463>,  <30.796778, 33.163994, 40.200073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095177, 32.911003, 40.283463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568271, 0.441361, -0.694455,
		0.347215, 0.636531, 0.688673,
		0.745996, -0.632478, 0.208475,
		31.318975, 32.721260, 40.346004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540010, 33.578789, 40.129520>,  <30.796778, 33.163994, 40.200073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540010, 33.578789, 40.129520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.607384, 33.188713, 40.072056>,  <31.647808, 32.954666, 40.037579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.607384, 33.188713, 40.072056>,  <31.540010, 33.578789, 40.129520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607384, 33.188713, 40.072056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533481, 0.212739, -0.818621,
		0.828871, 0.061244, 0.556077,
		0.168435, -0.975188, -0.143661,
		31.657915, 32.896156, 40.028957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211765, 33.526634, 40.031208>,  <31.540010, 33.578789, 40.129520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211765, 33.526634, 40.031208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.052261, 33.213001, 39.840965>,  <31.956560, 33.024822, 39.726818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.052261, 33.213001, 39.840965>,  <32.211765, 33.526634, 40.031208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052261, 33.213001, 39.840965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463013, 0.275530, -0.842439,
		0.791588, -0.556141, 0.253172,
		-0.398758, -0.784086, -0.475607,
		31.932634, 32.977776, 39.698284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977077, 33.630558, 39.951019>,  <32.211765, 33.526634, 40.031208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977077, 33.630558, 39.951019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.001675, 34.013107, 40.065262>,  <33.016434, 34.242638, 40.133808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.001675, 34.013107, 40.065262>,  <32.977077, 33.630558, 39.951019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001675, 34.013107, 40.065262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342474, -0.248558, 0.906053,
		0.937513, -0.153524, 0.312249,
		0.061489, 0.956373, 0.285604,
		33.020123, 34.300018, 40.150944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393250, 33.686787, 40.508293>,  <32.977077, 33.630558, 39.951019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393250, 33.686787, 40.508293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.159412, 34.010448, 40.532024>,  <33.019112, 34.204647, 40.546265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.159412, 34.010448, 40.532024>,  <33.393250, 33.686787, 40.508293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159412, 34.010448, 40.532024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266756, -0.260753, 0.927820,
		0.766222, 0.526567, 0.368281,
		-0.584589, 0.809157, 0.059330,
		32.984035, 34.253197, 40.549824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436352, 33.834583, 41.246017>,  <33.393250, 33.686787, 40.508293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436352, 33.834583, 41.246017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.147709, 34.085884, 41.129681>,  <32.974525, 34.236664, 41.059879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.147709, 34.085884, 41.129681>,  <33.436352, 33.834583, 41.246017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147709, 34.085884, 41.129681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471644, -0.138583, 0.870831,
		0.506793, 0.765570, 0.396312,
		-0.721605, 0.628249, -0.290844,
		32.931229, 34.274361, 41.042427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361561, 34.388565, 41.809883>,  <33.436352, 33.834583, 41.246017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361561, 34.388565, 41.809883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025349, 34.327885, 41.601849>,  <32.823620, 34.291477, 41.477028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025349, 34.327885, 41.601849>,  <33.361561, 34.388565, 41.809883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025349, 34.327885, 41.601849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458668, -0.311636, 0.832170,
		-0.288319, 0.938014, 0.192360,
		-0.840533, -0.151701, -0.520087,
		32.773190, 34.282375, 41.445824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881908, 34.665222, 42.257633>,  <33.361561, 34.388565, 41.809883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881908, 34.665222, 42.257633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627033, 34.489292, 42.004478>,  <32.474110, 34.383736, 41.852585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627033, 34.489292, 42.004478>,  <32.881908, 34.665222, 42.257633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627033, 34.489292, 42.004478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681219, -0.062669, 0.729392,
		-0.360466, 0.895895, -0.259684,
		-0.637185, -0.439823, -0.632891,
		32.435879, 34.357346, 41.814610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295448, 35.005550, 42.448936>,  <32.881908, 34.665222, 42.257633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295448, 35.005550, 42.448936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.199165, 34.668877, 42.255596>,  <32.141396, 34.466873, 42.139591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.199165, 34.668877, 42.255596>,  <32.295448, 35.005550, 42.448936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199165, 34.668877, 42.255596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582851, -0.272860, 0.765397,
		-0.776108, 0.465961, -0.424895,
		-0.240709, -0.841681, -0.483355,
		32.126953, 34.416370, 42.110588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554375, 34.982956, 42.528282>,  <32.295448, 35.005550, 42.448936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554375, 34.982956, 42.528282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.687788, 34.613724, 42.451679>,  <31.767836, 34.392185, 42.405716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.687788, 34.613724, 42.451679>,  <31.554375, 34.982956, 42.528282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687788, 34.613724, 42.451679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692995, -0.377791, 0.614029,
		-0.639150, -0.072085, -0.765697,
		0.333535, -0.923081, -0.191510,
		31.787849, 34.336800, 42.394226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959345, 34.564667, 42.487347>,  <31.554375, 34.982956, 42.528282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959345, 34.564667, 42.487347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.251646, 34.304386, 42.569897>,  <31.427027, 34.148220, 42.619427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.251646, 34.304386, 42.569897>,  <30.959345, 34.564667, 42.487347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251646, 34.304386, 42.569897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567471, -0.411005, 0.713479,
		-0.379431, -0.638495, -0.669594,
		0.730759, -0.650691, 0.206379,
		31.470873, 34.109177, 42.631809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601910, 33.958397, 42.704903>,  <30.959345, 34.564667, 42.487347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601910, 33.958397, 42.704903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.979540, 33.928020, 42.833248>,  <31.206118, 33.909794, 42.910255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.979540, 33.928020, 42.833248>,  <30.601910, 33.958397, 42.704903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979540, 33.928020, 42.833248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321479, -0.428304, 0.844516,
		0.073295, -0.900438, -0.428764,
		0.944076, -0.075940, 0.320864,
		31.262762, 33.905239, 42.929508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707222, 33.190735, 42.984138>,  <30.601910, 33.958397, 42.704903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707222, 33.190735, 42.984138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.989681, 33.419544, 43.151058>,  <31.159157, 33.556831, 43.251209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.989681, 33.419544, 43.151058>,  <30.707222, 33.190735, 42.984138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989681, 33.419544, 43.151058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292305, -0.301284, 0.907626,
		0.644913, -0.762898, -0.045545,
		0.706148, 0.572027, 0.417301,
		31.201527, 33.591152, 43.276249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064455, 32.715469, 43.409176>,  <30.707222, 33.190735, 42.984138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064455, 32.715469, 43.409176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.104187, 33.087021, 43.551899>,  <31.128025, 33.309952, 43.637531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.104187, 33.087021, 43.551899>,  <31.064455, 32.715469, 43.409176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104187, 33.087021, 43.551899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136818, -0.342427, 0.929529,
		0.985604, -0.141147, 0.093075,
		0.099328, 0.928882, 0.356809,
		31.133986, 33.365685, 43.658943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644224, 32.657852, 43.944317>,  <31.064455, 32.715469, 43.409176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644224, 32.657852, 43.944317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.433018, 32.988667, 44.021481>,  <31.306293, 33.187153, 44.067780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.433018, 32.988667, 44.021481>,  <31.644224, 32.657852, 43.944317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433018, 32.988667, 44.021481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009722, -0.233027, 0.972422,
		0.849178, 0.511581, 0.131083,
		-0.528018, 0.827033, 0.192908,
		31.274612, 33.236778, 44.079353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980801, 32.968990, 44.496746>,  <31.644224, 32.657852, 43.944317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980801, 32.968990, 44.496746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.610792, 33.119419, 44.475174>,  <31.388786, 33.209675, 44.462231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.610792, 33.119419, 44.475174>,  <31.980801, 32.968990, 44.496746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610792, 33.119419, 44.475174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111054, -0.131897, 0.985023,
		0.363323, 0.917156, 0.163771,
		-0.925021, 0.376069, -0.053933,
		31.333286, 33.232239, 44.458996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909870, 33.452076, 45.005875>,  <31.980801, 32.968990, 44.496746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909870, 33.452076, 45.005875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.535080, 33.335655, 44.928555>,  <31.310205, 33.265804, 44.882164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.535080, 33.335655, 44.928555>,  <31.909870, 33.452076, 45.005875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535080, 33.335655, 44.928555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143978, -0.182446, 0.972617,
		-0.318346, 0.939151, 0.129043,
		-0.936977, -0.291049, -0.193298,
		31.253986, 33.248341, 44.870564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192928, 34.140717, 45.378632>,  <31.909870, 33.452076, 45.005875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192928, 34.140717, 45.378632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.573490, 34.037632, 45.446049>,  <32.801826, 33.975780, 45.486500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.573490, 34.037632, 45.446049>,  <32.192928, 34.140717, 45.378632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573490, 34.037632, 45.446049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236030, 0.258797, -0.936650,
		0.197764, 0.930919, 0.307049,
		0.951409, -0.257709, 0.168544,
		32.858913, 33.960320, 45.496613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650246, 34.699566, 45.063519>,  <32.192928, 34.140717, 45.378632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650246, 34.699566, 45.063519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.902138, 34.393818, 45.118912>,  <33.053272, 34.210369, 45.152149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.902138, 34.393818, 45.118912>,  <32.650246, 34.699566, 45.063519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902138, 34.393818, 45.118912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472294, 0.235197, -0.849483,
		0.616747, 0.600351, 0.509118,
		0.629731, -0.764369, 0.138485,
		33.091057, 34.164509, 45.160458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357426, 34.946049, 45.006302>,  <32.650246, 34.699566, 45.063519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357426, 34.946049, 45.006302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.348351, 34.561077, 44.898064>,  <33.342907, 34.330093, 44.833122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.348351, 34.561077, 44.898064>,  <33.357426, 34.946049, 45.006302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348351, 34.561077, 44.898064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693430, 0.179827, -0.697723,
		0.720167, -0.203465, 0.663296,
		-0.022684, -0.962426, -0.270595,
		33.341545, 34.272350, 44.816887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141171, 34.809395, 44.843636>,  <33.357426, 34.946049, 45.006302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141171, 34.809395, 44.843636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.946972, 34.484295, 44.714809>,  <33.830452, 34.289234, 44.637512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.946972, 34.484295, 44.714809>,  <34.141171, 34.809395, 44.843636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946972, 34.484295, 44.714809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712358, -0.154212, -0.684664,
		0.506796, -0.561828, 0.653840,
		-0.485493, -0.812753, -0.322069,
		33.801323, 34.240467, 44.618187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670383, 34.265865, 44.812370>,  <34.141171, 34.809395, 44.843636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670383, 34.265865, 44.812370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.369854, 34.157681, 44.571583>,  <34.189537, 34.092770, 44.427113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.369854, 34.157681, 44.571583>,  <34.670383, 34.265865, 44.812370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369854, 34.157681, 44.571583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636164, -0.054215, -0.769646,
		0.175526, -0.961202, 0.212792,
		-0.751322, -0.270464, -0.601967,
		34.144459, 34.076542, 44.390991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915386, 33.761303, 44.444057>,  <34.670383, 34.265865, 44.812370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915386, 33.761303, 44.444057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.588150, 33.828503, 44.224056>,  <34.391808, 33.868820, 44.092056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.588150, 33.828503, 44.224056>,  <34.915386, 33.761303, 44.444057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588150, 33.828503, 44.224056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532194, -0.141289, -0.834750,
		-0.217946, -0.975609, 0.026180,
		-0.818088, 0.167998, -0.550007,
		34.342724, 33.878902, 44.059055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908524, 33.226067, 43.980404>,  <34.915386, 33.761303, 44.444057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908524, 33.226067, 43.980404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.717575, 33.555099, 43.856815>,  <34.603004, 33.752522, 43.782661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.717575, 33.555099, 43.856815>,  <34.908524, 33.226067, 43.980404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717575, 33.555099, 43.856815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466434, -0.060779, -0.882466,
		-0.744682, -0.565384, -0.354668,
		-0.477376, 0.822586, -0.308975,
		34.574364, 33.801876, 43.764122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765408, 33.086117, 43.319233>,  <34.908524, 33.226067, 43.980404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765408, 33.086117, 43.319233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.745010, 33.484451, 43.349480>,  <34.732773, 33.723450, 43.367626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.745010, 33.484451, 43.349480>,  <34.765408, 33.086117, 43.319233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745010, 33.484451, 43.349480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595106, 0.091103, -0.798467,
		-0.802028, 0.004282, -0.597271,
		-0.050994, 0.995832, 0.075616,
		34.729713, 33.783199, 43.372166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634815, 33.265308, 42.657913>,  <34.765408, 33.086117, 43.319233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634815, 33.265308, 42.657913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.757057, 33.610748, 42.818310>,  <34.830402, 33.818012, 42.914547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.757057, 33.610748, 42.818310>,  <34.634815, 33.265308, 42.657913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757057, 33.610748, 42.818310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636075, 0.128217, -0.760900,
		-0.708530, 0.487595, -0.510134,
		0.305603, 0.863604, 0.400993,
		34.848740, 33.869831, 42.938606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580368, 33.835716, 42.035423>,  <34.634815, 33.265308, 42.657913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580368, 33.835716, 42.035423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862827, 33.961060, 42.289402>,  <35.032303, 34.036266, 42.441788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862827, 33.961060, 42.289402>,  <34.580368, 33.835716, 42.035423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862827, 33.961060, 42.289402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642704, 0.092634, -0.760493,
		-0.297123, 0.945107, -0.135981,
		0.706151, 0.313356, 0.634948,
		35.074673, 34.055065, 42.479885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778759, 34.441360, 41.778805>,  <34.580368, 33.835716, 42.035423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778759, 34.441360, 41.778805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.086754, 34.305969, 41.995159>,  <35.271549, 34.224735, 42.124969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.086754, 34.305969, 41.995159>,  <34.778759, 34.441360, 41.778805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086754, 34.305969, 41.995159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632947, 0.298103, -0.714502,
		0.080603, 0.892507, 0.443772,
		0.769988, -0.338476, 0.540882,
		35.317749, 34.204426, 42.157425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279274, 35.005856, 41.862640>,  <34.778759, 34.441360, 41.778805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279274, 35.005856, 41.862640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.490643, 34.679340, 41.955963>,  <35.617466, 34.483429, 42.011959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.490643, 34.679340, 41.955963>,  <35.279274, 35.005856, 41.862640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490643, 34.679340, 41.955963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667877, 0.230040, -0.707829,
		0.524125, 0.529858, 0.666741,
		0.528426, -0.816292, 0.233310,
		35.649170, 34.434452, 42.025955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003803, 35.227764, 41.967220>,  <35.279274, 35.005856, 41.862640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003803, 35.227764, 41.967220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.020157, 34.835243, 41.891987>,  <36.029968, 34.599731, 41.846848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.020157, 34.835243, 41.891987>,  <36.003803, 35.227764, 41.967220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020157, 34.835243, 41.891987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742501, 0.155804, -0.651473,
		0.668595, -0.113014, 0.734989,
		0.040888, -0.981302, -0.188083,
		36.032425, 34.540852, 41.835564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639748, 35.099918, 42.157043>,  <36.003803, 35.227764, 41.967220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639748, 35.099918, 42.157043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.517105, 34.817268, 41.901958>,  <36.443520, 34.647678, 41.748909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.517105, 34.817268, 41.901958>,  <36.639748, 35.099918, 42.157043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517105, 34.817268, 41.901958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719889, 0.266158, -0.641030,
		0.622699, -0.655625, 0.427085,
		-0.306603, -0.706623, -0.637714,
		36.425125, 34.605282, 41.710644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.903051, 43.087101, 36.404888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.621929, 43.008221, 36.131489>,  <28.453255, 42.960892, 35.967449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.621929, 43.008221, 36.131489>,  <28.903051, 43.087101, 36.404888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621929, 43.008221, 36.131489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373207, -0.715759, 0.590259,
		-0.605623, 0.669925, 0.429443,
		-0.702807, -0.197203, -0.683500,
		28.411087, 42.949059, 35.926437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154211, 42.844124, 36.715374>,  <28.903051, 43.087101, 36.404888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154211, 42.844124, 36.715374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.213594, 42.706223, 36.344624>,  <28.249224, 42.623482, 36.122173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.213594, 42.706223, 36.344624>,  <28.154211, 42.844124, 36.715374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213594, 42.706223, 36.344624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482737, -0.843272, 0.236340,
		-0.863090, 0.412352, -0.291619,
		0.148459, -0.344758, -0.926878,
		28.258133, 42.602795, 36.066559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500395, 42.512287, 36.479523>,  <28.154211, 42.844124, 36.715374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500395, 42.512287, 36.479523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.797798, 42.375313, 36.249763>,  <27.976240, 42.293129, 36.111908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.797798, 42.375313, 36.249763>,  <27.500395, 42.512287, 36.479523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797798, 42.375313, 36.249763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319618, -0.936453, 0.144567,
		-0.587399, 0.076101, -0.805711,
		0.743509, -0.342438, -0.574395,
		28.020851, 42.272583, 36.077446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154949, 42.147774, 35.886757>,  <27.500395, 42.512287, 36.479523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154949, 42.147774, 35.886757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.518606, 41.999931, 35.963543>,  <27.736801, 41.911228, 36.009613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.518606, 41.999931, 35.963543>,  <27.154949, 42.147774, 35.886757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518606, 41.999931, 35.963543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382228, -0.923509, 0.032142,
		0.165401, -0.102596, -0.980875,
		0.909145, -0.369602, 0.191964,
		27.791349, 41.889050, 36.021133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314445, 41.666164, 35.395626>,  <27.154949, 42.147774, 35.886757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314445, 41.666164, 35.395626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.550137, 41.555275, 35.699192>,  <27.691551, 41.488739, 35.881332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.550137, 41.555275, 35.699192>,  <27.314445, 41.666164, 35.395626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550137, 41.555275, 35.699192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431135, -0.902273, 0.005144,
		0.683325, -0.330227, -0.651166,
		0.589228, -0.277226, 0.758918,
		27.726906, 41.472107, 35.926868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365807, 40.942017, 35.228016>,  <27.314445, 41.666164, 35.395626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365807, 40.942017, 35.228016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.509424, 40.960018, 35.600910>,  <27.595594, 40.970818, 35.824646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.509424, 40.960018, 35.600910>,  <27.365807, 40.942017, 35.228016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509424, 40.960018, 35.600910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029272, -0.997803, 0.059439,
		0.932862, -0.048629, -0.356938,
		0.359044, 0.045000, 0.932235,
		27.617138, 40.973518, 35.880581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896280, 40.517513, 35.168304>,  <27.365807, 40.942017, 35.228016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896280, 40.517513, 35.168304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.759687, 40.562931, 35.541508>,  <27.677732, 40.590183, 35.765430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.759687, 40.562931, 35.541508>,  <27.896280, 40.517513, 35.168304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.759687, 40.562931, 35.541508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008661, -0.992253, 0.123929,
		0.939849, 0.050400, 0.337853,
		-0.341481, 0.113548, 0.933004,
		27.657244, 40.596996, 35.821407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333273, 40.083603, 35.383286>,  <27.896280, 40.517513, 35.168304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333273, 40.083603, 35.383286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.043394, 40.125050, 35.655781>,  <27.869467, 40.149918, 35.819279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.043394, 40.125050, 35.655781>,  <28.333273, 40.083603, 35.383286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043394, 40.125050, 35.655781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011735, -0.990341, 0.138156,
		0.688970, 0.092126, 0.718911,
		-0.724695, 0.103621, 0.681234,
		27.825985, 40.156136, 35.860149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594889, 39.797806, 35.963203>,  <28.333273, 40.083603, 35.383286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594889, 39.797806, 35.963203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.199261, 39.786266, 36.021046>,  <27.961884, 39.779343, 36.055752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.199261, 39.786266, 36.021046>,  <28.594889, 39.797806, 35.963203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.199261, 39.786266, 36.021046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035315, -0.998480, 0.042323,
		0.143167, 0.046968, 0.988584,
		-0.989068, -0.028852, 0.144608,
		27.902540, 39.777611, 36.064426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443913, 39.402878, 36.612110>,  <28.594889, 39.797806, 35.963203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443913, 39.402878, 36.612110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108477, 39.394333, 36.394371>,  <27.907215, 39.389206, 36.263729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108477, 39.394333, 36.394371>,  <28.443913, 39.402878, 36.612110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108477, 39.394333, 36.394371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062259, -0.988925, 0.134729,
		-0.541195, 0.146873, 0.827971,
		-0.838589, -0.021366, -0.544345,
		27.856899, 39.387924, 36.231068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870285, 39.015583, 37.067863>,  <28.443913, 39.402878, 36.612110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870285, 39.015583, 37.067863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.716160, 38.997791, 36.699177>,  <27.623684, 38.987118, 36.477966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.716160, 38.997791, 36.699177>,  <27.870285, 39.015583, 37.067863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716160, 38.997791, 36.699177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157231, -0.981067, 0.113073,
		-0.909292, 0.188490, 0.371024,
		-0.385313, -0.044480, -0.921713,
		27.600567, 38.984447, 36.422661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567822, 38.406303, 37.107086>,  <27.870285, 39.015583, 37.067863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567822, 38.406303, 37.107086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.505270, 38.503845, 36.724239>,  <27.467739, 38.562370, 36.494530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.505270, 38.503845, 36.724239>,  <27.567822, 38.406303, 37.107086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505270, 38.503845, 36.724239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087656, -0.968645, -0.232471,
		-0.983800, 0.047543, 0.172852,
		-0.156380, 0.243856, -0.957120,
		27.458355, 38.577003, 36.437103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.848682, 38.151958, 36.991302>,  <27.567822, 38.406303, 37.107086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.848682, 38.151958, 36.991302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.105776, 38.196033, 36.688053>,  <27.260031, 38.222481, 36.506104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.105776, 38.196033, 36.688053>,  <26.848682, 38.151958, 36.991302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105776, 38.196033, 36.688053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068509, -0.977370, -0.200137,
		-0.763022, 0.180573, -0.620637,
		0.642731, 0.110190, -0.758126,
		27.298595, 38.229092, 36.460617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590595, 37.727585, 36.548004>,  <26.848682, 38.151958, 36.991302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590595, 37.727585, 36.548004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.958374, 37.786755, 36.402275>,  <27.179041, 37.822258, 36.314838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.958374, 37.786755, 36.402275>,  <26.590595, 37.727585, 36.548004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958374, 37.786755, 36.402275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053510, -0.964992, -0.256761,
		-0.389551, 0.216584, -0.895177,
		0.919449, 0.147923, -0.364325,
		27.234209, 37.831131, 36.292976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592009, 37.595104, 35.857113>,  <26.590595, 37.727585, 36.548004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592009, 37.595104, 35.857113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.962440, 37.538528, 35.997044>,  <27.184700, 37.504585, 36.081001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.962440, 37.538528, 35.997044>,  <26.592009, 37.595104, 35.857113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962440, 37.538528, 35.997044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055213, -0.967907, -0.245168,
		0.373271, 0.207729, -0.904167,
		0.926078, -0.141436, 0.349822,
		27.240263, 37.496098, 36.101990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905157, 37.200306, 35.375195>,  <26.592009, 37.595104, 35.857113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905157, 37.200306, 35.375195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108379, 37.134495, 35.713379>,  <27.230312, 37.095009, 35.916290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108379, 37.134495, 35.713379>,  <26.905157, 37.200306, 35.375195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108379, 37.134495, 35.713379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080529, -0.968215, -0.236802,
		0.857551, 0.188393, -0.478659,
		0.508057, -0.164524, 0.845465,
		27.260796, 37.085136, 35.967018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557665, 37.031288, 35.160561>,  <26.905157, 37.200306, 35.375195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557665, 37.031288, 35.160561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.508915, 36.885010, 35.529648>,  <27.479666, 36.797241, 35.751099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.508915, 36.885010, 35.529648>,  <27.557665, 37.031288, 35.160561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508915, 36.885010, 35.529648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007541, -0.929963, -0.367575,
		0.992517, -0.037840, 0.116096,
		-0.121874, -0.365699, 0.922719,
		27.472353, 36.775299, 35.806465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118298, 36.581745, 35.369915>,  <27.557665, 37.031288, 35.160561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118298, 36.581745, 35.369915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.789545, 36.477486, 35.572529>,  <27.592293, 36.414932, 35.694096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.789545, 36.477486, 35.572529>,  <28.118298, 36.581745, 35.369915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789545, 36.477486, 35.572529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142186, -0.954904, -0.260656,
		0.551627, -0.142207, 0.821879,
		-0.821883, -0.260644, 0.506531,
		27.542980, 36.399292, 35.724487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333508, 36.071743, 35.737793>,  <28.118298, 36.581745, 35.369915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333508, 36.071743, 35.737793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.937677, 36.014282, 35.733730>,  <27.700178, 35.979805, 35.731293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.937677, 36.014282, 35.733730>,  <28.333508, 36.071743, 35.737793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937677, 36.014282, 35.733730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139484, -0.938545, -0.315718,
		0.035819, -0.313844, 0.948799,
		-0.989576, -0.143651, -0.010158,
		27.640804, 35.971188, 35.730682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893864, 36.504642, 36.196819>,  <28.333508, 36.071743, 35.737793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893864, 36.504642, 36.196819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.291248, 36.535950, 36.230061>,  <29.529680, 36.554733, 36.250004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.291248, 36.535950, 36.230061>,  <28.893864, 36.504642, 36.196819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291248, 36.535950, 36.230061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109263, 0.862731, 0.493718,
		-0.033052, -0.499571, 0.865642,
		0.993463, 0.078264, 0.083100,
		29.589287, 36.559429, 36.254990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962008, 36.888393, 36.851284>,  <28.893864, 36.504642, 36.196819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962008, 36.888393, 36.851284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.304607, 36.949589, 36.654102>,  <29.510168, 36.986305, 36.535793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.304607, 36.949589, 36.654102>,  <28.962008, 36.888393, 36.851284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304607, 36.949589, 36.654102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123576, 0.866507, 0.483626,
		0.501136, -0.475143, 0.723258,
		0.856500, 0.152985, -0.492954,
		29.561558, 36.995483, 36.506214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464966, 37.143276, 37.309017>,  <28.962008, 36.888393, 36.851284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464966, 37.143276, 37.309017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.628668, 37.266556, 36.965500>,  <29.726889, 37.340523, 36.759388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.628668, 37.266556, 36.965500>,  <29.464966, 37.143276, 37.309017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628668, 37.266556, 36.965500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192316, 0.890942, 0.411383,
		0.891915, -0.333525, 0.305367,
		0.409271, 0.308192, -0.858787,
		29.751444, 37.359016, 36.707863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217133, 37.410324, 37.467171>,  <29.464966, 37.143276, 37.309017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217133, 37.410324, 37.467171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.070156, 37.577278, 37.134720>,  <29.981970, 37.677448, 36.935249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.070156, 37.577278, 37.134720>,  <30.217133, 37.410324, 37.467171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070156, 37.577278, 37.134720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259742, 0.904140, 0.339213,
		0.893040, -0.091238, -0.440631,
		-0.367443, 0.417381, -0.831131,
		29.959923, 37.702492, 36.885380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745779, 37.988495, 37.246124>,  <30.217133, 37.410324, 37.467171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745779, 37.988495, 37.246124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.430891, 38.078804, 37.016582>,  <30.241959, 38.132988, 36.878857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.430891, 38.078804, 37.016582>,  <30.745779, 37.988495, 37.246124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430891, 38.078804, 37.016582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165673, 0.973790, 0.155840,
		0.594000, 0.027608, -0.803991,
		-0.787221, 0.225768, -0.573857,
		30.194725, 38.146534, 36.844425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945480, 38.426441, 36.681202>,  <30.745779, 37.988495, 37.246124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945480, 38.426441, 36.681202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.555687, 38.496323, 36.737572>,  <30.321812, 38.538254, 36.771393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.555687, 38.496323, 36.737572>,  <30.945480, 38.426441, 36.681202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555687, 38.496323, 36.737572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192727, 0.973084, 0.126347,
		-0.115060, 0.150284, -0.981925,
		-0.974483, 0.174705, 0.140926,
		30.263342, 38.548733, 36.779850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960505, 39.071495, 36.414764>,  <30.945480, 38.426441, 36.681202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960505, 39.071495, 36.414764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.613873, 39.021633, 36.608055>,  <30.405893, 38.991718, 36.724030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.613873, 39.021633, 36.608055>,  <30.960505, 39.071495, 36.414764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613873, 39.021633, 36.608055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088382, 0.914659, 0.394445,
		-0.491152, 0.384526, -0.781607,
		-0.866578, -0.124653, 0.483222,
		30.353899, 38.984238, 36.753021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525492, 39.579849, 36.115643>,  <30.960505, 39.071495, 36.414764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525492, 39.579849, 36.115643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.404797, 39.481339, 36.484055>,  <30.332378, 39.422234, 36.705101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.404797, 39.481339, 36.484055>,  <30.525492, 39.579849, 36.115643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404797, 39.481339, 36.484055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232828, 0.917776, 0.321680,
		-0.924524, 0.311505, -0.219589,
		-0.301739, -0.246274, 0.921034,
		30.314276, 39.407455, 36.760365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044039, 40.075317, 36.286224>,  <30.525492, 39.579849, 36.115643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044039, 40.075317, 36.286224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.185989, 39.897861, 36.615406>,  <30.271160, 39.791389, 36.812916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.185989, 39.897861, 36.615406>,  <30.044039, 40.075317, 36.286224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185989, 39.897861, 36.615406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230403, 0.894593, 0.382908,
		-0.906079, 0.053726, 0.419684,
		0.354874, -0.443641, 0.822950,
		30.292452, 39.764771, 36.862289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618662, 40.407997, 36.815365>,  <30.044039, 40.075317, 36.286224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618662, 40.407997, 36.815365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925907, 40.268265, 37.030018>,  <30.110254, 40.184425, 37.158810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925907, 40.268265, 37.030018>,  <29.618662, 40.407997, 36.815365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925907, 40.268265, 37.030018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205969, 0.928328, 0.309490,
		-0.606282, -0.127194, 0.785012,
		0.768114, -0.349326, 0.536631,
		30.156342, 40.163467, 37.191006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607199, 40.675045, 37.594273>,  <29.618662, 40.407997, 36.815365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607199, 40.675045, 37.594273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.984556, 40.570614, 37.512444>,  <30.210970, 40.507954, 37.463348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.984556, 40.570614, 37.512444>,  <29.607199, 40.675045, 37.594273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984556, 40.570614, 37.512444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311625, 0.908896, 0.277125,
		0.113582, -0.325187, 0.938804,
		0.943392, -0.261079, -0.204570,
		30.267574, 40.492290, 37.451073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003780, 40.906479, 38.154640>,  <29.607199, 40.675045, 37.594273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003780, 40.906479, 38.154640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.266438, 40.846912, 37.858898>,  <30.424032, 40.811172, 37.681454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.266438, 40.846912, 37.858898>,  <30.003780, 40.906479, 38.154640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266438, 40.846912, 37.858898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363010, 0.921695, 0.136754,
		0.661095, -0.358191, 0.659281,
		0.656641, -0.148919, -0.739355,
		30.463430, 40.802238, 37.637093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667128, 41.176392, 38.412479>,  <30.003780, 40.906479, 38.154640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667128, 41.176392, 38.412479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.708858, 41.162548, 38.014904>,  <30.733896, 41.154240, 37.776360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.708858, 41.162548, 38.014904>,  <30.667128, 41.176392, 38.412479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708858, 41.162548, 38.014904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464425, 0.885431, 0.017914,
		0.879446, -0.463480, 0.108449,
		0.104327, -0.034612, -0.993941,
		30.740156, 41.152164, 37.716721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419649, 41.410057, 38.310371>,  <30.667128, 41.176392, 38.412479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419649, 41.410057, 38.310371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.215769, 41.455818, 37.969288>,  <31.093441, 41.483276, 37.764637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.215769, 41.455818, 37.969288>,  <31.419649, 41.410057, 38.310371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215769, 41.455818, 37.969288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532924, 0.820066, -0.208526,
		0.675423, -0.560716, -0.478959,
		-0.509702, 0.114406, -0.852711,
		31.062859, 41.490139, 37.713474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939363, 41.452126, 37.680115>,  <31.419649, 41.410057, 38.310371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939363, 41.452126, 37.680115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.598326, 41.642567, 37.593948>,  <31.393703, 41.756832, 37.542248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.598326, 41.642567, 37.593948>,  <31.939363, 41.452126, 37.680115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598326, 41.642567, 37.593948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519426, 0.726943, -0.449167,
		-0.057255, -0.494851, -0.867089,
		-0.852596, 0.476105, -0.215418,
		31.342546, 41.785397, 37.529324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155487, 41.835094, 37.097439>,  <31.939363, 41.452126, 37.680115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155487, 41.835094, 37.097439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.801535, 42.009777, 37.162273>,  <31.589163, 42.114586, 37.201172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.801535, 42.009777, 37.162273>,  <32.155487, 41.835094, 37.097439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801535, 42.009777, 37.162273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348292, 0.851345, -0.392308,
		-0.309311, -0.290694, -0.905441,
		-0.884884, 0.436703, 0.162084,
		31.536070, 42.140789, 37.210899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926352, 42.017014, 36.453693>,  <32.155487, 41.835094, 37.097439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926352, 42.017014, 36.453693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.736620, 42.255722, 36.712578>,  <31.622782, 42.398949, 36.867908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.736620, 42.255722, 36.712578>,  <31.926352, 42.017014, 36.453693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736620, 42.255722, 36.712578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080119, 0.761384, -0.643332,
		-0.876695, -0.253297, -0.408959,
		-0.474328, 0.596771, 0.647207,
		31.594322, 42.434753, 36.906738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551315, 42.546932, 36.039722>,  <31.926352, 42.017014, 36.453693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551315, 42.546932, 36.039722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.554255, 42.706509, 36.406502>,  <31.556019, 42.802254, 36.626568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.554255, 42.706509, 36.406502>,  <31.551315, 42.546932, 36.039722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554255, 42.706509, 36.406502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137132, 0.907909, -0.396102,
		-0.990526, 0.128654, -0.048036,
		0.007348, 0.398936, 0.916949,
		31.556459, 42.826191, 36.681587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140970, 43.121918, 35.996090>,  <31.551315, 42.546932, 36.039722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140970, 43.121918, 35.996090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.367483, 43.183674, 36.319939>,  <31.503391, 43.220730, 36.514248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.367483, 43.183674, 36.319939>,  <31.140970, 43.121918, 35.996090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367483, 43.183674, 36.319939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288736, 0.882890, -0.370320,
		-0.771983, 0.443472, 0.455384,
		0.566281, 0.154394, 0.809622,
		31.537367, 43.229992, 36.562824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948116, 43.793270, 36.302277>,  <31.140970, 43.121918, 35.996090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948116, 43.793270, 36.302277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.322788, 43.705391, 36.411358>,  <31.547592, 43.652664, 36.476807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.322788, 43.705391, 36.411358>,  <30.948116, 43.793270, 36.302277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322788, 43.705391, 36.411358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300827, 0.903436, -0.305460,
		-0.179259, 0.368154, 0.912321,
		0.936680, -0.219694, 0.272700,
		31.603792, 43.639484, 36.493168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095634, 44.351494, 36.546810>,  <30.948116, 43.793270, 36.302277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095634, 44.351494, 36.546810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.471497, 44.217125, 36.520866>,  <31.697014, 44.136505, 36.505302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.471497, 44.217125, 36.520866>,  <31.095634, 44.351494, 36.546810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471497, 44.217125, 36.520866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282631, 0.869010, -0.406129,
		0.192787, 0.363291, 0.911511,
		0.939656, -0.335918, -0.064856,
		31.753393, 44.116348, 36.501408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548569, 44.932430, 36.759537>,  <31.095634, 44.351494, 36.546810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548569, 44.932430, 36.759537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.777323, 44.695282, 36.532753>,  <31.914576, 44.552994, 36.396683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.777323, 44.695282, 36.532753>,  <31.548569, 44.932430, 36.759537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777323, 44.695282, 36.532753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465220, 0.803644, -0.371115,
		0.675661, -0.051527, 0.735409,
		0.571885, -0.592875, -0.566963,
		31.948889, 44.517418, 36.362663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246555, 45.297379, 36.660248>,  <31.548569, 44.932430, 36.759537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246555, 45.297379, 36.660248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.206394, 45.039745, 36.356915>,  <32.182297, 44.885166, 36.174915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.206394, 45.039745, 36.356915>,  <32.246555, 45.297379, 36.660248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206394, 45.039745, 36.356915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526140, 0.612530, -0.589902,
		0.844451, -0.458217, 0.277382,
		-0.100398, -0.644084, -0.758337,
		32.176273, 44.846519, 36.129414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.718468, 31.138241, 46.531570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.373154, 31.272724, 46.381001>,  <36.165966, 31.353415, 46.290661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.373154, 31.272724, 46.381001>,  <36.718468, 31.138241, 46.531570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373154, 31.272724, 46.381001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425734, -0.084514, 0.900893,
		0.271077, 0.937987, 0.216096,
		-0.863289, 0.336210, -0.376423,
		36.114166, 31.373587, 46.268074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471878, 31.610758, 46.978230>,  <36.718468, 31.138241, 46.531570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471878, 31.610758, 46.978230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.147934, 31.539974, 46.754513>,  <35.953568, 31.497503, 46.620281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.147934, 31.539974, 46.754513>,  <36.471878, 31.610758, 46.978230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147934, 31.539974, 46.754513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566305, -0.012875, 0.824095,
		-0.153032, 0.984134, -0.089786,
		-0.809864, -0.176959, -0.559290,
		35.904976, 31.486887, 46.586727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967674, 32.105049, 47.092655>,  <36.471878, 31.610758, 46.978230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967674, 32.105049, 47.092655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759636, 31.785467, 46.971878>,  <35.634811, 31.593718, 46.899410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759636, 31.785467, 46.971878>,  <35.967674, 32.105049, 47.092655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759636, 31.785467, 46.971878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701918, 0.198405, 0.684066,
		-0.486631, 0.567720, -0.663991,
		-0.520097, -0.798955, -0.301943,
		35.603607, 31.545780, 46.881294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277946, 32.283619, 47.196266>,  <35.967674, 32.105049, 47.092655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277946, 32.283619, 47.196266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.244812, 31.885565, 47.174908>,  <35.224930, 31.646732, 47.162094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.244812, 31.885565, 47.174908>,  <35.277946, 32.283619, 47.196266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244812, 31.885565, 47.174908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635194, 0.011437, 0.772268,
		-0.767898, 0.097890, -0.633049,
		-0.082838, -0.995131, -0.053397,
		35.219959, 31.587025, 47.158890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581829, 32.178757, 47.261169>,  <35.277946, 32.283619, 47.196266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581829, 32.178757, 47.261169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791557, 31.853065, 47.360867>,  <34.917397, 31.657652, 47.420685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791557, 31.853065, 47.360867>,  <34.581829, 32.178757, 47.261169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791557, 31.853065, 47.360867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535222, -0.087477, 0.840169,
		-0.662285, -0.573920, -0.481658,
		0.524324, -0.814226, 0.249240,
		34.948856, 31.608797, 47.435638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999138, 31.744612, 47.327343>,  <34.581829, 32.178757, 47.261169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999138, 31.744612, 47.327343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.321384, 31.579744, 47.497562>,  <34.514732, 31.480824, 47.599693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.321384, 31.579744, 47.497562>,  <33.999138, 31.744612, 47.327343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321384, 31.579744, 47.497562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497012, -0.079281, 0.864114,
		-0.322423, -0.907651, -0.268723,
		0.805619, -0.412169, 0.425551,
		34.563072, 31.456095, 47.625229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836338, 31.079645, 47.559856>,  <33.999138, 31.744612, 47.327343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836338, 31.079645, 47.559856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.146633, 31.178621, 47.792065>,  <34.332809, 31.238007, 47.931389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.146633, 31.178621, 47.792065>,  <33.836338, 31.079645, 47.559856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146633, 31.178621, 47.792065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564425, -0.139371, 0.813634,
		0.282233, -0.958827, 0.031546,
		0.775738, 0.247440, 0.580520,
		34.379356, 31.252853, 47.966221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792656, 30.702412, 48.073723>,  <33.836338, 31.079645, 47.559856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792656, 30.702412, 48.073723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029087, 30.992580, 48.214802>,  <34.170944, 31.166681, 48.299450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029087, 30.992580, 48.214802>,  <33.792656, 30.702412, 48.073723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029087, 30.992580, 48.214802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424712, -0.091839, 0.900658,
		0.685749, -0.682149, 0.253812,
		0.591074, 0.725423, 0.352695,
		34.206409, 31.210207, 48.320610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995155, 30.377901, 48.627651>,  <33.792656, 30.702412, 48.073723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995155, 30.377901, 48.627651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049072, 30.768414, 48.695427>,  <34.081421, 31.002722, 48.736092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049072, 30.768414, 48.695427>,  <33.995155, 30.377901, 48.627651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049072, 30.768414, 48.695427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572634, -0.062802, 0.817402,
		0.808655, -0.207200, 0.550587,
		0.134788, 0.976281, 0.169436,
		34.089508, 31.061298, 48.746258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080765, 30.420040, 49.320126>,  <33.995155, 30.377901, 48.627651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080765, 30.420040, 49.320126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.963078, 30.778603, 49.187523>,  <33.892467, 30.993740, 49.107964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.963078, 30.778603, 49.187523>,  <34.080765, 30.420040, 49.320126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963078, 30.778603, 49.187523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644207, 0.070220, 0.761621,
		0.705999, 0.437637, 0.556811,
		-0.294214, 0.896405, -0.331504,
		33.874813, 31.047523, 49.088070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198635, 30.835451, 49.924709>,  <34.080765, 30.420040, 49.320126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198635, 30.835451, 49.924709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947945, 31.014231, 49.669384>,  <33.797531, 31.121498, 49.516190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947945, 31.014231, 49.669384>,  <34.198635, 30.835451, 49.924709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947945, 31.014231, 49.669384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637546, 0.176891, 0.749830,
		0.448047, 0.876897, 0.174086,
		-0.626729, 0.446947, -0.638318,
		33.759926, 31.148315, 49.477890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929539, 31.458546, 50.283474>,  <34.198635, 30.835451, 49.924709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929539, 31.458546, 50.283474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669140, 31.369267, 49.993263>,  <33.512901, 31.315699, 49.819138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.669140, 31.369267, 49.993263>,  <33.929539, 31.458546, 50.283474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669140, 31.369267, 49.993263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755143, 0.093154, 0.648908,
		-0.077249, 0.970312, -0.229189,
		-0.650993, -0.223198, -0.725528,
		33.473843, 31.302307, 49.775604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404728, 32.113636, 50.180336>,  <33.929539, 31.458546, 50.283474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404728, 32.113636, 50.180336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.267666, 31.750973, 50.081905>,  <33.185429, 31.533375, 50.022846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.267666, 31.750973, 50.081905>,  <33.404728, 32.113636, 50.180336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267666, 31.750973, 50.081905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727584, 0.090406, 0.680035,
		-0.594315, 0.412057, -0.690651,
		-0.342652, -0.906662, -0.246076,
		33.164871, 31.478973, 50.008083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719112, 32.154373, 50.354801>,  <33.404728, 32.113636, 50.180336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719112, 32.154373, 50.354801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.748280, 31.763929, 50.272934>,  <32.765781, 31.529663, 50.223816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.748280, 31.763929, 50.272934>,  <32.719112, 32.154373, 50.354801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748280, 31.763929, 50.272934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836209, -0.171677, 0.520848,
		-0.543542, 0.133161, -0.828752,
		0.072921, -0.976112, -0.204663,
		32.770157, 31.471096, 50.211536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148083, 31.857586, 50.009056>,  <32.719112, 32.154373, 50.354801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148083, 31.857586, 50.009056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272583, 31.544916, 50.225243>,  <32.347282, 31.357315, 50.354954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272583, 31.544916, 50.225243>,  <32.148083, 31.857586, 50.009056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272583, 31.544916, 50.225243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794419, 0.098113, 0.599393,
		-0.521557, -0.615921, -0.590440,
		0.311249, -0.781675, 0.540471,
		32.365959, 31.310413, 50.387383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537903, 31.990391, 50.229576>,  <32.148083, 31.857586, 50.009056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537903, 31.990391, 50.229576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.467516, 32.377209, 50.303177>,  <31.425283, 32.609299, 50.347336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.467516, 32.377209, 50.303177>,  <31.537903, 31.990391, 50.229576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467516, 32.377209, 50.303177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415408, 0.242407, -0.876741,
		-0.892453, -0.077842, -0.444374,
		-0.175967, 0.967047, 0.184001,
		31.414726, 32.667324, 50.358376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283161, 32.176880, 49.519432>,  <31.537903, 31.990391, 50.229576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283161, 32.176880, 49.519432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.399647, 32.505711, 49.715141>,  <31.469538, 32.703007, 49.832565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.399647, 32.505711, 49.715141>,  <31.283161, 32.176880, 49.519432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399647, 32.505711, 49.715141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271326, 0.419463, -0.866275,
		-0.917375, 0.385023, -0.100897,
		0.291214, 0.822075, 0.489272,
		31.487011, 32.752335, 49.861923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937222, 32.709114, 49.106319>,  <31.283161, 32.176880, 49.519432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937222, 32.709114, 49.106319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.225866, 32.872200, 49.330120>,  <31.399054, 32.970051, 49.464401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.225866, 32.872200, 49.330120>,  <30.937222, 32.709114, 49.106319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225866, 32.872200, 49.330120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346918, 0.486430, -0.801894,
		-0.599103, 0.772759, 0.209570,
		0.721612, 0.407713, 0.559506,
		31.442350, 32.994514, 49.497971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899294, 33.423889, 48.914501>,  <30.937222, 32.709114, 49.106319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899294, 33.423889, 48.914501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.265604, 33.339882, 49.051468>,  <31.485390, 33.289478, 49.133648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.265604, 33.339882, 49.051468>,  <30.899294, 33.423889, 48.914501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265604, 33.339882, 49.051468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401451, 0.508205, -0.761948,
		-0.013998, 0.835237, 0.549712,
		0.915774, -0.210016, 0.342420,
		31.540337, 33.276878, 49.154194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288139, 33.989864, 48.845417>,  <30.899294, 33.423889, 48.914501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288139, 33.989864, 48.845417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.572865, 33.710239, 48.872631>,  <31.743700, 33.542465, 48.888958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.572865, 33.710239, 48.872631>,  <31.288139, 33.989864, 48.845417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572865, 33.710239, 48.872631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482021, 0.415749, -0.771238,
		0.510861, 0.581772, 0.632900,
		0.711812, -0.699067, 0.068036,
		31.786407, 33.500519, 48.893044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765713, 34.407917, 48.528946>,  <31.288139, 33.989864, 48.845417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765713, 34.407917, 48.528946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895519, 34.031425, 48.566429>,  <31.973402, 33.805531, 48.588921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895519, 34.031425, 48.566429>,  <31.765713, 34.407917, 48.528946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895519, 34.031425, 48.566429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609416, 0.132282, -0.781738,
		0.723397, 0.310793, 0.616526,
		0.324514, -0.941227, 0.093710,
		31.992874, 33.749058, 48.594543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435547, 34.452820, 48.412094>,  <31.765713, 34.407917, 48.528946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435547, 34.452820, 48.412094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.356567, 34.069145, 48.331127>,  <32.309177, 33.838940, 48.282547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.356567, 34.069145, 48.331127>,  <32.435547, 34.452820, 48.412094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356567, 34.069145, 48.331127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571931, 0.054984, -0.818457,
		0.796184, -0.277373, 0.537732,
		-0.197451, -0.959188, -0.202415,
		32.297333, 33.781387, 48.270401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111931, 34.151752, 48.133591>,  <32.435547, 34.452820, 48.412094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111931, 34.151752, 48.133591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813221, 33.922459, 47.998695>,  <32.633995, 33.784882, 47.917759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813221, 33.922459, 47.998695>,  <33.111931, 34.151752, 48.133591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813221, 33.922459, 47.998695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452494, -0.066302, -0.889299,
		0.487419, -0.816704, 0.308898,
		-0.746775, -0.573236, -0.337237,
		32.589188, 33.750488, 47.897526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465195, 33.640877, 47.795296>,  <33.111931, 34.151752, 48.133591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465195, 33.640877, 47.795296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.087490, 33.653885, 47.664261>,  <32.860867, 33.661690, 47.585640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.087490, 33.653885, 47.664261>,  <33.465195, 33.640877, 47.795296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087490, 33.653885, 47.664261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325749, -0.051453, -0.944055,
		-0.047496, -0.998148, 0.038012,
		-0.944262, 0.032456, -0.327589,
		32.804211, 33.663639, 47.565983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400547, 33.097290, 47.325787>,  <33.465195, 33.640877, 47.795296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400547, 33.097290, 47.325787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113510, 33.358387, 47.228630>,  <32.941288, 33.515045, 47.170338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113510, 33.358387, 47.228630>,  <33.400547, 33.097290, 47.325787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113510, 33.358387, 47.228630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234424, -0.102024, -0.966766,
		-0.655828, -0.750680, -0.079806,
		-0.717590, 0.652740, -0.242887,
		32.898232, 33.554211, 47.155766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064938, 32.865585, 46.686352>,  <33.400547, 33.097290, 47.325787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064938, 32.865585, 46.686352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973881, 33.254440, 46.708725>,  <32.919247, 33.487755, 46.722149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973881, 33.254440, 46.708725>,  <33.064938, 32.865585, 46.686352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973881, 33.254440, 46.708725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065659, 0.072636, -0.995195,
		-0.971529, -0.222874, -0.080364,
		-0.227640, 0.972137, 0.055934,
		32.905590, 33.546082, 46.725506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562649, 32.964233, 46.118286>,  <33.064938, 32.865585, 46.686352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562649, 32.964233, 46.118286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732597, 33.320091, 46.185246>,  <32.834568, 33.533604, 46.225422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732597, 33.320091, 46.185246>,  <32.562649, 32.964233, 46.118286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732597, 33.320091, 46.185246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008580, 0.188869, -0.981965,
		-0.905212, 0.415775, 0.087878,
		0.424874, 0.889640, 0.167399,
		32.860058, 33.586983, 46.235466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178093, 33.432491, 45.767838>,  <32.562649, 32.964233, 46.118286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178093, 33.432491, 45.767838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.532070, 33.611244, 45.820248>,  <32.744457, 33.718494, 45.851692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.532070, 33.611244, 45.820248>,  <32.178093, 33.432491, 45.767838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532070, 33.611244, 45.820248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043565, 0.359555, -0.932106,
		-0.463653, 0.819155, 0.337655,
		0.884945, 0.446883, 0.131022,
		32.797554, 33.745308, 45.859554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541718, 33.826126, 45.479321>,  <32.178093, 33.432491, 45.767838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541718, 33.826126, 45.479321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.308064, 33.521347, 45.367447>,  <31.167871, 33.338478, 45.300323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.308064, 33.521347, 45.367447>,  <31.541718, 33.826126, 45.479321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308064, 33.521347, 45.367447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183327, -0.211822, 0.959960,
		-0.790682, 0.612019, -0.015953,
		-0.584134, -0.761948, -0.279684,
		31.132824, 33.292763, 45.283543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062607, 33.862862, 46.015541>,  <31.541718, 33.826126, 45.479321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062607, 33.862862, 46.015541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.945892, 33.520424, 45.844913>,  <30.875864, 33.314960, 45.742538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.945892, 33.520424, 45.844913>,  <31.062607, 33.862862, 46.015541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945892, 33.520424, 45.844913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351502, -0.318792, 0.880237,
		-0.889554, 0.406781, -0.207900,
		-0.291787, -0.856096, -0.426567,
		30.858356, 33.263596, 45.716942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483772, 33.801868, 46.307636>,  <31.062607, 33.862862, 46.015541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483772, 33.801868, 46.307636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.582817, 33.441452, 46.165195>,  <30.642244, 33.225201, 46.079731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.582817, 33.441452, 46.165195>,  <30.483772, 33.801868, 46.307636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582817, 33.441452, 46.165195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286688, -0.419230, 0.861427,
		-0.925472, -0.111210, -0.362125,
		0.247613, -0.901043, -0.356103,
		30.657101, 33.171139, 46.058365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834135, 33.470612, 46.235165>,  <30.483772, 33.801868, 46.307636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834135, 33.470612, 46.235165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.124414, 33.195686, 46.247555>,  <30.298582, 33.030731, 46.254990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.124414, 33.195686, 46.247555>,  <29.834135, 33.470612, 46.235165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124414, 33.195686, 46.247555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459649, -0.450837, 0.765160,
		-0.511941, -0.569512, -0.643095,
		0.725699, -0.687315, 0.030974,
		30.342125, 32.989491, 46.256847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566786, 32.870495, 46.040894>,  <29.834135, 33.470612, 46.235165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566786, 32.870495, 46.040894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.886154, 32.751774, 46.250439>,  <30.077774, 32.680542, 46.376167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.886154, 32.751774, 46.250439>,  <29.566786, 32.870495, 46.040894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886154, 32.751774, 46.250439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598639, -0.484479, 0.637896,
		0.064475, -0.822916, -0.564492,
		0.798420, -0.296799, 0.523867,
		30.125681, 32.662735, 46.407600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416014, 32.187523, 46.203407>,  <29.566786, 32.870495, 46.040894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416014, 32.187523, 46.203407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.697432, 32.280785, 46.471935>,  <29.866282, 32.336742, 46.633053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.697432, 32.280785, 46.471935>,  <29.416014, 32.187523, 46.203407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697432, 32.280785, 46.471935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436628, -0.603501, 0.667190,
		0.560697, -0.762513, -0.322789,
		0.703544, 0.233153, 0.671316,
		29.908495, 32.350731, 46.673328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469208, 31.571579, 46.748852>,  <29.416014, 32.187523, 46.203407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469208, 31.571579, 46.748852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.642370, 31.885551, 46.926155>,  <29.746267, 32.073936, 47.032536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.642370, 31.885551, 46.926155>,  <29.469208, 31.571579, 46.748852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642370, 31.885551, 46.926155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369752, -0.293831, 0.881446,
		0.822117, -0.545478, 0.163028,
		0.432907, 0.784932, 0.443254,
		29.772242, 32.121033, 47.059132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389208, 30.763350, 46.810375>,  <29.469208, 31.571579, 46.748852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389208, 30.763350, 46.810375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.051266, 30.593920, 46.679649>,  <28.848501, 30.492262, 46.601215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.051266, 30.593920, 46.679649>,  <29.389208, 30.763350, 46.810375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051266, 30.593920, 46.679649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327303, 0.073988, -0.942018,
		0.423196, -0.902834, 0.076128,
		-0.844853, -0.423575, -0.326812,
		28.797810, 30.466846, 46.581604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620028, 30.222113, 46.440414>,  <29.389208, 30.763350, 46.810375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620028, 30.222113, 46.440414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.244234, 30.277534, 46.315086>,  <29.018757, 30.310787, 46.239887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.244234, 30.277534, 46.315086>,  <29.620028, 30.222113, 46.440414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244234, 30.277534, 46.315086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315043, -0.009909, -0.949026,
		-0.134598, -0.990305, -0.034342,
		-0.939485, 0.138556, -0.313322,
		28.962389, 30.319101, 46.221088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539877, 29.801758, 45.829079>,  <29.620028, 30.222113, 46.440414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539877, 29.801758, 45.829079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.244812, 30.070320, 45.800606>,  <29.067774, 30.231457, 45.783524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.244812, 30.070320, 45.800606>,  <29.539877, 29.801758, 45.829079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244812, 30.070320, 45.800606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379431, 0.325034, -0.866248,
		-0.558467, -0.666008, -0.494518,
		-0.737663, 0.671407, -0.071183,
		29.023514, 30.271742, 45.779251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297235, 29.652592, 45.235764>,  <29.539877, 29.801758, 45.829079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297235, 29.652592, 45.235764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.150457, 30.020800, 45.289421>,  <29.062389, 30.241724, 45.321613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.150457, 30.020800, 45.289421>,  <29.297235, 29.652592, 45.235764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150457, 30.020800, 45.289421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158028, 0.203789, -0.966177,
		-0.916721, -0.333337, -0.220247,
		-0.366946, 0.920520, 0.134141,
		29.040373, 30.296955, 45.329662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881216, 29.758553, 44.620144>,  <29.297235, 29.652592, 45.235764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881216, 29.758553, 44.620144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.963507, 30.119987, 44.770454>,  <29.012882, 30.336847, 44.860641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.963507, 30.119987, 44.770454>,  <28.881216, 29.758553, 44.620144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963507, 30.119987, 44.770454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242782, 0.324862, -0.914069,
		-0.948015, 0.279283, -0.152541,
		0.205729, 0.903585, 0.375779,
		29.025225, 30.391064, 44.883186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521618, 30.293135, 44.191593>,  <28.881216, 29.758553, 44.620144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521618, 30.293135, 44.191593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.849562, 30.441322, 44.366219>,  <29.046328, 30.530235, 44.470993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.849562, 30.441322, 44.366219>,  <28.521618, 30.293135, 44.191593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849562, 30.441322, 44.366219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385360, 0.206889, -0.899274,
		-0.423472, 0.905511, 0.026856,
		0.819859, 0.370468, 0.436560,
		29.095520, 30.552464, 44.497185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650255, 30.833948, 43.764565>,  <28.521618, 30.293135, 44.191593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650255, 30.833948, 43.764565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.995623, 30.806046, 43.964420>,  <29.202843, 30.789303, 44.084335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.995623, 30.806046, 43.964420>,  <28.650255, 30.833948, 43.764565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995623, 30.806046, 43.964420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499639, 0.255185, -0.827793,
		-0.069756, 0.964373, 0.255185,
		0.863421, -0.069757, 0.499639,
		29.254648, 30.785118, 44.114311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.054283, 28.721275, 48.180859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.092224, 29.094599, 48.319386>,  <32.114990, 29.318594, 48.402500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.092224, 29.094599, 48.319386>,  <32.054283, 28.721275, 48.180859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092224, 29.094599, 48.319386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192286, 0.324158, -0.926255,
		-0.976744, 0.154450, -0.148715,
		0.094852, 0.933310, 0.346318,
		32.120678, 29.374592, 48.423283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618296, 29.277668, 47.824692>,  <32.054283, 28.721275, 48.180859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618296, 29.277668, 47.824692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.943985, 29.453487, 47.976395>,  <32.139397, 29.558979, 48.067417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.943985, 29.453487, 47.976395>,  <31.618296, 29.277668, 47.824692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943985, 29.453487, 47.976395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272795, 0.286988, -0.918270,
		-0.512469, 0.851137, 0.113765,
		0.814223, 0.439550, 0.379258,
		32.188251, 29.585352, 48.090172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672251, 29.988644, 47.548523>,  <31.618296, 29.277668, 47.824692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672251, 29.988644, 47.548523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.029728, 29.866486, 47.680004>,  <32.244213, 29.793190, 47.758892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.029728, 29.866486, 47.680004>,  <31.672251, 29.988644, 47.548523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029728, 29.866486, 47.680004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419984, 0.311632, -0.852349,
		0.157870, 0.899788, 0.406766,
		0.893695, -0.305396, 0.328699,
		32.297836, 29.774866, 47.778614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165695, 30.471760, 47.364212>,  <31.672251, 29.988644, 47.548523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165695, 30.471760, 47.364212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.393127, 30.155697, 47.455750>,  <32.529587, 29.966059, 47.510674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.393127, 30.155697, 47.455750>,  <32.165695, 30.471760, 47.364212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393127, 30.155697, 47.455750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499718, 0.110779, -0.859075,
		0.653455, 0.602807, 0.457843,
		0.568576, -0.790159, 0.228844,
		32.563702, 29.918650, 47.524403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829273, 30.663586, 47.165604>,  <32.165695, 30.471760, 47.364212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829273, 30.663586, 47.165604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.832180, 30.264742, 47.195866>,  <32.833923, 30.025436, 47.214024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.832180, 30.264742, 47.195866>,  <32.829273, 30.663586, 47.165604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832180, 30.264742, 47.195866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621823, -0.054743, -0.781242,
		0.783124, 0.052724, 0.619626,
		0.007270, -0.997108, 0.075655,
		32.834362, 29.965611, 47.218563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585121, 30.506878, 47.077309>,  <32.829273, 30.663586, 47.165604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585121, 30.506878, 47.077309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.348202, 30.197611, 46.986633>,  <33.206051, 30.012051, 46.932228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.348202, 30.197611, 46.986633>,  <33.585121, 30.506878, 47.077309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348202, 30.197611, 46.986633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561012, -0.193817, -0.804798,
		0.578310, -0.603857, 0.548556,
		-0.592303, -0.773170, -0.226685,
		33.170509, 29.965660, 46.918629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023079, 30.012293, 46.950523>,  <33.585121, 30.506878, 47.077309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023079, 30.012293, 46.950523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.705235, 29.860470, 46.760986>,  <33.514526, 29.769377, 46.647263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.705235, 29.860470, 46.760986>,  <34.023079, 30.012293, 46.950523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705235, 29.860470, 46.760986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540998, -0.088476, -0.836357,
		0.275521, -0.920928, 0.275643,
		-0.794613, -0.379556, -0.473843,
		33.466850, 29.746603, 46.618832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285728, 29.469429, 46.599968>,  <34.023079, 30.012293, 46.950523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285728, 29.469429, 46.599968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.951637, 29.579060, 46.409275>,  <33.751183, 29.644838, 46.294861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.951637, 29.579060, 46.409275>,  <34.285728, 29.469429, 46.599968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951637, 29.579060, 46.409275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432831, -0.207069, -0.877371,
		-0.339181, -0.939151, 0.054323,
		-0.835233, 0.274075, -0.476728,
		33.701069, 29.661282, 46.266258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176502, 28.955267, 46.102081>,  <34.285728, 29.469429, 46.599968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176502, 28.955267, 46.102081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.936611, 29.246536, 45.969368>,  <33.792675, 29.421299, 45.889740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.936611, 29.246536, 45.969368>,  <34.176502, 28.955267, 46.102081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936611, 29.246536, 45.969368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322083, -0.159895, -0.933111,
		-0.732519, -0.666479, -0.138639,
		-0.599731, 0.728175, -0.331788,
		33.756691, 29.464989, 45.869831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813839, 28.721468, 45.579514>,  <34.176502, 28.955267, 46.102081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813839, 28.721468, 45.579514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.750614, 29.111534, 45.517456>,  <33.712677, 29.345573, 45.480221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.750614, 29.111534, 45.517456>,  <33.813839, 28.721468, 45.579514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750614, 29.111534, 45.517456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191627, -0.123840, -0.973623,
		-0.968656, -0.183625, -0.167293,
		-0.158064, 0.975164, -0.155146,
		33.703194, 29.404083, 45.470913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267929, 28.824154, 44.925335>,  <33.813839, 28.721468, 45.579514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267929, 28.824154, 44.925335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.493233, 29.153885, 44.948059>,  <33.628414, 29.351723, 44.961693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.493233, 29.153885, 44.948059>,  <33.267929, 28.824154, 44.925335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493233, 29.153885, 44.948059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204125, -0.072194, -0.976279,
		-0.800670, 0.561494, -0.208929,
		0.563259, 0.824325, 0.056811,
		33.662209, 29.401182, 44.965103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091141, 29.194983, 44.366249>,  <33.267929, 28.824154, 44.925335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091141, 29.194983, 44.366249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.448994, 29.324289, 44.489620>,  <33.663704, 29.401875, 44.563644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.448994, 29.324289, 44.489620>,  <33.091141, 29.194983, 44.366249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448994, 29.324289, 44.489620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336149, -0.032221, -0.941257,
		-0.294340, 0.945759, -0.137492,
		0.894633, 0.323268, 0.308432,
		33.717384, 29.421270, 44.582150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512814, 29.747936, 44.235168>,  <33.091141, 29.194983, 44.366249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512814, 29.747936, 44.235168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.214527, 29.546877, 44.060242>,  <32.035553, 29.426241, 43.955284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.214527, 29.546877, 44.060242>,  <32.512814, 29.747936, 44.235168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214527, 29.546877, 44.060242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337952, -0.280299, 0.898454,
		-0.574186, 0.817788, 0.039154,
		-0.745720, -0.502648, -0.437317,
		31.990810, 29.396082, 43.929047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864002, 29.868803, 44.511761>,  <32.512814, 29.747936, 44.235168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864002, 29.868803, 44.511761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.793333, 29.518047, 44.332943>,  <31.750931, 29.307594, 44.225651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.793333, 29.518047, 44.332943>,  <31.864002, 29.868803, 44.511761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793333, 29.518047, 44.332943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380843, -0.357910, 0.852560,
		-0.907604, 0.320879, -0.270725,
		-0.176674, -0.876890, -0.447045,
		31.740332, 29.254980, 44.198830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359365, 29.663586, 44.749542>,  <31.864002, 29.868803, 44.511761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359365, 29.663586, 44.749542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.477579, 29.313919, 44.595402>,  <31.548508, 29.104118, 44.502918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.477579, 29.313919, 44.595402>,  <31.359365, 29.663586, 44.749542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477579, 29.313919, 44.595402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395095, -0.479092, 0.783818,
		-0.869804, -0.079398, -0.486967,
		0.295536, -0.874166, -0.385347,
		31.566240, 29.051670, 44.479797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784245, 29.202421, 44.552250>,  <31.359365, 29.663586, 44.749542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784245, 29.202421, 44.552250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.089041, 28.950428, 44.612236>,  <31.271919, 28.799232, 44.648228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.089041, 28.950428, 44.612236>,  <30.784245, 29.202421, 44.552250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089041, 28.950428, 44.612236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595385, -0.590439, 0.544883,
		-0.254723, -0.504483, -0.824993,
		0.761993, -0.629983, 0.149963,
		31.317638, 28.761433, 44.657227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399479, 28.527309, 44.593178>,  <30.784245, 29.202421, 44.552250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399479, 28.527309, 44.593178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.761385, 28.477303, 44.756039>,  <30.978529, 28.447298, 44.853756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.761385, 28.477303, 44.756039>,  <30.399479, 28.527309, 44.593178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761385, 28.477303, 44.756039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409227, -0.520130, 0.749665,
		0.118051, -0.844888, -0.521755,
		0.904764, -0.125017, 0.407153,
		31.032814, 28.439796, 44.878185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337383, 27.876053, 44.822475>,  <30.399479, 28.527309, 44.593178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337383, 27.876053, 44.822475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.611034, 28.081823, 45.029293>,  <30.775225, 28.205286, 45.153385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.611034, 28.081823, 45.029293>,  <30.337383, 27.876053, 44.822475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.611034, 28.081823, 45.029293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385093, -0.347268, 0.855049,
		0.619413, -0.784073, -0.039473,
		0.684128, 0.514427, 0.517043,
		30.816273, 28.236151, 45.184406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496464, 27.543341, 45.439899>,  <30.337383, 27.876053, 44.822475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496464, 27.543341, 45.439899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.634211, 27.902657, 45.549072>,  <30.716858, 28.118246, 45.614574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.634211, 27.902657, 45.549072>,  <30.496464, 27.543341, 45.439899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634211, 27.902657, 45.549072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294486, -0.172685, 0.939924,
		0.891453, -0.404053, 0.205066,
		0.344367, 0.898288, 0.272928,
		30.737520, 28.172142, 45.630951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759867, 27.495827, 46.126095>,  <30.496464, 27.543341, 45.439899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759867, 27.495827, 46.126095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.744505, 27.893276, 46.083694>,  <30.735289, 28.131746, 46.058254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.744505, 27.893276, 46.083694>,  <30.759867, 27.495827, 46.126095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744505, 27.893276, 46.083694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173992, 0.097810, 0.979877,
		0.983998, 0.056073, 0.169127,
		-0.038402, 0.993624, -0.106001,
		30.732985, 28.191364, 46.051895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246887, 27.866039, 46.608105>,  <30.759867, 27.495827, 46.126095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246887, 27.866039, 46.608105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.960814, 28.128025, 46.510509>,  <30.789169, 28.285217, 46.451950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.960814, 28.128025, 46.510509>,  <31.246887, 27.866039, 46.608105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960814, 28.128025, 46.510509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249614, 0.086718, 0.964455,
		0.652843, 0.750666, 0.101469,
		-0.715184, 0.654966, -0.243990,
		30.746258, 28.324514, 46.437313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320583, 28.447905, 47.048935>,  <31.246887, 27.866039, 46.608105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320583, 28.447905, 47.048935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.943838, 28.468365, 46.916103>,  <30.717791, 28.480640, 46.836403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.943838, 28.468365, 46.916103>,  <31.320583, 28.447905, 47.048935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943838, 28.468365, 46.916103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310954, 0.241706, 0.919177,
		0.127280, 0.969001, -0.211749,
		-0.941864, 0.051148, -0.332079,
		30.661280, 28.483709, 46.816479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964521, 28.834404, 47.590137>,  <31.320583, 28.447905, 47.048935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964521, 28.834404, 47.590137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.646574, 28.691431, 47.394005>,  <30.455805, 28.605648, 47.276325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.646574, 28.691431, 47.394005>,  <30.964521, 28.834404, 47.590137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646574, 28.691431, 47.394005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469848, -0.148775, 0.870120,
		-0.383958, 0.922013, -0.049682,
		-0.794871, -0.357432, -0.490329,
		30.408113, 28.584202, 47.246906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339428, 29.046883, 47.943325>,  <30.964521, 28.834404, 47.590137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339428, 29.046883, 47.943325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.192711, 28.742128, 47.729786>,  <30.104681, 28.559277, 47.601662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.192711, 28.742128, 47.729786>,  <30.339428, 29.046883, 47.943325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192711, 28.742128, 47.729786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609481, -0.236744, 0.756628,
		-0.702849, 0.602896, -0.377518,
		-0.366792, -0.761885, -0.533849,
		30.082674, 28.513563, 47.569630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653833, 29.103132, 47.927475>,  <30.339428, 29.046883, 47.943325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653833, 29.103132, 47.927475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.703920, 28.713057, 47.854454>,  <29.733973, 28.479012, 47.810642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.703920, 28.713057, 47.854454>,  <29.653833, 29.103132, 47.927475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703920, 28.713057, 47.854454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664572, -0.219066, 0.714390,
		-0.736658, 0.031868, -0.675515,
		0.125216, -0.975189, -0.182555,
		29.741486, 28.420500, 47.799686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040464, 28.842428, 48.095318>,  <29.653833, 29.103132, 47.927475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040464, 28.842428, 48.095318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.252176, 28.503843, 48.072128>,  <29.379204, 28.300692, 48.058216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.252176, 28.503843, 48.072128>,  <29.040464, 28.842428, 48.095318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252176, 28.503843, 48.072128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566535, -0.403457, 0.718512,
		-0.631585, -0.347450, -0.693094,
		0.529280, -0.846464, -0.057974,
		29.410961, 28.249905, 48.054737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802673, 28.395931, 48.570141>,  <29.040464, 28.842428, 48.095318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802673, 28.395931, 48.570141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.627142, 28.711271, 48.742622>,  <28.521824, 28.900475, 48.846111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.627142, 28.711271, 48.742622>,  <28.802673, 28.395931, 48.570141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627142, 28.711271, 48.742622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118528, 0.424898, -0.897448,
		-0.890720, -0.444934, -0.093015,
		-0.438827, 0.788350, 0.431202,
		28.495493, 28.947777, 48.871983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260376, 28.528341, 48.169060>,  <28.802673, 28.395931, 48.570141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260376, 28.528341, 48.169060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.394436, 28.859554, 48.348854>,  <28.474871, 29.058283, 48.456730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.394436, 28.859554, 48.348854>,  <28.260376, 28.528341, 48.169060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394436, 28.859554, 48.348854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028829, 0.485869, -0.873556,
		-0.941724, 0.279812, 0.186709,
		0.335147, 0.828032, 0.449488,
		28.494980, 29.107964, 48.483700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752277, 29.123909, 47.940186>,  <28.260376, 28.528341, 48.169060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752277, 29.123909, 47.940186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.037899, 29.338579, 48.120010>,  <28.209272, 29.467382, 48.227905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.037899, 29.338579, 48.120010>,  <27.752277, 29.123909, 47.940186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037899, 29.338579, 48.120010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138830, 0.737941, -0.660431,
		-0.686188, 0.409171, 0.601436,
		0.714053, 0.536677, 0.449561,
		28.252115, 29.499582, 48.254879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476709, 29.827761, 48.127602>,  <27.752277, 29.123909, 47.940186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476709, 29.827761, 48.127602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.870800, 29.827179, 48.059101>,  <28.107254, 29.826830, 48.018002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.870800, 29.827179, 48.059101>,  <27.476709, 29.827761, 48.127602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870800, 29.827179, 48.059101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124665, 0.679518, -0.722990,
		0.117416, 0.733658, 0.669298,
		0.985227, -0.001452, -0.171248,
		28.166368, 29.826744, 48.007729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627787, 30.460625, 47.916100>,  <27.476709, 29.827761, 48.127602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627787, 30.460625, 47.916100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.958498, 30.272997, 47.791901>,  <28.156925, 30.160419, 47.717381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.958498, 30.272997, 47.791901>,  <27.627787, 30.460625, 47.916100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958498, 30.272997, 47.791901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062216, 0.624837, -0.778273,
		0.559078, 0.624140, 0.545785,
		0.826778, -0.469072, -0.310501,
		28.206532, 30.132275, 47.698750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077583, 30.993004, 47.652779>,  <27.627787, 30.460625, 47.916100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077583, 30.993004, 47.652779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.241852, 30.667685, 47.487904>,  <28.340412, 30.472494, 47.388977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.241852, 30.667685, 47.487904>,  <28.077583, 30.993004, 47.652779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241852, 30.667685, 47.487904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059849, 0.475137, -0.877874,
		0.909818, 0.335847, 0.243799,
		0.410669, -0.813297, -0.412188,
		28.365053, 30.423695, 47.364246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658760, 31.165525, 47.329254>,  <28.077583, 30.993004, 47.652779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658760, 31.165525, 47.329254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.541422, 30.828344, 47.148865>,  <28.471020, 30.626036, 47.040630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.541422, 30.828344, 47.148865>,  <28.658760, 31.165525, 47.329254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541422, 30.828344, 47.148865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399620, 0.320415, -0.858858,
		0.868478, -0.432158, 0.242870,
		-0.293343, -0.842955, -0.450973,
		28.453419, 30.575459, 47.013573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509842, 31.350985, 47.469051>,  <28.658760, 31.165525, 47.329254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509842, 31.350985, 47.469051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.597164, 31.738403, 47.516811>,  <29.649557, 31.970856, 47.545467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.597164, 31.738403, 47.516811>,  <29.509842, 31.350985, 47.469051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597164, 31.738403, 47.516811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578838, 0.030007, 0.814890,
		0.785677, -0.247011, 0.567183,
		0.218306, 0.968548, 0.119404,
		29.662657, 32.028969, 47.552631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797520, 31.417879, 48.111927>,  <29.509842, 31.350985, 47.469051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797520, 31.417879, 48.111927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.645658, 31.771730, 48.003635>,  <29.554541, 31.984041, 47.938660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.645658, 31.771730, 48.003635>,  <29.797520, 31.417879, 48.111927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645658, 31.771730, 48.003635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449091, 0.079619, 0.889932,
		0.808814, 0.459450, 0.367051,
		-0.379655, 0.884628, -0.270732,
		29.531761, 32.037117, 47.922417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013474, 31.879435, 48.628445>,  <29.797520, 31.417879, 48.111927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013474, 31.879435, 48.628445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.685875, 32.023510, 48.449780>,  <29.489315, 32.109955, 48.342579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.685875, 32.023510, 48.449780>,  <30.013474, 31.879435, 48.628445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685875, 32.023510, 48.449780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437378, 0.111993, 0.892277,
		0.371411, 0.926133, 0.065817,
		-0.818996, 0.360188, -0.446665,
		29.440176, 32.131565, 48.315781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703358, 32.235271, 49.060188>,  <30.013474, 31.879435, 48.628445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703358, 32.235271, 49.060188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.378685, 32.291706, 48.833466>,  <29.183882, 32.325569, 48.697433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.378685, 32.291706, 48.833466>,  <29.703358, 32.235271, 49.060188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378685, 32.291706, 48.833466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517380, 0.276706, 0.809785,
		0.271090, 0.950541, -0.151601,
		-0.811683, 0.141089, -0.566803,
		29.135180, 32.334034, 48.663425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420435, 33.002125, 49.259487>,  <29.703358, 32.235271, 49.060188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420435, 33.002125, 49.259487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.117645, 32.782295, 49.118088>,  <28.935972, 32.650398, 49.033249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.117645, 32.782295, 49.118088>,  <29.420435, 33.002125, 49.259487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117645, 32.782295, 49.118088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518167, 0.175246, 0.837133,
		-0.398114, 0.816860, -0.417426,
		-0.756973, -0.549570, -0.353502,
		28.890553, 32.617424, 49.012035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803476, 33.452194, 49.460629>,  <29.420435, 33.002125, 49.259487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803476, 33.452194, 49.460629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.668440, 33.082657, 49.388458>,  <28.587418, 32.860935, 49.345158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.668440, 33.082657, 49.388458>,  <28.803476, 33.452194, 49.460629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668440, 33.082657, 49.388458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690458, 0.112762, 0.714530,
		-0.639766, 0.365792, -0.675940,
		-0.337590, -0.923840, -0.180423,
		28.567163, 32.805504, 49.334332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141027, 33.461273, 49.409012>,  <28.803476, 33.452194, 49.460629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141027, 33.461273, 49.409012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.214281, 33.085217, 49.523975>,  <28.258232, 32.859585, 49.592953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.214281, 33.085217, 49.523975>,  <28.141027, 33.461273, 49.409012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214281, 33.085217, 49.523975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723932, 0.068830, 0.686429,
		-0.665120, -0.333772, -0.667991,
		0.183133, -0.940138, 0.287408,
		28.269220, 32.803177, 49.610199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521126, 33.271854, 49.700146>,  <28.141027, 33.461273, 49.409012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521126, 33.271854, 49.700146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.780779, 33.002747, 49.842140>,  <27.936571, 32.841282, 49.927338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.780779, 33.002747, 49.842140>,  <27.521126, 33.271854, 49.700146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780779, 33.002747, 49.842140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518362, -0.049691, 0.853717,
		-0.556712, -0.738185, -0.380992,
		0.649132, -0.672766, 0.354983,
		27.975519, 32.800919, 49.948635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123283, 32.692101, 49.997681>,  <27.521126, 33.271854, 49.700146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123283, 32.692101, 49.997681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.484097, 32.707150, 50.169693>,  <27.700584, 32.716179, 50.272900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.484097, 32.707150, 50.169693>,  <27.123283, 32.692101, 49.997681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484097, 32.707150, 50.169693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430469, 0.152675, 0.889599,
		-0.032189, -0.987560, 0.153911,
		0.902031, 0.037619, 0.430029,
		27.754705, 32.718437, 50.298702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.203327, 35.418606, 35.844372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540119, 35.420967, 36.060165>,  <35.742195, 35.422386, 36.189640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540119, 35.420967, 36.060165>,  <35.203327, 35.418606, 35.844372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540119, 35.420967, 36.060165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535533, -0.112120, 0.837038,
		0.065432, -0.993677, -0.091239,
		0.841976, 0.005908, 0.539484,
		35.792713, 35.422737, 36.222012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322632, 34.732189, 36.095119>,  <35.203327, 35.418606, 35.844372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322632, 34.732189, 36.095119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483021, 35.023327, 36.317638>,  <35.579254, 35.198009, 36.451149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483021, 35.023327, 36.317638>,  <35.322632, 34.732189, 36.095119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483021, 35.023327, 36.317638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492118, -0.341050, 0.800940,
		0.772682, -0.594921, 0.221431,
		0.400977, 0.727842, 0.556294,
		35.603313, 35.241680, 36.484528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558033, 34.431484, 36.711788>,  <35.322632, 34.732189, 36.095119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558033, 34.431484, 36.711788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525471, 34.819424, 36.803673>,  <35.505936, 35.052189, 36.858803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525471, 34.819424, 36.803673>,  <35.558033, 34.431484, 36.711788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525471, 34.819424, 36.803673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423729, -0.242287, 0.872783,
		0.902124, -0.026288, 0.430676,
		-0.081403, 0.969848, 0.229712,
		35.501049, 35.110378, 36.872585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754307, 34.457939, 37.416679>,  <35.558033, 34.431484, 36.711788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754307, 34.457939, 37.416679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530396, 34.782471, 37.349285>,  <35.396049, 34.977188, 37.308849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530396, 34.782471, 37.349285>,  <35.754307, 34.457939, 37.416679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530396, 34.782471, 37.349285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578504, -0.237064, 0.780470,
		0.593277, 0.534363, 0.602062,
		-0.559781, 0.811330, -0.168487,
		35.362461, 35.025871, 37.298740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567566, 34.612293, 37.987404>,  <35.754307, 34.457939, 37.416679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567566, 34.612293, 37.987404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292484, 34.818451, 37.782883>,  <35.127434, 34.942146, 37.660172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292484, 34.818451, 37.782883>,  <35.567566, 34.612293, 37.987404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292484, 34.818451, 37.782883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679362, -0.208539, 0.703548,
		0.255977, 0.831194, 0.493552,
		-0.687709, 0.515392, -0.511300,
		35.086170, 34.973068, 37.629494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340160, 35.219501, 38.433914>,  <35.567566, 34.612293, 37.987404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340160, 35.219501, 38.433914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032124, 35.183525, 38.181293>,  <34.847301, 35.161942, 38.029720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032124, 35.183525, 38.181293>,  <35.340160, 35.219501, 38.433914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032124, 35.183525, 38.181293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620808, -0.122159, 0.774387,
		-0.146796, 0.988427, 0.038241,
		-0.770096, -0.089937, -0.631556,
		34.801094, 35.156544, 37.991825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835754, 35.675934, 38.639336>,  <35.340160, 35.219501, 38.433914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835754, 35.675934, 38.639336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637573, 35.415928, 38.408855>,  <34.518665, 35.259926, 38.270569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637573, 35.415928, 38.408855>,  <34.835754, 35.675934, 38.639336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637573, 35.415928, 38.408855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752793, -0.009647, 0.658186,
		-0.433387, 0.759864, -0.484544,
		-0.495458, -0.650010, -0.576202,
		34.488937, 35.220924, 38.235996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127716, 35.908146, 38.701344>,  <34.835754, 35.675934, 38.639336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127716, 35.908146, 38.701344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095100, 35.524765, 38.592003>,  <34.075531, 35.294735, 38.526398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095100, 35.524765, 38.592003>,  <34.127716, 35.908146, 38.701344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095100, 35.524765, 38.592003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665792, -0.151715, 0.730550,
		-0.741669, 0.241561, -0.625760,
		-0.081535, -0.958452, -0.273352,
		34.070641, 35.237228, 38.509998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414120, 35.803154, 38.681252>,  <34.127716, 35.908146, 38.701344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414120, 35.803154, 38.681252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586418, 35.445160, 38.727661>,  <33.689796, 35.230366, 38.755508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586418, 35.445160, 38.727661>,  <33.414120, 35.803154, 38.681252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586418, 35.445160, 38.727661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725153, -0.266706, 0.634839,
		-0.537225, -0.357592, -0.763883,
		0.430746, -0.894984, 0.116028,
		33.715641, 35.176666, 38.762470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869106, 35.245144, 38.707542>,  <33.414120, 35.803154, 38.681252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869106, 35.245144, 38.707542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199238, 35.102623, 38.882759>,  <33.397316, 35.017109, 38.987888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199238, 35.102623, 38.882759>,  <32.869106, 35.245144, 38.707542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199238, 35.102623, 38.882759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550872, -0.337753, 0.763193,
		-0.123980, -0.871189, -0.475036,
		0.825330, -0.356304, 0.438039,
		33.446838, 34.995731, 39.014172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566605, 34.597660, 39.036644>,  <32.869106, 35.245144, 38.707542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566605, 34.597660, 39.036644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927071, 34.629700, 39.207047>,  <33.143353, 34.648926, 39.309288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927071, 34.629700, 39.207047>,  <32.566605, 34.597660, 39.036644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927071, 34.629700, 39.207047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360445, -0.407439, 0.839091,
		0.240785, -0.909713, -0.338298,
		0.901167, 0.080103, 0.426006,
		33.197422, 34.653732, 39.334846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702019, 33.971142, 39.355835>,  <32.566605, 34.597660, 39.036644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702019, 33.971142, 39.355835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906643, 34.243828, 39.565048>,  <33.029419, 34.407440, 39.690578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906643, 34.243828, 39.565048>,  <32.702019, 33.971142, 39.355835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906643, 34.243828, 39.565048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271041, -0.449611, 0.851109,
		0.815377, -0.577160, -0.045231,
		0.511563, 0.681716, 0.523036,
		33.060112, 34.448341, 39.721958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916203, 33.184242, 39.385475>,  <32.702019, 33.971142, 39.355835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916203, 33.184242, 39.385475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564301, 33.016224, 39.296398>,  <32.353161, 32.915413, 39.242950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564301, 33.016224, 39.296398>,  <32.916203, 33.184242, 39.385475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564301, 33.016224, 39.296398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205793, 0.085807, -0.974826,
		0.428579, -0.903438, 0.010953,
		-0.879755, -0.420044, -0.222696,
		32.300373, 32.890209, 39.229588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007896, 32.603779, 38.951729>,  <32.916203, 33.184242, 39.385475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007896, 32.603779, 38.951729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624542, 32.694775, 38.882748>,  <32.394527, 32.749374, 38.841358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624542, 32.694775, 38.882748>,  <33.007896, 32.603779, 38.951729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624542, 32.694775, 38.882748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184485, 0.032576, -0.982295,
		-0.217849, -0.973234, -0.073190,
		-0.958388, 0.227494, -0.172450,
		32.337025, 32.763023, 38.831013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750107, 32.117466, 38.360237>,  <33.007896, 32.603779, 38.951729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750107, 32.117466, 38.360237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518185, 32.443192, 38.370983>,  <32.379032, 32.638626, 38.377430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518185, 32.443192, 38.370983>,  <32.750107, 32.117466, 38.360237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518185, 32.443192, 38.370983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082687, -0.026008, -0.996236,
		-0.810547, -0.579846, 0.082412,
		-0.579807, 0.814311, 0.026865,
		32.344242, 32.687485, 38.379044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230961, 32.021793, 37.852371>,  <32.750107, 32.117466, 38.360237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230961, 32.021793, 37.852371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190723, 32.411854, 37.931328>,  <32.166580, 32.645889, 37.978703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190723, 32.411854, 37.931328>,  <32.230961, 32.021793, 37.852371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190723, 32.411854, 37.931328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156254, 0.180451, -0.971093,
		-0.982581, -0.128533, 0.134218,
		-0.100597, 0.975149, 0.197391,
		32.160545, 32.704399, 37.990543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729063, 32.243958, 37.288788>,  <32.230961, 32.021793, 37.852371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729063, 32.243958, 37.288788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889471, 32.581310, 37.431831>,  <31.985716, 32.783722, 37.517658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889471, 32.581310, 37.431831>,  <31.729063, 32.243958, 37.288788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889471, 32.581310, 37.431831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121021, 0.435725, -0.891907,
		-0.908041, 0.314394, 0.276802,
		0.401019, 0.843387, 0.357608,
		32.009777, 32.834328, 37.539112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244860, 32.828091, 37.232632>,  <31.729063, 32.243958, 37.288788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244860, 32.828091, 37.232632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625219, 32.951538, 37.223309>,  <31.853436, 33.025608, 37.217712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625219, 32.951538, 37.223309>,  <31.244860, 32.828091, 37.232632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625219, 32.951538, 37.223309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148373, 0.388461, -0.909441,
		-0.271615, 0.868247, 0.415178,
		0.950900, 0.308620, -0.023312,
		31.910490, 33.044125, 37.216316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203821, 33.503254, 36.869190>,  <31.244860, 32.828091, 37.232632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203821, 33.503254, 36.869190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596384, 33.427315, 36.880478>,  <31.831923, 33.381752, 36.887249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596384, 33.427315, 36.880478>,  <31.203821, 33.503254, 36.869190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596384, 33.427315, 36.880478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096769, 0.362455, -0.926964,
		0.165759, 0.912459, 0.374088,
		0.981407, -0.189853, 0.028217,
		31.890806, 33.370358, 36.888943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482700, 34.067486, 36.508831>,  <31.203821, 33.503254, 36.869190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482700, 34.067486, 36.508831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762510, 33.781715, 36.502346>,  <31.930395, 33.610252, 36.498455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762510, 33.781715, 36.502346>,  <31.482700, 34.067486, 36.508831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762510, 33.781715, 36.502346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270875, 0.286079, -0.919122,
		0.661283, 0.638556, 0.393639,
		0.699523, -0.714426, -0.016210,
		31.972366, 33.567387, 36.497482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263847, 34.398006, 36.461990>,  <31.482700, 34.067486, 36.508831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263847, 34.398006, 36.461990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301285, 34.016132, 36.348980>,  <32.323746, 33.787010, 36.281174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301285, 34.016132, 36.348980>,  <32.263847, 34.398006, 36.461990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301285, 34.016132, 36.348980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256794, 0.297316, -0.919598,
		0.961924, 0.013515, 0.272983,
		0.093591, -0.954684, -0.282524,
		32.329361, 33.729729, 36.264221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900776, 34.290047, 36.123745>,  <32.263847, 34.398006, 36.461990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900776, 34.290047, 36.123745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649139, 34.023338, 35.963913>,  <32.498158, 33.863316, 35.868015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649139, 34.023338, 35.963913>,  <32.900776, 34.290047, 36.123745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649139, 34.023338, 35.963913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437863, 0.120768, -0.890893,
		0.642275, -0.735416, 0.215978,
		-0.629094, -0.666767, -0.399578,
		32.460411, 33.823307, 35.844040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340965, 33.858433, 35.770977>,  <32.900776, 34.290047, 36.123745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340965, 33.858433, 35.770977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981796, 33.758289, 35.626167>,  <32.766296, 33.698204, 35.539284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981796, 33.758289, 35.626167>,  <33.340965, 33.858433, 35.770977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981796, 33.758289, 35.626167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400713, -0.124662, -0.907683,
		0.182112, -0.960095, 0.212257,
		-0.897922, -0.250355, -0.362020,
		32.712421, 33.683182, 35.517563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460342, 33.242924, 35.362080>,  <33.340965, 33.858433, 35.770977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460342, 33.242924, 35.362080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100853, 33.368839, 35.239967>,  <32.885159, 33.444389, 35.166698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100853, 33.368839, 35.239967>,  <33.460342, 33.242924, 35.362080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100853, 33.368839, 35.239967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296569, -0.076489, -0.951943,
		-0.323008, -0.946076, -0.024613,
		-0.898728, 0.314785, -0.305284,
		32.831234, 33.463276, 35.148384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140030, 32.750595, 34.847912>,  <33.460342, 33.242924, 35.362080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140030, 32.750595, 34.847912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011993, 33.119911, 34.762978>,  <32.935173, 33.341499, 34.712017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011993, 33.119911, 34.762978>,  <33.140030, 32.750595, 34.847912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011993, 33.119911, 34.762978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446213, -0.050788, -0.893484,
		-0.835726, -0.380739, -0.395726,
		-0.320086, 0.923286, -0.212336,
		32.915966, 33.396896, 34.699276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808117, 32.818867, 34.285843>,  <33.140030, 32.750595, 34.847912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808117, 32.818867, 34.285843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913933, 33.203106, 34.319962>,  <32.977425, 33.433647, 34.340431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913933, 33.203106, 34.319962>,  <32.808117, 32.818867, 34.285843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913933, 33.203106, 34.319962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309472, -0.000793, -0.950908,
		-0.913370, 0.277952, -0.297487,
		0.264543, 0.960595, 0.085294,
		32.993294, 33.491283, 34.345551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445900, 32.833393, 34.099770>,  <32.808117, 32.818867, 34.285843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445900, 32.833393, 34.099770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724396, 32.608707, 33.921005>,  <33.891495, 32.473896, 33.813747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724396, 32.608707, 33.921005>,  <33.445900, 32.833393, 34.099770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724396, 32.608707, 33.921005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093449, -0.688233, 0.719447,
		-0.711701, -0.459144, -0.531666,
		0.696239, -0.561714, -0.446909,
		33.933270, 32.440193, 33.786934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363781, 32.219261, 34.276585>,  <33.445900, 32.833393, 34.099770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363781, 32.219261, 34.276585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731995, 32.140083, 34.141861>,  <33.952923, 32.092579, 34.061028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731995, 32.140083, 34.141861>,  <33.363781, 32.219261, 34.276585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731995, 32.140083, 34.141861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004488, -0.867437, 0.497527,
		-0.390639, -0.456479, -0.799393,
		0.920533, -0.197941, -0.336806,
		34.008156, 32.080700, 34.040821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467442, 31.625378, 33.812275>,  <33.363781, 32.219261, 34.276585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467442, 31.625378, 33.812275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790142, 31.673351, 34.043713>,  <33.983761, 31.702135, 34.182575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790142, 31.673351, 34.043713>,  <33.467442, 31.625378, 33.812275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790142, 31.673351, 34.043713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183348, -0.880045, 0.438069,
		0.561727, -0.459496, -0.687987,
		0.806750, 0.119934, 0.578593,
		34.032166, 31.709332, 34.217289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865391, 31.077728, 33.929314>,  <33.467442, 31.625378, 33.812275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865391, 31.077728, 33.929314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970806, 31.260931, 34.268909>,  <34.034054, 31.370853, 34.472668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970806, 31.260931, 34.268909>,  <33.865391, 31.077728, 33.929314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970806, 31.260931, 34.268909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252093, -0.816816, 0.518904,
		0.931127, -0.350774, -0.099800,
		0.263536, 0.458006, 0.848987,
		34.049866, 31.398333, 34.523605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069626, 30.477596, 34.357594>,  <33.865391, 31.077728, 33.929314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069626, 30.477596, 34.357594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009289, 30.791693, 34.597809>,  <33.973087, 30.980150, 34.741940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009289, 30.791693, 34.597809>,  <34.069626, 30.477596, 34.357594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009289, 30.791693, 34.597809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058876, -0.613547, 0.787460,
		0.986803, 0.083426, 0.138782,
		-0.150844, 0.785239, 0.600538,
		33.964035, 31.027264, 34.777969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568604, 30.334377, 34.918842>,  <34.069626, 30.477596, 34.357594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568604, 30.334377, 34.918842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301655, 30.604124, 35.045235>,  <34.141487, 30.765972, 35.121071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301655, 30.604124, 35.045235>,  <34.568604, 30.334377, 34.918842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301655, 30.604124, 35.045235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103207, -0.503947, 0.857546,
		0.737540, 0.539689, 0.405919,
		-0.667370, 0.674368, 0.315981,
		34.101444, 30.806435, 35.140030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833797, 30.529781, 35.590363>,  <34.568604, 30.334377, 34.918842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833797, 30.529781, 35.590363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440071, 30.593395, 35.559799>,  <34.203835, 30.631563, 35.541462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440071, 30.593395, 35.559799>,  <34.833797, 30.529781, 35.590363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440071, 30.593395, 35.559799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149445, -0.521302, 0.840185,
		0.093790, 0.838422, 0.536891,
		-0.984312, 0.159036, -0.076405,
		34.144779, 30.641106, 35.536877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691040, 30.708202, 36.256485>,  <34.833797, 30.529781, 35.590363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691040, 30.708202, 36.256485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332176, 30.638426, 36.094170>,  <34.116856, 30.596560, 35.996780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332176, 30.638426, 36.094170>,  <34.691040, 30.708202, 36.256485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332176, 30.638426, 36.094170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292048, -0.454957, 0.841262,
		-0.331370, 0.873261, 0.357225,
		-0.897163, -0.174442, -0.405793,
		34.063026, 30.586094, 35.972431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210239, 31.150928, 36.552982>,  <34.691040, 30.708202, 36.256485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210239, 31.150928, 36.552982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996014, 30.844477, 36.410873>,  <33.867477, 30.660606, 36.325607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996014, 30.844477, 36.410873>,  <34.210239, 31.150928, 36.552982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996014, 30.844477, 36.410873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221628, -0.278433, 0.934535,
		-0.814894, 0.579241, -0.020677,
		-0.535564, -0.766130, -0.355269,
		33.835346, 30.614637, 36.304295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649223, 31.193954, 36.878628>,  <34.210239, 31.150928, 36.552982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649223, 31.193954, 36.878628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630081, 30.810455, 36.766548>,  <33.618595, 30.580357, 36.699299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630081, 30.810455, 36.766548>,  <33.649223, 31.193954, 36.878628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630081, 30.810455, 36.766548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135165, -0.271728, 0.952835,
		-0.989667, 0.083472, -0.116585,
		-0.047855, -0.958747, -0.280203,
		33.615726, 30.522831, 36.682487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032276, 31.018566, 37.174252>,  <33.649223, 31.193954, 36.878628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032276, 31.018566, 37.174252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159489, 30.648590, 37.090981>,  <33.235817, 30.426603, 37.041016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159489, 30.648590, 37.090981>,  <33.032276, 31.018566, 37.174252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159489, 30.648590, 37.090981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165451, -0.270357, 0.948437,
		-0.933532, -0.267188, -0.239014,
		0.318030, -0.924942, -0.208180,
		33.254898, 30.371107, 37.028526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457008, 30.531710, 37.250500>,  <33.032276, 31.018566, 37.174252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457008, 30.531710, 37.250500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777756, 30.295975, 37.289871>,  <32.970203, 30.154533, 37.313492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777756, 30.295975, 37.289871>,  <32.457008, 30.531710, 37.250500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777756, 30.295975, 37.289871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297636, -0.251148, 0.921053,
		-0.518090, -0.767859, -0.376795,
		0.801870, -0.589336, 0.098425,
		33.018318, 30.119175, 37.319401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181095, 29.761135, 37.352676>,  <32.457008, 30.531710, 37.250500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181095, 29.761135, 37.352676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547207, 29.831600, 37.497578>,  <32.766872, 29.873880, 37.584518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547207, 29.831600, 37.497578>,  <32.181095, 29.761135, 37.352676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547207, 29.831600, 37.497578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313176, -0.254400, 0.914987,
		0.253347, -0.950919, -0.177676,
		0.915279, 0.176166, 0.362257,
		32.821789, 29.884449, 37.606255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361759, 29.328535, 37.883442>,  <32.181095, 29.761135, 37.352676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361759, 29.328535, 37.883442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672333, 29.565746, 37.968731>,  <32.858677, 29.708073, 38.019905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672333, 29.565746, 37.968731>,  <32.361759, 29.328535, 37.883442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672333, 29.565746, 37.968731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109204, -0.206616, 0.972309,
		0.620661, -0.778221, -0.095663,
		0.776437, 0.593028, 0.213224,
		32.905262, 29.743654, 38.032700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905636, 28.954046, 38.384094>,  <32.361759, 29.328535, 37.883442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905636, 28.954046, 38.384094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921925, 29.353714, 38.383358>,  <32.931698, 29.593515, 38.382915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921925, 29.353714, 38.383358>,  <32.905636, 28.954046, 38.384094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921925, 29.353714, 38.383358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274937, 0.012975, 0.961375,
		0.960599, -0.038647, 0.275237,
		0.040725, 0.999169, -0.001838,
		32.934143, 29.653465, 38.382805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413250, 29.152100, 38.868420>,  <32.905636, 28.954046, 38.384094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413250, 29.152100, 38.868420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157429, 29.457857, 38.835747>,  <33.003937, 29.641312, 38.816143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157429, 29.457857, 38.835747>,  <33.413250, 29.152100, 38.868420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157429, 29.457857, 38.835747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188610, -0.053014, 0.980620,
		0.745250, 0.642566, 0.178077,
		-0.639554, 0.764394, -0.081686,
		32.965561, 29.687176, 38.811241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401852, 29.356993, 39.547249>,  <33.413250, 29.152100, 38.868420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401852, 29.356993, 39.547249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105206, 29.575674, 39.391750>,  <32.927219, 29.706882, 39.298450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105206, 29.575674, 39.391750>,  <33.401852, 29.356993, 39.547249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105206, 29.575674, 39.391750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350944, 0.177690, 0.919383,
		0.571707, 0.818254, 0.060085,
		-0.741612, 0.546704, -0.388748,
		32.882721, 29.739685, 39.275127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466373, 29.979855, 39.840092>,  <33.401852, 29.356993, 39.547249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466373, 29.979855, 39.840092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086624, 29.957666, 39.716408>,  <32.858776, 29.944353, 39.642197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086624, 29.957666, 39.716408>,  <33.466373, 29.979855, 39.840092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086624, 29.957666, 39.716408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313211, 0.091077, 0.945306,
		-0.024275, 0.994298, -0.103840,
		-0.949373, -0.055472, -0.309214,
		32.801811, 29.941025, 39.623642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097084, 30.542305, 40.180332>,  <33.466373, 29.979855, 39.840092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097084, 30.542305, 40.180332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844250, 30.246151, 40.088852>,  <32.692551, 30.068459, 40.033962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844250, 30.246151, 40.088852>,  <33.097084, 30.542305, 40.180332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844250, 30.246151, 40.088852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265619, -0.070243, 0.961515,
		-0.727956, 0.668504, -0.152261,
		-0.632081, -0.740384, -0.228702,
		32.654625, 30.024036, 40.020241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472755, 30.702541, 40.542534>,  <33.097084, 30.542305, 40.180332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472755, 30.702541, 40.542534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408970, 30.318617, 40.450153>,  <32.370697, 30.088263, 40.394726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408970, 30.318617, 40.450153>,  <32.472755, 30.702541, 40.542534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408970, 30.318617, 40.450153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353081, -0.163018, 0.921281,
		-0.921903, 0.228455, -0.312894,
		-0.159464, -0.959809, -0.230950,
		32.361130, 30.030674, 40.380867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731903, 30.563072, 40.651814>,  <32.472755, 30.702541, 40.542534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731903, 30.563072, 40.651814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937115, 30.220348, 40.672520>,  <32.060242, 30.014713, 40.684944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937115, 30.220348, 40.672520>,  <31.731903, 30.563072, 40.651814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937115, 30.220348, 40.672520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435955, -0.208134, 0.875570,
		-0.739422, -0.471760, -0.480309,
		0.513028, -0.856809, 0.051767,
		32.091022, 29.963306, 40.688049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256899, 30.082445, 40.873718>,  <31.731903, 30.563072, 40.651814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256899, 30.082445, 40.873718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613350, 29.920532, 40.955734>,  <31.827221, 29.823385, 41.004944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613350, 29.920532, 40.955734>,  <31.256899, 30.082445, 40.873718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613350, 29.920532, 40.955734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339041, -0.293669, 0.893762,
		-0.301595, -0.865960, -0.398941,
		0.891118, -0.404812, 0.205027,
		31.880688, 29.799099, 41.017246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075350, 29.468269, 41.144714>,  <31.256899, 30.082445, 40.873718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075350, 29.468269, 41.144714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457672, 29.515450, 41.252438>,  <31.687065, 29.543758, 41.317070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457672, 29.515450, 41.252438>,  <31.075350, 29.468269, 41.144714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457672, 29.515450, 41.252438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197333, -0.421643, 0.885029,
		0.217942, -0.899058, -0.379732,
		0.955804, 0.117951, 0.269308,
		31.744413, 29.550835, 41.333229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334940, 28.901945, 41.585144>,  <31.075350, 29.468269, 41.144714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334940, 28.901945, 41.585144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592014, 29.184540, 41.703693>,  <31.746258, 29.354097, 41.774822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592014, 29.184540, 41.703693>,  <31.334940, 28.901945, 41.585144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592014, 29.184540, 41.703693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207459, -0.211904, 0.955017,
		0.737509, -0.675258, 0.010380,
		0.642683, 0.706487, 0.296369,
		31.784819, 29.396486, 41.792603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802601, 28.720829, 42.002560>,  <31.334940, 28.901945, 41.585144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802601, 28.720829, 42.002560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857904, 29.100775, 42.114731>,  <31.891087, 29.328743, 42.182034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857904, 29.100775, 42.114731>,  <31.802601, 28.720829, 42.002560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857904, 29.100775, 42.114731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106368, -0.267271, 0.957733,
		0.984668, -0.162243, 0.064083,
		0.138258, 0.949865, 0.280430,
		31.899382, 29.385735, 42.198860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283886, 28.653059, 42.495132>,  <31.802601, 28.720829, 42.002560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283886, 28.653059, 42.495132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142979, 29.019773, 42.570400>,  <32.058434, 29.239803, 42.615562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142979, 29.019773, 42.570400>,  <32.283886, 28.653059, 42.495132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142979, 29.019773, 42.570400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048043, -0.218511, 0.974651,
		0.934666, 0.334296, 0.121019,
		-0.352266, 0.916787, 0.188174,
		32.037300, 29.294809, 42.626854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663383, 28.921772, 43.043026>,  <32.283886, 28.653059, 42.495132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663383, 28.921772, 43.043026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317913, 29.123383, 43.044731>,  <32.110630, 29.244349, 43.045753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317913, 29.123383, 43.044731>,  <32.663383, 28.921772, 43.043026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317913, 29.123383, 43.044731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056606, -0.105392, 0.992818,
		0.500856, 0.857234, 0.119555,
		-0.863678, 0.504026, 0.004262,
		32.058811, 29.274590, 43.046009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708843, 29.380259, 43.632454>,  <32.663383, 28.921772, 43.043026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708843, 29.380259, 43.632454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323395, 29.314877, 43.547874>,  <32.092125, 29.275648, 43.497128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323395, 29.314877, 43.547874>,  <32.708843, 29.380259, 43.632454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323395, 29.314877, 43.547874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215563, 0.007668, 0.976460,
		-0.157984, 0.986521, -0.042624,
		-0.963625, -0.163453, -0.211446,
		32.034306, 29.265841, 43.484440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365742, 29.508230, 43.774513>,  <32.708843, 29.380259, 43.632454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365742, 29.508230, 43.774513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678722, 29.468418, 44.020397>,  <33.866512, 29.444530, 44.167927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678722, 29.468418, 44.020397>,  <33.365742, 29.508230, 43.774513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678722, 29.468418, 44.020397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620840, 0.048230, -0.782452,
		0.048230, 0.993865, 0.099529,
		0.782452, -0.099529, 0.614706,
		33.913460, 29.438559, 44.204807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768734, 30.018970, 43.550556>,  <33.365742, 29.508230, 43.774513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768734, 30.018970, 43.550556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018753, 29.792768, 43.765785>,  <34.168766, 29.657047, 43.894920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018753, 29.792768, 43.765785>,  <33.768734, 30.018970, 43.550556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018753, 29.792768, 43.765785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660727, 0.016259, -0.750450,
		0.415635, 0.824585, 0.383807,
		0.625050, -0.565505, 0.538068,
		34.206268, 29.623117, 43.927204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442253, 30.293993, 43.640442>,  <33.768734, 30.018970, 43.550556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442253, 30.293993, 43.640442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531178, 29.908920, 43.702183>,  <34.584534, 29.677877, 43.739227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531178, 29.908920, 43.702183>,  <34.442253, 30.293993, 43.640442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531178, 29.908920, 43.702183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634852, 0.022781, -0.772298,
		0.739960, 0.269679, 0.616225,
		0.222310, -0.962681, 0.154349,
		34.597870, 29.620115, 43.748489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134415, 30.234230, 43.501030>,  <34.442253, 30.293993, 43.640442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134415, 30.234230, 43.501030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008686, 29.855112, 43.479538>,  <34.933250, 29.627642, 43.466644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008686, 29.855112, 43.479538>,  <35.134415, 30.234230, 43.501030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008686, 29.855112, 43.479538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502352, -0.118039, -0.856568,
		0.805509, -0.296228, 0.513229,
		-0.314320, -0.947795, -0.053730,
		34.914391, 29.570774, 43.463421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795277, 29.742903, 43.466290>,  <35.134415, 30.234230, 43.501030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795277, 29.742903, 43.466290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463867, 29.579050, 43.313580>,  <35.265022, 29.480738, 43.221954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463867, 29.579050, 43.313580>,  <35.795277, 29.742903, 43.466290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463867, 29.579050, 43.313580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456826, -0.100198, -0.883895,
		0.323819, -0.906731, 0.270147,
		-0.828523, -0.409632, -0.381772,
		35.215309, 29.456160, 43.199047>
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
