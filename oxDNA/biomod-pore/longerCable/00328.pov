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
	<24.290955, 35.345749, 35.138428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.235262, 35.100487, 34.827389>,  <24.201847, 34.953331, 34.640766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.235262, 35.100487, 34.827389>,  <24.290955, 35.345749, 35.138428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.235262, 35.100487, 34.827389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883043, -0.278505, 0.377717,
		-0.448163, 0.739243, -0.502663,
		-0.139230, -0.613152, -0.777599,
		24.193493, 34.916542, 34.594109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.201324, 34.489155, 34.964558>,  <24.290955, 35.345749, 35.138428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.201324, 34.489155, 34.964558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406599, 34.722126, 35.216721>,  <24.529764, 34.861908, 35.368019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406599, 34.722126, 35.216721>,  <24.201324, 34.489155, 34.964558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.406599, 34.722126, 35.216721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631760, -0.753524, 0.181883,
		0.580964, 0.304929, -0.754652,
		0.513186, 0.582426, 0.630412,
		24.560555, 34.896854, 35.405846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.752417, 34.524624, 34.631348>,  <24.201324, 34.489155, 34.964558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.752417, 34.524624, 34.631348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.923136, 34.879280, 34.560123>,  <25.025566, 35.092075, 34.517387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.923136, 34.879280, 34.560123>,  <24.752417, 34.524624, 34.631348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.923136, 34.879280, 34.560123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345303, 0.022207, 0.938228,
		0.835829, -0.461918, -0.296684,
		0.426796, 0.886645, -0.178063,
		25.051174, 35.145275, 34.506706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415384, 34.556877, 34.908962>,  <24.752417, 34.524624, 34.631348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.415384, 34.556877, 34.908962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293779, 34.937107, 34.883717>,  <25.220816, 35.165245, 34.868568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293779, 34.937107, 34.883717>,  <25.415384, 34.556877, 34.908962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293779, 34.937107, 34.883717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420519, 0.193343, 0.886443,
		0.854833, 0.242951, -0.458514,
		-0.304013, 0.950575, -0.063110,
		25.202576, 35.222279, 34.864784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982573, 34.897675, 35.108448>,  <25.415384, 34.556877, 34.908962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982573, 34.897675, 35.108448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666012, 35.137287, 35.157181>,  <25.476076, 35.281055, 35.186420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666012, 35.137287, 35.157181>,  <25.982573, 34.897675, 35.108448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666012, 35.137287, 35.157181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343271, 0.270577, 0.899418,
		0.505817, 0.753622, -0.419766,
		-0.791400, 0.599035, 0.121834,
		25.428593, 35.316998, 35.193729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192076, 35.563942, 35.168167>,  <25.982573, 34.897675, 35.108448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192076, 35.563942, 35.168167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848230, 35.512684, 35.366013>,  <25.641924, 35.481930, 35.484722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848230, 35.512684, 35.366013>,  <26.192076, 35.563942, 35.168167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.848230, 35.512684, 35.366013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378191, 0.491348, 0.784569,
		-0.343565, 0.861485, -0.373908,
		-0.859613, -0.128142, 0.494616,
		25.590347, 35.474243, 35.514397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029533, 36.200176, 35.420292>,  <26.192076, 35.563942, 35.168167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029533, 36.200176, 35.420292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853098, 35.930939, 35.657742>,  <25.747236, 35.769398, 35.800209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853098, 35.930939, 35.657742>,  <26.029533, 36.200176, 35.420292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853098, 35.930939, 35.657742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379675, 0.459386, 0.803001,
		-0.813197, 0.579577, 0.052928,
		-0.441086, -0.673094, 0.593622,
		25.720772, 35.729012, 35.835827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610945, 36.582447, 35.839729>,  <26.029533, 36.200176, 35.420292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610945, 36.582447, 35.839729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762300, 36.247444, 35.997410>,  <25.853113, 36.046440, 36.092018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762300, 36.247444, 35.997410>,  <25.610945, 36.582447, 35.839729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762300, 36.247444, 35.997410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552643, 0.546039, 0.629625,
		-0.742569, -0.020390, 0.669460,
		0.378389, -0.837512, 0.394203,
		25.875816, 35.996189, 36.115669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.572903, 36.615982, 36.587486>,  <25.610945, 36.582447, 35.839729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.572903, 36.615982, 36.587486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.856260, 36.348946, 36.495838>,  <26.026276, 36.188725, 36.440849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.856260, 36.348946, 36.495838>,  <25.572903, 36.615982, 36.587486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.856260, 36.348946, 36.495838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645353, 0.481172, 0.593290,
		-0.285829, -0.568147, 0.771693,
		0.708393, -0.667594, -0.229122,
		26.068779, 36.148666, 36.427101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863735, 36.577419, 37.248665>,  <25.572903, 36.615982, 36.587486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863735, 36.577419, 37.248665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137331, 36.417755, 37.004425>,  <26.301489, 36.321957, 36.857883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137331, 36.417755, 37.004425>,  <25.863735, 36.577419, 37.248665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137331, 36.417755, 37.004425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718929, 0.510765, 0.471445,
		0.123688, -0.761439, 0.636327,
		0.683990, -0.399161, -0.610596,
		26.342527, 36.298008, 36.821247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300047, 36.154636, 37.608791>,  <25.863735, 36.577419, 37.248665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300047, 36.154636, 37.608791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508583, 36.271526, 37.288090>,  <26.633705, 36.341660, 37.095669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508583, 36.271526, 37.288090>,  <26.300047, 36.154636, 37.608791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508583, 36.271526, 37.288090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694065, 0.401398, 0.597624,
		0.496463, -0.868034, 0.006440,
		0.521343, 0.292228, -0.801751,
		26.664986, 36.359196, 37.047565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.973345, 35.898361, 37.697056>,  <26.300047, 36.154636, 37.608791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.973345, 35.898361, 37.697056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980831, 36.217991, 37.456680>,  <26.985323, 36.409771, 37.312454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980831, 36.217991, 37.456680>,  <26.973345, 35.898361, 37.697056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980831, 36.217991, 37.456680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690944, 0.424090, 0.585444,
		0.722666, -0.426171, -0.544180,
		0.018718, 0.799079, -0.600935,
		26.986446, 36.457714, 37.276402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488018, 36.395832, 37.602699>,  <26.973345, 35.898361, 37.697056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488018, 36.395832, 37.602699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769201, 36.117607, 37.543308>,  <27.937912, 35.950672, 37.507671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769201, 36.117607, 37.543308>,  <27.488018, 36.395832, 37.602699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769201, 36.117607, 37.543308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282370, -0.081327, -0.955852,
		0.652777, 0.713851, -0.253575,
		0.702958, -0.695560, -0.148482,
		27.980089, 35.908939, 37.498764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286003, 37.103954, 37.821804>,  <27.488018, 36.395832, 37.602699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286003, 37.103954, 37.821804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584049, 37.105804, 37.555035>,  <27.762877, 37.106915, 37.394974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584049, 37.105804, 37.555035>,  <27.286003, 37.103954, 37.821804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584049, 37.105804, 37.555035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562469, -0.532975, -0.632112,
		-0.358379, 0.846118, -0.394523,
		0.745113, 0.004629, -0.666922,
		27.807583, 37.107193, 37.354958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047392, 37.323441, 37.135311>,  <27.286003, 37.103954, 37.821804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047392, 37.323441, 37.135311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336052, 37.053474, 37.073711>,  <27.509249, 36.891495, 37.036751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336052, 37.053474, 37.073711>,  <27.047392, 37.323441, 37.135311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336052, 37.053474, 37.073711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600174, -0.499119, -0.625038,
		0.344984, 0.543482, -0.765253,
		0.721649, -0.674913, -0.153996,
		27.552547, 36.851002, 37.027512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162794, 37.235283, 36.488533>,  <27.047392, 37.323441, 37.135311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162794, 37.235283, 36.488533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217949, 36.886478, 36.676399>,  <27.251041, 36.677197, 36.789120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217949, 36.886478, 36.676399>,  <27.162794, 37.235283, 36.488533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217949, 36.886478, 36.676399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671260, -0.430954, -0.603066,
		0.728284, -0.232114, -0.644768,
		0.137885, -0.872011, 0.469665,
		27.259315, 36.624874, 36.817299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294186, 36.632759, 36.018063>,  <27.162794, 37.235283, 36.488533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294186, 36.632759, 36.018063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105371, 36.513527, 36.349926>,  <26.992083, 36.441986, 36.549042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105371, 36.513527, 36.349926>,  <27.294186, 36.632759, 36.018063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105371, 36.513527, 36.349926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732324, -0.391352, -0.557266,
		0.490799, -0.870626, -0.033560,
		-0.472037, -0.298082, 0.829656,
		26.963760, 36.424103, 36.598824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203291, 35.886765, 35.888912>,  <27.294186, 36.632759, 36.018063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203291, 35.886765, 35.888912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964777, 36.009258, 36.185738>,  <26.821669, 36.082756, 36.363834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964777, 36.009258, 36.185738>,  <27.203291, 35.886765, 35.888912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964777, 36.009258, 36.185738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661792, -0.710750, -0.238467,
		0.454396, -0.633287, 0.626476,
		-0.596286, 0.306238, 0.742066,
		26.785891, 36.101131, 36.408356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964804, 35.273026, 36.106972>,  <27.203291, 35.886765, 35.888912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964804, 35.273026, 36.106972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683283, 35.541061, 36.201321>,  <26.514370, 35.701885, 36.257931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683283, 35.541061, 36.201321>,  <26.964804, 35.273026, 36.106972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683283, 35.541061, 36.201321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697626, -0.589266, -0.407535,
		-0.134092, -0.451378, 0.882200,
		-0.703803, 0.670093, 0.235877,
		26.472141, 35.742088, 36.272083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535978, 34.903965, 36.582844>,  <26.964804, 35.273026, 36.106972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535978, 34.903965, 36.582844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328720, 35.217972, 36.447041>,  <26.204365, 35.406376, 36.365559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328720, 35.217972, 36.447041>,  <26.535978, 34.903965, 36.582844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328720, 35.217972, 36.447041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672131, -0.619211, -0.405977,
		-0.528927, 0.017836, 0.848480,
		-0.518148, 0.785022, -0.339506,
		26.173277, 35.453480, 36.345188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805111, 34.685863, 36.750626>,  <26.535978, 34.903965, 36.582844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805111, 34.685863, 36.750626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801920, 35.000294, 36.503395>,  <25.800005, 35.188953, 36.355057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801920, 35.000294, 36.503395>,  <25.805111, 34.685863, 36.750626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801920, 35.000294, 36.503395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863340, -0.317289, -0.392393,
		-0.504560, 0.530479, 0.681184,
		-0.007976, 0.786079, -0.618075,
		25.799526, 35.236118, 36.317974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.024994, 34.699242, 36.493454>,  <25.805111, 34.685863, 36.750626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.024994, 34.699242, 36.493454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.237614, 34.977551, 36.300228>,  <25.365185, 35.144535, 36.184292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.237614, 34.977551, 36.300228>,  <25.024994, 34.699242, 36.493454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.237614, 34.977551, 36.300228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639163, -0.044754, -0.767768,
		-0.555812, 0.716865, 0.420924,
		0.531548, 0.695774, -0.483069,
		25.397078, 35.186283, 36.155308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.549240, 35.175037, 36.253166>,  <25.024994, 34.699242, 36.493454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.549240, 35.175037, 36.253166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.874210, 35.250744, 36.032570>,  <25.069193, 35.296169, 35.900211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.874210, 35.250744, 36.032570>,  <24.549240, 35.175037, 36.253166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.874210, 35.250744, 36.032570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570185, 0.060209, -0.819307,
		-0.121861, 0.980078, 0.156831,
		0.812428, 0.189265, -0.551489,
		25.117939, 35.307522, 35.867123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.602297, 35.869030, 36.077431>,  <24.549240, 35.175037, 36.253166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.602297, 35.869030, 36.077431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938627, 35.806644, 35.870090>,  <25.140427, 35.769215, 35.745686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938627, 35.806644, 35.870090>,  <24.602297, 35.869030, 36.077431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.938627, 35.806644, 35.870090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539152, -0.156015, -0.827632,
		0.048211, 0.975364, -0.215270,
		0.840828, -0.155964, -0.518347,
		25.190876, 35.759853, 35.714588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.390354, 36.006958, 35.466991>,  <24.602297, 35.869030, 36.077431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.390354, 36.006958, 35.466991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.739084, 35.835518, 35.372143>,  <24.948322, 35.732655, 35.315235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.739084, 35.835518, 35.372143>,  <24.390354, 36.006958, 35.466991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.739084, 35.835518, 35.372143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311294, -0.111065, -0.943801,
		0.378175, 0.896643, -0.230249,
		0.871825, -0.428597, -0.237118,
		25.000631, 35.706940, 35.301006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.814373, 36.464123, 34.992462>,  <24.390354, 36.006958, 35.466991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.814373, 36.464123, 34.992462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.887836, 36.072510, 34.957233>,  <24.931913, 35.837540, 34.936096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.887836, 36.072510, 34.957233>,  <24.814373, 36.464123, 34.992462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.887836, 36.072510, 34.957233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331903, 0.022569, -0.943044,
		0.925262, 0.202427, -0.320800,
		0.183657, -0.979037, -0.088069,
		24.942934, 35.778797, 34.930813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.244144, 36.324753, 34.392052>,  <24.814373, 36.464123, 34.992462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.244144, 36.324753, 34.392052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080654, 35.967010, 34.464798>,  <24.982559, 35.752365, 34.508446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080654, 35.967010, 34.464798>,  <25.244144, 36.324753, 34.392052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.080654, 35.967010, 34.464798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230338, -0.091738, -0.968777,
		0.883113, -0.437855, -0.168508,
		-0.408726, -0.894353, 0.181870,
		24.958036, 35.698704, 34.519360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499031, 35.908981, 33.931908>,  <25.244144, 36.324753, 34.392052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499031, 35.908981, 33.931908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133974, 35.780075, 34.032490>,  <24.914940, 35.702732, 34.092838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133974, 35.780075, 34.032490>,  <25.499031, 35.908981, 33.931908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133974, 35.780075, 34.032490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243601, -0.065200, -0.967681,
		0.328245, -0.944401, -0.019000,
		-0.912641, -0.322265, 0.251458,
		24.860182, 35.683395, 34.107929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105513, 35.579769, 34.243908>,  <25.499031, 35.908981, 33.931908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105513, 35.579769, 34.243908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974129, 35.320366, 33.969231>,  <25.895298, 35.164722, 33.804424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974129, 35.320366, 33.969231>,  <26.105513, 35.579769, 34.243908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974129, 35.320366, 33.969231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740323, -0.628252, 0.239209,
		-0.586546, -0.429803, 0.686464,
		-0.328460, -0.648512, -0.686692,
		25.875591, 35.125813, 33.763222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916204, 35.522999, 34.485939>,  <26.105513, 35.579769, 34.243908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916204, 35.522999, 34.485939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294113, 35.395340, 34.456142>,  <27.520859, 35.318745, 34.438267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294113, 35.395340, 34.456142>,  <26.916204, 35.522999, 34.485939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294113, 35.395340, 34.456142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078297, 0.440516, -0.894324,
		0.318235, 0.839100, 0.441176,
		0.944773, -0.319148, -0.074489,
		27.577545, 35.299595, 34.433796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178747, 35.927422, 33.935833>,  <26.916204, 35.522999, 34.485939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178747, 35.927422, 33.935833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426941, 35.616405, 33.976673>,  <27.575857, 35.429794, 34.001179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426941, 35.616405, 33.976673>,  <27.178747, 35.927422, 33.935833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426941, 35.616405, 33.976673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314499, 0.127453, -0.940663,
		0.718393, 0.615778, 0.323619,
		0.620485, -0.777543, 0.102100,
		27.613087, 35.383144, 34.007301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838015, 36.162457, 33.939201>,  <27.178747, 35.927422, 33.935833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838015, 36.162457, 33.939201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837976, 35.785461, 33.805500>,  <27.837954, 35.559265, 33.725281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837976, 35.785461, 33.805500>,  <27.838015, 36.162457, 33.939201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837976, 35.785461, 33.805500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172248, 0.329241, -0.928402,
		0.985054, -0.057661, 0.162310,
		-0.000093, -0.942484, -0.334252,
		27.837948, 35.502716, 33.705223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465790, 35.967945, 33.689449>,  <27.838015, 36.162457, 33.939201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465790, 35.967945, 33.689449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228212, 35.705318, 33.503483>,  <28.085667, 35.547741, 33.391903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.228212, 35.705318, 33.503483>,  <28.465790, 35.967945, 33.689449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228212, 35.705318, 33.503483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521407, 0.125939, -0.843963,
		0.612671, -0.743678, 0.267539,
		-0.593943, -0.656569, -0.464918,
		28.050030, 35.508347, 33.364006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999338, 35.562592, 33.366741>,  <28.465790, 35.967945, 33.689449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999338, 35.562592, 33.366741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646063, 35.529373, 33.182098>,  <28.434097, 35.509441, 33.071312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646063, 35.529373, 33.182098>,  <28.999338, 35.562592, 33.366741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646063, 35.529373, 33.182098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448800, 0.136232, -0.883187,
		0.136232, -0.987190, -0.083047,
		0.883187, 0.083047, 0.461610,
		28.381107, 35.504459, 33.043613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112455, 35.362450, 32.654613>,  <28.999338, 35.562592, 33.366741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112455, 35.362450, 32.654613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766094, 35.559834, 32.687397>,  <28.558277, 35.678265, 32.707066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766094, 35.559834, 32.687397>,  <29.112455, 35.362450, 32.654613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766094, 35.559834, 32.687397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270881, 0.600315, -0.752493,
		-0.420522, -0.629384, -0.653481,
		-0.865902, 0.493455, 0.081957,
		28.506323, 35.707870, 32.711983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914371, 34.773499, 32.951431>,  <29.112455, 35.362450, 32.654613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914371, 34.773499, 32.951431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671162, 35.036205, 32.773010>,  <28.525236, 35.193829, 32.665958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671162, 35.036205, 32.773010>,  <28.914371, 34.773499, 32.951431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671162, 35.036205, 32.773010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547364, -0.060173, -0.834729,
		-0.575064, -0.751687, -0.322905,
		-0.608025, 0.656769, -0.446050,
		28.488754, 35.233234, 32.639194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044640, 34.558266, 32.280945>,  <28.914371, 34.773499, 32.951431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044640, 34.558266, 32.280945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849930, 34.906864, 32.257149>,  <28.733103, 35.116024, 32.242870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849930, 34.906864, 32.257149>,  <29.044640, 34.558266, 32.280945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849930, 34.906864, 32.257149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387458, 0.154372, -0.908871,
		-0.782895, -0.465468, -0.412814,
		-0.486777, 0.871498, -0.059492,
		28.703897, 35.168312, 32.239300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511803, 34.688850, 31.616619>,  <29.044640, 34.558266, 32.280945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511803, 34.688850, 31.616619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664511, 35.035988, 31.743797>,  <28.756136, 35.244270, 31.820105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664511, 35.035988, 31.743797>,  <28.511803, 34.688850, 31.616619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664511, 35.035988, 31.743797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360100, 0.177156, -0.915938,
		-0.851222, 0.464172, -0.244879,
		0.381771, 0.867848, 0.317948,
		28.779041, 35.296341, 31.839182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388355, 35.376873, 31.265022>,  <28.511803, 34.688850, 31.616619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388355, 35.376873, 31.265022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761839, 35.421112, 31.401232>,  <28.985929, 35.447655, 31.482958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761839, 35.421112, 31.401232>,  <28.388355, 35.376873, 31.265022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761839, 35.421112, 31.401232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324349, 0.141466, -0.935300,
		-0.151618, 0.983745, 0.096214,
		0.933708, 0.110601, 0.340525,
		29.041952, 35.454292, 31.503389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695194, 35.555603, 30.699009>,  <28.388355, 35.376873, 31.265022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695194, 35.555603, 30.699009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019167, 35.522865, 30.931322>,  <29.213551, 35.503223, 31.070711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019167, 35.522865, 30.931322>,  <28.695194, 35.555603, 30.699009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019167, 35.522865, 30.931322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559017, -0.191969, -0.806628,
		0.177507, 0.977983, -0.109732,
		0.809933, -0.081840, 0.580785,
		29.262146, 35.498314, 31.105558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422829, 35.811337, 30.677904>,  <28.695194, 35.555603, 30.699009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422829, 35.811337, 30.677904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283047, 36.134609, 30.867525>,  <29.199177, 36.328571, 30.981298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283047, 36.134609, 30.867525>,  <29.422829, 35.811337, 30.677904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283047, 36.134609, 30.867525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179691, -0.554369, 0.812641,
		0.919560, 0.198799, 0.338950,
		-0.349456, 0.808179, 0.474054,
		29.178209, 36.377064, 31.009741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817995, 35.914532, 31.276232>,  <29.422829, 35.811337, 30.677904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817995, 35.914532, 31.276232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450449, 36.059978, 31.337509>,  <29.229921, 36.147247, 31.374275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450449, 36.059978, 31.337509>,  <29.817995, 35.914532, 31.276232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450449, 36.059978, 31.337509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034681, -0.461182, 0.886628,
		0.393045, 0.809378, 0.436375,
		-0.918865, 0.363618, 0.153195,
		29.174789, 36.169064, 31.383467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649763, 36.164722, 31.941141>,  <29.817995, 35.914532, 31.276232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649763, 36.164722, 31.941141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295227, 36.065327, 31.784859>,  <29.082504, 36.005688, 31.691090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295227, 36.065327, 31.784859>,  <29.649763, 36.164722, 31.941141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295227, 36.065327, 31.784859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297176, -0.341797, 0.891550,
		-0.355084, 0.906326, 0.229103,
		-0.886342, -0.248491, -0.390705,
		29.029324, 35.990780, 31.667646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013084, 36.502018, 32.242413>,  <29.649763, 36.164722, 31.941141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013084, 36.502018, 32.242413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939636, 36.132732, 32.107384>,  <28.895567, 35.911160, 32.026367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939636, 36.132732, 32.107384>,  <29.013084, 36.502018, 32.242413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939636, 36.132732, 32.107384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494250, -0.210134, 0.843541,
		-0.849707, 0.321733, -0.417716,
		-0.183618, -0.923218, -0.337569,
		28.884550, 35.855766, 32.006115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277533, 36.438423, 32.316860>,  <29.013084, 36.502018, 32.242413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277533, 36.438423, 32.316860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435848, 36.071415, 32.301346>,  <28.530838, 35.851212, 32.292038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435848, 36.071415, 32.301346>,  <28.277533, 36.438423, 32.316860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435848, 36.071415, 32.301346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581289, -0.283002, 0.762898,
		-0.710952, -0.279401, -0.645354,
		0.395791, -0.917521, -0.038788,
		28.554586, 35.796158, 32.289711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610476, 36.021793, 32.280899>,  <28.277533, 36.438423, 32.316860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610476, 36.021793, 32.280899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907896, 35.789532, 32.413548>,  <28.086348, 35.650173, 32.493137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907896, 35.789532, 32.413548>,  <27.610476, 36.021793, 32.280899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907896, 35.789532, 32.413548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579285, -0.311623, 0.753206,
		-0.334021, -0.752143, -0.568076,
		0.743545, -0.580664, 0.331617,
		28.130960, 35.615334, 32.513035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305485, 35.275085, 32.340839>,  <27.610476, 36.021793, 32.280899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305485, 35.275085, 32.340839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619644, 35.372093, 32.568638>,  <27.808140, 35.430298, 32.705318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619644, 35.372093, 32.568638>,  <27.305485, 35.275085, 32.340839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619644, 35.372093, 32.568638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544374, -0.167296, 0.821991,
		0.294623, -0.955613, 0.000626,
		0.785400, 0.242518, 0.569500,
		27.855265, 35.444847, 32.739487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240776, 34.656418, 32.817535>,  <27.305485, 35.275085, 32.340839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240776, 34.656418, 32.817535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495329, 34.920074, 32.977814>,  <27.648062, 35.078266, 33.073978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495329, 34.920074, 32.977814>,  <27.240776, 34.656418, 32.817535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495329, 34.920074, 32.977814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260337, -0.305447, 0.915929,
		0.726113, -0.687197, -0.022784,
		0.636384, 0.659137, 0.400692,
		27.686245, 35.117817, 33.098022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826229, 34.345455, 33.232079>,  <27.240776, 34.656418, 32.817535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826229, 34.345455, 33.232079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790478, 34.715038, 33.380844>,  <27.769028, 34.936787, 33.470104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790478, 34.715038, 33.380844>,  <27.826229, 34.345455, 33.232079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790478, 34.715038, 33.380844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078758, -0.378795, 0.922124,
		0.992879, 0.053127, 0.106625,
		-0.089378, 0.923955, 0.371913,
		27.763664, 34.992226, 33.492416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279423, 34.394520, 33.798691>,  <27.826229, 34.345455, 33.232079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279423, 34.394520, 33.798691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012133, 34.685947, 33.858913>,  <27.851759, 34.860802, 33.895046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012133, 34.685947, 33.858913>,  <28.279423, 34.394520, 33.798691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012133, 34.685947, 33.858913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094490, -0.283852, 0.954201,
		0.737934, 0.623395, 0.258519,
		-0.668225, 0.728565, 0.150559,
		27.811665, 34.904518, 33.904079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570633, 33.922211, 34.326023>,  <28.279423, 34.394520, 33.798691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570633, 33.922211, 34.326023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609108, 33.643147, 34.609997>,  <28.632193, 33.475708, 34.780380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609108, 33.643147, 34.609997>,  <28.570633, 33.922211, 34.326023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609108, 33.643147, 34.609997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990063, 0.140569, 0.004001,
		-0.102587, 0.702499, 0.704253,
		0.096185, -0.697665, 0.709938,
		28.637964, 33.433846, 34.822979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067968, 34.140816, 34.814709>,  <28.570633, 33.922211, 34.326023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067968, 34.140816, 34.814709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029119, 33.743118, 34.832802>,  <29.005810, 33.504501, 34.843658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029119, 33.743118, 34.832802>,  <29.067968, 34.140816, 34.814709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029119, 33.743118, 34.832802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994361, -0.094986, 0.047165,
		-0.042598, 0.049555, 0.997863,
		-0.097121, -0.994244, 0.045229,
		28.999983, 33.444843, 34.846371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332565, 33.897568, 35.405266>,  <29.067968, 34.140816, 34.814709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332565, 33.897568, 35.405266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383007, 33.616894, 35.124767>,  <29.413271, 33.448490, 34.956470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383007, 33.616894, 35.124767>,  <29.332565, 33.897568, 35.405266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383007, 33.616894, 35.124767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991533, 0.111231, 0.067004,
		0.030985, -0.703756, 0.709766,
		0.126102, -0.701680, -0.701244,
		29.420837, 33.406391, 34.914394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794096, 33.392673, 35.643452>,  <29.332565, 33.897568, 35.405266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794096, 33.392673, 35.643452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838367, 33.469990, 35.253502>,  <29.864929, 33.516380, 35.019531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838367, 33.469990, 35.253502>,  <29.794096, 33.392673, 35.643452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838367, 33.469990, 35.253502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991807, 0.041479, 0.120823,
		0.063791, -0.980263, -0.187121,
		0.110677, 0.193296, -0.974878,
		29.871571, 33.527977, 34.961037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406078, 33.080502, 35.401993>,  <29.794096, 33.392673, 35.643452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406078, 33.080502, 35.401993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339725, 33.409981, 35.185101>,  <30.299913, 33.607666, 35.054966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339725, 33.409981, 35.185101>,  <30.406078, 33.080502, 35.401993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339725, 33.409981, 35.185101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962711, 0.254420, 0.091968,
		0.213707, -0.506752, -0.835184,
		-0.165883, 0.823695, -0.542227,
		30.289961, 33.657089, 35.022434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955215, 33.282211, 34.840855>,  <30.406078, 33.080502, 35.401993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955215, 33.282211, 34.840855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773840, 33.615768, 34.966721>,  <30.665014, 33.815903, 35.042240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773840, 33.615768, 34.966721>,  <30.955215, 33.282211, 34.840855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773840, 33.615768, 34.966721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889839, 0.403443, 0.213120,
		0.050770, 0.376637, -0.924969,
		-0.453441, 0.833893, 0.314663,
		30.637808, 33.865936, 35.061119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072247, 33.234852, 34.144238>,  <30.955215, 33.282211, 34.840855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072247, 33.234852, 34.144238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186127, 32.936340, 33.903568>,  <31.254456, 32.757233, 33.759167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186127, 32.936340, 33.903568>,  <31.072247, 33.234852, 34.144238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186127, 32.936340, 33.903568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474087, 0.655135, -0.588252,
		0.833178, -0.117770, 0.540319,
		0.284703, -0.746277, -0.601677,
		31.271538, 32.712456, 33.723064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764494, 33.294899, 34.155460>,  <31.072247, 33.234852, 34.144238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764494, 33.294899, 34.155460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648073, 33.077656, 33.840420>,  <31.578220, 32.947311, 33.651394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648073, 33.077656, 33.840420>,  <31.764494, 33.294899, 34.155460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648073, 33.077656, 33.840420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577766, 0.556388, -0.597175,
		0.762546, -0.628860, 0.151853,
		-0.291050, -0.543109, -0.787605,
		31.560759, 32.914722, 33.604137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468998, 33.448906, 33.901287>,  <31.764494, 33.294899, 34.155460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468998, 33.448906, 33.901287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216660, 33.325447, 33.616535>,  <32.065254, 33.251373, 33.445686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216660, 33.325447, 33.616535>,  <32.468998, 33.448906, 33.901287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216660, 33.325447, 33.616535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565105, 0.445926, -0.694123,
		0.531683, -0.840171, -0.106894,
		-0.630849, -0.308647, -0.711876,
		32.027405, 33.232853, 33.402973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752827, 33.012337, 33.369827>,  <32.468998, 33.448906, 33.901287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752827, 33.012337, 33.369827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486237, 33.294231, 33.272533>,  <32.326283, 33.463367, 33.214157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486237, 33.294231, 33.272533>,  <32.752827, 33.012337, 33.369827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486237, 33.294231, 33.272533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687907, 0.455536, -0.565041,
		-0.287401, -0.543907, -0.788394,
		-0.666472, 0.704735, -0.243236,
		32.286293, 33.505653, 33.199562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755836, 33.180943, 32.618900>,  <32.752827, 33.012337, 33.369827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755836, 33.180943, 32.618900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634003, 33.474373, 32.861916>,  <32.560902, 33.650429, 33.007725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634003, 33.474373, 32.861916>,  <32.755836, 33.180943, 32.618900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634003, 33.474373, 32.861916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798147, 0.544659, -0.257504,
		-0.519798, 0.406471, -0.751393,
		-0.304585, 0.733572, 0.607536,
		32.542625, 33.694443, 33.044178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522808, 33.828476, 32.335899>,  <32.755836, 33.180943, 32.618900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522808, 33.828476, 32.335899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658878, 33.951328, 32.691418>,  <32.740520, 34.025040, 32.904728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658878, 33.951328, 32.691418>,  <32.522808, 33.828476, 32.335899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658878, 33.951328, 32.691418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817837, 0.369880, -0.440831,
		-0.464141, 0.876845, -0.125363,
		0.340171, 0.307134, 0.888792,
		32.760929, 34.043468, 32.958054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563229, 34.615612, 32.417034>,  <32.522808, 33.828476, 32.335899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563229, 34.615612, 32.417034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822773, 34.365429, 32.590370>,  <32.978500, 34.215321, 32.694370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822773, 34.365429, 32.590370>,  <32.563229, 34.615612, 32.417034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822773, 34.365429, 32.590370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728023, 0.344707, -0.592587,
		0.221263, 0.699987, 0.679014,
		0.648865, -0.625456, 0.433336,
		33.017433, 34.177792, 32.720371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121033, 35.063946, 32.434322>,  <32.563229, 34.615612, 32.417034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121033, 35.063946, 32.434322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232426, 34.680164, 32.451721>,  <33.299259, 34.449894, 32.462158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232426, 34.680164, 32.451721>,  <33.121033, 35.063946, 32.434322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232426, 34.680164, 32.451721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721115, 0.178961, -0.669303,
		0.634384, 0.217751, 0.741715,
		0.278479, -0.959457, 0.043494,
		33.315968, 34.392326, 32.464767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888042, 34.956150, 32.576542>,  <33.121033, 35.063946, 32.434322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888042, 34.956150, 32.576542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739063, 34.651577, 32.364315>,  <33.649673, 34.468834, 32.236980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739063, 34.651577, 32.364315>,  <33.888042, 34.956150, 32.576542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739063, 34.651577, 32.364315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668219, 0.176707, -0.722674,
		0.644023, -0.623695, 0.442989,
		-0.372450, -0.761432, -0.530568,
		33.627327, 34.423149, 32.205143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460445, 34.477318, 32.218903>,  <33.888042, 34.956150, 32.576542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460445, 34.477318, 32.218903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118927, 34.394234, 32.027954>,  <33.914017, 34.344383, 31.913383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118927, 34.394234, 32.027954>,  <34.460445, 34.477318, 32.218903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118927, 34.394234, 32.027954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488045, -0.000140, -0.872819,
		0.181229, -0.978190, 0.101492,
		-0.853797, -0.207713, -0.477375,
		33.862789, 34.331921, 31.884741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621094, 33.788315, 31.842735>,  <34.460445, 34.477318, 32.218903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621094, 33.788315, 31.842735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337105, 34.011673, 31.671093>,  <34.166710, 34.145687, 31.568108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337105, 34.011673, 31.671093>,  <34.621094, 33.788315, 31.842735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337105, 34.011673, 31.671093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317895, -0.289595, -0.902816,
		-0.628398, -0.777385, 0.028093,
		-0.709971, 0.558397, -0.429107,
		34.124115, 34.179192, 31.542360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189453, 33.385727, 31.442797>,  <34.621094, 33.788315, 31.842735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189453, 33.385727, 31.442797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222958, 33.761761, 31.310602>,  <34.243061, 33.987381, 31.231285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222958, 33.761761, 31.310602>,  <34.189453, 33.385727, 31.442797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222958, 33.761761, 31.310602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276083, -0.340563, -0.898774,
		-0.957477, -0.015960, -0.288067,
		0.083760, 0.940086, -0.330488,
		34.248085, 34.043785, 31.211456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948593, 33.441360, 30.776857>,  <34.189453, 33.385727, 31.442797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948593, 33.441360, 30.776857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142796, 33.790867, 30.788317>,  <34.259315, 34.000572, 30.795193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142796, 33.790867, 30.788317>,  <33.948593, 33.441360, 30.776857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142796, 33.790867, 30.788317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318907, -0.146497, -0.936396,
		-0.813993, 0.463760, -0.349775,
		0.485504, 0.873765, 0.028649,
		34.288448, 34.052998, 30.796911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779346, 33.755184, 30.266758>,  <33.948593, 33.441360, 30.776857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779346, 33.755184, 30.266758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123116, 33.930912, 30.371368>,  <34.329376, 34.036346, 30.434134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123116, 33.930912, 30.371368>,  <33.779346, 33.755184, 30.266758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123116, 33.930912, 30.371368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323061, -0.070167, -0.943774,
		-0.396265, 0.895588, -0.202229,
		0.859422, 0.439317, 0.261525,
		34.380943, 34.062706, 30.449825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911728, 34.138161, 29.742121>,  <33.779346, 33.755184, 30.266758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911728, 34.138161, 29.742121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266708, 34.125233, 29.926029>,  <34.479694, 34.117477, 30.036375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266708, 34.125233, 29.926029>,  <33.911728, 34.138161, 29.742121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266708, 34.125233, 29.926029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459649, -0.011550, -0.888026,
		0.034012, 0.999411, 0.004606,
		0.887449, -0.032321, 0.459771,
		34.532944, 34.115536, 30.063961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374508, 34.692825, 29.314257>,  <33.911728, 34.138161, 29.742121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374508, 34.692825, 29.314257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594234, 34.425152, 29.514435>,  <34.726070, 34.264549, 29.634542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594234, 34.425152, 29.514435>,  <34.374508, 34.692825, 29.314257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594234, 34.425152, 29.514435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562113, -0.147214, -0.813853,
		0.618289, 0.728369, 0.295290,
		0.549315, -0.669183, 0.500447,
		34.759029, 34.224396, 29.664570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919979, 34.939171, 29.220320>,  <34.374508, 34.692825, 29.314257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919979, 34.939171, 29.220320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012238, 34.562359, 29.317799>,  <35.067593, 34.336273, 29.376286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012238, 34.562359, 29.317799>,  <34.919979, 34.939171, 29.220320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012238, 34.562359, 29.317799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577386, -0.069091, -0.813542,
		0.783215, 0.328350, 0.527977,
		0.230649, -0.942026, 0.243698,
		35.081432, 34.279751, 29.390907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567101, 34.950813, 29.141680>,  <34.919979, 34.939171, 29.220320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567101, 34.950813, 29.141680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493893, 34.557579, 29.138796>,  <35.449966, 34.321640, 29.137066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493893, 34.557579, 29.138796>,  <35.567101, 34.950813, 29.141680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493893, 34.557579, 29.138796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522228, -0.091005, -0.847937,
		0.832935, -0.158957, 0.530049,
		-0.183023, -0.983082, -0.007210,
		35.438988, 34.262653, 29.136633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105812, 34.682468, 28.781023>,  <35.567101, 34.950813, 29.141680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105812, 34.682468, 28.781023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846630, 34.378593, 28.759003>,  <35.691120, 34.196266, 28.745790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846630, 34.378593, 28.759003>,  <36.105812, 34.682468, 28.781023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846630, 34.378593, 28.759003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262360, -0.154750, -0.952481,
		0.715071, -0.631604, 0.299583,
		-0.647951, -0.759690, -0.055050,
		35.652245, 34.150688, 28.742487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442272, 34.148880, 28.310432>,  <36.105812, 34.682468, 28.781023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442272, 34.148880, 28.310432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048122, 34.080811, 28.306992>,  <35.811630, 34.039970, 28.304928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048122, 34.080811, 28.306992>,  <36.442272, 34.148880, 28.310432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048122, 34.080811, 28.306992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021973, -0.076847, -0.996801,
		0.168966, -0.982414, 0.079462,
		-0.985377, -0.170171, -0.008602,
		35.752510, 34.029758, 28.304411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307732, 33.535545, 27.852589>,  <36.442272, 34.148880, 28.310432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307732, 33.535545, 27.852589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958122, 33.727577, 27.882551>,  <35.748356, 33.842796, 27.900530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958122, 33.727577, 27.882551>,  <36.307732, 33.535545, 27.852589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958122, 33.727577, 27.882551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149117, -0.118299, -0.981718,
		-0.462440, -0.869212, 0.174984,
		-0.874021, 0.480079, 0.074908,
		35.695915, 33.871601, 27.905024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883179, 33.180901, 27.440435>,  <36.307732, 33.535545, 27.852589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883179, 33.180901, 27.440435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702011, 33.534275, 27.488449>,  <35.593311, 33.746300, 27.517258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702011, 33.534275, 27.488449>,  <35.883179, 33.180901, 27.440435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702011, 33.534275, 27.488449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194195, 0.033649, -0.980386,
		-0.870144, -0.467348, 0.156318,
		-0.452922, 0.883433, 0.120036,
		35.566135, 33.799305, 27.524460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246716, 33.078133, 27.170250>,  <35.883179, 33.180901, 27.440435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246716, 33.078133, 27.170250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293781, 33.475182, 27.181944>,  <35.322021, 33.713409, 27.188959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293781, 33.475182, 27.181944>,  <35.246716, 33.078133, 27.170250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293781, 33.475182, 27.181944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232055, 0.056106, -0.971083,
		-0.965560, 0.107478, 0.236945,
		0.117664, 0.992623, 0.029233,
		35.329079, 33.772968, 27.190714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748714, 33.287449, 26.661282>,  <35.246716, 33.078133, 27.170250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748714, 33.287449, 26.661282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010647, 33.586720, 26.704035>,  <35.167805, 33.766281, 26.729687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010647, 33.586720, 26.704035>,  <34.748714, 33.287449, 26.661282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010647, 33.586720, 26.704035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244598, 0.343609, -0.906700,
		-0.715102, 0.567590, 0.408009,
		0.654829, 0.748181, 0.106884,
		35.207096, 33.811172, 26.736099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513805, 33.824539, 26.169533>,  <34.748714, 33.287449, 26.661282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513805, 33.824539, 26.169533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879566, 33.964237, 26.251400>,  <35.099022, 34.048058, 26.300520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879566, 33.964237, 26.251400>,  <34.513805, 33.824539, 26.169533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879566, 33.964237, 26.251400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099769, 0.295568, -0.950098,
		-0.392314, 0.889193, 0.235424,
		0.914404, 0.349249, 0.204669,
		35.153889, 34.069012, 26.312801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569359, 34.513466, 25.925512>,  <34.513805, 33.824539, 26.169533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569359, 34.513466, 25.925512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940815, 34.366135, 25.943195>,  <35.163689, 34.277737, 25.953806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940815, 34.366135, 25.943195>,  <34.569359, 34.513466, 25.925512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940815, 34.366135, 25.943195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185550, 0.357975, -0.915109,
		0.321236, 0.858013, 0.400775,
		0.928643, -0.368330, 0.044210,
		35.219406, 34.255634, 25.956459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955658, 34.967323, 25.699175>,  <34.569359, 34.513466, 25.925512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955658, 34.967323, 25.699175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206539, 34.661320, 25.640692>,  <35.357067, 34.477718, 25.605602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206539, 34.661320, 25.640692>,  <34.955658, 34.967323, 25.699175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206539, 34.661320, 25.640692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195154, 0.336096, -0.921387,
		0.754008, 0.549367, 0.360096,
		0.627206, -0.765007, -0.146208,
		35.394699, 34.431816, 25.596828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566368, 35.296768, 25.470478>,  <34.955658, 34.967323, 25.699175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566368, 35.296768, 25.470478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557159, 34.915890, 25.348633>,  <35.551632, 34.687363, 25.275526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557159, 34.915890, 25.348633>,  <35.566368, 35.296768, 25.470478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557159, 34.915890, 25.348633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037799, 0.303648, -0.952034,
		0.999020, -0.033434, 0.029001,
		-0.023024, -0.952198, -0.304615,
		35.550251, 34.630230, 25.257248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044174, 35.272526, 24.945539>,  <35.566368, 35.296768, 25.470478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044174, 35.272526, 24.945539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798576, 34.960812, 24.895382>,  <35.651218, 34.773781, 24.865288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798576, 34.960812, 24.895382>,  <36.044174, 35.272526, 24.945539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798576, 34.960812, 24.895382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040144, 0.189490, -0.981062,
		0.788291, -0.597329, -0.147629,
		-0.613991, -0.779289, -0.125394,
		35.614380, 34.727024, 24.857763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195572, 34.942265, 24.326698>,  <36.044174, 35.272526, 24.945539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195572, 34.942265, 24.326698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827816, 34.805996, 24.405344>,  <35.607162, 34.724236, 24.452532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827816, 34.805996, 24.405344>,  <36.195572, 34.942265, 24.326698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827816, 34.805996, 24.405344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247975, 0.114002, -0.962035,
		0.305325, -0.933245, -0.189291,
		-0.919394, -0.340673, 0.196614,
		35.551998, 34.703793, 24.464329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229259, 34.501595, 23.829697>,  <36.195572, 34.942265, 24.326698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229259, 34.501595, 23.829697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843166, 34.562328, 23.914803>,  <35.611511, 34.598770, 23.965866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843166, 34.562328, 23.914803>,  <36.229259, 34.501595, 23.829697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843166, 34.562328, 23.914803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207212, 0.051682, -0.976930,
		-0.159327, -0.987054, -0.018424,
		-0.965235, 0.151834, 0.212763,
		35.553596, 34.607880, 23.978632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790146, 34.204826, 23.293623>,  <36.229259, 34.501595, 23.829697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790146, 34.204826, 23.293623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536110, 34.471203, 23.450178>,  <35.383690, 34.631027, 23.544111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536110, 34.471203, 23.450178>,  <35.790146, 34.204826, 23.293623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536110, 34.471203, 23.450178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397540, 0.152646, -0.904799,
		-0.662285, -0.730222, 0.167794,
		-0.635091, 0.665939, 0.391388,
		35.345581, 34.670986, 23.567595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093964, 34.153767, 22.899506>,  <35.790146, 34.204826, 23.293623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093964, 34.153767, 22.899506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113766, 34.504364, 23.091047>,  <35.125645, 34.714722, 23.205973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113766, 34.504364, 23.091047>,  <35.093964, 34.153767, 22.899506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113766, 34.504364, 23.091047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213687, 0.477636, -0.852175,
		-0.975647, -0.060141, 0.210940,
		0.049502, 0.876497, 0.478856,
		35.128616, 34.767315, 23.234705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515266, 34.558178, 22.607735>,  <35.093964, 34.153767, 22.899506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515266, 34.558178, 22.607735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754490, 34.821369, 22.790775>,  <34.898022, 34.979282, 22.900599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754490, 34.821369, 22.790775>,  <34.515266, 34.558178, 22.607735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754490, 34.821369, 22.790775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167267, 0.660862, -0.731631,
		-0.783805, 0.361015, 0.505290,
		0.598057, 0.657974, 0.457601,
		34.933907, 35.018761, 22.928055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174026, 35.214005, 22.489681>,  <34.515266, 34.558178, 22.607735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174026, 35.214005, 22.489681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559444, 35.284431, 22.570269>,  <34.790695, 35.326687, 22.618622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559444, 35.284431, 22.570269>,  <34.174026, 35.214005, 22.489681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559444, 35.284431, 22.570269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024534, 0.691663, -0.721803,
		-0.266436, 0.700430, 0.662126,
		0.963540, 0.176070, 0.201469,
		34.848507, 35.337254, 22.630709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193027, 35.948502, 22.519463>,  <34.174026, 35.214005, 22.489681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193027, 35.948502, 22.519463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577595, 35.846687, 22.477718>,  <34.808334, 35.785599, 22.452671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577595, 35.846687, 22.477718>,  <34.193027, 35.948502, 22.519463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577595, 35.846687, 22.477718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088864, 0.646374, -0.757828,
		0.260349, 0.719314, 0.644054,
		0.961416, -0.254534, -0.104362,
		34.866020, 35.770329, 22.446409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626095, 36.574532, 22.677206>,  <34.193027, 35.948502, 22.519463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626095, 36.574532, 22.677206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907879, 36.367256, 22.483206>,  <35.076950, 36.242893, 22.366806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907879, 36.367256, 22.483206>,  <34.626095, 36.574532, 22.677206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907879, 36.367256, 22.483206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036387, 0.708814, -0.704456,
		0.708814, 0.478610, 0.518184,
		0.704456, -0.518184, -0.485003,
		35.119217, 36.211800, 22.337706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040928, 37.085114, 22.406237>,  <34.626095, 36.574532, 22.677206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040928, 37.085114, 22.406237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111580, 36.760395, 22.183603>,  <35.153973, 36.565563, 22.050024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111580, 36.760395, 22.183603>,  <35.040928, 37.085114, 22.406237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111580, 36.760395, 22.183603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050986, 0.572260, -0.818486,
		0.982955, 0.116195, 0.142471,
		0.176634, -0.811799, -0.556581,
		35.164570, 36.516857, 22.016628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683376, 37.245575, 22.029068>,  <35.040928, 37.085114, 22.406237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683376, 37.245575, 22.029068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486790, 36.956779, 21.834257>,  <35.368839, 36.783501, 21.717371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486790, 36.956779, 21.834257>,  <35.683376, 37.245575, 22.029068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486790, 36.956779, 21.834257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147066, 0.482393, -0.863521,
		0.858391, -0.496014, -0.130899,
		-0.491464, -0.721988, -0.487028,
		35.339352, 36.740185, 21.688148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118618, 37.163422, 21.466385>,  <35.683376, 37.245575, 22.029068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118618, 37.163422, 21.466385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741055, 37.063023, 21.380564>,  <35.514515, 37.002781, 21.329071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741055, 37.063023, 21.380564>,  <36.118618, 37.163422, 21.466385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741055, 37.063023, 21.380564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069431, 0.484365, -0.872106,
		0.322820, -0.838087, -0.439770,
		-0.943910, -0.250999, -0.214552,
		35.457882, 36.987724, 21.316198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161198, 36.873508, 20.801058>,  <36.118618, 37.163422, 21.466385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161198, 36.873508, 20.801058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788334, 37.001137, 20.869501>,  <35.564617, 37.077713, 20.910566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788334, 37.001137, 20.869501>,  <36.161198, 36.873508, 20.801058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788334, 37.001137, 20.869501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020773, 0.518963, -0.854544,
		-0.361455, -0.793015, -0.490384,
		-0.932158, 0.319066, 0.171108,
		35.508686, 37.096855, 20.920834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712166, 36.725426, 20.207203>,  <36.161198, 36.873508, 20.801058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712166, 36.725426, 20.207203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535091, 37.020676, 20.410849>,  <35.428844, 37.197826, 20.533035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535091, 37.020676, 20.410849>,  <35.712166, 36.725426, 20.207203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535091, 37.020676, 20.410849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098956, 0.524095, -0.845892,
		-0.891198, -0.424847, -0.158969,
		-0.442689, 0.738126, 0.509113,
		35.402287, 37.242115, 20.563583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342335, 37.073658, 19.673904>,  <35.712166, 36.725426, 20.207203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342335, 37.073658, 19.673904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316589, 37.329731, 19.980114>,  <35.301144, 37.483376, 20.163839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316589, 37.329731, 19.980114>,  <35.342335, 37.073658, 19.673904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316589, 37.329731, 19.980114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049406, 0.768219, -0.638278,
		-0.996703, -0.003260, -0.081074,
		-0.064363, 0.640179, 0.765525,
		35.297279, 37.521786, 20.209772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751217, 37.455238, 19.533342>,  <35.342335, 37.073658, 19.673904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751217, 37.455238, 19.533342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960510, 37.672371, 19.796116>,  <35.086086, 37.802650, 19.953779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960510, 37.672371, 19.796116>,  <34.751217, 37.455238, 19.533342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960510, 37.672371, 19.796116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081652, 0.735396, -0.672701,
		-0.848271, 0.405617, 0.340458,
		0.523230, 0.542833, 0.656934,
		35.117481, 37.835220, 19.993196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469128, 38.047161, 19.625666>,  <34.751217, 37.455238, 19.533342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469128, 38.047161, 19.625666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833439, 38.161114, 19.745214>,  <35.052025, 38.229485, 19.816944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833439, 38.161114, 19.745214>,  <34.469128, 38.047161, 19.625666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833439, 38.161114, 19.745214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071455, 0.821680, -0.565453,
		-0.406662, 0.493647, 0.768725,
		0.910780, 0.284877, 0.298872,
		35.106674, 38.246578, 19.834877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446571, 38.662907, 19.665285>,  <34.469128, 38.047161, 19.625666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446571, 38.662907, 19.665285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842758, 38.607815, 19.665398>,  <35.080471, 38.574760, 19.665464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842758, 38.607815, 19.665398>,  <34.446571, 38.662907, 19.665285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842758, 38.607815, 19.665398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124835, 0.896888, -0.424274,
		0.058182, 0.420266, 0.905534,
		0.990470, -0.137727, 0.000281,
		35.139900, 38.566498, 19.665482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728607, 39.265190, 19.812557>,  <34.446571, 38.662907, 19.665285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728607, 39.265190, 19.812557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075470, 39.111912, 19.685307>,  <35.283588, 39.019943, 19.608957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075470, 39.111912, 19.685307>,  <34.728607, 39.265190, 19.812557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075470, 39.111912, 19.685307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294483, 0.909637, -0.292986,
		0.401649, 0.160383, 0.901641,
		0.867155, -0.383195, -0.318125,
		35.335617, 38.996952, 19.589869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346390, 39.760349, 19.932287>,  <34.728607, 39.265190, 19.812557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346390, 39.760349, 19.932287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476856, 39.528156, 19.633850>,  <35.555138, 39.388840, 19.454788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476856, 39.528156, 19.633850>,  <35.346390, 39.760349, 19.932287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476856, 39.528156, 19.633850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482495, 0.780934, -0.396661,
		0.812905, -0.230609, 0.534794,
		0.326166, -0.580483, -0.746093,
		35.574707, 39.354012, 19.410023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085640, 39.844448, 19.832203>,  <35.346390, 39.760349, 19.932287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085640, 39.844448, 19.832203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943634, 39.695717, 19.489109>,  <35.858429, 39.606480, 19.283253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943634, 39.695717, 19.489109>,  <36.085640, 39.844448, 19.832203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943634, 39.695717, 19.489109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588556, 0.623951, -0.514087,
		0.726336, -0.687335, -0.002672,
		-0.355018, -0.371827, -0.857734,
		35.837128, 39.584167, 19.231789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596283, 39.964622, 19.356251>,  <36.085640, 39.844448, 19.832203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596283, 39.964622, 19.356251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284790, 39.873516, 19.122433>,  <36.097893, 39.818851, 18.982141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284790, 39.873516, 19.122433>,  <36.596283, 39.964622, 19.356251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284790, 39.873516, 19.122433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214621, 0.778819, -0.589389,
		0.589500, -0.584433, -0.557609,
		-0.778735, -0.227770, -0.584545,
		36.051170, 39.805183, 18.947069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900959, 39.914928, 18.681095>,  <36.596283, 39.964622, 19.356251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900959, 39.914928, 18.681095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509003, 39.989429, 18.652464>,  <36.273830, 40.034130, 18.635286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509003, 39.989429, 18.652464>,  <36.900959, 39.914928, 18.681095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509003, 39.989429, 18.652464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184923, 0.712986, -0.676354,
		-0.074937, -0.675990, -0.733090,
		-0.979892, 0.186249, -0.071577,
		36.215034, 40.045303, 18.630991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751011, 39.991837, 17.946522>,  <36.900959, 39.914928, 18.681095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751011, 39.991837, 17.946522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462105, 40.177174, 18.151911>,  <36.288761, 40.288376, 18.275145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462105, 40.177174, 18.151911>,  <36.751011, 39.991837, 17.946522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462105, 40.177174, 18.151911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101062, 0.805156, -0.584388,
		-0.684197, -0.370188, -0.628359,
		-0.722261, 0.463340, 0.513473,
		36.245426, 40.316177, 18.305952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441593, 40.450459, 17.486507>,  <36.751011, 39.991837, 17.946522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441593, 40.450459, 17.486507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304798, 40.604378, 17.829432>,  <36.222721, 40.696728, 18.035187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304798, 40.604378, 17.829432>,  <36.441593, 40.450459, 17.486507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304798, 40.604378, 17.829432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099768, 0.892294, -0.440293,
		-0.934395, -0.236105, -0.266760,
		-0.341983, 0.384794, 0.857311,
		36.202202, 40.719814, 18.086624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897297, 40.879910, 17.302307>,  <36.441593, 40.450459, 17.486507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897297, 40.879910, 17.302307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969421, 41.010849, 17.673323>,  <36.012695, 41.089413, 17.895933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969421, 41.010849, 17.673323>,  <35.897297, 40.879910, 17.302307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969421, 41.010849, 17.673323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086675, 0.944616, -0.316525,
		-0.979784, -0.023323, 0.198694,
		0.180307, 0.327348, 0.927541,
		36.023514, 41.109055, 17.951586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635273, 40.416355, 16.712664>,  <35.897297, 40.879910, 17.302307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635273, 40.416355, 16.712664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468197, 40.517162, 16.363487>,  <35.367950, 40.577644, 16.153982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468197, 40.517162, 16.363487>,  <35.635273, 40.416355, 16.712664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468197, 40.517162, 16.363487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159301, 0.925569, 0.343431,
		0.894517, 0.282508, -0.346452,
		-0.417687, 0.252015, -0.872941,
		35.342892, 40.592766, 16.101604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006744, 40.980774, 16.273098>,  <35.635273, 40.416355, 16.712664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006744, 40.980774, 16.273098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611309, 40.980675, 16.212852>,  <35.374046, 40.980614, 16.176706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611309, 40.980675, 16.212852>,  <36.006744, 40.980774, 16.273098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611309, 40.980675, 16.212852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049233, 0.945591, 0.321611,
		0.142337, 0.325357, -0.934817,
		-0.988593, -0.000247, -0.150611,
		35.314732, 40.980602, 16.167669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873405, 41.499378, 15.706424>,  <36.006744, 40.980774, 16.273098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873405, 41.499378, 15.706424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580597, 41.446205, 15.973700>,  <35.404911, 41.414299, 16.134066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580597, 41.446205, 15.973700>,  <35.873405, 41.499378, 15.706424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580597, 41.446205, 15.973700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019382, 0.976318, 0.215470,
		-0.681008, 0.170679, -0.712107,
		-0.732019, -0.132935, 0.668189,
		35.360992, 41.406326, 16.174156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497803, 42.059559, 15.492566>,  <35.873405, 41.499378, 15.706424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497803, 42.059559, 15.492566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371597, 41.926895, 15.848196>,  <35.295876, 41.847298, 16.061573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371597, 41.926895, 15.848196>,  <35.497803, 42.059559, 15.492566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371597, 41.926895, 15.848196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155152, 0.942353, 0.296477,
		-0.936151, -0.044399, -0.348782,
		-0.315513, -0.331661, 0.889074,
		35.276943, 41.827396, 16.114918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109825, 42.175465, 15.029775>,  <35.497803, 42.059559, 15.492566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109825, 42.175465, 15.029775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357117, 42.488487, 15.059176>,  <36.505489, 42.676300, 15.076818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357117, 42.488487, 15.059176>,  <36.109825, 42.175465, 15.029775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357117, 42.488487, 15.059176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244840, -0.280597, 0.928073,
		0.746895, -0.555760, -0.365074,
		0.618224, 0.782557, 0.073504,
		36.542583, 42.723255, 15.081227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711647, 41.804111, 15.207241>,  <36.109825, 42.175465, 15.029775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711647, 41.804111, 15.207241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697468, 42.182827, 15.335203>,  <36.688961, 42.410057, 15.411981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697468, 42.182827, 15.335203>,  <36.711647, 41.804111, 15.207241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697468, 42.182827, 15.335203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024691, -0.319180, 0.947373,
		0.999067, 0.041479, -0.012063,
		-0.035446, 0.946786, 0.319906,
		36.686832, 42.466862, 15.431175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227158, 41.839111, 15.719733>,  <36.711647, 41.804111, 15.207241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227158, 41.839111, 15.719733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989582, 42.157131, 15.768952>,  <36.847038, 42.347942, 15.798484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989582, 42.157131, 15.768952>,  <37.227158, 41.839111, 15.719733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989582, 42.157131, 15.768952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027279, -0.172762, 0.984586,
		0.804049, 0.581425, 0.124298,
		-0.593937, 0.795046, 0.123048,
		36.811401, 42.395645, 15.805867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298012, 42.015728, 16.379753>,  <37.227158, 41.839111, 15.719733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298012, 42.015728, 16.379753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962578, 42.218967, 16.301144>,  <36.761318, 42.340912, 16.253979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962578, 42.218967, 16.301144>,  <37.298012, 42.015728, 16.379753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962578, 42.218967, 16.301144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269683, -0.073736, 0.960122,
		0.473343, 0.858139, 0.198858,
		-0.838581, 0.508095, -0.196523,
		36.711002, 42.371395, 16.242188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243309, 42.494087, 16.941708>,  <37.298012, 42.015728, 16.379753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243309, 42.494087, 16.941708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885818, 42.431049, 16.773703>,  <36.671322, 42.393227, 16.672899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885818, 42.431049, 16.773703>,  <37.243309, 42.494087, 16.941708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885818, 42.431049, 16.773703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403187, -0.128319, 0.906076,
		-0.196692, 0.979131, 0.051140,
		-0.893729, -0.157599, -0.420013,
		36.617699, 42.383770, 16.647699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821548, 42.450054, 17.411718>,  <37.243309, 42.494087, 16.941708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821548, 42.450054, 17.411718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498859, 42.289825, 17.585495>,  <37.305244, 42.193687, 17.689760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498859, 42.289825, 17.585495>,  <37.821548, 42.450054, 17.411718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498859, 42.289825, 17.585495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004164, 0.739021, 0.673669,
		-0.590912, 0.541657, -0.597855,
		-0.806725, -0.400569, 0.434441,
		37.256844, 42.169655, 17.715828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412247, 43.016773, 17.607838>,  <37.821548, 42.450054, 17.411718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412247, 43.016773, 17.607838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326275, 42.688553, 17.819685>,  <37.274693, 42.491619, 17.946795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326275, 42.688553, 17.819685>,  <37.412247, 43.016773, 17.607838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326275, 42.688553, 17.819685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067312, 0.553451, 0.830157,
		-0.974306, 0.142779, -0.174189,
		-0.214934, -0.820552, 0.529619,
		37.261795, 42.442387, 17.978571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863438, 43.249294, 18.080872>,  <37.412247, 43.016773, 17.607838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863438, 43.249294, 18.080872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014698, 42.924469, 18.258663>,  <37.105453, 42.729576, 18.365339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014698, 42.924469, 18.258663>,  <36.863438, 43.249294, 18.080872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014698, 42.924469, 18.258663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064118, 0.456005, 0.887664,
		-0.923523, -0.364167, 0.120369,
		0.378147, -0.812060, 0.444481,
		37.128143, 42.680851, 18.392008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521118, 43.179131, 18.749062>,  <36.863438, 43.249294, 18.080872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521118, 43.179131, 18.749062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829914, 42.927742, 18.787132>,  <37.015190, 42.776909, 18.809975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829914, 42.927742, 18.787132>,  <36.521118, 43.179131, 18.749062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829914, 42.927742, 18.787132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004175, 0.144718, 0.989464,
		-0.635622, -0.764253, 0.109097,
		0.771989, -0.628470, 0.095176,
		37.061512, 42.739201, 18.815685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373653, 42.625774, 19.268318>,  <36.521118, 43.179131, 18.749062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373653, 42.625774, 19.268318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768311, 42.685383, 19.242018>,  <37.005104, 42.721149, 19.226238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768311, 42.685383, 19.242018>,  <36.373653, 42.625774, 19.268318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768311, 42.685383, 19.242018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057276, 0.060455, 0.996526,
		0.152482, -0.986984, 0.051112,
		0.986646, 0.149025, -0.065749,
		37.064304, 42.730091, 19.222294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689754, 42.178349, 19.790333>,  <36.373653, 42.625774, 19.268318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689754, 42.178349, 19.790333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984592, 42.431911, 19.696640>,  <37.161495, 42.584049, 19.640425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984592, 42.431911, 19.696640>,  <36.689754, 42.178349, 19.790333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984592, 42.431911, 19.696640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319229, -0.021105, 0.947443,
		0.595643, -0.773125, -0.217916,
		0.737091, 0.633903, -0.234233,
		37.205719, 42.622082, 19.626369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270302, 41.903355, 20.049114>,  <36.689754, 42.178349, 19.790333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270302, 41.903355, 20.049114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372139, 42.286453, 19.995602>,  <37.433243, 42.516312, 19.963493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372139, 42.286453, 19.995602>,  <37.270302, 41.903355, 20.049114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372139, 42.286453, 19.995602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490393, -0.008631, 0.871459,
		0.833484, -0.287474, -0.471871,
		0.254594, 0.957749, -0.133781,
		37.448517, 42.573776, 19.955467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951664, 41.942692, 20.220358>,  <37.270302, 41.903355, 20.049114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951664, 41.942692, 20.220358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786205, 42.299206, 20.294651>,  <37.686928, 42.513115, 20.339228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786205, 42.299206, 20.294651>,  <37.951664, 41.942692, 20.220358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786205, 42.299206, 20.294651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388794, -0.011539, 0.921253,
		0.823246, 0.453288, -0.341754,
		-0.413649, 0.891290, 0.185735,
		37.662109, 42.566593, 20.350372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247265, 42.128048, 20.860851>,  <37.951664, 41.942692, 20.220358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247265, 42.128048, 20.860851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980965, 42.426495, 20.856962>,  <37.821186, 42.605560, 20.854630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980965, 42.426495, 20.856962>,  <38.247265, 42.128048, 20.860851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980965, 42.426495, 20.856962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071080, 0.076384, 0.994542,
		0.742783, 0.661424, -0.103887,
		-0.665749, 0.746113, -0.009723,
		37.781239, 42.650330, 20.854046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597137, 42.810047, 21.198002>,  <38.247265, 42.128048, 20.860851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597137, 42.810047, 21.198002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198795, 42.785492, 21.224859>,  <37.959789, 42.770760, 21.240974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198795, 42.785492, 21.224859>,  <38.597137, 42.810047, 21.198002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198795, 42.785492, 21.224859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071312, -0.068416, 0.995105,
		-0.056494, 0.995766, 0.072510,
		-0.995853, -0.061388, 0.067145,
		37.900040, 42.767075, 21.245003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402416, 43.119881, 21.819096>,  <38.597137, 42.810047, 21.198002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402416, 43.119881, 21.819096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070465, 42.910751, 21.741163>,  <37.871296, 42.785275, 21.694403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070465, 42.910751, 21.741163>,  <38.402416, 43.119881, 21.819096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070465, 42.910751, 21.741163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137505, -0.146780, 0.979565,
		-0.540736, 0.839710, 0.049919,
		-0.829878, -0.522822, -0.194833,
		37.821503, 42.753906, 21.682713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856060, 43.305233, 22.339870>,  <38.402416, 43.119881, 21.819096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856060, 43.305233, 22.339870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707710, 42.962879, 22.195694>,  <37.618702, 42.757469, 22.109188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707710, 42.962879, 22.195694>,  <37.856060, 43.305233, 22.339870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707710, 42.962879, 22.195694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253711, -0.279979, 0.925874,
		-0.893355, 0.434832, -0.113309,
		-0.370875, -0.855882, -0.360442,
		37.596447, 42.706116, 22.087561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336666, 43.176247, 22.759687>,  <37.856060, 43.305233, 22.339870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336666, 43.176247, 22.759687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381672, 42.815674, 22.592468>,  <37.408676, 42.599331, 22.492138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381672, 42.815674, 22.592468>,  <37.336666, 43.176247, 22.759687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381672, 42.815674, 22.592468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467090, -0.419318, 0.778460,
		-0.877022, 0.107679, -0.468228,
		0.112513, -0.901431, -0.418047,
		37.415424, 42.545246, 22.467054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712246, 42.755295, 22.964314>,  <37.336666, 43.176247, 22.759687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712246, 42.755295, 22.964314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012760, 42.504463, 22.882013>,  <37.193069, 42.353962, 22.832634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012760, 42.504463, 22.882013>,  <36.712246, 42.755295, 22.964314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012760, 42.504463, 22.882013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263789, -0.571091, 0.777348,
		-0.604966, -0.529736, -0.594471,
		0.751287, -0.627084, -0.205752,
		37.238148, 42.316338, 22.820288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421986, 41.989765, 22.923203>,  <36.712246, 42.755295, 22.964314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421986, 41.989765, 22.923203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814510, 41.950287, 22.989271>,  <37.050026, 41.926601, 23.028913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814510, 41.950287, 22.989271>,  <36.421986, 41.989765, 22.923203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814510, 41.950287, 22.989271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192155, -0.547130, 0.814694,
		0.009967, -0.831209, -0.555871,
		0.981314, -0.098694, 0.165174,
		37.108906, 41.920677, 23.038824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489204, 41.311344, 23.063511>,  <36.421986, 41.989765, 22.923203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489204, 41.311344, 23.063511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811234, 41.495945, 23.212574>,  <37.004452, 41.606705, 23.302011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811234, 41.495945, 23.212574>,  <36.489204, 41.311344, 23.063511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811234, 41.495945, 23.212574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147881, -0.452251, 0.879545,
		0.574442, -0.763210, -0.295850,
		0.805076, 0.461498, 0.372657,
		37.052757, 41.634396, 23.324371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833256, 40.795231, 23.423838>,  <36.489204, 41.311344, 23.063511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833256, 40.795231, 23.423838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002689, 41.125851, 23.572102>,  <37.104351, 41.324223, 23.661060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002689, 41.125851, 23.572102>,  <36.833256, 40.795231, 23.423838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002689, 41.125851, 23.572102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096605, -0.365631, 0.925733,
		0.900689, -0.427936, -0.075028,
		0.423587, 0.826549, 0.370661,
		37.129765, 41.373814, 23.683300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400124, 40.528332, 23.852596>,  <36.833256, 40.795231, 23.423838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400124, 40.528332, 23.852596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303360, 40.903217, 23.953083>,  <37.245300, 41.128147, 24.013374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303360, 40.903217, 23.953083>,  <37.400124, 40.528332, 23.852596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303360, 40.903217, 23.953083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113263, -0.284412, 0.951988,
		0.963665, 0.201842, 0.174954,
		-0.241910, 0.937214, 0.251217,
		37.230785, 41.184380, 24.028448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796524, 40.700855, 24.537310>,  <37.400124, 40.528332, 23.852596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796524, 40.700855, 24.537310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467117, 40.924515, 24.499001>,  <37.269474, 41.058712, 24.476015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467117, 40.924515, 24.499001>,  <37.796524, 40.700855, 24.537310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467117, 40.924515, 24.499001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144150, -0.042969, 0.988622,
		0.548675, 0.827951, 0.115988,
		-0.823515, 0.559152, -0.095774,
		37.220062, 41.092262, 24.470268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824940, 41.135185, 25.170805>,  <37.796524, 40.700855, 24.537310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824940, 41.135185, 25.170805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460026, 41.172577, 25.011305>,  <37.241077, 41.195011, 24.915606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460026, 41.172577, 25.011305>,  <37.824940, 41.135185, 25.170805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460026, 41.172577, 25.011305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409089, -0.161256, 0.898133,
		0.019656, 0.982475, 0.185352,
		-0.912283, 0.093479, -0.398750,
		37.186340, 41.200619, 24.891680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434517, 41.500568, 25.616869>,  <37.824940, 41.135185, 25.170805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434517, 41.500568, 25.616869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169949, 41.301498, 25.392426>,  <37.011208, 41.182056, 25.257759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169949, 41.301498, 25.392426>,  <37.434517, 41.500568, 25.616869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169949, 41.301498, 25.392426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456464, -0.326512, 0.827666,
		-0.595116, 0.803562, -0.011208,
		-0.661421, -0.497673, -0.561109,
		36.971523, 41.152195, 25.224092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783928, 41.567108, 25.889029>,  <37.434517, 41.500568, 25.616869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783928, 41.567108, 25.889029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730492, 41.223640, 25.691101>,  <36.698429, 41.017559, 25.572346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730492, 41.223640, 25.691101>,  <36.783928, 41.567108, 25.889029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730492, 41.223640, 25.691101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509060, -0.368935, 0.777653,
		-0.850301, 0.355776, -0.387829,
		-0.133587, -0.858668, -0.494817,
		36.690414, 40.966042, 25.542656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099434, 41.413010, 25.921518>,  <36.783928, 41.567108, 25.889029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099434, 41.413010, 25.921518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263641, 41.066467, 25.807741>,  <36.362164, 40.858543, 25.739475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263641, 41.066467, 25.807741>,  <36.099434, 41.413010, 25.921518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263641, 41.066467, 25.807741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615720, -0.493449, 0.614326,
		-0.672582, -0.077053, -0.736000,
		0.410514, -0.866355, -0.284442,
		36.386795, 40.806561, 25.722408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487225, 40.909294, 25.706797>,  <36.099434, 41.413010, 25.921518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487225, 40.909294, 25.706797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808842, 40.694122, 25.808105>,  <36.001812, 40.565022, 25.868891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808842, 40.694122, 25.808105>,  <35.487225, 40.909294, 25.706797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808842, 40.694122, 25.808105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534438, -0.467208, 0.704339,
		-0.260550, -0.701679, -0.663144,
		0.804046, -0.537925, 0.253273,
		36.050056, 40.532745, 25.884087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167469, 40.358238, 25.940449>,  <35.487225, 40.909294, 25.706797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167469, 40.358238, 25.940449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547447, 40.289276, 26.044659>,  <35.775436, 40.247898, 26.107183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547447, 40.289276, 26.044659>,  <35.167469, 40.358238, 25.940449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547447, 40.289276, 26.044659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311071, -0.598893, 0.737944,
		0.028803, -0.782052, -0.622548,
		0.949950, -0.172402, 0.260524,
		35.832432, 40.237556, 26.122816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228573, 39.624821, 25.956854>,  <35.167469, 40.358238, 25.940449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228573, 39.624821, 25.956854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507095, 39.778374, 26.199436>,  <35.674210, 39.870506, 26.344986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507095, 39.778374, 26.199436>,  <35.228573, 39.624821, 25.956854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507095, 39.778374, 26.199436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372631, -0.528803, 0.762570,
		0.613431, -0.756970, -0.225165,
		0.696311, 0.383880, 0.606455,
		35.715988, 39.893539, 26.381372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372078, 39.063831, 26.302656>,  <35.228573, 39.624821, 25.956854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372078, 39.063831, 26.302656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522495, 39.354153, 26.533064>,  <35.612743, 39.528347, 26.671309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522495, 39.354153, 26.533064>,  <35.372078, 39.063831, 26.302656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522495, 39.354153, 26.533064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396845, -0.435599, 0.807940,
		0.837322, -0.532408, 0.124231,
		0.376039, 0.725807, 0.576020,
		35.635307, 39.571896, 26.705870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708534, 38.755161, 26.865194>,  <35.372078, 39.063831, 26.302656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708534, 38.755161, 26.865194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661621, 39.110241, 27.043287>,  <35.633472, 39.323288, 27.150143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661621, 39.110241, 27.043287>,  <35.708534, 38.755161, 26.865194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661621, 39.110241, 27.043287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250428, -0.460275, 0.851723,
		0.961005, -0.011608, 0.276287,
		-0.117281, 0.887700, 0.445234,
		35.626438, 39.376553, 27.176857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934200, 38.669178, 27.590559>,  <35.708534, 38.755161, 26.865194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934200, 38.669178, 27.590559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704529, 38.996220, 27.573378>,  <35.566727, 39.192444, 27.563068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704529, 38.996220, 27.573378>,  <35.934200, 38.669178, 27.590559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704529, 38.996220, 27.573378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482225, -0.295322, 0.824769,
		0.661651, 0.494274, 0.563836,
		-0.574175, 0.817605, -0.042952,
		35.532276, 39.241501, 27.560492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944870, 38.919052, 28.205996>,  <35.934200, 38.669178, 27.590559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944870, 38.919052, 28.205996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619370, 39.080647, 28.038855>,  <35.424068, 39.177605, 27.938570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619370, 39.080647, 28.038855>,  <35.944870, 38.919052, 28.205996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619370, 39.080647, 28.038855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520425, -0.186378, 0.833319,
		0.258774, 0.895576, 0.361912,
		-0.813753, 0.403989, -0.417850,
		35.375244, 39.201843, 27.913500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675060, 39.413170, 28.680803>,  <35.944870, 38.919052, 28.205996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675060, 39.413170, 28.680803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383411, 39.293526, 28.434580>,  <35.208420, 39.221741, 28.286846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383411, 39.293526, 28.434580>,  <35.675060, 39.413170, 28.680803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383411, 39.293526, 28.434580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575492, -0.218814, 0.787991,
		-0.370385, 0.928793, -0.012591,
		-0.729125, -0.299106, -0.615558,
		35.164673, 39.203793, 28.249912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135307, 39.568707, 29.034727>,  <35.675060, 39.413170, 28.680803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135307, 39.568707, 29.034727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036022, 39.280907, 28.775278>,  <34.976452, 39.108227, 28.619608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036022, 39.280907, 28.775278>,  <35.135307, 39.568707, 29.034727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036022, 39.280907, 28.775278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331062, -0.566256, 0.754819,
		-0.910378, 0.402092, -0.097645,
		-0.248214, -0.719497, -0.648624,
		34.961559, 39.065056, 28.580690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458313, 39.334904, 29.363157>,  <35.135307, 39.568707, 29.034727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458313, 39.334904, 29.363157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543324, 39.068264, 29.077366>,  <34.594330, 38.908279, 28.905891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543324, 39.068264, 29.077366>,  <34.458313, 39.334904, 29.363157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543324, 39.068264, 29.077366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268260, -0.742891, 0.613310,
		-0.939611, 0.061322, -0.336705,
		0.212525, -0.666598, -0.714479,
		34.607082, 38.868286, 28.863022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823071, 38.892712, 29.263525>,  <34.458313, 39.334904, 29.363157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823071, 38.892712, 29.263525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119926, 38.678123, 29.102810>,  <34.298038, 38.549370, 29.006382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119926, 38.678123, 29.102810>,  <33.823071, 38.892712, 29.263525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119926, 38.678123, 29.102810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245632, -0.775443, 0.581681,
		-0.623617, -0.332996, -0.707259,
		0.742137, -0.536472, -0.401785,
		34.342567, 38.517181, 28.982275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509201, 38.240639, 29.287264>,  <33.823071, 38.892712, 29.263525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509201, 38.240639, 29.287264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900726, 38.177238, 29.235405>,  <34.135639, 38.139198, 29.204290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900726, 38.177238, 29.235405>,  <33.509201, 38.240639, 29.287264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900726, 38.177238, 29.235405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077354, -0.872421, 0.482596,
		-0.189600, -0.462340, -0.866195,
		0.978810, -0.158504, -0.129647,
		34.194370, 38.129688, 29.196510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602497, 37.510624, 29.063776>,  <33.509201, 38.240639, 29.287264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602497, 37.510624, 29.063776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942898, 37.633915, 29.233852>,  <34.147141, 37.707890, 29.335897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942898, 37.633915, 29.233852>,  <33.602497, 37.510624, 29.063776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942898, 37.633915, 29.233852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024054, -0.785913, 0.617869,
		0.524607, -0.536038, -0.661401,
		0.851005, 0.308229, 0.425189,
		34.198200, 37.726383, 29.361408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918995, 36.906704, 29.238947>,  <33.602497, 37.510624, 29.063776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918995, 36.906704, 29.238947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088409, 37.177765, 29.479418>,  <34.190056, 37.340401, 29.623699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088409, 37.177765, 29.479418>,  <33.918995, 36.906704, 29.238947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088409, 37.177765, 29.479418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097053, -0.693761, 0.713636,
		0.900666, -0.243903, -0.359600,
		0.423534, 0.677648, 0.601176,
		34.215469, 37.381058, 29.659771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448002, 36.579082, 29.510395>,  <33.918995, 36.906704, 29.238947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448002, 36.579082, 29.510395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391022, 36.884781, 29.761995>,  <34.356834, 37.068199, 29.912954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391022, 36.884781, 29.761995>,  <34.448002, 36.579082, 29.510395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391022, 36.884781, 29.761995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108367, -0.619617, 0.777387,
		0.983853, 0.178898, 0.005444,
		-0.142446, 0.764245, 0.628999,
		34.348289, 37.114056, 29.950695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911240, 36.525475, 30.036503>,  <34.448002, 36.579082, 29.510395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911240, 36.525475, 30.036503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623657, 36.745628, 30.206293>,  <34.451107, 36.877720, 30.308168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623657, 36.745628, 30.206293>,  <34.911240, 36.525475, 30.036503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623657, 36.745628, 30.206293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150571, -0.472876, 0.868169,
		0.678553, 0.688087, 0.257104,
		-0.718954, 0.550386, 0.424477,
		34.407970, 36.910744, 30.333635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209743, 36.643883, 30.691238>,  <34.911240, 36.525475, 30.036503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209743, 36.643883, 30.691238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832584, 36.770866, 30.731573>,  <34.606289, 36.847057, 30.755774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832584, 36.770866, 30.731573>,  <35.209743, 36.643883, 30.691238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832584, 36.770866, 30.731573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006656, -0.284713, 0.958590,
		0.333025, 0.904520, 0.266342,
		-0.942895, 0.317461, 0.100837,
		34.549717, 36.866104, 30.761824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693291, 36.632763, 30.044415>,  <35.209743, 36.643883, 30.691238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693291, 36.632763, 30.044415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039482, 36.600178, 30.242128>,  <36.247196, 36.580627, 30.360756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039482, 36.600178, 30.242128>,  <35.693291, 36.632763, 30.044415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039482, 36.600178, 30.242128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344273, 0.813489, -0.468734,
		-0.363910, 0.575846, 0.732100,
		0.865474, -0.081465, 0.494285,
		36.299126, 36.575737, 30.390413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762199, 37.301060, 30.353495>,  <35.693291, 36.632763, 30.044415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762199, 37.301060, 30.353495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105186, 37.096245, 30.333220>,  <36.310978, 36.973354, 30.321054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105186, 37.096245, 30.333220>,  <35.762199, 37.301060, 30.353495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105186, 37.096245, 30.333220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464146, 0.812237, -0.353326,
		0.222086, 0.279439, 0.934126,
		0.857465, -0.512040, -0.050686,
		36.362427, 36.942635, 30.318014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299469, 37.746353, 30.656815>,  <35.762199, 37.301060, 30.353495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299469, 37.746353, 30.656815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447151, 37.479778, 30.397724>,  <36.535759, 37.319832, 30.242270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447151, 37.479778, 30.397724>,  <36.299469, 37.746353, 30.656815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447151, 37.479778, 30.397724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405546, 0.742640, -0.532933,
		0.836193, -0.065919, 0.544459,
		0.369207, -0.666439, -0.647724,
		36.557915, 37.279846, 30.203407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899940, 37.911007, 30.590082>,  <36.299469, 37.746353, 30.656815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899940, 37.911007, 30.590082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867554, 37.689495, 30.258596>,  <36.848122, 37.556587, 30.059704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867554, 37.689495, 30.258596>,  <36.899940, 37.911007, 30.590082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867554, 37.689495, 30.258596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438678, 0.726787, -0.528529,
		0.894989, -0.406333, 0.184086,
		-0.080968, -0.553782, -0.828716,
		36.843262, 37.523361, 30.009981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671108, 38.005142, 30.305227>,  <36.899940, 37.911007, 30.590082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671108, 38.005142, 30.305227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450661, 37.884132, 29.994165>,  <37.318394, 37.811527, 29.807528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450661, 37.884132, 29.994165>,  <37.671108, 38.005142, 30.305227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450661, 37.884132, 29.994165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457918, 0.669437, -0.584949,
		0.697555, -0.678477, -0.230404,
		-0.551115, -0.302528, -0.777656,
		37.285324, 37.793373, 29.760868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146259, 37.731289, 29.764858>,  <37.671108, 38.005142, 30.305227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146259, 37.731289, 29.764858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814804, 37.842995, 29.570795>,  <37.615932, 37.910019, 29.454357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814804, 37.842995, 29.570795>,  <38.146259, 37.731289, 29.764858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814804, 37.842995, 29.570795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557238, 0.494184, -0.667284,
		0.053408, -0.823282, -0.565114,
		-0.828634, 0.279264, -0.485157,
		37.566216, 37.926773, 29.425247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376034, 37.754406, 29.059254>,  <38.146259, 37.731289, 29.764858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376034, 37.754406, 29.059254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035450, 37.964134, 29.063433>,  <37.831100, 38.089973, 29.065939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035450, 37.964134, 29.063433>,  <38.376034, 37.754406, 29.059254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035450, 37.964134, 29.063433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382795, 0.634994, -0.671007,
		-0.358457, -0.567334, -0.741377,
		-0.851455, 0.524323, 0.010445,
		37.780014, 38.121429, 29.066566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308849, 37.759022, 28.383291>,  <38.376034, 37.754406, 29.059254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308849, 37.759022, 28.383291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069443, 38.038189, 28.540617>,  <37.925800, 38.205688, 28.635014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069443, 38.038189, 28.540617>,  <38.308849, 37.759022, 28.383291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069443, 38.038189, 28.540617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167919, 0.589348, -0.790236,
		-0.783317, -0.406920, -0.469925,
		-0.598512, 0.697915, 0.393316,
		37.889889, 38.247562, 28.658611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776772, 37.986214, 27.915751>,  <38.308849, 37.759022, 28.383291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776772, 37.986214, 27.915751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833679, 38.291759, 28.167549>,  <37.867825, 38.475086, 28.318628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833679, 38.291759, 28.167549>,  <37.776772, 37.986214, 27.915751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833679, 38.291759, 28.167549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198322, 0.601072, -0.774197,
		-0.969756, 0.234990, -0.065976,
		0.142272, 0.763867, 0.629497,
		37.876362, 38.520920, 28.356398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381878, 38.519882, 27.649891>,  <37.776772, 37.986214, 27.915751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381878, 38.519882, 27.649891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662151, 38.679993, 27.886135>,  <37.830315, 38.776058, 28.027882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662151, 38.679993, 27.886135>,  <37.381878, 38.519882, 27.649891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662151, 38.679993, 27.886135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368875, 0.505339, -0.780105,
		-0.610718, 0.764467, 0.206429,
		0.700682, 0.400278, 0.590612,
		37.872356, 38.800076, 28.063318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251446, 39.198650, 27.540798>,  <37.381878, 38.519882, 27.649891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251446, 39.198650, 27.540798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625954, 39.132580, 27.664810>,  <37.850658, 39.092937, 27.739218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625954, 39.132580, 27.664810>,  <37.251446, 39.198650, 27.540798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625954, 39.132580, 27.664810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344026, 0.609596, -0.714170,
		-0.071031, 0.775313, 0.627570,
		0.936269, -0.165172, 0.310029,
		37.906834, 39.083027, 27.757818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559219, 39.728054, 27.303928>,  <37.251446, 39.198650, 27.540798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559219, 39.728054, 27.303928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892136, 39.548847, 27.434509>,  <38.091885, 39.441322, 27.512857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892136, 39.548847, 27.434509>,  <37.559219, 39.728054, 27.303928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892136, 39.548847, 27.434509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550268, 0.596485, -0.584303,
		0.067055, 0.665947, 0.742980,
		0.832292, -0.448018, 0.326451,
		38.141823, 39.414440, 27.532444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984337, 40.238541, 27.662746>,  <37.559219, 39.728054, 27.303928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984337, 40.238541, 27.662746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194046, 39.948978, 27.483370>,  <38.319874, 39.775242, 27.375744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194046, 39.948978, 27.483370>,  <37.984337, 40.238541, 27.662746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194046, 39.948978, 27.483370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455848, 0.683392, -0.570244,
		0.719262, 0.094544, 0.688276,
		0.524276, -0.723904, -0.448440,
		38.351330, 39.731808, 27.348837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735954, 40.442604, 27.646154>,  <37.984337, 40.238541, 27.662746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735954, 40.442604, 27.646154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707623, 40.159557, 27.364939>,  <38.690624, 39.989731, 27.196209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707623, 40.159557, 27.364939>,  <38.735954, 40.442604, 27.646154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707623, 40.159557, 27.364939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635605, 0.511173, -0.578540,
		0.768758, -0.487832, 0.413559,
		-0.070830, -0.707617, -0.703037,
		38.686375, 39.947273, 27.154028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299427, 40.416523, 27.393641>,  <38.735954, 40.442604, 27.646154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299427, 40.416523, 27.393641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116489, 40.240307, 27.084639>,  <39.006729, 40.134579, 26.899237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116489, 40.240307, 27.084639>,  <39.299427, 40.416523, 27.393641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116489, 40.240307, 27.084639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631303, 0.450983, -0.630929,
		0.626337, -0.776233, 0.071863,
		-0.457339, -0.440541, -0.772505,
		38.979286, 40.108143, 26.852886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860180, 40.166977, 26.955490>,  <39.299427, 40.416523, 27.393641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860180, 40.166977, 26.955490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532146, 40.162704, 26.726631>,  <39.335327, 40.160141, 26.589315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532146, 40.162704, 26.726631>,  <39.860180, 40.166977, 26.955490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532146, 40.162704, 26.726631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493000, 0.494456, -0.715866,
		0.290548, -0.869137, -0.400228,
		-0.820081, -0.010681, -0.572148,
		39.286121, 40.159500, 26.554987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094406, 39.898792, 26.278685>,  <39.860180, 40.166977, 26.955490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094406, 39.898792, 26.278685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752560, 40.099049, 26.223555>,  <39.547451, 40.219200, 26.190475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752560, 40.099049, 26.223555>,  <40.094406, 39.898792, 26.278685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752560, 40.099049, 26.223555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436592, 0.549086, -0.712665,
		-0.281108, -0.669228, -0.687831,
		-0.854614, 0.500638, -0.137827,
		39.496174, 40.249241, 26.182207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164364, 40.060940, 25.637335>,  <40.094406, 39.898792, 26.278685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164364, 40.060940, 25.637335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850929, 40.291061, 25.731157>,  <39.662868, 40.429134, 25.787451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850929, 40.291061, 25.731157>,  <40.164364, 40.060940, 25.637335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850929, 40.291061, 25.731157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234008, 0.623028, -0.746375,
		-0.575531, -0.529960, -0.622822,
		-0.783584, 0.575307, 0.234557,
		39.615852, 40.463654, 25.801525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660469, 39.935287, 25.141043>,  <40.164364, 40.060940, 25.637335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660469, 39.935287, 25.141043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553680, 40.291237, 25.289021>,  <39.489609, 40.504807, 25.377808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553680, 40.291237, 25.289021>,  <39.660469, 39.935287, 25.141043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553680, 40.291237, 25.289021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115931, 0.351436, -0.929006,
		-0.956707, -0.290904, 0.009341,
		-0.266969, 0.889869, 0.369946,
		39.473591, 40.558197, 25.400005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870636, 40.148830, 24.890991>,  <39.660469, 39.935287, 25.141043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870636, 40.148830, 24.890991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065056, 40.479534, 25.004288>,  <39.181709, 40.677956, 25.072266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065056, 40.479534, 25.004288>,  <38.870636, 40.148830, 24.890991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065056, 40.479534, 25.004288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143418, 0.395166, -0.907345,
		-0.862081, 0.400396, 0.310643,
		0.486053, 0.826757, 0.283242,
		39.210873, 40.727562, 25.089260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552071, 40.808891, 24.607784>,  <38.870636, 40.148830, 24.890991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552071, 40.808891, 24.607784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928806, 40.917332, 24.687227>,  <39.154846, 40.982395, 24.734894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928806, 40.917332, 24.687227>,  <38.552071, 40.808891, 24.607784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928806, 40.917332, 24.687227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048424, 0.475338, -0.878470,
		-0.332561, 0.836994, 0.434563,
		0.941838, 0.271101, 0.198609,
		39.211357, 40.998661, 24.746809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712849, 41.538471, 24.330391>,  <38.552071, 40.808891, 24.607784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712849, 41.538471, 24.330391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064644, 41.348839, 24.347120>,  <39.275723, 41.235058, 24.357159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064644, 41.348839, 24.347120>,  <38.712849, 41.538471, 24.330391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064644, 41.348839, 24.347120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263480, 0.411831, -0.872338,
		0.396334, 0.778230, 0.487110,
		0.879487, -0.474081, 0.041825,
		39.328491, 41.206615, 24.359669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147449, 42.101280, 24.128742>,  <38.712849, 41.538471, 24.330391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147449, 42.101280, 24.128742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389767, 41.783218, 24.117838>,  <39.535156, 41.592381, 24.111296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389767, 41.783218, 24.117838>,  <39.147449, 42.101280, 24.128742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389767, 41.783218, 24.117838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363426, 0.307030, -0.879576,
		0.707771, 0.522932, 0.474977,
		0.605790, -0.795157, -0.027260,
		39.571503, 41.544670, 24.109659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902580, 42.323208, 23.925724>,  <39.147449, 42.101280, 24.128742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902580, 42.323208, 23.925724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885773, 41.935936, 23.827042>,  <39.875687, 41.703571, 23.767832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885773, 41.935936, 23.827042>,  <39.902580, 42.323208, 23.925724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885773, 41.935936, 23.827042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397841, 0.210291, -0.893029,
		0.916492, -0.135673, 0.376346,
		-0.042017, -0.968179, -0.246706,
		39.873169, 41.645481, 23.753029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586876, 42.162205, 23.581490>,  <39.902580, 42.323208, 23.925724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586876, 42.162205, 23.581490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319248, 41.884853, 23.474478>,  <40.158672, 41.718445, 23.410271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319248, 41.884853, 23.474478>,  <40.586876, 42.162205, 23.581490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319248, 41.884853, 23.474478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192516, 0.185987, -0.963507,
		0.717829, -0.696161, 0.009047,
		-0.669074, -0.693375, -0.267529,
		40.118526, 41.676842, 23.394218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800903, 41.928982, 22.889637>,  <40.586876, 42.162205, 23.581490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800903, 41.928982, 22.889637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441139, 41.754391, 22.899014>,  <40.225281, 41.649635, 22.904640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441139, 41.754391, 22.899014>,  <40.800903, 41.928982, 22.889637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441139, 41.754391, 22.899014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069805, 0.090487, -0.993448,
		0.431495, -0.895154, -0.111853,
		-0.899411, -0.436476, 0.023442,
		40.171314, 41.623447, 22.906046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886997, 41.288029, 22.521862>,  <40.800903, 41.928982, 22.889637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886997, 41.288029, 22.521862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502014, 41.396267, 22.530458>,  <40.271027, 41.461208, 22.535616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502014, 41.396267, 22.530458>,  <40.886997, 41.288029, 22.521862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502014, 41.396267, 22.530458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016626, 0.020262, -0.999656,
		-0.270937, -0.962480, -0.015003,
		-0.962454, 0.270594, 0.021492,
		40.213280, 41.477444, 22.536905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369907, 40.817940, 22.084249>,  <40.886997, 41.288029, 22.521862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369907, 40.817940, 22.084249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173050, 41.165447, 22.106272>,  <40.054935, 41.373951, 22.119484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173050, 41.165447, 22.106272>,  <40.369907, 40.817940, 22.084249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173050, 41.165447, 22.106272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254004, -0.082824, -0.963650,
		-0.832630, -0.488242, 0.261432,
		-0.492148, 0.868769, 0.055054,
		40.025406, 41.426079, 22.122787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812626, 40.815811, 21.671316>,  <40.369907, 40.817940, 22.084249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812626, 40.815811, 21.671316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870365, 41.211441, 21.683287>,  <39.905010, 41.448818, 21.690470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870365, 41.211441, 21.683287>,  <39.812626, 40.815811, 21.671316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870365, 41.211441, 21.683287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379302, 0.083240, -0.921521,
		-0.913944, 0.121670, 0.387174,
		0.144350, 0.989074, 0.029927,
		39.913670, 41.508163, 21.692265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261978, 41.096210, 21.265379>,  <39.812626, 40.815811, 21.671316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261978, 41.096210, 21.265379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551453, 41.370506, 21.234266>,  <39.725136, 41.535084, 21.215599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551453, 41.370506, 21.234266>,  <39.261978, 41.096210, 21.265379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551453, 41.370506, 21.234266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230762, 0.134222, -0.963708,
		-0.650409, 0.715368, 0.255376,
		0.723683, 0.685735, -0.077781,
		39.768559, 41.576225, 21.210932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985901, 41.570332, 20.799261>,  <39.261978, 41.096210, 21.265379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985901, 41.570332, 20.799261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372288, 41.666096, 20.838428>,  <39.604118, 41.723553, 20.861929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372288, 41.666096, 20.838428>,  <38.985901, 41.570332, 20.799261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372288, 41.666096, 20.838428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053451, 0.185633, -0.981164,
		-0.253077, 0.953008, 0.166519,
		0.965969, 0.239409, 0.097918,
		39.662079, 41.737919, 20.867804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998230, 42.075031, 20.340839>,  <38.985901, 41.570332, 20.799261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998230, 42.075031, 20.340839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375614, 41.954853, 20.396870>,  <39.602043, 41.882748, 20.430489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375614, 41.954853, 20.396870>,  <38.998230, 42.075031, 20.340839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375614, 41.954853, 20.396870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186962, 0.133334, -0.973277,
		0.273739, 0.944434, 0.181966,
		0.943458, -0.300444, 0.140075,
		39.658653, 41.864719, 20.438892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363358, 42.510731, 19.866001>,  <38.998230, 42.075031, 20.340839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363358, 42.510731, 19.866001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620899, 42.212246, 19.933668>,  <39.775425, 42.033154, 19.974268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620899, 42.212246, 19.933668>,  <39.363358, 42.510731, 19.866001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620899, 42.212246, 19.933668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258242, 0.003807, -0.966073,
		0.720255, 0.665693, 0.195155,
		0.643851, -0.746216, 0.169168,
		39.814053, 41.988380, 19.984419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996868, 42.705135, 19.499636>,  <39.363358, 42.510731, 19.866001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996868, 42.705135, 19.499636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018276, 42.308125, 19.543510>,  <40.031120, 42.069920, 19.569836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018276, 42.308125, 19.543510>,  <39.996868, 42.705135, 19.499636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018276, 42.308125, 19.543510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334574, -0.085670, -0.938468,
		0.940849, 0.086925, 0.327487,
		0.053521, -0.992524, 0.109685,
		40.034332, 42.010368, 19.576416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561562, 42.465286, 19.080879>,  <39.996868, 42.705135, 19.499636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561562, 42.465286, 19.080879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355953, 42.128189, 19.144846>,  <40.232590, 41.925930, 19.183226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355953, 42.128189, 19.144846>,  <40.561562, 42.465286, 19.080879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355953, 42.128189, 19.144846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217022, -0.308137, -0.926258,
		0.829871, -0.441409, 0.341281,
		-0.514020, -0.842740, 0.159918,
		40.201748, 41.875366, 19.192822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009529, 41.873013, 19.002913>,  <40.561562, 42.465286, 19.080879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009529, 41.873013, 19.002913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625729, 41.796165, 18.920502>,  <40.395447, 41.750057, 18.871056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625729, 41.796165, 18.920502>,  <41.009529, 41.873013, 19.002913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625729, 41.796165, 18.920502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259366, -0.317062, -0.912251,
		0.109940, -0.928742, 0.354051,
		-0.959502, -0.192122, -0.206026,
		40.337879, 41.738529, 18.858694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020145, 41.262680, 18.705639>,  <41.009529, 41.873013, 19.002913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020145, 41.262680, 18.705639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651020, 41.357609, 18.584246>,  <40.429546, 41.414566, 18.511410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651020, 41.357609, 18.584246>,  <41.020145, 41.262680, 18.705639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651020, 41.357609, 18.584246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219132, -0.324576, -0.920126,
		-0.316846, -0.915609, 0.247525,
		-0.922816, 0.237297, -0.303479,
		40.374176, 41.428802, 18.493200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927254, 40.701851, 18.206045>,  <41.020145, 41.262680, 18.705639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927254, 40.701851, 18.206045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642555, 40.977863, 18.153477>,  <40.471737, 41.143471, 18.121937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642555, 40.977863, 18.153477>,  <40.927254, 40.701851, 18.206045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642555, 40.977863, 18.153477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051436, -0.237787, -0.969955,
		-0.700552, -0.683601, 0.204736,
		-0.711746, 0.690034, -0.131420,
		40.429031, 41.184872, 18.114050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619549, 40.585037, 17.968988>,  <40.927254, 40.701851, 18.206045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619549, 40.585037, 17.968988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891373, 40.298351, 17.906357>,  <42.054466, 40.126339, 17.868778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891373, 40.298351, 17.906357>,  <41.619549, 40.585037, 17.968988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891373, 40.298351, 17.906357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075256, -0.280413, 0.956925,
		-0.729750, -0.638504, -0.244495,
		0.679560, -0.716715, -0.156580,
		42.095242, 40.083336, 17.859383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320244, 40.067596, 18.297094>,  <41.619549, 40.585037, 17.968988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320244, 40.067596, 18.297094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711452, 39.984882, 18.286421>,  <41.946178, 39.935253, 18.280016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711452, 39.984882, 18.286421>,  <41.320244, 40.067596, 18.297094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711452, 39.984882, 18.286421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015685, -0.200590, 0.979550,
		-0.207951, -0.957594, -0.199424,
		0.978014, -0.206826, -0.026693,
		42.004860, 39.922848, 18.278416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391026, 39.477711, 18.611372>,  <41.320244, 40.067596, 18.297094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391026, 39.477711, 18.611372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770123, 39.605316, 18.613085>,  <41.997581, 39.681877, 18.614113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770123, 39.605316, 18.613085>,  <41.391026, 39.477711, 18.611372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770123, 39.605316, 18.613085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044819, -0.146422, 0.988206,
		0.315875, -0.936372, -0.153068,
		0.947742, 0.319010, 0.004284,
		42.054443, 39.701019, 18.614370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859978, 39.027729, 18.945726>,  <41.391026, 39.477711, 18.611372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859978, 39.027729, 18.945726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058498, 39.374092, 18.970692>,  <42.177608, 39.581909, 18.985670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058498, 39.374092, 18.970692>,  <41.859978, 39.027729, 18.945726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058498, 39.374092, 18.970692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058103, -0.104861, 0.992788,
		0.866206, -0.489093, -0.102354,
		0.496298, 0.865906, 0.062413,
		42.207390, 39.633865, 18.989416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390587, 38.918602, 19.404690>,  <41.859978, 39.027729, 18.945726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390587, 38.918602, 19.404690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271923, 39.300594, 19.405888>,  <42.200726, 39.529789, 19.406607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271923, 39.300594, 19.405888>,  <42.390587, 38.918602, 19.404690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271923, 39.300594, 19.405888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035398, 0.007863, 0.999343,
		0.954329, 0.296566, -0.036137,
		-0.296655, 0.954980, 0.002994,
		42.182926, 39.587090, 19.406786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691128, 39.144852, 20.023329>,  <42.390587, 38.918602, 19.404690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691128, 39.144852, 20.023329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450657, 39.452110, 19.935207>,  <42.306374, 39.636467, 19.882334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450657, 39.452110, 19.935207>,  <42.691128, 39.144852, 20.023329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450657, 39.452110, 19.935207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236799, 0.092062, 0.967187,
		0.763224, 0.633619, 0.126551,
		-0.601178, 0.768148, -0.220305,
		42.270302, 39.682556, 19.869116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619797, 39.393627, 20.665148>,  <42.691128, 39.144852, 20.023329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619797, 39.393627, 20.665148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344513, 39.584206, 20.446287>,  <42.179344, 39.698551, 20.314970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344513, 39.584206, 20.446287>,  <42.619797, 39.393627, 20.665148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344513, 39.584206, 20.446287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514653, 0.210973, 0.831037,
		0.511376, 0.853518, 0.100011,
		-0.688205, 0.476443, -0.547152,
		42.138050, 39.727139, 20.282141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453533, 40.134888, 21.021465>,  <42.619797, 39.393627, 20.665148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453533, 40.134888, 21.021465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136093, 40.021671, 20.806025>,  <41.945629, 39.953743, 20.676760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136093, 40.021671, 20.806025>,  <42.453533, 40.134888, 21.021465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136093, 40.021671, 20.806025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591735, 0.153019, 0.791476,
		-0.141604, 0.946823, -0.288921,
		-0.793598, -0.283041, -0.538600,
		41.898014, 39.936760, 20.644444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027966, 40.655872, 21.094694>,  <42.453533, 40.134888, 21.021465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027966, 40.655872, 21.094694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802296, 40.348145, 20.974794>,  <41.666893, 40.163506, 20.902855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802296, 40.348145, 20.974794>,  <42.027966, 40.655872, 21.094694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802296, 40.348145, 20.974794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434490, -0.032076, 0.900105,
		-0.702085, 0.638056, -0.316166,
		-0.564176, -0.769322, -0.299749,
		41.633041, 40.117348, 20.884871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245285, 40.733429, 21.290331>,  <42.027966, 40.655872, 21.094694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245285, 40.733429, 21.290331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331432, 40.344902, 21.250017>,  <41.383121, 40.111786, 21.225828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331432, 40.344902, 21.250017>,  <41.245285, 40.733429, 21.290331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331432, 40.344902, 21.250017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472255, -0.193934, 0.859863,
		-0.854746, -0.137592, -0.500477,
		0.215370, -0.971318, -0.100786,
		41.396042, 40.053505, 21.219782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636951, 40.439190, 21.379990>,  <41.245285, 40.733429, 21.290331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636951, 40.439190, 21.379990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864223, 40.116512, 21.445002>,  <41.000587, 39.922905, 21.484009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864223, 40.116512, 21.445002>,  <40.636951, 40.439190, 21.379990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864223, 40.116512, 21.445002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430294, -0.122895, 0.894284,
		-0.701439, -0.578051, -0.416942,
		0.568182, -0.806693, 0.162529,
		41.034679, 39.874504, 21.493761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198906, 39.976742, 21.817780>,  <40.636951, 40.439190, 21.379990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198906, 39.976742, 21.817780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564709, 39.817341, 21.845695>,  <40.784191, 39.721699, 21.862446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564709, 39.817341, 21.845695>,  <40.198906, 39.976742, 21.817780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564709, 39.817341, 21.845695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188647, -0.267426, 0.944932,
		-0.357897, -0.877312, -0.319739,
		0.914506, -0.398506, 0.069791,
		40.839062, 39.697788, 21.866632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115818, 39.275555, 21.936388>,  <40.198906, 39.976742, 21.817780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115818, 39.275555, 21.936388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481136, 39.376034, 22.064636>,  <40.700325, 39.436321, 22.141584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481136, 39.376034, 22.064636>,  <40.115818, 39.275555, 21.936388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481136, 39.376034, 22.064636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205778, -0.394754, 0.895447,
		0.351504, -0.883780, -0.308833,
		0.913291, 0.251202, 0.320620,
		40.755123, 39.451393, 22.160822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371826, 38.664566, 22.178396>,  <40.115818, 39.275555, 21.936388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371826, 38.664566, 22.178396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599651, 38.926872, 22.376617>,  <40.736347, 39.084255, 22.495550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599651, 38.926872, 22.376617>,  <40.371826, 38.664566, 22.178396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599651, 38.926872, 22.376617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119087, -0.530701, 0.839151,
		0.813276, -0.536962, -0.224174,
		0.569561, 0.655765, 0.495552,
		40.770519, 39.123600, 22.525284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910519, 38.321136, 22.572618>,  <40.371826, 38.664566, 22.178396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910519, 38.321136, 22.572618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862511, 38.670273, 22.761824>,  <40.833706, 38.879757, 22.875347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862511, 38.670273, 22.761824>,  <40.910519, 38.321136, 22.572618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862511, 38.670273, 22.761824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037910, -0.480139, 0.876373,
		0.992048, 0.087248, 0.090715,
		-0.120018, 0.872843, 0.473014,
		40.826504, 38.932125, 22.903728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483379, 38.476204, 22.965286>,  <40.910519, 38.321136, 22.572618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483379, 38.476204, 22.965286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182907, 38.678204, 23.135319>,  <41.002625, 38.799404, 23.237339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182907, 38.678204, 23.135319>,  <41.483379, 38.476204, 22.965286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182907, 38.678204, 23.135319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216822, -0.419471, 0.881494,
		0.623465, 0.754332, 0.205606,
		-0.751185, 0.505001, 0.425082,
		40.957550, 38.829704, 23.262844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666500, 38.776085, 23.595694>,  <41.483379, 38.476204, 22.965286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666500, 38.776085, 23.595694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273972, 38.849930, 23.617348>,  <41.038456, 38.894238, 23.630341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273972, 38.849930, 23.617348>,  <41.666500, 38.776085, 23.595694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273972, 38.849930, 23.617348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029733, -0.132463, 0.990742,
		0.190073, 0.973844, 0.124500,
		-0.981320, 0.184611, 0.054133,
		40.979576, 38.905312, 23.633587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425064, 39.410984, 23.998344>,  <41.666500, 38.776085, 23.595694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425064, 39.410984, 23.998344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126354, 39.145092, 24.006905>,  <40.947128, 38.985558, 24.012041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126354, 39.145092, 24.006905>,  <41.425064, 39.410984, 23.998344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126354, 39.145092, 24.006905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027417, 0.001382, 0.999623,
		-0.664509, 0.747082, 0.017192,
		-0.746777, -0.664730, 0.021401,
		40.902321, 38.945671, 24.013325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162014, 39.485371, 24.739693>,  <41.425064, 39.410984, 23.998344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162014, 39.485371, 24.739693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008980, 39.149765, 24.584940>,  <40.917160, 38.948402, 24.492088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008980, 39.149765, 24.584940>,  <41.162014, 39.485371, 24.739693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008980, 39.149765, 24.584940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039011, -0.403697, 0.914060,
		-0.923098, 0.364796, 0.121716,
		-0.382582, -0.839019, -0.386883,
		40.894207, 38.898060, 24.468876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441067, 39.363380, 25.011351>,  <41.162014, 39.485371, 24.739693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441067, 39.363380, 25.011351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529465, 38.989914, 24.898621>,  <40.582504, 38.765835, 24.830982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529465, 38.989914, 24.898621>,  <40.441067, 39.363380, 25.011351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529465, 38.989914, 24.898621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204993, -0.326982, 0.922529,
		-0.953488, -0.146102, -0.263657,
		0.220995, -0.933669, -0.281824,
		40.595764, 38.709812, 24.814074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894787, 38.941193, 25.225754>,  <40.441067, 39.363380, 25.011351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894787, 38.941193, 25.225754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200886, 38.692772, 25.157999>,  <40.384544, 38.543720, 25.117346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200886, 38.692772, 25.157999>,  <39.894787, 38.941193, 25.225754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200886, 38.692772, 25.157999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193951, -0.473335, 0.859265,
		-0.613827, -0.624696, -0.482671,
		0.765245, -0.621055, -0.169386,
		40.430458, 38.506454, 25.107183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626480, 38.266621, 25.426159>,  <39.894787, 38.941193, 25.225754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626480, 38.266621, 25.426159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024952, 38.233181, 25.416019>,  <40.264034, 38.213116, 25.409935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024952, 38.233181, 25.416019>,  <39.626480, 38.266621, 25.426159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024952, 38.233181, 25.416019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011430, -0.412395, 0.910933,
		-0.086611, -0.907161, -0.411774,
		0.996177, -0.083603, -0.025349,
		40.323807, 38.208099, 25.408415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733334, 37.652653, 25.623341>,  <39.626480, 38.266621, 25.426159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733334, 37.652653, 25.623341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081200, 37.837009, 25.694069>,  <40.289921, 37.947624, 25.736506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081200, 37.837009, 25.694069>,  <39.733334, 37.652653, 25.623341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081200, 37.837009, 25.694069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011072, -0.339894, 0.940398,
		0.493520, -0.819788, -0.290491,
		0.869664, 0.460889, 0.176822,
		40.342098, 37.975277, 25.747116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087601, 37.205837, 25.929148>,  <39.733334, 37.652653, 25.623341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087601, 37.205837, 25.929148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236996, 37.556702, 26.049875>,  <40.326633, 37.767220, 26.122313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236996, 37.556702, 26.049875>,  <40.087601, 37.205837, 25.929148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236996, 37.556702, 26.049875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107367, -0.282302, 0.953299,
		0.921402, -0.388448, -0.011257,
		0.373485, 0.877163, 0.301820,
		40.349041, 37.819851, 26.140421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455772, 37.052151, 26.522728>,  <40.087601, 37.205837, 25.929148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455772, 37.052151, 26.522728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445797, 37.450497, 26.557680>,  <40.439812, 37.689503, 26.578651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445797, 37.450497, 26.557680>,  <40.455772, 37.052151, 26.522728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445797, 37.450497, 26.557680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010210, -0.087658, 0.996098,
		0.999637, 0.023948, 0.012354,
		-0.024938, 0.995863, 0.087382,
		40.438316, 37.749256, 26.583895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026802, 37.230663, 26.988417>,  <40.455772, 37.052151, 26.522728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026802, 37.230663, 26.988417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793171, 37.554852, 27.006289>,  <40.652992, 37.749363, 27.017012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793171, 37.554852, 27.006289>,  <41.026802, 37.230663, 26.988417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793171, 37.554852, 27.006289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055865, -0.014774, 0.998329,
		0.809774, 0.585596, -0.036648,
		-0.584076, 0.810468, 0.044678,
		40.617947, 37.797993, 27.019691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313587, 37.756489, 27.507076>,  <41.026802, 37.230663, 26.988417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313587, 37.756489, 27.507076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918137, 37.807003, 27.474422>,  <40.680866, 37.837311, 27.454830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918137, 37.807003, 27.474422>,  <41.313587, 37.756489, 27.507076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918137, 37.807003, 27.474422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083153, -0.006788, 0.996514,
		0.125289, 0.991971, 0.017212,
		-0.988630, 0.126283, -0.081634,
		40.621548, 37.844887, 27.449932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221771, 38.266613, 27.990360>,  <41.313587, 37.756489, 27.507076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221771, 38.266613, 27.990360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855824, 38.125336, 27.912102>,  <40.636257, 38.040569, 27.865147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855824, 38.125336, 27.912102>,  <41.221771, 38.266613, 27.990360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855824, 38.125336, 27.912102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193808, -0.040947, 0.980185,
		-0.354204, 0.934655, -0.030990,
		-0.914865, -0.353191, -0.195648,
		40.581364, 38.019379, 27.853407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709785, 38.685871, 28.311495>,  <41.221771, 38.266613, 27.990360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709785, 38.685871, 28.311495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556717, 38.318504, 28.271339>,  <40.464878, 38.098083, 28.247246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556717, 38.318504, 28.271339>,  <40.709785, 38.685871, 28.311495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556717, 38.318504, 28.271339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270145, 0.007319, 0.962792,
		-0.883508, 0.395549, -0.250906,
		-0.382668, -0.918416, -0.100390,
		40.441917, 38.042980, 28.241222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566086, 38.507954, 29.051390>,  <40.709785, 38.685871, 28.311495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566086, 38.507954, 29.051390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470970, 38.164833, 28.869125>,  <40.413898, 37.958961, 28.759768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470970, 38.164833, 28.869125>,  <40.566086, 38.507954, 29.051390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470970, 38.164833, 28.869125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137665, -0.434618, 0.890031,
		-0.961511, 0.274372, -0.014740,
		-0.237794, -0.857804, -0.455662,
		40.399632, 37.907494, 28.732428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886593, 38.369389, 29.297729>,  <40.566086, 38.507954, 29.051390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886593, 38.369389, 29.297729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077385, 38.038849, 29.177967>,  <40.191860, 37.840527, 29.106110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077385, 38.038849, 29.177967>,  <39.886593, 38.369389, 29.297729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077385, 38.038849, 29.177967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171045, -0.421414, 0.890592,
		-0.862111, -0.373581, -0.342347,
		0.476978, -0.826346, -0.299406,
		40.220478, 37.790947, 29.088144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424110, 37.867828, 29.528257>,  <39.886593, 38.369389, 29.297729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424110, 37.867828, 29.528257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759480, 37.666248, 29.445234>,  <39.960701, 37.545300, 29.395420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759480, 37.666248, 29.445234>,  <39.424110, 37.867828, 29.528257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759480, 37.666248, 29.445234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086672, -0.499259, 0.862107,
		-0.538092, -0.704817, -0.462267,
		0.838419, -0.503958, -0.207559,
		40.011005, 37.515060, 29.382967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298141, 37.208218, 29.596851>,  <39.424110, 37.867828, 29.528257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298141, 37.208218, 29.596851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693008, 37.246712, 29.647814>,  <39.929928, 37.269806, 29.678392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693008, 37.246712, 29.647814>,  <39.298141, 37.208218, 29.596851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693008, 37.246712, 29.647814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077417, -0.409403, 0.909063,
		0.139643, -0.907264, -0.396700,
		0.987171, 0.096233, 0.127408,
		39.989159, 37.275581, 29.686037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445267, 36.630840, 29.944399>,  <39.298141, 37.208218, 29.596851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445267, 36.630840, 29.944399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761078, 36.866169, 30.014278>,  <39.950565, 37.007366, 30.056206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761078, 36.866169, 30.014278>,  <39.445267, 36.630840, 29.944399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761078, 36.866169, 30.014278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105510, -0.410541, 0.905717,
		0.604578, -0.696655, -0.386207,
		0.789527, 0.588326, 0.174700,
		39.997936, 37.042667, 30.066689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026962, 36.140694, 30.152227>,  <39.445267, 36.630840, 29.944399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026962, 36.140694, 30.152227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097092, 36.509029, 30.291546>,  <40.139168, 36.730030, 30.375137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097092, 36.509029, 30.291546>,  <40.026962, 36.140694, 30.152227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097092, 36.509029, 30.291546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167375, -0.376506, 0.911169,
		0.970179, -0.101452, -0.220136,
		0.175323, 0.920843, 0.348297,
		40.149689, 36.785282, 30.396034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624088, 36.157043, 30.583237>,  <40.026962, 36.140694, 30.152227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624088, 36.157043, 30.583237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469639, 36.508041, 30.697018>,  <40.376968, 36.718639, 30.765287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469639, 36.508041, 30.697018>,  <40.624088, 36.157043, 30.583237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469639, 36.508041, 30.697018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225538, -0.209204, 0.951507,
		0.894451, 0.431554, -0.117129,
		-0.386123, 0.877493, 0.284454,
		40.353802, 36.771290, 30.782354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078568, 36.386898, 31.036203>,  <40.624088, 36.157043, 30.583237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078568, 36.386898, 31.036203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755264, 36.607071, 31.119860>,  <40.561283, 36.739174, 31.170053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755264, 36.607071, 31.119860>,  <41.078568, 36.386898, 31.036203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755264, 36.607071, 31.119860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202387, -0.073851, 0.976517,
		0.552953, 0.831606, -0.051709,
		-0.808259, 0.550433, 0.209142,
		40.512787, 36.772202, 31.182602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364769, 36.917240, 31.429579>,  <41.078568, 36.386898, 31.036203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364769, 36.917240, 31.429579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973850, 36.902630, 31.513063>,  <40.739300, 36.893864, 31.563154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973850, 36.902630, 31.513063>,  <41.364769, 36.917240, 31.429579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973850, 36.902630, 31.513063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209182, -0.009466, 0.977831,
		-0.033742, 0.999288, 0.016892,
		-0.977294, -0.036527, 0.208714,
		40.680660, 36.891670, 31.575678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185631, 37.242878, 32.032272>,  <41.364769, 36.917240, 31.429579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185631, 37.242878, 32.032272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866970, 37.001122, 32.029114>,  <40.675774, 36.856068, 32.027218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866970, 37.001122, 32.029114>,  <41.185631, 37.242878, 32.032272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866970, 37.001122, 32.029114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035296, -0.059551, 0.997601,
		-0.603410, 0.794460, 0.068774,
		-0.796650, -0.604389, -0.007893,
		40.627975, 36.819805, 32.026745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863098, 37.544682, 32.608002>,  <41.185631, 37.242878, 32.032272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863098, 37.544682, 32.608002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668095, 37.199039, 32.557945>,  <40.551094, 36.991653, 32.527912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668095, 37.199039, 32.557945>,  <40.863098, 37.544682, 32.608002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668095, 37.199039, 32.557945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171699, -0.045646, 0.984091,
		-0.856071, 0.501237, -0.126113,
		-0.487507, -0.864105, -0.125138,
		40.521843, 36.939808, 32.520405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106888, 37.499012, 32.844288>,  <40.863098, 37.544682, 32.608002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106888, 37.499012, 32.844288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269974, 37.143341, 32.927361>,  <40.367825, 36.929939, 32.977203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269974, 37.143341, 32.927361>,  <40.106888, 37.499012, 32.844288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269974, 37.143341, 32.927361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270473, 0.099628, 0.957559,
		-0.872131, -0.446583, -0.199879,
		0.407716, -0.889178, 0.207677,
		40.392288, 36.876587, 32.989662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643555, 37.059547, 33.255436>,  <40.106888, 37.499012, 32.844288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643555, 37.059547, 33.255436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029449, 37.007103, 33.346729>,  <40.260986, 36.975636, 33.401505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029449, 37.007103, 33.346729>,  <39.643555, 37.059547, 33.255436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029449, 37.007103, 33.346729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226508, 0.028098, 0.973604,
		-0.134063, -0.990970, -0.002590,
		0.964739, -0.131111, 0.228230,
		40.318871, 36.967770, 33.415199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595848, 36.450184, 33.694614>,  <39.643555, 37.059547, 33.255436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595848, 36.450184, 33.694614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924603, 36.667717, 33.762428>,  <40.121857, 36.798237, 33.803116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924603, 36.667717, 33.762428>,  <39.595848, 36.450184, 33.694614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924603, 36.667717, 33.762428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122699, -0.121624, 0.984963,
		0.556276, -0.830333, -0.033234,
		0.821889, 0.543833, 0.169538,
		40.171169, 36.830868, 33.813290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016800, 35.962822, 34.075649>,  <39.595848, 36.450184, 33.694614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016800, 35.962822, 34.075649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285984, 36.230434, 34.201843>,  <40.447495, 36.391003, 34.277561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285984, 36.230434, 34.201843>,  <40.016800, 35.962822, 34.075649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285984, 36.230434, 34.201843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203426, -0.242669, 0.948541,
		0.711159, -0.702505, -0.027208,
		0.672957, 0.669028, 0.315484,
		40.487873, 36.431145, 34.296490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455914, 35.610596, 34.629177>,  <40.016800, 35.962822, 34.075649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455914, 35.610596, 34.629177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429340, 36.008492, 34.660381>,  <40.413395, 36.247227, 34.679104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429340, 36.008492, 34.660381>,  <40.455914, 35.610596, 34.629177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429340, 36.008492, 34.660381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010080, -0.077511, 0.996941,
		0.997740, 0.067020, -0.004877,
		-0.066436, 0.994736, 0.078012,
		40.409409, 36.306911, 34.683784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000443, 35.849773, 35.076866>,  <40.455914, 35.610596, 34.629177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000443, 35.849773, 35.076866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709278, 36.123940, 35.069321>,  <40.534580, 36.288441, 35.064793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709278, 36.123940, 35.069321>,  <41.000443, 35.849773, 35.076866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709278, 36.123940, 35.069321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000539, 0.028077, 0.999606,
		0.685674, 0.727611, -0.020807,
		-0.727908, 0.685415, -0.018859,
		40.490906, 36.329563, 35.063663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166889, 36.109035, 35.734287>,  <41.000443, 35.849773, 35.076866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166889, 36.109035, 35.734287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811550, 36.263206, 35.634457>,  <40.598347, 36.355709, 35.574558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811550, 36.263206, 35.634457>,  <41.166889, 36.109035, 35.734287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811550, 36.263206, 35.634457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157161, 0.255492, 0.953952,
		0.431441, 0.886663, -0.166392,
		-0.888346, 0.385424, -0.249579,
		40.545048, 36.378834, 35.559582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227459, 36.755306, 36.059650>,  <41.166889, 36.109035, 35.734287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227459, 36.755306, 36.059650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843456, 36.661747, 35.998096>,  <40.613056, 36.605610, 35.961163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843456, 36.661747, 35.998096>,  <41.227459, 36.755306, 36.059650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843456, 36.661747, 35.998096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226613, 0.326322, 0.917693,
		-0.164431, 0.915863, -0.366275,
		-0.960005, -0.233900, -0.153889,
		40.555454, 36.591576, 35.951931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720978, 37.371971, 36.291733>,  <41.227459, 36.755306, 36.059650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720978, 37.371971, 36.291733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507797, 37.036457, 36.247192>,  <40.379887, 36.835148, 36.220467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507797, 37.036457, 36.247192>,  <40.720978, 37.371971, 36.291733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507797, 37.036457, 36.247192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485222, 0.195152, 0.852335,
		-0.693194, 0.508289, -0.511004,
		-0.532956, -0.838784, -0.111355,
		40.347912, 36.784821, 36.213787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034981, 37.573742, 36.432434>,  <40.720978, 37.371971, 36.291733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034981, 37.573742, 36.432434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113529, 37.192028, 36.522568>,  <40.160660, 36.962997, 36.576649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113529, 37.192028, 36.522568>,  <40.034981, 37.573742, 36.432434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113529, 37.192028, 36.522568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642982, 0.048176, 0.764365,
		-0.740278, -0.294985, -0.604129,
		0.196371, -0.954286, 0.225334,
		40.172440, 36.905743, 36.590168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507103, 37.506851, 36.912182>,  <40.034981, 37.573742, 36.432434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507103, 37.506851, 36.912182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736694, 37.179859, 36.931293>,  <39.874447, 36.983665, 36.942760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736694, 37.179859, 36.931293>,  <39.507103, 37.506851, 36.912182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736694, 37.179859, 36.931293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336061, -0.181952, 0.924098,
		-0.746735, -0.546466, -0.379159,
		0.573977, -0.817477, 0.047776,
		39.908886, 36.934616, 36.945625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079475, 36.963230, 37.253551>,  <39.507103, 37.506851, 36.912182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079475, 36.963230, 37.253551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456306, 36.836948, 37.298847>,  <39.682404, 36.761181, 37.326023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456306, 36.836948, 37.298847>,  <39.079475, 36.963230, 37.253551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456306, 36.836948, 37.298847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231701, -0.368498, 0.900291,
		-0.242496, -0.874381, -0.420302,
		0.942078, -0.315701, 0.113236,
		39.738930, 36.742237, 37.332817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994041, 36.324390, 37.626167>,  <39.079475, 36.963230, 37.253551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994041, 36.324390, 37.626167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376411, 36.439079, 37.651474>,  <39.605831, 36.507893, 37.666656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376411, 36.439079, 37.651474>,  <38.994041, 36.324390, 37.626167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376411, 36.439079, 37.651474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006247, -0.195570, 0.980670,
		0.293551, -0.937840, -0.185159,
		0.955923, 0.286720, 0.063268,
		39.663189, 36.525097, 37.670456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332111, 35.859852, 38.048622>,  <38.994041, 36.324390, 37.626167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332111, 35.859852, 38.048622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558674, 36.189289, 38.060455>,  <39.694611, 36.386951, 38.067554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558674, 36.189289, 38.060455>,  <39.332111, 35.859852, 38.048622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558674, 36.189289, 38.060455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295455, -0.236438, 0.925637,
		0.769345, -0.515545, -0.377255,
		0.566405, 0.823596, 0.029582,
		39.728596, 36.436367, 38.069328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949142, 35.663486, 38.344875>,  <39.332111, 35.859852, 38.048622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949142, 35.663486, 38.344875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898186, 36.054947, 38.409401>,  <39.867611, 36.289822, 38.448116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898186, 36.054947, 38.409401>,  <39.949142, 35.663486, 38.344875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898186, 36.054947, 38.409401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224651, -0.129943, 0.965736,
		0.966076, 0.159266, -0.203300,
		-0.127391, 0.978646, 0.161314,
		39.859970, 36.348541, 38.457794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555923, 35.781170, 38.746643>,  <39.949142, 35.663486, 38.344875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555923, 35.781170, 38.746643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286438, 36.071491, 38.802242>,  <40.124744, 36.245682, 38.835602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286438, 36.071491, 38.802242>,  <40.555923, 35.781170, 38.746643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286438, 36.071491, 38.802242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201770, -0.000279, 0.979433,
		0.710912, 0.687905, -0.146257,
		-0.673716, 0.725801, 0.138996,
		40.084324, 36.289230, 38.843941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768700, 36.423687, 39.087276>,  <40.555923, 35.781170, 38.746643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768700, 36.423687, 39.087276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380157, 36.389435, 39.175949>,  <40.147034, 36.368885, 39.229153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380157, 36.389435, 39.175949>,  <40.768700, 36.423687, 39.087276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380157, 36.389435, 39.175949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219362, 0.035729, 0.974989,
		-0.091409, 0.995686, -0.015922,
		-0.971352, -0.085630, 0.221681,
		40.088753, 36.363747, 39.242455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537971, 37.045570, 39.576794>,  <40.768700, 36.423687, 39.087276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537971, 37.045570, 39.576794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269794, 36.755650, 39.640251>,  <40.108887, 36.581696, 39.678326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269794, 36.755650, 39.640251>,  <40.537971, 37.045570, 39.576794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269794, 36.755650, 39.640251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150648, 0.076380, 0.985633,
		-0.726505, 0.684711, 0.057981,
		-0.670445, -0.724801, 0.158641,
		40.068661, 36.538208, 39.687843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189880, 37.277187, 40.170769>,  <40.537971, 37.045570, 39.576794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189880, 37.277187, 40.170769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045185, 36.905018, 40.147266>,  <39.958366, 36.681717, 40.133163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045185, 36.905018, 40.147266>,  <40.189880, 37.277187, 40.170769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045185, 36.905018, 40.147266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087075, -0.096467, 0.991520,
		-0.928205, 0.353553, 0.115913,
		-0.361737, -0.930427, -0.058755,
		39.936665, 36.625889, 40.129639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598049, 37.219398, 40.634716>,  <40.189880, 37.277187, 40.170769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598049, 37.219398, 40.634716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775387, 36.864632, 40.582840>,  <39.881790, 36.651772, 40.551716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775387, 36.864632, 40.582840>,  <39.598049, 37.219398, 40.634716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775387, 36.864632, 40.582840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299438, 0.010175, 0.954062,
		-0.844859, -0.461807, 0.270089,
		0.443341, -0.886922, -0.129687,
		39.908390, 36.598557, 40.543934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214703, 36.681332, 41.108578>,  <39.598049, 37.219398, 40.634716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214703, 36.681332, 41.108578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593113, 36.626740, 40.990993>,  <39.820160, 36.593983, 40.920444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593113, 36.626740, 40.990993>,  <39.214703, 36.681332, 41.108578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593113, 36.626740, 40.990993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311898, 0.136878, 0.940204,
		-0.088084, -0.981141, 0.172058,
		0.946024, -0.136482, -0.293960,
		39.876919, 36.585796, 40.902805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440605, 36.634750, 41.907021>,  <39.214703, 36.681332, 41.108578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440605, 36.634750, 41.907021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732983, 36.389679, 42.027248>,  <39.908409, 36.242634, 42.099384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732983, 36.389679, 42.027248>,  <39.440605, 36.634750, 41.907021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732983, 36.389679, 42.027248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053107, -0.388037, -0.920112,
		0.680369, 0.688512, -0.251095,
		0.730943, -0.612681, 0.300574,
		39.952267, 36.205875, 42.117420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013565, 36.831863, 41.516201>,  <39.440605, 36.634750, 41.907021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013565, 36.831863, 41.516201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983181, 36.448128, 41.624935>,  <39.964951, 36.217888, 41.690178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983181, 36.448128, 41.624935>,  <40.013565, 36.831863, 41.516201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983181, 36.448128, 41.624935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017741, -0.273885, -0.961599,
		0.996953, -0.068225, 0.037825,
		-0.075965, -0.959339, 0.271840,
		39.960392, 36.160324, 41.706486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562416, 36.570030, 41.264370>,  <40.013565, 36.831863, 41.516201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562416, 36.570030, 41.264370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296322, 36.273914, 41.303223>,  <40.136665, 36.096245, 41.326534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296322, 36.273914, 41.303223>,  <40.562416, 36.570030, 41.264370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296322, 36.273914, 41.303223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134223, -0.246541, -0.959793,
		0.734471, -0.625450, 0.263371,
		-0.665235, -0.740290, 0.097128,
		40.096752, 36.051826, 41.332359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726925, 35.930264, 40.883579>,  <40.562416, 36.570030, 41.264370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726925, 35.930264, 40.883579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330723, 35.969822, 40.921768>,  <40.093002, 35.993557, 40.944683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330723, 35.969822, 40.921768>,  <40.726925, 35.930264, 40.883579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330723, 35.969822, 40.921768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093072, 0.028612, -0.995248,
		-0.101163, -0.994686, -0.019136,
		-0.990507, 0.098901, 0.095472,
		40.033569, 35.999493, 40.950409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337048, 35.435070, 40.444290>,  <40.726925, 35.930264, 40.883579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337048, 35.435070, 40.444290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116169, 35.761940, 40.510391>,  <39.983643, 35.958061, 40.550053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116169, 35.761940, 40.510391>,  <40.337048, 35.435070, 40.444290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116169, 35.761940, 40.510391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400608, -0.086245, -0.912181,
		-0.731156, -0.569907, 0.374990,
		-0.552200, 0.817171, 0.165251,
		39.950508, 36.007092, 40.559967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732796, 35.345318, 40.067001>,  <40.337048, 35.435070, 40.444290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732796, 35.345318, 40.067001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777157, 35.742466, 40.084450>,  <39.803772, 35.980755, 40.094917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777157, 35.742466, 40.084450>,  <39.732796, 35.345318, 40.067001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777157, 35.742466, 40.084450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193277, 0.064601, -0.979015,
		-0.974857, 0.100143, 0.199064,
		0.110901, 0.992874, 0.043621,
		39.810429, 36.040329, 40.097538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167953, 35.584515, 39.747086>,  <39.732796, 35.345318, 40.067001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167953, 35.584515, 39.747086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429173, 35.887035, 39.731384>,  <39.585903, 36.068546, 39.721962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429173, 35.887035, 39.731384>,  <39.167953, 35.584515, 39.747086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429173, 35.887035, 39.731384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272433, 0.186242, -0.943978,
		-0.706620, 0.627155, 0.327666,
		0.653045, 0.756301, -0.039255,
		39.625088, 36.113926, 39.719608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831005, 36.274509, 39.486206>,  <39.167953, 35.584515, 39.747086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831005, 36.274509, 39.486206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224529, 36.287128, 39.415642>,  <39.460644, 36.294701, 39.373302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224529, 36.287128, 39.415642>,  <38.831005, 36.274509, 39.486206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224529, 36.287128, 39.415642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173300, -0.083184, -0.981350,
		-0.045629, 0.996035, -0.076371,
		0.983812, 0.031543, -0.176408,
		39.519672, 36.296593, 39.362720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052250, 36.818333, 39.013424>,  <38.831005, 36.274509, 39.486206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052250, 36.818333, 39.013424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328045, 36.529705, 38.988323>,  <39.493523, 36.356529, 38.973263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328045, 36.529705, 38.988323>,  <39.052250, 36.818333, 39.013424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328045, 36.529705, 38.988323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290357, -0.195992, -0.936632,
		0.663549, 0.664018, -0.344649,
		0.689489, -0.721572, -0.062752,
		39.534893, 36.313232, 38.969498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340511, 37.358143, 38.742100>,  <39.052250, 36.818333, 39.013424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340511, 37.358143, 38.742100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668110, 37.128784, 38.750717>,  <39.864670, 36.991169, 38.755890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668110, 37.128784, 38.750717>,  <39.340511, 37.358143, 38.742100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668110, 37.128784, 38.750717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232747, -0.366293, -0.900920,
		0.524475, 0.732836, -0.433449,
		0.818996, -0.573394, 0.021546,
		39.913807, 36.956764, 38.757179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996407, 37.594669, 38.356556>,  <39.340511, 37.358143, 38.742100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996407, 37.594669, 38.356556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936649, 37.200054, 38.383179>,  <39.900795, 36.963287, 38.399151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936649, 37.200054, 38.383179>,  <39.996407, 37.594669, 38.356556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936649, 37.200054, 38.383179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105607, -0.082846, -0.990951,
		0.983122, -0.141012, 0.116562,
		-0.149393, -0.986535, 0.066555,
		39.891830, 36.904095, 38.403145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574360, 37.424282, 38.030048>,  <39.996407, 37.594669, 38.356556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574360, 37.424282, 38.030048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306244, 37.127560, 38.038422>,  <40.145374, 36.949528, 38.043446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306244, 37.127560, 38.038422>,  <40.574360, 37.424282, 38.030048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306244, 37.127560, 38.038422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104977, -0.122702, -0.986876,
		0.734639, -0.659294, 0.160118,
		-0.670288, -0.741806, 0.020931,
		40.105156, 36.905018, 38.044701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910866, 36.922176, 37.727028>,  <40.574360, 37.424282, 38.030048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910866, 36.922176, 37.727028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533218, 36.792709, 37.702103>,  <40.306629, 36.715031, 37.687145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533218, 36.792709, 37.702103>,  <40.910866, 36.922176, 37.727028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533218, 36.792709, 37.702103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189378, -0.377921, -0.906263,
		0.269776, -0.867419, 0.418097,
		-0.944117, -0.323666, -0.062317,
		40.249985, 36.695610, 37.683407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943336, 36.263004, 37.386040>,  <40.910866, 36.922176, 37.727028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943336, 36.263004, 37.386040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567390, 36.398651, 37.369774>,  <40.341824, 36.480038, 37.360016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567390, 36.398651, 37.369774>,  <40.943336, 36.263004, 37.386040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567390, 36.398651, 37.369774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028334, -0.041223, -0.998748,
		-0.340370, -0.939840, 0.029136,
		-0.939864, 0.339118, -0.040661,
		40.285431, 36.500385, 37.357574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411728, 35.739067, 37.132488>,  <40.943336, 36.263004, 37.386040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411728, 35.739067, 37.132488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261684, 36.103786, 37.065647>,  <40.171658, 36.322617, 37.025543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261684, 36.103786, 37.065647>,  <40.411728, 35.739067, 37.132488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261684, 36.103786, 37.065647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030512, -0.192313, -0.980859,
		-0.926480, -0.362826, 0.099958,
		-0.375105, 0.911796, -0.167103,
		40.149155, 36.377327, 37.015514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736732, 35.743153, 36.740311>,  <40.411728, 35.739067, 37.132488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736732, 35.743153, 36.740311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937870, 36.081856, 36.670853>,  <40.058552, 36.285076, 36.629177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937870, 36.081856, 36.670853>,  <39.736732, 35.743153, 36.740311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937870, 36.081856, 36.670853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094753, -0.253677, -0.962637,
		-0.859167, 0.467605, -0.207793,
		0.502846, 0.846755, -0.173644,
		40.088722, 36.335884, 36.618759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684387, 35.649757, 36.100662>,  <39.736732, 35.743153, 36.740311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684387, 35.649757, 36.100662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811481, 36.017590, 36.193115>,  <39.887737, 36.238289, 36.248589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811481, 36.017590, 36.193115>,  <39.684387, 35.649757, 36.100662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811481, 36.017590, 36.193115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053285, 0.226060, -0.972655,
		-0.946682, 0.321360, 0.022827,
		0.317733, 0.919578, 0.231131,
		39.906803, 36.293465, 36.262455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301445, 36.094688, 35.800804>,  <39.684387, 35.649757, 36.100662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301445, 36.094688, 35.800804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650917, 36.284714, 35.842735>,  <39.860600, 36.398731, 35.867893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650917, 36.284714, 35.842735>,  <39.301445, 36.094688, 35.800804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650917, 36.284714, 35.842735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010738, 0.234262, -0.972114,
		-0.486376, 0.848195, 0.209773,
		0.873684, 0.475065, 0.104831,
		39.913021, 36.427235, 35.874184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268093, 36.676174, 35.351017>,  <39.301445, 36.094688, 35.800804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268093, 36.676174, 35.351017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657864, 36.619282, 35.420605>,  <39.891727, 36.585148, 35.462357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657864, 36.619282, 35.420605>,  <39.268093, 36.676174, 35.351017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657864, 36.619282, 35.420605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215627, 0.373977, -0.902023,
		0.063235, 0.916467, 0.395082,
		0.974426, -0.142230, 0.173967,
		39.950191, 36.576614, 35.472794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714302, 37.312649, 35.177483>,  <39.268093, 36.676174, 35.351017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714302, 37.312649, 35.177483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941338, 36.984463, 35.150143>,  <40.077560, 36.787552, 35.133739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941338, 36.984463, 35.150143>,  <39.714302, 37.312649, 35.177483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941338, 36.984463, 35.150143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118061, 0.163272, -0.979492,
		0.814803, 0.547880, 0.189537,
		0.567590, -0.820470, -0.068351,
		40.111614, 36.738323, 35.129639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398312, 37.563042, 34.979530>,  <39.714302, 37.312649, 35.177483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398312, 37.563042, 34.979530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365631, 37.179874, 34.869469>,  <40.346024, 36.949974, 34.803432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365631, 37.179874, 34.869469>,  <40.398312, 37.563042, 34.979530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365631, 37.179874, 34.869469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224499, 0.251292, -0.941516,
		0.971043, -0.138694, 0.194522,
		-0.081700, -0.957923, -0.275152,
		40.341122, 36.892498, 34.786922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758442, 37.703613, 34.443531>,  <40.398312, 37.563042, 34.979530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758442, 37.703613, 34.443531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631489, 37.328957, 34.384239>,  <40.555317, 37.104164, 34.348663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631489, 37.328957, 34.384239>,  <40.758442, 37.703613, 34.443531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631489, 37.328957, 34.384239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218539, 0.079864, -0.972555,
		0.922772, -0.341067, 0.179345,
		-0.317383, -0.936640, -0.148233,
		40.536274, 37.047966, 34.339767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304783, 37.364338, 33.979931>,  <40.758442, 37.703613, 34.443531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304783, 37.364338, 33.979931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961571, 37.161575, 33.946877>,  <40.755642, 37.039917, 33.927044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961571, 37.161575, 33.946877>,  <41.304783, 37.364338, 33.979931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961571, 37.161575, 33.946877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086427, 0.016086, -0.996128,
		0.506269, -0.861853, 0.030008,
		-0.858034, -0.506902, -0.082631,
		40.704159, 37.009506, 33.922089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495209, 36.620899, 33.648239>,  <41.304783, 37.364338, 33.979931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495209, 36.620899, 33.648239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134323, 36.771198, 33.563553>,  <40.917793, 36.861378, 33.512741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134323, 36.771198, 33.563553>,  <41.495209, 36.620899, 33.648239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134323, 36.771198, 33.563553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129310, -0.232640, -0.963928,
		-0.411449, -0.897046, 0.161303,
		-0.902213, 0.375749, -0.211717,
		40.863659, 36.883923, 33.500038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608536, 36.443798, 34.402161>,  <41.495209, 36.620899, 33.648239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608536, 36.443798, 34.402161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739834, 36.189476, 34.122730>,  <41.818615, 36.036884, 33.955070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739834, 36.189476, 34.122730>,  <41.608536, 36.443798, 34.402161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739834, 36.189476, 34.122730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816198, -0.181351, 0.548573,
		-0.475471, -0.750244, 0.459413,
		0.328249, -0.635803, -0.698575,
		41.838310, 35.998734, 33.913158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783165, 35.652607, 34.644398>,  <41.608536, 36.443798, 34.402161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783165, 35.652607, 34.644398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025330, 35.772808, 34.349598>,  <42.170628, 35.844929, 34.172718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025330, 35.772808, 34.349598>,  <41.783165, 35.652607, 34.644398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025330, 35.772808, 34.349598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795417, -0.261164, 0.546905,
		-0.028130, -0.917327, -0.397139,
		0.605410, 0.300507, -0.737004,
		42.206951, 35.862961, 34.128498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299301, 35.136814, 34.672394>,  <41.783165, 35.652607, 34.644398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299301, 35.136814, 34.672394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418102, 35.483891, 34.512943>,  <42.489384, 35.692135, 34.417274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418102, 35.483891, 34.512943>,  <42.299301, 35.136814, 34.672394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418102, 35.483891, 34.512943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840263, -0.039187, 0.540761,
		0.453593, -0.495556, -0.740728,
		0.297005, 0.867691, -0.398623,
		42.507202, 35.744198, 34.393356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035015, 35.105221, 34.384621>,  <42.299301, 35.136814, 34.672394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035015, 35.105221, 34.384621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982033, 35.490932, 34.476376>,  <42.950241, 35.722359, 34.531429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982033, 35.490932, 34.476376>,  <43.035015, 35.105221, 34.384621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982033, 35.490932, 34.476376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727155, -0.062731, 0.683601,
		0.673573, 0.257346, -0.692873,
		-0.132458, 0.964281, 0.229384,
		42.942295, 35.780216, 34.545189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754456, 35.403740, 34.441292>,  <43.035015, 35.105221, 34.384621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754456, 35.403740, 34.441292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489006, 35.591805, 34.674034>,  <43.329739, 35.704643, 34.813679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489006, 35.591805, 34.674034>,  <43.754456, 35.403740, 34.441292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489006, 35.591805, 34.674034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671191, 0.030764, 0.740646,
		0.330321, 0.882045, -0.335982,
		-0.663619, 0.470159, 0.581859,
		43.289921, 35.732853, 34.848591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057854, 35.961044, 34.727837>,  <43.754456, 35.403740, 34.441292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057854, 35.961044, 34.727837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771366, 35.850296, 34.984077>,  <43.599472, 35.783848, 35.137821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771366, 35.850296, 34.984077>,  <44.057854, 35.961044, 34.727837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771366, 35.850296, 34.984077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614107, 0.185995, 0.766993,
		-0.331508, 0.942734, 0.036816,
		-0.716222, -0.276873, 0.640599,
		43.556499, 35.767235, 35.176258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257164, 36.426212, 35.264832>,  <44.057854, 35.961044, 34.727837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257164, 36.426212, 35.264832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056393, 36.104191, 35.391300>,  <43.935932, 35.910976, 35.467182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056393, 36.104191, 35.391300>,  <44.257164, 36.426212, 35.264832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056393, 36.104191, 35.391300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619822, -0.079845, 0.780670,
		-0.603235, 0.587806, 0.539065,
		-0.501924, -0.805052, 0.316170,
		43.905815, 35.862675, 35.486153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515251, 36.503174, 35.930416>,  <44.257164, 36.426212, 35.264832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515251, 36.503174, 35.930416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226845, 36.446594, 36.201748>,  <44.053799, 36.412647, 36.364548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226845, 36.446594, 36.201748>,  <44.515251, 36.503174, 35.930416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.226845, 36.446594, 36.201748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380011, 0.899313, -0.216398,
		-0.579417, -0.413798, -0.702173,
		-0.721019, -0.141449, 0.678325,
		44.010540, 36.404160, 36.405247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109005, 37.107204, 35.887051>,  <44.515251, 36.503174, 35.930416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.109005, 37.107204, 35.887051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903507, 36.906410, 36.165356>,  <43.780209, 36.785934, 36.332340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903507, 36.906410, 36.165356>,  <44.109005, 37.107204, 35.887051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903507, 36.906410, 36.165356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635144, 0.767713, 0.084910,
		-0.576768, -0.398287, -0.713236,
		-0.513742, -0.501981, 0.695762,
		43.749386, 36.755817, 36.374084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816479, 37.357430, 35.643364>,  <44.109005, 37.107204, 35.887051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816479, 37.357430, 35.643364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986607, 37.697063, 35.768692>,  <45.088684, 37.900845, 35.843887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986607, 37.697063, 35.768692>,  <44.816479, 37.357430, 35.643364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986607, 37.697063, 35.768692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326503, 0.178928, -0.928106,
		-0.844097, 0.497039, -0.201126,
		0.425318, 0.849080, 0.313317,
		45.114201, 37.951786, 35.862686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576622, 38.005405, 35.385334>,  <44.816479, 37.357430, 35.643364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576622, 38.005405, 35.385334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962296, 38.005806, 35.491425>,  <45.193699, 38.006046, 35.555080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962296, 38.005806, 35.491425>,  <44.576622, 38.005405, 35.385334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962296, 38.005806, 35.491425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262299, 0.144716, -0.954074,
		-0.039337, 0.989473, 0.139271,
		0.964185, 0.001000, 0.265230,
		45.251553, 38.006107, 35.570995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385345, 37.513371, 34.757332>,  <44.576622, 38.005405, 35.385334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385345, 37.513371, 34.757332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763142, 37.400608, 34.689846>,  <44.989819, 37.332951, 34.649353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763142, 37.400608, 34.689846>,  <44.385345, 37.513371, 34.757332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763142, 37.400608, 34.689846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274987, -0.959343, 0.063581,
		-0.179780, -0.013657, -0.983612,
		0.944490, -0.281911, -0.168715,
		45.046490, 37.316036, 34.639233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.629723, 37.010738, 34.214485>,  <44.385345, 37.513371, 34.757332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.629723, 37.010738, 34.214485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918766, 36.991070, 34.490288>,  <45.092194, 36.979271, 34.655769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.918766, 36.991070, 34.490288>,  <44.629723, 37.010738, 34.214485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918766, 36.991070, 34.490288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178476, -0.976918, 0.117381,
		0.667816, -0.207880, -0.714708,
		0.722612, -0.049169, 0.689503,
		45.135551, 36.976318, 34.697140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.177898, 36.570538, 34.000858>,  <44.629723, 37.010738, 34.214485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.177898, 36.570538, 34.000858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130104, 36.586987, 34.397652>,  <45.101425, 36.596855, 34.635727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130104, 36.586987, 34.397652>,  <45.177898, 36.570538, 34.000858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130104, 36.586987, 34.397652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184359, -0.982684, 0.018526,
		0.975569, -0.180668, 0.124999,
		-0.119488, 0.041118, 0.991984,
		45.094257, 36.599323, 34.695248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.349442, 35.818726, 34.076862>,  <45.177898, 36.570538, 34.000858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.349442, 35.818726, 34.076862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.391857, 35.437611, 33.963051>,  <45.417309, 35.208942, 33.894764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.391857, 35.437611, 33.963051>,  <45.349442, 35.818726, 34.076862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391857, 35.437611, 33.963051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975131, 0.043639, 0.217292,
		-0.194617, -0.300492, 0.933718,
		0.106041, -0.952785, -0.284527,
		45.423668, 35.151775, 33.877693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.457611, 35.220829, 34.659355>,  <45.349442, 35.818726, 34.076862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.457611, 35.220829, 34.659355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621323, 35.083710, 34.321129>,  <45.719551, 35.001438, 34.118195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621323, 35.083710, 34.321129>,  <45.457611, 35.220829, 34.659355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621323, 35.083710, 34.321129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769771, -0.367801, 0.521704,
		-0.489837, -0.864415, 0.113340,
		0.409282, -0.342795, -0.845565,
		45.744106, 34.980869, 34.067459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587063, 34.579151, 34.746563>,  <45.457611, 35.220829, 34.659355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587063, 34.579151, 34.746563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853348, 34.733604, 34.491146>,  <46.013119, 34.826275, 34.337898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853348, 34.733604, 34.491146>,  <45.587063, 34.579151, 34.746563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.853348, 34.733604, 34.491146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741923, -0.434092, 0.510994,
		-0.079875, -0.813922, -0.575458,
		0.665711, 0.386130, -0.638540,
		46.053062, 34.849442, 34.299583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.189579, 34.057419, 34.414124>,  <45.587063, 34.579151, 34.746563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.189579, 34.057419, 34.414124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294685, 34.442966, 34.431576>,  <46.357750, 34.674297, 34.442047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294685, 34.442966, 34.431576>,  <46.189579, 34.057419, 34.414124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294685, 34.442966, 34.431576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862423, -0.254906, 0.437322,
		0.432646, -0.077281, -0.898246,
		0.262764, 0.963873, 0.043635,
		46.373516, 34.732128, 34.444668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.929291, 34.176495, 34.249115>,  <46.189579, 34.057419, 34.414124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.929291, 34.176495, 34.249115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.825623, 34.491512, 34.472759>,  <46.763420, 34.680523, 34.606945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.825623, 34.491512, 34.472759>,  <46.929291, 34.176495, 34.249115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.825623, 34.491512, 34.472759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902778, -0.008201, 0.430028,
		0.343252, 0.616202, -0.708853,
		-0.259171, 0.787545, 0.559109,
		46.747871, 34.727776, 34.640491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.374462, 34.674957, 34.099403>,  <46.929291, 34.176495, 34.249115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.374462, 34.674957, 34.099403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.209541, 34.744972, 34.457031>,  <47.110588, 34.786980, 34.671608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.209541, 34.744972, 34.457031>,  <47.374462, 34.674957, 34.099403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.209541, 34.744972, 34.457031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909765, 0.027082, 0.414240,
		0.048292, 0.984190, -0.170405,
		-0.412305, 0.175033, 0.894074,
		47.085850, 34.797482, 34.725254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.746696, 35.286716, 34.376091>,  <47.374462, 34.674957, 34.099403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.746696, 35.286716, 34.376091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.575993, 35.035049, 34.635944>,  <47.473572, 34.884048, 34.791859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.575993, 35.035049, 34.635944>,  <47.746696, 35.286716, 34.376091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.575993, 35.035049, 34.635944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845192, -0.021894, 0.534014,
		-0.321761, 0.776961, 0.541111,
		-0.426756, -0.629167, 0.649637,
		47.447968, 34.846298, 34.830837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.886753, 35.398766, 35.029003>,  <47.746696, 35.286716, 34.376091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.886753, 35.398766, 35.029003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.803288, 35.007591, 35.033131>,  <47.753208, 34.772888, 35.035606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.803288, 35.007591, 35.033131>,  <47.886753, 35.398766, 35.029003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.803288, 35.007591, 35.033131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882809, -0.183808, 0.432277,
		-0.420841, 0.099311, 0.901682,
		-0.208666, -0.977933, 0.010318,
		47.740688, 34.714211, 35.036224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.894371, 35.022076, 22.993420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.499104, 34.999798, 22.936253>,  <38.261944, 34.986431, 22.901953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.499104, 34.999798, 22.936253>,  <38.894371, 35.022076, 22.993420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499104, 34.999798, 22.936253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120020, -0.299422, 0.946542,
		-0.095512, 0.952494, 0.289194,
		-0.988166, -0.055697, -0.142916,
		38.202652, 34.983089, 22.893377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646111, 35.203865, 23.640055>,  <38.894371, 35.022076, 22.993420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646111, 35.203865, 23.640055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342838, 35.020473, 23.454596>,  <38.160877, 34.910439, 23.343319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342838, 35.020473, 23.454596>,  <38.646111, 35.203865, 23.640055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342838, 35.020473, 23.454596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229669, -0.477724, 0.847957,
		-0.610263, 0.749387, 0.256902,
		-0.758176, -0.458475, -0.463649,
		38.115387, 34.882931, 23.315500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097504, 35.292538, 24.058891>,  <38.646111, 35.203865, 23.640055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097504, 35.292538, 24.058891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971996, 35.002289, 23.813936>,  <37.896694, 34.828140, 23.666964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971996, 35.002289, 23.813936>,  <38.097504, 35.292538, 24.058891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971996, 35.002289, 23.813936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395275, -0.486592, 0.779093,
		-0.863313, 0.486513, -0.134147,
		-0.313764, -0.725626, -0.612388,
		37.877869, 34.784599, 23.630220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355549, 35.187935, 24.061350>,  <38.097504, 35.292538, 24.058891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355549, 35.187935, 24.061350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508415, 34.837345, 23.944229>,  <37.600136, 34.626991, 23.873957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508415, 34.837345, 23.944229>,  <37.355549, 35.187935, 24.061350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508415, 34.837345, 23.944229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359269, -0.432852, 0.826780,
		-0.851394, -0.210775, -0.480314,
		0.382169, -0.876478, -0.292802,
		37.623066, 34.574402, 23.856388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990913, 34.751106, 24.374226>,  <37.355549, 35.187935, 24.061350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990913, 34.751106, 24.374226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.279297, 34.498558, 24.259972>,  <37.452328, 34.347031, 24.191420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.279297, 34.498558, 24.259972>,  <36.990913, 34.751106, 24.374226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279297, 34.498558, 24.259972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138900, -0.535481, 0.833047,
		-0.678915, -0.560917, -0.473757,
		0.720958, -0.631373, -0.285635,
		37.495586, 34.309147, 24.174282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736397, 33.985058, 24.381916>,  <36.990913, 34.751106, 24.374226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736397, 33.985058, 24.381916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.135025, 33.991596, 24.414360>,  <37.374203, 33.995522, 24.433826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.135025, 33.991596, 24.414360>,  <36.736397, 33.985058, 24.381916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135025, 33.991596, 24.414360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059709, -0.536543, 0.841758,
		0.057281, -0.843715, -0.533727,
		0.996571, 0.016348, 0.081111,
		37.433998, 33.996502, 24.438694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896358, 33.313988, 24.612499>,  <36.736397, 33.985058, 24.381916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896358, 33.313988, 24.612499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220123, 33.533527, 24.696037>,  <37.414383, 33.665249, 24.746161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220123, 33.533527, 24.696037>,  <36.896358, 33.313988, 24.612499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220123, 33.533527, 24.696037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098183, -0.477115, 0.873339,
		0.578970, -0.686390, -0.440072,
		0.809416, 0.548845, 0.208843,
		37.462948, 33.698181, 24.758690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211369, 32.893597, 25.066685>,  <36.896358, 33.313988, 24.612499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211369, 32.893597, 25.066685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.427914, 33.227203, 25.109270>,  <37.557842, 33.427368, 25.134821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.427914, 33.227203, 25.109270>,  <37.211369, 32.893597, 25.066685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427914, 33.227203, 25.109270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247862, -0.279302, 0.927661,
		0.803424, -0.475814, -0.357926,
		0.541363, 0.834021, 0.106462,
		37.590324, 33.477409, 25.141209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963966, 32.751736, 25.219612>,  <37.211369, 32.893597, 25.066685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963966, 32.751736, 25.219612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.874256, 33.106770, 25.380558>,  <37.820431, 33.319790, 25.477125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.874256, 33.106770, 25.380558>,  <37.963966, 32.751736, 25.219612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874256, 33.106770, 25.380558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396059, -0.294232, 0.869807,
		0.890414, 0.354438, -0.285546,
		-0.224276, 0.887582, 0.402367,
		37.806973, 33.373043, 25.501268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469112, 32.920105, 25.663668>,  <37.963966, 32.751736, 25.219612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469112, 32.920105, 25.663668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191124, 33.167816, 25.809826>,  <38.024330, 33.316444, 25.897520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191124, 33.167816, 25.809826>,  <38.469112, 32.920105, 25.663668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191124, 33.167816, 25.809826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358750, -0.141768, 0.922605,
		0.623152, 0.772266, -0.123642,
		-0.694968, 0.619279, 0.365394,
		37.982632, 33.353600, 25.919443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770359, 33.209549, 26.187614>,  <38.469112, 32.920105, 25.663668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770359, 33.209549, 26.187614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.389534, 33.287868, 26.281631>,  <38.161041, 33.334858, 26.338041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.389534, 33.287868, 26.281631>,  <38.770359, 33.209549, 26.187614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389534, 33.287868, 26.281631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257260, 0.096698, 0.961492,
		0.165529, 0.975865, -0.142433,
		-0.952060, 0.195797, 0.235044,
		38.103916, 33.346607, 26.352144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753048, 33.906616, 26.602442>,  <38.770359, 33.209549, 26.187614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753048, 33.906616, 26.602442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.407539, 33.718555, 26.674946>,  <38.200233, 33.605721, 26.718449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.407539, 33.718555, 26.674946>,  <38.753048, 33.906616, 26.602442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407539, 33.718555, 26.674946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119216, 0.158831, 0.980082,
		-0.489577, 0.868176, -0.081144,
		-0.863772, -0.470151, 0.181261,
		38.148407, 33.577511, 26.729324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467541, 34.274181, 27.157938>,  <38.753048, 33.906616, 26.602442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467541, 34.274181, 27.157938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.300972, 33.910572, 27.164543>,  <38.201031, 33.692406, 27.168507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.300972, 33.910572, 27.164543>,  <38.467541, 34.274181, 27.157938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300972, 33.910572, 27.164543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016069, 0.025521, 0.999545,
		-0.909028, 0.415970, -0.025234,
		-0.416425, -0.909020, 0.016515,
		38.176044, 33.637867, 27.169498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051159, 34.254723, 27.733896>,  <38.467541, 34.274181, 27.157938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051159, 34.254723, 27.733896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059700, 33.861240, 27.662483>,  <38.064823, 33.625153, 27.619637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059700, 33.861240, 27.662483>,  <38.051159, 34.254723, 27.733896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059700, 33.861240, 27.662483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364037, -0.158663, 0.917771,
		-0.931140, -0.084589, 0.354716,
		0.021353, -0.983703, -0.178531,
		38.066105, 33.566128, 27.608925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672180, 33.970821, 28.292530>,  <38.051159, 34.254723, 27.733896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672180, 33.970821, 28.292530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.907730, 33.685638, 28.140255>,  <38.049061, 33.514530, 28.048889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.907730, 33.685638, 28.140255>,  <37.672180, 33.970821, 28.292530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907730, 33.685638, 28.140255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276248, -0.265100, 0.923801,
		-0.759550, -0.649165, 0.040843,
		0.588872, -0.712956, -0.380687,
		38.084393, 33.471752, 28.026049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471615, 33.309643, 28.761351>,  <37.672180, 33.970821, 28.292530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471615, 33.309643, 28.761351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.822266, 33.303230, 28.568993>,  <38.032658, 33.299381, 28.453577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.822266, 33.303230, 28.568993>,  <37.471615, 33.309643, 28.761351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822266, 33.303230, 28.568993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480250, -0.032421, 0.876532,
		-0.029624, -0.999346, -0.020732,
		0.876631, -0.016010, -0.480897,
		38.085255, 33.298420, 28.424723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872299, 32.672916, 29.049734>,  <37.471615, 33.309643, 28.761351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872299, 32.672916, 29.049734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156761, 32.899765, 28.883543>,  <38.327438, 33.035873, 28.783829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156761, 32.899765, 28.883543>,  <37.872299, 32.672916, 29.049734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156761, 32.899765, 28.883543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570963, -0.121100, 0.811996,
		0.410188, -0.814680, -0.409929,
		0.711159, 0.567125, -0.415478,
		38.370110, 33.069901, 28.758900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494930, 32.348049, 29.289856>,  <37.872299, 32.672916, 29.049734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494930, 32.348049, 29.289856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.629463, 32.705040, 29.169609>,  <38.710182, 32.919235, 29.097462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.629463, 32.705040, 29.169609>,  <38.494930, 32.348049, 29.289856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629463, 32.705040, 29.169609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543807, 0.076560, 0.835711,
		0.768865, -0.444556, -0.459583,
		0.336335, 0.892473, -0.300617,
		38.730362, 32.972782, 29.079424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239586, 32.361629, 29.327599>,  <38.494930, 32.348049, 29.289856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239586, 32.361629, 29.327599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.133034, 32.747147, 29.332333>,  <39.069103, 32.978458, 29.335173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.133034, 32.747147, 29.332333>,  <39.239586, 32.361629, 29.327599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133034, 32.747147, 29.332333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560825, 0.144994, 0.815139,
		0.783911, 0.223774, -0.579144,
		-0.266379, 0.963796, 0.011836,
		39.053120, 33.036285, 29.335884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825958, 32.865929, 29.396719>,  <39.239586, 32.361629, 29.327599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825958, 32.865929, 29.396719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.510979, 33.075382, 29.526783>,  <39.321991, 33.201054, 29.604822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.510979, 33.075382, 29.526783>,  <39.825958, 32.865929, 29.396719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510979, 33.075382, 29.526783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375901, -0.010107, 0.926605,
		0.488488, 0.851883, -0.188875,
		-0.787450, 0.523634, 0.325161,
		39.274742, 33.232471, 29.624331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088375, 33.409634, 29.817635>,  <39.825958, 32.865929, 29.396719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088375, 33.409634, 29.817635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.701405, 33.383583, 29.915485>,  <39.469223, 33.367950, 29.974195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.701405, 33.383583, 29.915485>,  <40.088375, 33.409634, 29.817635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701405, 33.383583, 29.915485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245226, -0.001242, 0.969465,
		-0.062838, 0.997876, 0.017174,
		-0.967427, -0.065131, 0.244627,
		39.411175, 33.364044, 29.988874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876183, 34.005116, 30.179625>,  <40.088375, 33.409634, 29.817635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876183, 34.005116, 30.179625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.630936, 33.708134, 30.287586>,  <39.483788, 33.529945, 30.352364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.630936, 33.708134, 30.287586>,  <39.876183, 34.005116, 30.179625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630936, 33.708134, 30.287586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327949, 0.071619, 0.941977,
		-0.718705, 0.666058, 0.199576,
		-0.613118, -0.742454, 0.269905,
		39.446999, 33.485397, 30.368557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907856, 34.372894, 30.794031>,  <39.876183, 34.005116, 30.179625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907856, 34.372894, 30.794031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.254368, 34.431255, 30.985140>,  <40.462276, 34.466274, 31.099806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.254368, 34.431255, 30.985140>,  <39.907856, 34.372894, 30.794031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254368, 34.431255, 30.985140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463682, 0.121030, -0.877696,
		-0.185886, 0.981867, 0.037192,
		0.866282, 0.145906, 0.477772,
		40.514252, 34.475029, 31.128471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260975, 34.957771, 30.407501>,  <39.907856, 34.372894, 30.794031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260975, 34.957771, 30.407501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.567596, 34.816433, 30.621994>,  <40.751568, 34.731632, 30.750689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.567596, 34.816433, 30.621994>,  <40.260975, 34.957771, 30.407501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567596, 34.816433, 30.621994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629922, 0.251354, -0.734860,
		0.124874, 0.901093, 0.415255,
		0.766554, -0.353343, 0.536231,
		40.797562, 34.710430, 30.782864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831600, 35.494774, 30.437950>,  <40.260975, 34.957771, 30.407501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831600, 35.494774, 30.437950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.011772, 35.141788, 30.492147>,  <41.119877, 34.929996, 30.524666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.011772, 35.141788, 30.492147>,  <40.831600, 35.494774, 30.437950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011772, 35.141788, 30.492147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590762, 0.180807, -0.786326,
		0.669410, 0.434234, 0.602770,
		0.450435, -0.882468, 0.135495,
		41.146904, 34.877048, 30.532795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581745, 35.566402, 30.486837>,  <40.831600, 35.494774, 30.437950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581745, 35.566402, 30.486837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.486816, 35.204926, 30.344276>,  <41.429859, 34.988041, 30.258739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.486816, 35.204926, 30.344276>,  <41.581745, 35.566402, 30.486837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486816, 35.204926, 30.344276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454509, 0.220956, -0.862902,
		0.858544, -0.366777, 0.358297,
		-0.237325, -0.903689, -0.356403,
		41.415619, 34.933819, 30.237356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207901, 35.296749, 30.065344>,  <41.581745, 35.566402, 30.486837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207901, 35.296749, 30.065344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.880489, 35.091736, 29.961565>,  <41.684040, 34.968727, 29.899298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.880489, 35.091736, 29.961565>,  <42.207901, 35.296749, 30.065344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880489, 35.091736, 29.961565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197860, 0.172472, -0.964938,
		0.539311, -0.841167, -0.039764,
		-0.818532, -0.512534, -0.259449,
		41.634930, 34.937977, 29.883730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448616, 34.888485, 29.457773>,  <42.207901, 35.296749, 30.065344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448616, 34.888485, 29.457773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.050518, 34.850723, 29.448114>,  <41.811661, 34.828068, 29.442320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.050518, 34.850723, 29.448114>,  <42.448616, 34.888485, 29.457773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050518, 34.850723, 29.448114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012920, 0.117758, -0.992958,
		0.096565, -0.988546, -0.115979,
		-0.995243, -0.094387, -0.024143,
		41.751945, 34.822403, 29.440870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274097, 34.255058, 29.009605>,  <42.448616, 34.888485, 29.457773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274097, 34.255058, 29.009605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.937157, 34.470592, 29.013517>,  <41.734993, 34.599915, 29.015863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.937157, 34.470592, 29.013517>,  <42.274097, 34.255058, 29.009605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937157, 34.470592, 29.013517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082743, -0.111379, -0.990327,
		-0.532534, -0.835016, 0.138405,
		-0.842355, 0.538835, 0.009779,
		41.684448, 34.632244, 29.016451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765652, 33.998936, 28.575186>,  <42.274097, 34.255058, 29.009605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765652, 33.998936, 28.575186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.617912, 34.369537, 28.603958>,  <41.529270, 34.591896, 28.621222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.617912, 34.369537, 28.603958>,  <41.765652, 33.998936, 28.575186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617912, 34.369537, 28.603958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423771, -0.099039, -0.900339,
		-0.827042, -0.363021, 0.429205,
		-0.369350, 0.926503, 0.071929,
		41.507107, 34.647488, 28.625536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124783, 33.883381, 28.393169>,  <41.765652, 33.998936, 28.575186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124783, 33.883381, 28.393169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.180744, 34.277695, 28.355959>,  <41.214321, 34.514282, 28.333632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.180744, 34.277695, 28.355959>,  <41.124783, 33.883381, 28.393169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180744, 34.277695, 28.355959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468686, -0.016829, -0.883205,
		-0.872215, 0.167168, 0.459669,
		0.139907, 0.985785, -0.093028,
		41.222717, 34.573429, 28.328051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570309, 34.078564, 27.989332>,  <41.124783, 33.883381, 28.393169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570309, 34.078564, 27.989332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.829491, 34.379936, 27.944611>,  <40.985001, 34.560760, 27.917778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.829491, 34.379936, 27.944611>,  <40.570309, 34.078564, 27.989332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829491, 34.379936, 27.944611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301768, 0.119158, -0.945906,
		-0.699353, 0.646639, 0.304569,
		0.647952, 0.753431, -0.111802,
		41.023876, 34.605965, 27.911070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275860, 34.648537, 27.584415>,  <40.570309, 34.078564, 27.989332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275860, 34.648537, 27.584415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.666500, 34.718597, 27.534500>,  <40.900883, 34.760632, 27.504551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.666500, 34.718597, 27.534500>,  <40.275860, 34.648537, 27.584415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666500, 34.718597, 27.534500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164139, 0.232146, -0.958732,
		-0.138951, 0.956782, 0.255463,
		0.976602, 0.175149, -0.124789,
		40.959480, 34.771141, 27.497063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324505, 35.222553, 27.257044>,  <40.275860, 34.648537, 27.584415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324505, 35.222553, 27.257044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.703423, 35.109795, 27.196157>,  <40.930775, 35.042141, 27.159626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.703423, 35.109795, 27.196157>,  <40.324505, 35.222553, 27.257044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703423, 35.109795, 27.196157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054550, 0.326259, -0.943705,
		0.315689, 0.902269, 0.293686,
		0.947293, -0.281897, -0.152215,
		40.987610, 35.025227, 27.150494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571762, 35.724445, 26.912479>,  <40.324505, 35.222553, 27.257044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571762, 35.724445, 26.912479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.793850, 35.405624, 26.817448>,  <40.927101, 35.214333, 26.760427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.793850, 35.405624, 26.817448>,  <40.571762, 35.724445, 26.912479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793850, 35.405624, 26.817448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100769, 0.219084, -0.970488,
		0.825577, 0.562774, 0.041322,
		0.555219, -0.797049, -0.237581,
		40.960415, 35.166508, 26.746174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104820, 35.874046, 26.336546>,  <40.571762, 35.724445, 26.912479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104820, 35.874046, 26.336546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.063229, 35.476677, 26.317341>,  <41.038273, 35.238255, 26.305819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.063229, 35.476677, 26.317341>,  <41.104820, 35.874046, 26.336546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063229, 35.476677, 26.317341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074761, 0.055945, -0.995631,
		0.991766, -0.099934, -0.080086,
		-0.103978, -0.993420, -0.048013,
		41.032036, 35.178650, 26.302937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515263, 35.718472, 25.820683>,  <41.104820, 35.874046, 26.336546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515263, 35.718472, 25.820683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.301991, 35.381485, 25.851583>,  <41.174026, 35.179291, 25.870125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.301991, 35.381485, 25.851583>,  <41.515263, 35.718472, 25.820683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301991, 35.381485, 25.851583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126078, -0.011171, -0.991957,
		0.836557, -0.538628, -0.100261,
		-0.533176, -0.842469, 0.077255,
		41.142036, 35.128746, 25.874760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788429, 35.178528, 25.366661>,  <41.515263, 35.718472, 25.820683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788429, 35.178528, 25.366661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.409618, 35.058762, 25.413120>,  <41.182331, 34.986900, 25.440996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.409618, 35.058762, 25.413120>,  <41.788429, 35.178528, 25.366661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409618, 35.058762, 25.413120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071804, -0.155100, -0.985286,
		0.313023, -0.941432, 0.125384,
		-0.947028, -0.299414, 0.116149,
		41.125511, 34.968937, 25.447966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715210, 34.660587, 24.823338>,  <41.788429, 35.178528, 25.366661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715210, 34.660587, 24.823338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.338989, 34.744610, 24.930098>,  <41.113258, 34.795025, 24.994154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.338989, 34.744610, 24.930098>,  <41.715210, 34.660587, 24.823338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338989, 34.744610, 24.930098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319844, -0.283369, -0.904103,
		-0.114284, -0.935723, 0.333709,
		-0.940552, 0.210059, 0.266901,
		41.056824, 34.807629, 25.010168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231773, 34.177376, 24.458818>,  <41.715210, 34.660587, 24.823338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231773, 34.177376, 24.458818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.028706, 34.508366, 24.554781>,  <40.906864, 34.706959, 24.612358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.028706, 34.508366, 24.554781>,  <41.231773, 34.177376, 24.458818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028706, 34.508366, 24.554781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230605, 0.137790, -0.963242,
		-0.830117, -0.544332, 0.120868,
		-0.507669, 0.827476, 0.239907,
		40.876404, 34.756607, 24.626753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.355682, 34.203503, 23.967466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.432163, 34.561916, 24.127748>,  <40.478054, 34.776966, 24.223919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.432163, 34.561916, 24.127748>,  <40.355682, 34.203503, 23.967466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432163, 34.561916, 24.127748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314250, 0.442633, -0.839835,
		-0.929886, 0.034658, 0.366212,
		0.191205, 0.896032, 0.400707,
		40.489525, 34.830727, 24.247961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792694, 34.656937, 23.969860>,  <40.355682, 34.203503, 23.967466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792694, 34.656937, 23.969860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.090054, 34.923710, 23.990065>,  <40.268471, 35.083775, 24.002188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.090054, 34.923710, 23.990065>,  <39.792694, 34.656937, 23.969860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090054, 34.923710, 23.990065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358883, 0.461480, -0.811320,
		-0.564407, 0.585009, 0.582417,
		0.743403, 0.666934, 0.050512,
		40.313076, 35.123791, 24.005219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526943, 35.382694, 23.729704>,  <39.792694, 34.656937, 23.969860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526943, 35.382694, 23.729704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.923809, 35.414791, 23.691381>,  <40.161926, 35.434048, 23.668388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.923809, 35.414791, 23.691381>,  <39.526943, 35.382694, 23.729704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923809, 35.414791, 23.691381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122925, 0.488522, -0.863849,
		-0.022512, 0.868854, 0.494556,
		0.992161, 0.080240, -0.095806,
		40.221458, 35.438862, 23.662640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421555, 35.838215, 23.266249>,  <39.526943, 35.382694, 23.729704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421555, 35.838215, 23.266249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.811852, 35.751785, 23.280373>,  <40.046028, 35.699928, 23.288847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.811852, 35.751785, 23.280373>,  <39.421555, 35.838215, 23.266249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811852, 35.751785, 23.280373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107409, 0.331876, -0.937188,
		0.190782, 0.918243, 0.347032,
		0.975738, -0.216073, 0.035311,
		40.104572, 35.686962, 23.290966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838760, 36.454098, 22.936052>,  <39.421555, 35.838215, 23.266249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838760, 36.454098, 22.936052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.059116, 36.120335, 22.929417>,  <40.191330, 35.920074, 22.925436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.059116, 36.120335, 22.929417>,  <39.838760, 36.454098, 22.936052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059116, 36.120335, 22.929417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267151, 0.195140, -0.943690,
		0.790662, 0.515441, 0.330415,
		0.550894, -0.834411, -0.016589,
		40.224384, 35.870010, 22.924440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541729, 36.658298, 22.806480>,  <39.838760, 36.454098, 22.936052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541729, 36.658298, 22.806480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.507423, 36.275402, 22.695971>,  <40.486839, 36.045662, 22.629665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.507423, 36.275402, 22.695971>,  <40.541729, 36.658298, 22.806480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507423, 36.275402, 22.695971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251140, 0.247570, -0.935755,
		0.964144, -0.149637, 0.219170,
		-0.085764, -0.957245, -0.276273,
		40.481693, 35.988228, 22.613089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056332, 36.542973, 22.415689>,  <40.541729, 36.658298, 22.806480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056332, 36.542973, 22.415689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.814541, 36.246632, 22.298563>,  <40.669468, 36.068825, 22.228287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.814541, 36.246632, 22.298563>,  <41.056332, 36.542973, 22.415689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814541, 36.246632, 22.298563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301021, 0.127895, -0.945002,
		0.737560, -0.659375, 0.145704,
		-0.604477, -0.740856, -0.292816,
		40.633198, 36.024376, 22.210718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396011, 36.109589, 21.920454>,  <41.056332, 36.542973, 22.415689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396011, 36.109589, 21.920454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.012486, 36.036465, 21.833509>,  <40.782368, 35.992588, 21.781342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.012486, 36.036465, 21.833509>,  <41.396011, 36.109589, 21.920454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012486, 36.036465, 21.833509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185884, 0.174727, -0.966911,
		0.214747, -0.967496, -0.133549,
		-0.958817, -0.182816, -0.217364,
		40.724838, 35.981621, 21.768301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326920, 35.707619, 21.355160>,  <41.396011, 36.109589, 21.920454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326920, 35.707619, 21.355160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.950817, 35.842545, 21.336700>,  <40.725155, 35.923500, 21.325624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.950817, 35.842545, 21.336700>,  <41.326920, 35.707619, 21.355160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950817, 35.842545, 21.336700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087632, 0.108799, -0.990194,
		-0.328987, -0.935083, -0.131860,
		-0.940260, 0.337316, -0.046150,
		40.668739, 35.943741, 21.322855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067764, 35.488483, 20.791929>,  <41.326920, 35.707619, 21.355160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067764, 35.488483, 20.791929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.803886, 35.783646, 20.848911>,  <40.645561, 35.960743, 20.883101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.803886, 35.783646, 20.848911>,  <41.067764, 35.488483, 20.791929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803886, 35.783646, 20.848911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115973, 0.087327, -0.989406,
		-0.742531, -0.669228, 0.027968,
		-0.659696, 0.737908, 0.142455,
		40.605976, 36.005016, 20.891647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573788, 35.397614, 20.328070>,  <41.067764, 35.488483, 20.791929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573788, 35.397614, 20.328070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.514038, 35.773838, 20.450071>,  <40.478188, 35.999573, 20.523272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.514038, 35.773838, 20.450071>,  <40.573788, 35.397614, 20.328070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514038, 35.773838, 20.450071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041399, 0.302243, -0.952332,
		-0.987914, -0.154881, -0.006208,
		-0.149374, 0.940564, 0.305002,
		40.469227, 36.056007, 20.541573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090942, 35.662766, 19.920109>,  <40.573788, 35.397614, 20.328070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090942, 35.662766, 19.920109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.253971, 36.010628, 20.031528>,  <40.351788, 36.219345, 20.098381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.253971, 36.010628, 20.031528>,  <40.090942, 35.662766, 19.920109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253971, 36.010628, 20.031528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066338, 0.332426, -0.940793,
		-0.910761, 0.364960, 0.193178,
		0.407569, 0.869653, 0.278551,
		40.376244, 36.271523, 20.115093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743603, 36.129951, 19.543064>,  <40.090942, 35.662766, 19.920109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743603, 36.129951, 19.543064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.074947, 36.313381, 19.671770>,  <40.273754, 36.423439, 19.748993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.074947, 36.313381, 19.671770>,  <39.743603, 36.129951, 19.543064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074947, 36.313381, 19.671770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056163, 0.503500, -0.862168,
		-0.557374, 0.732256, 0.391324,
		0.828360, 0.458572, 0.321764,
		40.323456, 36.450954, 19.768299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660728, 36.946022, 19.511169>,  <39.743603, 36.129951, 19.543064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660728, 36.946022, 19.511169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.047131, 36.843540, 19.497307>,  <40.278973, 36.782051, 19.488989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.047131, 36.843540, 19.497307>,  <39.660728, 36.946022, 19.511169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047131, 36.843540, 19.497307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086633, 0.447080, -0.890289,
		0.243591, 0.857018, 0.454075,
		0.966001, -0.256204, -0.034658,
		40.336929, 36.766678, 19.486910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945072, 37.473259, 19.140213>,  <39.660728, 36.946022, 19.511169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945072, 37.473259, 19.140213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.256878, 37.222916, 19.129917>,  <40.443962, 37.072712, 19.123739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.256878, 37.222916, 19.129917>,  <39.945072, 37.473259, 19.140213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256878, 37.222916, 19.129917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313512, 0.425399, -0.848968,
		0.542281, 0.653713, 0.527817,
		0.779514, -0.625856, -0.025739,
		40.490730, 37.035160, 19.122196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479240, 37.924080, 18.979462>,  <39.945072, 37.473259, 19.140213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479240, 37.924080, 18.979462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.604053, 37.553249, 18.896347>,  <40.678940, 37.330753, 18.846478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.604053, 37.553249, 18.896347>,  <40.479240, 37.924080, 18.979462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604053, 37.553249, 18.896347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297548, 0.303061, -0.905329,
		0.902277, 0.220663, 0.370412,
		0.312030, -0.927072, -0.207787,
		40.697662, 37.275127, 18.834011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147316, 37.991833, 18.733498>,  <40.479240, 37.924080, 18.979462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147316, 37.991833, 18.733498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.997993, 37.649605, 18.590031>,  <40.908401, 37.444267, 18.503950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.997993, 37.649605, 18.590031>,  <41.147316, 37.991833, 18.733498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997993, 37.649605, 18.590031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277495, 0.265937, -0.923187,
		0.885236, -0.444155, 0.138142,
		-0.373301, -0.855572, -0.358668,
		40.886002, 37.392933, 18.482430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706367, 37.739418, 18.237886>,  <41.147316, 37.991833, 18.733498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706367, 37.739418, 18.237886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.351318, 37.573833, 18.157135>,  <41.138287, 37.474483, 18.108685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.351318, 37.573833, 18.157135>,  <41.706367, 37.739418, 18.237886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351318, 37.573833, 18.157135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120324, 0.214675, -0.969245,
		0.444568, -0.884619, -0.140742,
		-0.887627, -0.413961, -0.201878,
		41.085030, 37.449646, 18.096571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852119, 37.306137, 17.629835>,  <41.706367, 37.739418, 18.237886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852119, 37.306137, 17.629835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.456825, 37.366821, 17.637526>,  <41.219646, 37.403233, 17.642139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.456825, 37.366821, 17.637526>,  <41.852119, 37.306137, 17.629835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456825, 37.366821, 17.637526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039056, 0.371946, -0.927432,
		-0.147848, -0.915774, -0.373497,
		-0.988239, 0.151706, 0.019225,
		41.160355, 37.412334, 17.643293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566982, 36.972992, 17.099188>,  <41.852119, 37.306137, 17.629835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566982, 36.972992, 17.099188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.285599, 37.240494, 17.195444>,  <41.116768, 37.400997, 17.253199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.285599, 37.240494, 17.195444>,  <41.566982, 36.972992, 17.099188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285599, 37.240494, 17.195444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021498, 0.318405, -0.947711,
		-0.710410, -0.671850, -0.209608,
		-0.703460, 0.668757, 0.240641,
		41.074562, 37.441120, 17.267637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387131, 37.144051, 16.404980>,  <41.566982, 36.972992, 17.099188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387131, 37.144051, 16.404980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.176846, 37.402210, 16.626640>,  <41.050674, 37.557106, 16.759636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.176846, 37.402210, 16.626640>,  <41.387131, 37.144051, 16.404980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176846, 37.402210, 16.626640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258023, 0.499763, -0.826838,
		-0.810583, -0.577667, -0.096206,
		-0.525717, 0.645398, 0.554151,
		41.019131, 37.595829, 16.792885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695465, 37.153660, 16.142176>,  <41.387131, 37.144051, 16.404980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695465, 37.153660, 16.142176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.786377, 37.501316, 16.317877>,  <40.840923, 37.709908, 16.423298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.786377, 37.501316, 16.317877>,  <40.695465, 37.153660, 16.142176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786377, 37.501316, 16.317877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226134, 0.485834, -0.844292,
		-0.947210, 0.092562, 0.306962,
		0.227282, 0.869136, 0.439255,
		40.854561, 37.762058, 16.449654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229885, 37.535824, 15.910259>,  <40.695465, 37.153660, 16.142176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229885, 37.535824, 15.910259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.502510, 37.798843, 16.038692>,  <40.666084, 37.956657, 16.115753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.502510, 37.798843, 16.038692>,  <40.229885, 37.535824, 15.910259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502510, 37.798843, 16.038692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163768, 0.564722, -0.808869,
		-0.713197, 0.498713, 0.492581,
		0.681565, 0.657552, 0.321084,
		40.706978, 37.996109, 16.135017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030983, 38.232666, 16.086468>,  <40.229885, 37.535824, 15.910259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030983, 38.232666, 16.086468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.389214, 38.214130, 15.909472>,  <40.604153, 38.203007, 15.803273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.389214, 38.214130, 15.909472>,  <40.030983, 38.232666, 16.086468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389214, 38.214130, 15.909472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391551, 0.390176, -0.833337,
		0.211269, 0.919574, 0.331286,
		0.895574, -0.046343, -0.442492,
		40.657887, 38.200226, 15.776724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303547, 38.413380, 16.472918>,  <40.030983, 38.232666, 16.086468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303547, 38.413380, 16.472918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.956764, 38.463799, 16.280045>,  <38.748695, 38.494049, 16.164322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.956764, 38.463799, 16.280045>,  <39.303547, 38.413380, 16.472918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956764, 38.463799, 16.280045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493584, -0.083193, 0.865710,
		0.069003, 0.988530, 0.134338,
		-0.866957, 0.126044, -0.482182,
		38.696678, 38.501610, 16.135389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900887, 38.845917, 16.843426>,  <39.303547, 38.413380, 16.472918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900887, 38.845917, 16.843426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.628860, 38.644531, 16.630247>,  <38.465645, 38.523701, 16.502340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.628860, 38.644531, 16.630247>,  <38.900887, 38.845917, 16.843426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628860, 38.644531, 16.630247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542226, -0.143879, 0.827823,
		-0.493461, 0.851951, -0.175146,
		-0.680064, -0.503466, -0.532948,
		38.424843, 38.493492, 16.470362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311180, 39.028198, 17.199972>,  <38.900887, 38.845917, 16.843426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311180, 39.028198, 17.199972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230888, 38.705559, 16.977585>,  <38.182713, 38.511974, 16.844152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230888, 38.705559, 16.977585>,  <38.311180, 39.028198, 17.199972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230888, 38.705559, 16.977585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448663, -0.428810, 0.784107,
		-0.870866, 0.406839, -0.275815,
		-0.200733, -0.806600, -0.555970,
		38.170670, 38.463577, 16.810795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617664, 38.989277, 17.218815>,  <38.311180, 39.028198, 17.199972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617664, 38.989277, 17.218815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772221, 38.633072, 17.122744>,  <37.864952, 38.419350, 17.065102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772221, 38.633072, 17.122744>,  <37.617664, 38.989277, 17.218815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772221, 38.633072, 17.122744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507547, -0.422716, 0.750804,
		-0.770130, -0.168200, -0.615312,
		0.386387, -0.890517, -0.240177,
		37.888138, 38.365917, 17.050690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087139, 38.549202, 17.262512>,  <37.617664, 38.989277, 17.218815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087139, 38.549202, 17.262512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.391521, 38.290813, 17.286768>,  <37.574150, 38.135780, 17.301321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.391521, 38.290813, 17.286768>,  <37.087139, 38.549202, 17.262512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391521, 38.290813, 17.286768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381358, -0.369703, 0.847281,
		-0.524900, -0.667865, -0.527672,
		0.760951, -0.645969, 0.060638,
		37.619808, 38.097023, 17.304960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808613, 37.850315, 17.434292>,  <37.087139, 38.549202, 17.262512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808613, 37.850315, 17.434292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.199001, 37.832664, 17.519650>,  <37.433235, 37.822075, 17.570864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.199001, 37.832664, 17.519650>,  <36.808613, 37.850315, 17.434292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199001, 37.832664, 17.519650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213022, -0.399420, 0.891676,
		0.045887, -0.915706, -0.399222,
		0.975969, -0.044127, 0.213393,
		37.491791, 37.819427, 17.583668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893677, 37.198452, 17.611744>,  <36.808613, 37.850315, 17.434292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893677, 37.198452, 17.611744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202896, 37.376347, 17.792675>,  <37.388428, 37.483086, 17.901234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202896, 37.376347, 17.792675>,  <36.893677, 37.198452, 17.611744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202896, 37.376347, 17.792675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152448, -0.561914, 0.813027,
		0.615756, -0.697466, -0.366588,
		0.773049, 0.444740, 0.452329,
		37.434811, 37.509769, 17.928373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281506, 36.664753, 17.952864>,  <36.893677, 37.198452, 17.611744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281506, 36.664753, 17.952864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.392544, 36.999241, 18.142042>,  <37.459167, 37.199932, 18.255548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.392544, 36.999241, 18.142042>,  <37.281506, 36.664753, 17.952864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392544, 36.999241, 18.142042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130256, -0.454987, 0.880920,
		0.951827, -0.306143, -0.017380,
		0.277595, 0.836220, 0.472946,
		37.475822, 37.250107, 18.283926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840923, 36.544384, 18.455338>,  <37.281506, 36.664753, 17.952864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840923, 36.544384, 18.455338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.672550, 36.879772, 18.593782>,  <37.571526, 37.081005, 18.676849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.672550, 36.879772, 18.593782>,  <37.840923, 36.544384, 18.455338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672550, 36.879772, 18.593782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073115, -0.348957, 0.934282,
		0.904142, 0.418573, 0.085582,
		-0.420929, 0.838467, 0.346111,
		37.546272, 37.131313, 18.697617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281467, 36.801994, 18.922670>,  <37.840923, 36.544384, 18.455338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281467, 36.801994, 18.922670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.955948, 37.001682, 19.041674>,  <37.760635, 37.121494, 19.113075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.955948, 37.001682, 19.041674>,  <38.281467, 36.801994, 18.922670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955948, 37.001682, 19.041674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236030, -0.183886, 0.954188,
		0.531057, 0.846739, 0.031816,
		-0.813799, 0.499219, 0.297510,
		37.711807, 37.151447, 19.130926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492271, 37.032654, 19.629652>,  <38.281467, 36.801994, 18.922670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492271, 37.032654, 19.629652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093079, 37.052402, 19.613647>,  <37.853565, 37.064251, 19.604046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093079, 37.052402, 19.613647>,  <38.492271, 37.032654, 19.629652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093079, 37.052402, 19.613647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042541, -0.051342, 0.997775,
		0.047210, 0.997460, 0.053339,
		-0.997979, 0.049374, -0.040009,
		37.793686, 37.067215, 19.601645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219368, 37.632534, 20.068670>,  <38.492271, 37.032654, 19.629652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219368, 37.632534, 20.068670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.924358, 37.366428, 20.022230>,  <37.747353, 37.206764, 19.994366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.924358, 37.366428, 20.022230>,  <38.219368, 37.632534, 20.068670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924358, 37.366428, 20.022230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073535, -0.091786, 0.993060,
		-0.671302, 0.740946, 0.018775,
		-0.737527, -0.665263, -0.116102,
		37.703102, 37.166851, 19.987400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788445, 37.722118, 20.569427>,  <38.219368, 37.632534, 20.068670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788445, 37.722118, 20.569427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.705982, 37.341419, 20.478495>,  <37.656506, 37.112999, 20.423935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.705982, 37.341419, 20.478495>,  <37.788445, 37.722118, 20.569427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705982, 37.341419, 20.478495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218890, -0.271293, 0.937276,
		-0.953722, 0.143468, 0.264257,
		-0.206160, -0.951744, -0.227334,
		37.644135, 37.055897, 20.410294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522671, 37.419678, 21.257711>,  <37.788445, 37.722118, 20.569427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522671, 37.419678, 21.257711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.604626, 37.115631, 21.011057>,  <37.653801, 36.933201, 20.863064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.604626, 37.115631, 21.011057>,  <37.522671, 37.419678, 21.257711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604626, 37.115631, 21.011057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172863, -0.591996, 0.787185,
		-0.963399, -0.267881, 0.010101,
		0.204891, -0.760119, -0.616634,
		37.666092, 36.887596, 20.826067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087662, 36.867371, 21.461117>,  <37.522671, 37.419678, 21.257711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087662, 36.867371, 21.461117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.377975, 36.699474, 21.243103>,  <37.552162, 36.598736, 21.112295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.377975, 36.699474, 21.243103>,  <37.087662, 36.867371, 21.461117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377975, 36.699474, 21.243103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302145, -0.517281, 0.800705,
		-0.618021, -0.745817, -0.248612,
		0.725782, -0.419736, -0.545035,
		37.595711, 36.573555, 21.079592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973961, 36.114544, 21.535919>,  <37.087662, 36.867371, 21.461117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973961, 36.114544, 21.535919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.347466, 36.128498, 21.393444>,  <37.571568, 36.136871, 21.307959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.347466, 36.128498, 21.393444>,  <36.973961, 36.114544, 21.535919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347466, 36.128498, 21.393444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261725, -0.745371, 0.613125,
		-0.244106, -0.665737, -0.705128,
		0.933762, 0.034882, -0.356190,
		37.627594, 36.138962, 21.286587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254467, 35.399612, 21.228039>,  <36.973961, 36.114544, 21.535919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254467, 35.399612, 21.228039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.534515, 35.636452, 21.387663>,  <37.702545, 35.778557, 21.483438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.534515, 35.636452, 21.387663>,  <37.254467, 35.399612, 21.228039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534515, 35.636452, 21.387663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265727, -0.734807, 0.624057,
		0.662737, -0.330874, -0.671790,
		0.700120, 0.592098, 0.399062,
		37.744553, 35.814083, 21.507381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969845, 34.949760, 21.283739>,  <37.254467, 35.399612, 21.228039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969845, 34.949760, 21.283739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007004, 35.255100, 21.539448>,  <38.029301, 35.438305, 21.692873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007004, 35.255100, 21.539448>,  <37.969845, 34.949760, 21.283739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007004, 35.255100, 21.539448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113061, -0.645985, 0.754930,
		0.989235, 0.002142, -0.146318,
		0.092902, 0.763347, 0.639274,
		38.034874, 35.484104, 21.731230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556660, 34.736546, 21.722431>,  <37.969845, 34.949760, 21.283739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556660, 34.736546, 21.722431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.349770, 35.030312, 21.898212>,  <38.225636, 35.206570, 22.003681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.349770, 35.030312, 21.898212>,  <38.556660, 34.736546, 21.722431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349770, 35.030312, 21.898212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026761, -0.499340, 0.865993,
		0.855432, 0.459671, 0.238616,
		-0.517223, 0.734413, 0.439453,
		38.194603, 35.250637, 22.030048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890602, 34.655628, 22.334673>,  <38.556660, 34.736546, 21.722431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890602, 34.655628, 22.334673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.569885, 34.884098, 22.404964>,  <38.377453, 35.021179, 22.447140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.569885, 34.884098, 22.404964>,  <38.890602, 34.655628, 22.334673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569885, 34.884098, 22.404964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168172, -0.497832, 0.850812,
		0.573450, 0.652623, 0.495216,
		-0.801794, 0.571179, 0.175729,
		38.329346, 35.055450, 22.457684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.138031, 34.601204, 26.961796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.771114, 34.750881, 27.016291>,  <41.550964, 34.840687, 27.048988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.771114, 34.750881, 27.016291>,  <42.138031, 34.601204, 26.961796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771114, 34.750881, 27.016291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144002, -0.007277, 0.989551,
		0.371271, 0.927324, -0.047209,
		-0.917290, 0.374189, 0.136238,
		41.495926, 34.863136, 27.057161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261818, 34.914120, 27.557510>,  <42.138031, 34.601204, 26.961796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261818, 34.914120, 27.557510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.864662, 34.875324, 27.529877>,  <41.626369, 34.852047, 27.513296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.864662, 34.875324, 27.529877>,  <42.261818, 34.914120, 27.557510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864662, 34.875324, 27.529877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082846, 0.145895, 0.985825,
		-0.085531, 0.984535, -0.152892,
		-0.992885, -0.096985, -0.069086,
		41.566795, 34.846230, 27.509151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980370, 35.499859, 27.853037>,  <42.261818, 34.914120, 27.557510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980370, 35.499859, 27.853037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.696125, 35.218834, 27.868174>,  <41.525578, 35.050217, 27.877256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.696125, 35.218834, 27.868174>,  <41.980370, 35.499859, 27.853037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696125, 35.218834, 27.868174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308461, 0.359431, 0.880716,
		-0.632362, 0.614176, -0.472130,
		-0.710613, -0.702565, 0.037841,
		41.482941, 35.008064, 27.879526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436813, 35.825199, 28.065014>,  <41.980370, 35.499859, 27.853037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436813, 35.825199, 28.065014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.376141, 35.440018, 28.154202>,  <41.339737, 35.208908, 28.207714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.376141, 35.440018, 28.154202>,  <41.436813, 35.825199, 28.065014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376141, 35.440018, 28.154202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096262, 0.238897, 0.966262,
		-0.983731, 0.125101, -0.128932,
		-0.151682, -0.962953, 0.222967,
		41.330635, 35.151131, 28.221092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999939, 35.806908, 28.597322>,  <41.436813, 35.825199, 28.065014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999939, 35.806908, 28.597322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.183163, 35.451721, 28.613834>,  <41.293095, 35.238609, 28.623741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.183163, 35.451721, 28.613834>,  <40.999939, 35.806908, 28.597322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183163, 35.451721, 28.613834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076221, 0.007032, 0.997066,
		-0.885649, -0.459860, -0.064461,
		0.458057, -0.887964, 0.041279,
		41.320580, 35.185333, 28.626219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707619, 35.440651, 29.080221>,  <40.999939, 35.806908, 28.597322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707619, 35.440651, 29.080221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.022373, 35.196125, 29.046511>,  <41.211227, 35.049408, 29.026285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.022373, 35.196125, 29.046511>,  <40.707619, 35.440651, 29.080221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022373, 35.196125, 29.046511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179897, -0.357880, 0.916274,
		-0.590296, -0.705841, -0.391585,
		0.786885, -0.611318, -0.084277,
		41.258438, 35.012730, 29.021227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458069, 34.881802, 29.359478>,  <40.707619, 35.440651, 29.080221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458069, 34.881802, 29.359478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854031, 34.833595, 29.389336>,  <41.091606, 34.804672, 29.407251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854031, 34.833595, 29.389336>,  <40.458069, 34.881802, 29.359478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854031, 34.833595, 29.389336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106683, -0.286563, 0.952103,
		-0.093349, -0.950452, -0.296526,
		0.989901, -0.120512, 0.074647,
		41.151001, 34.797440, 29.411730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549404, 34.175774, 29.640444>,  <40.458069, 34.881802, 29.359478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549404, 34.175774, 29.640444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854668, 34.414124, 29.740465>,  <41.037827, 34.557133, 29.800478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854668, 34.414124, 29.740465>,  <40.549404, 34.175774, 29.640444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854668, 34.414124, 29.740465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046489, -0.335320, 0.940957,
		0.644542, -0.729720, -0.228199,
		0.763155, 0.595877, 0.250052,
		41.083614, 34.592888, 29.815481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974037, 33.687828, 30.024776>,  <40.549404, 34.175774, 29.640444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974037, 33.687828, 30.024776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.109661, 34.059490, 30.083717>,  <41.191036, 34.282486, 30.119081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.109661, 34.059490, 30.083717>,  <40.974037, 33.687828, 30.024776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109661, 34.059490, 30.083717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097838, -0.120957, 0.987824,
		0.935663, -0.349350, 0.049894,
		0.339061, 0.929152, 0.147354,
		41.211380, 34.338238, 30.127924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502747, 33.586018, 30.550673>,  <40.974037, 33.687828, 30.024776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502747, 33.586018, 30.550673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.412472, 33.975689, 30.548136>,  <41.358307, 34.209492, 30.546614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.412472, 33.975689, 30.548136>,  <41.502747, 33.586018, 30.550673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412472, 33.975689, 30.548136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340443, -0.072765, 0.937445,
		0.912779, 0.213726, 0.348075,
		-0.225684, 0.974180, -0.006343,
		41.344765, 34.267944, 30.546232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663647, 33.819035, 31.235081>,  <41.502747, 33.586018, 30.550673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663647, 33.819035, 31.235081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.406136, 34.093170, 31.098923>,  <41.251629, 34.257652, 31.017227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.406136, 34.093170, 31.098923>,  <41.663647, 33.819035, 31.235081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406136, 34.093170, 31.098923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424674, 0.050061, 0.903961,
		0.636557, 0.726505, 0.258816,
		-0.643775, 0.685336, -0.340394,
		41.213001, 34.298771, 30.996805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519161, 34.414059, 31.828766>,  <41.663647, 33.819035, 31.235081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519161, 34.414059, 31.828766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.202450, 34.369881, 31.588472>,  <41.012421, 34.343372, 31.444296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.202450, 34.369881, 31.588472>,  <41.519161, 34.414059, 31.828766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202450, 34.369881, 31.588472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608667, 0.060500, 0.791115,
		-0.051034, 0.992039, -0.115129,
		-0.791782, -0.110449, -0.600734,
		40.964916, 34.336746, 31.408253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083805, 34.886974, 32.008453>,  <41.519161, 34.414059, 31.828766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083805, 34.886974, 32.008453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.881618, 34.572693, 31.865807>,  <40.760307, 34.384125, 31.780218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.881618, 34.572693, 31.865807>,  <41.083805, 34.886974, 32.008453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881618, 34.572693, 31.865807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567723, -0.008393, 0.823177,
		-0.649764, 0.618549, -0.441818,
		-0.505467, -0.785702, -0.356617,
		40.729977, 34.336983, 31.758821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460396, 35.091309, 32.329834>,  <41.083805, 34.886974, 32.008453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460396, 35.091309, 32.329834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.467899, 34.713310, 32.199215>,  <40.472401, 34.486511, 32.120842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.467899, 34.713310, 32.199215>,  <40.460396, 35.091309, 32.329834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467899, 34.713310, 32.199215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728578, -0.236590, 0.642806,
		-0.684706, 0.225854, -0.692942,
		0.018763, -0.944995, -0.326547,
		40.473530, 34.429813, 32.101250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056347, 35.688843, 32.292931>,  <40.460396, 35.091309, 32.329834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056347, 35.688843, 32.292931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.157864, 36.067165, 32.373962>,  <40.218773, 36.294159, 32.422581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.157864, 36.067165, 32.373962>,  <40.056347, 35.688843, 32.292931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157864, 36.067165, 32.373962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091887, 0.232063, -0.968351,
		-0.962885, 0.227144, 0.145803,
		0.253790, 0.945808, 0.202578,
		40.234001, 36.350906, 32.434734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504318, 36.165077, 32.056431>,  <40.056347, 35.688843, 32.292931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504318, 36.165077, 32.056431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.843204, 36.377365, 32.065899>,  <40.046535, 36.504738, 32.071579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.843204, 36.377365, 32.065899>,  <39.504318, 36.165077, 32.056431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843204, 36.377365, 32.065899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210527, 0.376310, -0.902258,
		-0.487750, 0.759427, 0.430547,
		0.847218, 0.530718, 0.023665,
		40.097370, 36.536579, 32.072998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329437, 36.834084, 31.872259>,  <39.504318, 36.165077, 32.056431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329437, 36.834084, 31.872259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.718723, 36.869492, 31.787388>,  <39.952293, 36.890736, 31.736465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.718723, 36.869492, 31.787388>,  <39.329437, 36.834084, 31.872259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718723, 36.869492, 31.787388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227964, 0.251919, -0.940515,
		-0.029799, 0.963692, 0.265350,
		0.973214, 0.088516, -0.212180,
		40.010689, 36.896046, 31.723734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429401, 37.457806, 31.451048>,  <39.329437, 36.834084, 31.872259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429401, 37.457806, 31.451048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.766140, 37.250164, 31.391953>,  <39.968182, 37.125580, 31.356495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.766140, 37.250164, 31.391953>,  <39.429401, 37.457806, 31.451048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766140, 37.250164, 31.391953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005908, 0.264849, -0.964272,
		0.539684, 0.812642, 0.219895,
		0.841847, -0.519103, -0.147736,
		40.018696, 37.094433, 31.347631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883686, 37.902515, 31.115667>,  <39.429401, 37.457806, 31.451048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883686, 37.902515, 31.115667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.013504, 37.542755, 30.998539>,  <40.091396, 37.326897, 30.928261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.013504, 37.542755, 30.998539>,  <39.883686, 37.902515, 31.115667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013504, 37.542755, 30.998539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202457, 0.368460, -0.907330,
		0.923949, 0.235185, 0.301673,
		0.324545, -0.899403, -0.292823,
		40.110867, 37.272934, 30.910692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536793, 37.984623, 30.701975>,  <39.883686, 37.902515, 31.115667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536793, 37.984623, 30.701975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.414261, 37.612789, 30.619965>,  <40.340740, 37.389690, 30.570759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.414261, 37.612789, 30.619965>,  <40.536793, 37.984623, 30.701975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414261, 37.612789, 30.619965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304116, 0.108525, -0.946433,
		0.902038, -0.352277, 0.249456,
		-0.306334, -0.929582, -0.205027,
		40.322361, 37.333916, 30.558456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093056, 37.731697, 30.362696>,  <40.536793, 37.984623, 30.701975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093056, 37.731697, 30.362696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.765739, 37.525429, 30.261110>,  <40.569351, 37.401669, 30.200159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.765739, 37.525429, 30.261110>,  <41.093056, 37.731697, 30.362696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765739, 37.525429, 30.261110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240163, 0.094695, -0.966103,
		0.522236, -0.851540, 0.046356,
		-0.818286, -0.515666, -0.253961,
		40.520252, 37.370728, 30.184921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289181, 37.372639, 29.783285>,  <41.093056, 37.731697, 30.362696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289181, 37.372639, 29.783285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.892467, 37.326488, 29.761194>,  <40.654438, 37.298798, 29.747940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.892467, 37.326488, 29.761194>,  <41.289181, 37.372639, 29.783285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892467, 37.326488, 29.761194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051251, 0.037136, -0.997995,
		0.117196, -0.992627, -0.030918,
		-0.991785, -0.115376, -0.055225,
		40.594933, 37.291878, 29.744627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179085, 36.944122, 29.301512>,  <41.289181, 37.372639, 29.783285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179085, 36.944122, 29.301512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.803814, 37.082581, 29.302967>,  <40.578651, 37.165657, 29.303841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.803814, 37.082581, 29.302967>,  <41.179085, 36.944122, 29.301512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803814, 37.082581, 29.302967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064239, 0.184415, -0.980747,
		-0.340151, -0.919878, -0.195249,
		-0.938174, 0.346144, 0.003637,
		40.522362, 37.186424, 29.304058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883427, 36.715637, 28.745760>,  <41.179085, 36.944122, 29.301512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883427, 36.715637, 28.745760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.639133, 37.015232, 28.848537>,  <40.492558, 37.194988, 28.910204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.639133, 37.015232, 28.848537>,  <40.883427, 36.715637, 28.745760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639133, 37.015232, 28.848537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182644, 0.182494, -0.966094,
		-0.770481, -0.636959, 0.025342,
		-0.610737, 0.748986, 0.256945,
		40.455914, 37.239929, 28.925621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349659, 36.709461, 28.214968>,  <40.883427, 36.715637, 28.745760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349659, 36.709461, 28.214968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315910, 37.068264, 28.388527>,  <40.295662, 37.283546, 28.492662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315910, 37.068264, 28.388527>,  <40.349659, 36.709461, 28.214968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315910, 37.068264, 28.388527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187471, 0.413385, -0.891048,
		-0.978640, -0.156522, 0.133285,
		-0.084370, 0.897003, 0.433899,
		40.290600, 37.337364, 28.518696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754543, 37.008789, 27.908854>,  <40.349659, 36.709461, 28.214968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754543, 37.008789, 27.908854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.957958, 37.325848, 28.043377>,  <40.080006, 37.516083, 28.124090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.957958, 37.325848, 28.043377>,  <39.754543, 37.008789, 27.908854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957958, 37.325848, 28.043377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081484, 0.344528, -0.935233,
		-0.857177, 0.503003, 0.110616,
		0.508536, 0.792646, 0.336308,
		40.110519, 37.563641, 28.144270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412052, 37.465755, 27.599230>,  <39.754543, 37.008789, 27.908854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412052, 37.465755, 27.599230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.769299, 37.626194, 27.680681>,  <39.983646, 37.722458, 27.729551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.769299, 37.626194, 27.680681>,  <39.412052, 37.465755, 27.599230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769299, 37.626194, 27.680681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086242, 0.291599, -0.952645,
		-0.441483, 0.868383, 0.225840,
		0.893116, 0.401099, 0.203627,
		40.037231, 37.746525, 27.741770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366158, 38.085064, 27.314154>,  <39.412052, 37.465755, 27.599230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366158, 38.085064, 27.314154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.755154, 38.008297, 27.366970>,  <39.988552, 37.962238, 27.398659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.755154, 38.008297, 27.366970>,  <39.366158, 38.085064, 27.314154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755154, 38.008297, 27.366970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194783, 0.359023, -0.912777,
		0.127769, 0.913385, 0.386528,
		0.972489, -0.191913, 0.132039,
		40.046902, 37.950722, 27.406582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175064, 38.745155, 27.625305>,  <39.366158, 38.085064, 27.314154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175064, 38.745155, 27.625305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.855167, 38.985134, 27.616655>,  <38.663227, 39.129124, 27.611465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.855167, 38.985134, 27.616655>,  <39.175064, 38.745155, 27.625305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855167, 38.985134, 27.616655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312719, -0.385572, 0.868068,
		0.512460, 0.700994, 0.495975,
		-0.799744, 0.599951, -0.021624,
		38.615246, 39.165119, 27.610168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126984, 38.968525, 28.278385>,  <39.175064, 38.745155, 27.625305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126984, 38.968525, 28.278385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.762321, 39.037186, 28.129032>,  <38.543522, 39.078384, 28.039419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.762321, 39.037186, 28.129032>,  <39.126984, 38.968525, 28.278385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762321, 39.037186, 28.129032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410877, -0.363432, 0.836120,
		0.007825, 0.915670, 0.401855,
		-0.911657, 0.171655, -0.373384,
		38.488823, 39.088684, 28.017017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650928, 39.434265, 28.807489>,  <39.126984, 38.968525, 28.278385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650928, 39.434265, 28.807489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.423149, 39.212360, 28.564848>,  <38.286484, 39.079216, 28.419262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.423149, 39.212360, 28.564848>,  <38.650928, 39.434265, 28.807489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423149, 39.212360, 28.564848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400052, -0.457628, 0.794062,
		-0.718115, 0.694850, 0.038662,
		-0.569447, -0.554761, -0.606606,
		38.252316, 39.045933, 28.382866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971519, 39.441341, 29.231770>,  <38.650928, 39.434265, 28.807489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971519, 39.441341, 29.231770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.943504, 39.156818, 28.952019>,  <37.926693, 38.986103, 28.784168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.943504, 39.156818, 28.952019>,  <37.971519, 39.441341, 29.231770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943504, 39.156818, 28.952019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505503, -0.579106, 0.639612,
		-0.859977, 0.398336, -0.319009,
		-0.070041, -0.711312, -0.699378,
		37.922493, 38.943424, 28.742205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239594, 39.230358, 29.240175>,  <37.971519, 39.441341, 29.231770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239594, 39.230358, 29.240175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.417122, 38.920696, 29.059637>,  <37.523640, 38.734901, 28.951315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.417122, 38.920696, 29.059637>,  <37.239594, 39.230358, 29.240175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417122, 38.920696, 29.059637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613520, -0.629618, 0.476629,
		-0.653159, 0.065373, -0.754394,
		0.443821, -0.774150, -0.451348,
		37.550270, 38.688450, 28.924234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678383, 38.840179, 28.947725>,  <37.239594, 39.230358, 29.240175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678383, 38.840179, 28.947725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.008743, 38.624531, 29.013727>,  <37.206959, 38.495140, 29.053328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.008743, 38.624531, 29.013727>,  <36.678383, 38.840179, 28.947725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008743, 38.624531, 29.013727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551964, -0.713468, 0.431625,
		-0.114974, -0.447558, -0.886833,
		0.825904, -0.539125, 0.165006,
		37.256516, 38.462791, 29.063229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531929, 38.203888, 28.813629>,  <36.678383, 38.840179, 28.947725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531929, 38.203888, 28.813629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.860634, 38.146374, 29.034187>,  <37.057858, 38.111866, 29.166523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.860634, 38.146374, 29.034187>,  <36.531929, 38.203888, 28.813629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860634, 38.146374, 29.034187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411423, -0.819214, 0.399524,
		0.394264, -0.555169, -0.732355,
		0.821759, -0.143790, 0.551396,
		37.107162, 38.103237, 29.199606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624657, 37.548153, 28.673611>,  <36.531929, 38.203888, 28.813629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624657, 37.548153, 28.673611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.838600, 37.607277, 29.006376>,  <36.966965, 37.642754, 29.206036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.838600, 37.607277, 29.006376>,  <36.624657, 37.548153, 28.673611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838600, 37.607277, 29.006376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426942, -0.802362, 0.417055,
		0.729141, -0.578244, -0.366042,
		0.534858, 0.147813, 0.831912,
		36.999058, 37.651623, 29.255949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746258, 36.857090, 28.935202>,  <36.624657, 37.548153, 28.673611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746258, 36.857090, 28.935202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.812759, 37.036358, 29.286543>,  <36.852661, 37.143917, 29.497349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.812759, 37.036358, 29.286543>,  <36.746258, 36.857090, 28.935202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812759, 37.036358, 29.286543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429491, -0.768910, 0.473619,
		0.887635, -0.455987, 0.064648,
		0.166256, 0.448166, 0.878354,
		36.862637, 37.170807, 29.550049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060696, 36.338577, 29.418619>,  <36.746258, 36.857090, 28.935202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060696, 36.338577, 29.418619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.908760, 36.627155, 29.650217>,  <36.817600, 36.800304, 29.789175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.908760, 36.627155, 29.650217>,  <37.060696, 36.338577, 29.418619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908760, 36.627155, 29.650217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264522, -0.684478, 0.679351,
		0.886426, 0.104886, 0.450830,
		-0.379838, 0.721449, 0.578995,
		36.794807, 36.843590, 29.823915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407829, 36.174629, 30.015371>,  <37.060696, 36.338577, 29.418619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407829, 36.174629, 30.015371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.095360, 36.412296, 30.092037>,  <36.907879, 36.554897, 30.138037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.095360, 36.412296, 30.092037>,  <37.407829, 36.174629, 30.015371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095360, 36.412296, 30.092037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438829, -0.740940, 0.508367,
		0.444066, 0.313015, 0.839540,
		-0.781175, 0.594163, 0.191665,
		36.861008, 36.590546, 30.149536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219509, 36.323067, 30.728277>,  <37.407829, 36.174629, 30.015371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219509, 36.323067, 30.728277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.893375, 36.302094, 30.497633>,  <36.697697, 36.289509, 30.359247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.893375, 36.302094, 30.497633>,  <37.219509, 36.323067, 30.728277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893375, 36.302094, 30.497633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273300, -0.843109, 0.463114,
		-0.510426, 0.535181, 0.673087,
		-0.815336, -0.052431, -0.576610,
		36.648773, 36.286366, 30.324650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.428314, 41.407539, 25.017900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052834, 41.281620, 24.961704>,  <39.827545, 41.206066, 24.927986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052834, 41.281620, 24.961704>,  <40.428314, 41.407539, 25.017900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052834, 41.281620, 24.961704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142830, -0.015746, 0.989622,
		-0.313747, 0.949027, -0.030182,
		-0.938702, -0.314802, -0.140490,
		39.771221, 41.187180, 24.919558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820999, 41.848644, 25.427198>,  <40.428314, 41.407539, 25.017900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820999, 41.848644, 25.427198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685833, 41.481770, 25.342751>,  <39.604733, 41.261642, 25.292082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685833, 41.481770, 25.342751>,  <39.820999, 41.848644, 25.427198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685833, 41.481770, 25.342751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363812, -0.079587, 0.928066,
		-0.868016, 0.390419, -0.306791,
		-0.337918, -0.917191, -0.211122,
		39.584457, 41.206612, 25.279413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298393, 41.756519, 25.930525>,  <39.820999, 41.848644, 25.427198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298393, 41.756519, 25.930525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320118, 41.402073, 25.746418>,  <39.333153, 41.189404, 25.635954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320118, 41.402073, 25.746418>,  <39.298393, 41.756519, 25.930525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320118, 41.402073, 25.746418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360262, -0.447290, 0.818622,
		-0.931269, 0.121360, -0.343526,
		0.054308, -0.886117, -0.460269,
		39.336411, 41.136238, 25.608337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820042, 41.368084, 26.248251>,  <39.298393, 41.756519, 25.930525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820042, 41.368084, 26.248251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042107, 41.079815, 26.082157>,  <39.175346, 40.906853, 25.982500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042107, 41.079815, 26.082157>,  <38.820042, 41.368084, 26.248251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042107, 41.079815, 26.082157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216931, -0.607420, 0.764187,
		-0.802953, -0.334173, -0.493554,
		0.555165, -0.720673, -0.415237,
		39.208656, 40.863613, 25.957586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426994, 40.930603, 25.908312>,  <38.820042, 41.368084, 26.248251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426994, 40.930603, 25.908312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763927, 40.744953, 26.017902>,  <38.966087, 40.633564, 26.083656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763927, 40.744953, 26.017902>,  <38.426994, 40.930603, 25.908312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763927, 40.744953, 26.017902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517259, -0.553400, 0.652833,
		-0.151377, -0.691620, -0.706220,
		0.842335, -0.464122, 0.273975,
		39.016628, 40.605717, 26.100096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204720, 40.311989, 25.855324>,  <38.426994, 40.930603, 25.908312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204720, 40.311989, 25.855324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537403, 40.264576, 26.072290>,  <38.737011, 40.236130, 26.202471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537403, 40.264576, 26.072290>,  <38.204720, 40.311989, 25.855324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537403, 40.264576, 26.072290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510599, -0.547009, 0.663378,
		0.218076, -0.828692, -0.515473,
		0.831704, -0.118533, 0.542419,
		38.786915, 40.229015, 26.235016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446861, 39.515682, 25.843222>,  <38.204720, 40.311989, 25.855324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446861, 39.515682, 25.843222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598541, 39.693783, 26.167681>,  <38.689548, 39.800644, 26.362356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598541, 39.693783, 26.167681>,  <38.446861, 39.515682, 25.843222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598541, 39.693783, 26.167681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416192, -0.700868, 0.579282,
		0.826431, -0.557259, -0.080462,
		0.379204, 0.445249, 0.811146,
		38.712303, 39.827358, 26.411024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703579, 39.059589, 26.214075>,  <38.446861, 39.515682, 25.843222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703579, 39.059589, 26.214075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701412, 39.332291, 26.506699>,  <38.700111, 39.495911, 26.682272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701412, 39.332291, 26.506699>,  <38.703579, 39.059589, 26.214075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701412, 39.332291, 26.506699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474947, -0.645543, 0.598080,
		0.879998, -0.344211, 0.327296,
		-0.005417, 0.681757, 0.731559,
		38.699787, 39.536819, 26.726166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045185, 38.740913, 26.829853>,  <38.703579, 39.059589, 26.214075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045185, 38.740913, 26.829853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809868, 39.030319, 26.974314>,  <38.668678, 39.203964, 27.060989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809868, 39.030319, 26.974314>,  <39.045185, 38.740913, 26.829853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809868, 39.030319, 26.974314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472425, -0.669980, 0.572662,
		0.656296, 0.166277, 0.735953,
		-0.588294, 0.723519, 0.361152,
		38.633381, 39.247375, 27.082659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738071, 38.721386, 26.981138>,  <39.045185, 38.740913, 26.829853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738071, 38.721386, 26.981138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002438, 38.421215, 26.984070>,  <40.161057, 38.241112, 26.985828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002438, 38.421215, 26.984070>,  <39.738071, 38.721386, 26.981138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002438, 38.421215, 26.984070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151379, 0.123742, -0.980700,
		0.735038, 0.649266, 0.195381,
		0.660912, -0.750428, 0.007330,
		40.200710, 38.196087, 26.986269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319569, 39.030510, 26.643528>,  <39.738071, 38.721386, 26.981138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319569, 39.030510, 26.643528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367790, 38.633598, 26.631891>,  <40.396725, 38.395451, 26.624908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367790, 38.633598, 26.631891>,  <40.319569, 39.030510, 26.643528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367790, 38.633598, 26.631891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361839, 0.071213, -0.929517,
		0.924413, 0.101533, 0.367631,
		0.120557, -0.992280, -0.029092,
		40.403957, 38.335915, 26.623163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882004, 38.954597, 26.331646>,  <40.319569, 39.030510, 26.643528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882004, 38.954597, 26.331646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727562, 38.586815, 26.301924>,  <40.634895, 38.366146, 26.284090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727562, 38.586815, 26.301924>,  <40.882004, 38.954597, 26.331646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727562, 38.586815, 26.301924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355897, -0.074167, -0.931577,
		0.851034, -0.386134, 0.355868,
		-0.386107, -0.919456, -0.074305,
		40.611729, 38.310978, 26.279633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466270, 38.559921, 26.034252>,  <40.882004, 38.954597, 26.331646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466270, 38.559921, 26.034252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120918, 38.381607, 25.939716>,  <40.913708, 38.274620, 25.882994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120918, 38.381607, 25.939716>,  <41.466270, 38.559921, 26.034252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120918, 38.381607, 25.939716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235414, 0.058399, -0.970139,
		0.446273, -0.893234, 0.054523,
		-0.863378, -0.445782, -0.236342,
		40.861904, 38.247871, 25.868814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615826, 37.936821, 25.511431>,  <41.466270, 38.559921, 26.034252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615826, 37.936821, 25.511431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229679, 38.035065, 25.476234>,  <40.997990, 38.094009, 25.455116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229679, 38.035065, 25.476234>,  <41.615826, 37.936821, 25.511431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229679, 38.035065, 25.476234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087504, -0.012911, -0.996081,
		-0.245785, -0.969283, -0.009028,
		-0.965367, 0.245611, -0.087989,
		40.940067, 38.108749, 25.449839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366573, 37.653732, 24.858818>,  <41.615826, 37.936821, 25.511431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366573, 37.653732, 24.858818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078510, 37.921360, 24.932270>,  <40.905670, 38.081936, 24.976341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078510, 37.921360, 24.932270>,  <41.366573, 37.653732, 24.858818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078510, 37.921360, 24.932270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149378, 0.108940, -0.982761,
		-0.677537, -0.735175, 0.021490,
		-0.720160, 0.669067, 0.183630,
		40.862461, 38.122082, 24.987358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836983, 37.551437, 24.378063>,  <41.366573, 37.653732, 24.858818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836983, 37.551437, 24.378063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775471, 37.927967, 24.498241>,  <40.738564, 38.153885, 24.570349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775471, 37.927967, 24.498241>,  <40.836983, 37.551437, 24.378063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775471, 37.927967, 24.498241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200505, 0.268007, -0.942322,
		-0.967548, -0.205155, 0.147525,
		-0.153784, 0.941321, 0.300444,
		40.729336, 38.210361, 24.588375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182106, 37.793385, 24.035507>,  <40.836983, 37.551437, 24.378063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182106, 37.793385, 24.035507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379189, 38.121540, 24.151577>,  <40.497437, 38.318436, 24.221218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379189, 38.121540, 24.151577>,  <40.182106, 37.793385, 24.035507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379189, 38.121540, 24.151577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253000, 0.454102, -0.854273,
		-0.832605, 0.347492, 0.431298,
		0.492706, 0.820391, 0.290172,
		40.527000, 38.367657, 24.238628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751526, 38.398800, 23.937962>,  <40.182106, 37.793385, 24.035507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751526, 38.398800, 23.937962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121601, 38.544060, 23.982052>,  <40.343647, 38.631214, 24.008507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121601, 38.544060, 23.982052>,  <39.751526, 38.398800, 23.937962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121601, 38.544060, 23.982052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182366, 0.680128, -0.710049,
		-0.332823, 0.636827, 0.695472,
		0.925187, 0.363151, 0.110226,
		40.399158, 38.653004, 24.015120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727997, 39.127804, 23.846979>,  <39.751526, 38.398800, 23.937962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727997, 39.127804, 23.846979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108368, 39.019367, 23.787308>,  <40.336590, 38.954308, 23.751505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108368, 39.019367, 23.787308>,  <39.727997, 39.127804, 23.846979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108368, 39.019367, 23.787308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099948, 0.725375, -0.681059,
		0.292837, 0.632726, 0.716871,
		0.950924, -0.271090, -0.149177,
		40.393646, 38.938042, 23.742554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156425, 39.765362, 23.785246>,  <39.727997, 39.127804, 23.846979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156425, 39.765362, 23.785246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355251, 39.466816, 23.608217>,  <40.474545, 39.287689, 23.502001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355251, 39.466816, 23.608217>,  <40.156425, 39.765362, 23.785246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355251, 39.466816, 23.608217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199880, 0.594813, -0.778618,
		0.844380, 0.298560, 0.444842,
		0.497061, -0.746364, -0.442572,
		40.504372, 39.242908, 23.475445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696251, 40.133976, 23.476561>,  <40.156425, 39.765362, 23.785246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696251, 40.133976, 23.476561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728622, 39.768173, 23.318001>,  <40.748047, 39.548691, 23.222866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728622, 39.768173, 23.318001>,  <40.696251, 40.133976, 23.476561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728622, 39.768173, 23.318001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418157, 0.392162, -0.819362,
		0.904762, -0.099445, 0.414145,
		0.080930, -0.914505, -0.396397,
		40.752903, 39.493820, 23.199081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455139, 40.009857, 23.191961>,  <40.696251, 40.133976, 23.476561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455139, 40.009857, 23.191961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217731, 39.754223, 22.996288>,  <41.075287, 39.600842, 22.878885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217731, 39.754223, 22.996288>,  <41.455139, 40.009857, 23.191961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217731, 39.754223, 22.996288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332353, 0.358943, -0.872182,
		0.732988, -0.680241, -0.000638,
		-0.593523, -0.639087, -0.489181,
		41.039673, 39.562496, 22.849533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877151, 39.666588, 22.775639>,  <41.455139, 40.009857, 23.191961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877151, 39.666588, 22.775639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526791, 39.594604, 22.596571>,  <41.316574, 39.551414, 22.489130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526791, 39.594604, 22.596571>,  <41.877151, 39.666588, 22.775639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526791, 39.594604, 22.596571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437736, 0.093840, -0.894193,
		0.202925, -0.979188, -0.003422,
		-0.875904, -0.179956, -0.447669,
		41.264019, 39.540619, 22.462271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.921410, 35.760452, 20.964371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.051502, 36.071701, 21.179316>,  <35.129559, 36.258450, 21.308283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.051502, 36.071701, 21.179316>,  <34.921410, 35.760452, 20.964371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051502, 36.071701, 21.179316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050634, -0.581769, 0.811776,
		0.944277, -0.236808, -0.228610,
		0.325233, 0.778117, 0.537361,
		35.149071, 36.305138, 21.340525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344601, 35.406075, 21.417246>,  <34.921410, 35.760452, 20.964371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344601, 35.406075, 21.417246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.296089, 35.769989, 21.576035>,  <35.266983, 35.988338, 21.671309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.296089, 35.769989, 21.576035>,  <35.344601, 35.406075, 21.417246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296089, 35.769989, 21.576035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135048, -0.381083, 0.914624,
		0.983388, 0.164539, -0.076645,
		-0.121283, 0.909781, 0.396973,
		35.259705, 36.042923, 21.695127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985630, 35.457134, 21.728437>,  <35.344601, 35.406075, 21.417246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985630, 35.457134, 21.728437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.691936, 35.670567, 21.896339>,  <35.515720, 35.798626, 21.997080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.691936, 35.670567, 21.896339>,  <35.985630, 35.457134, 21.728437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691936, 35.670567, 21.896339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113600, -0.513010, 0.850833,
		0.669323, 0.672396, 0.316056,
		-0.734236, 0.533578, 0.419753,
		35.471664, 35.830639, 22.022264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142967, 35.432270, 22.379133>,  <35.985630, 35.457134, 21.728437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142967, 35.432270, 22.379133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.762875, 35.553474, 22.408081>,  <35.534817, 35.626198, 22.425449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.762875, 35.553474, 22.408081>,  <36.142967, 35.432270, 22.379133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762875, 35.553474, 22.408081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104083, -0.527747, 0.843000,
		0.293629, 0.793517, 0.533023,
		-0.950236, 0.303008, 0.072370,
		35.477802, 35.644379, 22.429792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041481, 35.693157, 23.098450>,  <36.142967, 35.432270, 22.379133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041481, 35.693157, 23.098450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.681580, 35.592079, 22.956131>,  <35.465641, 35.531433, 22.870739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.681580, 35.592079, 22.956131>,  <36.041481, 35.693157, 23.098450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681580, 35.592079, 22.956131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215920, -0.450733, 0.866151,
		-0.379245, 0.856144, 0.350985,
		-0.899751, -0.252699, -0.355797,
		35.411655, 35.516270, 22.849392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560760, 35.977360, 23.544067>,  <36.041481, 35.693157, 23.098450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560760, 35.977360, 23.544067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.365654, 35.681778, 23.358150>,  <35.248589, 35.504429, 23.246601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.365654, 35.681778, 23.358150>,  <35.560760, 35.977360, 23.544067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365654, 35.681778, 23.358150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303544, -0.355635, 0.883959,
		-0.818501, 0.572251, -0.050837,
		-0.487767, -0.738953, -0.464791,
		35.219322, 35.460091, 23.218714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931416, 35.914375, 23.832844>,  <35.560760, 35.977360, 23.544067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931416, 35.914375, 23.832844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.000160, 35.560863, 23.658762>,  <35.041409, 35.348759, 23.554314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.000160, 35.560863, 23.658762>,  <34.931416, 35.914375, 23.832844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000160, 35.560863, 23.658762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231482, -0.465637, 0.854165,
		-0.957538, -0.046057, -0.284603,
		0.171862, -0.883777, -0.435204,
		35.051720, 35.295731, 23.528200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487110, 35.474598, 24.078972>,  <34.931416, 35.914375, 23.832844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487110, 35.474598, 24.078972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.755608, 35.211235, 23.942780>,  <34.916706, 35.053215, 23.861063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.755608, 35.211235, 23.942780>,  <34.487110, 35.474598, 24.078972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755608, 35.211235, 23.942780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107895, -0.541239, 0.833918,
		-0.733343, -0.523024, -0.434342,
		0.671242, -0.658411, -0.340482,
		34.956982, 35.013710, 23.840635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323517, 34.832840, 24.350147>,  <34.487110, 35.474598, 24.078972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323517, 34.832840, 24.350147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.702244, 34.768265, 24.238808>,  <34.929478, 34.729519, 24.172005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.702244, 34.768265, 24.238808>,  <34.323517, 34.832840, 24.350147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702244, 34.768265, 24.238808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187640, -0.425729, 0.885181,
		-0.261404, -0.890333, -0.372794,
		0.946815, -0.161439, -0.278350,
		34.986290, 34.719833, 24.155302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470551, 34.097557, 24.449484>,  <34.323517, 34.832840, 24.350147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470551, 34.097557, 24.449484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.827339, 34.277061, 24.471424>,  <35.041412, 34.384762, 24.484589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.827339, 34.277061, 24.471424>,  <34.470551, 34.097557, 24.449484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827339, 34.277061, 24.471424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130405, -0.371553, 0.919208,
		0.432882, -0.812752, -0.389934,
		0.891969, 0.448758, 0.054852,
		35.094929, 34.411690, 24.487879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036427, 33.587303, 24.567650>,  <34.470551, 34.097557, 24.449484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036427, 33.587303, 24.567650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.206432, 33.936764, 24.662394>,  <35.308434, 34.146439, 24.719240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.206432, 33.936764, 24.662394>,  <35.036427, 33.587303, 24.567650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206432, 33.936764, 24.662394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233809, -0.358743, 0.903680,
		0.874470, -0.328695, -0.356737,
		0.425012, 0.873649, 0.236859,
		35.333935, 34.198860, 24.733452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707775, 33.367496, 24.946869>,  <35.036427, 33.587303, 24.567650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707775, 33.367496, 24.946869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.637730, 33.751732, 25.033220>,  <35.595703, 33.982273, 25.085032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.637730, 33.751732, 25.033220>,  <35.707775, 33.367496, 24.946869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637730, 33.751732, 25.033220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271423, -0.163668, 0.948442,
		0.946396, 0.224680, -0.232065,
		-0.175114, 0.960589, 0.215878,
		35.585194, 34.039909, 25.097984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218075, 33.526070, 25.339237>,  <35.707775, 33.367496, 24.946869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218075, 33.526070, 25.339237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.944530, 33.805859, 25.422253>,  <35.780403, 33.973732, 25.472063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.944530, 33.805859, 25.422253>,  <36.218075, 33.526070, 25.339237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944530, 33.805859, 25.422253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253181, -0.039278, 0.966621,
		0.684279, 0.713577, -0.150233,
		-0.683858, 0.699475, 0.207541,
		35.739372, 34.015701, 25.484514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381794, 33.691021, 26.015640>,  <36.218075, 33.526070, 25.339237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381794, 33.691021, 26.015640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.019978, 33.858109, 25.981430>,  <35.802887, 33.958363, 25.960903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.019978, 33.858109, 25.981430>,  <36.381794, 33.691021, 26.015640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019978, 33.858109, 25.981430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141523, -0.104915, 0.984360,
		0.402216, 0.902497, 0.154017,
		-0.904540, 0.417722, -0.085526,
		35.748615, 33.983425, 25.955772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055420, 34.166580, 26.224226>,  <36.381794, 33.691021, 26.015640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055420, 34.166580, 26.224226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.355961, 33.916489, 26.139795>,  <37.536285, 33.766434, 26.089136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.355961, 33.916489, 26.139795>,  <37.055420, 34.166580, 26.224226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355961, 33.916489, 26.139795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034005, 0.356124, -0.933820,
		0.659021, 0.694452, 0.288837,
		0.751355, -0.625229, -0.211078,
		37.581367, 33.728920, 26.076471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557358, 34.578941, 25.873520>,  <37.055420, 34.166580, 26.224226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557358, 34.578941, 25.873520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.648540, 34.204388, 25.766775>,  <37.703251, 33.979656, 25.702728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.648540, 34.204388, 25.766775>,  <37.557358, 34.578941, 25.873520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648540, 34.204388, 25.766775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019951, 0.278510, -0.960226,
		0.973467, 0.213566, 0.082170,
		0.227957, -0.936388, -0.266860,
		37.716927, 33.923470, 25.686718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020115, 34.675465, 25.351318>,  <37.557358, 34.578941, 25.873520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020115, 34.675465, 25.351318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.943340, 34.287262, 25.292978>,  <37.897274, 34.054340, 25.257975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.943340, 34.287262, 25.292978>,  <38.020115, 34.675465, 25.351318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943340, 34.287262, 25.292978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147884, 0.118317, -0.981902,
		0.970201, -0.210033, 0.120813,
		-0.191937, -0.970509, -0.145851,
		37.885757, 33.996109, 25.249224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543850, 34.366524, 24.966007>,  <38.020115, 34.675465, 25.351318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543850, 34.366524, 24.966007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.199314, 34.171642, 24.908415>,  <37.992592, 34.054714, 24.873859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.199314, 34.171642, 24.908415>,  <38.543850, 34.366524, 24.966007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199314, 34.171642, 24.908415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106287, 0.104320, -0.988848,
		0.496787, -0.867037, -0.038072,
		-0.861339, -0.487201, -0.143980,
		37.940914, 34.025482, 24.865221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695145, 33.858913, 24.549732>,  <38.543850, 34.366524, 24.966007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695145, 33.858913, 24.549732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.300053, 33.911163, 24.515509>,  <38.062996, 33.942513, 24.494974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.300053, 33.911163, 24.515509>,  <38.695145, 33.858913, 24.549732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300053, 33.911163, 24.515509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108622, 0.181129, -0.977442,
		-0.112181, -0.974746, -0.193096,
		-0.987733, 0.130625, -0.085560,
		38.003731, 33.950352, 24.489841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505150, 33.587902, 23.909863>,  <38.695145, 33.858913, 24.549732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505150, 33.587902, 23.909863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.190369, 33.821030, 23.990887>,  <38.001499, 33.960907, 24.039501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.190369, 33.821030, 23.990887>,  <38.505150, 33.587902, 23.909863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190369, 33.821030, 23.990887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029010, 0.292976, -0.955680,
		-0.616337, -0.757947, -0.213649,
		-0.786948, 0.582822, 0.202560,
		37.954285, 33.995876, 24.051655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130623, 33.467022, 23.357506>,  <38.505150, 33.587902, 23.909863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130623, 33.467022, 23.357506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.978928, 33.802586, 23.513664>,  <37.887913, 34.003925, 23.607359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.978928, 33.802586, 23.513664>,  <38.130623, 33.467022, 23.357506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978928, 33.802586, 23.513664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051766, 0.402019, -0.914167,
		-0.923851, -0.366894, -0.109032,
		-0.379235, 0.838910, 0.390398,
		37.865158, 34.054260, 23.630783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714367, 33.702244, 22.863071>,  <38.130623, 33.467022, 23.357506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714367, 33.702244, 22.863071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738380, 34.033688, 23.085712>,  <37.752789, 34.232555, 23.219297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738380, 34.033688, 23.085712>,  <37.714367, 33.702244, 22.863071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738380, 34.033688, 23.085712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003234, 0.557765, -0.829993,
		-0.998191, 0.048030, 0.036166,
		0.060036, 0.828608, 0.556600,
		37.756390, 34.282269, 23.252693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097271, 34.226433, 22.823334>,  <37.714367, 33.702244, 22.863071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097271, 34.226433, 22.823334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.411125, 34.430859, 22.963711>,  <37.599438, 34.553513, 23.047937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.411125, 34.430859, 22.963711>,  <37.097271, 34.226433, 22.823334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411125, 34.430859, 22.963711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092153, 0.655935, -0.749171,
		-0.613067, 0.555488, 0.561767,
		0.784638, 0.511061, 0.350943,
		37.646515, 34.584175, 23.068995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913406, 34.987774, 22.741941>,  <37.097271, 34.226433, 22.823334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913406, 34.987774, 22.741941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.311485, 34.971672, 22.777624>,  <37.550335, 34.962009, 22.799034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.311485, 34.971672, 22.777624>,  <36.913406, 34.987774, 22.741941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311485, 34.971672, 22.777624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092942, 0.674352, -0.732538,
		-0.030668, 0.737312, 0.674856,
		0.995199, -0.040257, 0.089208,
		37.610046, 34.959595, 22.804386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151424, 35.705719, 22.695395>,  <36.913406, 34.987774, 22.741941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151424, 35.705719, 22.695395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482151, 35.492130, 22.624685>,  <37.680588, 35.363979, 22.582260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482151, 35.492130, 22.624685>,  <37.151424, 35.705719, 22.695395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482151, 35.492130, 22.624685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265199, 0.647237, -0.714670,
		0.496026, 0.544022, 0.676756,
		0.826818, -0.533970, -0.176772,
		37.730198, 35.331940, 22.571653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525856, 36.221680, 22.557777>,  <37.151424, 35.705719, 22.695395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525856, 36.221680, 22.557777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.727577, 35.904350, 22.421354>,  <37.848610, 35.713955, 22.339500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.727577, 35.904350, 22.421354>,  <37.525856, 36.221680, 22.557777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727577, 35.904350, 22.421354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432381, 0.573863, -0.695505,
		0.747479, 0.203280, 0.632418,
		0.504304, -0.793321, -0.341056,
		37.878868, 35.666355, 22.319036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262794, 36.539291, 22.448107>,  <37.525856, 36.221680, 22.557777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262794, 36.539291, 22.448107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.184002, 36.219913, 22.220533>,  <38.136726, 36.028286, 22.083990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.184002, 36.219913, 22.220533>,  <38.262794, 36.539291, 22.448107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184002, 36.219913, 22.220533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333877, 0.490984, -0.804650,
		0.921806, -0.348452, 0.169870,
		-0.196978, -0.798446, -0.568932,
		38.124908, 35.980381, 22.049854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820976, 36.482857, 21.906548>,  <38.262794, 36.539291, 22.448107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820976, 36.482857, 21.906548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.492065, 36.288479, 21.788073>,  <38.294720, 36.171852, 21.716988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.492065, 36.288479, 21.788073>,  <38.820976, 36.482857, 21.906548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492065, 36.288479, 21.788073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137963, 0.334715, -0.932165,
		0.552116, -0.807358, -0.208185,
		-0.822274, -0.485941, -0.296187,
		38.245384, 36.142696, 21.699217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362068, 35.839874, 21.880564>,  <38.820976, 36.482857, 21.906548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362068, 35.839874, 21.880564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.750393, 35.914898, 21.820774>,  <39.983387, 35.959911, 21.784901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.750393, 35.914898, 21.820774>,  <39.362068, 35.839874, 21.880564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750393, 35.914898, 21.820774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228578, -0.534878, 0.813424,
		0.072617, -0.823849, -0.562139,
		0.970814, 0.187561, -0.149472,
		40.041637, 35.971165, 21.775932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715919, 35.147556, 21.914974>,  <39.362068, 35.839874, 21.880564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715919, 35.147556, 21.914974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.991184, 35.423820, 22.003895>,  <40.156342, 35.589581, 22.057247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.991184, 35.423820, 22.003895>,  <39.715919, 35.147556, 21.914974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991184, 35.423820, 22.003895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116434, -0.407541, 0.905734,
		0.716154, -0.597407, -0.360871,
		0.688162, 0.690663, 0.222304,
		40.197632, 35.631020, 22.070585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203892, 34.773464, 22.275530>,  <39.715919, 35.147556, 21.914974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203892, 34.773464, 22.275530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.316254, 35.147530, 22.361851>,  <40.383671, 35.371967, 22.413643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.316254, 35.147530, 22.361851>,  <40.203892, 34.773464, 22.275530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316254, 35.147530, 22.361851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224849, -0.282724, 0.932475,
		0.933026, -0.213412, -0.289687,
		0.280903, 0.935159, 0.215803,
		40.400524, 35.428078, 22.426592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666065, 34.723423, 22.777847>,  <40.203892, 34.773464, 22.275530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666065, 34.723423, 22.777847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.584667, 35.113350, 22.814320>,  <40.535828, 35.347305, 22.836203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.584667, 35.113350, 22.814320>,  <40.666065, 34.723423, 22.777847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584667, 35.113350, 22.814320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274183, -0.032666, 0.961123,
		0.939901, 0.220581, -0.260632,
		-0.203492, 0.974822, 0.091182,
		40.523621, 35.405796, 22.841675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294693, 35.106247, 23.153936>,  <40.666065, 34.723423, 22.777847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294693, 35.106247, 23.153936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.952400, 35.306297, 23.206985>,  <40.747025, 35.426327, 23.238815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.952400, 35.306297, 23.206985>,  <41.294693, 35.106247, 23.153936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952400, 35.306297, 23.206985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197219, 0.078305, 0.977227,
		0.478352, 0.862405, -0.165643,
		-0.855736, 0.500126, 0.132625,
		40.695679, 35.456337, 23.246773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499123, 35.582657, 23.627359>,  <41.294693, 35.106247, 23.153936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499123, 35.582657, 23.627359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.101326, 35.541340, 23.634378>,  <40.862648, 35.516548, 23.638590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.101326, 35.541340, 23.634378>,  <41.499123, 35.582657, 23.627359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101326, 35.541340, 23.634378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016391, 0.012026, 0.999793,
		-0.103485, 0.994578, -0.010267,
		-0.994496, -0.103295, 0.017547,
		40.802979, 35.510353, 23.639643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274696, 36.004086, 24.207289>,  <41.499123, 35.582657, 23.627359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274696, 36.004086, 24.207289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.995491, 35.726898, 24.135099>,  <40.827969, 35.560585, 24.091785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.995491, 35.726898, 24.135099>,  <41.274696, 36.004086, 24.207289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995491, 35.726898, 24.135099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071416, -0.183406, 0.980440,
		-0.712511, 0.697253, 0.078532,
		-0.698017, -0.692965, -0.180474,
		40.786087, 35.519009, 24.080957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803226, 36.039734, 24.754694>,  <41.274696, 36.004086, 24.207289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803226, 36.039734, 24.754694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.714497, 35.682884, 24.597261>,  <40.661259, 35.468773, 24.502802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.714497, 35.682884, 24.597261>,  <40.803226, 36.039734, 24.754694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714497, 35.682884, 24.597261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118467, -0.425305, 0.897263,
		-0.967863, 0.152408, 0.200030,
		-0.221824, -0.892125, -0.393581,
		40.647949, 35.415245, 24.479187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259712, 35.779789, 25.139885>,  <40.803226, 36.039734, 24.754694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259712, 35.779789, 25.139885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.434906, 35.466343, 24.963652>,  <40.540024, 35.278275, 24.857912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.434906, 35.466343, 24.963652>,  <40.259712, 35.779789, 25.139885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434906, 35.466343, 24.963652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094541, -0.447225, 0.889411,
		-0.893996, -0.431205, -0.121796,
		0.437988, -0.783615, -0.440584,
		40.566303, 35.231258, 24.831476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869415, 35.198627, 25.417521>,  <40.259712, 35.779789, 25.139885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869415, 35.198627, 25.417521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.223698, 35.081993, 25.273018>,  <40.436268, 35.012012, 25.186317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.223698, 35.081993, 25.273018>,  <39.869415, 35.198627, 25.417521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223698, 35.081993, 25.273018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215026, -0.431990, 0.875870,
		-0.411449, -0.853442, -0.319917,
		0.885705, -0.291585, -0.361254,
		40.489410, 34.994514, 25.164640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901791, 34.537987, 25.681532>,  <39.869415, 35.198627, 25.417521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901791, 34.537987, 25.681532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.274887, 34.666435, 25.615959>,  <40.498745, 34.743504, 25.576616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.274887, 34.666435, 25.615959>,  <39.901791, 34.537987, 25.681532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274887, 34.666435, 25.615959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262488, -0.293119, 0.919338,
		0.247169, -0.900534, -0.357695,
		0.932742, 0.321123, -0.163929,
		40.554710, 34.762772, 25.566780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407036, 34.067444, 25.914595>,  <39.901791, 34.537987, 25.681532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407036, 34.067444, 25.914595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.634731, 34.396183, 25.905422>,  <40.771351, 34.593426, 25.899918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.634731, 34.396183, 25.905422>,  <40.407036, 34.067444, 25.914595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634731, 34.396183, 25.905422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267414, -0.158699, 0.950423,
		0.777466, -0.547154, -0.310112,
		0.569242, 0.821850, -0.022933,
		40.805504, 34.642738, 25.898542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043617, 33.868057, 26.165022>,  <40.407036, 34.067444, 25.914595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043617, 33.868057, 26.165022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.025513, 34.265160, 26.209534>,  <41.014652, 34.503422, 26.236240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.025513, 34.265160, 26.209534>,  <41.043617, 33.868057, 26.165022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025513, 34.265160, 26.209534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429952, -0.081190, 0.899194,
		0.901716, 0.088542, -0.423164,
		-0.045260, 0.992758, 0.111279,
		41.011936, 34.562988, 26.242918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642380, 33.991165, 26.571104>,  <41.043617, 33.868057, 26.165022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642380, 33.991165, 26.571104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.434464, 34.328499, 26.625681>,  <41.309715, 34.530899, 26.658426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.434464, 34.328499, 26.625681>,  <41.642380, 33.991165, 26.571104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434464, 34.328499, 26.625681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250021, -0.002549, 0.968237,
		0.816891, 0.537391, -0.209525,
		-0.519788, 0.843330, 0.136441,
		41.278526, 34.581497, 26.666613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.026760, 39.111439, 22.191334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.675148, 39.277874, 22.098230>,  <41.464180, 39.377735, 22.042368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.675148, 39.277874, 22.098230>,  <42.026760, 39.111439, 22.191334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675148, 39.277874, 22.098230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266767, 0.024631, -0.963446,
		-0.395144, -0.908991, -0.132650,
		-0.879031, 0.416087, -0.232756,
		41.411438, 39.402699, 22.028404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779419, 38.789402, 21.562107>,  <42.026760, 39.111439, 22.191334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779419, 38.789402, 21.562107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.552067, 39.118477, 21.566765>,  <41.415657, 39.315922, 21.569559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.552067, 39.118477, 21.566765>,  <41.779419, 38.789402, 21.562107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552067, 39.118477, 21.566765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306533, 0.224871, -0.924917,
		-0.763531, -0.522136, -0.379992,
		-0.568382, 0.822683, 0.011644,
		41.381554, 39.365280, 21.570257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427094, 38.744831, 20.938599>,  <41.779419, 38.789402, 21.562107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427094, 38.744831, 20.938599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.428448, 39.129051, 21.049835>,  <41.429260, 39.359585, 21.116577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.428448, 39.129051, 21.049835>,  <41.427094, 38.744831, 20.938599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428448, 39.129051, 21.049835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212505, 0.271049, -0.938815,
		-0.977154, 0.062274, -0.203204,
		0.003385, 0.960549, 0.278090,
		41.429462, 39.417217, 21.133263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148827, 39.035103, 20.325768>,  <41.427094, 38.744831, 20.938599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148827, 39.035103, 20.325768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.285866, 39.355545, 20.522078>,  <41.368088, 39.547810, 20.639864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.285866, 39.355545, 20.522078>,  <41.148827, 39.035103, 20.325768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285866, 39.355545, 20.522078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077473, 0.496521, -0.864560,
		-0.936283, 0.334217, 0.108042,
		0.342596, 0.801103, 0.490777,
		41.388645, 39.595875, 20.669312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813110, 39.632275, 20.056751>,  <41.148827, 39.035103, 20.325768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813110, 39.632275, 20.056751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.170094, 39.725636, 20.211174>,  <41.384285, 39.781651, 20.303827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.170094, 39.725636, 20.211174>,  <40.813110, 39.632275, 20.056751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170094, 39.725636, 20.211174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272057, 0.404181, -0.873283,
		-0.359860, 0.884400, 0.297217,
		0.892460, 0.233400, 0.386056,
		41.437832, 39.795654, 20.326990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072914, 40.237820, 19.706820>,  <40.813110, 39.632275, 20.056751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072914, 40.237820, 19.706820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.414738, 40.094124, 19.856842>,  <41.619831, 40.007904, 19.946856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.414738, 40.094124, 19.856842>,  <41.072914, 40.237820, 19.706820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414738, 40.094124, 19.856842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424845, 0.068180, -0.902695,
		0.298715, 0.930750, 0.210886,
		0.854562, -0.359242, 0.375058,
		41.671104, 39.986351, 19.969360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548180, 40.673683, 19.436817>,  <41.072914, 40.237820, 19.706820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548180, 40.673683, 19.436817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.769798, 40.374432, 19.582872>,  <41.902771, 40.194881, 19.670506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.769798, 40.374432, 19.582872>,  <41.548180, 40.673683, 19.436817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769798, 40.374432, 19.582872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509598, -0.042038, -0.859385,
		0.658284, 0.662215, 0.357956,
		0.554050, -0.748133, 0.365136,
		41.936012, 40.149990, 19.692413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186817, 40.921555, 19.381449>,  <41.548180, 40.673683, 19.436817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186817, 40.921555, 19.381449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.186928, 40.521606, 19.374905>,  <42.186993, 40.281639, 19.370979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.186928, 40.521606, 19.374905>,  <42.186817, 40.921555, 19.381449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186928, 40.521606, 19.374905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454718, 0.014696, -0.890514,
		0.890635, -0.007191, 0.454661,
		0.000278, -0.999866, -0.016359,
		42.187012, 40.221645, 19.369997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803440, 40.765987, 18.875095>,  <42.186817, 40.921555, 19.381449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803440, 40.765987, 18.875095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.623833, 40.411930, 18.923929>,  <42.516068, 40.199497, 18.953230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.623833, 40.411930, 18.923929>,  <42.803440, 40.765987, 18.875095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623833, 40.411930, 18.923929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260029, -0.260163, -0.929892,
		0.854850, -0.385793, 0.346980,
		-0.449018, -0.885143, 0.122083,
		42.489128, 40.146385, 18.960554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271133, 40.309307, 18.523863>,  <42.803440, 40.765987, 18.875095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271133, 40.309307, 18.523863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.914757, 40.130760, 18.557278>,  <42.700932, 40.023632, 18.577326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.914757, 40.130760, 18.557278>,  <43.271133, 40.309307, 18.523863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914757, 40.130760, 18.557278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049716, -0.278721, -0.959084,
		0.451389, -0.850334, 0.270516,
		-0.890941, -0.446369, 0.083537,
		42.647476, 39.996849, 18.582338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290878, 39.582703, 18.194916>,  <43.271133, 40.309307, 18.523863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290878, 39.582703, 18.194916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.906807, 39.692047, 18.218014>,  <42.676365, 39.757652, 18.231873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.906807, 39.692047, 18.218014>,  <43.290878, 39.582703, 18.194916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906807, 39.692047, 18.218014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112801, -0.190212, -0.975241,
		-0.255606, -0.942918, 0.213472,
		-0.960178, 0.273357, 0.057743,
		42.618755, 39.774055, 18.235336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878765, 39.077488, 17.715536>,  <43.290878, 39.582703, 18.194916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878765, 39.077488, 17.715536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.682442, 39.423836, 17.754282>,  <42.564648, 39.631645, 17.777529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.682442, 39.423836, 17.754282>,  <42.878765, 39.077488, 17.715536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682442, 39.423836, 17.754282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179852, 0.008093, -0.983660,
		-0.852503, -0.500208, 0.151756,
		-0.490807, 0.865867, 0.096863,
		42.535198, 39.683598, 17.783340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117817, 38.888805, 17.520378>,  <42.878765, 39.077488, 17.715536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117817, 38.888805, 17.520378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.305676, 39.238674, 17.472393>,  <42.418388, 39.448593, 17.443602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.305676, 39.238674, 17.472393>,  <42.117817, 38.888805, 17.520378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305676, 39.238674, 17.472393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102128, -0.081147, -0.991456,
		-0.876930, 0.477881, 0.051218,
		0.469642, 0.874668, -0.119965,
		42.446568, 39.501076, 17.436403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745041, 39.352962, 17.202990>,  <42.117817, 38.888805, 17.520378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745041, 39.352962, 17.202990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.131664, 39.415840, 17.121944>,  <42.363640, 39.453568, 17.073318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.131664, 39.415840, 17.121944>,  <41.745041, 39.352962, 17.202990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131664, 39.415840, 17.121944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156450, -0.264548, -0.951598,
		-0.203190, 0.951474, -0.231108,
		0.966560, 0.157198, -0.202611,
		42.421631, 39.463001, 17.061161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213146, 38.811710, 17.126896>,  <41.745041, 39.352962, 17.202990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213146, 38.811710, 17.126896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.062660, 38.507183, 16.915668>,  <40.972370, 38.324467, 16.788931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.062660, 38.507183, 16.915668>,  <41.213146, 38.811710, 17.126896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062660, 38.507183, 16.915668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178454, -0.499731, 0.847598,
		-0.909186, 0.413112, 0.052143,
		-0.376211, -0.761320, -0.528070,
		40.949799, 38.278786, 16.757248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706776, 38.610050, 17.543163>,  <41.213146, 38.811710, 17.126896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706776, 38.610050, 17.543163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.753902, 38.304527, 17.289324>,  <40.782177, 38.121212, 17.137020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.753902, 38.304527, 17.289324>,  <40.706776, 38.610050, 17.543163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753902, 38.304527, 17.289324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108884, -0.645131, 0.756274,
		-0.987049, -0.020001, -0.159171,
		0.117812, -0.763810, -0.634598,
		40.789246, 38.075386, 17.098944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102364, 38.234322, 17.605194>,  <40.706776, 38.610050, 17.543163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102364, 38.234322, 17.605194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.389427, 37.975548, 17.502083>,  <40.561665, 37.820286, 17.440216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.389427, 37.975548, 17.502083>,  <40.102364, 38.234322, 17.605194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389427, 37.975548, 17.502083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098937, -0.461119, 0.881805,
		-0.689335, -0.607328, -0.394930,
		0.717655, -0.646932, -0.257778,
		40.604725, 37.781467, 17.424749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832573, 37.580837, 17.774900>,  <40.102364, 38.234322, 17.605194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832573, 37.580837, 17.774900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.227890, 37.529980, 17.741148>,  <40.465080, 37.499466, 17.720896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.227890, 37.529980, 17.741148>,  <39.832573, 37.580837, 17.774900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227890, 37.529980, 17.741148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028556, -0.697292, 0.716218,
		-0.149902, -0.705421, -0.692756,
		0.988288, -0.127146, -0.084381,
		40.524376, 37.491837, 17.715834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014576, 36.800240, 17.768730>,  <39.832573, 37.580837, 17.774900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014576, 36.800240, 17.768730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.333447, 37.015026, 17.879129>,  <40.524769, 37.143898, 17.945370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.333447, 37.015026, 17.879129>,  <40.014576, 36.800240, 17.768730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333447, 37.015026, 17.879129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017080, -0.477016, 0.878729,
		0.603506, -0.695787, -0.389437,
		0.797175, 0.536970, 0.275998,
		40.572598, 37.176117, 17.961929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460407, 36.243443, 18.053402>,  <40.014576, 36.800240, 17.768730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460407, 36.243443, 18.053402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.584419, 36.599731, 18.186369>,  <40.658825, 36.813503, 18.266150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.584419, 36.599731, 18.186369>,  <40.460407, 36.243443, 18.053402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584419, 36.599731, 18.186369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030126, -0.358672, 0.932977,
		0.950250, -0.279234, -0.138033,
		0.310028, 0.890720, 0.332416,
		40.677429, 36.866947, 18.286095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070393, 36.083309, 18.458073>,  <40.460407, 36.243443, 18.053402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070393, 36.083309, 18.458073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.949757, 36.443588, 18.583155>,  <40.877373, 36.659756, 18.658203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.949757, 36.443588, 18.583155>,  <41.070393, 36.083309, 18.458073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949757, 36.443588, 18.583155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038856, -0.316091, 0.947933,
		0.952645, 0.298039, 0.060333,
		-0.301592, 0.900699, 0.312703,
		40.859280, 36.713799, 18.676966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531815, 36.285263, 18.985090>,  <41.070393, 36.083309, 18.458073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531815, 36.285263, 18.985090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.202187, 36.506172, 19.035540>,  <41.004410, 36.638718, 19.065809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.202187, 36.506172, 19.035540>,  <41.531815, 36.285263, 18.985090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202187, 36.506172, 19.035540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032666, -0.268593, 0.962700,
		0.565548, 0.789211, 0.239379,
		-0.824068, 0.552272, 0.126122,
		40.954967, 36.671852, 19.073376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608284, 36.554691, 19.588427>,  <41.531815, 36.285263, 18.985090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608284, 36.554691, 19.588427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.216362, 36.630608, 19.563244>,  <40.981209, 36.676159, 19.548134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.216362, 36.630608, 19.563244>,  <41.608284, 36.554691, 19.588427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216362, 36.630608, 19.563244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082790, -0.098454, 0.991692,
		0.182015, 0.976876, 0.112179,
		-0.979804, 0.189790, -0.062955,
		40.922421, 36.687546, 19.544357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457973, 36.954353, 20.173199>,  <41.608284, 36.554691, 19.588427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457973, 36.954353, 20.173199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.105560, 36.799046, 20.065107>,  <40.894112, 36.705860, 20.000254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.105560, 36.799046, 20.065107>,  <41.457973, 36.954353, 20.173199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105560, 36.799046, 20.065107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283113, -0.024859, 0.958764,
		-0.378973, 0.921212, -0.088022,
		-0.881037, -0.388266, -0.270228,
		40.841248, 36.682568, 19.984039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935795, 37.314621, 20.572838>,  <41.457973, 36.954353, 20.173199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935795, 37.314621, 20.572838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.779434, 36.971085, 20.440420>,  <40.685619, 36.764961, 20.360970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.779434, 36.971085, 20.440420>,  <40.935795, 37.314621, 20.572838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779434, 36.971085, 20.440420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318810, -0.211063, 0.924020,
		-0.863457, 0.466739, -0.191303,
		-0.390899, -0.858840, -0.331045,
		40.662163, 36.713432, 20.341106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377514, 37.316563, 20.914196>,  <40.935795, 37.314621, 20.572838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377514, 37.316563, 20.914196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.398773, 36.937386, 20.788605>,  <40.411530, 36.709881, 20.713251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.398773, 36.937386, 20.788605>,  <40.377514, 37.316563, 20.914196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398773, 36.937386, 20.788605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128461, -0.318298, 0.939246,
		-0.990289, -0.009586, -0.138691,
		0.053149, -0.947942, -0.313976,
		40.414719, 36.653004, 20.694412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723579, 36.950886, 20.995340>,  <40.377514, 37.316563, 20.914196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723579, 36.950886, 20.995340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.996098, 36.658081, 20.995554>,  <40.159607, 36.482399, 20.995682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.996098, 36.658081, 20.995554>,  <39.723579, 36.950886, 20.995340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996098, 36.658081, 20.995554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296429, -0.275227, 0.914538,
		-0.669302, -0.623229, -0.404499,
		0.681296, -0.732007, 0.000533,
		40.200485, 36.438480, 20.995714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444901, 36.493546, 21.463417>,  <39.723579, 36.950886, 20.995340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444901, 36.493546, 21.463417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.808704, 36.333675, 21.417713>,  <40.026985, 36.237755, 21.390291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.808704, 36.333675, 21.417713>,  <39.444901, 36.493546, 21.463417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808704, 36.333675, 21.417713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030766, -0.338839, 0.940341,
		-0.414544, -0.851734, -0.320473,
		0.909509, -0.399672, -0.114259,
		40.081558, 36.213776, 21.383436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893764, 36.410557, 20.955845>,  <39.444901, 36.493546, 21.463417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893764, 36.410557, 20.955845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.524113, 36.314404, 21.074644>,  <38.302322, 36.256714, 21.145924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.524113, 36.314404, 21.074644>,  <38.893764, 36.410557, 20.955845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524113, 36.314404, 21.074644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357944, 0.272721, -0.893028,
		0.133666, -0.931580, -0.338071,
		-0.924127, -0.240378, 0.297000,
		38.246876, 36.242290, 21.163744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557362, 35.988544, 20.425739>,  <38.893764, 36.410557, 20.955845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557362, 35.988544, 20.425739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.257370, 36.148983, 20.636129>,  <38.077374, 36.245247, 20.762363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.257370, 36.148983, 20.636129>,  <38.557362, 35.988544, 20.425739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257370, 36.148983, 20.636129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482934, 0.211340, -0.849771,
		-0.451998, -0.891324, 0.035201,
		-0.749982, 0.401094, 0.525976,
		38.032375, 36.269310, 20.793922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008450, 35.864941, 20.015388>,  <38.557362, 35.988544, 20.425739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008450, 35.864941, 20.015388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.884396, 36.156109, 20.259993>,  <37.809963, 36.330811, 20.406755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.884396, 36.156109, 20.259993>,  <38.008450, 35.864941, 20.015388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884396, 36.156109, 20.259993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541590, 0.393365, -0.742929,
		-0.781341, -0.561598, 0.272238,
		-0.310139, 0.727923, 0.611509,
		37.791355, 36.374485, 20.443445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340786, 35.885002, 19.913519>,  <38.008450, 35.864941, 20.015388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340786, 35.885002, 19.913519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.441784, 36.239162, 20.069626>,  <37.502384, 36.451660, 20.163290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.441784, 36.239162, 20.069626>,  <37.340786, 35.885002, 19.913519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441784, 36.239162, 20.069626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515803, 0.464418, -0.719905,
		-0.818653, -0.019528, 0.573957,
		0.252497, 0.885401, 0.390270,
		37.517532, 36.504784, 20.186707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703308, 36.360893, 19.929504>,  <37.340786, 35.885002, 19.913519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703308, 36.360893, 19.929504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.028236, 36.594177, 19.929657>,  <37.223194, 36.734150, 19.929749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.028236, 36.594177, 19.929657>,  <36.703308, 36.360893, 19.929504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028236, 36.594177, 19.929657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341869, 0.476698, -0.809867,
		-0.472509, 0.657739, 0.586614,
		0.812318, 0.583214, 0.000383,
		37.271931, 36.769142, 19.929771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514217, 37.004971, 19.628008>,  <36.703308, 36.360893, 19.929504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514217, 37.004971, 19.628008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.912556, 37.018513, 19.594181>,  <37.151558, 37.026638, 19.573885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.912556, 37.018513, 19.594181>,  <36.514217, 37.004971, 19.628008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912556, 37.018513, 19.594181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089126, 0.554011, -0.827725,
		0.018828, 0.831821, 0.554725,
		0.995843, 0.033856, -0.084568,
		37.211308, 37.028671, 19.568811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581512, 37.723846, 19.477762>,  <36.514217, 37.004971, 19.628008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581512, 37.723846, 19.477762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.921253, 37.541634, 19.371105>,  <37.125095, 37.432308, 19.307110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.921253, 37.541634, 19.371105>,  <36.581512, 37.723846, 19.477762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921253, 37.541634, 19.371105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013002, 0.523071, -0.852190,
		0.527671, 0.720340, 0.450193,
		0.849349, -0.455529, -0.266644,
		37.176060, 37.404976, 19.291113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443077, 38.368366, 19.769848>,  <36.581512, 37.723846, 19.477762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443077, 38.368366, 19.769848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.051651, 38.442547, 19.734026>,  <35.816795, 38.487057, 19.712532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.051651, 38.442547, 19.734026>,  <36.443077, 38.368366, 19.769848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051651, 38.442547, 19.734026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194919, -0.693665, 0.693423,
		0.066473, 0.696015, 0.714943,
		-0.978564, 0.185450, -0.089557,
		35.758083, 38.498180, 19.707159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219006, 38.531494, 20.433250>,  <36.443077, 38.368366, 19.769848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219006, 38.531494, 20.433250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.883682, 38.430695, 20.239866>,  <35.682487, 38.370213, 20.123837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.883682, 38.430695, 20.239866>,  <36.219006, 38.531494, 20.433250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883682, 38.430695, 20.239866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229884, -0.640694, 0.732574,
		-0.494359, 0.725263, 0.479168,
		-0.838309, -0.252002, -0.483460,
		35.632191, 38.355095, 20.094828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729904, 38.513271, 20.918297>,  <36.219006, 38.531494, 20.433250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729904, 38.513271, 20.918297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.551769, 38.306110, 20.626144>,  <35.444889, 38.181816, 20.450853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.551769, 38.306110, 20.626144>,  <35.729904, 38.513271, 20.918297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551769, 38.306110, 20.626144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165542, -0.754048, 0.635616,
		-0.879928, 0.403970, 0.250069,
		-0.445334, -0.517899, -0.730382,
		35.418171, 38.150742, 20.407030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118389, 38.420296, 21.187471>,  <35.729904, 38.513271, 20.918297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118389, 38.420296, 21.187471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.162514, 38.141991, 20.903570>,  <35.188988, 37.975010, 20.733229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.162514, 38.141991, 20.903570>,  <35.118389, 38.420296, 21.187471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162514, 38.141991, 20.903570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263672, -0.709011, 0.654049,
		-0.958284, 0.114994, -0.261663,
		0.110310, -0.695758, -0.709755,
		35.195606, 37.933262, 20.690643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514229, 38.011406, 21.133570>,  <35.118389, 38.420296, 21.187471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514229, 38.011406, 21.133570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793003, 37.784355, 20.958263>,  <34.960270, 37.648125, 20.853079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.793003, 37.784355, 20.958263>,  <34.514229, 38.011406, 21.133570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793003, 37.784355, 20.958263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280322, -0.778149, 0.562054,
		-0.660072, -0.268861, -0.701440,
		0.696939, -0.567625, -0.438267,
		35.002083, 37.614067, 20.826784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278908, 37.420486, 21.095222>,  <34.514229, 38.011406, 21.133570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278908, 37.420486, 21.095222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.660877, 37.311703, 21.047636>,  <34.890060, 37.246433, 21.019085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.660877, 37.311703, 21.047636>,  <34.278908, 37.420486, 21.095222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660877, 37.311703, 21.047636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126245, -0.734809, 0.666421,
		-0.268654, -0.621366, -0.736023,
		0.954928, -0.271956, -0.118965,
		34.947357, 37.230118, 21.011946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240089, 36.697136, 20.912323>,  <34.278908, 37.420486, 21.095222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240089, 36.697136, 20.912323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.601082, 36.789295, 21.057898>,  <34.817677, 36.844589, 21.145243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.601082, 36.789295, 21.057898>,  <34.240089, 36.697136, 20.912323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601082, 36.789295, 21.057898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078802, -0.742350, 0.665362,
		0.423466, -0.629154, -0.651799,
		0.902478, 0.230395, 0.363938,
		34.871826, 36.858414, 21.167078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.626419, 42.231293, 17.857187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.844063, 41.901020, 17.916782>,  <39.974651, 41.702858, 17.952539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.844063, 41.901020, 17.916782>,  <39.626419, 42.231293, 17.857187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844063, 41.901020, 17.916782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256333, 0.005493, 0.966573,
		-0.798897, -0.564114, -0.208659,
		0.544111, -0.825678, 0.148990,
		40.007298, 41.653316, 17.961479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184513, 41.811707, 18.231894>,  <39.626419, 42.231293, 17.857187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184513, 41.811707, 18.231894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.555706, 41.679173, 18.300100>,  <39.778419, 41.599651, 18.341024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.555706, 41.679173, 18.300100>,  <39.184513, 41.811707, 18.231894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555706, 41.679173, 18.300100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181173, -0.001289, 0.983451,
		-0.325628, -0.943514, -0.061224,
		0.927978, -0.331331, 0.170519,
		39.834099, 41.579773, 18.351255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127956, 41.236168, 18.731871>,  <39.184513, 41.811707, 18.231894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127956, 41.236168, 18.731871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.491974, 41.399483, 18.760519>,  <39.710384, 41.497471, 18.777708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.491974, 41.399483, 18.760519>,  <39.127956, 41.236168, 18.731871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491974, 41.399483, 18.760519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048079, -0.067654, 0.996550,
		0.411722, -0.910344, -0.041938,
		0.910040, 0.408286, 0.071623,
		39.764984, 41.521969, 18.782005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390114, 40.880611, 19.307238>,  <39.127956, 41.236168, 18.731871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390114, 40.880611, 19.307238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.654171, 41.177902, 19.263733>,  <39.812603, 41.356277, 19.237631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.654171, 41.177902, 19.263733>,  <39.390114, 40.880611, 19.307238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654171, 41.177902, 19.263733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214222, -0.047503, 0.975629,
		0.719949, -0.667349, -0.190574,
		0.660138, 0.743228, -0.108761,
		39.852211, 41.400871, 19.231104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907585, 40.702980, 19.670233>,  <39.390114, 40.880611, 19.307238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907585, 40.702980, 19.670233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.954285, 41.100044, 19.657646>,  <39.982304, 41.338284, 19.650093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.954285, 41.100044, 19.657646>,  <39.907585, 40.702980, 19.670233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954285, 41.100044, 19.657646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239856, 0.002565, 0.970805,
		0.963763, -0.120888, -0.237796,
		0.116749, 0.992663, -0.031468,
		39.989311, 41.397842, 19.648207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382008, 40.832314, 20.165461>,  <39.907585, 40.702980, 19.670233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382008, 40.832314, 20.165461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.219936, 41.196011, 20.127293>,  <40.122696, 41.414230, 20.104391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.219936, 41.196011, 20.127293>,  <40.382008, 40.832314, 20.165461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219936, 41.196011, 20.127293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133819, 0.162231, 0.977637,
		0.904393, 0.383344, -0.187406,
		-0.405174, 0.909246, -0.095422,
		40.098385, 41.468784, 20.098665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861744, 41.420563, 20.595848>,  <40.382008, 40.832314, 20.165461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861744, 41.420563, 20.595848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.481815, 41.532257, 20.539482>,  <40.253857, 41.599274, 20.505663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.481815, 41.532257, 20.539482>,  <40.861744, 41.420563, 20.595848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481815, 41.532257, 20.539482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057356, 0.287386, 0.956096,
		0.307478, 0.916206, -0.256950,
		-0.949825, 0.279241, -0.140915,
		40.196869, 41.616028, 20.497208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895996, 42.019653, 20.901114>,  <40.861744, 41.420563, 20.595848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895996, 42.019653, 20.901114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.500919, 41.957085, 20.900288>,  <40.263874, 41.919544, 20.899792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.500919, 41.957085, 20.900288>,  <40.895996, 42.019653, 20.901114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500919, 41.957085, 20.900288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007788, 0.035977, 0.999322,
		-0.156241, 0.987035, -0.036752,
		-0.987688, -0.156422, -0.002066,
		40.204613, 41.910156, 20.899668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566792, 42.584908, 21.272078>,  <40.895996, 42.019653, 20.901114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566792, 42.584908, 21.272078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.306858, 42.280880, 21.271500>,  <40.150898, 42.098461, 21.271152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.306858, 42.280880, 21.271500>,  <40.566792, 42.584908, 21.272078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306858, 42.280880, 21.271500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194859, 0.164757, 0.966894,
		-0.734671, 0.628606, -0.255172,
		-0.649837, -0.760072, -0.001447,
		40.111908, 42.052856, 21.271065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996307, 42.796528, 21.745201>,  <40.566792, 42.584908, 21.272078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996307, 42.796528, 21.745201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.980240, 42.397251, 21.727322>,  <39.970600, 42.157684, 21.716595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.980240, 42.397251, 21.727322>,  <39.996307, 42.796528, 21.745201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980240, 42.397251, 21.727322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016180, -0.044079, 0.998897,
		-0.999062, 0.040843, -0.014381,
		-0.040164, -0.998193, -0.044699,
		39.968189, 42.097794, 21.713911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396751, 42.558022, 22.156713>,  <39.996307, 42.796528, 21.745201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396751, 42.558022, 22.156713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.593773, 42.210075, 22.145990>,  <39.711987, 42.001308, 22.139557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.593773, 42.210075, 22.145990>,  <39.396751, 42.558022, 22.156713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593773, 42.210075, 22.145990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063937, -0.066888, 0.995710,
		-0.867929, -0.488728, -0.088563,
		0.492555, -0.869868, -0.026807,
		39.741539, 41.949116, 22.137949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948021, 41.951859, 22.525766>,  <39.396751, 42.558022, 22.156713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948021, 41.951859, 22.525766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.324612, 41.817291, 22.534206>,  <39.550568, 41.736553, 22.539270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.324612, 41.817291, 22.534206>,  <38.948021, 41.951859, 22.525766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324612, 41.817291, 22.534206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100327, -0.219916, 0.970346,
		-0.321802, -0.915674, -0.240798,
		0.941476, -0.336418, 0.021098,
		39.607056, 41.716366, 22.540535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286812, 41.599751, 22.564678>,  <38.948021, 41.951859, 22.525766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286812, 41.599751, 22.564678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.940125, 41.791599, 22.619459>,  <37.732113, 41.906708, 22.652328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.940125, 41.791599, 22.619459>,  <38.286812, 41.599751, 22.564678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940125, 41.791599, 22.619459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199769, 0.585366, -0.785773,
		-0.457044, -0.653686, -0.603163,
		-0.866719, 0.479627, 0.136952,
		37.680107, 41.935486, 22.660545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744717, 41.376171, 22.051981>,  <38.286812, 41.599751, 22.564678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744717, 41.376171, 22.051981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.634270, 41.739056, 22.178926>,  <37.568001, 41.956787, 22.255095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.634270, 41.739056, 22.178926>,  <37.744717, 41.376171, 22.051981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634270, 41.739056, 22.178926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071066, 0.310026, -0.948068,
		-0.958493, -0.284332, -0.021131,
		-0.276117, 0.907215, 0.317364,
		37.551434, 42.011219, 22.274136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147064, 41.562172, 21.689711>,  <37.744717, 41.376171, 22.051981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147064, 41.562172, 21.689711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.250984, 41.925690, 21.820301>,  <37.313335, 42.143803, 21.898655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.250984, 41.925690, 21.820301>,  <37.147064, 41.562172, 21.689711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250984, 41.925690, 21.820301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053318, 0.351072, -0.934829,
		-0.964188, 0.225465, 0.139665,
		0.259804, 0.908798, 0.326478,
		37.328926, 42.198330, 21.918245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719154, 42.036392, 21.431627>,  <37.147064, 41.562172, 21.689711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719154, 42.036392, 21.431627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.061665, 42.234318, 21.490900>,  <37.267170, 42.353073, 21.526464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.061665, 42.234318, 21.490900>,  <36.719154, 42.036392, 21.431627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061665, 42.234318, 21.490900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054828, 0.198190, -0.978629,
		-0.513605, 0.846098, 0.142575,
		0.856273, 0.494811, 0.148182,
		37.318546, 42.382763, 21.535355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626732, 42.716011, 21.053446>,  <36.719154, 42.036392, 21.431627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626732, 42.716011, 21.053446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.017914, 42.704845, 21.136229>,  <37.252621, 42.698147, 21.185898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.017914, 42.704845, 21.136229>,  <36.626732, 42.716011, 21.053446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017914, 42.704845, 21.136229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196121, 0.463223, -0.864269,
		-0.071744, 0.885802, 0.458484,
		0.977952, -0.027912, 0.206958,
		37.311298, 42.696472, 21.198317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844608, 43.492729, 20.835629>,  <36.626732, 42.716011, 21.053446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844608, 43.492729, 20.835629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.131824, 43.215069, 20.815327>,  <37.304153, 43.048473, 20.803144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.131824, 43.215069, 20.815327>,  <36.844608, 43.492729, 20.835629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131824, 43.215069, 20.815327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185803, 0.261455, -0.947163,
		0.670744, 0.670670, 0.316710,
		0.718039, -0.694150, -0.050756,
		37.347237, 43.006824, 20.800100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374184, 43.870197, 20.458076>,  <36.844608, 43.492729, 20.835629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374184, 43.870197, 20.458076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.425728, 43.475094, 20.422899>,  <37.456654, 43.238033, 20.401793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.425728, 43.475094, 20.422899>,  <37.374184, 43.870197, 20.458076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425728, 43.475094, 20.422899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255836, 0.118796, -0.959394,
		0.958093, 0.101128, 0.268011,
		0.128861, -0.987755, -0.087945,
		37.464386, 43.178768, 20.396515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842552, 43.776085, 19.810921>,  <37.374184, 43.870197, 20.458076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842552, 43.776085, 19.810921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.712814, 43.401104, 19.861494>,  <37.634972, 43.176117, 19.891838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.712814, 43.401104, 19.861494>,  <37.842552, 43.776085, 19.810921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712814, 43.401104, 19.861494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192079, -0.196144, -0.961578,
		0.926234, -0.287593, 0.243682,
		-0.324340, -0.937453, 0.126434,
		37.615513, 43.119869, 19.899424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274979, 43.350342, 19.359610>,  <37.842552, 43.776085, 19.810921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274979, 43.350342, 19.359610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.942356, 43.140060, 19.431326>,  <37.742783, 43.013889, 19.474356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.942356, 43.140060, 19.431326>,  <38.274979, 43.350342, 19.359610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942356, 43.140060, 19.431326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060594, -0.235006, -0.970103,
		0.552126, -0.817559, 0.163566,
		-0.831556, -0.525708, 0.179292,
		37.692890, 42.982349, 19.485113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379963, 42.728817, 19.040737>,  <38.274979, 43.350342, 19.359610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379963, 42.728817, 19.040737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.985920, 42.776295, 19.090500>,  <37.749493, 42.804783, 19.120358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.985920, 42.776295, 19.090500>,  <38.379963, 42.728817, 19.040737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985920, 42.776295, 19.090500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165204, -0.452796, -0.876175,
		-0.047666, -0.883678, 0.465661,
		-0.985107, 0.118693, 0.124405,
		37.690388, 42.811901, 19.127821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196369, 42.075233, 18.985687>,  <38.379963, 42.728817, 19.040737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196369, 42.075233, 18.985687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.853897, 42.271667, 18.921436>,  <37.648415, 42.389526, 18.882887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.853897, 42.271667, 18.921436>,  <38.196369, 42.075233, 18.985687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853897, 42.271667, 18.921436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189274, -0.587366, -0.786878,
		-0.480765, -0.643305, 0.595838,
		-0.856178, 0.491080, -0.160624,
		37.597046, 42.418991, 18.873249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694229, 41.605461, 18.975901>,  <38.196369, 42.075233, 18.985687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694229, 41.605461, 18.975901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.533260, 41.924320, 18.795851>,  <37.436680, 42.115635, 18.687820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.533260, 41.924320, 18.795851>,  <37.694229, 41.605461, 18.975901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533260, 41.924320, 18.795851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526240, -0.603774, -0.598773,
		-0.749084, -0.004087, 0.662463,
		-0.402425, 0.797145, -0.450127,
		37.412533, 42.163464, 18.660812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098801, 41.412796, 18.741087>,  <37.694229, 41.605461, 18.975901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098801, 41.412796, 18.741087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.174809, 41.729553, 18.508949>,  <37.220413, 41.919609, 18.369667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.174809, 41.729553, 18.508949>,  <37.098801, 41.412796, 18.741087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174809, 41.729553, 18.508949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491024, -0.435220, -0.754638,
		-0.850170, 0.428358, 0.306138,
		0.190018, 0.791892, -0.580345,
		37.231815, 41.967121, 18.334846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487831, 41.546036, 19.130320>,  <37.098801, 41.412796, 18.741087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487831, 41.546036, 19.130320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.329498, 41.422894, 18.784246>,  <36.234501, 41.349007, 18.576603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.329498, 41.422894, 18.784246>,  <36.487831, 41.546036, 19.130320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329498, 41.422894, 18.784246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404884, -0.787115, 0.465317,
		-0.824251, 0.534485, 0.186915,
		-0.395829, -0.307859, -0.865184,
		36.210751, 41.330536, 18.524691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753990, 41.312469, 19.153589>,  <36.487831, 41.546036, 19.130320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753990, 41.312469, 19.153589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.905899, 41.110725, 18.843391>,  <35.997044, 40.989677, 18.657272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.905899, 41.110725, 18.843391>,  <35.753990, 41.312469, 19.153589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905899, 41.110725, 18.843391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384448, -0.848529, 0.363590,
		-0.841405, 0.160048, -0.516162,
		0.379786, -0.504364, -0.775486,
		36.019833, 40.959415, 18.610743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287930, 40.848984, 18.976692>,  <35.753990, 41.312469, 19.153589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287930, 40.848984, 18.976692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.590569, 40.695938, 18.764589>,  <35.772152, 40.604111, 18.637327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.590569, 40.695938, 18.764589>,  <35.287930, 40.848984, 18.976692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590569, 40.695938, 18.764589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283629, -0.922704, 0.261098,
		-0.589169, -0.047150, -0.806633,
		0.756594, -0.382616, -0.530256,
		35.817547, 40.581154, 18.605513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961166, 40.337990, 18.518862>,  <35.287930, 40.848984, 18.976692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961166, 40.337990, 18.518862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.351391, 40.257858, 18.554976>,  <35.585526, 40.209782, 18.576643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.351391, 40.257858, 18.554976>,  <34.961166, 40.337990, 18.518862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351391, 40.257858, 18.554976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215728, -0.951277, 0.220303,
		0.041752, -0.234396, -0.971244,
		0.975561, -0.200327, 0.090284,
		35.644058, 40.197762, 18.582060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047859, 39.783329, 18.096283>,  <34.961166, 40.337990, 18.518862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047859, 39.783329, 18.096283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.361835, 39.779106, 18.344078>,  <35.550220, 39.776573, 18.492754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.361835, 39.779106, 18.344078>,  <35.047859, 39.783329, 18.096283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361835, 39.779106, 18.344078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191409, -0.955076, 0.226256,
		0.589269, -0.296172, -0.751694,
		0.784936, -0.010555, 0.619487,
		35.597317, 39.775940, 18.529924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472298, 39.136887, 18.039577>,  <35.047859, 39.783329, 18.096283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472298, 39.136887, 18.039577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.534405, 39.294216, 18.402056>,  <35.571671, 39.388615, 18.619543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.534405, 39.294216, 18.402056>,  <35.472298, 39.136887, 18.039577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534405, 39.294216, 18.402056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081711, -0.909062, 0.408571,
		0.984487, -0.137484, -0.109010,
		0.155269, 0.393326, 0.906193,
		35.580986, 39.412212, 18.673914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932388, 38.639221, 18.460503>,  <35.472298, 39.136887, 18.039577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932388, 38.639221, 18.460503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.820160, 38.873798, 18.764441>,  <35.752823, 39.014545, 18.946804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.820160, 38.873798, 18.764441>,  <35.932388, 38.639221, 18.460503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820160, 38.873798, 18.764441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195783, -0.809966, 0.552832,
		0.939655, 0.006342, 0.342065,
		-0.280568, 0.586442, 0.759847,
		35.735989, 39.049732, 18.992395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320461, 38.417824, 19.013914>,  <35.932388, 38.639221, 18.460503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320461, 38.417824, 19.013914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.986870, 38.594986, 19.145554>,  <35.786713, 38.701283, 19.224537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.986870, 38.594986, 19.145554>,  <36.320461, 38.417824, 19.013914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986870, 38.594986, 19.145554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190975, -0.791247, 0.580911,
		0.517688, 0.421620, 0.744470,
		-0.833983, 0.442906, 0.329100,
		35.736675, 38.727859, 19.244284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114609, 38.279366, 19.101784>,  <36.320461, 38.417824, 19.013914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114609, 38.279366, 19.101784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.244511, 37.917957, 18.989941>,  <37.322453, 37.701111, 18.922834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.244511, 37.917957, 18.989941>,  <37.114609, 38.279366, 19.101784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244511, 37.917957, 18.989941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324290, 0.384086, -0.864473,
		0.888464, 0.190070, 0.417738,
		0.324758, -0.903522, -0.279609,
		37.341938, 37.646900, 18.906057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725273, 38.341911, 18.894592>,  <37.114609, 38.279366, 19.101784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725273, 38.341911, 18.894592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.629143, 38.009762, 18.693504>,  <37.571465, 37.810471, 18.572851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.629143, 38.009762, 18.693504>,  <37.725273, 38.341911, 18.894592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629143, 38.009762, 18.693504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359887, 0.404767, -0.840621,
		0.901513, -0.382943, 0.201566,
		-0.240323, -0.830372, -0.502719,
		37.557045, 37.760651, 18.542688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389767, 38.133854, 18.570875>,  <37.725273, 38.341911, 18.894592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389767, 38.133854, 18.570875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.101402, 37.945499, 18.367485>,  <37.928383, 37.832485, 18.245451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.101402, 37.945499, 18.367485>,  <38.389767, 38.133854, 18.570875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101402, 37.945499, 18.367485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424530, 0.279865, -0.861075,
		0.547775, -0.836624, -0.001852,
		-0.720914, -0.470889, -0.508474,
		37.885128, 37.804234, 18.214943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710167, 37.745079, 17.982443>,  <38.389767, 38.133854, 18.570875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710167, 37.745079, 17.982443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.329979, 37.734928, 17.858528>,  <38.101868, 37.728836, 17.784180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.329979, 37.734928, 17.858528>,  <38.710167, 37.745079, 17.982443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329979, 37.734928, 17.858528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310592, -0.039124, -0.949738,
		0.011987, -0.998912, 0.045070,
		-0.950468, -0.025383, -0.309785,
		38.044838, 37.727314, 17.765593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701237, 37.397533, 17.396732>,  <38.710167, 37.745079, 17.982443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701237, 37.397533, 17.396732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.364986, 37.611122, 17.360472>,  <38.163235, 37.739277, 17.338717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.364986, 37.611122, 17.360472>,  <38.701237, 37.397533, 17.396732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364986, 37.611122, 17.360472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255877, 0.244026, -0.935403,
		-0.477360, -0.809520, -0.341767,
		-0.840627, 0.533974, -0.090649,
		38.112797, 37.771313, 17.333277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296665, 37.177605, 16.791384>,  <38.701237, 37.397533, 17.396732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296665, 37.177605, 16.791384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.180840, 37.551441, 16.874027>,  <38.111343, 37.775745, 16.923613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.180840, 37.551441, 16.874027>,  <38.296665, 37.177605, 16.791384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180840, 37.551441, 16.874027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279254, 0.288953, -0.915709,
		-0.915517, -0.207458, -0.344659,
		-0.289562, 0.934595, 0.206607,
		38.093971, 37.831821, 16.936010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885059, 37.345272, 16.179701>,  <38.296665, 37.177605, 16.791384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885059, 37.345272, 16.179701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.994659, 37.680309, 16.368748>,  <38.060421, 37.881332, 16.482176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.994659, 37.680309, 16.368748>,  <37.885059, 37.345272, 16.179701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994659, 37.680309, 16.368748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140089, 0.451421, -0.881246,
		-0.951471, 0.307671, 0.006353,
		0.274002, 0.837590, 0.472616,
		38.076859, 37.931587, 16.510532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412239, 37.853992, 16.019768>,  <37.885059, 37.345272, 16.179701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412239, 37.853992, 16.019768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.763771, 38.019089, 16.115522>,  <37.974689, 38.118145, 16.172976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.763771, 38.019089, 16.115522>,  <37.412239, 37.853992, 16.019768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763771, 38.019089, 16.115522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019133, 0.531798, -0.846655,
		-0.476752, 0.739485, 0.475257,
		0.878830, 0.412737, 0.239387,
		38.027420, 38.142910, 16.187338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542530, 38.391804, 15.494589>,  <37.412239, 37.853992, 16.019768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542530, 38.391804, 15.494589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.895599, 38.427330, 15.679197>,  <38.107441, 38.448647, 15.789963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.895599, 38.427330, 15.679197>,  <37.542530, 38.391804, 15.494589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895599, 38.427330, 15.679197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283306, 0.682972, -0.673266,
		-0.375005, 0.725024, 0.577677,
		0.882671, 0.088818, 0.461522,
		38.160400, 38.453976, 15.817654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.433292, 32.609077, 30.576761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.747471, 32.850777, 30.523169>,  <38.935978, 32.995796, 30.491013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.747471, 32.850777, 30.523169>,  <38.433292, 32.609077, 30.576761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747471, 32.850777, 30.523169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348242, 0.252502, -0.902757,
		-0.511661, 0.755727, 0.408753,
		0.785449, 0.604251, -0.133981,
		38.983105, 33.032051, 30.482975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172173, 33.209347, 30.325289>,  <38.433292, 32.609077, 30.576761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172173, 33.209347, 30.325289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.558128, 33.226204, 30.221584>,  <38.789700, 33.236320, 30.159361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.558128, 33.226204, 30.221584>,  <38.172173, 33.209347, 30.325289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558128, 33.226204, 30.221584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250247, 0.447393, -0.858612,
		0.079805, 0.893344, 0.442231,
		0.964887, 0.042145, -0.259261,
		38.847595, 33.238846, 30.143806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291927, 33.917782, 30.074017>,  <38.172173, 33.209347, 30.325289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291927, 33.917782, 30.074017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.590694, 33.694756, 29.929110>,  <38.769955, 33.560940, 29.842165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.590694, 33.694756, 29.929110>,  <38.291927, 33.917782, 30.074017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590694, 33.694756, 29.929110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175824, 0.359820, -0.916306,
		0.641248, 0.748101, 0.170723,
		0.746918, -0.557562, -0.362268,
		38.814770, 33.527489, 29.820429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580406, 34.331223, 29.469809>,  <38.291927, 33.917782, 30.074017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580406, 34.331223, 29.469809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.721420, 33.960278, 29.419655>,  <38.806026, 33.737709, 29.389563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.721420, 33.960278, 29.419655>,  <38.580406, 34.331223, 29.469809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721420, 33.960278, 29.419655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226203, 0.045568, -0.973014,
		0.908050, 0.371380, -0.193708,
		0.352530, -0.927362, -0.125385,
		38.827179, 33.682068, 29.382040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996578, 34.251659, 28.793554>,  <38.580406, 34.331223, 29.469809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996578, 34.251659, 28.793554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.891846, 33.877098, 28.887009>,  <38.829006, 33.652359, 28.943081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.891846, 33.877098, 28.887009>,  <38.996578, 34.251659, 28.793554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891846, 33.877098, 28.887009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231431, -0.174098, -0.957146,
		0.936954, -0.304685, -0.171129,
		-0.261834, -0.936406, 0.233635,
		38.813293, 33.596176, 28.957100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349113, 33.718605, 28.357559>,  <38.996578, 34.251659, 28.793554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349113, 33.718605, 28.357559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.005890, 33.563049, 28.491720>,  <38.799957, 33.469715, 28.572218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.005890, 33.563049, 28.491720>,  <39.349113, 33.718605, 28.357559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005890, 33.563049, 28.491720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293887, -0.163748, -0.941710,
		0.421147, -0.906613, 0.026214,
		-0.858059, -0.388894, 0.335404,
		38.748470, 33.446381, 28.592342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266518, 33.218018, 27.850760>,  <39.349113, 33.718605, 28.357559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266518, 33.218018, 27.850760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.905266, 33.191383, 28.020432>,  <38.688515, 33.175404, 28.122234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.905266, 33.191383, 28.020432>,  <39.266518, 33.218018, 27.850760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905266, 33.191383, 28.020432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429236, 0.115159, -0.895821,
		0.010797, -0.991113, -0.132583,
		-0.903128, -0.066581, 0.424178,
		38.634327, 33.171410, 28.147684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898281, 32.568382, 27.713696>,  <39.266518, 33.218018, 27.850760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898281, 32.568382, 27.713696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.624546, 32.849243, 27.792355>,  <38.460304, 33.017761, 27.839550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.624546, 32.849243, 27.792355>,  <38.898281, 32.568382, 27.713696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624546, 32.849243, 27.792355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398391, -0.134167, -0.907350,
		-0.610716, -0.699271, 0.371546,
		-0.684333, 0.702154, 0.196646,
		38.419247, 33.059891, 27.851349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380680, 32.345085, 27.378681>,  <38.898281, 32.568382, 27.713696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380680, 32.345085, 27.378681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.281258, 32.725220, 27.453602>,  <38.221603, 32.953300, 27.498554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.281258, 32.725220, 27.453602>,  <38.380680, 32.345085, 27.378681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281258, 32.725220, 27.453602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487896, 0.044211, -0.871782,
		-0.836766, -0.308070, 0.452676,
		-0.248557, 0.950336, 0.187300,
		38.206692, 33.010319, 27.509792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612988, 32.435684, 27.228804>,  <38.380680, 32.345085, 27.378681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612988, 32.435684, 27.228804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.766071, 32.805130, 27.220169>,  <37.857922, 33.026798, 27.214989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.766071, 32.805130, 27.220169>,  <37.612988, 32.435684, 27.228804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766071, 32.805130, 27.220169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376021, 0.134380, -0.916815,
		-0.843886, 0.358989, 0.398728,
		0.382708, 0.923617, -0.021586,
		37.880882, 33.082214, 27.213694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092438, 32.872650, 27.010420>,  <37.612988, 32.435684, 27.228804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092438, 32.872650, 27.010420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419392, 33.086658, 26.924976>,  <37.615566, 33.215065, 26.873711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419392, 33.086658, 26.924976>,  <37.092438, 32.872650, 27.010420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419392, 33.086658, 26.924976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333930, 0.137877, -0.932459,
		-0.469435, 0.833511, 0.291359,
		0.817387, 0.535022, -0.213610,
		37.664608, 33.247166, 26.860893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867252, 33.602421, 26.751514>,  <37.092438, 32.872650, 27.010420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867252, 33.602421, 26.751514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.240501, 33.529423, 26.627598>,  <37.464451, 33.485622, 26.553247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.240501, 33.529423, 26.627598>,  <36.867252, 33.602421, 26.751514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240501, 33.529423, 26.627598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273774, 0.197884, -0.941217,
		0.233075, 0.963086, 0.134687,
		0.933126, -0.182500, -0.309790,
		37.520439, 33.474674, 26.534660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399796, 34.206989, 26.547001>,  <36.867252, 33.602421, 26.751514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399796, 34.206989, 26.547001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009640, 34.186588, 26.461191>,  <35.775547, 34.174347, 26.409706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009640, 34.186588, 26.461191>,  <36.399796, 34.206989, 26.547001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009640, 34.186588, 26.461191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218119, 0.080440, 0.972601,
		-0.032351, 0.995454, -0.089585,
		-0.975386, -0.051005, -0.214525,
		35.717026, 34.171288, 26.396833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047523, 34.805878, 26.873556>,  <36.399796, 34.206989, 26.547001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047523, 34.805878, 26.873556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792725, 34.501808, 26.822372>,  <35.639843, 34.319366, 26.791662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792725, 34.501808, 26.822372>,  <36.047523, 34.805878, 26.873556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792725, 34.501808, 26.822372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208657, 0.010232, 0.977935,
		-0.742088, 0.649644, -0.165132,
		-0.636999, -0.760170, -0.127959,
		35.601624, 34.273758, 26.783985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437237, 35.042187, 27.159006>,  <36.047523, 34.805878, 26.873556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437237, 35.042187, 27.159006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441765, 34.642246, 27.153812>,  <35.444481, 34.402283, 27.150696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441765, 34.642246, 27.153812>,  <35.437237, 35.042187, 27.159006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441765, 34.642246, 27.153812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196977, -0.014961, 0.980294,
		-0.980343, -0.008544, -0.197117,
		0.011325, -0.999851, -0.012984,
		35.445164, 34.342289, 27.149918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000565, 34.928478, 27.777925>,  <35.437237, 35.042187, 27.159006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000565, 34.928478, 27.777925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140820, 34.562881, 27.696276>,  <35.224972, 34.343521, 27.647285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140820, 34.562881, 27.696276>,  <35.000565, 34.928478, 27.777925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140820, 34.562881, 27.696276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036745, -0.231220, 0.972207,
		-0.935791, -0.333391, -0.114659,
		0.350636, -0.913996, -0.204123,
		35.246010, 34.288681, 27.635038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564564, 34.447453, 28.105057>,  <35.000565, 34.928478, 27.777925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564564, 34.447453, 28.105057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.904552, 34.246300, 28.042250>,  <35.108547, 34.125610, 28.004566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.904552, 34.246300, 28.042250>,  <34.564564, 34.447453, 28.105057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904552, 34.246300, 28.042250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009519, -0.312655, 0.949819,
		-0.526737, -0.805828, -0.270536,
		0.849976, -0.502880, -0.157016,
		35.159546, 34.095436, 27.995144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466312, 33.782013, 28.272928>,  <34.564564, 34.447453, 28.105057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466312, 33.782013, 28.272928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.862144, 33.826817, 28.309118>,  <35.099644, 33.853699, 28.330832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.862144, 33.826817, 28.309118>,  <34.466312, 33.782013, 28.272928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862144, 33.826817, 28.309118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040769, -0.384670, 0.922154,
		0.138093, -0.916233, -0.376095,
		0.989580, 0.112010, 0.090474,
		35.159019, 33.860420, 28.336260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810863, 33.177624, 28.578882>,  <34.466312, 33.782013, 28.272928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810863, 33.177624, 28.578882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060753, 33.481472, 28.651222>,  <35.210686, 33.663780, 28.694626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060753, 33.481472, 28.651222>,  <34.810863, 33.177624, 28.578882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060753, 33.481472, 28.651222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043727, -0.265275, 0.963181,
		0.779623, -0.593811, -0.198938,
		0.624721, 0.759617, 0.180848,
		35.248169, 33.709358, 28.705477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131298, 32.936016, 29.154243>,  <34.810863, 33.177624, 28.578882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131298, 32.936016, 29.154243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212791, 33.327621, 29.152084>,  <35.261688, 33.562584, 29.150789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212791, 33.327621, 29.152084>,  <35.131298, 32.936016, 29.154243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212791, 33.327621, 29.152084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180309, 0.042940, 0.982672,
		0.962279, -0.199234, 0.185273,
		0.203737, 0.979011, -0.005396,
		35.273914, 33.621326, 29.150465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549156, 33.133205, 29.703354>,  <35.131298, 32.936016, 29.154243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549156, 33.133205, 29.703354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.379215, 33.487652, 29.629263>,  <35.277252, 33.700317, 29.584808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.379215, 33.487652, 29.629263>,  <35.549156, 33.133205, 29.703354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379215, 33.487652, 29.629263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274856, 0.068692, 0.959028,
		0.862530, 0.458353, 0.214370,
		-0.424848, 0.886112, -0.185230,
		35.251762, 33.753487, 29.573694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640903, 33.473877, 30.264696>,  <35.549156, 33.133205, 29.703354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640903, 33.473877, 30.264696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373867, 33.719421, 30.096178>,  <35.213646, 33.866749, 29.995068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373867, 33.719421, 30.096178>,  <35.640903, 33.473877, 30.264696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373867, 33.719421, 30.096178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423658, 0.152099, 0.892961,
		0.612234, 0.774622, 0.158527,
		-0.667595, 0.613862, -0.421295,
		35.173588, 33.903580, 29.969790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628521, 34.016907, 30.717701>,  <35.640903, 33.473877, 30.264696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628521, 34.016907, 30.717701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289131, 34.055603, 30.509573>,  <35.085499, 34.078819, 30.384695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289131, 34.055603, 30.509573>,  <35.628521, 34.016907, 30.717701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289131, 34.055603, 30.509573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480818, 0.269921, 0.834240,
		0.221151, 0.958010, -0.182506,
		-0.848473, 0.096741, -0.520322,
		35.034588, 34.084625, 30.353476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419392, 34.740894, 30.896135>,  <35.628521, 34.016907, 30.717701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419392, 34.740894, 30.896135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114090, 34.530922, 30.745459>,  <34.930908, 34.404938, 30.655052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114090, 34.530922, 30.745459>,  <35.419392, 34.740894, 30.896135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114090, 34.530922, 30.745459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571760, 0.277236, 0.772159,
		-0.300898, 0.804728, -0.511735,
		-0.763250, -0.524931, -0.376692,
		34.885117, 34.373444, 30.632452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889858, 35.228893, 30.930929>,  <35.419392, 34.740894, 30.896135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889858, 35.228893, 30.930929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.683109, 34.894489, 30.857254>,  <34.559059, 34.693848, 30.813049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.683109, 34.894489, 30.857254>,  <34.889858, 35.228893, 30.930929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683109, 34.894489, 30.857254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653783, 0.246599, 0.715372,
		-0.552638, 0.490178, -0.674031,
		-0.516874, -0.836011, -0.184190,
		34.528046, 34.643684, 30.801996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230175, 35.405514, 31.019909>,  <34.889858, 35.228893, 30.930929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230175, 35.405514, 31.019909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.215099, 35.007866, 31.060503>,  <34.206055, 34.769276, 31.084860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.215099, 35.007866, 31.060503>,  <34.230175, 35.405514, 31.019909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215099, 35.007866, 31.060503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712790, 0.097924, 0.694508,
		-0.700364, -0.046157, -0.712292,
		-0.037694, -0.994123, 0.101483,
		34.203793, 34.709629, 31.090948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789528, 35.975067, 31.362022>,  <34.230175, 35.405514, 31.019909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789528, 35.975067, 31.362022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.892246, 36.318424, 31.539656>,  <33.953876, 36.524441, 31.646236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.892246, 36.318424, 31.539656>,  <33.789528, 35.975067, 31.362022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892246, 36.318424, 31.539656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057291, 0.472207, -0.879624,
		-0.964766, 0.200443, 0.170440,
		0.256797, 0.858396, 0.444085,
		33.969284, 36.575943, 31.672882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335308, 36.584770, 31.272415>,  <33.789528, 35.975067, 31.362022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335308, 36.584770, 31.272415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.719624, 36.693516, 31.294247>,  <33.950214, 36.758762, 31.307346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.719624, 36.693516, 31.294247>,  <33.335308, 36.584770, 31.272415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719624, 36.693516, 31.294247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106831, 0.544565, -0.831887,
		-0.255880, 0.793436, 0.552255,
		0.960788, 0.271861, 0.054580,
		34.007858, 36.775074, 31.310621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322536, 37.246181, 31.018021>,  <33.335308, 36.584770, 31.272415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322536, 37.246181, 31.018021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.688576, 37.106579, 30.937235>,  <33.908199, 37.022820, 30.888763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.688576, 37.106579, 30.937235>,  <33.322536, 37.246181, 31.018021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688576, 37.106579, 30.937235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029451, 0.557376, -0.829738,
		0.402151, 0.753345, 0.520333,
		0.915100, -0.349004, -0.201963,
		33.963104, 37.001877, 30.876646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547104, 37.775635, 30.794992>,  <33.322536, 37.246181, 31.018021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547104, 37.775635, 30.794992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.817104, 37.502693, 30.682730>,  <33.979107, 37.338928, 30.615372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.817104, 37.502693, 30.682730>,  <33.547104, 37.775635, 30.794992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817104, 37.502693, 30.682730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232552, 0.557760, -0.796758,
		0.700206, 0.472549, 0.535172,
		0.675005, -0.682350, -0.280655,
		34.019608, 37.297989, 30.598534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042633, 38.178768, 30.734659>,  <33.547104, 37.775635, 30.794992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042633, 38.178768, 30.734659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118713, 37.854771, 30.512762>,  <34.164360, 37.660374, 30.379623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118713, 37.854771, 30.512762>,  <34.042633, 38.178768, 30.734659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118713, 37.854771, 30.512762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298910, 0.586009, -0.753158,
		0.935134, -0.022566, 0.353574,
		0.190202, -0.809990, -0.554742,
		34.175774, 37.611774, 30.346340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719418, 38.172337, 30.508526>,  <34.042633, 38.178768, 30.734659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719418, 38.172337, 30.508526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569954, 37.915966, 30.240318>,  <34.480274, 37.762146, 30.079393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569954, 37.915966, 30.240318>,  <34.719418, 38.172337, 30.508526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569954, 37.915966, 30.240318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386065, 0.549828, -0.740705,
		0.843404, -0.535638, 0.041988,
		-0.373663, -0.640923, -0.670517,
		34.457855, 37.723690, 30.039164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298508, 38.069408, 29.966852>,  <34.719418, 38.172337, 30.508526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298508, 38.069408, 29.966852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957619, 37.972858, 29.781185>,  <34.753086, 37.914928, 29.669785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957619, 37.972858, 29.781185>,  <35.298508, 38.069408, 29.966852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957619, 37.972858, 29.781185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155121, 0.730740, -0.664799,
		0.499649, -0.638561, -0.585313,
		-0.852226, -0.241371, -0.464167,
		34.701950, 37.900448, 29.641935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466461, 37.972279, 29.281605>,  <35.298508, 38.069408, 29.966852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466461, 37.972279, 29.281605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.072140, 38.033371, 29.253716>,  <34.835548, 38.070026, 29.236982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.072140, 38.033371, 29.253716>,  <35.466461, 37.972279, 29.281605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072140, 38.033371, 29.253716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150315, 0.617889, -0.771763,
		-0.074795, -0.771288, -0.632077,
		-0.985805, 0.152735, -0.069721,
		34.776398, 38.079193, 29.232800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410133, 37.921280, 28.522995>,  <35.466461, 37.972279, 29.281605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410133, 37.921280, 28.522995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068905, 38.085098, 28.652325>,  <34.864166, 38.183388, 28.729921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068905, 38.085098, 28.652325>,  <35.410133, 37.921280, 28.522995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068905, 38.085098, 28.652325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003024, 0.615754, -0.787933,
		-0.521780, -0.673144, -0.524046,
		-0.853075, 0.409543, 0.323323,
		34.812981, 38.207962, 28.749321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877110, 37.837490, 27.949398>,  <35.410133, 37.921280, 28.522995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877110, 37.837490, 27.949398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815395, 38.144840, 28.197849>,  <34.778366, 38.329250, 28.346920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815395, 38.144840, 28.197849>,  <34.877110, 37.837490, 27.949398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815395, 38.144840, 28.197849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052921, 0.634181, -0.771371,
		-0.986608, -0.086142, -0.138509,
		-0.154287, 0.768371, 0.621129,
		34.769108, 38.375351, 28.384188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472378, 38.247044, 27.716049>,  <34.877110, 37.837490, 27.949398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472378, 38.247044, 27.716049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.631199, 38.509434, 27.972813>,  <34.726494, 38.666866, 28.126871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.631199, 38.509434, 27.972813>,  <34.472378, 38.247044, 27.716049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631199, 38.509434, 27.972813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085329, 0.669990, -0.737450,
		-0.913819, 0.347583, 0.210050,
		0.397057, 0.655972, 0.641908,
		34.750317, 38.706226, 28.165384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197594, 38.878689, 27.466553>,  <34.472378, 38.247044, 27.716049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197594, 38.878689, 27.466553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.502090, 38.983212, 27.703947>,  <34.684788, 39.045925, 27.846384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.502090, 38.983212, 27.703947>,  <34.197594, 38.878689, 27.466553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502090, 38.983212, 27.703947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266950, 0.707786, -0.654047,
		-0.590969, 0.656320, 0.469041,
		0.761245, 0.261310, 0.593484,
		34.730465, 39.061604, 27.881992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251236, 39.614677, 27.285175>,  <34.197594, 38.878689, 27.466553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251236, 39.614677, 27.285175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574665, 39.531551, 27.505365>,  <34.768723, 39.481674, 27.637480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574665, 39.531551, 27.505365>,  <34.251236, 39.614677, 27.285175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574665, 39.531551, 27.505365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553101, 0.587600, -0.590597,
		-0.200724, 0.782009, 0.590061,
		0.808573, -0.207816, 0.550475,
		34.817238, 39.469208, 27.670507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678612, 40.206772, 27.286676>,  <34.251236, 39.614677, 27.285175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678612, 40.206772, 27.286676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.935722, 39.916603, 27.385139>,  <35.089989, 39.742500, 27.444218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.935722, 39.916603, 27.385139>,  <34.678612, 40.206772, 27.286676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935722, 39.916603, 27.385139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728417, 0.479311, -0.489560,
		0.237152, 0.493985, 0.836503,
		0.642781, -0.725424, 0.246157,
		35.128555, 39.698975, 27.458986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299953, 40.572350, 27.503885>,  <34.678612, 40.206772, 27.286676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299953, 40.572350, 27.503885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373524, 40.196583, 27.388187>,  <35.417667, 39.971123, 27.318768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373524, 40.196583, 27.388187>,  <35.299953, 40.572350, 27.503885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373524, 40.196583, 27.388187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740053, 0.326014, -0.588248,
		0.646910, -0.105864, 0.755183,
		0.183926, -0.939419, -0.289247,
		35.428703, 39.914757, 27.301413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003162, 40.366272, 27.621437>,  <35.299953, 40.572350, 27.503885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003162, 40.366272, 27.621437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.893940, 40.148121, 27.304449>,  <35.828407, 40.017231, 27.114256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.893940, 40.148121, 27.304449>,  <36.003162, 40.366272, 27.621437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893940, 40.148121, 27.304449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695670, 0.457029, -0.554228,
		0.664443, -0.702632, 0.254606,
		-0.273055, -0.545374, -0.792469,
		35.812023, 39.984509, 27.066708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657188, 40.086304, 27.245207>,  <36.003162, 40.366272, 27.621437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657188, 40.086304, 27.245207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.372219, 40.052280, 26.966576>,  <36.201237, 40.031864, 26.799397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.372219, 40.052280, 26.966576>,  <36.657188, 40.086304, 27.245207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372219, 40.052280, 26.966576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624549, 0.375769, -0.684642,
		0.319988, -0.922801, -0.214582,
		-0.712422, -0.085060, -0.696576,
		36.158493, 40.026760, 26.757603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063015, 40.142254, 26.671486>,  <36.657188, 40.086304, 27.245207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063015, 40.142254, 26.671486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.691097, 40.169788, 26.526850>,  <36.467945, 40.186310, 26.440069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.691097, 40.169788, 26.526850>,  <37.063015, 40.142254, 26.671486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691097, 40.169788, 26.526850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363615, 0.324340, -0.873263,
		0.057168, -0.943433, -0.326598,
		-0.929793, 0.068834, -0.361588,
		36.412159, 40.190437, 26.418373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112370, 39.800785, 26.034807>,  <37.063015, 40.142254, 26.671486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112370, 39.800785, 26.034807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.792538, 40.039474, 26.007704>,  <36.600639, 40.182690, 25.991442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.792538, 40.039474, 26.007704>,  <37.112370, 39.800785, 26.034807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792538, 40.039474, 26.007704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248338, 0.225793, -0.941990,
		-0.546810, -0.770023, -0.328729,
		-0.799579, 0.596726, -0.067761,
		36.552666, 40.218491, 25.987375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938026, 39.690250, 25.363945>,  <37.112370, 39.800785, 26.034807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938026, 39.690250, 25.363945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769062, 40.032074, 25.484806>,  <36.667683, 40.237167, 25.557322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769062, 40.032074, 25.484806>,  <36.938026, 39.690250, 25.363945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769062, 40.032074, 25.484806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253394, 0.431397, -0.865846,
		-0.870263, -0.289183, -0.398768,
		-0.422415, 0.854558, 0.302151,
		36.642338, 40.288441, 25.575451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386673, 39.934910, 24.815313>,  <36.938026, 39.690250, 25.363945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386673, 39.934910, 24.815313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.491356, 40.252739, 25.034460>,  <36.554165, 40.443436, 25.165947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.491356, 40.252739, 25.034460>,  <36.386673, 39.934910, 24.815313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491356, 40.252739, 25.034460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035807, 0.575252, -0.817192,
		-0.964482, 0.194250, 0.179001,
		0.261710, 0.794577, 0.547865,
		36.569870, 40.491112, 25.198820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267101, 40.468773, 24.409765>,  <36.386673, 39.934910, 24.815313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267101, 40.468773, 24.409765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.484680, 40.677345, 24.672743>,  <36.615227, 40.802490, 24.830528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.484680, 40.677345, 24.672743>,  <36.267101, 40.468773, 24.409765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484680, 40.677345, 24.672743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320608, 0.594902, -0.737091,
		-0.775457, 0.611719, 0.156419,
		0.543946, 0.521433, 0.657443,
		36.647865, 40.833775, 24.869976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943199, 41.118832, 24.407267>,  <36.267101, 40.468773, 24.409765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943199, 41.118832, 24.407267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.320858, 41.128559, 24.538715>,  <36.547455, 41.134396, 24.617584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.320858, 41.128559, 24.538715>,  <35.943199, 41.118832, 24.407267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320858, 41.128559, 24.538715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248091, 0.603886, -0.757478,
		-0.216873, 0.796699, 0.564124,
		0.944149, 0.024322, 0.328620,
		36.604103, 41.135857, 24.637302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158752, 41.834305, 24.492249>,  <35.943199, 41.118832, 24.407267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158752, 41.834305, 24.492249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.473660, 41.595119, 24.432045>,  <36.662605, 41.451611, 24.395924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.473660, 41.595119, 24.432045>,  <36.158752, 41.834305, 24.492249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473660, 41.595119, 24.432045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291084, 0.575584, -0.764181,
		0.543581, 0.557805, 0.627195,
		0.787268, -0.597961, -0.150508,
		36.709839, 41.415730, 24.386892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785900, 42.351414, 24.411079>,  <36.158752, 41.834305, 24.492249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785900, 42.351414, 24.411079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.917263, 41.991123, 24.297344>,  <36.996082, 41.774948, 24.229103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.917263, 41.991123, 24.297344>,  <36.785900, 42.351414, 24.411079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917263, 41.991123, 24.297344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408857, 0.406933, -0.816849,
		0.851460, 0.152007, 0.501907,
		0.328409, -0.900722, -0.284337,
		37.015785, 41.720905, 24.212044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585846, 42.421932, 24.273451>,  <36.785900, 42.351414, 24.411079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585846, 42.421932, 24.273451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451321, 42.110302, 24.061813>,  <37.370605, 41.923325, 23.934832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451321, 42.110302, 24.061813>,  <37.585846, 42.421932, 24.273451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451321, 42.110302, 24.061813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501263, 0.327534, -0.800910,
		0.797262, -0.534574, 0.280364,
		-0.336316, -0.779071, -0.529093,
		37.350426, 41.876579, 23.903086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130306, 42.178005, 23.863304>,  <37.585846, 42.421932, 24.273451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130306, 42.178005, 23.863304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800415, 42.024872, 23.696804>,  <37.602482, 41.932991, 23.596903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800415, 42.024872, 23.696804>,  <38.130306, 42.178005, 23.863304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800415, 42.024872, 23.696804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335787, 0.260760, -0.905125,
		0.455051, -0.886253, -0.086506,
		-0.824727, -0.382830, -0.416252,
		37.552998, 41.910023, 23.571928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417557, 41.833141, 23.262712>,  <38.130306, 42.178005, 23.863304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417557, 41.833141, 23.262712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026157, 41.876434, 23.192486>,  <37.791317, 41.902409, 23.150351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026157, 41.876434, 23.192486>,  <38.417557, 41.833141, 23.262712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026157, 41.876434, 23.192486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203672, 0.373027, -0.905190,
		-0.032480, -0.921486, -0.387051,
		-0.978500, 0.108232, -0.175565,
		37.732609, 41.908905, 23.139816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886448, 41.250355, 22.889290>,  <38.417557, 41.833141, 23.262712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886448, 41.250355, 22.889290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.275379, 41.342476, 22.905024>,  <39.508736, 41.397747, 22.914465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.275379, 41.342476, 22.905024>,  <38.886448, 41.250355, 22.889290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275379, 41.342476, 22.905024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031498, -0.296034, 0.954658,
		0.231505, -0.926997, -0.295095,
		0.972323, 0.230303, 0.039335,
		39.567078, 41.411568, 22.916824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290573, 40.744839, 23.136003>,  <38.886448, 41.250355, 22.889290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290573, 40.744839, 23.136003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.558918, 41.031601, 23.211885>,  <39.719925, 41.203659, 23.257416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.558918, 41.031601, 23.211885>,  <39.290573, 40.744839, 23.136003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558918, 41.031601, 23.211885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162637, -0.391817, 0.905554,
		0.723530, -0.576647, -0.379450,
		0.670860, 0.716908, 0.189707,
		39.760178, 41.246674, 23.268797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731056, 40.448063, 23.468271>,  <39.290573, 40.744839, 23.136003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731056, 40.448063, 23.468271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.804878, 40.827171, 23.572329>,  <39.849171, 41.054634, 23.634762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.804878, 40.827171, 23.572329>,  <39.731056, 40.448063, 23.468271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804878, 40.827171, 23.572329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064148, -0.252507, 0.965466,
		0.980726, -0.194873, 0.014195,
		0.184559, 0.947768, 0.260141,
		39.860245, 41.111504, 23.650372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247662, 40.462326, 23.900858>,  <39.731056, 40.448063, 23.468271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247662, 40.462326, 23.900858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.033600, 40.791954, 23.975174>,  <39.905163, 40.989731, 24.019764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.033600, 40.791954, 23.975174>,  <40.247662, 40.462326, 23.900858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033600, 40.791954, 23.975174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033071, -0.240201, 0.970160,
		0.844108, 0.513039, 0.155797,
		-0.535153, 0.824072, 0.185789,
		39.873055, 41.039177, 24.030910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459885, 40.686535, 24.599735>,  <40.247662, 40.462326, 23.900858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459885, 40.686535, 24.599735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.109074, 40.862125, 24.521643>,  <39.898586, 40.967480, 24.474787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.109074, 40.862125, 24.521643>,  <40.459885, 40.686535, 24.599735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109074, 40.862125, 24.521643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287783, -0.154620, 0.945131,
		0.384703, 0.885095, 0.261937,
		-0.877032, 0.438976, -0.195233,
		39.845963, 40.993816, 24.463074>
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
