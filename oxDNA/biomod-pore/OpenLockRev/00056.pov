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
	<41.293289, 34.528149, 47.620724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076748, 34.478138, 47.953304>,  <40.946823, 34.448132, 48.152851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076748, 34.478138, 47.953304>,  <41.293289, 34.528149, 47.620724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076748, 34.478138, 47.953304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840754, -0.070367, 0.536826,
		-0.008613, 0.989654, 0.143214,
		-0.541349, -0.125031, 0.831449,
		40.914345, 34.440628, 48.202740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346954, 35.106544, 48.075195>,  <41.293289, 34.528149, 47.620724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346954, 35.106544, 48.075195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273937, 34.762856, 48.266365>,  <41.230125, 34.556641, 48.381069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273937, 34.762856, 48.266365>,  <41.346954, 35.106544, 48.075195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273937, 34.762856, 48.266365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779284, 0.169948, 0.603187,
		-0.599494, 0.482550, 0.638554,
		-0.182547, -0.859222, 0.477926,
		41.219173, 34.505089, 48.409744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489368, 35.181103, 48.787647>,  <41.346954, 35.106544, 48.075195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489368, 35.181103, 48.787647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483349, 34.781197, 48.781498>,  <41.479736, 34.541252, 48.777809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483349, 34.781197, 48.781498>,  <41.489368, 35.181103, 48.787647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483349, 34.781197, 48.781498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826631, -0.021088, 0.562349,
		-0.562543, -0.004242, 0.826757,
		-0.015049, -0.999769, -0.015369,
		41.478836, 34.481266, 48.776886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521606, 34.944462, 49.451710>,  <41.489368, 35.181103, 48.787647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521606, 34.944462, 49.451710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649761, 34.611721, 49.270439>,  <41.726654, 34.412075, 49.161674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649761, 34.611721, 49.270439>,  <41.521606, 34.944462, 49.451710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649761, 34.611721, 49.270439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777553, -0.042321, 0.627392,
		-0.541077, -0.553380, 0.633251,
		0.320387, -0.831853, -0.453181,
		41.745876, 34.362164, 49.134483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616714, 34.401867, 49.912674>,  <41.521606, 34.944462, 49.451710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616714, 34.401867, 49.912674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849831, 34.291527, 49.606926>,  <41.989700, 34.225323, 49.423477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849831, 34.291527, 49.606926>,  <41.616714, 34.401867, 49.912674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849831, 34.291527, 49.606926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762976, -0.137985, 0.631528,
		-0.279682, -0.951243, 0.130055,
		0.582792, -0.275856, -0.764367,
		42.024670, 34.208771, 49.377617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927456, 33.797462, 50.244663>,  <41.616714, 34.401867, 49.912674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927456, 33.797462, 50.244663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109665, 33.911781, 49.907421>,  <42.218990, 33.980373, 49.705078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109665, 33.911781, 49.907421>,  <41.927456, 33.797462, 50.244663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109665, 33.911781, 49.907421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888282, -0.208470, 0.409263,
		-0.058796, -0.935340, -0.348830,
		0.455520, 0.285796, -0.843102,
		42.246323, 33.997520, 49.654491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410576, 33.245274, 50.109875>,  <41.927456, 33.797462, 50.244663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410576, 33.245274, 50.109875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549572, 33.562511, 49.909771>,  <42.632969, 33.752853, 49.789711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549572, 33.562511, 49.909771>,  <42.410576, 33.245274, 50.109875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549572, 33.562511, 49.909771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914301, -0.168186, 0.368466,
		0.208091, -0.585424, -0.783566,
		0.347494, 0.793090, -0.500256,
		42.653820, 33.800438, 49.759693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018177, 33.016521, 49.796024>,  <42.410576, 33.245274, 50.109875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018177, 33.016521, 49.796024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016342, 33.414173, 49.839272>,  <43.015240, 33.652763, 49.865219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016342, 33.414173, 49.839272>,  <43.018177, 33.016521, 49.796024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016342, 33.414173, 49.839272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944739, -0.031133, 0.326341,
		0.327791, 0.103637, -0.939049,
		-0.004586, 0.994128, 0.108115,
		43.014965, 33.712410, 49.871704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771412, 33.143803, 49.784359>,  <43.018177, 33.016521, 49.796024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771412, 33.143803, 49.784359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.626770, 33.503422, 49.883110>,  <43.539986, 33.719193, 49.942360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.626770, 33.503422, 49.883110>,  <43.771412, 33.143803, 49.784359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626770, 33.503422, 49.883110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885013, 0.247716, 0.394193,
		0.293246, 0.361030, -0.885248,
		-0.361605, 0.899052, 0.246874,
		43.518288, 33.773136, 49.957172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271347, 33.578491, 49.474213>,  <43.771412, 33.143803, 49.784359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.271347, 33.578491, 49.474213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070404, 33.739391, 49.780369>,  <43.949837, 33.835934, 49.964062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070404, 33.739391, 49.780369>,  <44.271347, 33.578491, 49.474213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070404, 33.739391, 49.780369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861613, 0.158648, 0.482134,
		0.072512, 0.901677, -0.426286,
		-0.502359, 0.402254, 0.765393,
		43.919697, 33.860069, 50.009987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.726089, 34.207954, 49.603188>,  <44.271347, 33.578491, 49.474213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.726089, 34.207954, 49.603188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.506950, 34.149250, 49.932629>,  <44.375465, 34.114029, 50.130295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.506950, 34.149250, 49.932629>,  <44.726089, 34.207954, 49.603188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.506950, 34.149250, 49.932629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755004, 0.337293, 0.562319,
		-0.360322, 0.929890, -0.073982,
		-0.547848, -0.146759, 0.823604,
		44.342594, 34.105221, 50.179710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695698, 34.864422, 50.063934>,  <44.726089, 34.207954, 49.603188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695698, 34.864422, 50.063934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652626, 34.548794, 50.305851>,  <44.626781, 34.359417, 50.451000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652626, 34.548794, 50.305851>,  <44.695698, 34.864422, 50.063934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652626, 34.548794, 50.305851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724674, 0.354170, 0.591111,
		-0.680626, 0.501931, 0.533679,
		-0.107684, -0.789068, 0.604794,
		44.620319, 34.312073, 50.487289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755619, 35.141361, 50.670929>,  <44.695698, 34.864422, 50.063934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.755619, 35.141361, 50.670929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.800808, 34.751541, 50.748379>,  <44.827923, 34.517651, 50.794849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.800808, 34.751541, 50.748379>,  <44.755619, 35.141361, 50.670929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800808, 34.751541, 50.748379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735564, 0.213039, 0.643086,
		-0.667969, 0.069771, 0.740911,
		0.112974, -0.974549, 0.193625,
		44.834702, 34.459175, 50.806465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780632, 35.131760, 51.435192>,  <44.755619, 35.141361, 50.670929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780632, 35.131760, 51.435192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977242, 34.820221, 51.279346>,  <45.095207, 34.633297, 51.185837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977242, 34.820221, 51.279346>,  <44.780632, 35.131760, 51.435192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977242, 34.820221, 51.279346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737966, 0.134956, 0.661206,
		-0.462398, -0.612521, 0.641097,
		0.491523, -0.778848, -0.389617,
		45.124699, 34.586567, 51.162460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017067, 34.739006, 52.018345>,  <44.780632, 35.131760, 51.435192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017067, 34.739006, 52.018345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.231216, 34.587807, 51.716221>,  <45.359707, 34.497086, 51.534946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.231216, 34.587807, 51.716221>,  <45.017067, 34.739006, 52.018345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.231216, 34.587807, 51.716221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834715, 0.100264, 0.541477,
		-0.128946, -0.920361, 0.369199,
		0.535372, -0.377997, -0.755311,
		45.391827, 34.474407, 51.489628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430981, 34.206226, 52.267925>,  <45.017067, 34.739006, 52.018345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430981, 34.206226, 52.267925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.616722, 34.349010, 51.943714>,  <45.728168, 34.434681, 51.749187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.616722, 34.349010, 51.943714>,  <45.430981, 34.206226, 52.267925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.616722, 34.349010, 51.943714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766843, 0.295810, 0.569604,
		0.443089, -0.886044, -0.136374,
		0.464354, 0.356963, -0.810526,
		45.756027, 34.456100, 51.700558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.160526, 34.006622, 52.430191>,  <45.430981, 34.206226, 52.267925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.160526, 34.006622, 52.430191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174679, 34.263428, 52.123840>,  <46.183170, 34.417511, 51.940029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174679, 34.263428, 52.123840>,  <46.160526, 34.006622, 52.430191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.174679, 34.263428, 52.123840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885913, 0.334512, 0.321340,
		0.462500, -0.689866, -0.556937,
		0.035380, 0.642018, -0.765873,
		46.185291, 34.456032, 51.894077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.843483, 33.891788, 52.260872>,  <46.160526, 34.006622, 52.430191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.843483, 33.891788, 52.260872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.716488, 34.234570, 52.098476>,  <46.640289, 34.440239, 52.001041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.716488, 34.234570, 52.098476>,  <46.843483, 33.891788, 52.260872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.716488, 34.234570, 52.098476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726516, 0.494970, 0.476632,
		0.609404, -0.143628, -0.779742,
		-0.317492, 0.856957, -0.405985,
		46.621239, 34.491657, 51.976681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.365597, 34.066757, 51.829571>,  <46.843483, 33.891788, 52.260872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.365597, 34.066757, 51.829571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.163151, 34.392475, 51.943253>,  <47.041683, 34.587906, 52.011463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.163151, 34.392475, 51.943253>,  <47.365597, 34.066757, 51.829571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.163151, 34.392475, 51.943253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830307, 0.370880, 0.415979,
		0.233322, 0.446513, -0.863821,
		-0.506114, 0.814294, 0.284208,
		47.011318, 34.636765, 52.028515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.881264, 34.604221, 51.686314>,  <47.365597, 34.066757, 51.829571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.881264, 34.604221, 51.686314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.582138, 34.779583, 51.885742>,  <47.402660, 34.884800, 52.005398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.582138, 34.779583, 51.885742>,  <47.881264, 34.604221, 51.686314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.582138, 34.779583, 51.885742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662891, 0.534533, 0.524262,
		-0.036664, 0.722549, -0.690346,
		-0.747818, 0.438403, 0.498569,
		47.357792, 34.911102, 52.035313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.999287, 35.336548, 51.681313>,  <47.881264, 34.604221, 51.686314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.999287, 35.336548, 51.681313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.748867, 35.251984, 51.981541>,  <47.598614, 35.201244, 52.161678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.748867, 35.251984, 51.981541>,  <47.999287, 35.336548, 51.681313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.748867, 35.251984, 51.981541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522463, 0.600820, 0.605019,
		-0.578869, 0.770921, -0.265689,
		-0.626053, -0.211414, 0.750574,
		47.561050, 35.188560, 52.206715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.277840, 34.812237, 51.755154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.298361, 34.881287, 52.148613>,  <24.310673, 34.922718, 52.384689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.298361, 34.881287, 52.148613>,  <24.277840, 34.812237, 51.755154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.298361, 34.881287, 52.148613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964422, 0.247211, -0.093683,
		-0.259342, 0.953460, -0.153803,
		0.051301, 0.172627, 0.983651,
		24.313751, 34.933075, 52.443707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.480482, 35.523575, 51.822063>,  <24.277840, 34.812237, 51.755154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.480482, 35.523575, 51.822063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.579134, 35.321949, 52.153145>,  <24.638325, 35.200974, 52.351795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.579134, 35.321949, 52.153145>,  <24.480482, 35.523575, 51.822063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.579134, 35.321949, 52.153145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940462, 0.330618, -0.078886,
		-0.233891, 0.797880, 0.555592,
		0.246631, -0.504062, 0.827704,
		24.653124, 35.170731, 52.401455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.003176, 35.913479, 52.032413>,  <24.480482, 35.523575, 51.822063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.003176, 35.913479, 52.032413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.058025, 35.564587, 52.220207>,  <25.090935, 35.355251, 52.332882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.058025, 35.564587, 52.220207>,  <25.003176, 35.913479, 52.032413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.058025, 35.564587, 52.220207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989402, 0.143453, -0.022467,
		-0.047752, 0.467586, 0.882657,
		0.137125, -0.872229, 0.469481,
		25.099163, 35.302917, 52.361050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593388, 36.038059, 52.600208>,  <25.003176, 35.913479, 52.032413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593388, 36.038059, 52.600208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.546898, 35.653770, 52.499413>,  <25.519003, 35.423195, 52.438934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.546898, 35.653770, 52.499413>,  <25.593388, 36.038059, 52.600208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546898, 35.653770, 52.499413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992979, -0.106777, -0.050901,
		0.021996, -0.256135, 0.966391,
		-0.116226, -0.960726, -0.251988,
		25.512030, 35.365551, 52.423817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001375, 35.597355, 53.068306>,  <25.593388, 36.038059, 52.600208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001375, 35.597355, 53.068306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.939144, 35.385197, 52.734966>,  <25.901806, 35.257900, 52.534962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.939144, 35.385197, 52.734966>,  <26.001375, 35.597355, 53.068306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.939144, 35.385197, 52.734966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987816, -0.080339, -0.133285,
		0.003743, -0.843935, 0.536432,
		-0.155580, -0.530395, -0.833352,
		25.892469, 35.226078, 52.484962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494884, 35.051716, 53.042870>,  <26.001375, 35.597355, 53.068306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494884, 35.051716, 53.042870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.378143, 35.070835, 52.660763>,  <26.308098, 35.082306, 52.431499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.378143, 35.070835, 52.660763>,  <26.494884, 35.051716, 53.042870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378143, 35.070835, 52.660763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947141, -0.124657, -0.295608,
		-0.133210, -0.991048, -0.008890,
		-0.291853, 0.047798, -0.955268,
		26.290588, 35.085175, 52.374184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780497, 34.504063, 52.628986>,  <26.494884, 35.051716, 53.042870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780497, 34.504063, 52.628986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.664433, 34.739162, 52.326897>,  <26.594793, 34.880222, 52.145645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.664433, 34.739162, 52.326897>,  <26.780497, 34.504063, 52.628986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664433, 34.739162, 52.326897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875577, -0.155452, -0.457383,
		-0.386227, -0.793968, -0.469514,
		-0.290160, 0.587750, -0.755220,
		26.577385, 34.915489, 52.100330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971487, 34.119522, 51.992615>,  <26.780497, 34.504063, 52.628986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971487, 34.119522, 51.992615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.911774, 34.494343, 51.866352>,  <26.875946, 34.719234, 51.790592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.911774, 34.494343, 51.866352>,  <26.971487, 34.119522, 51.992615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911774, 34.494343, 51.866352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684614, -0.132389, -0.716782,
		-0.713455, -0.323110, -0.621757,
		-0.149285, 0.937055, -0.315659,
		26.866987, 34.775459, 51.771656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939346, 34.102341, 51.283386>,  <26.971487, 34.119522, 51.992615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939346, 34.102341, 51.283386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.039858, 34.481911, 51.359711>,  <27.100164, 34.709652, 51.405506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.039858, 34.481911, 51.359711>,  <26.939346, 34.102341, 51.283386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039858, 34.481911, 51.359711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892409, -0.150798, -0.425284,
		-0.374787, 0.277145, -0.884718,
		0.251279, 0.948921, 0.190809,
		27.115242, 34.766586, 51.416954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309851, 34.279617, 50.633518>,  <26.939346, 34.102341, 51.283386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309851, 34.279617, 50.633518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.441313, 34.558556, 50.888298>,  <27.520191, 34.725918, 51.041164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.441313, 34.558556, 50.888298>,  <27.309851, 34.279617, 50.633518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441313, 34.558556, 50.888298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888771, -0.000223, -0.458351,
		-0.319485, 0.716739, -0.619851,
		0.328656, 0.697342, 0.636945,
		27.539909, 34.767757, 51.079380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627048, 34.805279, 50.204502>,  <27.309851, 34.279617, 50.633518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627048, 34.805279, 50.204502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.773514, 34.849411, 50.574097>,  <27.861393, 34.875889, 50.795853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.773514, 34.849411, 50.574097>,  <27.627048, 34.805279, 50.204502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773514, 34.849411, 50.574097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927247, -0.126859, -0.352307,
		0.078346, 0.985766, -0.148754,
		0.366163, 0.110330, 0.923987,
		27.883364, 34.882511, 50.851292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227787, 35.233707, 50.058453>,  <27.627048, 34.805279, 50.204502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227787, 35.233707, 50.058453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.272100, 35.051991, 50.412029>,  <28.298689, 34.942963, 50.624176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.272100, 35.051991, 50.412029>,  <28.227787, 35.233707, 50.058453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272100, 35.051991, 50.412029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906554, -0.318303, -0.277206,
		0.407292, 0.832049, 0.376574,
		0.110784, -0.454288, 0.883939,
		28.305336, 34.915703, 50.677212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936258, 35.430283, 50.274940>,  <28.227787, 35.233707, 50.058453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936258, 35.430283, 50.274940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.871975, 35.124344, 50.524479>,  <28.833405, 34.940781, 50.674202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.871975, 35.124344, 50.524479>,  <28.936258, 35.430283, 50.274940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871975, 35.124344, 50.524479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965253, -0.253748, -0.062445,
		0.206060, 0.592134, 0.779049,
		-0.160707, -0.764846, 0.623846,
		28.823763, 34.894890, 50.711632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536695, 35.569073, 50.687893>,  <28.936258, 35.430283, 50.274940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536695, 35.569073, 50.687893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.427277, 35.185268, 50.714779>,  <29.361626, 34.954987, 50.730911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.427277, 35.185268, 50.714779>,  <29.536695, 35.569073, 50.687893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427277, 35.185268, 50.714779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931514, -0.281683, -0.230079,
		0.239694, -0.000330, 0.970848,
		-0.273548, -0.959507, 0.067211,
		29.345213, 34.897415, 50.734943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026375, 35.210003, 51.192585>,  <29.536695, 35.569073, 50.687893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026375, 35.210003, 51.192585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.876814, 34.923195, 50.957272>,  <29.787077, 34.751110, 50.816086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.876814, 34.923195, 50.957272>,  <30.026375, 35.210003, 51.192585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876814, 34.923195, 50.957272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927125, -0.271716, -0.258088,
		0.025211, -0.641908, 0.766367,
		-0.373903, -0.717025, -0.588279,
		29.764643, 34.708088, 50.780788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324724, 34.618984, 51.386524>,  <30.026375, 35.210003, 51.192585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324724, 34.618984, 51.386524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.194252, 34.544544, 51.015800>,  <30.115969, 34.499882, 50.793365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.194252, 34.544544, 51.015800>,  <30.324724, 34.618984, 51.386524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194252, 34.544544, 51.015800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943113, -0.130835, -0.305647,
		-0.064378, -0.973780, 0.218190,
		-0.326180, -0.186101, -0.926808,
		30.096397, 34.488712, 50.737759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763124, 34.086258, 51.222794>,  <30.324724, 34.618984, 51.386524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763124, 34.086258, 51.222794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.602438, 34.171833, 50.866623>,  <30.506025, 34.223179, 50.652920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.602438, 34.171833, 50.866623>,  <30.763124, 34.086258, 51.222794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602438, 34.171833, 50.866623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841540, -0.297219, -0.451078,
		-0.361154, -0.930532, -0.060641,
		-0.401719, 0.213940, -0.890422,
		30.481922, 34.236015, 50.599495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798773, 33.509575, 50.807087>,  <30.763124, 34.086258, 51.222794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798773, 33.509575, 50.807087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.797167, 33.832047, 50.570423>,  <30.796204, 34.025532, 50.428425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.797167, 33.832047, 50.570423>,  <30.798773, 33.509575, 50.807087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797167, 33.832047, 50.570423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805603, -0.347921, -0.479537,
		-0.592443, -0.478564, -0.648065,
		-0.004014, 0.806181, -0.591655,
		30.795963, 34.073902, 50.392925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870359, 33.228794, 50.133480>,  <30.798773, 33.509575, 50.807087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870359, 33.228794, 50.133480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.989689, 33.610382, 50.145721>,  <31.061287, 33.839336, 50.153069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.989689, 33.610382, 50.145721>,  <30.870359, 33.228794, 50.133480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989689, 33.610382, 50.145721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826381, -0.242110, -0.508406,
		-0.477596, 0.176962, -0.860573,
		0.298321, 0.953975, 0.030607,
		31.079185, 33.896576, 50.154903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223808, 33.261894, 49.578201>,  <30.870359, 33.228794, 50.133480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223808, 33.261894, 49.578201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.337595, 33.594868, 49.768414>,  <31.405867, 33.794651, 49.882542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.337595, 33.594868, 49.768414>,  <31.223808, 33.261894, 49.578201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337595, 33.594868, 49.768414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884294, -0.036261, -0.465520,
		-0.370273, 0.552931, -0.746435,
		0.284467, 0.832438, 0.475528,
		31.422935, 33.844601, 49.911072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453722, 33.689949, 49.061398>,  <31.223808, 33.261894, 49.578201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453722, 33.689949, 49.061398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.626554, 33.828411, 49.394501>,  <31.730253, 33.911488, 49.594364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.626554, 33.828411, 49.394501>,  <31.453722, 33.689949, 49.061398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626554, 33.828411, 49.394501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874829, 0.063408, -0.480264,
		-0.219048, 0.936034, -0.275426,
		0.432079, 0.346151, 0.832758,
		31.756178, 33.932255, 49.644329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.062029, 35.208561, 34.895496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.217073, 34.846199, 34.827267>,  <24.310101, 34.628780, 34.786331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.217073, 34.846199, 34.827267>,  <24.062029, 35.208561, 34.895496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.217073, 34.846199, 34.827267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903391, 0.336488, 0.265820,
		-0.183412, -0.257129, 0.948812,
		0.387614, -0.905903, -0.170572,
		24.333357, 34.574429, 34.776096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.436291, 34.913715, 35.484066>,  <24.062029, 35.208561, 34.895496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.436291, 34.913715, 35.484066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.622120, 34.811638, 35.144878>,  <24.733618, 34.750389, 34.941368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.622120, 34.811638, 35.144878>,  <24.436291, 34.913715, 35.484066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.622120, 34.811638, 35.144878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880629, 0.233798, 0.412104,
		0.093085, -0.938197, 0.333350,
		0.464572, -0.255197, -0.847967,
		24.761492, 34.735081, 34.890488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.971247, 34.651165, 35.691853>,  <24.436291, 34.913715, 35.484066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.971247, 34.651165, 35.691853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.081453, 34.758335, 35.322571>,  <25.147577, 34.822639, 35.101002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.081453, 34.758335, 35.322571>,  <24.971247, 34.651165, 35.691853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081453, 34.758335, 35.322571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871128, 0.336500, 0.357635,
		0.406479, -0.902764, -0.140687,
		0.275519, 0.267927, -0.923203,
		25.164108, 34.838715, 35.045609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.566141, 34.263008, 35.452698>,  <24.971247, 34.651165, 35.691853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.566141, 34.263008, 35.452698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.524273, 34.619747, 35.276676>,  <25.499151, 34.833790, 35.171062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.524273, 34.619747, 35.276676>,  <25.566141, 34.263008, 35.452698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524273, 34.619747, 35.276676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940176, 0.232988, 0.248565,
		0.324210, -0.387708, -0.862885,
		-0.104672, 0.891852, -0.440051,
		25.492872, 34.887302, 35.144661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.227551, 34.069500, 35.745968>,  <25.566141, 34.263008, 35.452698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.227551, 34.069500, 35.745968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.101786, 33.697025, 35.672173>,  <26.026327, 33.473541, 35.627895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.101786, 33.697025, 35.672173>,  <26.227551, 34.069500, 35.745968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101786, 33.697025, 35.672173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918677, 0.249520, 0.306224,
		-0.239118, 0.265765, -0.933912,
		-0.314413, -0.931187, -0.184487,
		26.007462, 33.417667, 35.616825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051638, 33.818008, 36.493595>,  <26.227551, 34.069500, 35.745968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051638, 33.818008, 36.493595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.673050, 33.783436, 36.617996>,  <25.445896, 33.762691, 36.692638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.673050, 33.783436, 36.617996>,  <26.051638, 33.818008, 36.493595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673050, 33.783436, 36.617996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322006, 0.319909, -0.891050,
		-0.022475, -0.943498, -0.330616,
		-0.946470, -0.086434, 0.311002,
		25.389109, 33.757507, 36.711296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.930496, 33.522976, 37.268051>,  <26.051638, 33.818008, 36.493595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.930496, 33.522976, 37.268051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.786263, 33.697498, 37.597805>,  <25.699722, 33.802212, 37.795658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.786263, 33.697498, 37.597805>,  <25.930496, 33.522976, 37.268051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786263, 33.697498, 37.597805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932575, 0.184614, 0.310197,
		-0.016853, 0.880656, -0.473456,
		-0.360584, 0.436305, 0.824389,
		25.678087, 33.828388, 37.845123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184711, 34.238262, 37.300205>,  <25.930496, 33.522976, 37.268051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184711, 34.238262, 37.300205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.071335, 34.153660, 37.674355>,  <26.003309, 34.102898, 37.898846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.071335, 34.153660, 37.674355>,  <26.184711, 34.238262, 37.300205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.071335, 34.153660, 37.674355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893605, 0.295732, 0.337657,
		-0.348038, 0.931561, 0.105184,
		-0.283442, -0.211510, 0.935374,
		25.986301, 34.090206, 37.954967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472229, 34.774937, 37.790817>,  <26.184711, 34.238262, 37.300205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472229, 34.774937, 37.790817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.426441, 34.414753, 37.958656>,  <26.398968, 34.198643, 38.059361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.426441, 34.414753, 37.958656>,  <26.472229, 34.774937, 37.790817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426441, 34.414753, 37.958656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948079, 0.027136, 0.316876,
		-0.296721, 0.434086, 0.850603,
		-0.114469, -0.900463, 0.419599,
		26.392101, 34.144615, 38.084538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769833, 34.860435, 38.395191>,  <26.472229, 34.774937, 37.790817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769833, 34.860435, 38.395191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.759737, 34.482372, 38.264942>,  <26.753679, 34.255535, 38.186790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.759737, 34.482372, 38.264942>,  <26.769833, 34.860435, 38.395191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759737, 34.482372, 38.264942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992718, -0.062074, 0.103238,
		-0.117789, -0.320649, 0.939846,
		-0.025237, -0.945162, -0.325626,
		26.752167, 34.198822, 38.167255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071424, 34.380245, 38.806133>,  <26.769833, 34.860435, 38.395191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071424, 34.380245, 38.806133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.112242, 34.271809, 38.423283>,  <27.136732, 34.206745, 38.193573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.112242, 34.271809, 38.423283>,  <27.071424, 34.380245, 38.806133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112242, 34.271809, 38.423283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993412, -0.022666, 0.112331,
		-0.052146, -0.962286, 0.266993,
		0.102043, -0.271092, -0.957129,
		27.142855, 34.190479, 38.136143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537144, 33.899296, 38.875797>,  <27.071424, 34.380245, 38.806133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537144, 33.899296, 38.875797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.531069, 34.075779, 38.516888>,  <27.527424, 34.181667, 38.301540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.531069, 34.075779, 38.516888>,  <27.537144, 33.899296, 38.875797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531069, 34.075779, 38.516888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986058, 0.155333, 0.059687,
		0.165711, -0.883860, -0.437414,
		-0.015189, 0.441206, -0.897277,
		27.526512, 34.208141, 38.247704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023380, 34.145817, 38.477440>,  <27.537144, 33.899296, 38.875797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.023380, 34.145817, 38.477440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.155338, 34.519791, 38.529686>,  <28.234514, 34.744175, 38.561035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.155338, 34.519791, 38.529686>,  <28.023380, 34.145817, 38.477440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155338, 34.519791, 38.529686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072805, 0.163150, -0.983911,
		-0.941205, 0.315080, 0.121890,
		0.329897, 0.934937, 0.130618,
		28.254307, 34.800270, 38.568871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734625, 34.239033, 38.603203>,  <28.023380, 34.145817, 38.477440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734625, 34.239033, 38.603203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.120459, 34.168488, 38.681660>,  <29.351959, 34.126160, 38.728733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.120459, 34.168488, 38.681660>,  <28.734625, 34.239033, 38.603203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120459, 34.168488, 38.681660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175822, 0.984213, 0.020313,
		-0.196629, 0.014892, 0.980365,
		0.964585, -0.176364, 0.196143,
		29.409834, 34.115578, 38.740501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028652, 34.186039, 39.270657>,  <28.734625, 34.239033, 38.603203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028652, 34.186039, 39.270657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.289299, 34.340759, 39.009651>,  <29.445688, 34.433594, 38.853046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.289299, 34.340759, 39.009651>,  <29.028652, 34.186039, 39.270657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289299, 34.340759, 39.009651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175202, 0.760213, 0.625604,
		0.738039, -0.521976, 0.427597,
		0.651615, 0.386805, -0.652518,
		29.484785, 34.456799, 38.813896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641115, 34.304554, 39.561371>,  <29.028652, 34.186039, 39.270657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641115, 34.304554, 39.561371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.587234, 34.580570, 39.276920>,  <29.554905, 34.746181, 39.106251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.587234, 34.580570, 39.276920>,  <29.641115, 34.304554, 39.561371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587234, 34.580570, 39.276920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227038, 0.720067, 0.655712,
		0.964525, -0.073125, -0.253661,
		-0.134704, 0.690041, -0.711124,
		29.546824, 34.787582, 39.063583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193100, 34.832279, 39.500702>,  <29.641115, 34.304554, 39.561371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193100, 34.832279, 39.500702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.863316, 35.046577, 39.427773>,  <29.665445, 35.175156, 39.384014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.863316, 35.046577, 39.427773>,  <30.193100, 34.832279, 39.500702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863316, 35.046577, 39.427773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283168, 0.669476, 0.686745,
		0.489978, 0.514568, -0.703663,
		-0.824462, 0.535745, -0.182320,
		29.615976, 35.207302, 39.373077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178720, 35.309322, 40.128899>,  <30.193100, 34.832279, 39.500702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178720, 35.309322, 40.128899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.811216, 35.351551, 40.281075>,  <29.590714, 35.376888, 40.372379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.811216, 35.351551, 40.281075>,  <30.178720, 35.309322, 40.128899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811216, 35.351551, 40.281075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044689, -0.929586, 0.365887,
		0.392283, 0.353163, 0.849347,
		-0.918758, 0.105575, 0.380443,
		29.535589, 35.383224, 40.395206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451124, 34.944435, 40.075012>,  <30.178720, 35.309322, 40.128899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451124, 34.944435, 40.075012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.112278, 34.760166, 40.180973>,  <28.908970, 34.649605, 40.244549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.112278, 34.760166, 40.180973>,  <29.451124, 34.944435, 40.075012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112278, 34.760166, 40.180973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025794, 0.462270, 0.886364,
		-0.530779, 0.757688, -0.379714,
		-0.847118, -0.460669, 0.264907,
		28.858143, 34.621964, 40.260445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797560, 35.266811, 39.970470>,  <29.451124, 34.944435, 40.075012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797560, 35.266811, 39.970470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.889799, 35.014107, 40.266495>,  <28.945143, 34.862484, 40.444111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.889799, 35.014107, 40.266495>,  <28.797560, 35.266811, 39.970470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889799, 35.014107, 40.266495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079928, 0.770292, 0.632663,
		-0.969761, -0.086740, 0.228124,
		0.230600, -0.631765, 0.740065,
		28.958979, 34.824577, 40.488514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367016, 35.426960, 40.548546>,  <28.797560, 35.266811, 39.970470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367016, 35.426960, 40.548546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.678904, 35.224312, 40.695717>,  <28.866035, 35.102722, 40.784019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.678904, 35.224312, 40.695717>,  <28.367016, 35.426960, 40.548546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678904, 35.224312, 40.695717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142367, 0.715687, 0.683757,
		-0.609729, -0.480757, 0.630161,
		0.779719, -0.506621, 0.367931,
		28.912819, 35.072327, 40.806095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291477, 35.355503, 41.245022>,  <28.367016, 35.426960, 40.548546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291477, 35.355503, 41.245022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.684450, 35.294838, 41.201519>,  <28.920235, 35.258438, 41.175419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.684450, 35.294838, 41.201519>,  <28.291477, 35.355503, 41.245022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684450, 35.294838, 41.201519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169071, 0.476573, 0.862724,
		-0.079012, -0.865955, 0.493842,
		0.982432, -0.151660, -0.108753,
		28.979179, 35.249340, 41.168892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563141, 35.227013, 42.008373>,  <28.291477, 35.355503, 41.245022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563141, 35.227013, 42.008373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.884949, 35.304928, 41.783943>,  <29.078033, 35.351677, 41.649284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.884949, 35.304928, 41.783943>,  <28.563141, 35.227013, 42.008373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884949, 35.304928, 41.783943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406929, 0.507327, 0.759623,
		0.432615, -0.839450, 0.328889,
		0.804520, 0.194790, -0.561074,
		29.126305, 35.363365, 41.615620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029003, 35.244938, 42.478607>,  <28.563141, 35.227013, 42.008373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029003, 35.244938, 42.478607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.152534, 35.476418, 42.176685>,  <29.226654, 35.615307, 41.995533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.152534, 35.476418, 42.176685>,  <29.029003, 35.244938, 42.478607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152534, 35.476418, 42.176685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372606, 0.656553, 0.655822,
		0.875094, -0.483782, -0.012864,
		0.308829, 0.578699, -0.754806,
		29.245184, 35.650028, 41.950245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779881, 35.440144, 42.582874>,  <29.029003, 35.244938, 42.478607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779881, 35.440144, 42.582874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.564911, 35.709774, 42.380177>,  <29.435928, 35.871552, 42.258556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.564911, 35.709774, 42.380177>,  <29.779881, 35.440144, 42.582874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564911, 35.709774, 42.380177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279689, 0.709361, 0.646978,
		0.795580, 0.205972, -0.569761,
		-0.537426, 0.674079, -0.506746,
		29.403683, 35.911999, 42.228153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992971, 35.507584, 43.272896>,  <29.779881, 35.440144, 42.582874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992971, 35.507584, 43.272896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.162344, 35.148556, 43.223778>,  <30.263968, 34.933140, 43.194305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.162344, 35.148556, 43.223778>,  <29.992971, 35.507584, 43.272896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162344, 35.148556, 43.223778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389777, 0.058138, 0.919072,
		-0.817790, -0.437027, 0.374469,
		0.423430, -0.897568, -0.122798,
		30.289373, 34.879284, 43.186939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978973, 35.179150, 43.989727>,  <29.992971, 35.507584, 43.272896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978973, 35.179150, 43.989727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.281256, 35.005955, 43.793182>,  <30.462626, 34.902039, 43.675255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.281256, 35.005955, 43.793182>,  <29.978973, 35.179150, 43.989727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281256, 35.005955, 43.793182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481750, -0.140726, 0.864935,
		-0.443650, -0.890349, 0.102242,
		0.755706, -0.432983, -0.491359,
		30.507967, 34.876060, 43.645775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995853, 34.505894, 44.259174>,  <29.978973, 35.179150, 43.989727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995853, 34.505894, 44.259174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.355614, 34.639500, 44.146385>,  <30.571470, 34.719662, 44.078712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.355614, 34.639500, 44.146385>,  <29.995853, 34.505894, 44.259174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355614, 34.639500, 44.146385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393387, -0.337251, 0.855283,
		0.190583, -0.880168, -0.434722,
		0.899402, 0.334016, -0.281972,
		30.625435, 34.739704, 44.061794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562195, 33.928425, 44.080017>,  <29.995853, 34.505894, 44.259174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562195, 33.928425, 44.080017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.673727, 34.275227, 44.245213>,  <30.740646, 34.483307, 44.344330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.673727, 34.275227, 44.245213>,  <30.562195, 33.928425, 44.080017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673727, 34.275227, 44.245213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456779, -0.498020, 0.737108,
		0.844752, -0.016882, -0.534891,
		0.278830, 0.867001, 0.412993,
		30.757376, 34.535328, 44.369110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224564, 33.736622, 44.349457>,  <30.562195, 33.928425, 44.080017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224564, 33.736622, 44.349457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.145973, 34.058449, 44.573624>,  <31.098820, 34.251545, 44.708122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.145973, 34.058449, 44.573624>,  <31.224564, 33.736622, 44.349457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145973, 34.058449, 44.573624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527779, -0.394911, 0.751994,
		0.826345, 0.443525, -0.347044,
		-0.196476, 0.804569, 0.560416,
		31.087030, 34.299820, 44.741749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062351, 33.097263, 44.245083>,  <31.224564, 33.736622, 44.349457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062351, 33.097263, 44.245083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.403534, 33.081596, 44.036880>,  <31.608244, 33.072197, 43.911957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.403534, 33.081596, 44.036880>,  <31.062351, 33.097263, 44.245083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403534, 33.081596, 44.036880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511506, -0.136044, 0.848442,
		-0.104039, -0.989929, -0.096008,
		0.852958, -0.039163, -0.520509,
		31.659422, 33.069847, 43.880730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444193, 32.440811, 44.380550>,  <31.062351, 33.097263, 44.245083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444193, 32.440811, 44.380550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.680624, 32.760250, 44.335178>,  <31.822483, 32.951916, 44.307957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.680624, 32.760250, 44.335178>,  <31.444193, 32.440811, 44.380550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680624, 32.760250, 44.335178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217832, -0.022644, 0.975724,
		0.776644, -0.601437, -0.187344,
		0.591078, 0.798599, -0.113426,
		31.857948, 32.999828, 44.301151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184292, 32.355553, 44.690311>,  <31.444193, 32.440811, 44.380550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184292, 32.355553, 44.690311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.051254, 32.732780, 44.690178>,  <31.971434, 32.959118, 44.690098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.051254, 32.732780, 44.690178>,  <32.184292, 32.355553, 44.690311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051254, 32.732780, 44.690178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043484, -0.014978, 0.998942,
		0.942069, 0.332252, 0.045990,
		-0.332590, 0.943072, -0.000337,
		31.951477, 33.015701, 44.690075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558640, 32.915504, 45.028099>,  <32.184292, 32.355553, 44.690311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558640, 32.915504, 45.028099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170937, 33.013847, 45.032108>,  <31.938316, 33.072853, 45.034515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170937, 33.013847, 45.032108>,  <32.558640, 32.915504, 45.028099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170937, 33.013847, 45.032108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030014, -0.158580, 0.986890,
		0.244223, 0.956247, 0.161083,
		-0.969255, 0.245856, 0.010028,
		31.880159, 33.087605, 45.035118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527306, 33.049934, 45.799152>,  <32.558640, 32.915504, 45.028099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527306, 33.049934, 45.799152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.169136, 33.004440, 45.626980>,  <31.954233, 32.977142, 45.523674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.169136, 33.004440, 45.626980>,  <32.527306, 33.049934, 45.799152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169136, 33.004440, 45.626980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333367, -0.469526, 0.817565,
		-0.295084, 0.875563, 0.382512,
		-0.895428, -0.113734, -0.430433,
		31.900507, 32.970322, 45.497849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411629, 33.533882, 46.389557>,  <32.527306, 33.049934, 45.799152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411629, 33.533882, 46.389557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.172058, 33.837109, 46.492798>,  <32.028316, 34.019043, 46.554741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.172058, 33.837109, 46.492798>,  <32.411629, 33.533882, 46.389557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172058, 33.837109, 46.492798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605567, -0.639639, 0.473445,
		0.523995, 0.127263, 0.842160,
		-0.598930, 0.758067, 0.258101,
		31.992378, 34.064529, 46.570229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438316, 33.589577, 47.223053>,  <32.411629, 33.533882, 46.389557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438316, 33.589577, 47.223053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.130856, 33.640305, 46.972267>,  <31.946379, 33.670742, 46.821796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.130856, 33.640305, 46.972267>,  <32.438316, 33.589577, 47.223053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130856, 33.640305, 46.972267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574636, -0.567483, 0.589709,
		-0.281003, 0.813560, 0.509075,
		-0.768655, 0.126823, -0.626965,
		31.900259, 33.678352, 46.784176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798304, 33.661240, 47.552326>,  <32.438316, 33.589577, 47.223053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798304, 33.661240, 47.552326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.663092, 33.526623, 47.200764>,  <31.581964, 33.445854, 46.989826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.663092, 33.526623, 47.200764>,  <31.798304, 33.661240, 47.552326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663092, 33.526623, 47.200764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631686, -0.611133, 0.476958,
		-0.697645, 0.716419, -0.006008,
		-0.338030, -0.336542, -0.878906,
		31.561684, 33.425659, 46.937092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144691, 33.867283, 48.327618>,  <31.798304, 33.661240, 47.552326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144691, 33.867283, 48.327618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.491276, 34.066841, 48.335102>,  <32.699226, 34.186577, 48.339592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.491276, 34.066841, 48.335102>,  <32.144691, 33.867283, 48.327618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491276, 34.066841, 48.335102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216888, 0.342396, 0.914180,
		0.449670, -0.796160, 0.404877,
		0.866462, 0.498892, 0.018712,
		32.751213, 34.216507, 48.340717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941626, 34.339031, 48.823280>,  <32.144691, 33.867283, 48.327618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941626, 34.339031, 48.823280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.097092, 34.227680, 49.174606>,  <32.190372, 34.160870, 49.385403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.097092, 34.227680, 49.174606>,  <31.941626, 34.339031, 48.823280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097092, 34.227680, 49.174606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918787, 0.188543, -0.346815,
		-0.069054, 0.941783, 0.329054,
		0.388666, -0.278381, 0.878318,
		32.213692, 34.144165, 49.438103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454670, 34.879726, 48.986168>,  <31.941626, 34.339031, 48.823280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454670, 34.879726, 48.986168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.567036, 34.586617, 49.234081>,  <32.634457, 34.410751, 49.382828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.567036, 34.586617, 49.234081>,  <32.454670, 34.879726, 48.986168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567036, 34.586617, 49.234081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938206, 0.345682, -0.016544,
		-0.202125, 0.586132, 0.784598,
		0.280919, -0.732771, 0.619784,
		32.651310, 34.366787, 49.420017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943882, 35.052937, 49.464230>,  <32.454670, 34.879726, 48.986168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943882, 35.052937, 49.464230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.013542, 34.659058, 49.461544>,  <33.055336, 34.422729, 49.459934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.013542, 34.659058, 49.461544>,  <32.943882, 35.052937, 49.464230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013542, 34.659058, 49.461544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969468, 0.172641, -0.174148,
		0.172641, 0.023823, 0.984697,
		0.174148, -0.984697, -0.006709,
		33.065788, 34.363647, 49.459530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561501, 34.976017, 49.699852>,  <32.943882, 35.052937, 49.464230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561501, 34.976017, 49.699852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.515743, 34.615631, 49.532436>,  <33.488289, 34.399399, 49.431988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.515743, 34.615631, 49.532436>,  <33.561501, 34.976017, 49.699852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515743, 34.615631, 49.532436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988079, -0.059487, -0.141993,
		0.103033, -0.429795, 0.897029,
		-0.114390, -0.900965, -0.418542,
		33.481426, 34.345341, 49.406872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171574, 34.500729, 49.943504>,  <33.561501, 34.976017, 49.699852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171574, 34.500729, 49.943504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.024612, 34.321571, 49.617458>,  <33.936436, 34.214077, 49.421833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.024612, 34.321571, 49.617458>,  <34.171574, 34.500729, 49.943504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024612, 34.321571, 49.617458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930042, -0.171404, -0.325027,
		0.005863, -0.877505, 0.479532,
		-0.367406, -0.447891, -0.815111,
		33.914391, 34.187202, 49.372925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467148, 33.948215, 49.954277>,  <34.171574, 34.500729, 49.943504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467148, 33.948215, 49.954277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.359394, 33.981758, 49.570526>,  <34.294743, 34.001884, 49.340275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.359394, 33.981758, 49.570526>,  <34.467148, 33.948215, 49.954277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359394, 33.981758, 49.570526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926354, -0.249752, -0.281945,
		-0.263250, -0.964671, -0.010406,
		-0.269386, 0.083862, -0.959374,
		34.278580, 34.006916, 49.282715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791668, 33.369701, 49.657303>,  <34.467148, 33.948215, 49.954277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791668, 33.369701, 49.657303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.713650, 33.626259, 49.360500>,  <34.666840, 33.780193, 49.182419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.713650, 33.626259, 49.360500>,  <34.791668, 33.369701, 49.657303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713650, 33.626259, 49.360500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868989, -0.237774, -0.433961,
		-0.454770, -0.729434, -0.510989,
		-0.195046, 0.641396, -0.742003,
		34.655136, 33.818676, 49.137901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942959, 33.030468, 48.966679>,  <34.791668, 33.369701, 49.657303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942959, 33.030468, 48.966679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970829, 33.425392, 48.909588>,  <34.987553, 33.662346, 48.875332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970829, 33.425392, 48.909588>,  <34.942959, 33.030468, 48.966679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970829, 33.425392, 48.909588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764665, -0.144745, -0.627961,
		-0.640650, -0.065388, -0.765044,
		0.069676, 0.987306, -0.142731,
		34.991734, 33.721584, 48.866768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168530, 32.910271, 48.296421>,  <34.942959, 33.030468, 48.966679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168530, 32.910271, 48.296421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.228302, 33.294884, 48.388615>,  <35.264164, 33.525650, 48.443932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.228302, 33.294884, 48.388615>,  <35.168530, 32.910271, 48.296421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228302, 33.294884, 48.388615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855904, -0.009070, -0.517055,
		-0.495075, 0.274539, -0.824336,
		0.149428, 0.961533, 0.230488,
		35.273132, 33.583344, 48.457760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421387, 33.168243, 47.669792>,  <35.168530, 32.910271, 48.296421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421387, 33.168243, 47.669792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.522419, 33.435421, 47.949806>,  <35.583038, 33.595726, 48.117817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.522419, 33.435421, 47.949806>,  <35.421387, 33.168243, 47.669792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522419, 33.435421, 47.949806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955232, -0.056945, -0.290326,
		-0.154057, 0.742031, -0.652424,
		0.252583, 0.667943, 0.700039,
		35.598194, 33.635803, 48.159817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556515, 33.830994, 47.286484>,  <35.421387, 33.168243, 47.669792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556515, 33.830994, 47.286484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.731228, 33.844093, 47.646072>,  <35.836056, 33.851952, 47.861824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.731228, 33.844093, 47.646072>,  <35.556515, 33.830994, 47.286484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731228, 33.844093, 47.646072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890751, 0.123821, -0.437300,
		-0.125633, 0.991764, 0.024912,
		0.436783, 0.032749, 0.898971,
		35.862263, 33.853920, 47.915764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984997, 34.348671, 47.322632>,  <35.556515, 33.830994, 47.286484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984997, 34.348671, 47.322632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.133282, 34.091934, 47.591141>,  <36.222252, 33.937893, 47.752247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.133282, 34.091934, 47.591141>,  <35.984997, 34.348671, 47.322632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133282, 34.091934, 47.591141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916173, 0.134192, -0.377650,
		0.152311, 0.755005, 0.637784,
		0.370713, -0.641841, 0.671276,
		36.244495, 33.899384, 47.792522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609627, 34.739120, 47.559402>,  <35.984997, 34.348671, 47.322632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609627, 34.739120, 47.559402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.626476, 34.344872, 47.624859>,  <36.636585, 34.108322, 47.664135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.626476, 34.344872, 47.624859>,  <36.609627, 34.739120, 47.559402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626476, 34.344872, 47.624859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906473, -0.031177, -0.421111,
		0.420157, 0.166078, 0.892124,
		0.042123, -0.985619, 0.163645,
		36.639114, 34.049187, 47.673954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316425, 34.629940, 47.639393>,  <36.609627, 34.739120, 47.559402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316425, 34.629940, 47.639393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.195419, 34.257812, 47.556454>,  <37.122814, 34.034534, 47.506691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.195419, 34.257812, 47.556454>,  <37.316425, 34.629940, 47.639393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195419, 34.257812, 47.556454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888495, -0.196496, -0.414689,
		0.345050, -0.309676, 0.886026,
		-0.302519, -0.930317, -0.207345,
		37.104664, 33.978718, 47.494251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877731, 34.295197, 48.098286>,  <37.316425, 34.629940, 47.639393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877731, 34.295197, 48.098286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165161, 34.571239, 48.063862>,  <38.337620, 34.736866, 48.043209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165161, 34.571239, 48.063862>,  <37.877731, 34.295197, 48.098286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165161, 34.571239, 48.063862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425535, -0.338428, 0.839277,
		0.550069, -0.639700, -0.536850,
		0.718571, 0.690109, -0.086056,
		38.380733, 34.778271, 48.038044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569889, 33.962074, 48.044975>,  <37.877731, 34.295197, 48.098286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569889, 33.962074, 48.044975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564735, 34.310364, 48.241615>,  <38.561642, 34.519337, 48.359600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564735, 34.310364, 48.241615>,  <38.569889, 33.962074, 48.044975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564735, 34.310364, 48.241615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186259, -0.480944, 0.856738,
		0.982416, 0.102605, -0.155983,
		-0.012886, 0.870727, 0.491598,
		38.560871, 34.571583, 48.389095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177483, 33.652439, 47.689857>,  <38.569889, 33.962074, 48.044975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177483, 33.652439, 47.689857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.850048, 33.545269, 47.486633>,  <38.653587, 33.480968, 47.364700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.850048, 33.545269, 47.486633>,  <39.177483, 33.652439, 47.689857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850048, 33.545269, 47.486633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462362, -0.832177, -0.306109,
		-0.340782, -0.485486, 0.805091,
		-0.818590, -0.267927, -0.508062,
		38.604473, 33.464890, 47.334213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705517, 33.436481, 48.260983>,  <39.177483, 33.652439, 47.689857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705517, 33.436481, 48.260983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.827675, 33.770790, 48.443508>,  <39.900970, 33.971375, 48.553024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.827675, 33.770790, 48.443508>,  <39.705517, 33.436481, 48.260983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827675, 33.770790, 48.443508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100137, -0.448361, 0.888225,
		0.946947, -0.316951, -0.053235,
		0.305393, 0.835771, 0.456313,
		39.919292, 34.021523, 48.580402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314068, 32.782532, 48.315666>,  <39.705517, 33.436481, 48.260983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314068, 32.782532, 48.315666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595558, 32.553799, 48.484322>,  <39.764450, 32.416557, 48.585514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595558, 32.553799, 48.484322>,  <39.314068, 32.782532, 48.315666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595558, 32.553799, 48.484322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644738, -0.763311, 0.040864,
		0.298472, -0.300602, -0.905844,
		0.703724, -0.571835, 0.421636,
		39.806675, 32.382248, 48.610813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843166, 32.320854, 48.695843>,  <39.314068, 32.782532, 48.315666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843166, 32.320854, 48.695843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.709774, 32.674278, 48.827366>,  <38.629738, 32.886333, 48.906281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.709774, 32.674278, 48.827366>,  <38.843166, 32.320854, 48.695843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709774, 32.674278, 48.827366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630839, -0.468325, 0.618639,
		0.700592, -0.001120, 0.713561,
		-0.333485, 0.883556, 0.328811,
		38.609730, 32.939346, 48.926010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726406, 32.140472, 49.436176>,  <38.843166, 32.320854, 48.695843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726406, 32.140472, 49.436176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.534595, 32.486828, 49.379208>,  <38.419510, 32.694641, 49.345024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.534595, 32.486828, 49.379208>,  <38.726406, 32.140472, 49.436176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534595, 32.486828, 49.379208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632004, -0.228186, 0.740609,
		0.608786, 0.445158, 0.656668,
		-0.479530, 0.865890, -0.142425,
		38.390736, 32.746593, 49.336479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588238, 32.180775, 50.063580>,  <38.726406, 32.140472, 49.436176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588238, 32.180775, 50.063580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364731, 32.472225, 49.905148>,  <38.230625, 32.647095, 49.810089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364731, 32.472225, 49.905148>,  <38.588238, 32.180775, 50.063580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364731, 32.472225, 49.905148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589481, -0.013011, 0.807678,
		0.583342, 0.684788, 0.436781,
		-0.558771, 0.728627, -0.396079,
		38.197098, 32.690815, 49.786324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536289, 32.759102, 50.639027>,  <38.588238, 32.180775, 50.063580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536289, 32.759102, 50.639027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.246399, 32.811192, 50.368378>,  <38.072464, 32.842445, 50.205990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.246399, 32.811192, 50.368378>,  <38.536289, 32.759102, 50.639027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246399, 32.811192, 50.368378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641319, 0.231588, 0.731490,
		0.251952, 0.964059, -0.084324,
		-0.724727, 0.130222, -0.676618,
		38.028980, 32.850258, 50.165394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160362, 33.353374, 50.801277>,  <38.536289, 32.759102, 50.639027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160362, 33.353374, 50.801277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883835, 33.144764, 50.601246>,  <37.717918, 33.019596, 50.481228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883835, 33.144764, 50.601246>,  <38.160362, 33.353374, 50.801277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883835, 33.144764, 50.601246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709273, 0.357772, 0.607397,
		-0.137858, 0.774603, -0.617241,
		-0.691323, -0.521526, -0.500083,
		37.676437, 32.988308, 50.451221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672104, 33.838524, 50.683407>,  <38.160362, 33.353374, 50.801277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672104, 33.838524, 50.683407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.496124, 33.485806, 50.615433>,  <37.390537, 33.274174, 50.574650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.496124, 33.485806, 50.615433>,  <37.672104, 33.838524, 50.683407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496124, 33.485806, 50.615433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713933, 0.228656, 0.661828,
		-0.544742, 0.412492, -0.730141,
		-0.439950, -0.881797, -0.169933,
		37.364140, 33.221268, 50.564453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855858, 33.883717, 50.403706>,  <37.672104, 33.838524, 50.683407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855858, 33.883717, 50.403706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.955898, 33.564198, 50.622566>,  <37.015923, 33.372486, 50.753883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.955898, 33.564198, 50.622566>,  <36.855858, 33.883717, 50.403706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955898, 33.564198, 50.622566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605628, 0.311843, 0.732098,
		-0.755421, -0.514473, -0.405778,
		0.250106, -0.798794, 0.547152,
		37.030930, 33.324558, 50.786713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393841, 33.974876, 50.876823>,  <36.855858, 33.883717, 50.403706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393841, 33.974876, 50.876823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.567642, 33.649384, 51.031250>,  <36.671925, 33.454086, 51.123905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.567642, 33.649384, 51.031250>,  <36.393841, 33.974876, 50.876823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567642, 33.649384, 51.031250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550492, 0.099323, 0.828911,
		-0.712858, -0.572689, -0.404798,
		0.434502, -0.813733, 0.386064,
		36.697994, 33.405262, 51.147068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817505, 33.532784, 51.179497>,  <36.393841, 33.974876, 50.876823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817505, 33.532784, 51.179497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.169235, 33.456467, 51.354031>,  <36.380272, 33.410675, 51.458752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.169235, 33.456467, 51.354031>,  <35.817505, 33.532784, 51.179497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169235, 33.456467, 51.354031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392207, 0.229541, 0.890777,
		-0.270111, -0.954415, 0.127010,
		0.879326, -0.190794, 0.436330,
		36.433033, 33.399227, 51.484928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734169, 33.061024, 51.681210>,  <35.817505, 33.532784, 51.179497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734169, 33.061024, 51.681210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.063736, 33.237827, 51.823082>,  <36.261475, 33.343910, 51.908203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.063736, 33.237827, 51.823082>,  <35.734169, 33.061024, 51.681210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063736, 33.237827, 51.823082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467531, 0.176444, 0.866188,
		0.320282, -0.879486, 0.352028,
		0.823914, 0.442009, 0.354675,
		36.310909, 33.370430, 51.929485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881847, 32.630997, 52.353512>,  <35.734169, 33.061024, 51.681210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881847, 32.630997, 52.353512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049450, 32.994175, 52.350075>,  <36.150009, 33.212082, 52.348011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049450, 32.994175, 52.350075>,  <35.881847, 32.630997, 52.353512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049450, 32.994175, 52.350075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445279, 0.213717, 0.869513,
		0.791306, -0.360501, 0.493836,
		0.419001, 0.907945, -0.008592,
		36.175152, 33.266560, 52.347496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015427, 32.742165, 53.093670>,  <35.881847, 32.630997, 52.353512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015427, 32.742165, 53.093670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.050285, 33.112400, 52.946323>,  <36.071201, 33.334541, 52.857918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.050285, 33.112400, 52.946323>,  <36.015427, 32.742165, 53.093670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050285, 33.112400, 52.946323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231822, 0.378460, 0.896118,
		0.968846, 0.007298, 0.247554,
		0.087150, 0.925588, -0.368362,
		36.076431, 33.390076, 52.835815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357746, 33.098583, 53.632042>,  <36.015427, 32.742165, 53.093670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357746, 33.098583, 53.632042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.168694, 33.366779, 53.403282>,  <36.055264, 33.527699, 53.266026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.168694, 33.366779, 53.403282>,  <36.357746, 33.098583, 53.632042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168694, 33.366779, 53.403282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285282, 0.497600, 0.819151,
		0.833809, 0.550305, -0.043901,
		-0.472628, 0.670491, -0.571895,
		36.026905, 33.567928, 53.231712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353283, 33.666588, 54.043758>,  <36.357746, 33.098583, 53.632042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353283, 33.666588, 54.043758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.110039, 33.817436, 53.764336>,  <35.964092, 33.907944, 53.596684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.110039, 33.817436, 53.764336>,  <36.353283, 33.666588, 54.043758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110039, 33.817436, 53.764336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272019, 0.727698, 0.629651,
		0.745791, 0.572920, -0.339939,
		-0.608113, 0.377118, -0.698556,
		35.927605, 33.930573, 53.554768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475410, 34.394035, 54.020676>,  <36.353283, 33.666588, 54.043758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475410, 34.394035, 54.020676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.107822, 34.312351, 53.885738>,  <35.887272, 34.263340, 53.804775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.107822, 34.312351, 53.885738>,  <36.475410, 34.394035, 54.020676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107822, 34.312351, 53.885738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383349, 0.663161, 0.642854,
		0.092439, 0.720082, -0.687705,
		-0.918966, -0.204207, -0.337344,
		35.832134, 34.251091, 53.784534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192402, 35.062584, 53.941036>,  <36.475410, 34.394035, 54.020676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192402, 35.062584, 53.941036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.911976, 34.779686, 53.977489>,  <35.743721, 34.609947, 53.999359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.911976, 34.779686, 53.977489>,  <36.192402, 35.062584, 53.941036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911976, 34.779686, 53.977489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541196, 0.610921, 0.577826,
		-0.464340, 0.355775, -0.811056,
		-0.701067, -0.707248, 0.091131,
		35.701656, 34.567513, 54.004829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620464, 35.265091, 53.583996>,  <36.192402, 35.062584, 53.941036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620464, 35.265091, 53.583996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504253, 35.019646, 53.877686>,  <35.434528, 34.872379, 54.053898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504253, 35.019646, 53.877686>,  <35.620464, 35.265091, 53.583996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504253, 35.019646, 53.877686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553450, 0.733700, 0.394180,
		-0.780570, -0.291837, -0.552759,
		-0.290523, -0.613609, 0.734221,
		35.417095, 34.835564, 54.097950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016178, 35.457592, 53.679573>,  <35.620464, 35.265091, 53.583996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016178, 35.457592, 53.679573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.038383, 35.248245, 54.019691>,  <35.051708, 35.122639, 54.223763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.038383, 35.248245, 54.019691>,  <35.016178, 35.457592, 53.679573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038383, 35.248245, 54.019691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439369, 0.751920, 0.491499,
		-0.896590, -0.400881, -0.188206,
		0.055517, -0.523365, 0.850298,
		35.055038, 35.091236, 54.274780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339405, 35.424351, 54.028114>,  <35.016178, 35.457592, 53.679573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339405, 35.424351, 54.028114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621529, 35.342590, 54.299633>,  <34.790802, 35.293533, 54.462543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621529, 35.342590, 54.299633>,  <34.339405, 35.424351, 54.028114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621529, 35.342590, 54.299633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315272, 0.767184, 0.558599,
		-0.634935, -0.607990, 0.476661,
		0.705309, -0.204397, 0.678794,
		34.833122, 35.281273, 54.503273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907669, 35.301594, 54.600262>,  <34.339405, 35.424351, 54.028114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907669, 35.301594, 54.600262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277527, 35.386707, 54.726601>,  <34.499439, 35.437775, 54.802406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277527, 35.386707, 54.726601>,  <33.907669, 35.301594, 54.600262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277527, 35.386707, 54.726601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380649, 0.542666, 0.748746,
		-0.012081, -0.812550, 0.582767,
		0.924641, 0.212784, 0.315852,
		34.554920, 35.450542, 54.821358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890896, 35.235149, 55.356964>,  <33.907669, 35.301594, 54.600262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890896, 35.235149, 55.356964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.216293, 35.446705, 55.260208>,  <34.411530, 35.573639, 55.202156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.216293, 35.446705, 55.260208>,  <33.890896, 35.235149, 55.356964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216293, 35.446705, 55.260208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155894, 0.598995, 0.785431,
		0.560292, -0.601234, 0.569729,
		0.813493, 0.528887, -0.241883,
		34.460339, 35.605373, 55.187641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158516, 35.183643, 55.980667>,  <33.890896, 35.235149, 55.356964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158516, 35.183643, 55.980667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.288040, 35.478771, 55.743763>,  <34.365753, 35.655846, 55.601620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.288040, 35.478771, 55.743763>,  <34.158516, 35.183643, 55.980667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288040, 35.478771, 55.743763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278695, 0.672596, 0.685524,
		0.904144, -0.056919, 0.423419,
		0.323809, 0.737817, -0.592261,
		34.385181, 35.700115, 55.566086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490715, 35.616299, 56.395729>,  <34.158516, 35.183643, 55.980667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490715, 35.616299, 56.395729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.454544, 35.844994, 56.069553>,  <34.432842, 35.982212, 55.873848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.454544, 35.844994, 56.069553>,  <34.490715, 35.616299, 56.395729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454544, 35.844994, 56.069553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341104, 0.751485, 0.564728,
		0.935666, 0.329217, 0.127065,
		-0.090431, 0.571739, -0.815436,
		34.427414, 36.016514, 55.824921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531624, 36.253525, 56.707733>,  <34.490715, 35.616299, 56.395729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531624, 36.253525, 56.707733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.386841, 36.357246, 56.349571>,  <34.299969, 36.419479, 56.134674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.386841, 36.357246, 56.349571>,  <34.531624, 36.253525, 56.707733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386841, 36.357246, 56.349571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434914, 0.802611, 0.408246,
		0.824521, 0.537192, -0.177737,
		-0.361960, 0.259307, -0.895402,
		34.278252, 36.435040, 56.080952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809147, 36.889751, 56.438026>,  <34.531624, 36.253525, 56.707733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809147, 36.889751, 56.438026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.446426, 36.822002, 56.283607>,  <34.228794, 36.781353, 56.190956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.446426, 36.822002, 56.283607>,  <34.809147, 36.889751, 56.438026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446426, 36.822002, 56.283607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322099, 0.869150, 0.375275,
		0.271969, 0.464643, -0.842698,
		-0.906799, -0.169369, -0.386043,
		34.174385, 36.771191, 56.167793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637783, 37.569557, 56.263966>,  <34.809147, 36.889751, 56.438026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637783, 37.569557, 56.263966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283566, 37.387474, 56.226898>,  <34.071033, 37.278225, 56.204659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283566, 37.387474, 56.226898>,  <34.637783, 37.569557, 56.263966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283566, 37.387474, 56.226898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454631, 0.890223, -0.028509,
		0.095475, 0.016885, -0.995289,
		-0.885548, -0.455211, -0.092670,
		34.017902, 37.250912, 56.199097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254902, 37.732891, 55.643040>,  <34.637783, 37.569557, 56.263966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254902, 37.732891, 55.643040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988251, 37.620659, 55.919270>,  <33.828262, 37.553318, 56.085007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988251, 37.620659, 55.919270>,  <34.254902, 37.732891, 55.643040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988251, 37.620659, 55.919270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566575, 0.792743, -0.224835,
		-0.484361, -0.541140, -0.687431,
		-0.666624, -0.280580, 0.690571,
		33.788265, 37.536484, 56.126442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671345, 37.905979, 55.305012>,  <34.254902, 37.732891, 55.643040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671345, 37.905979, 55.305012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.559582, 37.821373, 55.679646>,  <33.492523, 37.770611, 55.904427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.559582, 37.821373, 55.679646>,  <33.671345, 37.905979, 55.305012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559582, 37.821373, 55.679646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651309, 0.758464, -0.023016,
		-0.705498, -0.616437, -0.349682,
		-0.279409, -0.211514, 0.936585,
		33.475758, 37.757919, 55.960621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944500, 37.974178, 55.133133>,  <33.671345, 37.905979, 55.305012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944500, 37.974178, 55.133133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.015633, 38.013878, 55.524750>,  <33.058311, 38.037697, 55.759720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.015633, 38.013878, 55.524750>,  <32.944500, 37.974178, 55.133133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015633, 38.013878, 55.524750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786294, 0.612556, 0.080727,
		-0.591707, -0.784171, 0.186973,
		0.177836, 0.099249, 0.979042,
		33.068985, 38.043652, 55.818462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366184, 38.415306, 55.180008>,  <32.944500, 37.974178, 55.133133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366184, 38.415306, 55.180008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.555145, 38.398750, 55.532173>,  <32.668522, 38.388817, 55.743473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.555145, 38.398750, 55.532173>,  <32.366184, 38.415306, 55.180008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555145, 38.398750, 55.532173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726040, 0.548051, 0.415339,
		-0.499699, -0.835420, 0.228853,
		0.472406, -0.041388, 0.880409,
		32.696869, 38.386333, 55.796295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849512, 38.264580, 55.757645>,  <32.366184, 38.415306, 55.180008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849512, 38.264580, 55.757645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170490, 38.464298, 55.888355>,  <32.363079, 38.584129, 55.966782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170490, 38.464298, 55.888355>,  <31.849512, 38.264580, 55.757645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170490, 38.464298, 55.888355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594018, 0.720464, 0.357874,
		-0.056749, -0.481289, 0.874723,
		0.802448, 0.499292, 0.326780,
		32.411224, 38.614086, 55.986389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666174, 38.477699, 56.387615>,  <31.849512, 38.264580, 55.757645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666174, 38.477699, 56.387615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.947987, 38.730167, 56.257839>,  <32.117073, 38.881649, 56.179974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.947987, 38.730167, 56.257839>,  <31.666174, 38.477699, 56.387615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947987, 38.730167, 56.257839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551631, 0.774673, 0.309167,
		0.446472, -0.038846, 0.893954,
		0.704532, 0.631167, -0.324442,
		32.159348, 38.919518, 56.160507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765608, 38.928101, 56.832481>,  <31.666174, 38.477699, 56.387615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765608, 38.928101, 56.832481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.921627, 39.132477, 56.526070>,  <32.015240, 39.255104, 56.342224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.921627, 39.132477, 56.526070>,  <31.765608, 38.928101, 56.832481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921627, 39.132477, 56.526070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632464, 0.753289, 0.180401,
		0.669217, 0.414122, 0.616970,
		0.390049, 0.510939, -0.766031,
		32.038643, 39.285759, 56.296261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818806, 39.661037, 57.118736>,  <31.765608, 38.928101, 56.832481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818806, 39.661037, 57.118736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.890158, 39.699120, 56.726997>,  <31.932970, 39.721970, 56.491955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.890158, 39.699120, 56.726997>,  <31.818806, 39.661037, 57.118736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890158, 39.699120, 56.726997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488262, 0.872687, -0.004096,
		0.854272, 0.478907, 0.202158,
		0.178382, 0.095207, -0.979344,
		31.943672, 39.727680, 56.433193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128719, 40.358501, 57.001125>,  <31.818806, 39.661037, 57.118736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128719, 40.358501, 57.001125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.934847, 40.207706, 56.685413>,  <31.818523, 40.117229, 56.495987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.934847, 40.207706, 56.685413>,  <32.128719, 40.358501, 57.001125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934847, 40.207706, 56.685413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652013, 0.757219, 0.038714,
		0.583063, 0.533385, -0.612812,
		-0.484682, -0.376989, -0.789280,
		31.789442, 40.094608, 56.448627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980427, 40.920052, 56.502155>,  <32.128719, 40.358501, 57.001125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980427, 40.920052, 56.502155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731915, 40.623096, 56.401863>,  <31.582808, 40.444923, 56.341686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731915, 40.623096, 56.401863>,  <31.980427, 40.920052, 56.502155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731915, 40.623096, 56.401863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767664, 0.640836, 0.004723,
		0.157169, 0.195410, -0.968046,
		-0.621281, -0.742391, -0.250729,
		31.545530, 40.400379, 56.326645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457172, 41.248234, 55.996395>,  <31.980427, 40.920052, 56.502155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457172, 41.248234, 55.996395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.279980, 40.913940, 56.126209>,  <31.173664, 40.713364, 56.204098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.279980, 40.913940, 56.126209>,  <31.457172, 41.248234, 55.996395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279980, 40.913940, 56.126209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896507, 0.415538, -0.153632,
		-0.006461, -0.359003, -0.933314,
		-0.442982, -0.835730, 0.324533,
		31.147085, 40.663219, 56.223568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024223, 41.050526, 55.514816>,  <31.457172, 41.248234, 55.996395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024223, 41.050526, 55.514816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.867083, 40.879692, 55.840580>,  <30.772799, 40.777191, 56.036037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.867083, 40.879692, 55.840580>,  <31.024223, 41.050526, 55.514816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867083, 40.879692, 55.840580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863671, 0.475496, -0.167260,
		-0.315817, -0.769093, -0.555657,
		-0.392851, -0.427082, 0.814413,
		30.749228, 40.751568, 56.084904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476124, 40.672440, 55.260548>,  <31.024223, 41.050526, 55.514816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476124, 40.672440, 55.260548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.412722, 40.775276, 55.641869>,  <30.374681, 40.836979, 55.870659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.412722, 40.775276, 55.641869>,  <30.476124, 40.672440, 55.260548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412722, 40.775276, 55.641869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839144, 0.473710, -0.267275,
		-0.520302, -0.842320, 0.140651,
		-0.158503, 0.257090, 0.953300,
		30.365171, 40.852402, 55.927860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759613, 40.446384, 55.402149>,  <30.476124, 40.672440, 55.260548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759613, 40.446384, 55.402149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.850952, 40.715446, 55.683685>,  <29.905756, 40.876884, 55.852608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.850952, 40.715446, 55.683685>,  <29.759613, 40.446384, 55.402149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850952, 40.715446, 55.683685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854037, 0.485482, -0.186890,
		-0.467416, -0.558434, 0.685328,
		0.228348, 0.672651, 0.703845,
		29.919456, 40.917240, 55.894840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183058, 40.619717, 55.780083>,  <29.759613, 40.446384, 55.402149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183058, 40.619717, 55.780083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.414520, 40.937176, 55.855217>,  <29.553398, 41.127651, 55.900299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.414520, 40.937176, 55.855217>,  <29.183058, 40.619717, 55.780083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414520, 40.937176, 55.855217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807259, 0.590159, -0.006679,
		-0.116155, -0.147768, 0.982177,
		0.578654, 0.793648, 0.187837,
		29.588116, 41.175270, 55.911568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769394, 41.018303, 56.239677>,  <29.183058, 40.619717, 55.780083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769394, 41.018303, 56.239677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.039814, 41.283813, 56.111706>,  <29.202066, 41.443119, 56.034924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.039814, 41.283813, 56.111706>,  <28.769394, 41.018303, 56.239677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039814, 41.283813, 56.111706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706779, 0.706927, -0.026807,
		0.208372, 0.244241, 0.947062,
		0.676051, 0.663778, -0.319928,
		29.242630, 41.482948, 56.015728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673615, 41.651287, 56.689064>,  <28.769394, 41.018303, 56.239677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673615, 41.651287, 56.689064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.887516, 41.787380, 56.379669>,  <29.015858, 41.869038, 56.194035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.887516, 41.787380, 56.379669>,  <28.673615, 41.651287, 56.689064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887516, 41.787380, 56.379669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590008, 0.805620, -0.053539,
		0.604919, 0.484992, 0.631550,
		0.534756, 0.340233, -0.773484,
		29.047943, 41.889450, 56.147625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717884, 42.341637, 56.797020>,  <28.673615, 41.651287, 56.689064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717884, 42.341637, 56.797020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.827831, 42.364880, 56.413132>,  <28.893801, 42.378826, 56.182796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.827831, 42.364880, 56.413132>,  <28.717884, 42.341637, 56.797020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827831, 42.364880, 56.413132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461300, 0.883755, -0.078612,
		0.843593, 0.464329, 0.269723,
		0.274870, 0.058106, -0.959724,
		28.910292, 42.382313, 56.125214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935379, 43.027454, 56.664333>,  <28.717884, 42.341637, 56.797020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935379, 43.027454, 56.664333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.792425, 42.827995, 56.348454>,  <28.706654, 42.708321, 56.158924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.792425, 42.827995, 56.348454>,  <28.935379, 43.027454, 56.664333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792425, 42.827995, 56.348454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642902, 0.744675, -0.179267,
		0.677462, 0.443634, -0.586715,
		-0.357383, -0.498647, -0.789702,
		28.685211, 42.678402, 56.111542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826344, 43.446655, 55.976070>,  <28.935379, 43.027454, 56.664333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826344, 43.446655, 55.976070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.538595, 43.171898, 56.017403>,  <28.365946, 43.007042, 56.042202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.538595, 43.171898, 56.017403>,  <28.826344, 43.446655, 55.976070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538595, 43.171898, 56.017403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691370, 0.693645, -0.202151,
		0.067183, -0.216861, -0.973888,
		-0.719371, -0.686898, 0.103330,
		28.322784, 42.965828, 56.048401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509871, 43.318829, 55.379498>,  <28.826344, 43.446655, 55.976070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509871, 43.318829, 55.379498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.284128, 43.319351, 55.709709>,  <28.148684, 43.319664, 55.907837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.284128, 43.319351, 55.709709>,  <28.509871, 43.318829, 55.379498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284128, 43.319351, 55.709709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432326, 0.851438, -0.296895,
		-0.703277, -0.524453, -0.479949,
		-0.564354, 0.001305, 0.825532,
		28.114822, 43.319744, 55.957367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880886, 43.287228, 55.204475>,  <28.509871, 43.318829, 55.379498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880886, 43.287228, 55.204475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.872015, 43.470490, 55.559914>,  <27.866692, 43.580448, 55.773178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.872015, 43.470490, 55.559914>,  <27.880886, 43.287228, 55.204475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872015, 43.470490, 55.559914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470256, 0.779570, -0.413679,
		-0.882252, -0.427041, 0.198161,
		-0.022178, 0.458156, 0.888595,
		27.865362, 43.607937, 55.826492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230047, 43.530487, 55.457397>,  <27.880886, 43.287228, 55.204475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230047, 43.530487, 55.457397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.514294, 43.781845, 55.583977>,  <27.684841, 43.932659, 55.659924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.514294, 43.781845, 55.583977>,  <27.230047, 43.530487, 55.457397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514294, 43.781845, 55.583977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574077, 0.777893, -0.255573,
		-0.406764, -0.000051, 0.913533,
		0.710618, 0.628396, 0.316449,
		27.727480, 43.970364, 55.678913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745880, 43.038841, 55.270290>,  <27.230047, 43.530487, 55.457397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745880, 43.038841, 55.270290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.573782, 43.399883, 55.275948>,  <26.470524, 43.616508, 55.279343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.573782, 43.399883, 55.275948>,  <26.745880, 43.038841, 55.270290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573782, 43.399883, 55.275948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501677, -0.226057, -0.834996,
		-0.750472, -0.366347, 0.550074,
		-0.430246, 0.902601, 0.014139,
		26.444708, 43.670662, 55.280190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342218, 42.394558, 55.328304>,  <26.745880, 43.038841, 55.270290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342218, 42.394558, 55.328304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.280523, 42.399517, 54.933121>,  <26.243505, 42.402493, 54.696011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.280523, 42.399517, 54.933121>,  <26.342218, 42.394558, 55.328304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280523, 42.399517, 54.933121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970405, -0.186141, -0.153834,
		-0.185806, -0.982445, 0.016680,
		-0.154239, 0.012396, -0.987956,
		26.234251, 42.403236, 54.636734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653482, 41.764481, 55.019291>,  <26.342218, 42.394558, 55.328304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653482, 41.764481, 55.019291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.618189, 42.082813, 54.779671>,  <26.597013, 42.273811, 54.635899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.618189, 42.082813, 54.779671>,  <26.653482, 41.764481, 55.019291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618189, 42.082813, 54.779671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898718, -0.195746, -0.392415,
		-0.429559, -0.573004, -0.697958,
		-0.088233, 0.795833, -0.599053,
		26.591719, 42.321564, 54.599957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686110, 41.630379, 54.242664>,  <26.653482, 41.764481, 55.019291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686110, 41.630379, 54.242664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.823101, 41.990681, 54.349514>,  <26.905296, 42.206860, 54.413624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.823101, 41.990681, 54.349514>,  <26.686110, 41.630379, 54.242664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823101, 41.990681, 54.349514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878527, -0.206249, -0.430873,
		-0.333015, 0.382241, -0.861970,
		0.342478, 0.900751, 0.267125,
		26.925844, 42.260906, 54.429653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841822, 42.006241, 53.751682>,  <26.686110, 41.630379, 54.242664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841822, 42.006241, 53.751682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.075672, 42.148857, 54.043186>,  <27.215982, 42.234425, 54.218090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.075672, 42.148857, 54.043186>,  <26.841822, 42.006241, 53.751682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075672, 42.148857, 54.043186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800117, -0.104725, -0.590631,
		-0.134262, 0.928394, -0.346495,
		0.584625, 0.356536, 0.728763,
		27.251060, 42.255817, 54.261814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288431, 42.647762, 53.565266>,  <26.841822, 42.006241, 53.751682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288431, 42.647762, 53.565266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.514750, 42.449718, 53.829006>,  <27.650539, 42.330891, 53.987251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.514750, 42.449718, 53.829006>,  <27.288431, 42.647762, 53.565266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514750, 42.449718, 53.829006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805019, 0.158690, -0.571631,
		0.178387, 0.854216, 0.488358,
		0.565794, -0.495109, 0.659351,
		27.684488, 42.301186, 54.026814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837378, 43.044201, 53.689007>,  <27.288431, 42.647762, 53.565266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837378, 43.044201, 53.689007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.996744, 42.690388, 53.786049>,  <28.092365, 42.478100, 53.844273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.996744, 42.690388, 53.786049>,  <27.837378, 43.044201, 53.689007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996744, 42.690388, 53.786049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884646, 0.300742, -0.356308,
		0.242205, 0.356580, 0.902323,
		0.398419, -0.884537, 0.242606,
		28.116270, 42.425026, 53.858829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574785, 43.155243, 53.680019>,  <27.837378, 43.044201, 53.689007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574785, 43.155243, 53.680019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.575796, 42.759026, 53.625145>,  <28.576403, 42.521294, 53.592220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.575796, 42.759026, 53.625145>,  <28.574785, 43.155243, 53.680019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575796, 42.759026, 53.625145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842458, 0.076017, -0.533373,
		0.538757, -0.114223, 0.834682,
		0.002526, -0.990543, -0.137183,
		28.576553, 42.461864, 53.583988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195829, 42.792263, 54.037926>,  <28.574785, 43.155243, 53.680019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195829, 42.792263, 54.037926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.069372, 42.585857, 53.719482>,  <28.993498, 42.462013, 53.528416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.069372, 42.585857, 53.719482>,  <29.195829, 42.792263, 54.037926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069372, 42.585857, 53.719482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897007, 0.110661, -0.427941,
		0.308922, -0.849401, 0.427885,
		-0.316143, -0.516016, -0.796103,
		28.974529, 42.431053, 53.480652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779257, 42.389435, 53.853378>,  <29.195829, 42.792263, 54.037926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779257, 42.389435, 53.853378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.532076, 42.375195, 53.539215>,  <29.383768, 42.366650, 53.350716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.532076, 42.375195, 53.539215>,  <29.779257, 42.389435, 53.853378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532076, 42.375195, 53.539215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778732, -0.165225, -0.605209,
		-0.108223, -0.985613, 0.129825,
		-0.617952, -0.035601, -0.785409,
		29.346691, 42.364513, 53.303593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166870, 41.932930, 53.497940>,  <29.779257, 42.389435, 53.853378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166870, 41.932930, 53.497940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.904409, 42.078278, 53.233387>,  <29.746933, 42.165485, 53.074654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.904409, 42.078278, 53.233387>,  <30.166870, 41.932930, 53.497940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904409, 42.078278, 53.233387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653512, -0.164630, -0.738796,
		-0.377339, -0.916984, -0.129444,
		-0.656153, 0.363370, -0.661381,
		29.707563, 42.187286, 53.034973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422791, 41.633263, 53.008923>,  <30.166870, 41.932930, 53.497940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422791, 41.633263, 53.008923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.206802, 41.925804, 52.842285>,  <30.077209, 42.101330, 52.742302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.206802, 41.925804, 52.842285>,  <30.422791, 41.633263, 53.008923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206802, 41.925804, 52.842285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618312, 0.008855, -0.785883,
		-0.571071, -0.681939, -0.456987,
		-0.539970, 0.731356, -0.416594,
		30.044811, 42.145210, 52.717308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224232, 41.467293, 52.288956>,  <30.422791, 41.633263, 53.008923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224232, 41.467293, 52.288956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.200872, 41.864101, 52.333645>,  <30.186857, 42.102188, 52.360458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.200872, 41.864101, 52.333645>,  <30.224232, 41.467293, 52.288956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200872, 41.864101, 52.333645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530640, 0.125641, -0.838234,
		-0.845584, 0.010335, -0.533743,
		-0.058397, 0.992022, 0.111724,
		30.183353, 42.161709, 52.367161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012842, 41.734985, 51.658066>,  <30.224232, 41.467293, 52.288956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012842, 41.734985, 51.658066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.186874, 42.052143, 51.828724>,  <30.291294, 42.242435, 51.931118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.186874, 42.052143, 51.828724>,  <30.012842, 41.734985, 51.658066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186874, 42.052143, 51.828724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546399, 0.144117, -0.825032,
		-0.715649, 0.592074, -0.370534,
		0.435080, 0.792893, 0.426646,
		30.317398, 42.290012, 51.956718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005930, 42.297340, 51.202507>,  <30.012842, 41.734985, 51.658066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005930, 42.297340, 51.202507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.292429, 42.393761, 51.464466>,  <30.464329, 42.451611, 51.621639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.292429, 42.393761, 51.464466>,  <30.005930, 42.297340, 51.202507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292429, 42.393761, 51.464466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672824, 0.010523, -0.739727,
		-0.185202, 0.970456, -0.154646,
		0.716246, 0.241048, 0.654895,
		30.507303, 42.466076, 51.660934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272619, 42.785709, 50.714138>,  <30.005930, 42.297340, 51.202507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272619, 42.785709, 50.714138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.539009, 42.754120, 51.010853>,  <30.698843, 42.735168, 51.188881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.539009, 42.754120, 51.010853>,  <30.272619, 42.785709, 50.714138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539009, 42.754120, 51.010853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732049, 0.260439, -0.629505,
		-0.143478, 0.962255, 0.231256,
		0.665972, -0.078970, 0.741785,
		30.738800, 42.730431, 51.233387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771620, 43.416260, 50.783379>,  <30.272619, 42.785709, 50.714138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771620, 43.416260, 50.783379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.960667, 43.111950, 50.961300>,  <31.074095, 42.929363, 51.068054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.960667, 43.111950, 50.961300>,  <30.771620, 43.416260, 50.783379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960667, 43.111950, 50.961300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750963, 0.083537, -0.655040,
		0.461181, 0.643616, 0.610795,
		0.472618, -0.760776, 0.444806,
		31.102451, 42.883717, 51.094742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604538, 43.539543, 50.756863>,  <30.771620, 43.416260, 50.783379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604538, 43.539543, 50.756863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.560482, 43.149906, 50.835880>,  <31.534048, 42.916126, 50.883289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.560482, 43.149906, 50.835880>,  <31.604538, 43.539543, 50.756863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560482, 43.149906, 50.835880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728880, -0.214279, -0.650245,
		0.675724, 0.072365, 0.733594,
		-0.110139, -0.974088, 0.197540,
		31.527441, 42.857681, 50.895142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243725, 43.268803, 50.999424>,  <31.604538, 43.539543, 50.756863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243725, 43.268803, 50.999424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.043770, 42.963326, 50.836018>,  <31.923798, 42.780037, 50.737972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.043770, 42.963326, 50.836018>,  <32.243725, 43.268803, 50.999424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043770, 42.963326, 50.836018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790661, -0.209873, -0.575159,
		0.353510, -0.610511, 0.708736,
		-0.499886, -0.763695, -0.408516,
		31.893805, 42.734219, 50.713463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661766, 42.674801, 51.052883>,  <32.243725, 43.268803, 50.999424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661766, 42.674801, 51.052883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.426186, 42.635441, 50.732021>,  <32.284836, 42.611824, 50.539505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.426186, 42.635441, 50.732021>,  <32.661766, 42.674801, 51.052883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426186, 42.635441, 50.732021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761188, -0.401029, -0.509676,
		-0.271534, -0.910765, 0.311088,
		-0.588950, -0.098402, -0.802156,
		32.249500, 42.605919, 50.491375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642437, 41.948788, 50.817074>,  <32.661766, 42.674801, 51.052883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642437, 41.948788, 50.817074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.604206, 42.215179, 50.521145>,  <32.581268, 42.375015, 50.343590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.604206, 42.215179, 50.521145>,  <32.642437, 41.948788, 50.817074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604206, 42.215179, 50.521145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830015, -0.356954, -0.428554,
		-0.549491, -0.655021, -0.518659,
		-0.095574, 0.665981, -0.739820,
		32.575535, 42.414974, 50.299198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543907, 41.639183, 50.132782>,  <32.642437, 41.948788, 50.817074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543907, 41.639183, 50.132782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.726009, 41.993477, 50.096500>,  <32.835270, 42.206051, 50.074734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.726009, 41.993477, 50.096500>,  <32.543907, 41.639183, 50.132782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726009, 41.993477, 50.096500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732351, -0.430447, -0.527615,
		-0.506367, 0.173773, -0.844627,
		0.455252, 0.885730, -0.090701,
		32.862587, 42.259197, 50.069290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758564, 41.578362, 49.506649>,  <32.543907, 41.639183, 50.132782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758564, 41.578362, 49.506649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.983768, 41.874046, 49.654484>,  <33.118889, 42.051456, 49.743183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.983768, 41.874046, 49.654484>,  <32.758564, 41.578362, 49.506649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983768, 41.874046, 49.654484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758309, -0.284240, -0.586664,
		-0.328618, 0.610554, -0.720579,
		0.563007, 0.739210, 0.369583,
		33.152672, 42.095810, 49.765358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063808, 41.962357, 48.852783>,  <32.758564, 41.578362, 49.506649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063808, 41.962357, 48.852783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262966, 42.054466, 49.187225>,  <33.382462, 42.109734, 49.387890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262966, 42.054466, 49.187225>,  <33.063808, 41.962357, 48.852783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262966, 42.054466, 49.187225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857936, -0.271633, -0.436075,
		0.126696, 0.934445, -0.332807,
		0.497890, 0.230278, 0.836109,
		33.412334, 42.123550, 49.438057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636292, 42.347034, 48.623508>,  <33.063808, 41.962357, 48.852783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636292, 42.347034, 48.623508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712711, 42.169075, 48.973495>,  <33.758564, 42.062298, 49.183487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712711, 42.169075, 48.973495>,  <33.636292, 42.347034, 48.623508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712711, 42.169075, 48.973495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872574, -0.331286, -0.358977,
		0.449573, 0.832052, 0.324919,
		0.191047, -0.444903, 0.874964,
		33.770027, 42.035603, 49.235985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370342, 42.439705, 48.734692>,  <33.636292, 42.347034, 48.623508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370342, 42.439705, 48.734692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289059, 42.138161, 48.984623>,  <34.240288, 41.957233, 49.134583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289059, 42.138161, 48.984623>,  <34.370342, 42.439705, 48.734692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289059, 42.138161, 48.984623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861252, -0.441187, -0.252190,
		0.465779, 0.486883, 0.738914,
		-0.203212, -0.753856, 0.624825,
		34.228096, 41.912003, 49.172070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035282, 42.236691, 48.954731>,  <34.370342, 42.439705, 48.734692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035282, 42.236691, 48.954731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.790352, 41.927319, 49.020294>,  <34.643394, 41.741695, 49.059631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.790352, 41.927319, 49.020294>,  <35.035282, 42.236691, 48.954731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790352, 41.927319, 49.020294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733781, -0.633143, -0.246364,
		0.294321, -0.030583, 0.955217,
		-0.612324, -0.773430, 0.163906,
		34.606655, 41.695290, 49.069466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584187, 41.825844, 48.937939>,  <35.035282, 42.236691, 48.954731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584187, 41.825844, 48.937939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268677, 41.591187, 49.011349>,  <35.079372, 41.450390, 49.055393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268677, 41.591187, 49.011349>,  <35.584187, 41.825844, 48.937939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268677, 41.591187, 49.011349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583502, -0.808495, -0.076555,
		0.193290, 0.046703, 0.980029,
		-0.788774, -0.586647, 0.183526,
		35.032043, 41.415192, 49.066406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819576, 41.372349, 49.379761>,  <35.584187, 41.825844, 48.937939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819576, 41.372349, 49.379761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.506298, 41.194317, 49.206089>,  <35.318329, 41.087498, 49.101887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.506298, 41.194317, 49.206089>,  <35.819576, 41.372349, 49.379761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506298, 41.194317, 49.206089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441833, -0.889693, 0.115023,
		-0.437477, -0.101746, 0.893455,
		-0.783198, -0.445078, -0.434175,
		35.271339, 41.060795, 49.075836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687233, 40.679588, 49.825245>,  <35.819576, 41.372349, 49.379761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687233, 40.679588, 49.825245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512310, 40.626163, 49.469509>,  <35.407356, 40.594109, 49.256069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512310, 40.626163, 49.469509>,  <35.687233, 40.679588, 49.825245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512310, 40.626163, 49.469509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341819, -0.939378, -0.027005,
		-0.831818, -0.315802, 0.456452,
		-0.437309, -0.133560, -0.889338,
		35.381119, 40.586094, 49.202709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409809, 40.021030, 49.897778>,  <35.687233, 40.679588, 49.825245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409809, 40.021030, 49.897778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420170, 40.070244, 49.500954>,  <35.426388, 40.099773, 49.262859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420170, 40.070244, 49.500954>,  <35.409809, 40.021030, 49.897778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420170, 40.070244, 49.500954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112998, -0.986397, -0.119382,
		-0.993258, -0.109009, -0.039454,
		0.025904, 0.123036, -0.992064,
		35.427940, 40.107155, 49.203335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961220, 39.562332, 49.608227>,  <35.409809, 40.021030, 49.897778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961220, 39.562332, 49.608227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239014, 39.658829, 49.337082>,  <35.405689, 39.716724, 49.174397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239014, 39.658829, 49.337082>,  <34.961220, 39.562332, 49.608227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239014, 39.658829, 49.337082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218681, -0.968320, -0.120566,
		-0.685470, -0.064504, -0.725238,
		0.694485, 0.241240, -0.677860,
		35.447361, 39.731201, 49.133724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009136, 38.983017, 49.181061>,  <34.961220, 39.562332, 49.608227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009136, 38.983017, 49.181061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338005, 39.183144, 49.072456>,  <35.535324, 39.303219, 49.007294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338005, 39.183144, 49.072456>,  <35.009136, 38.983017, 49.181061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338005, 39.183144, 49.072456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464384, -0.865362, -0.188407,
		-0.329219, 0.028817, -0.943814,
		0.822169, 0.500319, -0.271511,
		35.584656, 39.333241, 48.991001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279160, 38.506191, 48.809570>,  <35.009136, 38.983017, 49.181061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279160, 38.506191, 48.809570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.576790, 38.767765, 48.864296>,  <35.755367, 38.924709, 48.897129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.576790, 38.767765, 48.864296>,  <35.279160, 38.506191, 48.809570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576790, 38.767765, 48.864296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668093, -0.728392, -0.151975,
		0.000269, 0.204483, -0.978870,
		0.744078, 0.653935, 0.136810,
		35.800014, 38.963947, 48.905338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685738, 38.534775, 48.205219>,  <35.279160, 38.506191, 48.809570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685738, 38.534775, 48.205219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927944, 38.650681, 48.501701>,  <36.073269, 38.720226, 48.679588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927944, 38.650681, 48.501701>,  <35.685738, 38.534775, 48.205219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927944, 38.650681, 48.501701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525398, -0.845097, -0.098835,
		0.597749, 0.449273, -0.663965,
		0.605519, 0.289768, 0.741203,
		36.109600, 38.737610, 48.724064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352154, 38.754173, 47.949226>,  <35.685738, 38.534775, 48.205219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352154, 38.754173, 47.949226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.430866, 38.698792, 48.337475>,  <36.478092, 38.665562, 48.570423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.430866, 38.698792, 48.337475>,  <36.352154, 38.754173, 47.949226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430866, 38.698792, 48.337475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395497, -0.894651, -0.207801,
		0.897139, 0.424769, -0.121291,
		0.196781, -0.138457, 0.970622,
		36.489899, 38.657253, 48.628662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127869, 38.491631, 48.105278>,  <36.352154, 38.754173, 47.949226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127869, 38.491631, 48.105278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.942543, 38.373569, 48.439518>,  <36.831348, 38.302731, 48.640060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.942543, 38.373569, 48.439518>,  <37.127869, 38.491631, 48.105278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942543, 38.373569, 48.439518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526497, -0.850136, -0.008362,
		0.712838, 0.436065, 0.549282,
		-0.463318, -0.295156, 0.835595,
		36.803547, 38.285023, 48.690197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637753, 38.118420, 48.514713>,  <37.127869, 38.491631, 48.105278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637753, 38.118420, 48.514713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.294167, 37.981827, 48.667324>,  <37.088013, 37.899872, 48.758888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.294167, 37.981827, 48.667324>,  <37.637753, 38.118420, 48.514713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294167, 37.981827, 48.667324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324594, -0.939430, -0.110044,
		0.395995, 0.029317, 0.917785,
		-0.858968, -0.341485, 0.381525,
		37.036476, 37.879383, 48.781780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706856, 37.744564, 49.222576>,  <37.637753, 38.118420, 48.514713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706856, 37.744564, 49.222576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.371159, 37.608414, 49.052956>,  <37.169739, 37.526726, 48.951183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.371159, 37.608414, 49.052956>,  <37.706856, 37.744564, 49.222576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371159, 37.608414, 49.052956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469016, -0.847714, -0.247800,
		-0.275126, -0.406849, 0.871080,
		-0.839244, -0.340374, -0.424046,
		37.119385, 37.506302, 48.925743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475502, 37.080685, 49.617004>,  <37.706856, 37.744564, 49.222576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475502, 37.080685, 49.617004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.308762, 37.061649, 49.253914>,  <37.208717, 37.050228, 49.036060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.308762, 37.061649, 49.253914>,  <37.475502, 37.080685, 49.617004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308762, 37.061649, 49.253914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352512, -0.928938, -0.113182,
		-0.837836, -0.367165, 0.404006,
		-0.416853, -0.047589, -0.907727,
		37.183704, 37.047371, 48.981594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925461, 36.484325, 49.635113>,  <37.475502, 37.080685, 49.617004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925461, 36.484325, 49.635113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.054214, 36.546715, 49.261574>,  <37.131466, 36.584148, 49.037453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.054214, 36.546715, 49.261574>,  <36.925461, 36.484325, 49.635113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054214, 36.546715, 49.261574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127616, -0.984484, -0.120442,
		-0.938139, -0.080405, -0.336793,
		0.321883, 0.155971, -0.933844,
		37.150780, 36.593506, 48.981422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854752, 35.817818, 49.379799>,  <36.925461, 36.484325, 49.635113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854752, 35.817818, 49.379799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.055023, 36.000771, 49.085827>,  <37.175186, 36.110542, 48.909443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.055023, 36.000771, 49.085827>,  <36.854752, 35.817818, 49.379799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055023, 36.000771, 49.085827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150181, -0.882033, -0.446612,
		-0.852503, 0.113238, -0.510309,
		0.500683, 0.457377, -0.734930,
		37.205227, 36.137985, 48.865349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637791, 35.564362, 48.680103>,  <36.854752, 35.817818, 49.379799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637791, 35.564362, 48.680103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.014111, 35.697346, 48.653652>,  <37.239902, 35.777134, 48.637783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.014111, 35.697346, 48.653652>,  <36.637791, 35.564362, 48.680103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014111, 35.697346, 48.653652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264553, -0.842117, -0.469948,
		-0.211925, 0.424631, -0.880214,
		0.940797, 0.332457, -0.066128,
		37.296349, 35.797081, 48.633812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885277, 35.560825, 47.967167>,  <36.637791, 35.564362, 48.680103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885277, 35.560825, 47.967167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.182060, 35.505390, 48.229553>,  <37.360130, 35.472130, 48.386986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.182060, 35.505390, 48.229553>,  <36.885277, 35.560825, 47.967167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182060, 35.505390, 48.229553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373887, -0.726609, -0.576409,
		0.556515, 0.672928, -0.487297,
		0.741957, -0.138586, 0.655968,
		37.404648, 35.463814, 48.426342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841576, 35.862202, 47.291817>,  <36.885277, 35.560825, 47.967167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841576, 35.862202, 47.291817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.781513, 35.859142, 46.896362>,  <36.745476, 35.857307, 46.659092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.781513, 35.859142, 46.896362>,  <36.841576, 35.862202, 47.291817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781513, 35.859142, 46.896362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892873, 0.430440, 0.132282,
		0.424536, 0.902587, -0.071459,
		-0.150155, -0.007646, -0.988633,
		36.736465, 35.856850, 46.599773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644947, 36.577942, 46.983047>,  <36.841576, 35.862202, 47.291817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644947, 36.577942, 46.983047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.518261, 36.290733, 46.735134>,  <36.442249, 36.118408, 46.586388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.518261, 36.290733, 46.735134>,  <36.644947, 36.577942, 46.983047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518261, 36.290733, 46.735134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847714, 0.507409, -0.154653,
		0.425529, 0.476420, -0.769382,
		-0.316711, -0.718025, -0.619785,
		36.423248, 36.075325, 46.549198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252808, 36.915230, 46.381161>,  <36.644947, 36.577942, 46.983047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252808, 36.915230, 46.381161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.151375, 36.528400, 46.372581>,  <36.090515, 36.296303, 46.367435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.151375, 36.528400, 46.372581>,  <36.252808, 36.915230, 46.381161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151375, 36.528400, 46.372581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946008, 0.252563, -0.203178,
		0.201906, -0.031231, -0.978907,
		-0.253581, -0.967076, -0.021449,
		36.075302, 36.238277, 46.366146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717625, 36.973316, 45.927849>,  <36.252808, 36.915230, 46.381161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717625, 36.973316, 45.927849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.669323, 36.627422, 46.122852>,  <35.640343, 36.419888, 46.239853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.669323, 36.627422, 46.122852>,  <35.717625, 36.973316, 45.927849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669323, 36.627422, 46.122852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980374, 0.180979, 0.078186,
		-0.155838, -0.468496, -0.869613,
		-0.120752, -0.864730, 0.487504,
		35.633099, 36.368004, 46.269104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094044, 36.733097, 45.691113>,  <35.717625, 36.973316, 45.927849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094044, 36.733097, 45.691113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.163441, 36.553127, 46.041534>,  <35.205078, 36.445145, 46.251789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.163441, 36.553127, 46.041534>,  <35.094044, 36.733097, 45.691113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163441, 36.553127, 46.041534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983821, -0.119533, 0.133450,
		0.044675, -0.885033, -0.463380,
		0.173497, -0.449921, 0.876054,
		35.215488, 36.418152, 46.304352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577988, 36.156723, 45.658928>,  <35.094044, 36.733097, 45.691113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577988, 36.156723, 45.658928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673420, 36.202087, 46.044720>,  <34.730679, 36.229305, 46.276196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673420, 36.202087, 46.044720>,  <34.577988, 36.156723, 45.658928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673420, 36.202087, 46.044720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970653, -0.003039, 0.240464,
		0.030203, -0.993544, 0.109358,
		0.238579, 0.113411, 0.964478,
		34.744995, 36.236111, 46.334064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233284, 35.659348, 46.070629>,  <34.577988, 36.156723, 45.658928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233284, 35.659348, 46.070629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.324951, 35.942333, 46.338055>,  <34.379951, 36.112125, 46.498512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.324951, 35.942333, 46.338055>,  <34.233284, 35.659348, 46.070629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324951, 35.942333, 46.338055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940119, -0.017163, 0.340415,
		0.252305, -0.706544, 0.661164,
		0.229171, 0.707461, 0.668566,
		34.393703, 36.154572, 46.538624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036137, 35.412701, 46.682014>,  <34.233284, 35.659348, 46.070629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036137, 35.412701, 46.682014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.053387, 35.804550, 46.760479>,  <34.063736, 36.039658, 46.807560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.053387, 35.804550, 46.760479>,  <34.036137, 35.412701, 46.682014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053387, 35.804550, 46.760479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905780, -0.044510, 0.421405,
		0.421549, -0.195855, 0.885402,
		0.043126, 0.979622, 0.196165,
		34.066326, 36.098438, 46.819328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789204, 35.479187, 47.435852>,  <34.036137, 35.412701, 46.682014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789204, 35.479187, 47.435852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.742626, 35.835011, 47.259163>,  <33.714680, 36.048504, 47.153149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.742626, 35.835011, 47.259163>,  <33.789204, 35.479187, 47.435852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742626, 35.835011, 47.259163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873810, 0.119654, 0.471317,
		0.472119, 0.440864, 0.763375,
		-0.116446, 0.889562, -0.441723,
		33.707691, 36.101879, 47.126648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424107, 35.850842, 47.975735>,  <33.789204, 35.479187, 47.435852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424107, 35.850842, 47.975735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363560, 36.065029, 47.643383>,  <33.327232, 36.193542, 47.443970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363560, 36.065029, 47.643383>,  <33.424107, 35.850842, 47.975735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363560, 36.065029, 47.643383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947896, 0.159745, 0.275635,
		0.280322, 0.829312, 0.483385,
		-0.151370, 0.535466, -0.830881,
		33.318150, 36.225670, 47.394119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908676, 36.339676, 48.171211>,  <33.424107, 35.850842, 47.975735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908676, 36.339676, 48.171211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.910423, 36.361465, 47.771809>,  <32.911472, 36.374538, 47.532166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.910423, 36.361465, 47.771809>,  <32.908676, 36.339676, 48.171211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910423, 36.361465, 47.771809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870886, 0.490949, 0.022972,
		0.491467, 0.869484, 0.049587,
		0.004371, 0.054475, -0.998505,
		32.911736, 36.377808, 47.472256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740189, 37.054050, 47.990788>,  <32.908676, 36.339676, 48.171211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740189, 37.054050, 47.990788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.653572, 36.814587, 47.682316>,  <32.601601, 36.670906, 47.497234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.653572, 36.814587, 47.682316>,  <32.740189, 37.054050, 47.990788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653572, 36.814587, 47.682316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826946, 0.532336, -0.181047,
		0.518911, 0.598516, -0.610337,
		-0.216545, -0.598662, -0.771175,
		32.588608, 36.634987, 47.450962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747772, 37.490669, 47.446777>,  <32.740189, 37.054050, 47.990788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747772, 37.490669, 47.446777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.523632, 37.180950, 47.329151>,  <32.389149, 36.995121, 47.258575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.523632, 37.180950, 47.329151>,  <32.747772, 37.490669, 47.446777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523632, 37.180950, 47.329151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750540, 0.624843, -0.215086,
		0.350286, 0.100186, -0.931269,
		-0.560348, -0.774296, -0.294068,
		32.355526, 36.948662, 47.240932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587811, 37.704391, 46.701424>,  <32.747772, 37.490669, 47.446777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587811, 37.704391, 46.701424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.339115, 37.444035, 46.875679>,  <32.189899, 37.287819, 46.980232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.339115, 37.444035, 46.875679>,  <32.587811, 37.704391, 46.701424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339115, 37.444035, 46.875679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757964, 0.640147, -0.125305,
		-0.197313, -0.408106, -0.891357,
		-0.621737, -0.650892, 0.435640,
		32.152596, 37.248768, 47.006371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013744, 37.674927, 46.247135>,  <32.587811, 37.704391, 46.701424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013744, 37.674927, 46.247135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891226, 37.549534, 46.606670>,  <31.817715, 37.474297, 46.822392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891226, 37.549534, 46.606670>,  <32.013744, 37.674927, 46.247135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891226, 37.549534, 46.606670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740109, 0.672253, -0.017747,
		-0.598682, -0.670673, -0.437924,
		-0.306298, -0.313486, 0.898837,
		31.799335, 37.455486, 46.876320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291756, 38.000683, 46.337448>,  <32.013744, 37.674927, 46.247135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291756, 38.000683, 46.337448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.365122, 37.872437, 46.709160>,  <31.409142, 37.795490, 46.932186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.365122, 37.872437, 46.709160>,  <31.291756, 38.000683, 46.337448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365122, 37.872437, 46.709160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757860, 0.555966, 0.341395,
		-0.626105, -0.766883, -0.141007,
		0.183415, -0.320612, 0.929283,
		31.420147, 37.776253, 46.987946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585745, 37.945393, 46.781113>,  <31.291756, 38.000683, 46.337448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585745, 37.945393, 46.781113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.890377, 37.991554, 47.036198>,  <31.073156, 38.019253, 47.189247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.890377, 37.991554, 47.036198>,  <30.585745, 37.945393, 46.781113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890377, 37.991554, 47.036198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534586, 0.668131, 0.517512,
		-0.366351, -0.735039, 0.570531,
		0.761580, 0.115407, 0.637712,
		31.118851, 38.026176, 47.227512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288683, 38.027130, 47.506783>,  <30.585745, 37.945393, 46.781113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288683, 38.027130, 47.506783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.657356, 38.179989, 47.533516>,  <30.878559, 38.271706, 47.549557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.657356, 38.179989, 47.533516>,  <30.288683, 38.027130, 47.506783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657356, 38.179989, 47.533516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349343, 0.742643, 0.571350,
		0.168707, -0.549951, 0.817981,
		0.921682, 0.382147, 0.066832,
		30.933861, 38.294632, 47.553566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345070, 38.343296, 48.204559>,  <30.288683, 38.027130, 47.506783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345070, 38.343296, 48.204559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.655798, 38.515850, 48.021057>,  <30.842236, 38.619381, 47.910957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.655798, 38.515850, 48.021057>,  <30.345070, 38.343296, 48.204559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655798, 38.515850, 48.021057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185025, 0.852708, 0.488523,
		0.601926, -0.294614, 0.742218,
		0.776821, 0.431384, -0.458756,
		30.888844, 38.645264, 47.883430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796843, 38.621002, 48.712627>,  <30.345070, 38.343296, 48.204559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796843, 38.621002, 48.712627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.837543, 38.817776, 48.366760>,  <30.861963, 38.935841, 48.159241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.837543, 38.817776, 48.366760>,  <30.796843, 38.621002, 48.712627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837543, 38.817776, 48.366760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227755, 0.857611, 0.461119,
		0.968387, 0.150013, 0.199303,
		0.101750, 0.491934, -0.864666,
		30.868069, 38.965355, 48.107361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189970, 39.159748, 48.825584>,  <30.796843, 38.621002, 48.712627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189970, 39.159748, 48.825584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.000950, 39.263584, 48.488701>,  <30.887539, 39.325886, 48.286572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.000950, 39.263584, 48.488701>,  <31.189970, 39.159748, 48.825584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000950, 39.263584, 48.488701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206243, 0.896525, 0.392054,
		0.856833, 0.358964, -0.370112,
		-0.472548, 0.259592, -0.842206,
		30.859186, 39.341461, 48.236038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476460, 39.734646, 48.645527>,  <31.189970, 39.159748, 48.825584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476460, 39.734646, 48.645527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.146463, 39.749195, 48.419937>,  <30.948465, 39.757923, 48.284584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.146463, 39.749195, 48.419937>,  <31.476460, 39.734646, 48.645527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146463, 39.749195, 48.419937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154903, 0.945156, 0.287550,
		0.543501, 0.324587, -0.774113,
		-0.824992, 0.036371, -0.563972,
		30.898966, 39.760105, 48.250744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609308, 40.399025, 48.432846>,  <31.476460, 39.734646, 48.645527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609308, 40.399025, 48.432846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.229357, 40.311325, 48.343708>,  <31.001387, 40.258705, 48.290226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.229357, 40.311325, 48.343708>,  <31.609308, 40.399025, 48.432846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229357, 40.311325, 48.343708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301199, 0.832768, 0.464517,
		0.083736, 0.508356, -0.857066,
		-0.949878, -0.219251, -0.222849,
		30.944393, 40.245548, 48.276852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238087, 41.000359, 48.136013>,  <31.609308, 40.399025, 48.432846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238087, 41.000359, 48.136013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.972919, 40.753773, 48.305962>,  <30.813820, 40.605824, 48.407932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.972919, 40.753773, 48.305962>,  <31.238087, 41.000359, 48.136013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972919, 40.753773, 48.305962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353330, 0.757912, 0.548386,
		-0.660075, 0.213413, -0.720247,
		-0.662917, -0.616460, 0.424874,
		30.774044, 40.568836, 48.433422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596443, 41.365849, 48.069733>,  <31.238087, 41.000359, 48.136013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596443, 41.365849, 48.069733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.504856, 41.099949, 48.354176>,  <30.449903, 40.940407, 48.524841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.504856, 41.099949, 48.354176>,  <30.596443, 41.365849, 48.069733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504856, 41.099949, 48.354176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456830, 0.718456, 0.524526,
		-0.859581, -0.204757, -0.468182,
		-0.228968, -0.664752, 0.711111,
		30.436165, 40.900524, 48.567509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906370, 41.491505, 48.260067>,  <30.596443, 41.365849, 48.069733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906370, 41.491505, 48.260067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.027386, 41.295944, 48.587345>,  <30.099995, 41.178608, 48.783714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.027386, 41.295944, 48.587345>,  <29.906370, 41.491505, 48.260067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027386, 41.295944, 48.587345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549279, 0.612120, 0.568860,
		-0.778950, -0.621522, -0.083352,
		0.302537, -0.488897, 0.818200,
		30.118147, 41.149277, 48.832806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243706, 41.276379, 48.687935>,  <29.906370, 41.491505, 48.260067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243706, 41.276379, 48.687935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.529419, 41.238770, 48.965340>,  <29.700848, 41.216206, 49.131783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.529419, 41.238770, 48.965340>,  <29.243706, 41.276379, 48.687935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529419, 41.238770, 48.965340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541773, 0.553015, 0.632975,
		-0.443034, -0.827850, 0.344072,
		0.714285, -0.094020, 0.693511,
		29.743704, 41.210564, 49.173393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831652, 41.153427, 49.178070>,  <29.243706, 41.276379, 48.687935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831652, 41.153427, 49.178070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.178362, 41.257896, 49.348007>,  <29.386387, 41.320580, 49.449970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.178362, 41.257896, 49.348007>,  <28.831652, 41.153427, 49.178070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178362, 41.257896, 49.348007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498542, 0.432323, 0.751367,
		0.012572, -0.863066, 0.504934,
		0.866774, 0.261177, 0.424840,
		29.438395, 41.336250, 49.475460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821554, 40.912815, 49.870827>,  <28.831652, 41.153427, 49.178070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821554, 40.912815, 49.870827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.084372, 41.212601, 49.838341>,  <29.242062, 41.392471, 49.818851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.084372, 41.212601, 49.838341>,  <28.821554, 40.912815, 49.870827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084372, 41.212601, 49.838341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466014, 0.488481, 0.737711,
		0.592561, -0.446860, 0.670215,
		0.657040, 0.749468, -0.081212,
		29.281485, 41.437443, 49.813976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141596, 41.031700, 50.569756>,  <28.821554, 40.912815, 49.870827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141596, 41.031700, 50.569756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.190760, 41.360207, 50.346893>,  <29.220259, 41.557308, 50.213177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.190760, 41.360207, 50.346893>,  <29.141596, 41.031700, 50.569756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190760, 41.360207, 50.346893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302723, 0.565682, 0.767048,
		0.945120, 0.074385, 0.318143,
		0.122911, 0.821261, -0.557155,
		29.227633, 41.606586, 50.179749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324537, 41.458878, 51.049576>,  <29.141596, 41.031700, 50.569756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324537, 41.458878, 51.049576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.213882, 41.679817, 50.735027>,  <29.147490, 41.812382, 50.546299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.213882, 41.679817, 50.735027>,  <29.324537, 41.458878, 51.049576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213882, 41.679817, 50.735027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685606, 0.459950, 0.564261,
		0.673361, 0.695237, 0.251456,
		-0.276638, 0.552351, -0.786371,
		29.130892, 41.845524, 50.499115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307337, 42.142796, 51.358421>,  <29.324537, 41.458878, 51.049576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307337, 42.142796, 51.358421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.089417, 42.143406, 51.022995>,  <28.958664, 42.143772, 50.821739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.089417, 42.143406, 51.022995>,  <29.307337, 42.142796, 51.358421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089417, 42.143406, 51.022995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737649, 0.474739, 0.480101,
		0.398832, 0.880125, -0.257513,
		-0.544800, 0.001525, -0.838564,
		28.925976, 42.143864, 50.771427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919983, 42.777142, 51.237511>,  <29.307337, 42.142796, 51.358421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919983, 42.777142, 51.237511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.721386, 42.527962, 50.995708>,  <28.602228, 42.378452, 50.850628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.721386, 42.527962, 50.995708>,  <28.919983, 42.777142, 51.237511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721386, 42.527962, 50.995708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867990, 0.363850, 0.337944,
		0.009427, 0.692492, -0.721364,
		-0.496492, -0.622951, -0.604507,
		28.572439, 42.341076, 50.814358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392294, 43.140743, 50.906281>,  <28.919983, 42.777142, 51.237511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392294, 43.140743, 50.906281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.276590, 42.759007, 50.876438>,  <28.207169, 42.529964, 50.858532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.276590, 42.759007, 50.876438>,  <28.392294, 43.140743, 50.906281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276590, 42.759007, 50.876438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910833, 0.250421, 0.328133,
		-0.294468, 0.162867, -0.941681,
		-0.289259, -0.954339, -0.074604,
		28.189812, 42.472706, 50.854057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837894, 43.270195, 50.473366>,  <28.392294, 43.140743, 50.906281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837894, 43.270195, 50.473366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.831944, 42.913624, 50.654533>,  <27.828373, 42.699680, 50.763233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.831944, 42.913624, 50.654533>,  <27.837894, 43.270195, 50.473366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831944, 42.913624, 50.654533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859740, 0.242678, 0.449394,
		-0.510515, -0.382703, -0.770008,
		-0.014880, -0.891429, 0.452916,
		27.827480, 42.646194, 50.790409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098204, 43.160999, 50.454681>,  <27.837894, 43.270195, 50.473366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098204, 43.160999, 50.454681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.222410, 42.892555, 50.723961>,  <27.296934, 42.731491, 50.885529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.222410, 42.892555, 50.723961>,  <27.098204, 43.160999, 50.454681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222410, 42.892555, 50.723961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824949, 0.161603, 0.541611,
		-0.472270, -0.723533, -0.503449,
		0.310515, -0.671107, 0.673198,
		27.315565, 42.691223, 50.925919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476576, 42.763733, 50.638252>,  <27.098204, 43.160999, 50.454681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476576, 42.763733, 50.638252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.709644, 42.660156, 50.946392>,  <26.849485, 42.598011, 51.131275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.709644, 42.660156, 50.946392>,  <26.476576, 42.763733, 50.638252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709644, 42.660156, 50.946392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786169, 0.060668, 0.615027,
		-0.205994, -0.963985, -0.168225,
		0.582671, -0.258946, 0.770352,
		26.884445, 42.582474, 51.177498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155840, 42.279202, 51.033981>,  <26.476576, 42.763733, 50.638252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155840, 42.279202, 51.033981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.422270, 42.433048, 51.289612>,  <26.582127, 42.525356, 51.442989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.422270, 42.433048, 51.289612>,  <26.155840, 42.279202, 51.033981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422270, 42.433048, 51.289612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717471, 0.096137, 0.689923,
		0.203916, -0.918057, 0.339985,
		0.666074, 0.384616, 0.639075,
		26.622091, 42.548431, 51.481335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179090, 41.850143, 51.645119>,  <26.155840, 42.279202, 51.033981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179090, 41.850143, 51.645119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.300863, 42.218460, 51.742657>,  <26.373926, 42.439449, 51.801182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.300863, 42.218460, 51.742657>,  <26.179090, 41.850143, 51.645119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300863, 42.218460, 51.742657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567273, -0.030391, 0.822969,
		0.765195, -0.388866, 0.513089,
		0.304432, 0.920793, 0.243848,
		26.392193, 42.494698, 51.815811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.640011, 41.966686, 52.155453>,  <26.179090, 41.850143, 51.645119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.640011, 41.966686, 52.155453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.488075, 41.697411, 52.409237>,  <25.396914, 41.535847, 52.561508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.488075, 41.697411, 52.409237>,  <25.640011, 41.966686, 52.155453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488075, 41.697411, 52.409237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494474, -0.727412, -0.475781,
		0.781805, 0.133005, 0.609172,
		-0.379838, -0.673188, 0.634462,
		25.374125, 41.495453, 52.599575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273699, 41.543823, 52.423904>,  <25.640011, 41.966686, 52.155453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.273699, 41.543823, 52.423904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.945095, 41.326843, 52.494190>,  <25.747932, 41.196655, 52.536362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.945095, 41.326843, 52.494190>,  <26.273699, 41.543823, 52.423904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.945095, 41.326843, 52.494190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518883, -0.838959, -0.164038,
		0.236403, -0.043581, 0.970677,
		-0.821507, -0.542447, 0.175719,
		25.698643, 41.164108, 52.546906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318584, 41.037132, 53.044334>,  <26.273699, 41.543823, 52.423904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318584, 41.037132, 53.044334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.044804, 40.902420, 52.785690>,  <25.880535, 40.821590, 52.630505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.044804, 40.902420, 52.785690>,  <26.318584, 41.037132, 53.044334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044804, 40.902420, 52.785690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475747, -0.878374, -0.046089,
		-0.552442, -0.339168, 0.761428,
		-0.684451, -0.336785, -0.646609,
		25.839468, 40.801384, 52.591709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379122, 40.284168, 52.976479>,  <26.318584, 41.037132, 53.044334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379122, 40.284168, 52.976479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.143803, 40.317917, 52.654785>,  <26.002611, 40.338165, 52.461769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.143803, 40.317917, 52.654785>,  <26.379122, 40.284168, 52.976479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143803, 40.317917, 52.654785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458828, -0.784117, -0.417897,
		-0.665868, -0.614852, 0.422584,
		-0.588300, 0.084371, -0.804230,
		25.967314, 40.343227, 52.413517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140675, 39.610455, 52.906952>,  <26.379122, 40.284168, 52.976479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140675, 39.610455, 52.906952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.108850, 39.816906, 52.565830>,  <26.089756, 39.940777, 52.361156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.108850, 39.816906, 52.565830>,  <26.140675, 39.610455, 52.906952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108850, 39.816906, 52.565830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425832, -0.755932, -0.497226,
		-0.901298, -0.402712, -0.159643,
		-0.079559, 0.516130, -0.852807,
		26.084982, 39.971745, 52.309986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911196, 39.160774, 52.411949>,  <26.140675, 39.610455, 52.906952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.911196, 39.160774, 52.411949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.092447, 39.452484, 52.206879>,  <26.201199, 39.627510, 52.083836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.092447, 39.452484, 52.206879>,  <25.911196, 39.160774, 52.411949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092447, 39.452484, 52.206879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519097, -0.683404, -0.513320,
		-0.724717, -0.033532, -0.688231,
		0.453127, 0.729270, -0.512680,
		26.228386, 39.671265, 52.053074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749142, 38.951038, 51.806217>,  <25.911196, 39.160774, 52.411949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749142, 38.951038, 51.806217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.052557, 39.210388, 51.780193>,  <26.234606, 39.365997, 51.764580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.052557, 39.210388, 51.780193>,  <25.749142, 38.951038, 51.806217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052557, 39.210388, 51.780193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521617, -0.664004, -0.535738,
		-0.390554, 0.372445, -0.841875,
		0.758541, 0.648370, -0.065056,
		26.280119, 39.404900, 51.760677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000460, 38.855938, 51.135715>,  <25.749142, 38.951038, 51.806217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000460, 38.855938, 51.135715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.302750, 39.014496, 51.344234>,  <26.484123, 39.109631, 51.469345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.302750, 39.014496, 51.344234>,  <26.000460, 38.855938, 51.135715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.302750, 39.014496, 51.344234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633140, -0.645665, -0.426908,
		0.167361, 0.652680, -0.738917,
		0.755727, 0.396391, 0.521297,
		26.529469, 39.133411, 51.500622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528126, 38.812389, 50.637634>,  <26.000460, 38.855938, 51.135715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528126, 38.812389, 50.637634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.725889, 38.894302, 50.975540>,  <26.844547, 38.943451, 51.178284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.725889, 38.894302, 50.975540>,  <26.528126, 38.812389, 50.637634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725889, 38.894302, 50.975540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780331, -0.532718, -0.327559,
		0.382940, 0.821142, -0.423181,
		0.494408, 0.204786, 0.844762,
		26.874212, 38.955738, 51.228970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160288, 39.022770, 50.450809>,  <26.528126, 38.812389, 50.637634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160288, 39.022770, 50.450809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.215179, 38.895821, 50.826138>,  <27.248116, 38.819653, 51.051334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.215179, 38.895821, 50.826138>,  <27.160288, 39.022770, 50.450809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215179, 38.895821, 50.826138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794559, -0.530376, -0.295595,
		0.591476, 0.786116, 0.179384,
		0.137231, -0.317369, 0.938320,
		27.256348, 38.800610, 51.107635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809059, 38.985554, 50.495415>,  <27.160288, 39.022770, 50.450809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809059, 38.985554, 50.495415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.711981, 38.778072, 50.823330>,  <27.653734, 38.653584, 51.020077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.711981, 38.778072, 50.823330>,  <27.809059, 38.985554, 50.495415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711981, 38.778072, 50.823330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789143, -0.597055, -0.144149,
		0.564226, 0.611942, 0.554234,
		-0.242698, -0.518703, 0.819784,
		27.639172, 38.622463, 51.069263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483141, 38.893898, 50.915291>,  <27.809059, 38.985554, 50.495415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483141, 38.893898, 50.915291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.203213, 38.616173, 50.982433>,  <28.035255, 38.449539, 51.022720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.203213, 38.616173, 50.982433>,  <28.483141, 38.893898, 50.915291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203213, 38.616173, 50.982433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675974, -0.719667, -0.158550,
		0.230887, 0.002512, 0.972977,
		-0.699822, -0.694315, 0.167860,
		27.993267, 38.407879, 51.032791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887997, 38.245266, 51.180321>,  <28.483141, 38.893898, 50.915291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887997, 38.245266, 51.180321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.522266, 38.139389, 51.057716>,  <28.302828, 38.075863, 50.984154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.522266, 38.139389, 51.057716>,  <28.887997, 38.245266, 51.180321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522266, 38.139389, 51.057716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372147, -0.847662, -0.378121,
		-0.159733, -0.459792, 0.873543,
		-0.914326, -0.264688, -0.306510,
		28.247969, 38.059982, 50.965763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911612, 37.603607, 51.442711>,  <28.887997, 38.245266, 51.180321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911612, 37.603607, 51.442711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.639406, 37.647663, 51.152946>,  <28.476084, 37.674095, 50.979088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.639406, 37.647663, 51.152946>,  <28.911612, 37.603607, 51.442711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639406, 37.647663, 51.152946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350478, -0.819286, -0.453801,
		-0.643480, -0.562707, 0.518935,
		-0.680513, 0.110137, -0.724411,
		28.435253, 37.680706, 50.935623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681374, 36.966625, 51.123310>,  <28.911612, 37.603607, 51.442711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681374, 36.966625, 51.123310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.545164, 37.207108, 50.834148>,  <28.463438, 37.351398, 50.660652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.545164, 37.207108, 50.834148>,  <28.681374, 36.966625, 51.123310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545164, 37.207108, 50.834148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074742, -0.749115, -0.658210,
		-0.937261, -0.278166, 0.210155,
		-0.340522, 0.601207, -0.722907,
		28.443007, 37.387470, 50.617275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457047, 36.520802, 50.650261>,  <28.681374, 36.966625, 51.123310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457047, 36.520802, 50.650261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.503185, 36.867916, 50.456917>,  <28.530869, 37.076187, 50.340912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.503185, 36.867916, 50.456917>,  <28.457047, 36.520802, 50.650261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503185, 36.867916, 50.456917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203427, -0.496933, -0.843608,
		-0.972271, -0.001019, -0.233853,
		0.115349, 0.867788, -0.483361,
		28.537790, 37.128254, 50.311909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108301, 36.457325, 50.028851>,  <28.457047, 36.520802, 50.650261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108301, 36.457325, 50.028851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.400625, 36.725567, 49.977924>,  <28.576019, 36.886513, 49.947369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.400625, 36.725567, 49.977924>,  <28.108301, 36.457325, 50.028851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400625, 36.725567, 49.977924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344994, -0.523829, -0.778834,
		-0.588978, 0.525258, -0.614174,
		0.730810, 0.670602, -0.127313,
		28.619869, 36.926746, 49.939732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135702, 36.724663, 49.308224>,  <28.108301, 36.457325, 50.028851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135702, 36.724663, 49.308224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.494061, 36.794537, 49.471619>,  <28.709076, 36.836460, 49.569656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.494061, 36.794537, 49.471619>,  <28.135702, 36.724663, 49.308224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494061, 36.794537, 49.471619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443735, -0.396750, -0.803547,
		0.021700, 0.901152, -0.432959,
		0.895895, 0.174682, 0.408483,
		28.762829, 36.846943, 49.594162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548452, 36.769032, 48.712002>,  <28.135702, 36.724663, 49.308224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548452, 36.769032, 48.712002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.832035, 36.755955, 48.993801>,  <29.002184, 36.748108, 49.162880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.832035, 36.755955, 48.993801>,  <28.548452, 36.769032, 48.712002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832035, 36.755955, 48.993801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649800, -0.357987, -0.670526,
		0.274121, 0.933154, -0.232553,
		0.708955, -0.032693, 0.704496,
		29.044722, 36.746147, 49.205151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179195, 37.160648, 48.443760>,  <28.548452, 36.769032, 48.712002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179195, 37.160648, 48.443760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.294519, 36.904243, 48.728291>,  <29.363714, 36.750401, 48.899010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.294519, 36.904243, 48.728291>,  <29.179195, 37.160648, 48.443760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294519, 36.904243, 48.728291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592078, -0.464491, -0.658553,
		0.752542, 0.611029, 0.245609,
		0.288311, -0.641008, 0.711326,
		29.381012, 36.711941, 48.941689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866755, 37.197491, 48.520805>,  <29.179195, 37.160648, 48.443760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866755, 37.197491, 48.520805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.803204, 36.831142, 48.668282>,  <29.765074, 36.611332, 48.756767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.803204, 36.831142, 48.668282>,  <29.866755, 37.197491, 48.520805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803204, 36.831142, 48.668282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662809, -0.375718, -0.647704,
		0.731739, 0.141468, 0.666742,
		-0.158877, -0.915873, 0.368694,
		29.755541, 36.556381, 48.778889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549671, 36.846848, 48.611370>,  <29.866755, 37.197491, 48.520805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549671, 36.846848, 48.611370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.281414, 36.550282, 48.602066>,  <30.120461, 36.372341, 48.596481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.281414, 36.550282, 48.602066>,  <30.549671, 36.846848, 48.611370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281414, 36.550282, 48.602066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583084, -0.507519, -0.634380,
		0.458533, -0.439006, 0.772671,
		-0.670642, -0.741416, -0.023264,
		30.080221, 36.327858, 48.595085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965767, 36.179653, 48.722164>,  <30.549671, 36.846848, 48.611370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965767, 36.179653, 48.722164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.614080, 36.069798, 48.566448>,  <30.403069, 36.003883, 48.473019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.614080, 36.069798, 48.566448>,  <30.965767, 36.179653, 48.722164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614080, 36.069798, 48.566448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476277, -0.526739, -0.704064,
		-0.011693, -0.804437, 0.593922,
		-0.879217, -0.274639, -0.389294,
		30.350315, 35.987404, 48.449661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981199, 35.448444, 48.664013>,  <30.965767, 36.179653, 48.722164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981199, 35.448444, 48.664013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.688560, 35.550934, 48.411308>,  <30.512978, 35.612427, 48.259686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.688560, 35.550934, 48.411308>,  <30.981199, 35.448444, 48.664013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688560, 35.550934, 48.411308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401473, -0.587031, -0.703004,
		-0.550988, -0.767948, 0.326602,
		-0.731596, 0.256225, -0.631757,
		30.469082, 35.627800, 48.221783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619511, 34.861240, 48.494007>,  <30.981199, 35.448444, 48.664013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619511, 34.861240, 48.494007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.549557, 35.094482, 48.176666>,  <30.507584, 35.234428, 47.986263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.549557, 35.094482, 48.176666>,  <30.619511, 34.861240, 48.494007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549557, 35.094482, 48.176666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210173, -0.765087, -0.608662,
		-0.961895, -0.273187, 0.011249,
		-0.174885, 0.583105, -0.793350,
		30.497091, 35.269413, 47.938660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309639, 34.445179, 48.039730>,  <30.619511, 34.861240, 48.494007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309639, 34.445179, 48.039730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.398745, 34.743057, 47.788078>,  <30.452208, 34.921783, 47.637089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.398745, 34.743057, 47.788078>,  <30.309639, 34.445179, 48.039730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398745, 34.743057, 47.788078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276858, -0.667098, -0.691614,
		-0.934733, -0.020112, -0.354781,
		0.222764, 0.744699, -0.629126,
		30.465574, 34.966465, 47.599339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830217, 34.310791, 47.523411>,  <30.309639, 34.445179, 48.039730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830217, 34.310791, 47.523411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.126348, 34.542389, 47.386772>,  <30.304028, 34.681347, 47.304790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.126348, 34.542389, 47.386772>,  <29.830217, 34.310791, 47.523411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126348, 34.542389, 47.386772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183304, -0.662745, -0.726064,
		-0.646773, 0.474910, -0.596779,
		0.740327, 0.578991, -0.341592,
		30.348446, 34.716087, 47.284294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687576, 34.328121, 46.795143>,  <29.830217, 34.310791, 47.523411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687576, 34.328121, 46.795143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.076267, 34.410175, 46.841911>,  <30.309481, 34.459408, 46.869972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.076267, 34.410175, 46.841911>,  <29.687576, 34.328121, 46.795143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076267, 34.410175, 46.841911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229712, -0.706813, -0.669065,
		-0.054610, 0.677005, -0.733950,
		0.971725, 0.205134, 0.116917,
		30.367785, 34.471714, 46.876987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958418, 34.326653, 46.070724>,  <29.687576, 34.328121, 46.795143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958418, 34.326653, 46.070724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.244009, 34.271870, 46.345383>,  <30.415363, 34.238998, 46.510178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.244009, 34.271870, 46.345383>,  <29.958418, 34.326653, 46.070724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244009, 34.271870, 46.345383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268221, -0.852368, -0.448916,
		0.646756, 0.504688, -0.571836,
		0.713977, -0.136961, 0.686643,
		30.458202, 34.230782, 46.551376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331142, 33.879459, 45.765003>,  <29.958418, 34.326653, 46.070724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331142, 33.879459, 45.765003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.458492, 33.862972, 46.143829>,  <30.534903, 33.853081, 46.371124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.458492, 33.862972, 46.143829>,  <30.331142, 33.879459, 45.765003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458492, 33.862972, 46.143829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420954, -0.889003, -0.180199,
		0.849373, 0.456043, -0.265689,
		0.318376, -0.041213, 0.947068,
		30.554005, 33.850609, 46.427948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965841, 33.566872, 45.758469>,  <30.331142, 33.879459, 45.765003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965841, 33.566872, 45.758469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.888470, 33.518440, 46.147915>,  <30.842047, 33.489384, 46.381584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.888470, 33.518440, 46.147915>,  <30.965841, 33.566872, 45.758469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888470, 33.518440, 46.147915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483598, -0.875197, -0.012761,
		0.853650, 0.468370, 0.227839,
		-0.193427, -0.121075, 0.973615,
		30.830442, 33.482117, 46.439999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554422, 33.382473, 46.056564>,  <30.965841, 33.566872, 45.758469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554422, 33.382473, 46.056564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.292486, 33.249821, 46.328213>,  <31.135324, 33.170231, 46.491203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.292486, 33.249821, 46.328213>,  <31.554422, 33.382473, 46.056564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292486, 33.249821, 46.328213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510243, -0.856877, 0.073571,
		0.557525, 0.394694, 0.730330,
		-0.654842, -0.331628, 0.679121,
		31.096033, 33.150333, 46.531948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978205, 32.976810, 46.635807>,  <31.554422, 33.382473, 46.056564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978205, 32.976810, 46.635807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.598642, 32.862404, 46.689133>,  <31.370905, 32.793762, 46.721130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.598642, 32.862404, 46.689133>,  <31.978205, 32.976810, 46.635807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598642, 32.862404, 46.689133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287364, -0.957775, -0.009424,
		0.130382, 0.029368, 0.991029,
		-0.948906, -0.286015, 0.133316,
		31.313971, 32.776600, 46.729126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929693, 32.726067, 47.281567>,  <31.978205, 32.976810, 46.635807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929693, 32.726067, 47.281567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.651127, 32.537476, 47.065155>,  <31.483986, 32.424320, 46.935307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.651127, 32.537476, 47.065155>,  <31.929693, 32.726067, 47.281567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651127, 32.537476, 47.065155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374684, -0.881871, 0.286209,
		-0.612058, -0.003394, 0.790805,
		-0.696417, -0.471478, -0.541028,
		31.442202, 32.396030, 46.902847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766911, 32.174145, 47.726246>,  <31.929693, 32.726067, 47.281567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766911, 32.174145, 47.726246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.586246, 32.058514, 47.388622>,  <31.477848, 31.989136, 47.186047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.586246, 32.058514, 47.388622>,  <31.766911, 32.174145, 47.726246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586246, 32.058514, 47.388622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328547, -0.933463, 0.143889,
		-0.829494, -0.212325, 0.516583,
		-0.451660, -0.289077, -0.844060,
		31.450748, 31.971790, 47.135403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322012, 31.562920, 47.850311>,  <31.766911, 32.174145, 47.726246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322012, 31.562920, 47.850311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.402763, 31.533863, 47.459625>,  <31.451214, 31.516430, 47.225216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.402763, 31.533863, 47.459625>,  <31.322012, 31.562920, 47.850311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402763, 31.533863, 47.459625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282532, -0.950532, 0.129091,
		-0.937774, -0.302014, -0.171370,
		0.201880, -0.072641, -0.976713,
		31.463327, 31.512072, 47.166611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128725, 30.871572, 47.589878>,  <31.322012, 31.562920, 47.850311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128725, 30.871572, 47.589878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.390144, 31.009251, 47.320240>,  <31.546995, 31.091858, 47.158455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.390144, 31.009251, 47.320240>,  <31.128725, 30.871572, 47.589878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390144, 31.009251, 47.320240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582279, -0.797635, 0.157254,
		-0.483557, -0.495286, -0.721709,
		0.653546, 0.344195, -0.674097,
		31.586208, 31.112509, 47.118011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211298, 30.332390, 47.155758>,  <31.128725, 30.871572, 47.589878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211298, 30.332390, 47.155758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.523809, 30.560074, 47.053303>,  <31.711315, 30.696684, 46.991829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.523809, 30.560074, 47.053303>,  <31.211298, 30.332390, 47.155758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523809, 30.560074, 47.053303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526071, -0.821333, -0.220592,
		-0.335941, 0.037595, -0.941132,
		0.781277, 0.569208, -0.256142,
		31.758192, 30.730837, 46.976460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565517, 30.014254, 46.658058>,  <31.211298, 30.332390, 47.155758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565517, 30.014254, 46.658058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.845119, 30.254517, 46.813286>,  <32.012882, 30.398674, 46.906422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.845119, 30.254517, 46.813286>,  <31.565517, 30.014254, 46.658058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845119, 30.254517, 46.813286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690954, -0.707160, -0.150025,
		0.184317, 0.373010, -0.909336,
		0.699007, 0.600656, 0.388074,
		32.054821, 30.434713, 46.929707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115738, 29.840017, 46.192989>,  <31.565517, 30.014254, 46.658058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115738, 29.840017, 46.192989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302418, 30.035587, 46.487782>,  <32.414425, 30.152929, 46.664658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302418, 30.035587, 46.487782>,  <32.115738, 29.840017, 46.192989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302418, 30.035587, 46.487782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682933, -0.728702, 0.050957,
		0.561955, 0.479529, -0.673987,
		0.466700, 0.488924, 0.736983,
		32.442429, 30.182264, 46.708878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806732, 30.047234, 45.987347>,  <32.115738, 29.840017, 46.192989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806732, 30.047234, 45.987347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.748257, 29.975668, 46.376526>,  <32.713173, 29.932730, 46.610031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.748257, 29.975668, 46.376526>,  <32.806732, 30.047234, 45.987347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748257, 29.975668, 46.376526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654822, -0.754703, -0.040394,
		0.741511, 0.631200, 0.227482,
		-0.146185, -0.178912, 0.972944,
		32.704403, 29.921995, 46.668407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464283, 30.105433, 46.400295>,  <32.806732, 30.047234, 45.987347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464283, 30.105433, 46.400295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.210999, 29.875723, 46.607857>,  <33.059029, 29.737898, 46.732391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.210999, 29.875723, 46.607857>,  <33.464283, 30.105433, 46.400295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210999, 29.875723, 46.607857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750505, -0.619444, 0.230284,
		0.189184, 0.535256, 0.823232,
		-0.633207, -0.574274, 0.518901,
		33.021038, 29.703442, 46.763527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546753, 29.953863, 47.157578>,  <33.464283, 30.105433, 46.400295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546753, 29.953863, 47.157578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.404945, 29.633631, 46.964336>,  <33.319859, 29.441492, 46.848392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.404945, 29.633631, 46.964336>,  <33.546753, 29.953863, 47.157578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404945, 29.633631, 46.964336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915865, -0.401427, -0.006874,
		-0.188427, -0.444893, 0.875537,
		-0.354523, -0.800579, -0.483101,
		33.298588, 29.393457, 46.819405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067951, 29.637871, 46.711323>,  <33.546753, 29.953863, 47.157578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067951, 29.637871, 46.711323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.249783, 29.397003, 46.448795>,  <34.358883, 29.252483, 46.291279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.249783, 29.397003, 46.448795>,  <34.067951, 29.637871, 46.711323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249783, 29.397003, 46.448795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885697, 0.383625, 0.261482,
		0.094323, -0.700161, 0.707728,
		0.454582, -0.602168, -0.656315,
		34.386158, 29.216352, 46.251900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711311, 29.194998, 46.994553>,  <34.067951, 29.637871, 46.711323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711311, 29.194998, 46.994553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.740250, 29.294395, 46.608181>,  <34.757614, 29.354034, 46.376358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.740250, 29.294395, 46.608181>,  <34.711311, 29.194998, 46.994553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740250, 29.294395, 46.608181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906530, 0.387454, 0.167575,
		0.415895, -0.887766, -0.197238,
		0.072347, 0.248496, -0.965927,
		34.761955, 29.368944, 46.318401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397549, 28.973248, 46.748520>,  <34.711311, 29.194998, 46.994553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397549, 28.973248, 46.748520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264721, 29.289055, 46.542068>,  <35.185024, 29.478539, 46.418198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264721, 29.289055, 46.542068>,  <35.397549, 28.973248, 46.748520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264721, 29.289055, 46.542068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886031, 0.448773, 0.116417,
		0.323539, -0.418648, -0.848562,
		-0.332073, 0.789517, -0.516130,
		35.165100, 29.525909, 46.387230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916168, 29.084833, 46.319244>,  <35.397549, 28.973248, 46.748520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916168, 29.084833, 46.319244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.747391, 29.428598, 46.434742>,  <35.646126, 29.634857, 46.504040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.747391, 29.428598, 46.434742>,  <35.916168, 29.084833, 46.319244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747391, 29.428598, 46.434742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906195, 0.390004, 0.163425,
		0.027836, 0.330618, -0.943354,
		-0.421943, 0.859412, 0.288748,
		35.620808, 29.686422, 46.521366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421421, 29.536293, 46.199455>,  <35.916168, 29.084833, 46.319244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421421, 29.536293, 46.199455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.174725, 29.740160, 46.439415>,  <36.026707, 29.862480, 46.583389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.174725, 29.740160, 46.439415>,  <36.421421, 29.536293, 46.199455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174725, 29.740160, 46.439415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770855, 0.545393, 0.329133,
		-0.159430, 0.665420, -0.729245,
		-0.616737, 0.509669, 0.599895,
		35.989704, 29.893061, 46.619385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416218, 30.220444, 45.998089>,  <36.421421, 29.536293, 46.199455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416218, 30.220444, 45.998089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.283070, 30.232340, 46.375092>,  <36.203178, 30.239477, 46.601292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.283070, 30.232340, 46.375092>,  <36.416218, 30.220444, 45.998089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283070, 30.232340, 46.375092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615696, 0.763894, 0.193348,
		-0.714222, 0.644655, -0.272591,
		-0.332874, 0.029740, 0.942502,
		36.183208, 30.241262, 46.657841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228550, 30.991135, 46.205204>,  <36.416218, 30.220444, 45.998089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228550, 30.991135, 46.205204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263306, 30.796057, 46.552677>,  <36.284161, 30.679010, 46.761162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263306, 30.796057, 46.552677>,  <36.228550, 30.991135, 46.205204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263306, 30.796057, 46.552677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557632, 0.746385, 0.363258,
		-0.825529, 0.452841, 0.336805,
		0.086888, -0.487692, 0.868681,
		36.289371, 30.649750, 46.813282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327263, 31.510857, 46.613831>,  <36.228550, 30.991135, 46.205204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327263, 31.510857, 46.613831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443794, 31.213879, 46.855125>,  <36.513714, 31.035692, 46.999905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443794, 31.213879, 46.855125>,  <36.327263, 31.510857, 46.613831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443794, 31.213879, 46.855125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590400, 0.635715, 0.497287,
		-0.752699, 0.211280, 0.623543,
		0.291328, -0.742447, 0.603242,
		36.531193, 30.991144, 47.036098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259666, 31.816975, 47.250351>,  <36.327263, 31.510857, 46.613831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259666, 31.816975, 47.250351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.519283, 31.514877, 47.213795>,  <36.675053, 31.333620, 47.191860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.519283, 31.514877, 47.213795>,  <36.259666, 31.816975, 47.250351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519283, 31.514877, 47.213795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715705, 0.565463, 0.409900,
		-0.257894, -0.331453, 0.907540,
		0.649043, -0.755242, -0.091393,
		36.713997, 31.288305, 47.186378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542690, 31.770573, 47.774620>,  <36.259666, 31.816975, 47.250351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542690, 31.770573, 47.774620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829891, 31.603195, 47.552132>,  <37.002213, 31.502769, 47.418640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829891, 31.603195, 47.552132>,  <36.542690, 31.770573, 47.774620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829891, 31.603195, 47.552132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688894, 0.541439, 0.481943,
		0.099493, -0.729211, 0.677017,
		0.718001, -0.418443, -0.556219,
		37.045292, 31.477663, 47.385265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110615, 31.734566, 48.267117>,  <36.542690, 31.770573, 47.774620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110615, 31.734566, 48.267117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.264454, 31.705578, 47.899021>,  <37.356758, 31.688185, 47.678165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.264454, 31.705578, 47.899021>,  <37.110615, 31.734566, 48.267117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264454, 31.705578, 47.899021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786188, 0.548131, 0.285413,
		0.483726, -0.833247, 0.267785,
		0.384601, -0.072468, -0.920234,
		37.379833, 31.683838, 47.622952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872814, 31.744320, 48.411873>,  <37.110615, 31.734566, 48.267117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872814, 31.744320, 48.411873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.839104, 31.804358, 48.017845>,  <37.818878, 31.840380, 47.781429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.839104, 31.804358, 48.017845>,  <37.872814, 31.744320, 48.411873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839104, 31.804358, 48.017845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720005, 0.692577, 0.043930,
		0.688833, -0.705555, -0.166434,
		-0.084273, 0.150094, -0.985074,
		37.813824, 31.849386, 47.722324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436470, 31.636080, 48.161766>,  <37.872814, 31.744320, 48.411873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436470, 31.636080, 48.161766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261990, 31.877094, 47.894428>,  <38.157303, 32.021702, 47.734024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261990, 31.877094, 47.894428>,  <38.436470, 31.636080, 48.161766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261990, 31.877094, 47.894428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724843, 0.675393, 0.135818,
		0.533229, -0.425200, -0.731349,
		-0.436198, 0.602536, -0.668343,
		38.131130, 32.057854, 47.693924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965725, 31.921186, 47.765118>,  <38.436470, 31.636080, 48.161766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965725, 31.921186, 47.765118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.660919, 32.174419, 47.710655>,  <38.478035, 32.326359, 47.677979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.660919, 32.174419, 47.710655>,  <38.965725, 31.921186, 47.765118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660919, 32.174419, 47.710655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614571, 0.773284, 0.155996,
		0.204047, 0.035192, -0.978328,
		-0.762015, 0.633083, -0.136158,
		38.432316, 32.364346, 47.669807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107334, 32.206867, 47.238663>,  <38.965725, 31.921186, 47.765118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107334, 32.206867, 47.238663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866726, 32.464245, 47.428043>,  <38.722363, 32.618671, 47.541672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866726, 32.464245, 47.428043>,  <39.107334, 32.206867, 47.238663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866726, 32.464245, 47.428043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721324, 0.692172, -0.024261,
		-0.343318, 0.326916, -0.880488,
		-0.601518, 0.643447, 0.473447,
		38.686272, 32.657280, 47.570076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133495, 32.870876, 46.790009>,  <39.107334, 32.206867, 47.238663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133495, 32.870876, 46.790009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.003262, 32.960342, 47.157478>,  <38.925121, 33.014023, 47.377960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.003262, 32.960342, 47.157478>,  <39.133495, 32.870876, 46.790009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003262, 32.960342, 47.157478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583742, 0.811887, 0.009216,
		-0.743800, 0.539270, -0.394905,
		-0.325588, 0.223668, 0.918676,
		38.905586, 33.027443, 47.433083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432186, 32.994007, 46.970375>,  <39.133495, 32.870876, 46.790009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432186, 32.994007, 46.970375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.107803, 33.010143, 46.736889>,  <37.913174, 33.019825, 46.596798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.107803, 33.010143, 46.736889>,  <38.432186, 32.994007, 46.970375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107803, 33.010143, 46.736889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565166, 0.312263, -0.763596,
		0.151466, -0.949139, -0.276032,
		-0.810953, 0.040345, -0.583719,
		37.864517, 33.022247, 46.561775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487713, 32.566212, 46.234440>,  <38.432186, 32.994007, 46.970375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487713, 32.566212, 46.234440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.229218, 32.871284, 46.223877>,  <38.074120, 33.054329, 46.217537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.229218, 32.871284, 46.223877>,  <38.487713, 32.566212, 46.234440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229218, 32.871284, 46.223877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435863, 0.340470, -0.833129,
		-0.626418, -0.549911, -0.552448,
		-0.646239, 0.762678, -0.026409,
		38.035347, 33.100086, 46.215954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225437, 32.520714, 45.555183>,  <38.487713, 32.566212, 46.234440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225437, 32.520714, 45.555183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.149891, 32.888721, 45.692528>,  <38.104565, 33.109528, 45.774937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.149891, 32.888721, 45.692528>,  <38.225437, 32.520714, 45.555183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149891, 32.888721, 45.692528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370009, 0.390556, -0.842947,
		-0.909629, -0.032153, -0.414176,
		-0.188862, 0.920018, 0.343364,
		38.093231, 33.164726, 45.795536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766510, 32.826672, 45.067699>,  <38.225437, 32.520714, 45.555183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766510, 32.826672, 45.067699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.023502, 33.069366, 45.254929>,  <38.177700, 33.214981, 45.367268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.023502, 33.069366, 45.254929>,  <37.766510, 32.826672, 45.067699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023502, 33.069366, 45.254929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433538, 0.215869, -0.874898,
		-0.631871, 0.765033, -0.124349,
		0.642483, 0.606733, 0.468072,
		38.216248, 33.251385, 45.395351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928925, 33.269592, 44.565079>,  <37.766510, 32.826672, 45.067699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928925, 33.269592, 44.565079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.206985, 33.360561, 44.837856>,  <38.373821, 33.415142, 45.001522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.206985, 33.360561, 44.837856>,  <37.928925, 33.269592, 44.565079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206985, 33.360561, 44.837856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662892, 0.164199, -0.730488,
		-0.278102, 0.959853, -0.036613,
		0.695150, 0.227421, 0.681943,
		38.415531, 33.428787, 45.042439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447186, 33.661911, 44.198101>,  <37.928925, 33.269592, 44.565079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447186, 33.661911, 44.198101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.619759, 33.579819, 44.549496>,  <38.723301, 33.530563, 44.760334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.619759, 33.579819, 44.549496>,  <38.447186, 33.661911, 44.198101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619759, 33.579819, 44.549496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890349, -0.060092, -0.451295,
		0.145411, 0.976866, 0.156805,
		0.431432, -0.205234, 0.878490,
		38.749187, 33.518250, 44.813042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093979, 33.991718, 44.159115>,  <38.447186, 33.661911, 44.198101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093979, 33.991718, 44.159115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.123180, 33.744457, 44.472179>,  <39.140701, 33.596100, 44.660019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.123180, 33.744457, 44.472179>,  <39.093979, 33.991718, 44.159115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123180, 33.744457, 44.472179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985612, -0.075239, -0.151356,
		0.152448, 0.782446, 0.603770,
		0.073001, -0.618157, 0.782658,
		39.145081, 33.559010, 44.706978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626865, 34.280582, 44.688854>,  <39.093979, 33.991718, 44.159115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626865, 34.280582, 44.688854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.611008, 33.881748, 44.714924>,  <39.601494, 33.642448, 44.730564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.611008, 33.881748, 44.714924>,  <39.626865, 34.280582, 44.688854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611008, 33.881748, 44.714924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998175, -0.042492, -0.042898,
		0.045543, 0.063353, 0.996952,
		-0.039645, -0.997086, 0.065173,
		39.599113, 33.582623, 44.734474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103611, 33.933174, 45.200920>,  <39.626865, 34.280582, 44.688854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103611, 33.933174, 45.200920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.067287, 33.674591, 44.897911>,  <40.045494, 33.519440, 44.716106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.067287, 33.674591, 44.897911>,  <40.103611, 33.933174, 45.200920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067287, 33.674591, 44.897911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989655, -0.143418, 0.003758,
		-0.111072, -0.749348, 0.652795,
		-0.090806, -0.646459, -0.757526,
		40.040047, 33.480652, 44.670654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833050, 33.685825, 45.132378>,  <40.103611, 33.933174, 45.200920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833050, 33.685825, 45.132378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.797943, 33.936180, 44.822395>,  <40.776878, 34.086395, 44.636406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.797943, 33.936180, 44.822395>,  <40.833050, 33.685825, 45.132378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797943, 33.936180, 44.822395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604059, 0.652041, 0.458209,
		0.792092, -0.427905, -0.435302,
		-0.087765, 0.625892, -0.774956,
		40.771614, 34.123947, 44.589909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501919, 34.055580, 45.002979>,  <40.833050, 33.685825, 45.132378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501919, 34.055580, 45.002979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.167980, 34.246960, 44.894081>,  <40.967617, 34.361786, 44.828743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.167980, 34.246960, 44.894081>,  <41.501919, 34.055580, 45.002979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167980, 34.246960, 44.894081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277430, 0.792848, 0.542608,
		0.475456, 0.377468, -0.794645,
		-0.834850, 0.478445, -0.272243,
		40.917526, 34.390491, 44.812408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692036, 34.763893, 45.065643>,  <41.501919, 34.055580, 45.002979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692036, 34.763893, 45.065643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.295567, 34.796642, 45.023930>,  <41.057686, 34.816292, 44.998901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.295567, 34.796642, 45.023930>,  <41.692036, 34.763893, 45.065643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295567, 34.796642, 45.023930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024774, 0.887069, 0.460972,
		0.130251, 0.454319, -0.881266,
		-0.991172, 0.081874, -0.104286,
		40.998215, 34.821205, 44.992645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530720, 35.412075, 44.863586>,  <41.692036, 34.763893, 45.065643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530720, 35.412075, 44.863586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.234535, 35.242371, 45.072098>,  <41.056824, 35.140549, 45.197205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.234535, 35.242371, 45.072098>,  <41.530720, 35.412075, 44.863586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234535, 35.242371, 45.072098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101316, 0.837186, 0.537453,
		-0.664423, 0.345147, -0.662884,
		-0.740457, -0.424257, 0.521276,
		41.012398, 35.115093, 45.228481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375607, 35.633968, 44.139832>,  <41.530720, 35.412075, 44.863586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375607, 35.633968, 44.139832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493832, 35.438049, 43.811749>,  <41.564766, 35.320496, 43.614899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493832, 35.438049, 43.811749>,  <41.375607, 35.633968, 44.139832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493832, 35.438049, 43.811749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773201, 0.626894, -0.095736,
		0.561074, -0.605888, 0.564000,
		0.295563, -0.489800, -0.820207,
		41.582500, 35.291111, 43.565685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055977, 35.564842, 44.236584>,  <41.375607, 35.633968, 44.139832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055977, 35.564842, 44.236584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.956272, 35.548553, 43.849552>,  <41.896450, 35.538780, 43.617332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.956272, 35.548553, 43.849552>,  <42.055977, 35.564842, 44.236584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956272, 35.548553, 43.849552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716424, 0.664507, -0.212526,
		0.651618, -0.746172, -0.136461,
		-0.249260, -0.040722, -0.967580,
		41.881493, 35.536339, 43.559277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726818, 35.390053, 43.850677>,  <42.055977, 35.564842, 44.236584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726818, 35.390053, 43.850677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.457447, 35.588997, 43.631908>,  <42.295826, 35.708363, 43.500645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.457447, 35.588997, 43.631908>,  <42.726818, 35.390053, 43.850677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457447, 35.588997, 43.631908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679293, 0.708202, -0.192384,
		0.291650, -0.501080, -0.814775,
		-0.673425, 0.497362, -0.546927,
		42.255421, 35.738205, 43.467831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282394, 34.770565, 43.848171>,  <42.726818, 35.390053, 43.850677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282394, 34.770565, 43.848171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.676933, 34.835705, 43.838318>,  <42.913654, 34.874786, 43.832405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.676933, 34.835705, 43.838318>,  <42.282394, 34.770565, 43.848171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.676933, 34.835705, 43.838318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058078, 0.203924, -0.977262,
		-0.154119, 0.965348, 0.210597,
		0.986344, 0.162846, -0.024637,
		42.972836, 34.884560, 43.830929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330204, 35.198555, 43.296398>,  <42.282394, 34.770565, 43.848171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330204, 35.198555, 43.296398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.696648, 35.055725, 43.369328>,  <42.916515, 34.970028, 43.413086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.696648, 35.055725, 43.369328>,  <42.330204, 35.198555, 43.296398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696648, 35.055725, 43.369328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268188, 0.207750, -0.940699,
		0.298022, 0.910680, 0.286085,
		0.916110, -0.357074, 0.182320,
		42.971481, 34.948605, 43.424023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848442, 35.742260, 43.228107>,  <42.330204, 35.198555, 43.296398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848442, 35.742260, 43.228107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.995594, 35.379089, 43.147778>,  <43.083885, 35.161186, 43.099579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.995594, 35.379089, 43.147778>,  <42.848442, 35.742260, 43.228107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995594, 35.379089, 43.147778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471873, 0.368372, -0.801023,
		0.801249, 0.199919, 0.563944,
		0.367881, -0.907929, -0.200821,
		43.105957, 35.106712, 43.087532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455170, 35.828728, 42.892483>,  <42.848442, 35.742260, 43.228107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455170, 35.828728, 42.892483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.359524, 35.456791, 42.780605>,  <43.302135, 35.233631, 42.713478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.359524, 35.456791, 42.780605>,  <43.455170, 35.828728, 42.892483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359524, 35.456791, 42.780605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474783, 0.139298, -0.869009,
		0.846998, -0.340586, 0.408163,
		-0.239116, -0.929837, -0.279690,
		43.287788, 35.177841, 42.696697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025604, 35.439026, 42.549908>,  <43.455170, 35.828728, 42.892483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025604, 35.439026, 42.549908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.670017, 35.321571, 42.409332>,  <43.456665, 35.251099, 42.324986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.670017, 35.321571, 42.409332>,  <44.025604, 35.439026, 42.549908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.670017, 35.321571, 42.409332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222988, 0.392748, -0.892203,
		0.400032, -0.871502, -0.283655,
		-0.888960, -0.293658, -0.351446,
		43.403328, 35.233479, 42.303902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190968, 35.471664, 41.948734>,  <44.025604, 35.439026, 42.549908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190968, 35.471664, 41.948734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.792213, 35.441029, 41.941185>,  <43.552959, 35.422646, 41.936653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.792213, 35.441029, 41.941185>,  <44.190968, 35.471664, 41.948734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792213, 35.441029, 41.941185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015424, 0.423930, -0.905564,
		0.077360, -0.902451, -0.423790,
		-0.996884, -0.076592, -0.018876,
		43.493149, 35.418053, 41.935524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923038, 35.126854, 41.316444>,  <44.190968, 35.471664, 41.948734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923038, 35.126854, 41.316444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.637527, 35.380333, 41.435738>,  <43.466221, 35.532421, 41.507313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.637527, 35.380333, 41.435738>,  <43.923038, 35.126854, 41.316444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637527, 35.380333, 41.435738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106292, 0.322877, -0.940454,
		-0.692257, -0.702977, -0.163106,
		-0.713781, 0.633699, 0.298234,
		43.423393, 35.570442, 41.525208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203465, 34.977577, 41.265827>,  <43.923038, 35.126854, 41.316444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203465, 34.977577, 41.265827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.314899, 35.358585, 41.216671>,  <43.381760, 35.587189, 41.187180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.314899, 35.358585, 41.216671>,  <43.203465, 34.977577, 41.265827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314899, 35.358585, 41.216671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056389, -0.143953, -0.987977,
		-0.958755, 0.268307, -0.093814,
		0.278586, 0.952517, -0.122886,
		43.398476, 35.644341, 41.179806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684151, 35.285484, 40.825027>,  <43.203465, 34.977577, 41.265827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684151, 35.285484, 40.825027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.047859, 35.449688, 40.797581>,  <43.266083, 35.548210, 40.781113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.047859, 35.449688, 40.797581>,  <42.684151, 35.285484, 40.825027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047859, 35.449688, 40.797581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014511, -0.196040, -0.980488,
		-0.415953, 0.890533, -0.184210,
		0.909270, 0.410510, -0.068621,
		43.320641, 35.572842, 40.776993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700798, 35.619839, 40.190651>,  <42.684151, 35.285484, 40.825027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700798, 35.619839, 40.190651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.087116, 35.557529, 40.273567>,  <43.318909, 35.520145, 40.323318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.087116, 35.557529, 40.273567>,  <42.700798, 35.619839, 40.190651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087116, 35.557529, 40.273567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173160, -0.207589, -0.962768,
		0.193004, 0.965734, -0.173516,
		0.965798, -0.155772, 0.207292,
		43.376854, 35.510799, 40.335754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209106, 35.971874, 39.729988>,  <42.700798, 35.619839, 40.190651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209106, 35.971874, 39.729988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.394169, 35.646084, 39.870033>,  <43.505207, 35.450611, 39.954060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.394169, 35.646084, 39.870033>,  <43.209106, 35.971874, 39.729988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394169, 35.646084, 39.870033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356821, -0.190448, -0.914554,
		0.811560, 0.548051, 0.202511,
		0.462654, -0.814475, 0.350116,
		43.532967, 35.401741, 39.975067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065399, 35.884457, 39.680710>,  <43.209106, 35.971874, 39.729988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065399, 35.884457, 39.680710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.890366, 35.524815, 39.685349>,  <43.785347, 35.309029, 39.688133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.890366, 35.524815, 39.685349>,  <44.065399, 35.884457, 39.680710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890366, 35.524815, 39.685349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496984, -0.252586, -0.830185,
		0.749351, -0.357511, 0.557367,
		-0.437584, -0.899103, 0.011598,
		43.759090, 35.255085, 39.688828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.627014, 35.493359, 39.595081>,  <44.065399, 35.884457, 39.680710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.627014, 35.493359, 39.595081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.296452, 35.296341, 39.485935>,  <44.098114, 35.178131, 39.420448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.296452, 35.296341, 39.485935>,  <44.627014, 35.493359, 39.595081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296452, 35.296341, 39.485935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459865, -0.310735, -0.831846,
		0.324932, -0.812923, 0.483297,
		-0.826403, -0.492545, -0.272867,
		44.048531, 35.148579, 39.404076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606712, 34.684830, 39.479275>,  <44.627014, 35.493359, 39.595081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606712, 34.684830, 39.479275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.401646, 34.899673, 39.211338>,  <44.278606, 35.028580, 39.050575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.401646, 34.899673, 39.211338>,  <44.606712, 34.684830, 39.479275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401646, 34.899673, 39.211338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413626, -0.529163, -0.740878,
		-0.752390, -0.656884, 0.049118,
		-0.512662, 0.537113, -0.669841,
		44.247849, 35.060806, 39.010387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176910, 34.276463, 39.009148>,  <44.606712, 34.684830, 39.479275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176910, 34.276463, 39.009148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.311985, 34.614521, 38.843403>,  <44.393028, 34.817356, 38.743958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.311985, 34.614521, 38.843403>,  <44.176910, 34.276463, 39.009148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311985, 34.614521, 38.843403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404254, -0.527776, -0.747015,
		-0.850027, 0.084750, -0.519877,
		0.337687, 0.845145, -0.414363,
		44.413292, 34.868065, 38.719093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982029, 34.205662, 38.334011>,  <44.176910, 34.276463, 39.009148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982029, 34.205662, 38.334011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.286747, 34.463623, 38.358547>,  <44.469578, 34.618401, 38.373268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.286747, 34.463623, 38.358547>,  <43.982029, 34.205662, 38.334011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286747, 34.463623, 38.358547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275099, -0.236320, -0.931919,
		-0.586501, 0.726810, -0.357440,
		0.761799, 0.644903, 0.061343,
		44.515285, 34.657093, 38.376949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985489, 34.638103, 37.821735>,  <43.982029, 34.205662, 38.334011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985489, 34.638103, 37.821735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.369621, 34.624065, 37.932400>,  <44.600101, 34.615643, 37.998798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.369621, 34.624065, 37.932400>,  <43.985489, 34.638103, 37.821735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369621, 34.624065, 37.932400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276361, -0.013135, -0.960964,
		0.037355, 0.999298, -0.002917,
		0.960328, -0.035091, 0.276658,
		44.657719, 34.613537, 38.015396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368073, 35.178463, 37.454536>,  <43.985489, 34.638103, 37.821735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368073, 35.178463, 37.454536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.584976, 34.850380, 37.527439>,  <44.715118, 34.653530, 37.571182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.584976, 34.850380, 37.527439>,  <44.368073, 35.178463, 37.454536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584976, 34.850380, 37.527439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191493, -0.090568, -0.977306,
		0.818097, 0.564857, 0.107952,
		0.542261, -0.820204, 0.182260,
		44.747654, 34.604321, 37.582115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900921, 35.414555, 37.113968>,  <44.368073, 35.178463, 37.454536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.900921, 35.414555, 37.113968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.819378, 35.023983, 37.142349>,  <44.770451, 34.789642, 37.159378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.819378, 35.023983, 37.142349>,  <44.900921, 35.414555, 37.113968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.819378, 35.023983, 37.142349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005185, -0.073549, -0.997278,
		0.978987, -0.202933, 0.020057,
		-0.203856, -0.976426, 0.070951,
		44.758221, 34.731056, 37.163635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.524544, 34.986149, 36.981297>,  <44.900921, 35.414555, 37.113968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.524544, 34.986149, 36.981297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.145504, 34.924706, 36.869247>,  <44.918079, 34.887840, 36.802017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.145504, 34.924706, 36.869247>,  <45.524544, 34.986149, 36.981297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.145504, 34.924706, 36.869247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174648, 0.485129, -0.856825,
		0.267506, -0.860846, -0.432879,
		-0.947596, -0.153605, -0.280120,
		44.861225, 34.878624, 36.785210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.696621, 34.875767, 36.347763>,  <45.524544, 34.986149, 36.981297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.696621, 34.875767, 36.347763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.310799, 34.980923, 36.338539>,  <45.079308, 35.044014, 36.333004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.310799, 34.980923, 36.338539>,  <45.696621, 34.875767, 36.347763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.310799, 34.980923, 36.338539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153784, 0.488931, -0.858660,
		-0.214456, -0.831767, -0.512027,
		-0.964551, 0.262886, -0.023058,
		45.021435, 35.059788, 36.331623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033157, 35.356594, 35.900475>,  <45.696621, 34.875767, 36.347763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033157, 35.356594, 35.900475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.138161, 35.259277, 35.526974>,  <46.201160, 35.200890, 35.302872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.138161, 35.259277, 35.526974>,  <46.033157, 35.356594, 35.900475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.138161, 35.259277, 35.526974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441505, 0.890740, -0.107961,
		0.858000, -0.383917, 0.341238,
		0.262506, -0.243289, -0.933756,
		46.216911, 35.186291, 35.246845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.761650, 35.464153, 35.809849>,  <46.033157, 35.356594, 35.900475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.761650, 35.464153, 35.809849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.544048, 35.509235, 35.477257>,  <46.413486, 35.536285, 35.277702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.544048, 35.509235, 35.477257>,  <46.761650, 35.464153, 35.809849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.544048, 35.509235, 35.477257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454874, 0.872306, -0.179364,
		0.705088, -0.475793, -0.525806,
		-0.544004, 0.112708, -0.831479,
		46.380848, 35.543049, 35.227814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.207241, 35.483173, 35.135403>,  <46.761650, 35.464153, 35.809849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.207241, 35.483173, 35.135403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.856758, 35.672131, 35.173557>,  <46.646469, 35.785503, 35.196449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.856758, 35.672131, 35.173557>,  <47.207241, 35.483173, 35.135403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.856758, 35.672131, 35.173557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414404, 0.839580, -0.351247,
		-0.246015, -0.268236, -0.931411,
		-0.876211, 0.472393, 0.095391,
		46.593895, 35.813847, 35.202175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.368938, 35.130978, 34.467354>,  <47.207241, 35.483173, 35.135403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.368938, 35.130978, 34.467354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.682747, 35.029320, 34.693607>,  <47.871033, 34.968327, 34.829361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.682747, 35.029320, 34.693607>,  <47.368938, 35.130978, 34.467354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.682747, 35.029320, 34.693607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497288, 0.287080, 0.818712,
		-0.370451, -0.923579, 0.098838,
		0.784519, -0.254142, 0.565634,
		47.918102, 34.953075, 34.863297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.754595, 35.693333, 55.084606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.022425, 35.748436, 55.376549>,  <31.183123, 35.781498, 55.551716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.022425, 35.748436, 55.376549>,  <30.754595, 35.693333, 55.084606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022425, 35.748436, 55.376549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650840, -0.582293, -0.487177,
		0.357876, 0.801222, -0.479550,
		0.669576, 0.137762, 0.729856,
		31.223297, 35.789764, 55.595505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451397, 35.898438, 54.743027>,  <30.754595, 35.693333, 55.084606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451397, 35.898438, 54.743027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.531540, 35.739635, 55.101299>,  <31.579626, 35.644352, 55.316261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.531540, 35.739635, 55.101299>,  <31.451397, 35.898438, 54.743027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531540, 35.739635, 55.101299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619212, -0.657153, -0.429798,
		0.759232, 0.640729, 0.114167,
		0.200358, -0.397010, 0.895678,
		31.591648, 35.620533, 55.370003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166462, 35.798824, 54.647263>,  <31.451397, 35.898438, 54.743027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166462, 35.798824, 54.647263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.072212, 35.584034, 54.971272>,  <32.015663, 35.455162, 55.165676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.072212, 35.584034, 54.971272>,  <32.166462, 35.798824, 54.647263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072212, 35.584034, 54.971272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459592, -0.795970, -0.393964,
		0.856303, 0.279452, 0.434340,
		-0.235627, -0.536972, 0.810025,
		32.001526, 35.422943, 55.214279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818249, 35.503830, 54.928127>,  <32.166462, 35.798824, 54.647263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818249, 35.503830, 54.928127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.512993, 35.284824, 55.065445>,  <32.329838, 35.153423, 55.147835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.512993, 35.284824, 55.065445>,  <32.818249, 35.503830, 54.928127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512993, 35.284824, 55.065445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417330, -0.823135, -0.385078,
		0.493408, -0.150603, 0.856660,
		-0.763141, -0.547511, 0.343290,
		32.284050, 35.120571, 55.168430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114147, 34.991920, 55.328583>,  <32.818249, 35.503830, 54.928127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114147, 34.991920, 55.328583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.750011, 34.849220, 55.244671>,  <32.531528, 34.763599, 55.194324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.750011, 34.849220, 55.244671>,  <33.114147, 34.991920, 55.328583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750011, 34.849220, 55.244671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408996, -0.852952, -0.324337,
		-0.063226, -0.381057, 0.922387,
		-0.910343, -0.356746, -0.209779,
		32.476910, 34.742195, 55.181736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101799, 34.347191, 55.549046>,  <33.114147, 34.991920, 55.328583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101799, 34.347191, 55.549046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.833160, 34.378006, 55.254284>,  <32.671978, 34.396496, 55.077427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.833160, 34.378006, 55.254284>,  <33.101799, 34.347191, 55.549046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833160, 34.378006, 55.254284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509017, -0.674736, -0.534447,
		-0.538385, -0.734028, 0.413937,
		-0.671598, 0.077037, -0.736901,
		32.631680, 34.401115, 55.033215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789848, 33.723671, 55.389614>,  <33.101799, 34.347191, 55.549046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789848, 33.723671, 55.389614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.730247, 33.922775, 55.047848>,  <32.694489, 34.042236, 54.842789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.730247, 33.922775, 55.047848>,  <32.789848, 33.723671, 55.389614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730247, 33.922775, 55.047848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311001, -0.796628, -0.518327,
		-0.938657, -0.342957, -0.036105,
		-0.149002, 0.497760, -0.854420,
		32.685547, 34.072102, 54.791523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707096, 33.250881, 54.946831>,  <32.789848, 33.723671, 55.389614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707096, 33.250881, 54.946831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.795818, 33.562176, 54.711830>,  <32.849052, 33.748951, 54.570831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.795818, 33.562176, 54.711830>,  <32.707096, 33.250881, 54.946831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795818, 33.562176, 54.711830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495697, -0.608838, -0.619356,
		-0.839695, -0.153845, -0.520811,
		0.221805, 0.778234, -0.587498,
		32.862358, 33.795647, 54.535580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548164, 33.010799, 54.376110>,  <32.707096, 33.250881, 54.946831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548164, 33.010799, 54.376110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.754932, 33.337448, 54.273407>,  <32.878994, 33.533436, 54.211784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.754932, 33.337448, 54.273407>,  <32.548164, 33.010799, 54.376110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754932, 33.337448, 54.273407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295211, -0.451592, -0.841971,
		-0.803520, 0.359435, -0.474513,
		0.516920, 0.816622, -0.256754,
		32.910007, 33.582436, 54.196381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509140, 33.025314, 53.607330>,  <32.548164, 33.010799, 54.376110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509140, 33.025314, 53.607330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.816452, 33.259899, 53.709942>,  <33.000839, 33.400650, 53.771511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.816452, 33.259899, 53.709942>,  <32.509140, 33.025314, 53.607330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816452, 33.259899, 53.709942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590349, -0.494241, -0.638133,
		-0.247452, 0.641708, -0.725932,
		0.768281, 0.586461, 0.256531,
		33.046936, 33.435837, 53.786900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789635, 33.303543, 52.993122>,  <32.509140, 33.025314, 53.607330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789635, 33.303543, 52.993122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.066967, 33.292133, 53.281147>,  <33.233364, 33.285286, 53.453960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.066967, 33.292133, 53.281147>,  <32.789635, 33.303543, 52.993122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066967, 33.292133, 53.281147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553503, -0.618761, -0.557467,
		0.461446, 0.785061, -0.413215,
		0.693327, -0.028525, 0.720058,
		33.274963, 33.283577, 53.497166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390026, 33.287910, 52.533756>,  <32.789635, 33.303543, 52.993122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390026, 33.287910, 52.533756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.508072, 33.167850, 52.896595>,  <33.578899, 33.095814, 53.114296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.508072, 33.167850, 52.896595>,  <33.390026, 33.287910, 52.533756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508072, 33.167850, 52.896595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423276, -0.810065, -0.405748,
		0.856590, 0.503692, -0.112015,
		0.295112, -0.300147, 0.907095,
		33.596607, 33.077805, 53.168724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079811, 33.237961, 52.527649>,  <33.390026, 33.287910, 52.533756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079811, 33.237961, 52.527649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.957825, 32.963943, 52.792290>,  <33.884632, 32.799534, 52.951073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.957825, 32.963943, 52.792290>,  <34.079811, 33.237961, 52.527649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957825, 32.963943, 52.792290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535615, -0.697789, -0.475613,
		0.787470, 0.209315, 0.579722,
		-0.304970, -0.685039, 0.661600,
		33.866333, 32.758430, 52.990768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721867, 32.796631, 52.542358>,  <34.079811, 33.237961, 52.527649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721867, 32.796631, 52.542358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.428329, 32.585888, 52.713890>,  <34.252209, 32.459442, 52.816811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.428329, 32.585888, 52.713890>,  <34.721867, 32.796631, 52.542358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428329, 32.585888, 52.713890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418183, -0.847839, -0.326024,
		0.535350, -0.059918, 0.842502,
		-0.733841, -0.526857, 0.428834,
		34.208176, 32.427830, 52.842541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982891, 32.274715, 52.926743>,  <34.721867, 32.796631, 52.542358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982891, 32.274715, 52.926743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.614197, 32.138950, 52.851688>,  <34.392979, 32.057491, 52.806656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.614197, 32.138950, 52.851688>,  <34.982891, 32.274715, 52.926743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614197, 32.138950, 52.851688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387254, -0.779386, -0.492537,
		0.020934, -0.526650, 0.849825,
		-0.921736, -0.339409, -0.187632,
		34.337677, 32.037128, 52.795399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011936, 31.621288, 53.172276>,  <34.982891, 32.274715, 52.926743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011936, 31.621288, 53.172276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.708530, 31.642059, 52.912441>,  <34.526485, 31.654522, 52.756542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.708530, 31.642059, 52.912441>,  <35.011936, 31.621288, 53.172276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708530, 31.642059, 52.912441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431648, -0.706744, -0.560530,
		-0.488195, -0.705561, 0.513662,
		-0.758516, 0.051927, -0.649583,
		34.480976, 31.657639, 52.717567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988113, 30.979877, 52.939274>,  <35.011936, 31.621288, 53.172276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988113, 30.979877, 52.939274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.756374, 31.173437, 52.676914>,  <34.617332, 31.289574, 52.519497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.756374, 31.173437, 52.676914>,  <34.988113, 30.979877, 52.939274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756374, 31.173437, 52.676914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219849, -0.682106, -0.697422,
		-0.784874, -0.548246, 0.288790,
		-0.579344, 0.483898, -0.655898,
		34.582573, 31.318607, 52.480145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732800, 30.408997, 52.540413>,  <34.988113, 30.979877, 52.939274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732800, 30.408997, 52.540413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.672058, 30.737358, 52.320210>,  <34.635612, 30.934374, 52.188087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.672058, 30.737358, 52.320210>,  <34.732800, 30.408997, 52.540413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672058, 30.737358, 52.320210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309055, -0.489604, -0.815336,
		-0.938842, -0.293952, -0.179354,
		-0.151858, 0.820902, -0.550508,
		34.626499, 30.983629, 52.155056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286068, 30.159214, 52.001446>,  <34.732800, 30.408997, 52.540413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286068, 30.159214, 52.001446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.450577, 30.504669, 51.884834>,  <34.549282, 30.711943, 51.814869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.450577, 30.504669, 51.884834>,  <34.286068, 30.159214, 52.001446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450577, 30.504669, 51.884834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326491, -0.438183, -0.837496,
		-0.851035, 0.249255, -0.462181,
		0.411270, 0.863636, -0.291530,
		34.573959, 30.763760, 51.797375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137447, 30.142139, 51.427059>,  <34.286068, 30.159214, 52.001446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137447, 30.142139, 51.427059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.434074, 30.410435, 51.432632>,  <34.612049, 30.571411, 51.435978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.434074, 30.410435, 51.432632>,  <34.137447, 30.142139, 51.427059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434074, 30.410435, 51.432632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424083, -0.452571, -0.784432,
		-0.519841, 0.587616, -0.620059,
		0.741565, 0.670736, 0.013932,
		34.656544, 30.611656, 51.436813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108997, 30.442387, 50.757629>,  <34.137447, 30.142139, 51.427059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108997, 30.442387, 50.757629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.471519, 30.486771, 50.920746>,  <34.689034, 30.513401, 51.018616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.471519, 30.486771, 50.920746>,  <34.108997, 30.442387, 50.757629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471519, 30.486771, 50.920746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421143, -0.317643, -0.849554,
		0.035265, 0.941696, -0.334613,
		0.906308, 0.110961, 0.407790,
		34.743412, 30.520060, 51.043083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496269, 30.498089, 50.202663>,  <34.108997, 30.442387, 50.757629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496269, 30.498089, 50.202663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.741405, 30.387047, 50.498600>,  <34.888485, 30.320421, 50.676163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.741405, 30.387047, 50.498600>,  <34.496269, 30.498089, 50.202663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741405, 30.387047, 50.498600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521694, -0.561082, -0.642668,
		0.593520, 0.779822, -0.199027,
		0.612837, -0.277605, 0.739842,
		34.925255, 30.303766, 50.720554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918140, 30.405769, 49.687233>,  <34.496269, 30.498089, 50.202663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918140, 30.405769, 49.687233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.693192, 30.164242, 49.461266>,  <33.558220, 30.019325, 49.325684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.693192, 30.164242, 49.461266>,  <33.918140, 30.405769, 49.687233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693192, 30.164242, 49.461266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803110, 0.561500, 0.199326,
		0.196846, 0.565790, -0.800708,
		-0.562374, -0.603820, -0.564921,
		33.524479, 29.983095, 49.291790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495087, 30.892870, 49.208309>,  <33.918140, 30.405769, 49.687233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495087, 30.892870, 49.208309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.327953, 30.529575, 49.217426>,  <33.227673, 30.311598, 49.222897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.327953, 30.529575, 49.217426>,  <33.495087, 30.892870, 49.208309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327953, 30.529575, 49.217426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871287, 0.407689, 0.273218,
		-0.257440, 0.094300, -0.961682,
		-0.417831, -0.908239, 0.022793,
		33.202602, 30.257103, 49.224262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880352, 30.958120, 48.783970>,  <33.495087, 30.892870, 49.208309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880352, 30.958120, 48.783970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.839527, 30.656631, 49.043659>,  <32.815033, 30.475739, 49.199471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.839527, 30.656631, 49.043659>,  <32.880352, 30.958120, 48.783970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839527, 30.656631, 49.043659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820676, 0.432634, 0.373255,
		-0.562205, -0.494702, -0.662718,
		-0.102065, -0.753723, 0.649219,
		32.808907, 30.430515, 49.238426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228558, 30.995525, 48.875835>,  <32.880352, 30.958120, 48.783970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228558, 30.995525, 48.875835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.345661, 30.764542, 49.180683>,  <32.415924, 30.625952, 49.363594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.345661, 30.764542, 49.180683>,  <32.228558, 30.995525, 48.875835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345661, 30.764542, 49.180683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798696, 0.290536, 0.526948,
		-0.525715, -0.762974, -0.376157,
		0.292760, -0.577459, 0.762123,
		32.433491, 30.591305, 49.409321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608698, 30.385216, 48.967503>,  <32.228558, 30.995525, 48.875835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608698, 30.385216, 48.967503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.830112, 30.479221, 49.287094>,  <31.962961, 30.535624, 49.478848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.830112, 30.479221, 49.287094>,  <31.608698, 30.385216, 48.967503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830112, 30.479221, 49.287094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817822, -0.027881, 0.574795,
		0.157361, -0.971592, 0.176766,
		0.553538, 0.235014, 0.798977,
		31.996174, 30.549725, 49.526787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173630, 30.099434, 49.427456>,  <31.608698, 30.385216, 48.967503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173630, 30.099434, 49.427456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.421608, 30.318405, 49.652309>,  <31.570395, 30.449787, 49.787220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.421608, 30.318405, 49.652309>,  <31.173630, 30.099434, 49.427456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421608, 30.318405, 49.652309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737074, 0.160635, 0.656444,
		0.269058, -0.821291, 0.503080,
		0.619944, 0.547428, 0.562131,
		31.607592, 30.482634, 49.820950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852524, 29.943254, 50.059757>,  <31.173630, 30.099434, 49.427456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852524, 29.943254, 50.059757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.071352, 30.276827, 50.088806>,  <31.202648, 30.476971, 50.106236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.071352, 30.276827, 50.088806>,  <30.852524, 29.943254, 50.059757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071352, 30.276827, 50.088806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608617, 0.336690, 0.718488,
		0.574719, -0.437261, 0.691737,
		0.547068, 0.833932, 0.072622,
		31.235474, 30.527006, 50.110592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936424, 30.089691, 50.769772>,  <30.852524, 29.943254, 50.059757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936424, 30.089691, 50.769772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.020237, 30.454960, 50.629932>,  <31.070524, 30.674120, 50.546028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.020237, 30.454960, 50.629932>,  <30.936424, 30.089691, 50.769772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020237, 30.454960, 50.629932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514001, 0.407011, 0.755079,
		0.831805, 0.021481, 0.554652,
		0.209530, 0.913171, -0.349596,
		31.083096, 30.728910, 50.525055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243059, 30.472874, 51.319580>,  <30.936424, 30.089691, 50.769772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243059, 30.472874, 51.319580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.096666, 30.734425, 51.054703>,  <31.008831, 30.891356, 50.895775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.096666, 30.734425, 51.054703>,  <31.243059, 30.472874, 51.319580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096666, 30.734425, 51.054703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296787, 0.592396, 0.748989,
		0.882028, 0.470648, -0.022745,
		-0.365984, 0.653879, -0.662192,
		30.986872, 30.930588, 50.856045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451660, 31.072657, 51.516705>,  <31.243059, 30.472874, 51.319580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451660, 31.072657, 51.516705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.176413, 31.205206, 51.258499>,  <31.011265, 31.284735, 51.103577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.176413, 31.205206, 51.258499>,  <31.451660, 31.072657, 51.516705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176413, 31.205206, 51.258499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287063, 0.692717, 0.661618,
		0.666399, 0.640574, -0.381546,
		-0.688119, 0.331374, -0.645510,
		30.969976, 31.304619, 51.064846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413897, 31.745632, 51.637009>,  <31.451660, 31.072657, 51.516705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413897, 31.745632, 51.637009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.068192, 31.705454, 51.439846>,  <30.860767, 31.681347, 51.321548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.068192, 31.705454, 51.439846>,  <31.413897, 31.745632, 51.637009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068192, 31.705454, 51.439846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444148, 0.612420, 0.653969,
		0.236179, 0.784126, -0.573904,
		-0.864264, -0.100444, -0.492908,
		30.808912, 31.675320, 51.291973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220713, 32.414642, 51.520988>,  <31.413897, 31.745632, 51.637009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220713, 32.414642, 51.520988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.894833, 32.183159, 51.506218>,  <30.699305, 32.044270, 51.497356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.894833, 32.183159, 51.506218>,  <31.220713, 32.414642, 51.520988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894833, 32.183159, 51.506218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462032, 0.609330, 0.644394,
		-0.350419, 0.542046, -0.763802,
		-0.814698, -0.578708, -0.036922,
		30.650423, 32.009548, 51.495140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715588, 32.879200, 51.342659>,  <31.220713, 32.414642, 51.520988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715588, 32.879200, 51.342659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.547575, 32.558571, 51.512859>,  <30.446768, 32.366192, 51.614979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.547575, 32.558571, 51.512859>,  <30.715588, 32.879200, 51.342659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547575, 32.558571, 51.512859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644350, 0.593584, 0.482151,
		-0.639052, -0.071655, -0.765818,
		-0.420029, -0.801575, 0.425502,
		30.421566, 32.318100, 51.640511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009205, 32.972889, 51.303833>,  <30.715588, 32.879200, 51.342659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009205, 32.972889, 51.303833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.018009, 32.708023, 51.603447>,  <30.023293, 32.549103, 51.783215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.018009, 32.708023, 51.603447>,  <30.009205, 32.972889, 51.303833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018009, 32.708023, 51.603447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617377, 0.580296, 0.531133,
		-0.786359, -0.474131, -0.396028,
		0.022013, -0.662160, 0.749039,
		30.024612, 32.509377, 51.828159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261744, 32.867085, 51.540016>,  <30.009205, 32.972889, 51.303833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261744, 32.867085, 51.540016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.516541, 32.783108, 51.836708>,  <29.669418, 32.732723, 52.014725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.516541, 32.783108, 51.836708>,  <29.261744, 32.867085, 51.540016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516541, 32.783108, 51.836708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407703, 0.724861, 0.555298,
		-0.654233, -0.656126, 0.376136,
		0.636991, -0.209942, 0.741732,
		29.707638, 32.720123, 52.059227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900146, 32.685146, 52.118782>,  <29.261744, 32.867085, 51.540016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900146, 32.685146, 52.118782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.264301, 32.772831, 52.259148>,  <29.482794, 32.825443, 52.343369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.264301, 32.772831, 52.259148>,  <28.900146, 32.685146, 52.118782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264301, 32.772831, 52.259148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400482, 0.679960, 0.614222,
		-0.103961, -0.699714, 0.706818,
		0.910388, 0.219213, 0.350913,
		29.537418, 32.838596, 52.364422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895828, 32.753521, 52.837158>,  <28.900146, 32.685146, 52.118782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895828, 32.753521, 52.837158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.236832, 32.955368, 52.782623>,  <29.441433, 33.076477, 52.749905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.236832, 32.955368, 52.782623>,  <28.895828, 32.753521, 52.837158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236832, 32.955368, 52.782623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355050, 0.750440, 0.557477,
		0.383624, -0.426849, 0.818922,
		0.852509, 0.504620, -0.136334,
		29.492584, 33.106754, 52.741722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137850, 33.120789, 53.529568>,  <28.895828, 32.753521, 52.837158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137850, 33.120789, 53.529568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.330477, 33.313026, 53.236412>,  <29.446053, 33.428368, 53.060520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.330477, 33.313026, 53.236412>,  <29.137850, 33.120789, 53.529568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330477, 33.313026, 53.236412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109259, 0.862638, 0.493881,
		0.869572, -0.157762, 0.467927,
		0.481567, 0.480591, -0.732889,
		29.474947, 33.457203, 53.016544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.923241, 33.327690, 53.919968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821877, 33.557240, 53.608467>,  <29.761059, 33.694969, 53.421566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821877, 33.557240, 53.608467>,  <29.923241, 33.327690, 53.919968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821877, 33.557240, 53.608467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080961, 0.814785, 0.574083,
		0.963965, 0.082430, -0.252935,
		-0.253409, 0.573874, -0.778751,
		29.745853, 33.729401, 53.374844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336594, 33.946339, 53.938240>,  <29.923241, 33.327690, 53.919968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336594, 33.946339, 53.938240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048120, 34.059292, 53.685207>,  <29.875036, 34.127064, 53.533390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048120, 34.059292, 53.685207>,  <30.336594, 33.946339, 53.938240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048120, 34.059292, 53.685207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047083, 0.891057, 0.451442,
		0.691141, 0.355356, -0.629322,
		-0.721185, 0.282380, -0.632578,
		29.831764, 34.144005, 53.495434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509665, 34.576462, 53.863255>,  <30.336594, 33.946339, 53.938240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509665, 34.576462, 53.863255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139826, 34.542706, 53.714661>,  <29.917923, 34.522453, 53.625504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139826, 34.542706, 53.714661>,  <30.509665, 34.576462, 53.863255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139826, 34.542706, 53.714661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215710, 0.919740, 0.327944,
		0.313994, 0.383349, -0.868592,
		-0.924595, -0.084392, -0.371485,
		29.862448, 34.517387, 53.603214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322113, 35.173611, 53.649281>,  <30.509665, 34.576462, 53.863255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322113, 35.173611, 53.649281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961578, 35.011349, 53.709984>,  <29.745256, 34.913990, 53.746407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961578, 35.011349, 53.709984>,  <30.322113, 35.173611, 53.649281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961578, 35.011349, 53.709984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297783, 0.834856, 0.462970,
		-0.314505, 0.372101, -0.873285,
		-0.901339, -0.405656, 0.151761,
		29.691177, 34.889652, 53.755512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928095, 35.639343, 53.426285>,  <30.322113, 35.173611, 53.649281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928095, 35.639343, 53.426285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715788, 35.429443, 53.692493>,  <29.588404, 35.303505, 53.852219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715788, 35.429443, 53.692493>,  <29.928095, 35.639343, 53.426285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715788, 35.429443, 53.692493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476589, 0.834143, 0.277611,
		-0.700820, -0.169835, -0.692825,
		-0.530767, -0.524748, 0.665526,
		29.556559, 35.272018, 53.892151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298651, 35.923851, 53.356209>,  <29.928095, 35.639343, 53.426285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298651, 35.923851, 53.356209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281225, 35.744621, 53.713383>,  <29.270769, 35.637085, 53.927689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281225, 35.744621, 53.713383>,  <29.298651, 35.923851, 53.356209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281225, 35.744621, 53.713383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524055, 0.771196, 0.361419,
		-0.850570, -0.452202, -0.268412,
		-0.043564, -0.448075, 0.892934,
		29.268156, 35.610199, 53.981262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638853, 35.965969, 53.515270>,  <29.298651, 35.923851, 53.356209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638853, 35.965969, 53.515270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811392, 35.904884, 53.870937>,  <28.914915, 35.868233, 54.084335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811392, 35.904884, 53.870937>,  <28.638853, 35.965969, 53.515270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811392, 35.904884, 53.870937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576954, 0.710996, 0.402006,
		-0.693586, -0.686413, 0.218577,
		0.431349, -0.152716, 0.889166,
		28.940796, 35.859070, 54.137688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077787, 36.000481, 53.993637>,  <28.638853, 35.965969, 53.515270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077787, 36.000481, 53.993637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391712, 36.043655, 54.237743>,  <28.580067, 36.069561, 54.384205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391712, 36.043655, 54.237743>,  <28.077787, 36.000481, 53.993637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391712, 36.043655, 54.237743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395721, 0.845115, 0.359424,
		-0.476946, -0.523573, 0.705970,
		0.784810, 0.107941, 0.610264,
		28.627155, 36.076038, 54.420822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817612, 35.932442, 54.720776>,  <28.077787, 36.000481, 53.993637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817612, 35.932442, 54.720776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153048, 36.150349, 54.719948>,  <28.354309, 36.281094, 54.719452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153048, 36.150349, 54.719948>,  <27.817612, 35.932442, 54.720776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153048, 36.150349, 54.719948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509396, 0.785483, 0.351470,
		0.193097, -0.293682, 0.936197,
		0.838587, 0.544763, -0.002073,
		28.404623, 36.313778, 54.719326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907452, 36.099552, 55.369247>,  <27.817612, 35.932442, 54.720776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907452, 36.099552, 55.369247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091061, 36.374031, 55.143524>,  <28.201225, 36.538719, 55.008091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091061, 36.374031, 55.143524>,  <27.907452, 36.099552, 55.369247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091061, 36.374031, 55.143524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482706, 0.725870, 0.490009,
		0.745852, 0.047468, 0.664419,
		0.459022, 0.686192, -0.564304,
		28.228767, 36.579887, 54.974232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941807, 36.642818, 55.812737>,  <27.907452, 36.099552, 55.369247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941807, 36.642818, 55.812737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070032, 36.810005, 55.472725>,  <28.146967, 36.910316, 55.268719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070032, 36.810005, 55.472725>,  <27.941807, 36.642818, 55.812737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070032, 36.810005, 55.472725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452822, 0.855820, 0.250048,
		0.831980, 0.304754, 0.463609,
		0.320562, 0.417968, -0.850025,
		28.166201, 36.935394, 55.217716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214090, 37.276165, 56.014591>,  <27.941807, 36.642818, 55.812737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214090, 37.276165, 56.014591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168255, 37.314449, 55.619076>,  <28.140755, 37.337421, 55.381767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168255, 37.314449, 55.619076>,  <28.214090, 37.276165, 56.014591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168255, 37.314449, 55.619076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200658, 0.972602, 0.117397,
		0.972937, 0.211861, -0.092243,
		-0.114588, 0.095711, -0.988792,
		28.133879, 37.343163, 55.322437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625763, 37.906773, 55.779034>,  <28.214090, 37.276165, 56.014591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625763, 37.906773, 55.779034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345985, 37.856617, 55.497593>,  <28.178120, 37.826523, 55.328728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345985, 37.856617, 55.497593>,  <28.625763, 37.906773, 55.779034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345985, 37.856617, 55.497593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161899, 0.986695, -0.014895,
		0.696109, 0.103494, -0.710438,
		-0.699444, -0.125388, -0.703603,
		28.136152, 37.819000, 55.286510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713177, 38.437740, 55.290249>,  <28.625763, 37.906773, 55.779034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713177, 38.437740, 55.290249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334265, 38.313820, 55.257542>,  <28.106918, 38.239468, 55.237919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334265, 38.313820, 55.257542>,  <28.713177, 38.437740, 55.290249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334265, 38.313820, 55.257542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299644, 0.946927, -0.116373,
		0.113482, -0.085736, -0.989834,
		-0.947278, -0.309804, -0.081769,
		28.050081, 38.220879, 55.233009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468260, 39.020355, 54.734997>,  <28.713177, 38.437740, 55.290249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468260, 39.020355, 54.734997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157013, 38.813915, 54.878201>,  <27.970264, 38.690052, 54.964123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157013, 38.813915, 54.878201>,  <28.468260, 39.020355, 54.734997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157013, 38.813915, 54.878201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600016, 0.779328, -0.180636,
		-0.185782, -0.355369, -0.916078,
		-0.778118, -0.516102, 0.358012,
		27.923578, 38.659084, 54.985603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911268, 39.057747, 54.216026>,  <28.468260, 39.020355, 54.734997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911268, 39.057747, 54.216026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731506, 38.990936, 54.567055>,  <27.623650, 38.950848, 54.777672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731506, 38.990936, 54.567055>,  <27.911268, 39.057747, 54.216026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731506, 38.990936, 54.567055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539666, 0.833611, -0.117701,
		-0.711895, -0.526492, -0.464770,
		-0.449407, -0.167030, 0.877573,
		27.596684, 38.940826, 54.830326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248505, 39.094940, 54.035557>,  <27.911268, 39.057747, 54.216026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248505, 39.094940, 54.035557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269714, 39.174580, 54.426975>,  <27.282440, 39.222363, 54.661827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269714, 39.174580, 54.426975>,  <27.248505, 39.094940, 54.035557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269714, 39.174580, 54.426975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633126, 0.764495, -0.121239,
		-0.772231, -0.613113, 0.166589,
		0.053023, 0.199096, 0.978545,
		27.285622, 39.234310, 54.720539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504387, 39.305206, 54.240715>,  <27.248505, 39.094940, 54.035557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504387, 39.305206, 54.240715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756161, 39.431335, 54.524796>,  <26.907225, 39.507011, 54.695244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756161, 39.431335, 54.524796>,  <26.504387, 39.305206, 54.240715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756161, 39.431335, 54.524796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452274, 0.891866, 0.004862,
		-0.631869, -0.324265, 0.703984,
		0.629436, 0.315321, 0.710199,
		26.944992, 39.525932, 54.737854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075758, 39.494038, 54.821377>,  <26.504387, 39.305206, 54.240715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075758, 39.494038, 54.821377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411478, 39.705727, 54.871181>,  <26.612909, 39.832741, 54.901066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411478, 39.705727, 54.871181>,  <26.075758, 39.494038, 54.821377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411478, 39.705727, 54.871181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529600, 0.847614, -0.032769,
		-0.122883, -0.038440, 0.991676,
		0.839299, 0.529219, 0.124515,
		26.663267, 39.864491, 54.908535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863792, 40.055904, 55.289410>,  <26.075758, 39.494038, 54.821377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863792, 40.055904, 55.289410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209204, 40.166645, 55.120804>,  <26.416451, 40.233089, 55.019642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209204, 40.166645, 55.120804>,  <25.863792, 40.055904, 55.289410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.209204, 40.166645, 55.120804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345642, 0.933551, -0.094939,
		0.367219, 0.227675, 0.901839,
		0.863529, 0.276850, -0.421512,
		26.468262, 40.249699, 54.994350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125326, 40.484951, 55.842327>,  <25.863792, 40.055904, 55.289410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125326, 40.484951, 55.842327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285984, 40.559048, 55.483582>,  <26.382380, 40.603508, 55.268333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285984, 40.559048, 55.483582>,  <26.125326, 40.484951, 55.842327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285984, 40.559048, 55.483582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599456, 0.793550, -0.104551,
		0.692339, 0.579623, 0.429772,
		0.401646, 0.185245, -0.896864,
		26.406477, 40.614620, 55.214523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120234, 41.198944, 55.824436>,  <26.125326, 40.484951, 55.842327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120234, 41.198944, 55.824436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137693, 41.090858, 55.439713>,  <26.148170, 41.026009, 55.208878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137693, 41.090858, 55.439713>,  <26.120234, 41.198944, 55.824436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137693, 41.090858, 55.439713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465883, 0.846135, -0.258860,
		0.883769, 0.459391, -0.088953,
		0.043652, -0.270214, -0.961810,
		26.150789, 41.009792, 55.151169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773035, 40.925137, 55.931198>,  <26.120234, 41.198944, 55.824436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773035, 40.925137, 55.931198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.632547, 41.147346, 56.232674>,  <26.548254, 41.280670, 56.413559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.632547, 41.147346, 56.232674>,  <26.773035, 40.925137, 55.931198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632547, 41.147346, 56.232674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695660, -0.693593, 0.187048,
		0.626660, -0.458613, 0.630057,
		-0.351220, 0.555521, 0.753685,
		26.527182, 41.314003, 56.458778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634434, 40.626595, 56.603664>,  <26.773035, 40.925137, 55.931198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634434, 40.626595, 56.603664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364416, 40.899143, 56.490498>,  <26.202406, 41.062672, 56.422596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364416, 40.899143, 56.490498>,  <26.634434, 40.626595, 56.603664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364416, 40.899143, 56.490498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700525, -0.712272, -0.043972,
		-0.231476, 0.168509, 0.958135,
		-0.675043, 0.681376, -0.282919,
		26.161903, 41.103558, 56.405621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432964, 40.785686, 57.348675>,  <26.634434, 40.626595, 56.603664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432964, 40.785686, 57.348675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589733, 41.026726, 57.626747>,  <26.683794, 41.171349, 57.793591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589733, 41.026726, 57.626747>,  <26.432964, 40.785686, 57.348675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589733, 41.026726, 57.626747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915697, -0.182523, -0.358029,
		-0.088861, 0.776892, -0.623332,
		0.391922, 0.602598, 0.695178,
		26.707310, 41.207504, 57.835300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023537, 41.081047, 57.052765>,  <26.432964, 40.785686, 57.348675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023537, 41.081047, 57.052765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054394, 41.145962, 57.446255>,  <27.072908, 41.184910, 57.682346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054394, 41.145962, 57.446255>,  <27.023537, 41.081047, 57.052765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054394, 41.145962, 57.446255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963812, -0.264666, -0.031920,
		0.255178, 0.950586, -0.176835,
		0.077145, 0.162291, 0.983723,
		27.077538, 41.194649, 57.741371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635767, 41.484974, 57.155594>,  <27.023537, 41.081047, 57.052765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635767, 41.484974, 57.155594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577911, 41.305260, 57.508236>,  <27.543198, 41.197430, 57.719822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577911, 41.305260, 57.508236>,  <27.635767, 41.484974, 57.155594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577911, 41.305260, 57.508236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861490, -0.495458, -0.111161,
		0.486740, 0.743413, 0.458718,
		-0.144637, -0.449287, 0.881601,
		27.534519, 41.170475, 57.772717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288412, 41.520931, 57.470448>,  <27.635767, 41.484974, 57.155594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288412, 41.520931, 57.470448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097326, 41.223118, 57.656979>,  <27.982674, 41.044430, 57.768898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097326, 41.223118, 57.656979>,  <28.288412, 41.520931, 57.470448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097326, 41.223118, 57.656979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830058, -0.556382, -0.037981,
		0.287732, 0.368932, 0.883798,
		-0.477717, -0.744532, 0.466324,
		27.954012, 40.999760, 57.796875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856493, 41.247841, 57.816509>,  <28.288412, 41.520931, 57.470448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856493, 41.247841, 57.816509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579645, 40.961037, 57.849640>,  <28.413536, 40.788952, 57.869518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579645, 40.961037, 57.849640>,  <28.856493, 41.247841, 57.816509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579645, 40.961037, 57.849640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718706, -0.695201, -0.012518,
		0.066555, 0.050862, 0.996486,
		-0.692121, -0.717014, 0.082824,
		28.372009, 40.745934, 57.874489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009493, 40.716209, 58.383099>,  <28.856493, 41.247841, 57.816509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009493, 40.716209, 58.383099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754509, 40.529697, 58.137749>,  <28.601519, 40.417789, 57.990540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754509, 40.529697, 58.137749>,  <29.009493, 40.716209, 58.383099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754509, 40.529697, 58.137749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603555, -0.797035, -0.021362,
		-0.478921, -0.383823, 0.789503,
		-0.637461, -0.466277, -0.613375,
		28.563271, 40.389812, 57.953735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144680, 40.029678, 58.510517>,  <29.009493, 40.716209, 58.383099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144680, 40.029678, 58.510517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929731, 40.028515, 58.173180>,  <28.800762, 40.027817, 57.970779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929731, 40.028515, 58.173180>,  <29.144680, 40.029678, 58.510517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929731, 40.028515, 58.173180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490855, -0.814241, -0.309955,
		-0.685781, -0.580519, 0.438978,
		-0.537369, -0.002913, -0.843342,
		28.768520, 40.027641, 57.920177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601892, 39.432934, 58.427013>,  <29.144680, 40.029678, 58.510517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601892, 39.432934, 58.427013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692696, 39.554199, 58.056812>,  <28.747177, 39.626957, 57.834690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692696, 39.554199, 58.056812>,  <28.601892, 39.432934, 58.427013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692696, 39.554199, 58.056812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308230, -0.923830, -0.227008,
		-0.923830, -0.233736, -0.303160,
		0.227008, 0.303160, -0.925506,
		28.760798, 39.645145, 57.779160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365046, 38.881893, 57.939659>,  <28.601892, 39.432934, 58.427013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365046, 38.881893, 57.939659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627411, 39.096291, 57.727062>,  <28.784830, 39.224930, 57.599503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627411, 39.096291, 57.727062>,  <28.365046, 38.881893, 57.939659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627411, 39.096291, 57.727062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392042, -0.843601, -0.366933,
		-0.645044, 0.032309, -0.763462,
		0.655913, 0.535997, -0.531494,
		28.824184, 39.257092, 57.567616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303703, 38.635597, 57.155491>,  <28.365046, 38.881893, 57.939659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303703, 38.635597, 57.155491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659002, 38.817608, 57.180676>,  <28.872183, 38.926815, 57.195786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659002, 38.817608, 57.180676>,  <28.303703, 38.635597, 57.155491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659002, 38.817608, 57.180676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414190, -0.734075, -0.538126,
		-0.198643, 0.504068, -0.840510,
		0.888250, 0.455026, 0.062962,
		28.925478, 38.954117, 57.199562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627529, 38.479019, 56.566872>,  <28.303703, 38.635597, 57.155491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627529, 38.479019, 56.566872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930511, 38.581417, 56.807114>,  <29.112301, 38.642857, 56.951260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930511, 38.581417, 56.807114>,  <28.627529, 38.479019, 56.566872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930511, 38.581417, 56.807114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589373, -0.663881, -0.460327,
		0.280889, 0.702658, -0.653738,
		0.757457, 0.255995, 0.600605,
		29.157749, 38.658215, 56.987293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087826, 38.767395, 56.147072>,  <28.627529, 38.479019, 56.566872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087826, 38.767395, 56.147072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248444, 38.619629, 56.482285>,  <29.344814, 38.530968, 56.683411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248444, 38.619629, 56.482285>,  <29.087826, 38.767395, 56.147072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248444, 38.619629, 56.482285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632252, -0.550188, -0.545482,
		0.662584, 0.748881, 0.012640,
		0.401547, -0.369419, 0.838027,
		29.368908, 38.508804, 56.733692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842060, 38.643230, 55.999222>,  <29.087826, 38.767395, 56.147072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842060, 38.643230, 55.999222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768229, 38.438290, 56.334705>,  <29.723930, 38.315327, 56.535995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768229, 38.438290, 56.334705>,  <29.842060, 38.643230, 55.999222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768229, 38.438290, 56.334705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555982, -0.758130, -0.340767,
		0.810441, 0.403408, 0.424792,
		-0.184580, -0.512348, 0.838707,
		29.712854, 38.284584, 56.586319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517591, 38.459251, 56.419830>,  <29.842060, 38.643230, 55.999222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517591, 38.459251, 56.419830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235764, 38.189873, 56.509327>,  <30.066668, 38.028248, 56.563023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235764, 38.189873, 56.509327>,  <30.517591, 38.459251, 56.419830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235764, 38.189873, 56.509327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552504, -0.718439, -0.422593,
		0.445335, -0.174129, 0.878269,
		-0.704568, -0.673443, 0.223739,
		30.024393, 37.987839, 56.576450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934824, 37.853359, 56.689713>,  <30.517591, 38.459251, 56.419830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934824, 37.853359, 56.689713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571947, 37.693737, 56.636410>,  <30.354221, 37.597965, 56.604427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571947, 37.693737, 56.636410>,  <30.934824, 37.853359, 56.689713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571947, 37.693737, 56.636410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420277, -0.874045, -0.243746,
		-0.019207, -0.277131, 0.960640,
		-0.907192, -0.399054, -0.133260,
		30.299789, 37.574020, 56.596432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890060, 37.367794, 57.162907>,  <30.934824, 37.853359, 56.689713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890060, 37.367794, 57.162907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620070, 37.259617, 56.888313>,  <30.458075, 37.194710, 56.723557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620070, 37.259617, 56.888313>,  <30.890060, 37.367794, 57.162907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620070, 37.259617, 56.888313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475259, -0.871044, -0.124140,
		-0.564387, -0.410051, 0.716467,
		-0.674978, -0.270445, -0.686486,
		30.417576, 37.178482, 56.682365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567076, 36.603477, 57.305286>,  <30.890060, 37.367794, 57.162907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567076, 36.603477, 57.305286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517788, 36.711895, 56.923428>,  <30.488214, 36.776947, 56.694313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517788, 36.711895, 56.923428>,  <30.567076, 36.603477, 57.305286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517788, 36.711895, 56.923428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395978, -0.868650, -0.297737,
		-0.909955, -0.414707, -0.000291,
		-0.123221, 0.271043, -0.954648,
		30.480822, 36.793209, 56.637032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451614, 35.997803, 56.962151>,  <30.567076, 36.603477, 57.305286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451614, 35.997803, 56.962151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523844, 36.228447, 56.643425>,  <30.567181, 36.366833, 56.452190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523844, 36.228447, 56.643425>,  <30.451614, 35.997803, 56.962151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523844, 36.228447, 56.643425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459035, -0.765898, -0.450208,
		-0.869873, -0.284471, -0.402984,
		0.180574, 0.576608, -0.796816,
		30.578016, 36.401428, 56.404381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253145, 35.631641, 56.382935>,  <30.451614, 35.997803, 56.962151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253145, 35.631641, 56.382935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520121, 35.905895, 56.266705>,  <30.680305, 36.070446, 56.196964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520121, 35.905895, 56.266705>,  <30.253145, 35.631641, 56.382935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520121, 35.905895, 56.266705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476487, -0.693090, -0.540913,
		-0.572262, 0.222570, -0.789290,
		0.667440, 0.685631, -0.290577,
		30.720352, 36.111584, 56.179531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348274, 35.491722, 55.777054>,  <30.253145, 35.631641, 56.382935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348274, 35.491722, 55.777054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673388, 35.709892, 55.858929>,  <30.868456, 35.840794, 55.908054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673388, 35.709892, 55.858929>,  <30.348274, 35.491722, 55.777054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673388, 35.709892, 55.858929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563706, -0.647652, -0.512622,
		-0.147031, 0.532034, -0.833860,
		0.812784, 0.545423, 0.204686,
		30.917223, 35.873520, 55.920334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.810398, 34.951180, 53.315582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.032776, 35.036423, 52.994209>,  <47.166203, 35.087566, 52.801384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.032776, 35.036423, 52.994209>,  <46.810398, 34.951180, 53.315582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.032776, 35.036423, 52.994209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726569, -0.344917, -0.594247,
		-0.403754, 0.914122, -0.036922,
		0.555949, 0.213104, -0.803435,
		47.199562, 35.100353, 52.753178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.427307, 35.299259, 52.882469>,  <46.810398, 34.951180, 53.315582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.427307, 35.299259, 52.882469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.717060, 35.200974, 52.624817>,  <46.890911, 35.142002, 52.470226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.717060, 35.200974, 52.624817>,  <46.427307, 35.299259, 52.882469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.717060, 35.200974, 52.624817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688116, -0.200639, -0.697309,
		0.042100, 0.948351, -0.314417,
		0.724379, -0.245712, -0.644128,
		46.934372, 35.127258, 52.431580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.309258, 35.709171, 52.204872>,  <46.427307, 35.299259, 52.882469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.309258, 35.709171, 52.204872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.507942, 35.366070, 52.151913>,  <46.627151, 35.160210, 52.120136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.507942, 35.366070, 52.151913>,  <46.309258, 35.709171, 52.204872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.507942, 35.366070, 52.151913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587448, -0.219971, -0.778792,
		0.638891, 0.464612, -0.613150,
		0.496711, -0.857758, -0.132398,
		46.656956, 35.108742, 52.112194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.080238, 35.601768, 51.568016>,  <46.309258, 35.709171, 52.204872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.080238, 35.601768, 51.568016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.270294, 35.266426, 51.674908>,  <46.384327, 35.065220, 51.739040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.270294, 35.266426, 51.674908>,  <46.080238, 35.601768, 51.568016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.270294, 35.266426, 51.674908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500400, -0.507251, -0.701638,
		0.723770, 0.199656, -0.660526,
		0.475139, -0.838352, 0.267225,
		46.412834, 35.014919, 51.755074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.406807, 35.310562, 50.948410>,  <46.080238, 35.601768, 51.568016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.406807, 35.310562, 50.948410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.333221, 35.030304, 51.224163>,  <46.289070, 34.862148, 51.389614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.333221, 35.030304, 51.224163>,  <46.406807, 35.310562, 50.948410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.333221, 35.030304, 51.224163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602340, -0.473879, -0.642360,
		0.776752, -0.533417, -0.334849,
		-0.183967, -0.700647, 0.689384,
		46.278030, 34.820110, 51.430977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.345116, 34.646770, 50.601795>,  <46.406807, 35.310562, 50.948410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.345116, 34.646770, 50.601795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.150822, 34.600582, 50.948372>,  <46.034245, 34.572868, 51.156319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.150822, 34.600582, 50.948372>,  <46.345116, 34.646770, 50.601795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.150822, 34.600582, 50.948372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740857, -0.471659, -0.478192,
		0.463884, -0.874187, 0.143554,
		-0.485738, -0.115473, 0.866443,
		46.005100, 34.565941, 51.208305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983757, 34.066120, 50.423100>,  <46.345116, 34.646770, 50.601795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983757, 34.066120, 50.423100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.802036, 34.200665, 50.753063>,  <45.693005, 34.281391, 50.951042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.802036, 34.200665, 50.753063>,  <45.983757, 34.066120, 50.423100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.802036, 34.200665, 50.753063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866409, -0.382231, -0.321300,
		0.207233, -0.860675, 0.465073,
		-0.454301, 0.336360, 0.824908,
		45.665745, 34.301571, 51.000534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585735, 33.504917, 50.676025>,  <45.983757, 34.066120, 50.423100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585735, 33.504917, 50.676025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.429241, 33.838863, 50.830917>,  <45.335346, 34.039230, 50.923851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.429241, 33.838863, 50.830917>,  <45.585735, 33.504917, 50.676025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.429241, 33.838863, 50.830917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918947, -0.377135, -0.115351,
		0.049735, -0.400969, 0.914740,
		-0.391232, 0.834861, 0.387226,
		45.311871, 34.089321, 50.947086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.084145, 33.257587, 51.188435>,  <45.585735, 33.504917, 50.676025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.084145, 33.257587, 51.188435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.995239, 33.635372, 51.091606>,  <44.941895, 33.862041, 51.033508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.995239, 33.635372, 51.091606>,  <45.084145, 33.257587, 51.188435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.995239, 33.635372, 51.091606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894620, -0.296266, -0.334487,
		-0.387627, 0.142220, 0.910779,
		-0.222262, 0.944458, -0.242073,
		44.928562, 33.918709, 51.018986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.279343, 33.343346, 51.308884>,  <45.084145, 33.257587, 51.188435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.279343, 33.343346, 51.308884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.408352, 33.613560, 51.043663>,  <44.485756, 33.775688, 50.884529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.408352, 33.613560, 51.043663>,  <44.279343, 33.343346, 51.308884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408352, 33.613560, 51.043663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882975, -0.037696, -0.467904,
		-0.341078, 0.736367, 0.584319,
		0.322522, 0.675531, -0.663052,
		44.505108, 33.816219, 50.844749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652740, 33.759960, 51.259563>,  <44.279343, 33.343346, 51.308884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652740, 33.759960, 51.259563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.865070, 33.871288, 50.939373>,  <43.992466, 33.938084, 50.747257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.865070, 33.871288, 50.939373>,  <43.652740, 33.759960, 51.259563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865070, 33.871288, 50.939373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843398, 0.080843, -0.531172,
		-0.083122, 0.957080, 0.277646,
		0.530820, 0.278319, -0.800480,
		44.024315, 33.954784, 50.699230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206699, 34.423225, 51.011940>,  <43.652740, 33.759960, 51.259563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206699, 34.423225, 51.011940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.428108, 34.276646, 50.712784>,  <43.560951, 34.188698, 50.533291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.428108, 34.276646, 50.712784>,  <43.206699, 34.423225, 51.011940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428108, 34.276646, 50.712784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787387, 0.062337, -0.613299,
		0.271361, 0.928349, -0.254029,
		0.553520, -0.366445, -0.747886,
		43.594166, 34.166714, 50.488419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022377, 34.792038, 50.460449>,  <43.206699, 34.423225, 51.011940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022377, 34.792038, 50.460449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.201248, 34.486557, 50.274204>,  <43.308571, 34.303268, 50.162457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.201248, 34.486557, 50.274204>,  <43.022377, 34.792038, 50.460449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201248, 34.486557, 50.274204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736619, -0.019159, -0.676037,
		0.507370, 0.645284, -0.571125,
		0.447178, -0.763702, -0.465608,
		43.335403, 34.257446, 50.134521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079723, 34.982811, 49.769329>,  <43.022377, 34.792038, 50.460449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079723, 34.982811, 49.769329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.038212, 34.586746, 49.806885>,  <43.013306, 34.349110, 49.829418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.038212, 34.586746, 49.806885>,  <43.079723, 34.982811, 49.769329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038212, 34.586746, 49.806885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682543, 0.002236, -0.730841,
		0.723439, -0.139928, -0.676059,
		-0.103777, -0.990159, 0.093889,
		43.007080, 34.289700, 49.835052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069153, 34.797150, 49.079948>,  <43.079723, 34.982811, 49.769329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069153, 34.797150, 49.079948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.955166, 34.472412, 49.283794>,  <42.886772, 34.277569, 49.406101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.955166, 34.472412, 49.283794>,  <43.069153, 34.797150, 49.079948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955166, 34.472412, 49.283794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701833, -0.185394, -0.687793,
		0.652858, -0.553663, -0.516946,
		-0.284967, -0.811841, 0.509615,
		42.869675, 34.228859, 49.436680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066040, 34.189129, 48.543892>,  <43.069153, 34.797150, 49.079948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066040, 34.189129, 48.543892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.840778, 34.113415, 48.865643>,  <42.705620, 34.067986, 49.058693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.840778, 34.113415, 48.865643>,  <43.066040, 34.189129, 48.543892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840778, 34.113415, 48.865643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817670, -0.013086, -0.575539,
		0.119468, -0.981835, -0.147404,
		-0.563155, -0.189286, 0.804380,
		42.671833, 34.056629, 49.106956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749981, 33.636883, 48.405151>,  <43.066040, 34.189129, 48.543892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749981, 33.636883, 48.405151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.526039, 33.817429, 48.683098>,  <42.391674, 33.925755, 48.849865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.526039, 33.817429, 48.683098>,  <42.749981, 33.636883, 48.405151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526039, 33.817429, 48.683098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818137, -0.168318, -0.549837,
		-0.131216, -0.876324, 0.463507,
		-0.559852, 0.451360, 0.694867,
		42.358082, 33.952839, 48.891560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152603, 33.341370, 48.437820>,  <42.749981, 33.636883, 48.405151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152603, 33.341370, 48.437820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.024399, 33.631382, 48.681656>,  <41.947475, 33.805389, 48.827957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.024399, 33.631382, 48.681656>,  <42.152603, 33.341370, 48.437820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024399, 33.631382, 48.681656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936178, -0.144373, -0.320511,
		-0.144373, -0.673412, 0.725033,
		0.320511, -0.725033, -0.609590,
		41.928246, 33.848892, 48.864532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478199, 33.207375, 48.702564>,  <42.152603, 33.341370, 48.437820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478199, 33.207375, 48.702564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.477669, 33.607002, 48.719803>,  <41.477352, 33.846779, 48.730145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.477669, 33.607002, 48.719803>,  <41.478199, 33.207375, 48.702564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477669, 33.607002, 48.719803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857829, 0.021012, -0.513505,
		-0.513933, -0.037651, 0.857004,
		-0.001326, 0.999070, 0.043097,
		41.477272, 33.906723, 48.732731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793537, 33.409386, 48.868320>,  <41.478199, 33.207375, 48.702564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793537, 33.409386, 48.868320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.956066, 33.736046, 48.704376>,  <41.053581, 33.932041, 48.606010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.956066, 33.736046, 48.704376>,  <40.793537, 33.409386, 48.868320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956066, 33.736046, 48.704376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856667, 0.184439, -0.481771,
		-0.317846, 0.546865, 0.774540,
		0.406319, 0.816653, -0.409858,
		41.077961, 33.981041, 48.581417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350483, 33.938427, 49.070236>,  <40.793537, 33.409386, 48.868320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350483, 33.938427, 49.070236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.555927, 33.963470, 48.727943>,  <40.679195, 33.978497, 48.522568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.555927, 33.963470, 48.727943>,  <40.350483, 33.938427, 49.070236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555927, 33.963470, 48.727943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857452, 0.073780, -0.509247,
		0.031253, 0.995308, 0.091578,
		0.513614, 0.062608, -0.855734,
		40.710011, 33.982254, 48.471222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751892, 33.556511, 49.111942>,  <40.350483, 33.938427, 49.070236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751892, 33.556511, 49.111942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.643681, 33.171585, 49.100872>,  <39.578754, 32.940632, 49.094231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.643681, 33.171585, 49.100872>,  <39.751892, 33.556511, 49.111942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643681, 33.171585, 49.100872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652331, 0.162091, 0.740399,
		-0.708009, 0.218358, -0.671598,
		-0.270532, -0.962313, -0.027680,
		39.562519, 32.882893, 49.092567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005436, 33.463871, 48.859787>,  <39.751892, 33.556511, 49.111942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005436, 33.463871, 48.859787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.115845, 33.158592, 49.093483>,  <39.182091, 32.975426, 49.233700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.115845, 33.158592, 49.093483>,  <39.005436, 33.463871, 48.859787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115845, 33.158592, 49.093483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797332, 0.157618, 0.582596,
		-0.536724, -0.626645, -0.565017,
		0.276024, -0.763199, 0.584241,
		39.198650, 32.929634, 49.268757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371582, 33.241741, 48.468853>,  <39.005436, 33.463871, 48.859787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371582, 33.241741, 48.468853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.487431, 33.244064, 48.086002>,  <38.556942, 33.245457, 47.856293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.487431, 33.244064, 48.086002>,  <38.371582, 33.241741, 48.468853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487431, 33.244064, 48.086002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679977, -0.702511, -0.210021,
		-0.673608, 0.711649, -0.199518,
		0.289625, 0.005804, -0.957123,
		38.574318, 33.245804, 47.798866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772926, 33.438019, 48.058128>,  <38.371582, 33.241741, 48.468853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772926, 33.438019, 48.058128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.047459, 33.192841, 47.901543>,  <38.212177, 33.045734, 47.807590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.047459, 33.192841, 47.901543>,  <37.772926, 33.438019, 48.058128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047459, 33.192841, 47.901543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705207, -0.692488, -0.152126,
		-0.177843, 0.380475, -0.907530,
		0.686334, -0.612942, -0.391468,
		38.253361, 33.008957, 47.784103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490524, 33.193668, 47.420578>,  <37.772926, 33.438019, 48.058128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490524, 33.193668, 47.420578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.774315, 32.929520, 47.519005>,  <37.944592, 32.771030, 47.578060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.774315, 32.929520, 47.519005>,  <37.490524, 33.193668, 47.420578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774315, 32.929520, 47.519005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547617, -0.736381, -0.397314,
		0.443572, 0.147137, -0.884078,
		0.709478, -0.660374, 0.246064,
		37.987160, 32.731407, 47.592823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422935, 32.680435, 46.804459>,  <37.490524, 33.193668, 47.420578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422935, 32.680435, 46.804459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.643742, 32.508801, 47.090443>,  <37.776226, 32.405819, 47.262032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.643742, 32.508801, 47.090443>,  <37.422935, 32.680435, 46.804459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643742, 32.508801, 47.090443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399329, -0.888751, -0.225073,
		0.731995, -0.161260, -0.661950,
		0.552014, -0.429088, 0.714957,
		37.809345, 32.380074, 47.304932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852421, 32.119953, 46.465782>,  <37.422935, 32.680435, 46.804459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852421, 32.119953, 46.465782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.778423, 32.047585, 46.852158>,  <37.734024, 32.004166, 47.083984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.778423, 32.047585, 46.852158>,  <37.852421, 32.119953, 46.465782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778423, 32.047585, 46.852158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350315, -0.906198, -0.236822,
		0.918181, -0.382195, 0.104265,
		-0.184997, -0.180920, 0.965942,
		37.722923, 31.993309, 47.141941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961735, 31.478786, 46.491230>,  <37.852421, 32.119953, 46.465782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961735, 31.478786, 46.491230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.762196, 31.553236, 46.829815>,  <37.642471, 31.597906, 47.032967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.762196, 31.553236, 46.829815>,  <37.961735, 31.478786, 46.491230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762196, 31.553236, 46.829815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370917, -0.928554, -0.014421,
		0.783306, -0.321163, 0.532247,
		-0.498852, 0.186123, 0.846466,
		37.612541, 31.609074, 47.083755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983814, 30.784519, 46.868286>,  <37.961735, 31.478786, 46.491230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983814, 30.784519, 46.868286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.690533, 31.018312, 47.007309>,  <37.514565, 31.158588, 47.090721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.690533, 31.018312, 47.007309>,  <37.983814, 30.784519, 46.868286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690533, 31.018312, 47.007309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629201, -0.776965, -0.020734,
		0.257919, -0.233884, 0.937431,
		-0.733201, 0.584485, 0.347554,
		37.470573, 31.193659, 47.111576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608948, 30.320562, 47.204601>,  <37.983814, 30.784519, 46.868286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608948, 30.320562, 47.204601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.342400, 30.618090, 47.183857>,  <37.182472, 30.796606, 47.171410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.342400, 30.618090, 47.183857>,  <37.608948, 30.320562, 47.204601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342400, 30.618090, 47.183857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731195, -0.665509, -0.149835,
		-0.145963, -0.061926, 0.987350,
		-0.666369, 0.743816, -0.051860,
		37.142490, 30.841234, 47.168301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127232, 30.028925, 47.641857>,  <37.608948, 30.320562, 47.204601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127232, 30.028925, 47.641857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.941242, 30.321253, 47.441975>,  <36.829647, 30.496649, 47.322044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.941242, 30.321253, 47.441975>,  <37.127232, 30.028925, 47.641857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941242, 30.321253, 47.441975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783231, -0.602699, -0.152653,
		-0.412732, 0.320403, 0.852640,
		-0.464975, 0.730818, -0.499702,
		36.801750, 30.540499, 47.292065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453396, 29.958330, 47.873169>,  <37.127232, 30.028925, 47.641857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453396, 29.958330, 47.873169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.419476, 30.181404, 47.542885>,  <36.399124, 30.315248, 47.344715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.419476, 30.181404, 47.542885>,  <36.453396, 29.958330, 47.873169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419476, 30.181404, 47.542885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873425, -0.440416, -0.207758,
		-0.479519, 0.703580, 0.524440,
		-0.084797, 0.557682, -0.825712,
		36.394035, 30.348709, 47.295170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812519, 30.389313, 47.870113>,  <36.453396, 29.958330, 47.873169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812519, 30.389313, 47.870113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.920471, 30.317377, 47.491734>,  <35.985245, 30.274216, 47.264706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.920471, 30.317377, 47.491734>,  <35.812519, 30.389313, 47.870113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920471, 30.317377, 47.491734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933157, -0.291110, -0.210888,
		-0.237449, 0.939634, -0.246384,
		0.269883, -0.179840, -0.945950,
		36.001434, 30.263426, 47.207947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180611, 30.643805, 47.373417>,  <35.812519, 30.389313, 47.870113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180611, 30.643805, 47.373417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.396252, 30.402817, 47.137993>,  <35.525639, 30.258224, 46.996738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.396252, 30.402817, 47.137993>,  <35.180611, 30.643805, 47.373417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396252, 30.402817, 47.137993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840600, -0.341313, -0.420592,
		0.052511, 0.721483, -0.690438,
		0.539105, -0.602468, -0.588556,
		35.557983, 30.222076, 46.961426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.531876, 31.260851, 51.438206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.859064, 31.490435, 51.453678>,  <30.055376, 31.628185, 51.462963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.859064, 31.490435, 51.453678>,  <29.531876, 31.260851, 51.438206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859064, 31.490435, 51.453678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313727, -0.388716, -0.866300,
		-0.482184, 0.720743, -0.498024,
		0.817970, 0.573959, 0.038684,
		30.104454, 31.662622, 51.465282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577713, 31.634890, 50.844135>,  <29.531876, 31.260851, 51.438206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577713, 31.634890, 50.844135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.950388, 31.611168, 50.987492>,  <30.173992, 31.596935, 51.073505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.950388, 31.611168, 50.987492>,  <29.577713, 31.634890, 50.844135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950388, 31.611168, 50.987492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285045, -0.492231, -0.822471,
		0.225186, 0.868442, -0.441700,
		0.931687, -0.059305, 0.358389,
		30.229895, 31.593376, 51.095009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983400, 31.536505, 50.207279>,  <29.577713, 31.634890, 50.844135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983400, 31.536505, 50.207279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.273514, 31.473120, 50.475266>,  <30.447582, 31.435089, 50.636059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.273514, 31.473120, 50.475266>,  <29.983400, 31.536505, 50.207279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273514, 31.473120, 50.475266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575286, -0.395058, -0.716223,
		0.378171, 0.904886, -0.195367,
		0.725281, -0.158463, 0.669967,
		30.491098, 31.425581, 50.676254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613400, 31.783512, 49.980888>,  <29.983400, 31.536505, 50.207279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613400, 31.783512, 49.980888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.728317, 31.520042, 50.259056>,  <30.797268, 31.361961, 50.425957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.728317, 31.520042, 50.259056>,  <30.613400, 31.783512, 49.980888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728317, 31.520042, 50.259056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609505, -0.434358, -0.663202,
		0.738896, 0.614397, 0.276676,
		0.287293, -0.658673, 0.695423,
		30.814505, 31.322441, 50.467682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297323, 31.852510, 49.950455>,  <30.613400, 31.783512, 49.980888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297323, 31.852510, 49.950455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.237179, 31.493425, 50.116108>,  <31.201092, 31.277975, 50.215500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.237179, 31.493425, 50.116108>,  <31.297323, 31.852510, 49.950455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237179, 31.493425, 50.116108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729151, -0.383580, -0.566750,
		0.667631, 0.216747, 0.712243,
		-0.150361, -0.897712, 0.414131,
		31.192070, 31.224112, 50.240349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874187, 31.670721, 50.112019>,  <31.297323, 31.852510, 49.950455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874187, 31.670721, 50.112019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.699863, 31.313055, 50.153076>,  <31.595270, 31.098455, 50.177711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.699863, 31.313055, 50.153076>,  <31.874187, 31.670721, 50.112019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699863, 31.313055, 50.153076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857297, -0.447131, -0.255177,
		0.274066, -0.023213, 0.961431,
		-0.435809, -0.894167, 0.102643,
		31.569120, 31.044806, 50.183868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262520, 31.316854, 50.528622>,  <31.874187, 31.670721, 50.112019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262520, 31.316854, 50.528622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.064430, 31.042526, 50.315300>,  <31.945578, 30.877930, 50.187309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.064430, 31.042526, 50.315300>,  <32.262520, 31.316854, 50.528622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064430, 31.042526, 50.315300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867904, -0.417909, -0.268504,
		-0.038726, -0.595824, 0.802181,
		-0.495219, -0.685818, -0.533302,
		31.915865, 30.836781, 50.155308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575211, 30.623411, 50.691593>,  <32.262520, 31.316854, 50.528622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575211, 30.623411, 50.691593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.384487, 30.586693, 50.341911>,  <32.270054, 30.564663, 50.132103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.384487, 30.586693, 50.341911>,  <32.575211, 30.623411, 50.691593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384487, 30.586693, 50.341911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744977, -0.570062, -0.346466,
		-0.466546, -0.816458, 0.340194,
		-0.476807, -0.091794, -0.874202,
		32.241444, 30.559155, 50.079651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849915, 29.955818, 50.403778>,  <32.575211, 30.623411, 50.691593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849915, 29.955818, 50.403778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.680386, 30.113905, 50.077789>,  <32.578671, 30.208757, 49.882195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.680386, 30.113905, 50.077789>,  <32.849915, 29.955818, 50.403778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680386, 30.113905, 50.077789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749317, -0.352481, -0.560609,
		-0.508825, -0.848268, -0.146757,
		-0.423817, 0.395220, -0.814973,
		32.553242, 30.232471, 49.833298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739071, 29.373230, 49.953911>,  <32.849915, 29.955818, 50.403778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739071, 29.373230, 49.953911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.750813, 29.712088, 49.741692>,  <32.757858, 29.915401, 49.614361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.750813, 29.712088, 49.741692>,  <32.739071, 29.373230, 49.953911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750813, 29.712088, 49.741692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623029, -0.430567, -0.653029,
		-0.781648, -0.311384, -0.540432,
		0.029350, 0.847144, -0.530553,
		32.759617, 29.966230, 49.582527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513302, 29.207600, 49.215473>,  <32.739071, 29.373230, 49.953911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513302, 29.207600, 49.215473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.758232, 29.522348, 49.246178>,  <32.905190, 29.711197, 49.264603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.758232, 29.522348, 49.246178>,  <32.513302, 29.207600, 49.215473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758232, 29.522348, 49.246178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644022, -0.440120, -0.625723,
		-0.458578, 0.432584, -0.776259,
		0.612325, 0.786871, 0.076764,
		32.941929, 29.758410, 49.269207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779037, 29.220808, 48.555119>,  <32.513302, 29.207600, 49.215473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779037, 29.220808, 48.555119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.023891, 29.448008, 48.775177>,  <33.170803, 29.584328, 48.907211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.023891, 29.448008, 48.775177>,  <32.779037, 29.220808, 48.555119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023891, 29.448008, 48.775177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789021, -0.392731, -0.472448,
		-0.052289, 0.723283, -0.688569,
		0.612136, 0.568000, 0.550151,
		33.207531, 29.618408, 48.940224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204693, 29.584383, 48.114594>,  <32.779037, 29.220808, 48.555119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204693, 29.584383, 48.114594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.377956, 29.459827, 48.452919>,  <33.481915, 29.385094, 48.655914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.377956, 29.459827, 48.452919>,  <33.204693, 29.584383, 48.114594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377956, 29.459827, 48.452919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772457, -0.355280, -0.526390,
		0.464415, 0.881369, 0.086642,
		0.433162, -0.311391, 0.845817,
		33.507904, 29.366409, 48.706665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670620, 29.959042, 47.987576>,  <33.204693, 29.584383, 48.114594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670620, 29.959042, 47.987576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.715660, 29.981668, 47.590763>,  <32.742683, 29.995245, 47.352676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.715660, 29.981668, 47.590763>,  <32.670620, 29.959042, 47.987576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715660, 29.981668, 47.590763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435462, 0.900205, 0.001903,
		0.893137, 0.431777, 0.125999,
		0.112603, 0.056567, -0.992028,
		32.749439, 29.998638, 47.293156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003300, 30.597843, 47.806446>,  <32.670620, 29.959042, 47.987576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003300, 30.597843, 47.806446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826618, 30.488997, 47.464485>,  <32.720608, 30.423689, 47.259308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826618, 30.488997, 47.464485>,  <33.003300, 30.597843, 47.806446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826618, 30.488997, 47.464485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483470, 0.874891, -0.028682,
		0.755748, 0.400649, -0.518001,
		-0.441703, -0.272114, -0.854899,
		32.694107, 30.407362, 47.208015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034550, 31.175760, 47.363598>,  <33.003300, 30.597843, 47.806446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034550, 31.175760, 47.363598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.729710, 30.954092, 47.229675>,  <32.546806, 30.821091, 47.149323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.729710, 30.954092, 47.229675>,  <33.034550, 31.175760, 47.363598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729710, 30.954092, 47.229675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545579, 0.828104, -0.128795,
		0.348626, 0.084506, -0.933445,
		-0.762105, -0.554169, -0.334803,
		32.501080, 30.787842, 47.129234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872120, 31.393116, 46.730320>,  <33.034550, 31.175760, 47.363598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872120, 31.393116, 46.730320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529366, 31.236267, 46.864174>,  <32.323711, 31.142157, 46.944485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529366, 31.236267, 46.864174>,  <32.872120, 31.393116, 46.730320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529366, 31.236267, 46.864174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480112, 0.843431, -0.241074,
		-0.187711, -0.367237, -0.910990,
		-0.856888, -0.392125, 0.334636,
		32.272301, 31.118629, 46.964565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347866, 31.402672, 46.097706>,  <32.872120, 31.393116, 46.730320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347866, 31.402672, 46.097706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.125706, 31.335094, 46.423401>,  <31.992409, 31.294548, 46.618820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.125706, 31.335094, 46.423401>,  <32.347866, 31.402672, 46.097706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125706, 31.335094, 46.423401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586749, 0.773467, -0.239741,
		-0.589285, -0.610907, -0.528712,
		-0.555400, -0.168945, 0.814241,
		31.959085, 31.284410, 46.667675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609406, 31.607637, 45.887901>,  <32.347866, 31.402672, 46.097706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609406, 31.607637, 45.887901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.563650, 31.574198, 46.283867>,  <31.536196, 31.554134, 46.521446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.563650, 31.574198, 46.283867>,  <31.609406, 31.607637, 45.887901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563650, 31.574198, 46.283867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645234, 0.763919, -0.010048,
		-0.755373, -0.639874, -0.141324,
		-0.114389, -0.083596, 0.989912,
		31.529333, 31.549118, 46.580841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946945, 31.636831, 45.985802>,  <31.609406, 31.607637, 45.887901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946945, 31.636831, 45.985802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.098986, 31.724197, 46.345318>,  <31.190210, 31.776617, 46.561028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.098986, 31.724197, 46.345318>,  <30.946945, 31.636831, 45.985802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098986, 31.724197, 46.345318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631680, 0.771116, 0.079751,
		-0.675651, -0.598060, 0.431069,
		0.380100, 0.218413, 0.898788,
		31.213017, 31.789721, 46.614956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382172, 31.836481, 46.397781>,  <30.946945, 31.636831, 45.985802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382172, 31.836481, 46.397781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.700748, 32.008984, 46.567345>,  <30.891895, 32.112484, 46.669083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.700748, 32.008984, 46.567345>,  <30.382172, 31.836481, 46.397781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700748, 32.008984, 46.567345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535387, 0.828778, 0.162749,
		-0.281136, -0.356573, 0.890965,
		0.796444, 0.431256, 0.423904,
		30.939682, 32.138359, 46.694515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073648, 32.334919, 46.885265>,  <30.382172, 31.836481, 46.397781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073648, 32.334919, 46.885265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.448650, 32.469219, 46.848713>,  <30.673653, 32.549801, 46.826782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.448650, 32.469219, 46.848713>,  <30.073648, 32.334919, 46.885265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448650, 32.469219, 46.848713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309203, 0.924285, 0.223810,
		0.159606, -0.181568, 0.970340,
		0.937507, 0.335754, -0.091380,
		30.729902, 32.569946, 46.821301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109892, 32.809036, 47.442081>,  <30.073648, 32.334919, 46.885265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109892, 32.809036, 47.442081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.394840, 32.911156, 47.180595>,  <30.565809, 32.972427, 47.023705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.394840, 32.911156, 47.180595>,  <30.109892, 32.809036, 47.442081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394840, 32.911156, 47.180595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169500, 0.966499, 0.192744,
		0.681025, -0.026500, 0.731780,
		0.712372, 0.255301, -0.653718,
		30.608551, 32.987747, 46.984478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494497, 33.441696, 47.714172>,  <30.109892, 32.809036, 47.442081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494497, 33.441696, 47.714172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.597692, 33.444542, 47.327724>,  <30.659609, 33.446251, 47.095856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.597692, 33.444542, 47.327724>,  <30.494497, 33.441696, 47.714172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597692, 33.444542, 47.327724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084971, 0.996265, -0.015354,
		0.962405, 0.086053, 0.257629,
		0.257988, 0.007115, -0.966122,
		30.675089, 33.446678, 47.037888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099941, 33.826538, 47.665760>,  <30.494497, 33.441696, 47.714172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099941, 33.826538, 47.665760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.922590, 33.817204, 47.307346>,  <30.816179, 33.811604, 47.092300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.922590, 33.817204, 47.307346>,  <31.099941, 33.826538, 47.665760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922590, 33.817204, 47.307346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241234, 0.965883, 0.094209,
		0.863262, 0.257924, -0.433883,
		-0.443379, -0.023340, -0.896030,
		30.789577, 33.810200, 47.038536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466717, 34.315411, 47.276981>,  <31.099941, 33.826538, 47.665760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466717, 34.315411, 47.276981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.135662, 34.264233, 47.058388>,  <30.937029, 34.233528, 46.927231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.135662, 34.264233, 47.058388>,  <31.466717, 34.315411, 47.276981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135662, 34.264233, 47.058388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152528, 0.988299, -0.000379,
		0.540139, 0.083040, -0.837469,
		-0.827639, -0.127942, -0.546484,
		30.887371, 34.225849, 46.894444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618891, 34.821777, 46.792046>,  <31.466717, 34.315411, 47.276981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618891, 34.821777, 46.792046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.234383, 34.717403, 46.827538>,  <31.003677, 34.654778, 46.848831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.234383, 34.717403, 46.827538>,  <31.618891, 34.821777, 46.792046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234383, 34.717403, 46.827538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235710, 0.945181, 0.225995,
		-0.142836, 0.196328, -0.970079,
		-0.961269, -0.260938, 0.088729,
		30.946001, 34.639122, 46.854156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270205, 35.440075, 46.689068>,  <31.618891, 34.821777, 46.792046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270205, 35.440075, 46.689068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.024097, 35.209579, 46.904251>,  <30.876432, 35.071281, 47.033360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.024097, 35.209579, 46.904251>,  <31.270205, 35.440075, 46.689068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024097, 35.209579, 46.904251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305181, 0.803307, 0.511432,
		-0.726849, 0.150494, -0.670106,
		-0.615268, -0.576238, 0.537954,
		30.839518, 35.036709, 47.065636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702690, 35.983047, 46.763660>,  <31.270205, 35.440075, 46.689068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702690, 35.983047, 46.763660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.932774, 36.289021, 46.879597>,  <32.070824, 36.472607, 46.949158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.932774, 36.289021, 46.879597>,  <31.702690, 35.983047, 46.763660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932774, 36.289021, 46.879597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801201, -0.598294, -0.011036,
		0.164969, 0.238570, -0.957011,
		0.575207, 0.764937, 0.289843,
		32.105335, 36.518501, 46.966549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324848, 35.872940, 46.379349>,  <31.702690, 35.983047, 46.763660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324848, 35.872940, 46.379349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.416943, 36.115452, 46.683826>,  <32.472198, 36.260960, 46.866512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.416943, 36.115452, 46.683826>,  <32.324848, 35.872940, 46.379349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416943, 36.115452, 46.683826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958326, -0.277199, -0.069079,
		0.169120, 0.745375, -0.644837,
		0.230238, 0.606281, 0.761192,
		32.486015, 36.297337, 46.912186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892036, 36.218441, 46.149670>,  <32.324848, 35.872940, 46.379349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892036, 36.218441, 46.149670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897175, 36.296585, 46.541927>,  <32.900257, 36.343472, 46.777283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897175, 36.296585, 46.541927>,  <32.892036, 36.218441, 46.149670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897175, 36.296585, 46.541927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980507, -0.194764, 0.025959,
		0.196066, 0.961198, -0.194052,
		0.012842, 0.195359, 0.980648,
		32.901028, 36.355194, 46.836121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185398, 36.865707, 46.263184>,  <32.892036, 36.218441, 46.149670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185398, 36.865707, 46.263184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.211475, 36.656464, 46.603092>,  <33.227119, 36.530918, 46.807037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.211475, 36.656464, 46.603092>,  <33.185398, 36.865707, 46.263184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211475, 36.656464, 46.603092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995319, -0.026806, -0.092855,
		0.071352, 0.851845, 0.518911,
		0.065188, -0.523108, 0.849770,
		33.231033, 36.499531, 46.858025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582367, 37.307343, 46.676662>,  <33.185398, 36.865707, 46.263184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582367, 37.307343, 46.676662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.616623, 36.928062, 46.799030>,  <33.637177, 36.700497, 46.872452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.616623, 36.928062, 46.799030>,  <33.582367, 37.307343, 46.676662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616623, 36.928062, 46.799030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973106, 0.013703, -0.229950,
		0.213846, 0.317385, 0.923870,
		0.085643, -0.948198, 0.305919,
		33.642315, 36.643604, 46.890804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115459, 37.333435, 47.079197>,  <33.582367, 37.307343, 46.676662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115459, 37.333435, 47.079197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.096230, 36.937519, 47.025532>,  <34.084694, 36.699970, 46.993332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.096230, 36.937519, 47.025532>,  <34.115459, 37.333435, 47.079197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096230, 36.937519, 47.025532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994708, -0.035226, -0.096518,
		0.090807, -0.138093, 0.986248,
		-0.048070, -0.989793, -0.134164,
		34.081810, 36.640583, 46.985283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649487, 37.053066, 47.390747>,  <34.115459, 37.333435, 47.079197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649487, 37.053066, 47.390747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574009, 36.777573, 47.110733>,  <34.528721, 36.612278, 46.942726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574009, 36.777573, 47.110733>,  <34.649487, 37.053066, 47.390747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574009, 36.777573, 47.110733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981962, -0.123593, -0.143096,
		0.012036, -0.714405, 0.699629,
		-0.188698, -0.688731, -0.700030,
		34.517399, 36.570953, 46.900723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935802, 36.370934, 47.632236>,  <34.649487, 37.053066, 47.390747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935802, 36.370934, 47.632236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.908138, 36.333473, 47.234955>,  <34.891541, 36.310997, 46.996586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.908138, 36.333473, 47.234955>,  <34.935802, 36.370934, 47.632236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908138, 36.333473, 47.234955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981075, -0.186874, -0.050698,
		-0.180856, -0.977910, 0.104801,
		-0.069162, -0.093649, -0.993200,
		34.887390, 36.305378, 46.936996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387260, 35.854782, 47.449558>,  <34.935802, 36.370934, 47.632236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387260, 35.854782, 47.449558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.323959, 36.039108, 47.100246>,  <35.285980, 36.149704, 46.890659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.323959, 36.039108, 47.100246>,  <35.387260, 35.854782, 47.449558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323959, 36.039108, 47.100246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894044, -0.308516, -0.324812,
		-0.419097, -0.832148, -0.363164,
		-0.158250, 0.460812, -0.873275,
		35.276485, 36.177353, 46.838264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397778, 35.309448, 47.029922>,  <35.387260, 35.854782, 47.449558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397778, 35.309448, 47.029922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460770, 35.617661, 46.782867>,  <35.498566, 35.802589, 46.634632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460770, 35.617661, 46.782867>,  <35.397778, 35.309448, 47.029922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460770, 35.617661, 46.782867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775206, -0.483920, -0.406049,
		-0.611763, -0.414853, -0.673530,
		0.157484, 0.770531, -0.617641,
		35.508015, 35.848820, 46.597576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436195, 35.102448, 46.313297>,  <35.397778, 35.309448, 47.029922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436195, 35.102448, 46.313297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.644917, 35.442249, 46.344425>,  <35.770149, 35.646130, 46.363102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.644917, 35.442249, 46.344425>,  <35.436195, 35.102448, 46.313297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644917, 35.442249, 46.344425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817219, -0.471629, -0.331238,
		-0.244688, 0.236437, -0.940333,
		0.521805, 0.849508, 0.077819,
		35.801456, 35.697102, 46.367771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982971, 35.146202, 45.783199>,  <35.436195, 35.102448, 46.313297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982971, 35.146202, 45.783199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.119492, 35.446735, 46.009125>,  <36.201405, 35.627056, 46.144680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.119492, 35.446735, 46.009125>,  <35.982971, 35.146202, 45.783199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119492, 35.446735, 46.009125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939859, -0.264267, -0.216397,
		-0.013324, 0.604702, -0.796340,
		0.341303, 0.751331, 0.564814,
		36.221882, 35.672134, 46.178570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.717356, 41.159817, 49.980606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.398813, 41.169174, 49.738853>,  <30.207687, 41.174789, 49.593803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.398813, 41.169174, 49.738853>,  <30.717356, 41.159817, 49.980606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398813, 41.169174, 49.738853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346477, -0.801400, -0.487557,
		-0.495755, -0.597671, 0.630092,
		-0.796354, 0.023397, -0.604378,
		30.159906, 41.176193, 49.557541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610374, 40.503635, 49.803188>,  <30.717356, 41.159817, 49.980606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610374, 40.503635, 49.803188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.435915, 40.703835, 49.504051>,  <30.331240, 40.823956, 49.324570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.435915, 40.703835, 49.504051>,  <30.610374, 40.503635, 49.803188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435915, 40.703835, 49.504051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330203, -0.684070, -0.650395,
		-0.837103, -0.530609, 0.133089,
		-0.436148, 0.500501, -0.747846,
		30.305071, 40.853985, 49.279697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177061, 40.065880, 49.477047>,  <30.610374, 40.503635, 49.803188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177061, 40.065880, 49.477047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.236158, 40.318611, 49.172688>,  <30.271618, 40.470249, 48.990074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.236158, 40.318611, 49.172688>,  <30.177061, 40.065880, 49.477047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236158, 40.318611, 49.172688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101202, -0.774960, -0.623855,
		-0.983834, 0.015167, -0.178439,
		0.147745, 0.631829, -0.760897,
		30.280481, 40.508160, 48.944420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832195, 39.833843, 48.819042>,  <30.177061, 40.065880, 49.477047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832195, 39.833843, 48.819042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115898, 40.082333, 48.685757>,  <30.286119, 40.231426, 48.605785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115898, 40.082333, 48.685757>,  <29.832195, 39.833843, 48.819042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115898, 40.082333, 48.685757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129601, -0.579526, -0.804582,
		-0.692934, 0.527472, -0.491545,
		0.709258, 0.621227, -0.333212,
		30.328676, 40.268700, 48.585793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647627, 39.880295, 48.137424>,  <29.832195, 39.833843, 48.819042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647627, 39.880295, 48.137424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.031046, 39.990967, 48.164654>,  <30.261097, 40.057369, 48.180992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.031046, 39.990967, 48.164654>,  <29.647627, 39.880295, 48.137424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031046, 39.990967, 48.164654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248589, -0.695307, -0.674353,
		-0.139251, 0.663321, -0.735265,
		0.958547, 0.276683, 0.068072,
		30.318609, 40.073971, 48.185074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856123, 39.804939, 47.505337>,  <29.647627, 39.880295, 48.137424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856123, 39.804939, 47.505337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.196684, 39.797367, 47.715004>,  <30.401020, 39.792824, 47.840805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.196684, 39.797367, 47.715004>,  <29.856123, 39.804939, 47.505337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196684, 39.797367, 47.715004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343164, -0.735683, -0.583959,
		0.396676, 0.677061, -0.619868,
		0.851403, -0.018927, 0.524171,
		30.452105, 39.791691, 47.872253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469528, 39.725941, 47.001244>,  <29.856123, 39.804939, 47.505337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469528, 39.725941, 47.001244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.587803, 39.605595, 47.363911>,  <30.658768, 39.533386, 47.581512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.587803, 39.605595, 47.363911>,  <30.469528, 39.725941, 47.001244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587803, 39.605595, 47.363911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482799, -0.771908, -0.413597,
		0.824302, 0.560035, -0.082988,
		0.295688, -0.300862, 0.906670,
		30.676510, 39.515335, 47.635910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169451, 39.536564, 46.932888>,  <30.469528, 39.725941, 47.001244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169451, 39.536564, 46.932888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.076042, 39.366348, 47.282604>,  <31.019997, 39.264217, 47.492435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.076042, 39.366348, 47.282604>,  <31.169451, 39.536564, 46.932888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076042, 39.366348, 47.282604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474828, -0.834559, -0.279374,
		0.848532, 0.349898, 0.396945,
		-0.233522, -0.425538, 0.874291,
		31.005985, 39.238686, 47.544891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834557, 39.319080, 47.306866>,  <31.169451, 39.536564, 46.932888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834557, 39.319080, 47.306866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.529730, 39.118233, 47.470390>,  <31.346834, 38.997723, 47.568504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.529730, 39.118233, 47.470390>,  <31.834557, 39.319080, 47.306866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529730, 39.118233, 47.470390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404094, -0.862140, -0.305652,
		0.505931, -0.067727, 0.859911,
		-0.762065, -0.502123, 0.408815,
		31.301111, 38.967594, 47.593037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152660, 38.781502, 47.686806>,  <31.834557, 39.319080, 47.306866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152660, 38.781502, 47.686806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.786457, 38.624722, 47.650528>,  <31.566736, 38.530655, 47.628761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.786457, 38.624722, 47.650528>,  <32.152660, 38.781502, 47.686806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786457, 38.624722, 47.650528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396081, -0.838618, -0.373951,
		0.070512, -0.378277, 0.923003,
		-0.915504, -0.391952, -0.090696,
		31.511806, 38.507137, 47.623318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185772, 38.096390, 48.022156>,  <32.152660, 38.781502, 47.686806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185772, 38.096390, 48.022156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.876749, 38.076805, 47.768932>,  <31.691336, 38.065056, 47.617001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.876749, 38.076805, 47.768932>,  <32.185772, 38.096390, 48.022156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876749, 38.076805, 47.768932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142391, -0.984987, -0.097593,
		-0.618772, -0.165537, 0.767931,
		-0.772558, -0.048959, -0.633054,
		31.644981, 38.062119, 47.579018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737511, 37.535301, 48.254890>,  <32.185772, 38.096390, 48.022156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737511, 37.535301, 48.254890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.672194, 37.610432, 47.867477>,  <31.633003, 37.655510, 47.635029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.672194, 37.610432, 47.867477>,  <31.737511, 37.535301, 48.254890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672194, 37.610432, 47.867477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117028, -0.971091, -0.208057,
		-0.979613, -0.147319, 0.136587,
		-0.163289, 0.187831, -0.968533,
		31.623207, 37.666782, 47.576916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588591, 36.869270, 47.972012>,  <31.737511, 37.535301, 48.254890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588591, 36.869270, 47.972012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.624493, 37.070927, 47.628433>,  <31.646034, 37.191921, 47.422287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.624493, 37.070927, 47.628433>,  <31.588591, 36.869270, 47.972012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624493, 37.070927, 47.628433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376621, -0.815567, -0.439326,
		-0.922009, -0.284066, -0.263070,
		0.089754, 0.504140, -0.858945,
		31.651419, 37.222168, 47.370750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222357, 36.415478, 47.383896>,  <31.588591, 36.869270, 47.972012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222357, 36.415478, 47.383896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.518887, 36.665016, 47.284893>,  <31.696804, 36.814739, 47.225491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.518887, 36.665016, 47.284893>,  <31.222357, 36.415478, 47.383896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518887, 36.665016, 47.284893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569953, -0.779904, -0.258656,
		-0.354390, 0.050682, -0.933723,
		0.741324, 0.623844, -0.247504,
		31.741283, 36.852169, 47.210640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835077, 35.991833, 46.874218>,  <31.222357, 36.415478, 47.383896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835077, 35.991833, 46.874218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.701815, 35.675442, 47.079494>,  <30.621857, 35.485607, 47.202660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.701815, 35.675442, 47.079494>,  <30.835077, 35.991833, 46.874218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701815, 35.675442, 47.079494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497117, 0.609846, 0.617222,
		-0.801174, -0.049485, -0.596382,
		-0.333158, -0.790974, 0.513192,
		30.601868, 35.438148, 47.233452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175039, 36.151043, 47.068562>,  <30.835077, 35.991833, 46.874218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175039, 36.151043, 47.068562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.265762, 35.877365, 47.345814>,  <30.320196, 35.713158, 47.512165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.265762, 35.877365, 47.345814>,  <30.175039, 36.151043, 47.068562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265762, 35.877365, 47.345814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508081, 0.524044, 0.683543,
		-0.830910, -0.507201, -0.228771,
		0.226808, -0.684197, 0.693132,
		30.333805, 35.672108, 47.553753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550787, 35.918125, 47.378151>,  <30.175039, 36.151043, 47.068562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550787, 35.918125, 47.378151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.861519, 35.847729, 47.619999>,  <30.047958, 35.805489, 47.765106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.861519, 35.847729, 47.619999>,  <29.550787, 35.918125, 47.378151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861519, 35.847729, 47.619999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507737, 0.392874, 0.766716,
		-0.372475, -0.902594, 0.215837,
		0.776830, -0.175994, 0.604616,
		30.094568, 35.794930, 47.801384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243023, 35.602470, 47.902424>,  <29.550787, 35.918125, 47.378151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243023, 35.602470, 47.902424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583519, 35.731461, 48.068027>,  <29.787817, 35.808853, 48.167389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583519, 35.731461, 48.068027>,  <29.243023, 35.602470, 47.902424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583519, 35.731461, 48.068027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521627, 0.433582, 0.734787,
		0.057444, -0.841437, 0.537294,
		0.851238, 0.322476, 0.414009,
		29.838890, 35.828205, 48.192230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133171, 35.429935, 48.657150>,  <29.243023, 35.602470, 47.902424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133171, 35.429935, 48.657150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.429541, 35.698399, 48.647526>,  <29.607363, 35.859474, 48.641750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.429541, 35.698399, 48.647526>,  <29.133171, 35.429935, 48.657150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429541, 35.698399, 48.647526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292841, 0.355114, 0.887772,
		0.604379, -0.650726, 0.459655,
		0.740925, 0.671156, -0.024064,
		29.651819, 35.899746, 48.640308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483757, 35.436485, 49.275703>,  <29.133171, 35.429935, 48.657150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483757, 35.436485, 49.275703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565571, 35.792099, 49.111855>,  <29.614658, 36.005466, 49.013546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565571, 35.792099, 49.111855>,  <29.483757, 35.436485, 49.275703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565571, 35.792099, 49.111855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247488, 0.451838, 0.857083,
		0.947056, -0.073927, 0.312441,
		0.204534, 0.889032, -0.409620,
		29.626930, 36.058807, 48.988968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828348, 35.910995, 49.816776>,  <29.483757, 35.436485, 49.275703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828348, 35.910995, 49.816776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676327, 36.161530, 49.544521>,  <29.585114, 36.311852, 49.381168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676327, 36.161530, 49.544521>,  <29.828348, 35.910995, 49.816776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676327, 36.161530, 49.544521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168637, 0.676595, 0.716785,
		0.909462, 0.387197, -0.151519,
		-0.380054, 0.626337, -0.680633,
		29.562311, 36.349430, 49.340332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071226, 36.591331, 49.936203>,  <29.828348, 35.910995, 49.816776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071226, 36.591331, 49.936203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.740627, 36.651531, 49.719223>,  <29.542269, 36.687653, 49.589035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.740627, 36.651531, 49.719223>,  <30.071226, 36.591331, 49.936203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740627, 36.651531, 49.719223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325143, 0.658999, 0.678235,
		0.459551, 0.736933, -0.495725,
		-0.826496, 0.150502, -0.542451,
		29.492678, 36.696682, 49.556488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956539, 37.251472, 50.041161>,  <30.071226, 36.591331, 49.936203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956539, 37.251472, 50.041161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.605600, 37.103180, 49.919292>,  <29.395037, 37.014206, 49.846172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.605600, 37.103180, 49.919292>,  <29.956539, 37.251472, 50.041161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605600, 37.103180, 49.919292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479387, 0.705186, 0.522400,
		0.021178, 0.604379, -0.796415,
		-0.877348, -0.370728, -0.304666,
		29.342396, 36.991962, 49.827892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531773, 37.850204, 49.959854>,  <29.956539, 37.251472, 50.041161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531773, 37.850204, 49.959854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.233934, 37.586197, 49.919952>,  <29.055231, 37.427792, 49.896011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.233934, 37.586197, 49.919952>,  <29.531773, 37.850204, 49.959854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233934, 37.586197, 49.919952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594977, 0.588481, 0.547442,
		-0.302621, 0.466973, -0.830877,
		-0.744596, -0.660020, -0.099752,
		29.010555, 37.388191, 49.890026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975996, 38.215866, 49.762402>,  <29.531773, 37.850204, 49.959854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975996, 38.215866, 49.762402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.848406, 37.880753, 49.939659>,  <28.771852, 37.679684, 50.046013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.848406, 37.880753, 49.939659>,  <28.975996, 38.215866, 49.762402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848406, 37.880753, 49.939659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568342, 0.543255, 0.617949,
		-0.758447, -0.054748, -0.649431,
		-0.318975, -0.837781, 0.443146,
		28.752714, 37.629417, 50.072601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231745, 38.281109, 49.763298>,  <28.975996, 38.215866, 49.762402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231745, 38.281109, 49.763298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.314508, 37.984814, 50.018955>,  <28.364166, 37.807037, 50.172348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.314508, 37.984814, 50.018955>,  <28.231745, 38.281109, 49.763298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314508, 37.984814, 50.018955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712339, 0.333748, 0.617402,
		-0.670643, -0.583032, -0.458598,
		0.206909, -0.740734, 0.639142,
		28.376581, 37.762592, 50.210697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617146, 37.880733, 49.943455>,  <28.231745, 38.281109, 49.763298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617146, 37.880733, 49.943455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.867275, 37.827229, 50.250980>,  <28.017353, 37.795128, 50.435497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.867275, 37.827229, 50.250980>,  <27.617146, 37.880733, 49.943455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867275, 37.827229, 50.250980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741160, 0.206551, 0.638764,
		-0.244240, -0.969250, 0.030025,
		0.625323, -0.133758, 0.768817,
		28.054873, 37.787102, 50.481625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136591, 37.662201, 50.500126>,  <27.617146, 37.880733, 49.943455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136591, 37.662201, 50.500126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.478470, 37.790840, 50.663132>,  <27.683598, 37.868023, 50.760937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.478470, 37.790840, 50.663132>,  <27.136591, 37.662201, 50.500126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478470, 37.790840, 50.663132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515529, 0.433495, 0.739129,
		0.061044, -0.841818, 0.536299,
		0.854695, 0.321596, 0.407519,
		27.734879, 37.887318, 50.785389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.398388, 38.821957, 56.905663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.224361, 38.668900, 56.579643>,  <33.119946, 38.577065, 56.384033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.224361, 38.668900, 56.579643>,  <33.398388, 38.821957, 56.905663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224361, 38.668900, 56.579643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553830, -0.827439, 0.092824,
		-0.709920, -0.411012, 0.571912,
		-0.435070, -0.382640, -0.815047,
		33.093842, 38.554108, 56.335129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286785, 38.206043, 57.141376>,  <33.398388, 38.821957, 56.905663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286785, 38.206043, 57.141376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242245, 38.184490, 56.744450>,  <33.215519, 38.171558, 56.506294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242245, 38.184490, 56.744450>,  <33.286785, 38.206043, 57.141376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242245, 38.184490, 56.744450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369481, -0.929195, 0.008991,
		-0.922543, -0.365642, 0.123374,
		-0.111351, -0.053879, -0.992319,
		33.208839, 38.168327, 56.446754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938213, 37.655724, 57.146355>,  <33.286785, 38.206043, 57.141376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938213, 37.655724, 57.146355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.094040, 37.678444, 56.778656>,  <33.187538, 37.692078, 56.558037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.094040, 37.678444, 56.778656>,  <32.938213, 37.655724, 57.146355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094040, 37.678444, 56.778656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353583, -0.930836, 0.092326,
		-0.850420, -0.360996, -0.382711,
		0.389570, 0.056805, -0.919243,
		33.210911, 37.695484, 56.502884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791454, 36.948639, 56.756302>,  <32.938213, 37.655724, 57.146355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791454, 36.948639, 56.756302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059540, 37.127037, 56.519020>,  <33.220390, 37.234077, 56.376648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059540, 37.127037, 56.519020>,  <32.791454, 36.948639, 56.756302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059540, 37.127037, 56.519020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378737, -0.892917, -0.243429,
		-0.638255, -0.061521, -0.767362,
		0.670215, 0.445998, -0.593209,
		33.260605, 37.260838, 56.341057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789673, 36.658604, 56.156528>,  <32.791454, 36.948639, 56.756302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789673, 36.658604, 56.156528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.157097, 36.815922, 56.172318>,  <33.377552, 36.910313, 56.181789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.157097, 36.815922, 56.172318>,  <32.789673, 36.658604, 56.156528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157097, 36.815922, 56.172318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347586, -0.756155, -0.554450,
		-0.188220, 0.523016, -0.831281,
		0.918563, 0.393300, 0.039470,
		33.432667, 36.933910, 56.184158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103867, 36.529522, 55.390320>,  <32.789673, 36.658604, 56.156528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103867, 36.529522, 55.390320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.408100, 36.629818, 55.629868>,  <33.590641, 36.689995, 55.773594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.408100, 36.629818, 55.629868>,  <33.103867, 36.529522, 55.390320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408100, 36.629818, 55.629868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605576, -0.606548, -0.515148,
		0.234071, 0.754472, -0.613174,
		0.760584, 0.250742, 0.598865,
		33.636276, 36.705040, 55.809528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610519, 36.731445, 54.998032>,  <33.103867, 36.529522, 55.390320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610519, 36.731445, 54.998032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823975, 36.640285, 55.323803>,  <33.952049, 36.585590, 55.519264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823975, 36.640285, 55.323803>,  <33.610519, 36.731445, 54.998032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823975, 36.640285, 55.323803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572171, -0.611860, -0.546121,
		0.622777, 0.757422, -0.196114,
		0.533638, -0.227901, 0.814427,
		33.984066, 36.571915, 55.568130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249889, 36.849319, 54.840755>,  <33.610519, 36.731445, 54.998032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249889, 36.849319, 54.840755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.287666, 36.586647, 55.140049>,  <34.310333, 36.429043, 55.319626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.287666, 36.586647, 55.140049>,  <34.249889, 36.849319, 54.840755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287666, 36.586647, 55.140049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531551, -0.602225, -0.595633,
		0.841745, 0.453975, 0.292186,
		0.094441, -0.656682, 0.748231,
		34.315998, 36.389641, 55.364517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901970, 36.676838, 54.878365>,  <34.249889, 36.849319, 54.840755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901970, 36.676838, 54.878365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726215, 36.375179, 55.073589>,  <34.620762, 36.194183, 55.190723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726215, 36.375179, 55.073589>,  <34.901970, 36.676838, 54.878365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726215, 36.375179, 55.073589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495479, -0.656657, -0.568596,
		0.749293, -0.008009, 0.662190,
		-0.439386, -0.754147, 0.488061,
		34.594398, 36.148933, 55.220009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508129, 36.245911, 54.984814>,  <34.901970, 36.676838, 54.878365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508129, 36.245911, 54.984814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170887, 36.044518, 55.060356>,  <34.968540, 35.923679, 55.105682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170887, 36.044518, 55.060356>,  <35.508129, 36.245911, 54.984814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170887, 36.044518, 55.060356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359595, -0.789011, -0.498150,
		0.399822, -0.352083, 0.846274,
		-0.843110, -0.503487, 0.188856,
		34.917953, 35.893471, 55.117012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772152, 35.669262, 55.302540>,  <35.508129, 36.245911, 54.984814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772152, 35.669262, 55.302540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401760, 35.611526, 55.162979>,  <35.179527, 35.576885, 55.079243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401760, 35.611526, 55.162979>,  <35.772152, 35.669262, 55.302540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401760, 35.611526, 55.162979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274085, -0.892514, -0.358185,
		-0.259699, -0.427300, 0.866009,
		-0.925977, -0.144340, -0.348901,
		35.123966, 35.568226, 55.058308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719917, 35.002178, 55.403515>,  <35.772152, 35.669262, 55.302540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719917, 35.002178, 55.403515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441860, 35.104187, 55.134670>,  <35.275024, 35.165394, 54.973362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441860, 35.104187, 55.134670>,  <35.719917, 35.002178, 55.403515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441860, 35.104187, 55.134670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256414, -0.785496, -0.563248,
		-0.671586, -0.563878, 0.480640,
		-0.695144, 0.255027, -0.672114,
		35.233318, 35.180695, 54.933037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265671, 34.300510, 55.235695>,  <35.719917, 35.002178, 55.403515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265671, 34.300510, 55.235695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197769, 34.568947, 54.947021>,  <35.157028, 34.730007, 54.773819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197769, 34.568947, 54.947021>,  <35.265671, 34.300510, 55.235695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197769, 34.568947, 54.947021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193024, -0.695485, -0.692129,
		-0.966398, -0.256792, -0.011476,
		-0.169752, 0.671087, -0.721683,
		35.146843, 34.770271, 54.730518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729248, 34.021286, 54.773544>,  <35.265671, 34.300510, 55.235695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729248, 34.021286, 54.773544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956894, 34.277733, 54.567604>,  <35.093483, 34.431602, 54.444038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956894, 34.277733, 54.567604>,  <34.729248, 34.021286, 54.773544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956894, 34.277733, 54.567604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085037, -0.668677, -0.738675,
		-0.817848, 0.376611, -0.435074,
		0.569117, 0.641121, -0.514850,
		35.127628, 34.470070, 54.413151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121082, 34.026768, 54.199966>,  <34.729248, 34.021286, 54.773544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121082, 34.026768, 54.199966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779957, 33.848557, 54.090992>,  <33.575283, 33.741631, 54.025608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779957, 33.848557, 54.090992>,  <34.121082, 34.026768, 54.199966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779957, 33.848557, 54.090992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521455, 0.698258, 0.490430,
		-0.028269, 0.560306, -0.827803,
		-0.852811, -0.445526, -0.272435,
		33.524113, 33.714897, 54.009262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740608, 34.570900, 54.005253>,  <34.121082, 34.026768, 54.199966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740608, 34.570900, 54.005253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.485828, 34.266792, 54.056297>,  <33.332958, 34.084328, 54.086922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.485828, 34.266792, 54.056297>,  <33.740608, 34.570900, 54.005253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485828, 34.266792, 54.056297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626393, 0.606901, 0.489186,
		-0.449357, 0.231657, -0.862794,
		-0.636953, -0.760268, 0.127607,
		33.294743, 34.038712, 54.094578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045216, 34.860718, 53.863365>,  <33.740608, 34.570900, 54.005253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045216, 34.860718, 53.863365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983200, 34.524693, 54.071312>,  <32.945992, 34.323078, 54.196079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983200, 34.524693, 54.071312>,  <33.045216, 34.860718, 53.863365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983200, 34.524693, 54.071312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773017, 0.430827, 0.465652,
		-0.615149, -0.329673, -0.716176,
		-0.155036, -0.840062, 0.519866,
		32.936691, 34.272675, 54.227272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375572, 34.752647, 53.752708>,  <33.045216, 34.860718, 53.863365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375572, 34.752647, 53.752708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485241, 34.544758, 54.076366>,  <32.551041, 34.420025, 54.270561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485241, 34.544758, 54.076366>,  <32.375572, 34.752647, 53.752708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485241, 34.544758, 54.076366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808279, 0.331358, 0.486709,
		-0.521072, -0.787458, -0.329233,
		0.274169, -0.519723, 0.809147,
		32.567493, 34.388840, 54.319111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723848, 34.544834, 54.091373>,  <32.375572, 34.752647, 53.752708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723848, 34.544834, 54.091373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.000778, 34.501217, 54.376694>,  <32.166935, 34.475048, 54.547886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.000778, 34.501217, 54.376694>,  <31.723848, 34.544834, 54.091373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000778, 34.501217, 54.376694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643808, 0.353083, 0.678855,
		-0.325877, -0.929216, 0.174246,
		0.692326, -0.109042, 0.713299,
		32.208477, 34.468506, 54.590683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319971, 34.427471, 54.780449>,  <31.723848, 34.544834, 54.091373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319971, 34.427471, 54.780449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.684858, 34.531624, 54.906975>,  <31.903791, 34.594116, 54.982891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.684858, 34.531624, 54.906975>,  <31.319971, 34.427471, 54.780449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684858, 34.531624, 54.906975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409291, 0.544666, 0.731997,
		0.018307, -0.797209, 0.603426,
		0.912220, 0.260378, 0.316319,
		31.958525, 34.609737, 55.001869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314966, 34.343204, 55.516541>,  <31.319971, 34.427471, 54.780449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314966, 34.343204, 55.516541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.607290, 34.593712, 55.407948>,  <31.782684, 34.744019, 55.342793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.607290, 34.593712, 55.407948>,  <31.314966, 34.343204, 55.516541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607290, 34.593712, 55.407948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452429, 0.742245, 0.494348,
		0.511102, -0.238447, 0.825783,
		0.730810, 0.626271, -0.271482,
		31.826532, 34.781593, 55.326504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638105, 34.617760, 56.139385>,  <31.314966, 34.343204, 55.516541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638105, 34.617760, 56.139385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.740824, 34.878979, 55.854404>,  <31.802454, 35.035709, 55.683418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.740824, 34.878979, 55.854404>,  <31.638105, 34.617760, 56.139385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740824, 34.878979, 55.854404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548194, 0.705533, 0.449117,
		0.795952, 0.275230, 0.539174,
		0.256795, 0.653048, -0.712450,
		31.817862, 35.074894, 55.640671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848698, 35.160198, 56.550110>,  <31.638105, 34.617760, 56.139385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848698, 35.160198, 56.550110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.775795, 35.309299, 56.186169>,  <31.732054, 35.398762, 55.967804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.775795, 35.309299, 56.186169>,  <31.848698, 35.160198, 56.550110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775795, 35.309299, 56.186169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399571, 0.817423, 0.414925,
		0.898402, 0.439175, -0.000039,
		-0.182256, 0.372754, -0.909856,
		31.721119, 35.421127, 55.913212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028873, 35.923626, 56.581585>,  <31.848698, 35.160198, 56.550110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028873, 35.923626, 56.581585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800285, 35.897339, 56.254391>,  <31.663134, 35.881569, 56.058075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800285, 35.897339, 56.254391>,  <32.028873, 35.923626, 56.581585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800285, 35.897339, 56.254391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448611, 0.859676, 0.244347,
		0.687149, 0.506595, -0.520756,
		-0.571467, -0.065715, -0.817990,
		31.628845, 35.877625, 56.008995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955326, 36.638401, 56.268608>,  <32.028873, 35.923626, 56.581585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955326, 36.638401, 56.268608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.652153, 36.399433, 56.163818>,  <31.470249, 36.256054, 56.100945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.652153, 36.399433, 56.163818>,  <31.955326, 36.638401, 56.268608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652153, 36.399433, 56.163818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650690, 0.720851, 0.238698,
		0.046241, 0.351380, -0.935090,
		-0.757934, -0.597416, -0.261972,
		31.424772, 36.220207, 56.085228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514280, 37.049797, 55.752735>,  <31.955326, 36.638401, 56.268608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514280, 37.049797, 55.752735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.278683, 36.744228, 55.858196>,  <31.137325, 36.560886, 55.921474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.278683, 36.744228, 55.858196>,  <31.514280, 37.049797, 55.752735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278683, 36.744228, 55.858196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747044, 0.639113, 0.182921,
		-0.308243, -0.089224, -0.947114,
		-0.588992, -0.763920, 0.263656,
		31.101986, 36.515053, 55.937294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922028, 37.156208, 55.403416>,  <31.514280, 37.049797, 55.752735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922028, 37.156208, 55.403416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.821482, 36.929409, 55.717190>,  <30.761154, 36.793331, 55.905453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.821482, 36.929409, 55.717190>,  <30.922028, 37.156208, 55.403416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821482, 36.929409, 55.717190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761076, 0.616497, 0.201728,
		-0.597978, -0.546305, -0.586492,
		-0.251366, -0.566994, 0.784431,
		30.746073, 36.759312, 55.952518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208904, 36.986176, 55.347027>,  <30.922028, 37.156208, 55.403416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208904, 36.986176, 55.347027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.314930, 36.959877, 55.731823>,  <30.378546, 36.944096, 55.962700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.314930, 36.959877, 55.731823>,  <30.208904, 36.986176, 55.347027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314930, 36.959877, 55.731823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763630, 0.594842, 0.251064,
		-0.588737, -0.801149, 0.107463,
		0.265063, -0.065749, 0.961987,
		30.394449, 36.940151, 56.020420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688671, 36.338577, 55.148281>,  <30.208904, 36.986176, 55.347027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688671, 36.338577, 55.148281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.367882, 36.274071, 54.918209>,  <29.175409, 36.235367, 54.780167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.367882, 36.274071, 54.918209>,  <29.688671, 36.338577, 55.148281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367882, 36.274071, 54.918209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361916, -0.897202, -0.253069,
		-0.475244, -0.411122, 0.777895,
		-0.801972, -0.161264, -0.575182,
		29.127291, 36.225693, 54.745655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636669, 35.662369, 55.221691>,  <29.688671, 36.338577, 55.148281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636669, 35.662369, 55.221691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.425632, 35.725994, 54.887901>,  <29.299011, 35.764168, 54.687626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.425632, 35.725994, 54.887901>,  <29.636669, 35.662369, 55.221691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425632, 35.725994, 54.887901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429371, -0.797669, -0.423514,
		-0.732999, -0.581741, 0.352547,
		-0.527592, 0.159061, -0.834474,
		29.267355, 35.773712, 54.637558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152130, 35.017815, 55.160065>,  <29.636669, 35.662369, 55.221691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152130, 35.017815, 55.160065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.182041, 35.187138, 54.798908>,  <29.199987, 35.288731, 54.582214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.182041, 35.187138, 54.798908>,  <29.152130, 35.017815, 55.160065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182041, 35.187138, 54.798908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097301, -0.904207, -0.415865,
		-0.992442, -0.056755, -0.108801,
		0.074776, 0.423308, -0.902895,
		29.204473, 35.314129, 54.528038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703014, 34.632694, 54.667313>,  <29.152130, 35.017815, 55.160065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703014, 34.632694, 54.667313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.956831, 34.833019, 54.431843>,  <29.109121, 34.953217, 54.290562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.956831, 34.833019, 54.431843>,  <28.703014, 34.632694, 54.667313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956831, 34.833019, 54.431843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014433, -0.769204, -0.638840,
		-0.772754, 0.396874, -0.495320,
		0.634541, 0.500816, -0.588677,
		29.147194, 34.983265, 54.255241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533911, 34.272320, 54.079086>,  <28.703014, 34.632694, 54.667313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533911, 34.272320, 54.079086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.855213, 34.475163, 53.954109>,  <29.047995, 34.596870, 53.879124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.855213, 34.475163, 53.954109>,  <28.533911, 34.272320, 54.079086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855213, 34.475163, 53.954109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151970, -0.681677, -0.715697,
		-0.575922, 0.527405, -0.624626,
		0.803255, 0.507110, -0.312443,
		29.096189, 34.627296, 53.860374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554770, 34.359234, 53.351650>,  <28.533911, 34.272320, 54.079086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554770, 34.359234, 53.351650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.942207, 34.415073, 53.433952>,  <29.174671, 34.448578, 53.483334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.942207, 34.415073, 53.433952>,  <28.554770, 34.359234, 53.351650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942207, 34.415073, 53.433952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248291, -0.586924, -0.770630,
		0.013187, 0.797517, -0.603153,
		0.968596, 0.139595, 0.205756,
		29.232786, 34.456951, 53.495678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938646, 34.563465, 52.700264>,  <28.554770, 34.359234, 53.351650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938646, 34.563465, 52.700264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.211031, 34.414219, 52.952320>,  <29.374462, 34.324673, 53.103554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.211031, 34.414219, 52.952320>,  <28.938646, 34.563465, 52.700264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211031, 34.414219, 52.952320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266662, -0.675064, -0.687881,
		0.682044, 0.636454, -0.360197,
		0.680961, -0.373114, 0.630141,
		29.415319, 34.302284, 53.141361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553356, 34.421371, 52.313999>,  <28.938646, 34.563465, 52.700264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553356, 34.421371, 52.313999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.600891, 34.198154, 52.642502>,  <29.629412, 34.064224, 52.839603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.600891, 34.198154, 52.642502>,  <29.553356, 34.421371, 52.313999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600891, 34.198154, 52.642502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328950, -0.758282, -0.562850,
		0.936840, 0.337041, 0.093457,
		0.118837, -0.558043, 0.821258,
		29.636541, 34.030743, 52.888878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174740, 34.108875, 52.114017>,  <29.553356, 34.421371, 52.313999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174740, 34.108875, 52.114017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.981150, 33.905170, 52.398670>,  <29.864996, 33.782948, 52.569462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.981150, 33.905170, 52.398670>,  <30.174740, 34.108875, 52.114017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981150, 33.905170, 52.398670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388994, -0.853656, -0.346347,
		0.783869, 0.109196, 0.611249,
		-0.483977, -0.509263, 0.711631,
		29.835957, 33.752392, 52.612160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638243, 33.650406, 52.420349>,  <30.174740, 34.108875, 52.114017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638243, 33.650406, 52.420349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.291491, 33.490826, 52.539921>,  <30.083439, 33.395077, 52.611664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.291491, 33.490826, 52.539921>,  <30.638243, 33.650406, 52.420349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291491, 33.490826, 52.539921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329551, -0.908528, -0.256854,
		0.374056, -0.124149, 0.919059,
		-0.866879, -0.398954, 0.298927,
		30.031427, 33.371140, 52.629601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712851, 33.074921, 52.868813>,  <30.638243, 33.650406, 52.420349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712851, 33.074921, 52.868813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.364546, 33.021461, 52.679535>,  <30.155563, 32.989384, 52.565968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.364546, 33.021461, 52.679535>,  <30.712851, 33.074921, 52.868813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364546, 33.021461, 52.679535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293141, -0.913732, -0.281357,
		-0.394768, -0.383707, 0.834821,
		-0.870762, -0.133650, -0.473193,
		30.103317, 32.981365, 52.537579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603174, 32.364502, 53.084187>,  <30.712851, 33.074921, 52.868813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603174, 32.364502, 53.084187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.356855, 32.483704, 52.792439>,  <30.209064, 32.555225, 52.617390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.356855, 32.483704, 52.792439>,  <30.603174, 32.364502, 53.084187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356855, 32.483704, 52.792439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273341, -0.787421, -0.552497,
		-0.738968, -0.539596, 0.403438,
		-0.615801, 0.298002, -0.729373,
		30.172115, 32.573105, 52.573627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186707, 31.738396, 52.883480>,  <30.603174, 32.364502, 53.084187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186707, 31.738396, 52.883480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.144499, 31.962236, 52.554672>,  <30.119173, 32.096542, 52.357388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.144499, 31.962236, 52.554672>,  <30.186707, 31.738396, 52.883480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144499, 31.962236, 52.554672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174422, -0.803402, -0.569318,
		-0.979001, -0.203452, -0.012831,
		-0.105521, 0.559601, -0.822017,
		30.112843, 32.130116, 52.308067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249302, 31.304335, 52.283329>,  <30.186707, 31.738396, 52.883480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249302, 31.304335, 52.283329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.237783, 31.634592, 52.057945>,  <30.230873, 31.832747, 51.922714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.237783, 31.634592, 52.057945>,  <30.249302, 31.304335, 52.283329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237783, 31.634592, 52.057945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109935, -0.557655, -0.822761,
		-0.993522, -0.085636, -0.074709,
		-0.028796, 0.825644, -0.563457,
		30.229145, 31.882286, 51.888908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.165224, 37.442562, 51.290524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.437010, 37.730656, 51.234539>,  <27.600082, 37.903511, 51.200947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.437010, 37.730656, 51.234539>,  <27.165224, 37.442562, 51.290524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437010, 37.730656, 51.234539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548993, 0.625626, 0.554255,
		0.486756, -0.299760, 0.820495,
		0.679467, 0.720233, -0.139960,
		27.640850, 37.946724, 51.192551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257948, 37.733391, 51.888378>,  <27.165224, 37.442562, 51.290524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257948, 37.733391, 51.888378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.383896, 38.028400, 51.649406>,  <27.459465, 38.205406, 51.506023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.383896, 38.028400, 51.649406>,  <27.257948, 37.733391, 51.888378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383896, 38.028400, 51.649406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612122, 0.638839, 0.466037,
		0.725372, 0.218957, 0.652604,
		0.314867, 0.737524, -0.597425,
		27.478355, 38.249657, 51.470181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334373, 38.296570, 52.272541>,  <27.257948, 37.733391, 51.888378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334373, 38.296570, 52.272541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.310238, 38.445118, 51.901932>,  <27.295757, 38.534248, 51.679565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.310238, 38.445118, 51.901932>,  <27.334373, 38.296570, 52.272541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310238, 38.445118, 51.901932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451051, 0.817897, 0.357208,
		0.890456, 0.439462, 0.118159,
		-0.060338, 0.371374, -0.926521,
		27.292137, 38.556530, 51.623974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477686, 39.021912, 52.355003>,  <27.334373, 38.296570, 52.272541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477686, 39.021912, 52.355003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.304302, 39.007973, 51.994804>,  <27.200272, 38.999607, 51.778687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.304302, 39.007973, 51.994804>,  <27.477686, 39.021912, 52.355003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304302, 39.007973, 51.994804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423182, 0.890096, 0.169253,
		0.795631, 0.454439, -0.400571,
		-0.433462, -0.034852, -0.900498,
		27.174263, 38.997517, 51.724655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.652328, 39.628532, 51.893448>,  <27.477686, 39.021912, 52.355003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.652328, 39.628532, 51.893448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.295801, 39.484371, 51.783424>,  <27.081884, 39.397873, 51.717411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.295801, 39.484371, 51.783424>,  <27.652328, 39.628532, 51.893448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.295801, 39.484371, 51.783424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427155, 0.870895, 0.243065,
		0.151941, 0.334140, -0.930196,
		-0.891321, -0.360406, -0.275054,
		27.028404, 39.376251, 51.700909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312286, 40.244499, 51.555195>,  <27.652328, 39.628532, 51.893448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312286, 40.244499, 51.555195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.009598, 39.992332, 51.624424>,  <26.827986, 39.841034, 51.665962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.009598, 39.992332, 51.624424>,  <27.312286, 40.244499, 51.555195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009598, 39.992332, 51.624424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547289, 0.755697, 0.359717,
		-0.357562, 0.177484, -0.916869,
		-0.756720, -0.630413, 0.173074,
		26.782581, 39.803207, 51.676346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767586, 40.616123, 51.372017>,  <27.312286, 40.244499, 51.555195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767586, 40.616123, 51.372017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.598347, 40.333260, 51.598614>,  <26.496803, 40.163540, 51.734573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.598347, 40.333260, 51.598614>,  <26.767586, 40.616123, 51.372017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598347, 40.333260, 51.598614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643291, 0.674733, 0.361819,
		-0.638095, -0.211335, -0.740387,
		-0.423098, -0.707159, 0.566493,
		26.471416, 40.121113, 51.768562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.038767, 40.626831, 51.132156>,  <26.767586, 40.616123, 51.372017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.038767, 40.626831, 51.132156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.058510, 40.428745, 51.479103>,  <26.070354, 40.309895, 51.687271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.058510, 40.428745, 51.479103>,  <26.038767, 40.626831, 51.132156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058510, 40.428745, 51.479103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830838, 0.461618, 0.310834,
		-0.554322, -0.735983, -0.388660,
		0.049356, -0.495216, 0.867367,
		26.073317, 40.280182, 51.739315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364748, 40.551964, 51.357918>,  <26.038767, 40.626831, 51.132156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.364748, 40.551964, 51.357918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.531488, 40.478497, 51.714008>,  <25.631533, 40.434414, 51.927662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.531488, 40.478497, 51.714008>,  <25.364748, 40.551964, 51.357918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531488, 40.478497, 51.714008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728782, 0.517782, 0.448084,
		-0.543242, -0.835564, 0.081982,
		0.416851, -0.183671, 0.890225,
		25.656544, 40.423397, 51.981075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.788322, 40.339207, 51.925400>,  <25.364748, 40.551964, 51.357918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.788322, 40.339207, 51.925400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.113497, 40.477825, 52.112606>,  <25.308601, 40.560997, 52.224930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.113497, 40.477825, 52.112606>,  <24.788322, 40.339207, 51.925400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113497, 40.477825, 52.112606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570541, 0.634997, 0.520828,
		-0.116698, -0.690423, 0.713932,
		0.812936, 0.346547, 0.468017,
		25.357378, 40.581791, 52.253010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.685631, 40.387127, 52.663380>,  <24.788322, 40.339207, 51.925400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.685631, 40.387127, 52.663380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.977194, 40.650978, 52.590080>,  <25.152132, 40.809288, 52.546101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.977194, 40.650978, 52.590080>,  <24.685631, 40.387127, 52.663380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.977194, 40.650978, 52.590080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502995, 0.697575, 0.510279,
		0.464425, -0.279775, 0.840259,
		0.728907, 0.659632, -0.183246,
		25.195866, 40.848869, 52.535107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.934134, 40.592640, 53.326260>,  <24.685631, 40.387127, 52.663380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.934134, 40.592640, 53.326260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.030106, 40.867020, 53.051479>,  <25.087688, 41.031647, 52.886612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.030106, 40.867020, 53.051479>,  <24.934134, 40.592640, 53.326260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.030106, 40.867020, 53.051479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278798, 0.726500, 0.628067,
		0.929895, 0.040830, 0.365551,
		0.239929, 0.685952, -0.686953,
		25.102085, 41.072803, 52.845394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530251, 41.049725, 53.445274>,  <24.934134, 40.592640, 53.326260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530251, 41.049725, 53.445274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.243336, 41.231728, 53.234196>,  <25.071186, 41.340927, 53.107548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.243336, 41.231728, 53.234196>,  <25.530251, 41.049725, 53.445274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243336, 41.231728, 53.234196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159418, 0.630089, 0.759983,
		0.678294, 0.629252, -0.379419,
		-0.717288, 0.455006, -0.527700,
		25.028149, 41.368229, 53.075886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.553255, 40.651062, 54.164452>,  <25.530251, 41.049725, 53.445274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.553255, 40.651062, 54.164452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.768555, 40.914375, 54.374958>,  <25.897734, 41.072365, 54.501263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.768555, 40.914375, 54.374958>,  <25.553255, 40.651062, 54.164452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768555, 40.914375, 54.374958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703592, -0.694724, 0.149389,
		0.463948, 0.289867, -0.837096,
		0.538248, 0.658283, 0.526263,
		25.930029, 41.111858, 54.532837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306355, 40.670670, 53.869366>,  <25.553255, 40.651062, 54.164452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306355, 40.670670, 53.869366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.275898, 40.772499, 54.254986>,  <26.257624, 40.833595, 54.486359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.275898, 40.772499, 54.254986>,  <26.306355, 40.670670, 53.869366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275898, 40.772499, 54.254986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715491, -0.659450, 0.230647,
		0.694460, 0.707333, -0.131931,
		-0.076142, 0.254570, 0.964052,
		26.253056, 40.848869, 54.544201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992252, 40.744328, 54.049198>,  <26.306355, 40.670670, 53.869366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992252, 40.744328, 54.049198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.803204, 40.707211, 54.399746>,  <26.689774, 40.684940, 54.610073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.803204, 40.707211, 54.399746>,  <26.992252, 40.744328, 54.049198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803204, 40.707211, 54.399746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710482, -0.628464, 0.316619,
		0.521385, 0.772284, 0.362954,
		-0.472624, -0.092792, 0.876366,
		26.661417, 40.679375, 54.662655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550846, 40.807823, 54.615326>,  <26.992252, 40.744328, 54.049198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550846, 40.807823, 54.615326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.220211, 40.615131, 54.731728>,  <27.021830, 40.499516, 54.801567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.220211, 40.615131, 54.731728>,  <27.550846, 40.807823, 54.615326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.220211, 40.615131, 54.731728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557209, -0.773222, 0.302730,
		0.079176, 0.412384, 0.907563,
		-0.826589, -0.481734, 0.291005,
		26.972235, 40.470612, 54.819031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760263, 40.478970, 55.221626>,  <27.550846, 40.807823, 54.615326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760263, 40.478970, 55.221626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.424683, 40.291405, 55.111149>,  <27.223335, 40.178867, 55.044861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.424683, 40.291405, 55.111149>,  <27.760263, 40.478970, 55.221626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424683, 40.291405, 55.111149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381201, -0.868558, 0.316690,
		-0.388392, 0.160400, 0.907427,
		-0.838950, -0.468912, -0.276196,
		27.172998, 40.150730, 55.028290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715418, 39.927223, 55.748356>,  <27.760263, 40.478970, 55.221626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715418, 39.927223, 55.748356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.482826, 39.819778, 55.441181>,  <27.343271, 39.755310, 55.256878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.482826, 39.819778, 55.441181>,  <27.715418, 39.927223, 55.748356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482826, 39.819778, 55.441181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300903, -0.947994, 0.103753,
		-0.755870, -0.170745, 0.632066,
		-0.581479, -0.268614, -0.767938,
		27.308382, 39.739193, 55.210800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301952, 39.347599, 56.050777>,  <27.715418, 39.927223, 55.748356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301952, 39.347599, 56.050777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.291674, 39.312393, 55.652462>,  <27.285507, 39.291267, 55.413471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.291674, 39.312393, 55.652462>,  <27.301952, 39.347599, 56.050777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291674, 39.312393, 55.652462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346247, -0.935241, 0.073731,
		-0.937791, -0.342894, 0.054508,
		-0.025696, -0.088018, -0.995788,
		27.283964, 39.285988, 55.353725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062248, 38.670143, 56.000572>,  <27.301952, 39.347599, 56.050777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062248, 38.670143, 56.000572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.204542, 38.750782, 55.635540>,  <27.289919, 38.799164, 55.416519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.204542, 38.750782, 55.635540>,  <27.062248, 38.670143, 56.000572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204542, 38.750782, 55.635540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390119, -0.919350, -0.051020,
		-0.849270, -0.337867, -0.405693,
		0.355736, 0.201599, -0.912584,
		27.311262, 38.811260, 55.361763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.909266, 38.161968, 55.621128>,  <27.062248, 38.670143, 56.000572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.909266, 38.161968, 55.621128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.221710, 38.308403, 55.418804>,  <27.409178, 38.396263, 55.297409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.221710, 38.308403, 55.418804>,  <26.909266, 38.161968, 55.621128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221710, 38.308403, 55.418804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277485, -0.929222, -0.244027,
		-0.559342, 0.050259, -0.827412,
		0.781114, 0.366089, -0.505807,
		27.456045, 38.418228, 55.267063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877092, 37.940502, 54.927532>,  <26.909266, 38.161968, 55.621128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877092, 37.940502, 54.927532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.266947, 38.014133, 54.978447>,  <27.500858, 38.058311, 55.008995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.266947, 38.014133, 54.978447>,  <26.877092, 37.940502, 54.927532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266947, 38.014133, 54.978447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217924, -0.910104, -0.352449,
		0.050969, 0.371249, -0.927133,
		0.974634, 0.184081, 0.127291,
		27.559338, 38.069359, 55.016636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194683, 37.683792, 54.397488>,  <26.877092, 37.940502, 54.927532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194683, 37.683792, 54.397488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.481529, 37.716553, 54.674339>,  <27.653637, 37.736210, 54.840450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.481529, 37.716553, 54.674339>,  <27.194683, 37.683792, 54.397488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481529, 37.716553, 54.674339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413896, -0.849037, -0.328370,
		0.560745, 0.521947, -0.642757,
		0.717116, 0.081903, 0.692125,
		27.696665, 37.741123, 54.881977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702536, 37.529613, 54.096523>,  <27.194683, 37.683792, 54.397488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702536, 37.529613, 54.096523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.861319, 37.483505, 54.460751>,  <27.956589, 37.455841, 54.679287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.861319, 37.483505, 54.460751>,  <27.702536, 37.529613, 54.096523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861319, 37.483505, 54.460751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491583, -0.811091, -0.316981,
		0.775094, 0.573449, -0.265302,
		0.396956, -0.115272, 0.910570,
		27.980406, 37.448925, 54.733921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501238, 37.504749, 54.108593>,  <27.702536, 37.529613, 54.096523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501238, 37.504749, 54.108593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.410376, 37.353310, 54.467495>,  <28.355858, 37.262447, 54.682835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.410376, 37.353310, 54.467495>,  <28.501238, 37.504749, 54.108593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410376, 37.353310, 54.467495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830589, -0.556348, -0.024472,
		0.508450, 0.739690, 0.440836,
		-0.227156, -0.378597, 0.897254,
		28.342228, 37.239731, 54.736671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102064, 37.397312, 54.538940>,  <28.501238, 37.504749, 54.108593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102064, 37.397312, 54.538940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.816099, 37.153229, 54.675495>,  <28.644520, 37.006779, 54.757427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.816099, 37.153229, 54.675495>,  <29.102064, 37.397312, 54.538940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816099, 37.153229, 54.675495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600608, -0.785912, -0.147011,
		0.358007, 0.099939, 0.928355,
		-0.714913, -0.610209, 0.341386,
		28.601625, 36.970165, 54.777912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414825, 37.031616, 55.021252>,  <29.102064, 37.397312, 54.538940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414825, 37.031616, 55.021252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.112843, 36.801365, 54.895588>,  <28.931652, 36.663216, 54.820190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.112843, 36.801365, 54.895588>,  <29.414825, 37.031616, 55.021252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112843, 36.801365, 54.895588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651680, -0.711999, -0.261476,
		-0.073165, -0.402131, 0.912654,
		-0.754957, -0.575627, -0.314155,
		28.886356, 36.628677, 54.801342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504475, 37.056557, 55.731564>,  <29.414825, 37.031616, 55.021252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504475, 37.056557, 55.731564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.793060, 37.101326, 56.004902>,  <29.966211, 37.128189, 56.168907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.793060, 37.101326, 56.004902>,  <29.504475, 37.056557, 55.731564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793060, 37.101326, 56.004902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459705, 0.815423, 0.351791,
		-0.517844, -0.567943, 0.639749,
		0.721463, 0.111922, 0.683348,
		30.009499, 37.134903, 56.209908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198359, 36.925133, 56.411041>,  <29.504475, 37.056557, 55.731564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198359, 36.925133, 56.411041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.529072, 37.145912, 56.454453>,  <29.727499, 37.278381, 56.480499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.529072, 37.145912, 56.454453>,  <29.198359, 36.925133, 56.411041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529072, 37.145912, 56.454453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511979, 0.658427, 0.551681,
		0.233041, -0.511686, 0.826964,
		0.826783, 0.551952, 0.108531,
		29.777107, 37.311497, 56.487011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177588, 37.203922, 57.093319>,  <29.198359, 36.925133, 56.411041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177588, 37.203922, 57.093319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.435877, 37.454330, 56.918446>,  <29.590851, 37.604576, 56.813522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.435877, 37.454330, 56.918446>,  <29.177588, 37.203922, 57.093319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435877, 37.454330, 56.918446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336119, 0.747142, 0.573413,
		0.685609, -0.223322, 0.692869,
		0.645728, 0.626024, -0.437184,
		29.629595, 37.642139, 56.787289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412758, 37.612869, 57.680088>,  <29.177588, 37.203922, 57.093319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412758, 37.612869, 57.680088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.543451, 37.808022, 57.356308>,  <29.621866, 37.925114, 57.162041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.543451, 37.808022, 57.356308>,  <29.412758, 37.612869, 57.680088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543451, 37.808022, 57.356308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221812, 0.872122, 0.436124,
		0.918720, 0.037052, 0.393167,
		0.326730, 0.487885, -0.809454,
		29.641470, 37.954388, 57.113472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024368, 38.113838, 57.810310>,  <29.412758, 37.612869, 57.680088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024368, 38.113838, 57.810310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.823734, 38.247898, 57.491291>,  <29.703354, 38.328335, 57.299877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.823734, 38.247898, 57.491291>,  <30.024368, 38.113838, 57.810310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823734, 38.247898, 57.491291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297397, 0.798921, 0.522763,
		0.812385, 0.499398, -0.301052,
		-0.501584, 0.335153, -0.797550,
		29.673260, 38.348442, 57.252026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220058, 38.909718, 57.701183>,  <30.024368, 38.113838, 57.810310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220058, 38.909718, 57.701183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.884293, 38.833122, 57.497726>,  <29.682833, 38.787167, 57.375652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.884293, 38.833122, 57.497726>,  <30.220058, 38.909718, 57.701183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884293, 38.833122, 57.497726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383109, 0.872295, 0.303857,
		0.385502, 0.449927, -0.805577,
		-0.839414, -0.191486, -0.508642,
		29.632469, 38.775677, 57.345135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147230, 39.455093, 57.258747>,  <30.220058, 38.909718, 57.701183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147230, 39.455093, 57.258747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.777069, 39.303608, 57.253014>,  <29.554974, 39.212715, 57.249573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.777069, 39.303608, 57.253014>,  <30.147230, 39.455093, 57.258747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777069, 39.303608, 57.253014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373901, 0.906143, 0.197746,
		-0.061899, 0.188355, -0.980148,
		-0.925401, -0.378718, -0.014337,
		29.499449, 39.189991, 57.248714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568832, 39.565666, 56.677925>,  <30.147230, 39.455093, 57.258747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568832, 39.565666, 56.677925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.720308, 39.861839, 56.455807>,  <30.811193, 40.039543, 56.322536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.720308, 39.861839, 56.455807>,  <30.568832, 39.565666, 56.677925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720308, 39.861839, 56.455807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807975, -0.557109, -0.191850,
		-0.451412, -0.376012, -0.809224,
		0.378687, 0.740436, -0.555293,
		30.833914, 40.083969, 56.289219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929068, 39.293701, 55.966171>,  <30.568832, 39.565666, 56.677925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929068, 39.293701, 55.966171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.115387, 39.631195, 56.072865>,  <31.227179, 39.833691, 56.136879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.115387, 39.631195, 56.072865>,  <30.929068, 39.293701, 55.966171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115387, 39.631195, 56.072865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842994, -0.331452, -0.423676,
		-0.269062, 0.422200, -0.865652,
		0.465798, 0.843734, 0.266730,
		31.255127, 39.884315, 56.152885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296656, 39.613876, 55.395119>,  <30.929068, 39.293701, 55.966171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296656, 39.613876, 55.395119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.467031, 39.741219, 55.733875>,  <31.569258, 39.817623, 55.937130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.467031, 39.741219, 55.733875>,  <31.296656, 39.613876, 55.395119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467031, 39.741219, 55.733875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861746, -0.427909, -0.272557,
		0.275622, 0.845899, -0.456605,
		0.425941, 0.318354, 0.846891,
		31.594814, 39.836723, 55.987942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910530, 39.823498, 55.159000>,  <31.296656, 39.613876, 55.395119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910530, 39.823498, 55.159000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.938786, 39.783703, 55.556011>,  <31.955738, 39.759827, 55.794216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.938786, 39.783703, 55.556011>,  <31.910530, 39.823498, 55.159000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938786, 39.783703, 55.556011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922525, -0.371955, -0.102941,
		0.379417, 0.922904, 0.065506,
		0.070639, -0.099488, 0.992528,
		31.959978, 39.753857, 55.853771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673824, 39.837818, 55.274834>,  <31.910530, 39.823498, 55.159000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673824, 39.837818, 55.274834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.494530, 39.685394, 55.598282>,  <32.386951, 39.593941, 55.792351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.494530, 39.685394, 55.598282>,  <32.673824, 39.837818, 55.274834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494530, 39.685394, 55.598282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740329, -0.665225, 0.096895,
		0.500995, 0.642080, 0.580290,
		-0.448238, -0.381062, 0.808625,
		32.360058, 39.571075, 55.840870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129982, 39.724831, 55.808094>,  <32.673824, 39.837818, 55.274834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129982, 39.724831, 55.808094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.829678, 39.483894, 55.916569>,  <32.649494, 39.339333, 55.981651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.829678, 39.483894, 55.916569>,  <33.129982, 39.724831, 55.808094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829678, 39.483894, 55.916569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635086, -0.771101, 0.045481,
		0.181715, 0.206371, 0.961452,
		-0.750763, -0.602340, 0.271184,
		32.604450, 39.303192, 55.997925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387569, 39.331448, 56.341702>,  <33.129982, 39.724831, 55.808094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387569, 39.331448, 56.341702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.098137, 39.105705, 56.182732>,  <32.924477, 38.970261, 56.087349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.098137, 39.105705, 56.182732>,  <33.387569, 39.331448, 56.341702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098137, 39.105705, 56.182732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639533, -0.764754, -0.078410,
		-0.259679, -0.310900, 0.914280,
		-0.723577, -0.564351, -0.397421,
		32.881065, 38.936401, 56.063507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<26.881706, 43.660736, 52.090569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722799, 43.308033, 51.988834>,  <26.627455, 43.096413, 51.927795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722799, 43.308033, 51.988834>,  <26.881706, 43.660736, 52.090569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722799, 43.308033, 51.988834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795416, -0.192620, -0.574640,
		0.457703, -0.430586, 0.777884,
		-0.397268, -0.881756, -0.254332,
		26.603619, 43.043507, 51.912533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418886, 43.089325, 52.355179>,  <26.881706, 43.660736, 52.090569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418886, 43.089325, 52.355179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174364, 42.939411, 52.076370>,  <27.027651, 42.849461, 51.909084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174364, 42.939411, 52.076370>,  <27.418886, 43.089325, 52.355179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174364, 42.939411, 52.076370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787656, -0.373658, -0.489876,
		-0.076848, -0.848477, 0.523622,
		-0.611304, -0.374788, -0.697023,
		26.990973, 42.826973, 51.867264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654371, 42.419491, 52.208561>,  <27.418886, 43.089325, 52.355179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654371, 42.419491, 52.208561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426996, 42.499493, 51.889343>,  <27.290571, 42.547493, 51.697811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426996, 42.499493, 51.889343>,  <27.654371, 42.419491, 52.208561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426996, 42.499493, 51.889343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686736, -0.418822, -0.594122,
		-0.453068, -0.885767, 0.100720,
		-0.568438, 0.200010, -0.798044,
		27.256464, 42.559494, 51.649929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695625, 41.878963, 51.853065>,  <27.654371, 42.419491, 52.208561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695625, 41.878963, 51.853065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563551, 42.118988, 51.561615>,  <27.484306, 42.263004, 51.386745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563551, 42.118988, 51.561615>,  <27.695625, 41.878963, 51.853065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563551, 42.118988, 51.561615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739694, -0.315032, -0.594650,
		-0.586369, -0.735307, -0.339845,
		-0.330188, 0.600066, -0.728627,
		27.464495, 42.299007, 51.343025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639263, 41.433548, 51.312073>,  <27.695625, 41.878963, 51.853065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639263, 41.433548, 51.312073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691149, 41.799221, 51.158478>,  <27.722281, 42.018623, 51.066319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691149, 41.799221, 51.158478>,  <27.639263, 41.433548, 51.312073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691149, 41.799221, 51.158478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737485, -0.347811, -0.578916,
		-0.662790, -0.208093, -0.719310,
		0.129716, 0.914180, -0.383991,
		27.730064, 42.073475, 51.043282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760815, 41.378647, 50.622860>,  <27.639263, 41.433548, 51.312073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760815, 41.378647, 50.622860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866768, 41.763515, 50.648346>,  <27.930340, 41.994438, 50.663639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866768, 41.763515, 50.648346>,  <27.760815, 41.378647, 50.622860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866768, 41.763515, 50.648346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847816, -0.200900, -0.490762,
		-0.459397, 0.184015, -0.868961,
		0.264882, 0.962173, 0.063718,
		27.946232, 42.052166, 50.667461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927874, 41.551201, 49.972504>,  <27.760815, 41.378647, 50.622860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927874, 41.551201, 49.972504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115116, 41.804016, 50.219536>,  <28.227461, 41.955704, 50.367756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115116, 41.804016, 50.219536>,  <27.927874, 41.551201, 49.972504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115116, 41.804016, 50.219536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875163, -0.234829, -0.423018,
		-0.122337, 0.738501, -0.663061,
		0.468106, 0.632037, 0.617581,
		28.255548, 41.993626, 50.404812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245930, 42.143436, 49.606350>,  <27.927874, 41.551201, 49.972504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245930, 42.143436, 49.606350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445604, 42.144440, 49.952946>,  <28.565409, 42.145042, 50.160904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445604, 42.144440, 49.952946>,  <28.245930, 42.143436, 49.606350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445604, 42.144440, 49.952946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865349, 0.049940, -0.498675,
		-0.044523, 0.998749, 0.022759,
		0.499188, 0.002508, 0.866490,
		28.595360, 42.145191, 50.212894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851892, 42.633659, 49.504234>,  <28.245930, 42.143436, 49.606350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851892, 42.633659, 49.504234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936069, 42.388077, 49.808544>,  <28.986576, 42.240726, 49.991131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936069, 42.388077, 49.808544>,  <28.851892, 42.633659, 49.504234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936069, 42.388077, 49.808544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841947, -0.281666, -0.460206,
		0.496830, 0.737376, 0.457642,
		0.210443, -0.613955, 0.760772,
		28.999203, 42.203892, 50.036777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581394, 42.697357, 49.549301>,  <28.851892, 42.633659, 49.504234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581394, 42.697357, 49.549301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466593, 42.364185, 49.738552>,  <29.397713, 42.164280, 49.852104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466593, 42.364185, 49.738552>,  <29.581394, 42.697357, 49.549301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466593, 42.364185, 49.738552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672544, -0.526918, -0.519655,
		0.682139, 0.169059, 0.711411,
		-0.287003, -0.832933, 0.473131,
		29.380491, 42.114307, 49.880493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182800, 42.403591, 49.740704>,  <29.581394, 42.697357, 49.549301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182800, 42.403591, 49.740704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909807, 42.111961, 49.761360>,  <29.746012, 41.936985, 49.773754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909807, 42.111961, 49.761360>,  <30.182800, 42.403591, 49.740704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909807, 42.111961, 49.761360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606397, -0.604258, -0.516870,
		0.408044, -0.321437, 0.854505,
		-0.682483, -0.729075, 0.051645,
		29.705063, 41.893238, 49.776855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644690, 41.933796, 49.867107>,  <30.182800, 42.403591, 49.740704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644690, 41.933796, 49.867107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299154, 41.759949, 49.765213>,  <30.091833, 41.655640, 49.704075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299154, 41.759949, 49.765213>,  <30.644690, 41.933796, 49.867107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299154, 41.759949, 49.765213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500664, -0.684650, -0.529708,
		0.055815, -0.585120, 0.809024,
		-0.863840, -0.434615, -0.254735,
		30.040003, 41.629566, 49.688793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194229, 41.685192, 50.410831>,  <30.644690, 41.933796, 49.867107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194229, 41.685192, 50.410831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425835, 41.996422, 50.508282>,  <31.564798, 42.183159, 50.566750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425835, 41.996422, 50.508282>,  <31.194229, 41.685192, 50.410831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425835, 41.996422, 50.508282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559835, 0.162184, 0.812577,
		0.592731, -0.606879, 0.529498,
		0.579012, 0.778071, 0.243620,
		31.599539, 42.229843, 50.581367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381754, 41.601311, 51.101299>,  <31.194229, 41.685192, 50.410831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381754, 41.601311, 51.101299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440376, 41.992863, 51.044285>,  <31.475550, 42.227795, 51.010078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440376, 41.992863, 51.044285>,  <31.381754, 41.601311, 51.101299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440376, 41.992863, 51.044285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605332, 0.202708, 0.769729,
		0.782365, -0.026527, 0.622255,
		0.146555, 0.978880, -0.142534,
		31.484343, 42.286526, 51.001526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777559, 41.957527, 51.697052>,  <31.381754, 41.601311, 51.101299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777559, 41.957527, 51.697052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563505, 42.238388, 51.509174>,  <31.435072, 42.406906, 51.396450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563505, 42.238388, 51.509174>,  <31.777559, 41.957527, 51.697052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563505, 42.238388, 51.509174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600085, 0.075376, 0.796377,
		0.594582, 0.708025, 0.381015,
		-0.535136, 0.702153, -0.469692,
		31.402964, 42.449036, 51.368267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570316, 42.316093, 52.256744>,  <31.777559, 41.957527, 51.697052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570316, 42.316093, 52.256744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321907, 42.450272, 51.973392>,  <31.172861, 42.530781, 51.803383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321907, 42.450272, 51.973392>,  <31.570316, 42.316093, 52.256744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321907, 42.450272, 51.973392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687101, 0.201858, 0.697958,
		0.377121, 0.920178, 0.105128,
		-0.621025, 0.335448, -0.708380,
		31.135599, 42.550907, 51.760880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338524, 42.987381, 52.498463>,  <31.570316, 42.316093, 52.256744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338524, 42.987381, 52.498463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085125, 42.812912, 52.242828>,  <30.933086, 42.708229, 52.089447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085125, 42.812912, 52.242828>,  <31.338524, 42.987381, 52.498463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085125, 42.812912, 52.242828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748318, 0.135371, 0.649381,
		-0.196727, 0.889623, -0.412152,
		-0.633497, -0.436172, -0.639090,
		30.895077, 42.682060, 52.051102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823219, 43.311459, 52.709202>,  <31.338524, 42.987381, 52.498463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823219, 43.311459, 52.709202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662003, 43.026634, 52.479237>,  <30.565271, 42.855740, 52.341259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662003, 43.026634, 52.479237>,  <30.823219, 43.311459, 52.709202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662003, 43.026634, 52.479237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785798, -0.052755, 0.616229,
		-0.469125, 0.700129, -0.538276,
		-0.403043, -0.712065, -0.574909,
		30.541090, 42.813015, 52.306763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122301, 43.456669, 52.498642>,  <30.823219, 43.311459, 52.709202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122301, 43.456669, 52.498642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142385, 43.062572, 52.433197>,  <30.154436, 42.826115, 52.393929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142385, 43.062572, 52.433197>,  <30.122301, 43.456669, 52.498642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142385, 43.062572, 52.433197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889246, -0.118682, 0.441765,
		-0.454665, 0.123312, -0.882085,
		0.050213, -0.985245, -0.163615,
		30.157450, 42.766998, 52.384113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424782, 43.254238, 52.297028>,  <30.122301, 43.456669, 52.498642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424782, 43.254238, 52.297028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597816, 42.916153, 52.422558>,  <29.701637, 42.713303, 52.497875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597816, 42.916153, 52.422558>,  <29.424782, 43.254238, 52.297028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597816, 42.916153, 52.422558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891160, -0.348050, 0.291024,
		-0.136750, -0.405562, -0.903780,
		0.432589, -0.845211, 0.313825,
		29.727592, 42.662590, 52.516705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930746, 42.792450, 52.167439>,  <29.424782, 43.254238, 52.297028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930746, 42.792450, 52.167439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146112, 42.590942, 52.437645>,  <29.275331, 42.470039, 52.599770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146112, 42.590942, 52.437645>,  <28.930746, 42.792450, 52.167439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146112, 42.590942, 52.437645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838102, -0.403564, 0.367044,
		0.087708, -0.763775, -0.639496,
		0.538417, -0.503771, 0.675517,
		29.307638, 42.439812, 52.640301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639408, 42.128277, 52.197319>,  <28.930746, 42.792450, 52.167439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639408, 42.128277, 52.197319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821217, 42.181477, 52.549618>,  <28.930302, 42.213398, 52.760998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821217, 42.181477, 52.549618>,  <28.639408, 42.128277, 52.197319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821217, 42.181477, 52.549618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763744, -0.450639, 0.462191,
		0.458371, -0.882743, -0.103248,
		0.454524, 0.133000, 0.880749,
		28.957573, 42.221378, 52.813843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422848, 41.589741, 52.691750>,  <28.639408, 42.128277, 52.197319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422848, 41.589741, 52.691750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615967, 41.832184, 52.944588>,  <28.731838, 41.977650, 53.096291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615967, 41.832184, 52.944588>,  <28.422848, 41.589741, 52.691750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615967, 41.832184, 52.944588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568185, -0.332443, 0.752760,
		0.666388, -0.722576, 0.183879,
		0.482796, 0.606107, 0.632093,
		28.760805, 42.014015, 53.134216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381540, 41.229538, 53.296772>,  <28.422848, 41.589741, 52.691750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381540, 41.229538, 53.296772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453169, 41.610226, 53.396507>,  <28.496145, 41.838638, 53.456348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453169, 41.610226, 53.396507>,  <28.381540, 41.229538, 53.296772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453169, 41.610226, 53.396507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408803, -0.158538, 0.898747,
		0.894882, -0.262869, 0.360675,
		0.179072, 0.951717, 0.249334,
		28.506891, 41.895741, 53.471306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351282, 41.068733, 54.020786>,  <28.381540, 41.229538, 53.296772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351282, 41.068733, 54.020786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301706, 41.465485, 54.009300>,  <28.271961, 41.703533, 54.002411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301706, 41.465485, 54.009300>,  <28.351282, 41.068733, 54.020786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301706, 41.465485, 54.009300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604829, -0.052573, 0.794618,
		0.786652, 0.115852, 0.606430,
		-0.123940, 0.991874, -0.028713,
		28.264524, 41.763046, 54.000687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533951, 41.519424, 54.713245>,  <28.351282, 41.068733, 54.020786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533951, 41.519424, 54.713245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270248, 41.726089, 54.494728>,  <28.112026, 41.850090, 54.363617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270248, 41.726089, 54.494728>,  <28.533951, 41.519424, 54.713245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270248, 41.726089, 54.494728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555722, 0.154618, 0.816864,
		0.506512, 0.842111, 0.185189,
		-0.659256, 0.516665, -0.546295,
		28.072472, 41.881088, 54.330841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912630, 42.100937, 54.969280>,  <28.533951, 41.519424, 54.713245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912630, 42.100937, 54.969280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980413, 42.263794, 55.328281>,  <29.021084, 42.361507, 55.543682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980413, 42.263794, 55.328281>,  <28.912630, 42.100937, 54.969280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980413, 42.263794, 55.328281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700056, -0.690724, 0.181165,
		0.693689, 0.597604, -0.402075,
		0.169458, 0.407147, 0.897505,
		29.031250, 42.385937, 55.597534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661795, 42.330582, 55.086029>,  <28.912630, 42.100937, 54.969280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661795, 42.330582, 55.086029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483255, 42.211308, 55.423515>,  <29.376131, 42.139744, 55.626007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483255, 42.211308, 55.423515>,  <29.661795, 42.330582, 55.086029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483255, 42.211308, 55.423515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770159, -0.608105, 0.192518,
		0.455663, 0.735727, 0.501076,
		-0.446348, -0.298185, 0.843718,
		29.349352, 42.121853, 55.676632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139252, 42.384460, 55.743526>,  <29.661795, 42.330582, 55.086029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139252, 42.384460, 55.743526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866055, 42.099831, 55.809471>,  <29.702137, 41.929050, 55.849037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866055, 42.099831, 55.809471>,  <30.139252, 42.384460, 55.743526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866055, 42.099831, 55.809471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714443, -0.603854, 0.353456,
		-0.151961, 0.359190, 0.920810,
		-0.682992, -0.711578, 0.164859,
		29.661158, 41.886356, 55.858929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245432, 42.148304, 56.355141>,  <30.139252, 42.384460, 55.743526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245432, 42.148304, 56.355141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005821, 41.855255, 56.225883>,  <29.862055, 41.679424, 56.148327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005821, 41.855255, 56.225883>,  <30.245432, 42.148304, 56.355141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005821, 41.855255, 56.225883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620694, -0.679809, 0.390638,
		-0.505870, 0.033427, 0.861962,
		-0.599027, -0.732627, -0.323148,
		29.826113, 41.635468, 56.128941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347799, 41.682789, 56.894886>,  <30.245432, 42.148304, 56.355141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347799, 41.682789, 56.894886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181231, 41.446995, 56.618019>,  <30.081289, 41.305519, 56.451900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181231, 41.446995, 56.618019>,  <30.347799, 41.682789, 56.894886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181231, 41.446995, 56.618019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590142, -0.754394, 0.287441,
		-0.691611, -0.288780, 0.662028,
		-0.416423, -0.589488, -0.692168,
		30.056303, 41.270149, 56.410370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093006, 41.006660, 57.194908>,  <30.347799, 41.682789, 56.894886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093006, 41.006660, 57.194908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182131, 40.946472, 56.809635>,  <30.235605, 40.910358, 56.578472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182131, 40.946472, 56.809635>,  <30.093006, 41.006660, 57.194908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182131, 40.946472, 56.809635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691774, -0.671744, 0.264969,
		-0.686880, -0.725340, -0.045581,
		0.222812, -0.150470, -0.963179,
		30.248974, 40.901329, 56.520683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199806, 40.214230, 57.103848>,  <30.093006, 41.006660, 57.194908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199806, 40.214230, 57.103848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369287, 40.419857, 56.805531>,  <30.470976, 40.543236, 56.626541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369287, 40.419857, 56.805531>,  <30.199806, 40.214230, 57.103848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369287, 40.419857, 56.805531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852098, -0.505494, 0.135664,
		-0.307251, -0.692968, -0.652221,
		0.423705, 0.514073, -0.745790,
		30.496399, 40.574078, 56.581795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564785, 39.907196, 56.733383>,  <30.199806, 40.214230, 57.103848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564785, 39.907196, 56.733383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350613, 39.713566, 57.010220>,  <29.222109, 39.597389, 57.176319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350613, 39.713566, 57.010220>,  <29.564785, 39.907196, 56.733383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350613, 39.713566, 57.010220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481824, 0.848089, 0.220431,
		-0.693658, -0.215439, -0.687332,
		-0.535429, -0.484077, 0.692087,
		29.189983, 39.568344, 57.217846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928688, 40.156246, 56.565903>,  <29.564785, 39.907196, 56.733383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928688, 40.156246, 56.565903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916744, 40.004639, 56.935867>,  <28.909578, 39.913673, 57.157845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916744, 40.004639, 56.935867>,  <28.928688, 40.156246, 56.565903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916744, 40.004639, 56.935867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581544, 0.759178, 0.292329,
		-0.812967, -0.529144, -0.243086,
		-0.029861, -0.379019, 0.924907,
		28.907785, 39.890934, 57.213341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156120, 40.136379, 56.767399>,  <28.928688, 40.156246, 56.565903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156120, 40.136379, 56.767399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365889, 40.109875, 57.106949>,  <28.491749, 40.093971, 57.310680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365889, 40.109875, 57.106949>,  <28.156120, 40.136379, 56.767399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365889, 40.109875, 57.106949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739464, 0.458800, 0.492641,
		-0.422110, -0.886065, 0.191604,
		0.524420, -0.066264, 0.848877,
		28.523214, 40.089996, 57.361610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688906, 39.895786, 57.201061>,  <28.156120, 40.136379, 56.767399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688906, 39.895786, 57.201061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975782, 40.050503, 57.432934>,  <28.147909, 40.143333, 57.572056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975782, 40.050503, 57.432934>,  <27.688906, 39.895786, 57.201061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975782, 40.050503, 57.432934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681290, 0.564102, 0.466512,
		-0.146557, -0.729509, 0.668085,
		0.717193, 0.386789, 0.579680,
		28.190941, 40.166538, 57.606838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428995, 39.835125, 57.814129>,  <27.688906, 39.895786, 57.201061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428995, 39.835125, 57.814129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711281, 40.111122, 57.878468>,  <27.880653, 40.276722, 57.917072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711281, 40.111122, 57.878468>,  <27.428995, 39.835125, 57.814129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711281, 40.111122, 57.878468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670946, 0.577936, 0.464566,
		0.227589, -0.435770, 0.870808,
		0.705716, 0.689996, 0.160846,
		27.922995, 40.318123, 57.926720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281288, 40.091190, 58.477993>,  <27.428995, 39.835125, 57.814129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281288, 40.091190, 58.477993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482815, 40.364613, 58.266739>,  <27.603731, 40.528667, 58.139988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482815, 40.364613, 58.266739>,  <27.281288, 40.091190, 58.477993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482815, 40.364613, 58.266739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644784, 0.704447, 0.296660,
		0.574824, 0.191069, 0.795657,
		0.503816, 0.683554, -0.528131,
		27.633959, 40.569679, 58.108299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382704, 40.629112, 58.880920>,  <27.281288, 40.091190, 58.477993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382704, 40.629112, 58.880920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401848, 40.789314, 58.514904>,  <27.413334, 40.885437, 58.295296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401848, 40.789314, 58.514904>,  <27.382704, 40.629112, 58.880920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401848, 40.789314, 58.514904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606168, 0.739761, 0.292085,
		0.793895, 0.540691, 0.278180,
		0.047859, 0.400509, -0.915042,
		27.416206, 40.909466, 58.240391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221243, 41.274025, 59.048759>,  <27.382704, 40.629112, 58.880920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221243, 41.274025, 59.048759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156876, 41.247601, 58.654858>,  <27.118256, 41.231747, 58.418518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156876, 41.247601, 58.654858>,  <27.221243, 41.274025, 59.048759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156876, 41.247601, 58.654858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887956, 0.445260, 0.115232,
		0.430859, 0.892961, -0.130310,
		-0.160920, -0.066061, -0.984754,
		27.108601, 41.227783, 58.359432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813822, 41.837807, 58.828033>,  <27.221243, 41.274025, 59.048759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813822, 41.837807, 58.828033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750351, 41.549892, 58.557705>,  <26.712269, 41.377144, 58.395508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750351, 41.549892, 58.557705>,  <26.813822, 41.837807, 58.828033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750351, 41.549892, 58.557705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958621, 0.276180, -0.069069,
		0.236363, 0.636897, -0.733822,
		-0.158677, -0.719782, -0.675822,
		26.702747, 41.333958, 58.354958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.606892, 32.840973, 47.296524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.799812, 33.178879, 47.389271>,  <36.915565, 33.381622, 47.444920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.799812, 33.178879, 47.389271>,  <36.606892, 32.840973, 47.296524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799812, 33.178879, 47.389271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726313, 0.237649, 0.644974,
		0.489747, -0.479481, 0.728180,
		0.482304, 0.844761, 0.231866,
		36.944504, 33.432308, 47.458832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820251, 32.831196, 48.013844>,  <36.606892, 32.840973, 47.296524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820251, 32.831196, 48.013844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741341, 33.206860, 47.901371>,  <36.693996, 33.432259, 47.833885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741341, 33.206860, 47.901371>,  <36.820251, 32.831196, 48.013844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741341, 33.206860, 47.901371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709085, 0.061368, 0.702448,
		0.676965, 0.337958, 0.653837,
		-0.197273, 0.939158, -0.281185,
		36.682159, 33.488605, 47.817017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674633, 33.170364, 48.780891>,  <36.820251, 32.831196, 48.013844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674633, 33.170364, 48.780891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532463, 33.411953, 48.495544>,  <36.447159, 33.556908, 48.324337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532463, 33.411953, 48.495544>,  <36.674633, 33.170364, 48.780891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532463, 33.411953, 48.495544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855651, 0.096940, 0.508394,
		0.376210, 0.791088, 0.482334,
		-0.355427, 0.603973, -0.713365,
		36.425835, 33.593143, 48.281536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420021, 33.793774, 49.093452>,  <36.674633, 33.170364, 48.780891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420021, 33.793774, 49.093452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.259270, 33.813519, 48.727707>,  <36.162819, 33.825367, 48.508259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.259270, 33.813519, 48.727707>,  <36.420021, 33.793774, 49.093452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259270, 33.813519, 48.727707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835477, 0.388937, 0.388210,
		0.374792, 0.919941, -0.115062,
		-0.401882, 0.049366, -0.914360,
		36.138706, 33.828327, 48.453400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937653, 34.384758, 49.195183>,  <36.420021, 33.793774, 49.093452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937653, 34.384758, 49.195183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.826756, 34.173775, 48.873955>,  <35.760216, 34.047184, 48.681217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.826756, 34.173775, 48.873955>,  <35.937653, 34.384758, 49.195183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826756, 34.173775, 48.873955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960378, 0.176903, 0.215360,
		0.028472, 0.830958, -0.555606,
		-0.277243, -0.527460, -0.803071,
		35.743584, 34.015537, 48.633034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422123, 34.824242, 48.886349>,  <35.937653, 34.384758, 49.195183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422123, 34.824242, 48.886349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.400249, 34.445179, 48.760517>,  <35.387123, 34.217743, 48.685020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.400249, 34.445179, 48.760517>,  <35.422123, 34.824242, 48.886349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400249, 34.445179, 48.760517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996339, 0.031059, 0.079646,
		-0.065707, 0.317779, -0.945885,
		-0.054688, -0.947656, -0.314575,
		35.383842, 34.160881, 48.666145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030319, 34.887478, 48.368031>,  <35.422123, 34.824242, 48.886349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030319, 34.887478, 48.368031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.012486, 34.528198, 48.542957>,  <35.001785, 34.312630, 48.647915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.012486, 34.528198, 48.542957>,  <35.030319, 34.887478, 48.368031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012486, 34.528198, 48.542957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989381, 0.100316, 0.105178,
		-0.138341, -0.427989, -0.893133,
		-0.044581, -0.898199, 0.437322,
		34.999111, 34.258739, 48.674152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364784, 34.555557, 48.063881>,  <35.030319, 34.887478, 48.368031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364784, 34.555557, 48.063881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.461521, 34.354576, 48.395920>,  <34.519562, 34.233990, 48.595142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.461521, 34.354576, 48.395920>,  <34.364784, 34.555557, 48.063881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461521, 34.354576, 48.395920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969827, -0.098003, 0.223228,
		-0.030809, -0.859035, -0.510988,
		0.241839, -0.502448, 0.830097,
		34.534073, 34.203842, 48.644947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864639, 34.040321, 48.059097>,  <34.364784, 34.555557, 48.063881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864639, 34.040321, 48.059097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.997631, 34.020218, 48.435806>,  <34.077427, 34.008156, 48.661831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.997631, 34.020218, 48.435806>,  <33.864639, 34.040321, 48.059097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997631, 34.020218, 48.435806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902207, -0.307846, 0.302081,
		0.274737, -0.950108, -0.147698,
		0.332478, -0.050262, 0.941771,
		34.097374, 34.005138, 48.718338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463879, 33.532852, 48.390465>,  <33.864639, 34.040321, 48.059097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463879, 33.532852, 48.390465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.607407, 33.741867, 48.699841>,  <33.693523, 33.867275, 48.885464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.607407, 33.741867, 48.699841>,  <33.463879, 33.532852, 48.390465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607407, 33.741867, 48.699841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892556, -0.050368, 0.448114,
		0.273112, -0.851129, 0.448318,
		0.358822, 0.522534, 0.773437,
		33.715054, 33.898628, 48.931873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343018, 33.141602, 48.895668>,  <33.463879, 33.532852, 48.390465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343018, 33.141602, 48.895668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.369579, 33.509083, 49.051403>,  <33.385517, 33.729572, 49.144844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.369579, 33.509083, 49.051403>,  <33.343018, 33.141602, 48.895668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369579, 33.509083, 49.051403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919694, -0.094977, 0.380976,
		0.386981, -0.383366, 0.838616,
		0.066404, 0.918700, 0.389334,
		33.389500, 33.784695, 49.168201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216980, 33.117050, 49.644836>,  <33.343018, 33.141602, 48.895668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216980, 33.117050, 49.644836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.164268, 33.500290, 49.543102>,  <33.132641, 33.730232, 49.482063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.164268, 33.500290, 49.543102>,  <33.216980, 33.117050, 49.644836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164268, 33.500290, 49.543102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903432, -0.010485, 0.428602,
		0.407975, 0.286256, 0.866957,
		-0.131780, 0.958096, -0.254335,
		33.124733, 33.787720, 49.466801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886803, 33.377785, 50.221729>,  <33.216980, 33.117050, 49.644836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886803, 33.377785, 50.221729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.822598, 33.688984, 49.978764>,  <32.784073, 33.875702, 49.832985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.822598, 33.688984, 49.978764>,  <32.886803, 33.377785, 50.221729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822598, 33.688984, 49.978764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875630, 0.171774, 0.451403,
		0.455529, 0.604329, 0.653667,
		-0.160513, 0.777998, -0.607416,
		32.774445, 33.922382, 49.796539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623039, 33.878178, 50.639046>,  <32.886803, 33.377785, 50.221729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623039, 33.878178, 50.639046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.501923, 33.947792, 50.264233>,  <32.429253, 33.989559, 50.039345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.501923, 33.947792, 50.264233>,  <32.623039, 33.878178, 50.639046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501923, 33.947792, 50.264233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919493, 0.205275, 0.335254,
		0.250695, 0.963106, 0.097868,
		-0.302796, 0.174035, -0.937031,
		32.411083, 34.000004, 49.983124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328606, 34.456921, 50.737286>,  <32.623039, 33.878178, 50.639046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328606, 34.456921, 50.737286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.177914, 34.307407, 50.398262>,  <32.087498, 34.217701, 50.194847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.177914, 34.307407, 50.398262>,  <32.328606, 34.456921, 50.737286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177914, 34.307407, 50.398262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922820, 0.230938, 0.308336,
		0.080484, 0.898307, -0.431935,
		-0.376730, -0.373782, -0.847562,
		32.064896, 34.195274, 50.143993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803379, 34.893379, 50.619549>,  <32.328606, 34.456921, 50.737286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803379, 34.893379, 50.619549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.703684, 34.580803, 50.390732>,  <31.643866, 34.393257, 50.253441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.703684, 34.580803, 50.390732>,  <31.803379, 34.893379, 50.619549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703684, 34.580803, 50.390732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968156, 0.215409, 0.127567,
		0.023537, 0.585620, -0.810244,
		-0.249240, -0.781439, -0.572042,
		31.628912, 34.346371, 50.219120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345541, 35.131134, 50.025471>,  <31.803379, 34.893379, 50.619549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345541, 35.131134, 50.025471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.254108, 34.745659, 50.080688>,  <31.199249, 34.514374, 50.113819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.254108, 34.745659, 50.080688>,  <31.345541, 35.131134, 50.025471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254108, 34.745659, 50.080688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972874, 0.220933, -0.068595,
		0.035607, -0.149977, -0.988048,
		-0.228580, -0.963689, 0.138042,
		31.185534, 34.456551, 50.122101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697294, 35.016308, 49.543598>,  <31.345541, 35.131134, 50.025471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697294, 35.016308, 49.543598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.718454, 34.712547, 49.802986>,  <30.731152, 34.530293, 49.958618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.718454, 34.712547, 49.802986>,  <30.697294, 35.016308, 49.543598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718454, 34.712547, 49.802986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906133, 0.236406, 0.350765,
		-0.419673, -0.606158, -0.675609,
		0.052901, -0.759398, 0.648472,
		30.734325, 34.484730, 49.997528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085186, 34.590305, 49.419796>,  <30.697294, 35.016308, 49.543598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085186, 34.590305, 49.419796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.216440, 34.483826, 49.782333>,  <30.295193, 34.419937, 49.999855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.216440, 34.483826, 49.782333>,  <30.085186, 34.590305, 49.419796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216440, 34.483826, 49.782333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934075, 0.051594, 0.353330,
		-0.140819, -0.962536, -0.231722,
		0.328137, -0.266201, 0.906346,
		30.314882, 34.403965, 50.054237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643734, 34.102093, 49.550526>,  <30.085186, 34.590305, 49.419796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643734, 34.102093, 49.550526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.784451, 34.208492, 49.909523>,  <29.868881, 34.272331, 50.124920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.784451, 34.208492, 49.909523>,  <29.643734, 34.102093, 49.550526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784451, 34.208492, 49.909523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935038, 0.054675, 0.350306,
		0.044111, -0.962421, 0.267954,
		0.351792, 0.265999, 0.897489,
		29.889988, 34.288292, 50.178768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224586, 33.692825, 50.113300>,  <29.643734, 34.102093, 49.550526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224586, 33.692825, 50.113300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.379280, 33.998917, 50.319160>,  <29.472095, 34.182571, 50.442677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.379280, 33.998917, 50.319160>,  <29.224586, 33.692825, 50.113300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379280, 33.998917, 50.319160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895138, 0.177310, 0.409010,
		0.221736, -0.618856, 0.753558,
		0.386732, 0.765231, 0.514646,
		29.495300, 34.228485, 50.473557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057989, 33.609348, 50.889675>,  <29.224586, 33.692825, 50.113300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057989, 33.609348, 50.889675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.121664, 33.999134, 50.826324>,  <29.159868, 34.233006, 50.788315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.121664, 33.999134, 50.826324>,  <29.057989, 33.609348, 50.889675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121664, 33.999134, 50.826324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857559, 0.215967, 0.466852,
		0.489134, 0.061501, 0.870038,
		0.159188, 0.974462, -0.158377,
		29.169420, 34.291473, 50.778812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775612, 33.869453, 51.471718>,  <29.057989, 33.609348, 50.889675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775612, 33.869453, 51.471718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.792332, 34.201618, 51.249485>,  <28.802364, 34.400917, 51.116146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.792332, 34.201618, 51.249485>,  <28.775612, 33.869453, 51.471718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792332, 34.201618, 51.249485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837010, 0.332754, 0.434383,
		0.545588, 0.446870, 0.708971,
		0.041800, 0.830410, -0.555582,
		28.804873, 34.450741, 51.082809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594368, 34.431763, 51.845062>,  <28.775612, 33.869453, 51.471718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594368, 34.431763, 51.845062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.515785, 34.621685, 51.501911>,  <28.468636, 34.735638, 51.296021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.515785, 34.621685, 51.501911>,  <28.594368, 34.431763, 51.845062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515785, 34.621685, 51.501911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878524, 0.303305, 0.369055,
		0.435430, 0.826173, 0.357544,
		-0.196458, 0.474809, -0.857881,
		28.456848, 34.764126, 51.244545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241770, 35.040123, 52.055630>,  <28.594368, 34.431763, 51.845062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241770, 35.040123, 52.055630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.146610, 34.967716, 51.673920>,  <28.089514, 34.924271, 51.444893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.146610, 34.967716, 51.673920>,  <28.241770, 35.040123, 52.055630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146610, 34.967716, 51.673920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961479, 0.183180, 0.204949,
		0.137704, 0.966270, -0.217622,
		-0.237900, -0.181017, -0.954273,
		28.075241, 34.913410, 51.387638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026611, 35.658436, 51.848724>,  <28.241770, 35.040123, 52.055630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026611, 35.658436, 51.848724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.859785, 35.392067, 51.601303>,  <27.759689, 35.232246, 51.452850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.859785, 35.392067, 51.601303>,  <28.026611, 35.658436, 51.848724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859785, 35.392067, 51.601303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900942, 0.213171, 0.377971,
		-0.119840, 0.714920, -0.688860,
		-0.417064, -0.665918, -0.618555,
		27.734665, 35.192291, 51.415737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486282, 35.992126, 51.601780>,  <28.026611, 35.658436, 51.848724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486282, 35.992126, 51.601780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.374786, 35.612404, 51.543652>,  <27.307890, 35.384571, 51.508774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.374786, 35.612404, 51.543652>,  <27.486282, 35.992126, 51.601780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374786, 35.612404, 51.543652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955067, 0.258132, 0.145655,
		-0.100759, 0.179393, -0.978604,
		-0.278739, -0.949308, -0.145324,
		27.291164, 35.327610, 51.500053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815977, 36.022522, 51.349953>,  <27.486282, 35.992126, 51.601780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815977, 36.022522, 51.349953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.830057, 35.654373, 51.505733>,  <26.838505, 35.433483, 51.599201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.830057, 35.654373, 51.505733>,  <26.815977, 36.022522, 51.349953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830057, 35.654373, 51.505733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924538, 0.117974, 0.362370,
		-0.379461, -0.372817, -0.846769,
		0.035201, -0.920375, 0.389450,
		26.840618, 35.378262, 51.622570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102919, 35.750431, 51.321213>,  <26.815977, 36.022522, 51.349953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102919, 35.750431, 51.321213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.282373, 35.469151, 51.541843>,  <26.390047, 35.300385, 51.674221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.282373, 35.469151, 51.541843>,  <26.102919, 35.750431, 51.321213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282373, 35.469151, 51.541843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864118, -0.183798, 0.468527,
		-0.228090, -0.686825, -0.690107,
		0.448637, -0.703200, 0.551575,
		26.416964, 35.258190, 51.707317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850164, 35.056461, 51.158554>,  <26.102919, 35.750431, 51.321213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850164, 35.056461, 51.158554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.988523, 35.029831, 51.532917>,  <26.071539, 35.013855, 51.757534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.988523, 35.029831, 51.532917>,  <25.850164, 35.056461, 51.158554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988523, 35.029831, 51.532917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932697, -0.132977, 0.335252,
		0.102136, -0.988881, -0.108089,
		0.345897, -0.066573, 0.935907,
		26.092293, 35.009857, 51.813690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593950, 34.486767, 51.398586>,  <25.850164, 35.056461, 51.158554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593950, 34.486767, 51.398586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.683613, 34.699146, 51.725471>,  <25.737410, 34.826576, 51.921604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.683613, 34.699146, 51.725471>,  <25.593950, 34.486767, 51.398586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683613, 34.699146, 51.725471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947236, -0.078448, 0.310788,
		0.229123, -0.843762, 0.485354,
		0.224156, 0.530954, 0.817217,
		25.750860, 34.858433, 51.970638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444654, 34.096966, 52.155785>,  <25.593950, 34.486767, 51.398586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444654, 34.096966, 52.155785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.450237, 34.486385, 52.247013>,  <25.453587, 34.720036, 52.301750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.450237, 34.486385, 52.247013>,  <25.444654, 34.096966, 52.155785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.450237, 34.486385, 52.247013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824725, -0.117756, 0.553138,
		0.565362, -0.195814, 0.801264,
		0.013958, 0.973545, 0.228068,
		25.454424, 34.778450, 52.315434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415037, 34.172798, 52.964657>,  <25.444654, 34.096966, 52.155785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.415037, 34.172798, 52.964657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.298870, 34.518627, 52.800617>,  <25.229170, 34.726124, 52.702194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.298870, 34.518627, 52.800617>,  <25.415037, 34.172798, 52.964657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298870, 34.518627, 52.800617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866336, -0.055571, 0.496361,
		0.406349, 0.499432, 0.765146,
		-0.290419, 0.864569, -0.410095,
		25.211744, 34.777996, 52.677589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.907541, 34.445961, 53.436863>,  <25.415037, 34.172798, 52.964657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.907541, 34.445961, 53.436863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.847319, 34.685905, 53.122536>,  <24.811186, 34.829872, 52.933941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.847319, 34.685905, 53.122536>,  <24.907541, 34.445961, 53.436863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.847319, 34.685905, 53.122536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959799, 0.101782, 0.261587,
		0.236896, 0.793607, 0.560418,
		-0.150557, 0.599857, -0.785814,
		24.802151, 34.865864, 52.886791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.540447, 35.019371, 53.715462>,  <24.907541, 34.445961, 53.436863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.540447, 35.019371, 53.715462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.471977, 35.015743, 53.321381>,  <24.430895, 35.013565, 53.084934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.471977, 35.015743, 53.321381>,  <24.540447, 35.019371, 53.715462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.471977, 35.015743, 53.321381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962202, 0.216519, 0.165186,
		0.211816, 0.976236, -0.045790,
		-0.171175, -0.009070, -0.985199,
		24.420624, 35.013023, 53.025822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.734589, 29.951632, 51.548359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504166, 30.134403, 51.277252>,  <35.365913, 30.244066, 51.114586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504166, 30.134403, 51.277252>,  <35.734589, 29.951632, 51.548359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504166, 30.134403, 51.277252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340263, 0.619870, 0.707094,
		0.743222, 0.637947, -0.201604,
		-0.576057, 0.456929, -0.677771,
		35.331348, 30.271482, 51.073921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849663, 30.638056, 51.683189>,  <35.734589, 29.951632, 51.548359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849663, 30.638056, 51.683189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.523949, 30.608717, 51.452866>,  <35.328522, 30.591114, 51.314671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.523949, 30.608717, 51.452866>,  <35.849663, 30.638056, 51.683189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523949, 30.608717, 51.452866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475014, 0.654334, 0.588394,
		0.333617, 0.752640, -0.567656,
		-0.814286, -0.073346, -0.575811,
		35.279663, 30.586714, 51.280121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723179, 31.357294, 51.483578>,  <35.849663, 30.638056, 51.683189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723179, 31.357294, 51.483578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386280, 31.143040, 51.459229>,  <35.184139, 31.014486, 51.444618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386280, 31.143040, 51.459229>,  <35.723179, 31.357294, 51.483578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386280, 31.143040, 51.459229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467317, 0.669159, 0.577789,
		-0.268752, 0.515090, -0.813913,
		-0.842251, -0.535638, -0.060873,
		35.133606, 30.982347, 51.440968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242531, 31.846102, 51.451931>,  <35.723179, 31.357294, 51.483578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242531, 31.846102, 51.451931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.031818, 31.521849, 51.554207>,  <34.905392, 31.327297, 51.615570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.031818, 31.521849, 51.554207>,  <35.242531, 31.846102, 51.451931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031818, 31.521849, 51.554207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504052, 0.540122, 0.673943,
		-0.684424, 0.226139, -0.693127,
		-0.526778, -0.810635, 0.255686,
		34.873783, 31.278658, 51.630913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476345, 32.017876, 51.379807>,  <35.242531, 31.846102, 51.451931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476345, 32.017876, 51.379807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.509636, 31.709179, 51.631992>,  <34.529610, 31.523960, 51.783302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.509636, 31.709179, 51.631992>,  <34.476345, 32.017876, 51.379807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509636, 31.709179, 51.631992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547444, 0.493240, 0.676032,
		-0.832694, -0.401406, -0.381436,
		0.083224, -0.771743, 0.630465,
		34.534603, 31.477655, 51.821133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842117, 31.782740, 51.533760>,  <34.476345, 32.017876, 51.379807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842117, 31.782740, 51.533760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073570, 31.668600, 51.839378>,  <34.212440, 31.600117, 52.022751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073570, 31.668600, 51.839378>,  <33.842117, 31.782740, 51.533760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073570, 31.668600, 51.839378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617003, 0.459499, 0.638881,
		-0.533382, -0.841092, 0.089818,
		0.578629, -0.285350, 0.764045,
		34.247158, 31.582996, 52.068592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361069, 31.711754, 51.948387>,  <33.842117, 31.782740, 51.533760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361069, 31.711754, 51.948387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.696709, 31.695995, 52.165405>,  <33.898094, 31.686541, 52.295616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.696709, 31.695995, 52.165405>,  <33.361069, 31.711754, 51.948387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696709, 31.695995, 52.165405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464541, 0.467046, 0.752376,
		-0.283033, -0.883355, 0.373599,
		0.839103, -0.039395, 0.542544,
		33.948441, 31.684177, 52.328167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160641, 31.602169, 52.639606>,  <33.361069, 31.711754, 51.948387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160641, 31.602169, 52.639606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.537872, 31.730066, 52.676189>,  <33.764210, 31.806805, 52.698139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.537872, 31.730066, 52.676189>,  <33.160641, 31.602169, 52.639606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537872, 31.730066, 52.676189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297759, 0.689335, 0.660422,
		0.148122, -0.650063, 0.745304,
		0.943079, 0.319744, 0.091456,
		33.820797, 31.825989, 52.703625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163780, 31.698252, 53.275673>,  <33.160641, 31.602169, 52.639606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163780, 31.698252, 53.275673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.479675, 31.922194, 53.175373>,  <33.669212, 32.056557, 53.115192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.479675, 31.922194, 53.175373>,  <33.163780, 31.698252, 53.275673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479675, 31.922194, 53.175373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158059, 0.580671, 0.798648,
		0.592744, -0.591081, 0.547063,
		0.789729, 0.559862, -0.250763,
		33.716599, 32.090149, 53.100147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497757, 31.869751, 53.876560>,  <33.163780, 31.698252, 53.275673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497757, 31.869751, 53.876560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.596214, 32.159901, 53.619423>,  <33.655289, 32.333992, 53.465141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.596214, 32.159901, 53.619423>,  <33.497757, 31.869751, 53.876560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596214, 32.159901, 53.619423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282982, 0.688133, 0.668128,
		0.927002, 0.017455, 0.374649,
		0.246146, 0.725375, -0.642840,
		33.670059, 32.377514, 53.426571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910748, 32.506050, 54.258129>,  <33.497757, 31.869751, 53.876560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910748, 32.506050, 54.258129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.778969, 32.678314, 53.922035>,  <33.699902, 32.781673, 53.720379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.778969, 32.678314, 53.922035>,  <33.910748, 32.506050, 54.258129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778969, 32.678314, 53.922035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402516, 0.740934, 0.537585,
		0.854074, 0.515316, -0.070756,
		-0.329451, 0.430657, -0.840236,
		33.680134, 32.807510, 53.669964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278057, 33.159451, 54.254318>,  <33.910748, 32.506050, 54.258129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278057, 33.159451, 54.254318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.951439, 33.205223, 54.027988>,  <33.755466, 33.232685, 53.892189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.951439, 33.205223, 54.027988>,  <34.278057, 33.159451, 54.254318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951439, 33.205223, 54.027988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257045, 0.805560, 0.533854,
		0.516897, 0.581359, -0.628362,
		-0.816545, 0.114430, -0.565827,
		33.706474, 33.239552, 53.858242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814140, 33.683708, 54.090305>,  <34.278057, 33.159451, 54.254318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814140, 33.683708, 54.090305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030518, 34.010052, 54.008568>,  <35.160343, 34.205856, 53.959526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030518, 34.010052, 54.008568>,  <34.814140, 33.683708, 54.090305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030518, 34.010052, 54.008568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406933, -0.466520, -0.785343,
		-0.736058, 0.341673, -0.584361,
		0.540947, 0.815854, -0.204348,
		35.192802, 34.254807, 53.947262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618443, 33.957489, 53.354404>,  <34.814140, 33.683708, 54.090305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618443, 33.957489, 53.354404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.987633, 34.058353, 53.470699>,  <35.209148, 34.118874, 53.540478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.987633, 34.058353, 53.470699>,  <34.618443, 33.957489, 53.354404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987633, 34.058353, 53.470699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373021, -0.400227, -0.837063,
		-0.094716, 0.881040, -0.463462,
		0.922976, 0.252165, 0.290738,
		35.264526, 34.134003, 53.557922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916115, 34.304764, 52.774628>,  <34.618443, 33.957489, 53.354404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916115, 34.304764, 52.774628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.230129, 34.194782, 52.996662>,  <35.418537, 34.128796, 53.129883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.230129, 34.194782, 52.996662>,  <34.916115, 34.304764, 52.774628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230129, 34.194782, 52.996662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427703, -0.407634, -0.806787,
		0.448099, 0.870768, -0.202410,
		0.785034, -0.274949, 0.555090,
		35.465641, 34.112297, 53.163189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535980, 34.526669, 52.479511>,  <34.916115, 34.304764, 52.774628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535980, 34.526669, 52.479511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.708618, 34.256878, 52.719112>,  <35.812199, 34.095005, 52.862873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.708618, 34.256878, 52.719112>,  <35.535980, 34.526669, 52.479511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708618, 34.256878, 52.719112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685571, -0.186321, -0.703759,
		0.586276, 0.714400, 0.381986,
		0.431593, -0.674476, 0.599008,
		35.838097, 34.054535, 52.898815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242371, 34.584663, 52.310223>,  <35.535980, 34.526669, 52.479511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242371, 34.584663, 52.310223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.195992, 34.217201, 52.461285>,  <36.168163, 33.996723, 52.551922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.195992, 34.217201, 52.461285>,  <36.242371, 34.584663, 52.310223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195992, 34.217201, 52.461285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618752, -0.364235, -0.696045,
		0.776984, 0.152975, 0.610651,
		-0.115943, -0.918658, 0.377658,
		36.161209, 33.941605, 52.574581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951580, 34.331940, 52.469929>,  <36.242371, 34.584663, 52.310223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951580, 34.331940, 52.469929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.718262, 34.009377, 52.431007>,  <36.578270, 33.815838, 52.407654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.718262, 34.009377, 52.431007>,  <36.951580, 34.331940, 52.469929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718262, 34.009377, 52.431007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549146, -0.303245, -0.778768,
		0.598498, -0.507689, 0.619719,
		-0.583299, -0.806408, -0.097304,
		36.543270, 33.767456, 52.401817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380127, 33.773323, 52.442272>,  <36.951580, 34.331940, 52.469929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380127, 33.773323, 52.442272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048119, 33.627304, 52.273609>,  <36.848911, 33.539692, 52.172409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048119, 33.627304, 52.273609>,  <37.380127, 33.773323, 52.442272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048119, 33.627304, 52.273609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544548, -0.367065, -0.754142,
		0.120525, -0.855571, 0.503461,
		-0.830025, -0.365051, -0.421659,
		36.799110, 33.517788, 52.147110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532322, 33.040730, 52.083664>,  <37.380127, 33.773323, 52.442272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532322, 33.040730, 52.083664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.197220, 33.169994, 51.907600>,  <36.996159, 33.247555, 51.801964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.197220, 33.169994, 51.907600>,  <37.532322, 33.040730, 52.083664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197220, 33.169994, 51.907600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302141, -0.397098, -0.866617,
		-0.454847, -0.858997, 0.235027,
		-0.837750, 0.323167, -0.440157,
		36.945896, 33.266945, 51.775555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408188, 32.440414, 51.628242>,  <37.532322, 33.040730, 52.083664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408188, 32.440414, 51.628242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.189209, 32.730465, 51.461155>,  <37.057823, 32.904495, 51.360901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.189209, 32.730465, 51.461155>,  <37.408188, 32.440414, 51.628242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189209, 32.730465, 51.461155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179860, -0.385545, -0.904989,
		-0.817284, -0.570565, 0.080644,
		-0.547447, 0.725128, -0.417721,
		37.024975, 32.948002, 51.335838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055161, 32.103100, 51.192448>,  <37.408188, 32.440414, 51.628242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055161, 32.103100, 51.192448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.031456, 32.481365, 51.064568>,  <37.017231, 32.708324, 50.987839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.031456, 32.481365, 51.064568>,  <37.055161, 32.103100, 51.192448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031456, 32.481365, 51.064568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140633, -0.309162, -0.940554,
		-0.988286, -0.100702, -0.114669,
		-0.059265, 0.945663, -0.319703,
		37.013676, 32.765064, 50.968658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921757, 31.972401, 50.471832>,  <37.055161, 32.103100, 51.192448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921757, 31.972401, 50.471832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.044621, 32.352058, 50.499489>,  <37.118340, 32.579853, 50.516083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.044621, 32.352058, 50.499489>,  <36.921757, 31.972401, 50.471832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044621, 32.352058, 50.499489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341188, -0.042013, -0.939056,
		-0.888392, 0.312032, -0.336741,
		0.307163, 0.949142, 0.069137,
		37.136768, 32.636803, 50.520229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799126, 32.298382, 49.819351>,  <36.921757, 31.972401, 50.471832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799126, 32.298382, 49.819351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.062042, 32.525154, 50.017971>,  <37.219791, 32.661217, 50.137142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.062042, 32.525154, 50.017971>,  <36.799126, 32.298382, 49.819351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062042, 32.525154, 50.017971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535088, 0.112916, -0.837216,
		-0.530711, 0.815991, -0.229139,
		0.657287, 0.566929, 0.496553,
		37.259228, 32.695232, 50.166939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940060, 32.861919, 49.419552>,  <36.799126, 32.298382, 49.819351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940060, 32.861919, 49.419552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281078, 32.878227, 49.627975>,  <37.485691, 32.888012, 49.753029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281078, 32.878227, 49.627975>,  <36.940060, 32.861919, 49.419552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281078, 32.878227, 49.627975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519775, 0.038336, -0.853443,
		-0.054772, 0.998433, 0.011490,
		0.852545, 0.040772, 0.521060,
		37.536842, 32.890457, 49.784294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341686, 33.426498, 49.174076>,  <36.940060, 32.861919, 49.419552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341686, 33.426498, 49.174076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.609318, 33.212460, 49.380383>,  <37.769897, 33.084038, 49.504166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.609318, 33.212460, 49.380383>,  <37.341686, 33.426498, 49.174076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609318, 33.212460, 49.380383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731396, 0.350917, -0.584737,
		0.131898, 0.768462, 0.626155,
		0.669076, -0.535093, 0.515764,
		37.810040, 33.051933, 49.535110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881683, 33.965527, 49.128696>,  <37.341686, 33.426498, 49.174076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881683, 33.965527, 49.128696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.021427, 33.594067, 49.178585>,  <38.105274, 33.371189, 49.208519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.021427, 33.594067, 49.178585>,  <37.881683, 33.965527, 49.128696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021427, 33.594067, 49.178585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656744, 0.147749, -0.739498,
		0.668310, 0.340256, 0.661504,
		0.349356, -0.928653, 0.124719,
		38.126232, 33.315472, 49.216000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873451, 34.768883, 49.134815>,  <37.881683, 33.965527, 49.128696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873451, 34.768883, 49.134815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.110832, 34.890114, 48.836563>,  <38.253262, 34.962852, 48.657612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.110832, 34.890114, 48.836563>,  <37.873451, 34.768883, 49.134815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110832, 34.890114, 48.836563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218371, 0.952276, 0.213269,
		0.774679, 0.036258, 0.631314,
		0.593453, 0.303076, -0.745626,
		38.288868, 34.981037, 48.612877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097038, 35.385941, 49.331314>,  <37.873451, 34.768883, 49.134815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097038, 35.385941, 49.331314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.158249, 35.357845, 48.937023>,  <38.194973, 35.340988, 48.700451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.158249, 35.357845, 48.937023>,  <38.097038, 35.385941, 49.331314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158249, 35.357845, 48.937023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324582, 0.938561, -0.117261,
		0.933397, 0.337892, 0.120825,
		0.153023, -0.070234, -0.985724,
		38.204155, 35.336777, 48.641308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486496, 36.004307, 49.114952>,  <38.097038, 35.385941, 49.331314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486496, 36.004307, 49.114952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241970, 35.845810, 48.840935>,  <38.095253, 35.750710, 48.676525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241970, 35.845810, 48.840935>,  <38.486496, 36.004307, 49.114952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241970, 35.845810, 48.840935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469833, 0.878283, -0.088751,
		0.636825, 0.267598, -0.723080,
		-0.611319, -0.396246, -0.685039,
		38.058575, 35.726936, 48.635422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477325, 36.335258, 48.343124>,  <38.486496, 36.004307, 49.114952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477325, 36.335258, 48.343124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.122498, 36.168598, 48.422623>,  <37.909599, 36.068600, 48.470322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.122498, 36.168598, 48.422623>,  <38.477325, 36.335258, 48.343124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122498, 36.168598, 48.422623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435035, 0.898544, -0.057992,
		-0.154419, -0.137904, -0.978334,
		-0.887074, -0.416654, 0.198745,
		37.856377, 36.043602, 48.482246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983891, 36.714100, 47.928017>,  <38.477325, 36.335258, 48.343124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983891, 36.714100, 47.928017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.763378, 36.546528, 48.216621>,  <37.631069, 36.445984, 48.389786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.763378, 36.546528, 48.216621>,  <37.983891, 36.714100, 47.928017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763378, 36.546528, 48.216621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592716, 0.805278, 0.014691,
		-0.587173, -0.419553, -0.692245,
		-0.551286, -0.418931, 0.721513,
		37.597992, 36.420849, 48.433075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279713, 36.804718, 47.663002>,  <37.983891, 36.714100, 47.928017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279713, 36.804718, 47.663002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.272156, 36.759014, 48.060310>,  <37.267620, 36.731590, 48.298695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.272156, 36.759014, 48.060310>,  <37.279713, 36.804718, 47.663002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272156, 36.759014, 48.060310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678503, 0.731140, 0.071197,
		-0.734355, -0.672592, -0.091341,
		-0.018896, -0.114259, 0.993272,
		37.266487, 36.724735, 48.358292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597919, 36.933975, 47.840698>,  <37.279713, 36.804718, 47.663002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597919, 36.933975, 47.840698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784374, 36.964893, 48.193230>,  <36.896248, 36.983444, 48.404747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784374, 36.964893, 48.193230>,  <36.597919, 36.933975, 47.840698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784374, 36.964893, 48.193230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572362, 0.785965, 0.233797,
		-0.674621, -0.613421, 0.410610,
		0.466141, 0.077293, 0.881328,
		36.924217, 36.988083, 48.457626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047764, 37.070145, 48.409954>,  <36.597919, 36.933975, 47.840698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047764, 37.070145, 48.409954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.387974, 37.213600, 48.563828>,  <36.592098, 37.299675, 48.656151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.387974, 37.213600, 48.563828>,  <36.047764, 37.070145, 48.409954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387974, 37.213600, 48.563828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457688, 0.865051, 0.205446,
		-0.259092, -0.350803, 0.899894,
		0.850525, 0.358641, 0.384686,
		36.643131, 37.321194, 48.679234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891315, 37.335537, 49.122734>,  <36.047764, 37.070145, 48.409954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891315, 37.335537, 49.122734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.239357, 37.505859, 49.023445>,  <36.448181, 37.608051, 48.963871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.239357, 37.505859, 49.023445>,  <35.891315, 37.335537, 49.122734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239357, 37.505859, 49.023445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374039, 0.898429, 0.230043,
		0.320960, -0.107318, 0.940993,
		0.870104, 0.425802, -0.248219,
		36.500389, 37.633598, 48.948978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045815, 37.908516, 49.695168>,  <35.891315, 37.335537, 49.122734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045815, 37.908516, 49.695168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.271328, 38.024979, 49.386009>,  <36.406635, 38.094856, 49.200512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.271328, 38.024979, 49.386009>,  <36.045815, 37.908516, 49.695168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271328, 38.024979, 49.386009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320750, 0.939536, 0.119966,
		0.761097, 0.180273, 0.623085,
		0.563783, 0.291160, -0.772900,
		36.440464, 38.112328, 49.154140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553741, 38.459854, 49.927486>,  <36.045815, 37.908516, 49.695168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553741, 38.459854, 49.927486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.527683, 38.521709, 49.533157>,  <36.512047, 38.558823, 49.296562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.527683, 38.521709, 49.533157>,  <36.553741, 38.459854, 49.927486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527683, 38.521709, 49.533157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189325, 0.968060, 0.164364,
		0.979751, 0.197349, -0.033792,
		-0.065150, 0.154638, -0.985821,
		36.508137, 38.568100, 49.237411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836239, 39.168076, 49.721355>,  <36.553741, 38.459854, 49.927486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836239, 39.168076, 49.721355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.593899, 39.039272, 49.430359>,  <36.448494, 38.961990, 49.255760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.593899, 39.039272, 49.430359>,  <36.836239, 39.168076, 49.721355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593899, 39.039272, 49.430359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402407, 0.912861, -0.068936,
		0.686300, 0.250984, -0.682641,
		-0.605855, -0.322011, -0.727495,
		36.412144, 38.942669, 49.212109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759750, 39.741100, 49.253792>,  <36.836239, 39.168076, 49.721355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759750, 39.741100, 49.253792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464371, 39.487820, 49.161060>,  <36.287144, 39.335850, 49.105423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464371, 39.487820, 49.161060>,  <36.759750, 39.741100, 49.253792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464371, 39.487820, 49.161060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603514, 0.773986, -0.191615,
		0.300761, -0.001588, -0.953698,
		-0.738453, -0.633201, -0.231826,
		36.242836, 39.297859, 49.091511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669189, 39.889252, 48.629318>,  <36.759750, 39.741100, 49.253792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669189, 39.889252, 48.629318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.323563, 39.724045, 48.744415>,  <36.116184, 39.624920, 48.813473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.323563, 39.724045, 48.744415>,  <36.669189, 39.889252, 48.629318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323563, 39.724045, 48.744415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465322, 0.873404, -0.143667,
		-0.191979, -0.258031, -0.946871,
		-0.864071, -0.413019, 0.287743,
		36.064342, 39.600140, 48.830738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202873, 40.077667, 48.109238>,  <36.669189, 39.889252, 48.629318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202873, 40.077667, 48.109238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.983315, 39.963268, 48.423412>,  <35.851578, 39.894630, 48.611919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.983315, 39.963268, 48.423412>,  <36.202873, 40.077667, 48.109238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983315, 39.963268, 48.423412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542094, 0.837049, -0.074051,
		-0.636274, -0.466429, -0.614492,
		-0.548899, -0.285996, 0.785440,
		35.818645, 39.877468, 48.659046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640926, 40.362133, 47.968113>,  <36.202873, 40.077667, 48.109238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640926, 40.362133, 47.968113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.560242, 40.272640, 48.349533>,  <35.511833, 40.218945, 48.578384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.560242, 40.272640, 48.349533>,  <35.640926, 40.362133, 47.968113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560242, 40.272640, 48.349533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556834, 0.827114, 0.076274,
		-0.805760, -0.515584, -0.291417,
		-0.201710, -0.223730, 0.953550,
		35.499729, 40.205521, 48.635597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976860, 40.484764, 47.980984>,  <35.640926, 40.362133, 47.968113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976860, 40.484764, 47.980984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.111656, 40.511608, 48.356628>,  <35.192535, 40.527714, 48.582016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.111656, 40.511608, 48.356628>,  <34.976860, 40.484764, 47.980984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111656, 40.511608, 48.356628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671916, 0.715854, 0.189951,
		-0.659521, -0.695017, 0.286328,
		0.336989, 0.067112, 0.939114,
		35.212753, 40.531742, 48.638363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408398, 40.458866, 48.354904>,  <34.976860, 40.484764, 47.980984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408398, 40.458866, 48.354904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.664207, 40.636658, 48.605804>,  <34.817692, 40.743332, 48.756344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.664207, 40.636658, 48.605804>,  <34.408398, 40.458866, 48.354904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664207, 40.636658, 48.605804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719163, 0.634238, 0.283809,
		-0.271683, -0.632602, 0.725261,
		0.639526, 0.444475, 0.627255,
		34.856064, 40.770000, 48.793980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100327, 40.466225, 48.986656>,  <34.408398, 40.458866, 48.354904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100327, 40.466225, 48.986656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358704, 40.771484, 48.994350>,  <34.513729, 40.954639, 48.998966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358704, 40.771484, 48.994350>,  <34.100327, 40.466225, 48.986656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358704, 40.771484, 48.994350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729109, 0.609273, 0.311748,
		0.226190, -0.215394, 0.949970,
		0.645940, 0.763146, 0.019234,
		34.552486, 41.000427, 49.000122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742813, 40.799171, 49.361961>,  <34.100327, 40.466225, 48.986656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742813, 40.799171, 49.361961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029491, 41.072960, 49.308521>,  <34.201496, 41.237232, 49.276459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029491, 41.072960, 49.308521>,  <33.742813, 40.799171, 49.361961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029491, 41.072960, 49.308521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548916, 0.671827, 0.497332,
		0.430166, -0.283100, 0.857212,
		0.716693, 0.684473, -0.133599,
		34.244499, 41.278301, 49.268440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884354, 41.118114, 50.092674>,  <33.742813, 40.799171, 49.361961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884354, 41.118114, 50.092674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.011948, 41.369091, 49.808544>,  <34.088505, 41.519676, 49.638065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.011948, 41.369091, 49.808544>,  <33.884354, 41.118114, 50.092674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011948, 41.369091, 49.808544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504620, 0.746850, 0.433097,
		0.802253, 0.220298, 0.554850,
		0.318980, 0.627442, -0.710329,
		34.107643, 41.557323, 49.595444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212971, 41.670868, 50.417408>,  <33.884354, 41.118114, 50.092674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212971, 41.670868, 50.417408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.061211, 41.780075, 50.063793>,  <33.970154, 41.845600, 49.851624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.061211, 41.780075, 50.063793>,  <34.212971, 41.670868, 50.417408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061211, 41.780075, 50.063793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503373, 0.740783, 0.444810,
		0.776316, 0.613762, -0.143628,
		-0.379405, 0.273015, -0.884033,
		33.947388, 41.861980, 49.798584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323601, 42.441860, 50.214024>,  <34.212971, 41.670868, 50.417408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323601, 42.441860, 50.214024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.001068, 42.321243, 50.010494>,  <33.807549, 42.248875, 49.888374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.001068, 42.321243, 50.010494>,  <34.323601, 42.441860, 50.214024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001068, 42.321243, 50.010494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563198, 0.654209, 0.504795,
		0.180664, 0.693602, -0.697335,
		-0.806330, -0.301539, -0.508828,
		33.759171, 42.230782, 49.857845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885906, 43.015308, 50.269325>,  <34.323601, 42.441860, 50.214024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885906, 43.015308, 50.269325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.646606, 42.749508, 50.090202>,  <33.503029, 42.590027, 49.982727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.646606, 42.749508, 50.090202>,  <33.885906, 43.015308, 50.269325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646606, 42.749508, 50.090202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791160, 0.578496, 0.198513,
		0.127143, 0.473049, -0.871814,
		-0.598248, -0.664505, -0.447809,
		33.467133, 42.550156, 49.955860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427032, 43.374336, 49.835167>,  <33.885906, 43.015308, 50.269325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427032, 43.374336, 49.835167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238884, 43.027077, 49.898510>,  <33.125996, 42.818722, 49.936516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238884, 43.027077, 49.898510>,  <33.427032, 43.374336, 49.835167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238884, 43.027077, 49.898510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849877, 0.493961, 0.183608,
		-0.237622, -0.048222, -0.970160,
		-0.470367, -0.868146, 0.158358,
		33.097775, 42.766632, 49.946018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832348, 43.371098, 49.415245>,  <33.427032, 43.374336, 49.835167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832348, 43.371098, 49.415245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.728321, 43.088409, 49.678429>,  <32.665905, 42.918797, 49.836338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.728321, 43.088409, 49.678429>,  <32.832348, 43.371098, 49.415245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728321, 43.088409, 49.678429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862728, 0.476099, 0.170385,
		-0.433668, -0.523329, -0.733525,
		-0.260063, -0.706723, 0.657960,
		32.650303, 42.876392, 49.875816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405743, 43.729065, 49.148216>,  <32.832348, 43.371098, 49.415245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405743, 43.729065, 49.148216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.362953, 43.345127, 49.044476>,  <33.337280, 43.114765, 48.982231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.362953, 43.345127, 49.044476>,  <33.405743, 43.729065, 49.148216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362953, 43.345127, 49.044476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988117, -0.073674, -0.134896,
		0.110371, -0.270701, 0.956315,
		-0.106972, -0.959840, -0.259353,
		33.330860, 43.057175, 48.966671>
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
