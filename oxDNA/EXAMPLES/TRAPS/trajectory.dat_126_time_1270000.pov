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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.178185, 53.355606, 49.305744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301899, 53.251228, 49.671532>,  <36.376129, 53.188602, 49.891003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301899, 53.251228, 49.671532>,  <36.178185, 53.355606, 49.305744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301899, 53.251228, 49.671532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709866, 0.703233, -0.039424,
		-0.632796, 0.661342, 0.402736,
		0.309289, -0.260941, 0.914467,
		36.394688, 53.172947, 49.945873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217079, 53.890610, 49.897205>,  <36.178185, 53.355606, 49.305744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217079, 53.890610, 49.897205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515091, 53.623985, 49.907196>,  <36.693897, 53.464008, 49.913189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515091, 53.623985, 49.907196>,  <36.217079, 53.890610, 49.897205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515091, 53.623985, 49.907196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651593, 0.735285, 0.186501,
		-0.142678, -0.122675, 0.982137,
		0.745030, -0.666563, 0.024974,
		36.738602, 53.424015, 49.914688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720295, 54.040745, 50.471504>,  <36.217079, 53.890610, 49.897205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720295, 54.040745, 50.471504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901951, 53.828503, 50.185226>,  <37.010944, 53.701157, 50.013462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901951, 53.828503, 50.185226>,  <36.720295, 54.040745, 50.471504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901951, 53.828503, 50.185226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766242, 0.642477, 0.009891,
		0.454567, -0.552884, 0.698346,
		0.454140, -0.530606, -0.715692,
		37.038193, 53.669319, 49.970520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452251, 53.989021, 50.649208>,  <36.720295, 54.040745, 50.471504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452251, 53.989021, 50.649208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347023, 54.021355, 50.264656>,  <37.283886, 54.040752, 50.033924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347023, 54.021355, 50.264656>,  <37.452251, 53.989021, 50.649208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347023, 54.021355, 50.264656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458023, 0.887493, -0.050714,
		0.849122, -0.453677, -0.270498,
		-0.263073, 0.080831, -0.961384,
		37.268101, 54.045605, 49.976242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428818, 53.515709, 51.256237>,  <37.452251, 53.989021, 50.649208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428818, 53.515709, 51.256237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368675, 53.628136, 51.635372>,  <37.332588, 53.695591, 51.862854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368675, 53.628136, 51.635372>,  <37.428818, 53.515709, 51.256237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368675, 53.628136, 51.635372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820824, 0.569863, -0.038775,
		-0.551036, 0.772178, -0.316387,
		-0.150356, 0.281065, 0.947837,
		37.323570, 53.712456, 51.919724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781933, 54.186798, 51.311039>,  <37.428818, 53.515709, 51.256237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781933, 54.186798, 51.311039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036018, 54.154762, 51.003773>,  <38.188469, 54.135540, 50.819412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036018, 54.154762, 51.003773>,  <37.781933, 54.186798, 51.311039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036018, 54.154762, 51.003773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765559, 0.196735, 0.612547,
		0.102067, -0.977180, 0.186284,
		0.635218, -0.080090, -0.768170,
		38.226585, 54.130737, 50.773323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447647, 54.101742, 51.564259>,  <37.781933, 54.186798, 51.311039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447647, 54.101742, 51.564259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534241, 54.174416, 51.180565>,  <38.586197, 54.218021, 50.950348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534241, 54.174416, 51.180565>,  <38.447647, 54.101742, 51.564259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534241, 54.174416, 51.180565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976186, -0.054389, 0.210006,
		-0.014017, -0.981852, -0.189132,
		0.216482, 0.181684, -0.959233,
		38.599186, 54.228920, 50.892796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972744, 53.612911, 51.271553>,  <38.447647, 54.101742, 51.564259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972744, 53.612911, 51.271553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975212, 53.985203, 51.125290>,  <38.976692, 54.208576, 51.037533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975212, 53.985203, 51.125290>,  <38.972744, 53.612911, 51.271553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975212, 53.985203, 51.125290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962967, 0.093038, 0.253059,
		0.269549, -0.353680, -0.895686,
		0.006169, 0.930728, -0.365661,
		38.977062, 54.264420, 51.015591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374680, 53.675781, 50.649986>,  <38.972744, 53.612911, 51.271553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374680, 53.675781, 50.649986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350494, 53.993229, 50.892151>,  <39.335983, 54.183697, 51.037449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350494, 53.993229, 50.892151>,  <39.374680, 53.675781, 50.649986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350494, 53.993229, 50.892151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981105, -0.064429, 0.182436,
		0.183789, 0.604998, -0.774725,
		-0.060459, 0.793616, 0.605407,
		39.332355, 54.231316, 51.073772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899830, 54.260788, 50.515633>,  <39.374680, 53.675781, 50.649986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899830, 54.260788, 50.515633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788891, 54.213531, 50.897026>,  <39.722328, 54.185177, 51.125862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788891, 54.213531, 50.897026>,  <39.899830, 54.260788, 50.515633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788891, 54.213531, 50.897026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960369, -0.062789, 0.271567,
		0.027785, 0.991010, 0.130874,
		-0.277343, -0.118142, 0.953480,
		39.705688, 54.178089, 51.183071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504253, 54.008320, 50.886646>,  <39.899830, 54.260788, 50.515633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504253, 54.008320, 50.886646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797924, 54.013252, 50.615108>,  <40.974129, 54.016212, 50.452187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797924, 54.013252, 50.615108>,  <40.504253, 54.008320, 50.886646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797924, 54.013252, 50.615108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650513, -0.299122, 0.698111,
		-0.194449, -0.954136, -0.227630,
		0.734181, 0.012329, -0.678841,
		41.018177, 54.016949, 50.411457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987644, 53.575401, 50.616436>,  <40.504253, 54.008320, 50.886646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987644, 53.575401, 50.616436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018738, 53.973995, 50.603951>,  <41.037392, 54.213150, 50.596458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018738, 53.973995, 50.603951>,  <40.987644, 53.575401, 50.616436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018738, 53.973995, 50.603951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947124, -0.064032, 0.314414,
		0.311310, -0.054000, -0.948773,
		0.077730, 0.996486, -0.031211,
		41.042057, 54.272942, 50.594585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572742, 53.843864, 50.114555>,  <40.987644, 53.575401, 50.616436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572742, 53.843864, 50.114555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475845, 54.032051, 50.453960>,  <41.417706, 54.144962, 50.657604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475845, 54.032051, 50.453960>,  <41.572742, 53.843864, 50.114555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475845, 54.032051, 50.453960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911911, -0.188194, 0.364694,
		0.331263, 0.862114, -0.383437,
		-0.242248, 0.470470, 0.848513,
		41.403172, 54.173191, 50.708515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069901, 54.216595, 50.125824>,  <41.572742, 53.843864, 50.114555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069901, 54.216595, 50.125824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926498, 54.204689, 50.499046>,  <41.840458, 54.197544, 50.722980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926498, 54.204689, 50.499046>,  <42.069901, 54.216595, 50.125824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926498, 54.204689, 50.499046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922628, -0.163579, 0.349283,
		0.142231, 0.986081, 0.086106,
		-0.358507, -0.029765, 0.933052,
		41.818947, 54.195759, 50.778961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438564, 53.928574, 50.718895>,  <42.069901, 54.216595, 50.125824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438564, 53.928574, 50.718895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605125, 54.130924, 50.416718>,  <42.705063, 54.252335, 50.235409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605125, 54.130924, 50.416718>,  <42.438564, 53.928574, 50.718895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605125, 54.130924, 50.416718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892003, -0.066555, 0.447103,
		0.175899, -0.860036, -0.478954,
		0.416401, 0.505873, -0.755448,
		42.730045, 54.282684, 50.190083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950256, 53.559998, 50.567154>,  <42.438564, 53.928574, 50.718895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950256, 53.559998, 50.567154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026207, 53.935677, 50.452709>,  <43.071777, 54.161083, 50.384041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026207, 53.935677, 50.452709>,  <42.950256, 53.559998, 50.567154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026207, 53.935677, 50.452709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927839, -0.076368, 0.365080,
		0.321032, -0.334786, -0.885922,
		0.189880, 0.939195, -0.286110,
		43.083172, 54.217434, 50.366875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647583, 53.644802, 50.238457>,  <42.950256, 53.559998, 50.567154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647583, 53.644802, 50.238457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574619, 53.967094, 50.463856>,  <43.530842, 54.160469, 50.599094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574619, 53.967094, 50.463856>,  <43.647583, 53.644802, 50.238457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574619, 53.967094, 50.463856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945400, -0.013700, 0.325625,
		0.270085, 0.592126, -0.759237,
		-0.182410, 0.805729, 0.563496,
		43.519897, 54.208813, 50.632904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.208191, 54.284302, 50.184624>,  <43.647583, 53.644802, 50.238457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.208191, 54.284302, 50.184624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033749, 54.276344, 50.544495>,  <43.929081, 54.271572, 50.760418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033749, 54.276344, 50.544495>,  <44.208191, 54.284302, 50.184624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033749, 54.276344, 50.544495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896071, 0.082462, 0.436184,
		-0.082865, 0.996396, -0.018139,
		-0.436108, -0.019891, 0.899675,
		43.902916, 54.270378, 50.814396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.412056, 54.831184, 50.633514>,  <44.208191, 54.284302, 50.184624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.412056, 54.831184, 50.633514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266300, 54.546570, 50.873825>,  <44.178844, 54.375801, 51.018013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266300, 54.546570, 50.873825>,  <44.412056, 54.831184, 50.633514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266300, 54.546570, 50.873825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770240, 0.132311, 0.623878,
		-0.523401, 0.690081, 0.499840,
		-0.364392, -0.711535, 0.600780,
		44.156982, 54.333111, 51.054058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997032, 54.491093, 50.787937>,  <44.412056, 54.831184, 50.633514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.997032, 54.491093, 50.787937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229740, 54.388088, 51.096542>,  <45.369366, 54.326286, 51.281704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229740, 54.388088, 51.096542>,  <44.997032, 54.491093, 50.787937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.229740, 54.388088, 51.096542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682765, -0.360867, -0.635301,
		0.442011, 0.896360, -0.034121,
		0.581772, -0.257514, 0.771510,
		45.404270, 54.310833, 51.327995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681221, 54.796436, 50.980152>,  <44.997032, 54.491093, 50.787937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681221, 54.796436, 50.980152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680058, 54.405678, 51.065636>,  <45.679359, 54.171223, 51.116928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680058, 54.405678, 51.065636>,  <45.681221, 54.796436, 50.980152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680058, 54.405678, 51.065636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778655, -0.136306, -0.612468,
		0.627446, 0.164625, 0.761059,
		-0.002909, -0.976893, 0.213711,
		45.679184, 54.112610, 51.129749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607067, 54.403500, 50.308270>,  <45.681221, 54.796436, 50.980152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607067, 54.403500, 50.308270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579762, 54.284122, 49.927475>,  <45.563377, 54.212498, 49.698997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579762, 54.284122, 49.927475>,  <45.607067, 54.403500, 50.308270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579762, 54.284122, 49.927475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981725, 0.149812, -0.117358,
		0.177643, -0.942598, 0.282758,
		-0.068261, -0.298439, -0.951985,
		45.559284, 54.194592, 49.641880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.183598, 53.876919, 50.309780>,  <45.607067, 54.403500, 50.308270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.183598, 53.876919, 50.309780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084549, 54.119057, 50.007195>,  <46.025120, 54.264339, 49.825642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084549, 54.119057, 50.007195>,  <46.183598, 53.876919, 50.309780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.084549, 54.119057, 50.007195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954149, 0.287898, -0.081950,
		0.168176, -0.742071, -0.648882,
		-0.247624, 0.605348, -0.756463,
		46.010262, 54.300659, 49.780254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.631714, 53.336067, 50.598198>,  <46.183598, 53.876919, 50.309780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.631714, 53.336067, 50.598198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.736622, 53.141750, 50.264679>,  <46.799568, 53.025162, 50.064568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.736622, 53.141750, 50.264679>,  <46.631714, 53.336067, 50.598198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.736622, 53.141750, 50.264679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753523, 0.642874, -0.137533,
		0.602839, -0.592214, 0.534666,
		0.262275, -0.485794, -0.833797,
		46.815304, 52.996014, 50.014542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.384735, 53.091839, 50.625614>,  <46.631714, 53.336067, 50.598198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.384735, 53.091839, 50.625614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.260010, 53.158882, 50.251518>,  <47.185173, 53.199108, 50.027061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.260010, 53.158882, 50.251518>,  <47.384735, 53.091839, 50.625614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.260010, 53.158882, 50.251518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689077, 0.717596, -0.101140,
		0.654174, -0.675990, -0.339254,
		-0.311817, 0.167609, -0.935242,
		47.166466, 53.209164, 49.970947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.930519, 53.074577, 50.073959>,  <47.384735, 53.091839, 50.625614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.930519, 53.074577, 50.073959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.627724, 53.302132, 49.945374>,  <47.446049, 53.438663, 49.868221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.627724, 53.302132, 49.945374>,  <47.930519, 53.074577, 50.073959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.627724, 53.302132, 49.945374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641590, 0.740338, -0.200654,
		0.123841, -0.358140, -0.925418,
		-0.756984, 0.568890, -0.321463,
		47.400627, 53.472797, 49.848934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.857426, 53.224281, 49.330624>,  <47.930519, 53.074577, 50.073959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.857426, 53.224281, 49.330624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.746582, 53.526424, 49.568161>,  <47.680077, 53.707710, 49.710686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.746582, 53.526424, 49.568161>,  <47.857426, 53.224281, 49.330624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.746582, 53.526424, 49.568161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769298, 0.544709, -0.333876,
		-0.575668, 0.364325, -0.732034,
		-0.277106, 0.755354, 0.593846,
		47.663452, 53.753029, 49.746315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.982162, 53.722549, 48.840023>,  <47.857426, 53.224281, 49.330624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.982162, 53.722549, 48.840023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.962811, 53.903229, 49.196365>,  <47.951199, 54.011639, 49.410172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.962811, 53.903229, 49.196365>,  <47.982162, 53.722549, 48.840023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.962811, 53.903229, 49.196365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824904, 0.520975, -0.219358,
		-0.563198, 0.724258, -0.397816,
		-0.048381, 0.451702, 0.890856,
		47.948296, 54.038738, 49.463623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.175251, 54.337231, 48.644188>,  <47.982162, 53.722549, 48.840023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.175251, 54.337231, 48.644188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.221703, 54.306511, 49.040291>,  <48.249573, 54.288078, 49.277954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.221703, 54.306511, 49.040291>,  <48.175251, 54.337231, 48.644188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.221703, 54.306511, 49.040291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847995, 0.526754, -0.058597,
		-0.517124, 0.846541, 0.126298,
		0.116132, -0.076799, 0.990260,
		48.256542, 54.283470, 49.337368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.355675, 55.019768, 48.852886>,  <48.175251, 54.337231, 48.644188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.355675, 55.019768, 48.852886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.486530, 54.776840, 49.142479>,  <48.565044, 54.631084, 49.316235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.486530, 54.776840, 49.142479>,  <48.355675, 55.019768, 48.852886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.486530, 54.776840, 49.142479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873022, 0.487468, 0.014432,
		-0.361682, 0.627328, 0.689671,
		0.327138, -0.607317, 0.723979,
		48.584671, 54.594646, 49.359673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.813942, 55.352947, 49.245113>,  <48.355675, 55.019768, 48.852886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.813942, 55.352947, 49.245113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.940277, 54.977043, 49.297398>,  <49.016079, 54.751499, 49.328770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.940277, 54.977043, 49.297398>,  <48.813942, 55.352947, 49.245113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.940277, 54.977043, 49.297398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942501, 0.294888, -0.157266,
		0.109247, 0.172868, 0.978868,
		0.315843, -0.939765, 0.130713,
		49.035030, 54.695114, 49.336613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.415985, 55.240791, 49.683563>,  <48.813942, 55.352947, 49.245113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.415985, 55.240791, 49.683563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.408817, 54.916626, 49.449333>,  <49.404518, 54.722126, 49.308796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.408817, 54.916626, 49.449333>,  <49.415985, 55.240791, 49.683563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.408817, 54.916626, 49.449333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951221, 0.166591, -0.259666,
		0.307990, -0.561667, 0.767901,
		-0.017920, -0.810418, -0.585578,
		49.403442, 54.673500, 49.273659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.098633, 54.948917, 49.776123>,  <49.415985, 55.240791, 49.683563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.098633, 54.948917, 49.776123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.925133, 54.875542, 49.423256>,  <49.821033, 54.831516, 49.211536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.925133, 54.875542, 49.423256>,  <50.098633, 54.948917, 49.776123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.925133, 54.875542, 49.423256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822182, 0.319960, -0.470790,
		0.368619, -0.929503, 0.012041,
		-0.433748, -0.183442, -0.882163,
		49.795010, 54.820511, 49.158607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.467995, 54.390347, 49.411053>,  <50.098633, 54.948917, 49.776123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.467995, 54.390347, 49.411053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.282112, 54.665947, 49.188583>,  <50.170582, 54.831306, 49.055103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.282112, 54.665947, 49.188583>,  <50.467995, 54.390347, 49.411053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.282112, 54.665947, 49.188583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859576, 0.200251, -0.470137,
		-0.212551, -0.696547, -0.685306,
		-0.464706, 0.689000, -0.556172,
		50.142700, 54.872646, 49.021732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.558559, 54.242214, 48.614651>,  <50.467995, 54.390347, 49.411053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.558559, 54.242214, 48.614651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.518757, 54.636646, 48.667938>,  <50.494873, 54.873306, 48.699909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.518757, 54.636646, 48.667938>,  <50.558559, 54.242214, 48.614651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.518757, 54.636646, 48.667938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821102, 0.156996, -0.548766,
		-0.562041, 0.054778, -0.825293,
		-0.099508, 0.986079, 0.133217,
		50.488903, 54.932468, 48.707905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.697819, 54.451557, 47.983681>,  <50.558559, 54.242214, 48.614651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.697819, 54.451557, 47.983681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.750122, 54.707848, 48.286301>,  <50.781502, 54.861622, 48.467873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.750122, 54.707848, 48.286301>,  <50.697819, 54.451557, 47.983681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.750122, 54.707848, 48.286301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808403, 0.372850, -0.455485,
		-0.573922, 0.671158, -0.469213,
		0.130756, 0.640726, 0.756553,
		50.789349, 54.900066, 48.513268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.037769, 54.930618, 47.673058>,  <50.697819, 54.451557, 47.983681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.037769, 54.930618, 47.673058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.112679, 55.001842, 48.059471>,  <51.157623, 55.044579, 48.291321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.112679, 55.001842, 48.059471>,  <51.037769, 54.930618, 47.673058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.112679, 55.001842, 48.059471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931543, 0.279864, -0.232173,
		-0.311700, 0.943382, -0.113463,
		0.187274, 0.178064, 0.966034,
		51.168861, 55.055264, 48.349281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.259048, 55.696392, 47.819721>,  <51.037769, 54.930618, 47.673058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.259048, 55.696392, 47.819721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.446796, 55.431664, 48.053539>,  <51.559444, 55.272827, 48.193829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.446796, 55.431664, 48.053539>,  <51.259048, 55.696392, 47.819721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.446796, 55.431664, 48.053539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870016, 0.459739, -0.178079,
		-0.150881, 0.592146, 0.791580,
		0.469368, -0.661818, 0.584542,
		51.587608, 55.233116, 48.228901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.721748, 56.112228, 48.277817>,  <51.259048, 55.696392, 47.819721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.721748, 56.112228, 48.277817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.831608, 55.732693, 48.215492>,  <51.897522, 55.504971, 48.178097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.831608, 55.732693, 48.215492>,  <51.721748, 56.112228, 48.277817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.831608, 55.732693, 48.215492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954549, 0.249537, 0.162995,
		-0.115775, -0.193494, 0.974246,
		0.274649, -0.948837, -0.155809,
		51.914001, 55.448040, 48.168751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.852268, 55.687469, 48.905903>,  <51.721748, 56.112228, 48.277817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.852268, 55.687469, 48.905903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.051552, 55.659119, 48.560242>,  <52.171124, 55.642109, 48.352844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.051552, 55.659119, 48.560242>,  <51.852268, 55.687469, 48.905903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.051552, 55.659119, 48.560242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847154, 0.252107, 0.467731,
		0.184707, -0.965100, 0.185649,
		0.498211, -0.070880, -0.864154,
		52.201015, 55.637856, 48.300995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.459270, 55.168705, 48.877586>,  <51.852268, 55.687469, 48.905903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.459270, 55.168705, 48.877586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.511719, 55.476772, 48.627899>,  <52.543186, 55.661613, 48.478085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.511719, 55.476772, 48.627899>,  <52.459270, 55.168705, 48.877586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.511719, 55.476772, 48.627899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862429, 0.221907, 0.454944,
		0.488902, -0.597996, -0.635119,
		0.131117, 0.770168, -0.624220,
		52.551052, 55.707821, 48.440632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.266720, 55.331326, 48.591690>,  <52.459270, 55.168705, 48.877586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.266720, 55.331326, 48.591690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.005394, 55.631943, 48.628273>,  <52.848598, 55.812313, 48.650223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.005394, 55.631943, 48.628273>,  <53.266720, 55.331326, 48.591690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.005394, 55.631943, 48.628273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584716, 0.424144, 0.691527,
		0.480922, 0.505260, -0.716538,
		-0.653316, 0.751541, 0.091454,
		52.809399, 55.857407, 48.655708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.750107, 55.975277, 48.620186>,  <53.266720, 55.331326, 48.591690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.750107, 55.975277, 48.620186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.389034, 55.998798, 48.790695>,  <53.172390, 56.012913, 48.893002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.389034, 55.998798, 48.790695>,  <53.750107, 55.975277, 48.620186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.389034, 55.998798, 48.790695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411937, 0.404473, 0.816523,
		-0.124400, 0.912658, -0.389334,
		-0.902681, 0.058806, 0.426273,
		53.118229, 56.016441, 48.918579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.829960, 56.739571, 48.847099>,  <53.750107, 55.975277, 48.620186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.829960, 56.739571, 48.847099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.540894, 56.523399, 49.019466>,  <53.367455, 56.393696, 49.122887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.540894, 56.523399, 49.019466>,  <53.829960, 56.739571, 48.847099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.540894, 56.523399, 49.019466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098076, 0.536957, 0.837889,
		-0.684206, 0.647775, -0.335036,
		-0.722664, -0.540429, 0.430921,
		53.324093, 56.361271, 49.148743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.380043, 57.106800, 49.074490>,  <53.829960, 56.739571, 48.847099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.380043, 57.106800, 49.074490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.375969, 57.186844, 49.466377>,  <54.373524, 57.234871, 49.701511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.375969, 57.186844, 49.466377>,  <54.380043, 57.106800, 49.074490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.375969, 57.186844, 49.466377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781100, -0.610134, 0.132739,
		0.624323, 0.766611, -0.150094,
		-0.010181, 0.200110, 0.979721,
		54.372913, 57.246876, 49.760292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.109287, 57.227299, 49.276646>,  <54.380043, 57.106800, 49.074490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.109287, 57.227299, 49.276646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.918114, 57.130394, 49.614376>,  <54.803410, 57.072250, 49.817013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.918114, 57.130394, 49.614376>,  <55.109287, 57.227299, 49.276646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.918114, 57.130394, 49.614376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748458, -0.615438, 0.247078,
		0.459771, 0.750029, 0.475465,
		-0.477934, -0.242266, 0.844326,
		54.774734, 57.057713, 49.867672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.630703, 57.070797, 49.672729>,  <55.109287, 57.227299, 49.276646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.630703, 57.070797, 49.672729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.304596, 56.884747, 49.810719>,  <55.108932, 56.773117, 49.893513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.304596, 56.884747, 49.810719>,  <55.630703, 57.070797, 49.672729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.304596, 56.884747, 49.810719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568337, -0.756928, 0.322572,
		0.111082, 0.459040, 0.881444,
		-0.815263, -0.465125, 0.344970,
		55.060017, 56.745209, 49.914211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.740646, 56.759220, 50.325718>,  <55.630703, 57.070797, 49.672729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.740646, 56.759220, 50.325718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.467537, 56.551121, 50.120522>,  <55.303669, 56.426262, 49.997402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.467537, 56.551121, 50.120522>,  <55.740646, 56.759220, 50.325718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.467537, 56.551121, 50.120522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521068, -0.838906, 0.157243,
		-0.512158, -0.159942, 0.843868,
		-0.682775, -0.520246, -0.512993,
		55.262703, 56.395046, 49.966625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.527271, 56.064693, 50.487812>,  <55.740646, 56.759220, 50.325718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.527271, 56.064693, 50.487812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.575813, 55.804718, 50.187717>,  <55.604939, 55.648731, 50.007660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.575813, 55.804718, 50.187717>,  <55.527271, 56.064693, 50.487812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.575813, 55.804718, 50.187717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992256, 0.099602, 0.074213,
		0.026491, -0.753429, 0.656996,
		0.121353, -0.649942, -0.750232,
		55.612221, 55.609734, 49.962646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.161610, 55.949574, 51.163342>,  <55.527271, 56.064693, 50.487812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.161610, 55.949574, 51.163342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.301010, 55.600319, 51.299683>,  <55.384651, 55.390766, 51.381485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.301010, 55.600319, 51.299683>,  <55.161610, 55.949574, 51.163342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.301010, 55.600319, 51.299683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523714, 0.482979, 0.701751,
		-0.777349, -0.066052, 0.625592,
		0.348500, -0.873137, 0.340851,
		55.405560, 55.338379, 51.401939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.091274, 56.043552, 51.856949>,  <55.161610, 55.949574, 51.163342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.091274, 56.043552, 51.856949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.343506, 55.739525, 51.794128>,  <55.494846, 55.557110, 51.756435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.343506, 55.739525, 51.794128>,  <55.091274, 56.043552, 51.856949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.343506, 55.739525, 51.794128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521743, 0.265329, 0.810793,
		-0.574586, -0.593212, 0.563871,
		0.630583, -0.760066, -0.157050,
		55.532681, 55.511505, 51.747013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.113453, 55.469467, 52.390549>,  <55.091274, 56.043552, 51.856949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.113453, 55.469467, 52.390549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.441475, 55.590057, 52.195972>,  <55.638287, 55.662411, 52.079227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.441475, 55.590057, 52.195972>,  <55.113453, 55.469467, 52.390549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.441475, 55.590057, 52.195972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442300, 0.205508, 0.873005,
		0.363153, -0.931065, 0.035187,
		0.820055, 0.301471, -0.486441,
		55.687492, 55.680500, 52.050041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.812855, 55.164764, 52.695824>,  <55.113453, 55.469467, 52.390549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.812855, 55.164764, 52.695824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.886833, 55.523876, 52.535931>,  <55.931221, 55.739342, 52.439995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.886833, 55.523876, 52.535931>,  <55.812855, 55.164764, 52.695824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.886833, 55.523876, 52.535931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512866, 0.258790, 0.818532,
		0.838309, -0.356396, -0.412578,
		0.184950, 0.897780, -0.399730,
		55.942318, 55.793209, 52.416012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.522625, 55.246666, 52.365292>,  <55.812855, 55.164764, 52.695824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.522625, 55.246666, 52.365292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.364471, 55.583813, 52.511299>,  <56.269577, 55.786102, 52.598904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.364471, 55.583813, 52.511299>,  <56.522625, 55.246666, 52.365292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.364471, 55.583813, 52.511299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617151, -0.050549, 0.785219,
		0.680288, 0.535739, -0.500192,
		-0.395388, 0.842869, 0.365020,
		56.245853, 55.836674, 52.620804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.128075, 55.622681, 52.568279>,  <56.522625, 55.246666, 52.365292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.128075, 55.622681, 52.568279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.793289, 55.716137, 52.766228>,  <56.592419, 55.772213, 52.884995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.793289, 55.716137, 52.766228>,  <57.128075, 55.622681, 52.568279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.793289, 55.716137, 52.766228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515077, 0.030831, 0.856589,
		0.184878, 0.971834, -0.146149,
		-0.836968, 0.233643, 0.494869,
		56.542198, 55.786228, 52.914688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.172691, 56.208630, 53.100327>,  <57.128075, 55.622681, 52.568279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.172691, 56.208630, 53.100327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.906418, 55.927628, 53.201012>,  <56.746655, 55.759026, 53.261421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.906418, 55.927628, 53.201012>,  <57.172691, 56.208630, 53.100327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.906418, 55.927628, 53.201012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460806, -0.121661, 0.879122,
		-0.586961, 0.701207, 0.404705,
		-0.665683, -0.702501, 0.251710,
		56.706715, 55.716877, 53.276524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.892654, 56.400768, 53.754971>,  <57.172691, 56.208630, 53.100327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.892654, 56.400768, 53.754971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.904099, 56.008953, 53.675285>,  <56.910965, 55.773865, 53.627472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.904099, 56.008953, 53.675285>,  <56.892654, 56.400768, 53.754971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.904099, 56.008953, 53.675285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453302, -0.164914, 0.875969,
		-0.890898, -0.115366, 0.439308,
		0.028609, -0.979538, -0.199217,
		56.912682, 55.715092, 53.615520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.620499, 55.962585, 54.215656>,  <56.892654, 56.400768, 53.754971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.620499, 55.962585, 54.215656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.926453, 55.764221, 54.051208>,  <57.110023, 55.645203, 53.952538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.926453, 55.764221, 54.051208>,  <56.620499, 55.962585, 54.215656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.926453, 55.764221, 54.051208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408501, -0.120057, 0.904828,
		-0.498075, -0.860032, 0.110751,
		0.764885, -0.495914, -0.411121,
		57.155918, 55.615448, 53.927872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.698395, 55.223183, 54.530674>,  <56.620499, 55.962585, 54.215656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.698395, 55.223183, 54.530674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.026291, 55.436874, 54.448090>,  <57.223026, 55.565090, 54.398537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.026291, 55.436874, 54.448090>,  <56.698395, 55.223183, 54.530674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.026291, 55.436874, 54.448090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383309, -0.243875, 0.890842,
		0.425563, -0.809397, -0.404688,
		0.819738, 0.534230, -0.206465,
		57.272213, 55.597145, 54.386150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.437832, 55.217503, 54.711693>,  <56.698395, 55.223183, 54.530674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.437832, 55.217503, 54.711693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.355743, 55.358330, 55.076973>,  <57.306492, 55.442825, 55.296143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.355743, 55.358330, 55.076973>,  <57.437832, 55.217503, 54.711693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.355743, 55.358330, 55.076973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290933, 0.868938, -0.400381,
		-0.934475, -0.347847, -0.075895,
		-0.205220, 0.352066, 0.913200,
		57.294178, 55.463951, 55.350933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.513607, 54.832855, 55.388500>,  <57.437832, 55.217503, 54.711693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.513607, 54.832855, 55.388500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.834946, 54.913918, 55.612488>,  <58.027748, 54.962555, 55.746880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.834946, 54.913918, 55.612488>,  <57.513607, 54.832855, 55.388500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.834946, 54.913918, 55.612488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555177, -0.595057, -0.581108,
		0.215448, 0.777712, -0.590547,
		0.803344, 0.202659, 0.559972,
		58.075951, 54.974716, 55.780479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.200684, 55.166515, 54.996227>,  <57.513607, 54.832855, 55.388500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.200684, 55.166515, 54.996227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.300148, 54.948917, 55.316788>,  <58.359825, 54.818359, 55.509125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.300148, 54.948917, 55.316788>,  <58.200684, 55.166515, 54.996227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.300148, 54.948917, 55.316788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673315, -0.497701, -0.546755,
		0.696288, 0.675550, 0.242519,
		0.248658, -0.543991, 0.801401,
		58.374744, 54.785721, 55.557209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.879974, 55.323872, 55.220894>,  <58.200684, 55.166515, 54.996227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.879974, 55.323872, 55.220894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.765343, 54.952721, 55.316330>,  <58.696564, 54.730030, 55.373592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.765343, 54.952721, 55.316330>,  <58.879974, 55.323872, 55.220894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.765343, 54.952721, 55.316330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738122, -0.372594, -0.562450,
		0.610779, 0.014921, 0.791661,
		-0.286576, -0.927874, 0.238586,
		58.679371, 54.674358, 55.387905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.464275, 54.975929, 55.073689>,  <58.879974, 55.323872, 55.220894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.464275, 54.975929, 55.073689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.223801, 54.660431, 55.125000>,  <59.079514, 54.471134, 55.155788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.223801, 54.660431, 55.125000>,  <59.464275, 54.975929, 55.073689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.223801, 54.660431, 55.125000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696157, -0.595764, -0.400539,
		0.392345, -0.151499, 0.907256,
		-0.601191, -0.788742, 0.128278,
		59.043442, 54.423809, 55.163483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.881889, 55.409023, 55.658337>,  <59.464275, 54.975929, 55.073689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.881889, 55.409023, 55.658337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.250114, 55.548431, 55.587799>,  <60.471050, 55.632076, 55.545475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.250114, 55.548431, 55.587799>,  <59.881889, 55.409023, 55.658337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.250114, 55.548431, 55.587799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070214, -0.591781, -0.803035,
		-0.384236, 0.726861, -0.569242,
		0.920561, 0.348524, -0.176347,
		60.526283, 55.652988, 55.534893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.983334, 55.705250, 54.928799>,  <59.881889, 55.409023, 55.658337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.983334, 55.705250, 54.928799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.326836, 55.555527, 55.068764>,  <60.532936, 55.465694, 55.152744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.326836, 55.555527, 55.068764>,  <59.983334, 55.705250, 54.928799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.326836, 55.555527, 55.068764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015429, -0.701487, -0.712515,
		0.512160, 0.606474, -0.608178,
		0.858751, -0.374305, 0.349917,
		60.584461, 55.443233, 55.173740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.509132, 55.678207, 54.259254>,  <59.983334, 55.705250, 54.928799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.509132, 55.678207, 54.259254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.523880, 55.409924, 54.555576>,  <60.532730, 55.248955, 54.733368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.523880, 55.409924, 54.555576>,  <60.509132, 55.678207, 54.259254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.523880, 55.409924, 54.555576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032791, -0.741722, -0.669905,
		0.998782, 0.000408, -0.049341,
		0.036871, -0.670707, 0.740805,
		60.534943, 55.208710, 54.777817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.171173, 55.144585, 54.226040>,  <60.509132, 55.678207, 54.259254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.171173, 55.144585, 54.226040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.833656, 55.002617, 54.387062>,  <60.631145, 54.917435, 54.483677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.833656, 55.002617, 54.387062>,  <61.171173, 55.144585, 54.226040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.833656, 55.002617, 54.387062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159416, -0.550478, -0.819488,
		0.512453, -0.755648, 0.407906,
		-0.843788, -0.354922, 0.402556,
		60.580521, 54.896141, 54.507828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.790199, 55.380184, 54.575535>,  <61.171173, 55.144585, 54.226040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.790199, 55.380184, 54.575535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.920311, 55.011566, 54.490730>,  <61.998379, 54.790394, 54.439846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.920311, 55.011566, 54.490730>,  <61.790199, 55.380184, 54.575535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.920311, 55.011566, 54.490730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921604, 0.359156, -0.147145,
		0.211745, -0.147526, 0.966126,
		0.325283, -0.921544, -0.212010,
		62.017895, 54.735104, 54.427128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.296654, 55.245785, 55.120281>,  <61.790199, 55.380184, 54.575535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.296654, 55.245785, 55.120281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.356964, 55.056992, 54.772835>,  <62.393150, 54.943714, 54.564365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.356964, 55.056992, 54.772835>,  <62.296654, 55.245785, 55.120281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.356964, 55.056992, 54.772835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875062, 0.472515, -0.104862,
		0.459928, -0.744283, 0.484261,
		0.150774, -0.471987, -0.868617,
		62.402195, 54.915394, 54.512249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.176704, 54.424809, 55.122658>,  <62.296654, 55.245785, 55.120281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.176704, 54.424809, 55.122658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.495865, 54.329964, 55.344337>,  <62.687359, 54.273056, 55.477345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.495865, 54.329964, 55.344337>,  <62.176704, 54.424809, 55.122658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.495865, 54.329964, 55.344337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006317, 0.916048, 0.401020,
		-0.602758, -0.323474, 0.729416,
		0.797899, -0.237111, 0.554198,
		62.735233, 54.258831, 55.510597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.110394, 54.429352, 55.744789>,  <62.176704, 54.424809, 55.122658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.110394, 54.429352, 55.744789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.469620, 54.591560, 55.676628>,  <62.685154, 54.688885, 55.635731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.469620, 54.591560, 55.676628>,  <62.110394, 54.429352, 55.744789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.469620, 54.591560, 55.676628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317599, 0.865816, 0.386643,
		0.304330, -0.293109, 0.906350,
		0.898061, 0.405523, -0.170403,
		62.739037, 54.713219, 55.625507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.271725, 54.754395, 56.396572>,  <62.110394, 54.429352, 55.744789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.271725, 54.754395, 56.396572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.454720, 54.905384, 56.074524>,  <62.564518, 54.995975, 55.881294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.454720, 54.905384, 56.074524>,  <62.271725, 54.754395, 56.396572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.454720, 54.905384, 56.074524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350070, 0.908767, 0.227144,
		0.817407, 0.177932, 0.547893,
		0.457490, 0.377470, -0.805121,
		62.591965, 55.018623, 55.832989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.895355, 55.230457, 56.482010>,  <62.271725, 54.754395, 56.396572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.895355, 55.230457, 56.482010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.687492, 55.329155, 56.154823>,  <62.562775, 55.388374, 55.958511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.687492, 55.329155, 56.154823>,  <62.895355, 55.230457, 56.482010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.687492, 55.329155, 56.154823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241732, 0.875806, 0.417768,
		0.819463, 0.414826, -0.395475,
		-0.519660, 0.246746, -0.817967,
		62.531593, 55.403179, 55.909431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.207146, 55.908989, 56.263420>,  <62.895355, 55.230457, 56.482010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.207146, 55.908989, 56.263420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.818413, 55.838249, 56.201118>,  <62.585171, 55.795807, 56.163738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.818413, 55.838249, 56.201118>,  <63.207146, 55.908989, 56.263420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.818413, 55.838249, 56.201118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233377, 0.814029, 0.531876,
		0.032728, 0.553246, -0.832375,
		-0.971835, -0.176850, -0.155756,
		62.526863, 55.785194, 56.154392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.034031, 56.080208, 56.900372>,  <63.207146, 55.908989, 56.263420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.034031, 56.080208, 56.900372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.348763, 56.178410, 57.126869>,  <63.537601, 56.237331, 57.262768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.348763, 56.178410, 57.126869>,  <63.034031, 56.080208, 56.900372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.348763, 56.178410, 57.126869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142526, -0.964957, 0.220328,
		0.600492, -0.092655, -0.794244,
		0.786826, 0.245505, 0.566244,
		63.584812, 56.252060, 57.296741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.510506, 55.600201, 56.860252>,  <63.034031, 56.080208, 56.900372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.510506, 55.600201, 56.860252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.652519, 55.769386, 57.193733>,  <63.737728, 55.870895, 57.393822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.652519, 55.769386, 57.193733>,  <63.510506, 55.600201, 56.860252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.652519, 55.769386, 57.193733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518026, -0.831371, 0.201176,
		0.778202, 0.360453, -0.514271,
		0.355035, 0.422962, 0.833699,
		63.759029, 55.896275, 57.443844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.291901, 55.658264, 56.889915>,  <63.510506, 55.600201, 56.860252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.291901, 55.658264, 56.889915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.113571, 55.595062, 57.242340>,  <64.006577, 55.557140, 57.453796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.113571, 55.595062, 57.242340>,  <64.291901, 55.658264, 56.889915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.113571, 55.595062, 57.242340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643822, -0.740438, 0.192990,
		0.621880, 0.653288, 0.431833,
		-0.445824, -0.158007, 0.881065,
		63.979824, 55.547661, 57.506660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.774727, 55.690052, 57.427101>,  <64.291901, 55.658264, 56.889915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.774727, 55.690052, 57.427101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.472122, 55.456635, 57.545189>,  <64.290558, 55.316582, 57.616043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.472122, 55.456635, 57.545189>,  <64.774727, 55.690052, 57.427101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.472122, 55.456635, 57.545189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650657, -0.626219, 0.429529,
		-0.065777, 0.517034, 0.853434,
		-0.756518, -0.583546, 0.295220,
		64.245171, 55.281570, 57.633755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.379646, 55.357773, 57.538448>,  <64.774727, 55.690052, 57.427101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.379646, 55.357773, 57.538448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.275452, 55.447880, 57.913979>,  <65.212936, 55.501945, 58.139297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.275452, 55.447880, 57.913979>,  <65.379646, 55.357773, 57.538448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.275452, 55.447880, 57.913979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921854, -0.347025, -0.172505,
		0.286937, -0.910399, 0.298062,
		-0.260484, 0.225271, 0.938830,
		65.197304, 55.515461, 58.195629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.853996, 55.203449, 56.950218>,  <65.379646, 55.357773, 57.538448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.853996, 55.203449, 56.950218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.050102, 55.269104, 57.292610>,  <66.167763, 55.308495, 57.498047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.050102, 55.269104, 57.292610>,  <65.853996, 55.203449, 56.950218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.050102, 55.269104, 57.292610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849730, -0.128477, 0.511324,
		0.193899, -0.978036, 0.076482,
		0.490266, 0.164134, 0.855978,
		66.197182, 55.318344, 57.549404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.105499, 55.865837, 56.588936>,  <65.853996, 55.203449, 56.950218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.105499, 55.865837, 56.588936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.773453, 55.736168, 56.770401>,  <65.574226, 55.658367, 56.879280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.773453, 55.736168, 56.770401>,  <66.105499, 55.865837, 56.588936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.773453, 55.736168, 56.770401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136780, -0.670377, -0.729305,
		0.540549, -0.667463, 0.512153,
		-0.830119, -0.324173, 0.453667,
		65.524414, 55.638916, 56.906502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.549324, 56.136662, 56.196568>,  <66.105499, 55.865837, 56.588936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.549324, 56.136662, 56.196568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.848404, 55.995422, 55.971619>,  <67.027855, 55.910679, 55.836651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.848404, 55.995422, 55.971619>,  <66.549324, 56.136662, 56.196568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.848404, 55.995422, 55.971619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456117, 0.888597, 0.048505,
		0.482595, -0.292774, 0.825461,
		0.747703, -0.353099, -0.562372,
		67.072716, 55.889492, 55.802906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.159164, 56.241543, 56.532394>,  <66.549324, 56.136662, 56.196568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.159164, 56.241543, 56.532394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.253670, 56.206581, 56.145294>,  <67.310371, 56.185604, 55.913033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.253670, 56.206581, 56.145294>,  <67.159164, 56.241543, 56.532394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.253670, 56.206581, 56.145294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560414, 0.825872, 0.062227,
		0.793800, -0.557043, 0.244097,
		0.236256, -0.087400, -0.967752,
		67.324547, 56.180363, 55.854969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.991516, 56.210880, 56.424900>,  <67.159164, 56.241543, 56.532394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.991516, 56.210880, 56.424900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.770958, 56.386520, 56.141167>,  <67.638626, 56.491905, 55.970928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.770958, 56.386520, 56.141167>,  <67.991516, 56.210880, 56.424900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.770958, 56.386520, 56.141167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606694, 0.794676, 0.020320,
		0.572612, -0.419144, -0.704581,
		-0.551396, 0.439101, -0.709333,
		67.605537, 56.518250, 55.928368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.594200, 55.849991, 56.615665>,  <67.991516, 56.210880, 56.424900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.594200, 55.849991, 56.615665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.393730, 55.512211, 56.540054>,  <68.273445, 55.309544, 56.494686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.393730, 55.512211, 56.540054>,  <68.594200, 55.849991, 56.615665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.393730, 55.512211, 56.540054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737886, 0.302917, 0.603129,
		-0.452051, 0.441756, -0.774921,
		-0.501173, -0.844448, -0.189032,
		68.243378, 55.258877, 56.483345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.769478, 55.222363, 57.108456>,  <68.594200, 55.849991, 56.615665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.769478, 55.222363, 57.108456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.429398, 55.147934, 57.305450>,  <68.225349, 55.103275, 57.423649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.429398, 55.147934, 57.305450>,  <68.769478, 55.222363, 57.108456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.429398, 55.147934, 57.305450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136912, -0.825123, -0.548111,
		0.508352, -0.533430, 0.676041,
		-0.850196, -0.186075, 0.492486,
		68.174339, 55.092110, 57.453197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.002724, 55.566811, 57.732391>,  <68.769478, 55.222363, 57.108456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.002724, 55.566811, 57.732391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.364677, 55.640118, 57.886070>,  <69.581848, 55.684101, 57.978279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.364677, 55.640118, 57.886070>,  <69.002724, 55.566811, 57.732391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.364677, 55.640118, 57.886070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360173, 0.810693, 0.461576,
		-0.226878, -0.556049, 0.799585,
		0.904877, 0.183268, 0.384202,
		69.636139, 55.695099, 58.001331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.061462, 55.682999, 58.518490>,  <69.002724, 55.566811, 57.732391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.061462, 55.682999, 58.518490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.340096, 55.903011, 58.334213>,  <69.507278, 56.035019, 58.223648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.340096, 55.903011, 58.334213>,  <69.061462, 55.682999, 58.518490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.340096, 55.903011, 58.334213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292779, 0.804124, 0.517363,
		0.655019, -0.225505, 0.721178,
		0.696585, 0.550028, -0.460694,
		69.549072, 56.068020, 58.196007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.632835, 55.996658, 58.971024>,  <69.061462, 55.682999, 58.518490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.632835, 55.996658, 58.971024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.564957, 56.239792, 58.660736>,  <69.524231, 56.385674, 58.474564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.564957, 56.239792, 58.660736>,  <69.632835, 55.996658, 58.971024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.564957, 56.239792, 58.660736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072466, 0.777307, 0.624934,
		0.982829, 0.162261, -0.087858,
		-0.169695, 0.607836, -0.775718,
		69.514046, 56.422142, 58.428020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.018425, 56.715527, 58.895996>,  <69.632835, 55.996658, 58.971024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.018425, 56.715527, 58.895996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.652443, 56.735195, 58.735786>,  <69.432854, 56.746998, 58.639660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.652443, 56.735195, 58.735786>,  <70.018425, 56.715527, 58.895996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.652443, 56.735195, 58.735786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128644, 0.905220, 0.405003,
		0.382481, 0.422089, -0.821918,
		-0.914964, 0.049171, -0.400529,
		69.377953, 56.749947, 58.615627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.973534, 57.411304, 58.652287>,  <70.018425, 56.715527, 58.895996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.973534, 57.411304, 58.652287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.609581, 57.257111, 58.713638>,  <69.391212, 57.164593, 58.750450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.609581, 57.257111, 58.713638>,  <69.973534, 57.411304, 58.652287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.609581, 57.257111, 58.713638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286872, 0.851639, 0.438653,
		-0.299718, 0.355120, -0.885471,
		-0.909876, -0.385489, 0.153378,
		69.336617, 57.141464, 58.759651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.928375, 58.046391, 58.793468>,  <69.973534, 57.411304, 58.652287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.928375, 58.046391, 58.793468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.241943, 58.015434, 58.547058>,  <70.430084, 57.996861, 58.399212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.241943, 58.015434, 58.547058>,  <69.928375, 58.046391, 58.793468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.241943, 58.015434, 58.547058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370705, -0.854270, -0.364419,
		-0.498049, 0.514037, -0.698365,
		0.783917, -0.077389, -0.616024,
		70.477119, 57.992218, 58.362251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.535233, 58.367882, 59.283607>,  <69.928375, 58.046391, 58.793468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.535233, 58.367882, 59.283607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.450027, 58.365211, 59.674416>,  <70.398903, 58.363609, 59.908901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.450027, 58.365211, 59.674416>,  <70.535233, 58.367882, 59.283607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.450027, 58.365211, 59.674416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362089, -0.928234, -0.085286,
		0.907476, -0.371938, 0.195317,
		-0.213021, -0.006673, 0.977025,
		70.386124, 58.363209, 59.967522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.986740, 58.987587, 59.126095>,  <70.535233, 58.367882, 59.283607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.986740, 58.987587, 59.126095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.965736, 59.316185, 59.353210>,  <70.953133, 59.513344, 59.489479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.965736, 59.316185, 59.353210>,  <70.986740, 58.987587, 59.126095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.965736, 59.316185, 59.353210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747489, -0.344695, 0.567843,
		0.662195, 0.454236, -0.595959,
		-0.052510, 0.821496, 0.567792,
		70.949982, 59.562634, 59.523548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.551003, 59.323479, 59.278923>,  <70.986740, 58.987587, 59.126095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.551003, 59.323479, 59.278923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.342651, 59.393265, 59.613167>,  <71.217644, 59.435139, 59.813713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.342651, 59.393265, 59.613167>,  <71.551003, 59.323479, 59.278923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.342651, 59.393265, 59.613167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767237, -0.333435, 0.547876,
		0.374210, 0.926489, 0.039819,
		-0.520879, 0.174470, 0.835611,
		71.186386, 59.445606, 59.863850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.991035, 59.565697, 59.771473>,  <71.551003, 59.323479, 59.278923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.991035, 59.565697, 59.771473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.707535, 59.434048, 60.021065>,  <71.537437, 59.355061, 60.170818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.707535, 59.434048, 60.021065>,  <71.991035, 59.565697, 59.771473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.707535, 59.434048, 60.021065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704500, -0.376247, 0.601762,
		0.036719, 0.866094, 0.498531,
		-0.708753, -0.329119, 0.623979,
		71.494911, 59.335312, 60.208260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.286583, 59.131420, 60.367168>,  <71.991035, 59.565697, 59.771473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.286583, 59.131420, 60.367168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.913589, 59.151001, 60.510315>,  <71.689789, 59.162750, 60.596203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.913589, 59.151001, 60.510315>,  <72.286583, 59.131420, 60.367168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.913589, 59.151001, 60.510315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256452, -0.607986, 0.751389,
		0.254358, 0.792437, 0.554388,
		-0.932488, 0.048948, 0.357868,
		71.633842, 59.165684, 60.617676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.608200, 58.439953, 60.354050>,  <72.286583, 59.131420, 60.367168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.608200, 58.439953, 60.354050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.561844, 58.328724, 59.972633>,  <72.534027, 58.261986, 59.743782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.561844, 58.328724, 59.972633>,  <72.608200, 58.439953, 60.354050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.561844, 58.328724, 59.972633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735574, -0.669143, 0.105732,
		-0.667458, -0.689148, 0.282091,
		-0.115894, -0.278071, -0.953544,
		72.527077, 58.245304, 59.686569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.508804, 57.750229, 60.352009>,  <72.608200, 58.439953, 60.354050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.508804, 57.750229, 60.352009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.668732, 57.859104, 60.001907>,  <72.764687, 57.924427, 59.791847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.668732, 57.859104, 60.001907>,  <72.508804, 57.750229, 60.352009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.668732, 57.859104, 60.001907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760388, -0.631695, 0.150902,
		-0.511819, -0.725863, -0.459526,
		0.399814, 0.272184, -0.875251,
		72.788673, 57.940758, 59.739330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
