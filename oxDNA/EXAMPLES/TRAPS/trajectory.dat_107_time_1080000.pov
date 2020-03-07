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
	<36.180927, 52.881035, 50.155674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379551, 52.572746, 50.315384>,  <36.498726, 52.387772, 50.411209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379551, 52.572746, 50.315384>,  <36.180927, 52.881035, 50.155674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379551, 52.572746, 50.315384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736296, 0.617602, 0.276470,
		-0.459674, 0.156701, 0.874154,
		0.496557, -0.770722, 0.399274,
		36.528519, 52.341530, 50.435165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437344, 53.155769, 50.887676>,  <36.180927, 52.881035, 50.155674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437344, 53.155769, 50.887676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667587, 52.895763, 50.689217>,  <36.805733, 52.739761, 50.570141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667587, 52.895763, 50.689217>,  <36.437344, 53.155769, 50.887676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667587, 52.895763, 50.689217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811978, 0.526145, 0.252714,
		0.096777, -0.548323, 0.830648,
		0.575610, -0.650010, -0.496145,
		36.840271, 52.700760, 50.540375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926636, 52.883537, 51.318825>,  <36.437344, 53.155769, 50.887676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926636, 52.883537, 51.318825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077358, 52.921906, 50.950298>,  <37.167789, 52.944927, 50.729183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077358, 52.921906, 50.950298>,  <36.926636, 52.883537, 51.318825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077358, 52.921906, 50.950298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804391, 0.459319, 0.376803,
		0.459319, -0.883078, 0.095918,
		-0.376803, -0.095918, 0.921314,
		37.190399, 52.950680, 50.673904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559666, 52.666332, 51.434639>,  <36.926636, 52.883537, 51.318825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559666, 52.666332, 51.434639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519512, 52.911488, 51.121132>,  <37.495422, 53.058578, 50.933025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519512, 52.911488, 51.121132>,  <37.559666, 52.666332, 51.434639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519512, 52.911488, 51.121132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908033, 0.378432, 0.179626,
		0.406694, -0.693658, -0.594507,
		-0.100382, 0.612884, -0.783771,
		37.489399, 53.095352, 50.886002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192619, 52.694736, 50.926315>,  <37.559666, 52.666332, 51.434639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192619, 52.694736, 50.926315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013340, 53.051876, 50.908722>,  <37.905773, 53.266159, 50.898167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013340, 53.051876, 50.908722>,  <38.192619, 52.694736, 50.926315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013340, 53.051876, 50.908722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890286, 0.450270, 0.068174,
		0.080673, -0.008602, -0.996704,
		-0.448200, 0.892851, -0.043983,
		37.878880, 53.319733, 50.895527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347996, 52.987717, 51.712936>,  <38.192619, 52.694736, 50.926315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347996, 52.987717, 51.712936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706871, 52.830688, 51.793869>,  <38.922195, 52.736473, 51.842430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706871, 52.830688, 51.793869>,  <38.347996, 52.987717, 51.712936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706871, 52.830688, 51.793869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437876, 0.730943, -0.523437,
		0.057591, 0.558220, 0.827692,
		0.897189, -0.392571, 0.202335,
		38.976028, 52.712917, 51.854568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768330, 53.456688, 51.974609>,  <38.347996, 52.987717, 51.712936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768330, 53.456688, 51.974609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016541, 53.199017, 51.795734>,  <39.165466, 53.044415, 51.688408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016541, 53.199017, 51.795734>,  <38.768330, 53.456688, 51.974609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016541, 53.199017, 51.795734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408262, 0.752265, -0.517126,
		0.669525, 0.138323, 0.729797,
		0.620531, -0.644177, -0.447188,
		39.202702, 53.005764, 51.661579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327011, 53.965775, 51.825920>,  <38.768330, 53.456688, 51.974609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327011, 53.965775, 51.825920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366413, 53.626884, 51.617111>,  <39.390053, 53.423550, 51.491825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366413, 53.626884, 51.617111>,  <39.327011, 53.965775, 51.825920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366413, 53.626884, 51.617111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351554, 0.520376, -0.778215,
		0.930971, -0.106862, 0.349104,
		0.098504, -0.847225, -0.522022,
		39.395966, 53.372719, 51.460503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053680, 53.803593, 51.666031>,  <39.327011, 53.965775, 51.825920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053680, 53.803593, 51.666031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780487, 53.678802, 51.401848>,  <39.616570, 53.603928, 51.243340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780487, 53.678802, 51.401848>,  <40.053680, 53.803593, 51.666031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780487, 53.678802, 51.401848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442175, 0.543108, -0.713803,
		0.581389, -0.779554, -0.232987,
		-0.682984, -0.311976, -0.660457,
		39.575592, 53.585213, 51.203712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471130, 53.596085, 51.107170>,  <40.053680, 53.803593, 51.666031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471130, 53.596085, 51.107170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103634, 53.619366, 50.950947>,  <39.883137, 53.633335, 50.857212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103634, 53.619366, 50.950947>,  <40.471130, 53.596085, 51.107170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103634, 53.619366, 50.950947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385323, 0.348315, -0.854519,
		0.086300, -0.935569, -0.342438,
		-0.918738, 0.058204, -0.390556,
		39.828014, 53.636826, 50.833778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482040, 53.242687, 50.484665>,  <40.471130, 53.596085, 51.107170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482040, 53.242687, 50.484665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193832, 53.517929, 50.450348>,  <40.020908, 53.683075, 50.429756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193832, 53.517929, 50.450348>,  <40.482040, 53.242687, 50.484665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193832, 53.517929, 50.450348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449494, 0.369251, -0.813393,
		-0.528023, -0.624629, -0.575353,
		-0.720518, 0.688108, -0.085793,
		39.977676, 53.724361, 50.424610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141098, 53.498268, 50.125038>,  <40.482040, 53.242687, 50.484665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141098, 53.498268, 50.125038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429928, 53.658287, 49.899269>,  <41.603226, 53.754299, 49.763809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429928, 53.658287, 49.899269>,  <41.141098, 53.498268, 50.125038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429928, 53.658287, 49.899269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306539, 0.546378, 0.779426,
		0.620195, -0.735820, 0.271895,
		0.722075, 0.400050, -0.564418,
		41.646549, 53.778301, 49.729942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775661, 53.576340, 50.439301>,  <41.141098, 53.498268, 50.125038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775661, 53.576340, 50.439301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868340, 53.862923, 50.176086>,  <41.923946, 54.034870, 50.018158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868340, 53.862923, 50.176086>,  <41.775661, 53.576340, 50.439301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868340, 53.862923, 50.176086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244913, 0.611691, 0.752231,
		0.941454, -0.335448, -0.033745,
		0.231693, 0.716456, -0.658035,
		41.937847, 54.077858, 49.978676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484722, 53.827675, 50.419155>,  <41.775661, 53.576340, 50.439301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484722, 53.827675, 50.419155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217407, 54.113522, 50.336487>,  <42.057018, 54.285030, 50.286884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217407, 54.113522, 50.336487>,  <42.484722, 53.827675, 50.419155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217407, 54.113522, 50.336487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282766, 0.500997, 0.817952,
		0.688064, 0.488189, -0.536880,
		-0.668290, 0.714614, -0.206674,
		42.016922, 54.327908, 50.274483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206814, 53.927280, 50.464916>,  <42.484722, 53.827675, 50.419155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206814, 53.927280, 50.464916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049988, 54.248886, 50.643734>,  <42.955891, 54.441849, 50.751022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049988, 54.248886, 50.643734>,  <43.206814, 53.927280, 50.464916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049988, 54.248886, 50.643734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105851, -0.522149, 0.846260,
		0.913826, 0.284473, 0.289824,
		-0.392070, 0.804012, 0.447041,
		42.932365, 54.490089, 50.777847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846336, 54.220448, 50.818401>,  <43.206814, 53.927280, 50.464916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846336, 54.220448, 50.818401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484402, 54.172405, 50.981789>,  <43.267242, 54.143578, 51.079823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484402, 54.172405, 50.981789>,  <43.846336, 54.220448, 50.818401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484402, 54.172405, 50.981789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375836, -0.676116, 0.633730,
		0.200057, 0.726939, 0.656915,
		-0.904834, -0.120110, 0.408472,
		43.212952, 54.136372, 51.104332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737770, 54.420063, 51.615692>,  <43.846336, 54.220448, 50.818401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737770, 54.420063, 51.615692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495815, 54.113945, 51.527653>,  <43.350643, 53.930275, 51.474831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495815, 54.113945, 51.527653>,  <43.737770, 54.420063, 51.615692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.495815, 54.113945, 51.527653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538318, -0.596651, 0.595165,
		-0.586794, 0.241526, 0.772876,
		-0.604885, -0.765292, -0.220094,
		43.314350, 53.884357, 51.461624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326523, 54.142162, 52.177464>,  <43.737770, 54.420063, 51.615692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326523, 54.142162, 52.177464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424393, 53.855396, 51.916336>,  <43.483116, 53.683338, 51.759659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424393, 53.855396, 51.916336>,  <43.326523, 54.142162, 52.177464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424393, 53.855396, 51.916336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472215, -0.499933, 0.726003,
		-0.846845, -0.485907, 0.216214,
		0.244678, -0.716911, -0.652818,
		43.497795, 53.640324, 51.720490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235577, 53.335857, 52.363464>,  <43.326523, 54.142162, 52.177464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235577, 53.335857, 52.363464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571884, 53.376789, 52.150810>,  <43.773666, 53.401348, 52.023216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571884, 53.376789, 52.150810>,  <43.235577, 53.335857, 52.363464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571884, 53.376789, 52.150810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524312, -0.398653, 0.752444,
		-0.134940, -0.911375, -0.388828,
		0.840766, 0.102333, -0.531639,
		43.824116, 53.407490, 51.991318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.532619, 52.694328, 52.258972>,  <43.235577, 53.335857, 52.363464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.532619, 52.694328, 52.258972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799347, 52.992138, 52.271843>,  <43.959385, 53.170822, 52.279564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799347, 52.992138, 52.271843>,  <43.532619, 52.694328, 52.258972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799347, 52.992138, 52.271843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501623, -0.480364, 0.719462,
		0.551111, -0.463613, -0.693787,
		0.666822, 0.744523, 0.032174,
		43.999393, 53.215496, 52.281494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255497, 52.417416, 52.082142>,  <43.532619, 52.694328, 52.258972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255497, 52.417416, 52.082142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191628, 52.716103, 52.340416>,  <44.153305, 52.895317, 52.495380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191628, 52.716103, 52.340416>,  <44.255497, 52.417416, 52.082142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191628, 52.716103, 52.340416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178847, -0.621375, 0.762828,
		0.970834, 0.237284, -0.034331,
		-0.159674, 0.746720, 0.645689,
		44.143726, 52.940117, 52.534122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803970, 52.455837, 52.553646>,  <44.255497, 52.417416, 52.082142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803970, 52.455837, 52.553646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493279, 52.637173, 52.728539>,  <44.306862, 52.745972, 52.833473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493279, 52.637173, 52.728539>,  <44.803970, 52.455837, 52.553646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493279, 52.637173, 52.728539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142161, -0.550098, 0.822911,
		0.613575, 0.701340, 0.362833,
		-0.776734, 0.453337, 0.437230,
		44.260258, 52.773174, 52.859707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.530430, 52.226280, 52.516560>,  <44.803970, 52.455837, 52.553646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.530430, 52.226280, 52.516560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703125, 51.992836, 52.241459>,  <45.806740, 51.852768, 52.076397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703125, 51.992836, 52.241459>,  <45.530430, 52.226280, 52.516560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.703125, 51.992836, 52.241459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607015, -0.751968, 0.257052,
		-0.667185, 0.306495, -0.678914,
		0.431737, -0.583613, -0.687750,
		45.832645, 51.817753, 52.035133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195049, 52.207638, 52.665340>,  <45.530430, 52.226280, 52.516560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195049, 52.207638, 52.665340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.395710, 52.270473, 53.005615>,  <46.516106, 52.308174, 53.209782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.395710, 52.270473, 53.005615>,  <46.195049, 52.207638, 52.665340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.395710, 52.270473, 53.005615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507550, 0.742882, -0.436484,
		-0.700530, 0.650729, 0.292933,
		0.501648, 0.157092, 0.850689,
		46.546204, 52.317600, 53.260822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.082870, 52.969875, 52.787964>,  <46.195049, 52.207638, 52.665340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.082870, 52.969875, 52.787964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.407345, 52.785553, 52.931984>,  <46.602028, 52.674957, 53.018394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.407345, 52.785553, 52.931984>,  <46.082870, 52.969875, 52.787964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.407345, 52.785553, 52.931984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575399, 0.519042, -0.632069,
		0.104382, 0.719897, 0.686188,
		0.811184, -0.460808, 0.360050,
		46.650700, 52.647312, 53.039997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.642231, 53.412350, 52.708298>,  <46.082870, 52.969875, 52.787964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.642231, 53.412350, 52.708298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.847198, 53.080162, 52.795704>,  <46.970181, 52.880852, 52.848148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.847198, 53.080162, 52.795704>,  <46.642231, 53.412350, 52.708298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.847198, 53.080162, 52.795704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777726, 0.340915, -0.528128,
		0.364095, 0.440573, 0.820567,
		0.512422, -0.830465, 0.218519,
		47.000927, 52.831024, 52.861259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.351738, 53.314556, 52.776073>,  <46.642231, 53.412350, 52.708298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.351738, 53.314556, 52.776073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.554462, 53.579010, 52.997360>,  <47.676098, 53.737682, 53.130131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.554462, 53.579010, 52.997360>,  <47.351738, 53.314556, 52.776073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.554462, 53.579010, 52.997360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855039, -0.303794, -0.420259,
		-0.109785, 0.686010, -0.719262,
		0.506809, 0.661135, 0.553213,
		47.706505, 53.777351, 53.163322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.796528, 53.770493, 52.381752>,  <47.351738, 53.314556, 52.776073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.796528, 53.770493, 52.381752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.956688, 53.754852, 52.747955>,  <48.052784, 53.745468, 52.967678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.956688, 53.754852, 52.747955>,  <47.796528, 53.770493, 52.381752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.956688, 53.754852, 52.747955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840427, -0.382500, -0.383895,
		0.365191, 0.923128, -0.120292,
		0.400396, -0.039098, 0.915508,
		48.076805, 53.743122, 53.022606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.436665, 54.310993, 52.549206>,  <47.796528, 53.770493, 52.381752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.436665, 54.310993, 52.549206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.455708, 53.963936, 52.747166>,  <48.467133, 53.755699, 52.865940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.455708, 53.963936, 52.747166>,  <48.436665, 54.310993, 52.549206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.455708, 53.963936, 52.747166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947430, -0.117719, -0.297521,
		0.316402, 0.483046, 0.816429,
		0.047607, -0.867645, 0.494899,
		48.469990, 53.703644, 52.895634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.614315, 53.526772, 52.435600>,  <48.436665, 54.310993, 52.549206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.614315, 53.526772, 52.435600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.378323, 53.214928, 52.351570>,  <48.236725, 53.027821, 52.301151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.378323, 53.214928, 52.351570>,  <48.614315, 53.526772, 52.435600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.378323, 53.214928, 52.351570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673324, -0.331471, -0.660880,
		0.445593, -0.531356, 0.720491,
		-0.589985, -0.779607, -0.210073,
		48.201328, 52.981045, 52.288548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.017162, 53.068417, 52.954693>,  <48.614315, 53.526772, 52.435600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.017162, 53.068417, 52.954693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.860199, 52.720207, 53.073486>,  <48.766022, 52.511280, 53.144764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.860199, 52.720207, 53.073486>,  <49.017162, 53.068417, 52.954693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.860199, 52.720207, 53.073486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437807, 0.107187, 0.892657,
		-0.808913, 0.480311, 0.339061,
		-0.392410, -0.870524, 0.296988,
		48.742477, 52.459049, 53.162582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.666046, 53.208420, 53.479965>,  <49.017162, 53.068417, 52.954693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.666046, 53.208420, 53.479965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.798702, 52.831299, 53.493477>,  <48.878296, 52.605026, 53.501583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.798702, 52.831299, 53.493477>,  <48.666046, 53.208420, 53.479965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.798702, 52.831299, 53.493477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234910, 0.117202, 0.964925,
		-0.913692, -0.312071, 0.260342,
		0.331638, -0.942802, 0.033778,
		48.898193, 52.548458, 53.503609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.397400, 52.820171, 54.042828>,  <48.666046, 53.208420, 53.479965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.397400, 52.820171, 54.042828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.750355, 52.662033, 53.940777>,  <48.962128, 52.567150, 53.879547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.750355, 52.662033, 53.940777>,  <48.397400, 52.820171, 54.042828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.750355, 52.662033, 53.940777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382385, 0.286574, 0.878440,
		-0.274177, -0.872683, 0.404045,
		0.882388, -0.395349, -0.255129,
		49.015072, 52.543430, 53.864239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.642883, 52.460560, 54.638359>,  <48.397400, 52.820171, 54.042828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.642883, 52.460560, 54.638359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.949615, 52.577850, 54.409981>,  <49.133656, 52.648224, 54.272953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.949615, 52.577850, 54.409981>,  <48.642883, 52.460560, 54.638359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.949615, 52.577850, 54.409981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422243, 0.439489, 0.792818,
		0.483404, -0.849039, 0.213201,
		0.766832, 0.293229, -0.570951,
		49.179665, 52.665817, 54.238697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.366203, 52.217159, 54.853077>,  <48.642883, 52.460560, 54.638359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.366203, 52.217159, 54.853077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.305893, 52.576710, 54.688503>,  <49.269707, 52.792442, 54.589760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.305893, 52.576710, 54.688503>,  <49.366203, 52.217159, 54.853077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.305893, 52.576710, 54.688503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356740, 0.437625, 0.825361,
		0.921956, -0.022331, -0.386650,
		-0.150776, 0.898880, -0.411438,
		49.260658, 52.846375, 54.565071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.928867, 52.505589, 55.060768>,  <49.366203, 52.217159, 54.853077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.928867, 52.505589, 55.060768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.150776, 52.173527, 55.082909>,  <50.283920, 51.974289, 55.096191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.150776, 52.173527, 55.082909>,  <49.928867, 52.505589, 55.060768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.150776, 52.173527, 55.082909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154500, 0.168159, 0.973577,
		-0.817531, -0.531563, 0.221550,
		0.554774, -0.830159, 0.055348,
		50.317207, 51.924480, 55.099514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.774155, 52.034145, 55.603802>,  <49.928867, 52.505589, 55.060768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.774155, 52.034145, 55.603802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.171188, 52.021637, 55.556808>,  <50.409409, 52.014130, 55.528614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.171188, 52.021637, 55.556808>,  <49.774155, 52.034145, 55.603802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.171188, 52.021637, 55.556808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117943, 0.013423, 0.992930,
		-0.029481, -0.999420, 0.017013,
		0.992583, -0.031279, -0.117479,
		50.468964, 52.012257, 55.521564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.175652, 51.445515, 55.961887>,  <49.774155, 52.034145, 55.603802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.175652, 51.445515, 55.961887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.396908, 51.778271, 55.943993>,  <50.529659, 51.977924, 55.933254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.396908, 51.778271, 55.943993>,  <50.175652, 51.445515, 55.961887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.396908, 51.778271, 55.943993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113335, -0.021941, 0.993315,
		0.825344, -0.554511, -0.106418,
		0.553139, 0.831887, -0.044737,
		50.562851, 52.027836, 55.930573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.709530, 51.080967, 55.420681>,  <50.175652, 51.445515, 55.961887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.709530, 51.080967, 55.420681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.412193, 50.879715, 55.244362>,  <49.233791, 50.758965, 55.138573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.412193, 50.879715, 55.244362>,  <49.709530, 51.080967, 55.420681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.412193, 50.879715, 55.244362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665061, -0.485315, -0.567595,
		0.071650, -0.715073, 0.695368,
		-0.743344, -0.503131, -0.440794,
		49.189190, 50.728775, 55.112125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.607780, 50.281853, 55.604038>,  <49.709530, 51.080967, 55.420681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.607780, 50.281853, 55.604038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.556194, 50.402649, 55.226219>,  <49.525242, 50.475128, 54.999527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.556194, 50.402649, 55.226219>,  <49.607780, 50.281853, 55.604038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.556194, 50.402649, 55.226219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756575, -0.585791, -0.290590,
		-0.641062, -0.752098, -0.152929,
		-0.128968, 0.301989, -0.944547,
		49.517506, 50.493244, 54.942856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.644909, 49.676769, 55.139328>,  <49.607780, 50.281853, 55.604038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.644909, 49.676769, 55.139328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.747150, 50.012978, 54.948250>,  <49.808495, 50.214703, 54.833603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.747150, 50.012978, 54.948250>,  <49.644909, 49.676769, 55.139328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.747150, 50.012978, 54.948250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749951, -0.484205, -0.450689,
		-0.610114, -0.243046, -0.754116,
		0.255609, 0.840520, -0.477692,
		49.823833, 50.265133, 54.804943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.135956, 49.414124, 54.550213>,  <49.644909, 49.676769, 55.139328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.135956, 49.414124, 54.550213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.149910, 49.813766, 54.540672>,  <50.158283, 50.053551, 54.534946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.149910, 49.813766, 54.540672>,  <50.135956, 49.414124, 54.550213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.149910, 49.813766, 54.540672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863946, -0.042148, -0.501817,
		-0.502374, -0.003103, -0.864645,
		0.034886, 0.999107, -0.023855,
		50.160378, 50.113499, 54.533516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.087643, 49.802338, 53.907799>,  <50.135956, 49.414124, 54.550213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.087643, 49.802338, 53.907799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.323193, 49.971191, 54.183491>,  <50.464523, 50.072502, 54.348904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.323193, 49.971191, 54.183491>,  <50.087643, 49.802338, 53.907799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.323193, 49.971191, 54.183491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794717, -0.147157, -0.588871,
		-0.147157, 0.894511, -0.422132,
		0.588871, 0.422132, 0.689228,
		50.499855, 50.097832, 54.390259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.505051, 50.341473, 53.616947>,  <50.087643, 49.802338, 53.907799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.505051, 50.341473, 53.616947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.689583, 50.189091, 53.937458>,  <50.800304, 50.097660, 54.129765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.689583, 50.189091, 53.937458>,  <50.505051, 50.341473, 53.616947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.689583, 50.189091, 53.937458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839141, -0.105934, -0.533499,
		0.288122, 0.918505, 0.270804,
		0.461334, -0.380955, 0.801277,
		50.827984, 50.074802, 54.177841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.223736, 50.688797, 53.775928>,  <50.505051, 50.341473, 53.616947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.223736, 50.688797, 53.775928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.195225, 50.300537, 53.867805>,  <51.178120, 50.067581, 53.922932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.195225, 50.300537, 53.867805>,  <51.223736, 50.688797, 53.775928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.195225, 50.300537, 53.867805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861928, -0.175829, -0.475567,
		0.501996, 0.164081, 0.849163,
		-0.071276, -0.970650, 0.229691,
		51.173843, 50.009342, 53.936714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.808975, 50.597080, 54.158031>,  <51.223736, 50.688797, 53.775928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.808975, 50.597080, 54.158031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.668407, 50.284195, 53.952255>,  <51.584068, 50.096466, 53.828789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.668407, 50.284195, 53.952255>,  <51.808975, 50.597080, 54.158031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.668407, 50.284195, 53.952255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911687, -0.160957, -0.378046,
		0.212909, -0.601863, 0.769695,
		-0.351420, -0.782211, -0.514442,
		51.562981, 50.049530, 53.797924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.196033, 50.281620, 54.615448>,  <51.808975, 50.597080, 54.158031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.196033, 50.281620, 54.615448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.409893, 50.246658, 54.951664>,  <52.538208, 50.225681, 55.153393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.409893, 50.246658, 54.951664>,  <52.196033, 50.281620, 54.615448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.409893, 50.246658, 54.951664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061802, 0.987929, 0.142045,
		-0.842811, -0.127891, 0.522795,
		0.534650, -0.087407, 0.840541,
		52.570290, 50.220436, 55.203827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.798870, 50.638592, 55.140587>,  <52.196033, 50.281620, 54.615448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.798870, 50.638592, 55.140587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.191669, 50.636715, 55.216118>,  <52.427349, 50.635590, 55.261436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.191669, 50.636715, 55.216118>,  <51.798870, 50.638592, 55.140587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.191669, 50.636715, 55.216118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035727, 0.977038, 0.210047,
		-0.185480, -0.213012, 0.959283,
		0.981998, -0.004688, 0.188831,
		52.486267, 50.635307, 55.272766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.910801, 51.004162, 55.823162>,  <51.798870, 50.638592, 55.140587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.910801, 51.004162, 55.823162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.281189, 50.979202, 55.674194>,  <52.503422, 50.964226, 55.584816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.281189, 50.979202, 55.674194>,  <51.910801, 51.004162, 55.823162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.281189, 50.979202, 55.674194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287373, 0.756237, 0.587812,
		0.244957, -0.651316, 0.718180,
		0.925966, -0.062396, -0.372416,
		52.558979, 50.960484, 55.562469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.208946, 51.441036, 56.188583>,  <51.910801, 51.004162, 55.823162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.208946, 51.441036, 56.188583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.530453, 51.361607, 55.964256>,  <52.723358, 51.313950, 55.829659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.530453, 51.361607, 55.964256>,  <52.208946, 51.441036, 56.188583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.530453, 51.361607, 55.964256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442850, 0.829177, 0.341101,
		0.397286, -0.522527, 0.754407,
		0.803771, -0.198575, -0.560821,
		52.771584, 51.302032, 55.796009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.717731, 51.443275, 56.638359>,  <52.208946, 51.441036, 56.188583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.717731, 51.443275, 56.638359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.857162, 51.526516, 56.272804>,  <52.940823, 51.576462, 56.053471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.857162, 51.526516, 56.272804>,  <52.717731, 51.443275, 56.638359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.857162, 51.526516, 56.272804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357030, 0.872049, 0.334752,
		0.866613, -0.442974, 0.229685,
		0.348584, 0.208096, -0.913885,
		52.961735, 51.588947, 55.998638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.380745, 51.588268, 56.686203>,  <52.717731, 51.443275, 56.638359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.380745, 51.588268, 56.686203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.215500, 51.790009, 56.382896>,  <53.116352, 51.911053, 56.200912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.215500, 51.790009, 56.382896>,  <53.380745, 51.588268, 56.686203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.215500, 51.790009, 56.382896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324054, 0.859550, 0.395175,
		0.851076, -0.082469, -0.518526,
		-0.413109, 0.504354, -0.758266,
		53.091568, 51.941315, 56.155415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.921028, 51.939453, 56.447971>,  <53.380745, 51.588268, 56.686203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.921028, 51.939453, 56.447971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.589180, 52.118809, 56.314896>,  <53.390072, 52.226421, 56.235050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.589180, 52.118809, 56.314896>,  <53.921028, 51.939453, 56.447971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.589180, 52.118809, 56.314896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348019, 0.881232, 0.319864,
		0.436599, 0.149583, -0.887134,
		-0.829617, 0.448391, -0.332687,
		53.340294, 52.253326, 56.215088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.014874, 52.514706, 55.917683>,  <53.921028, 51.939453, 56.447971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.014874, 52.514706, 55.917683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.727139, 52.552395, 56.192978>,  <53.554497, 52.575008, 56.358154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.727139, 52.552395, 56.192978>,  <54.014874, 52.514706, 55.917683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.727139, 52.552395, 56.192978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362574, 0.896024, 0.256283,
		-0.592534, 0.433892, -0.678706,
		-0.719336, 0.094225, 0.688242,
		53.511337, 52.580662, 56.399452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.114086, 52.618927, 55.212723>,  <54.014874, 52.514706, 55.917683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.114086, 52.618927, 55.212723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.492691, 52.490097, 55.204979>,  <54.719856, 52.412800, 55.200333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.492691, 52.490097, 55.204979>,  <54.114086, 52.618927, 55.212723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.492691, 52.490097, 55.204979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152799, 0.500276, -0.852277,
		0.284184, 0.803736, 0.522732,
		0.946516, -0.322076, -0.019361,
		54.776646, 52.393475, 55.199169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.582367, 53.151596, 55.124928>,  <54.114086, 52.618927, 55.212723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.582367, 53.151596, 55.124928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.803963, 52.840015, 55.007408>,  <54.936920, 52.653065, 54.936897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.803963, 52.840015, 55.007408>,  <54.582367, 53.151596, 55.124928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.803963, 52.840015, 55.007408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281403, 0.507341, -0.814505,
		0.783520, 0.368555, 0.500264,
		0.553994, -0.778956, -0.293799,
		54.970161, 52.606327, 54.919270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.376854, 53.295700, 55.120125>,  <54.582367, 53.151596, 55.124928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.376854, 53.295700, 55.120125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.236191, 53.050968, 54.836720>,  <55.151791, 52.904129, 54.666676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.236191, 53.050968, 54.836720>,  <55.376854, 53.295700, 55.120125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.236191, 53.050968, 54.836720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357517, 0.611711, -0.705685,
		0.865168, -0.501469, 0.003626,
		-0.351661, -0.611833, -0.708516,
		55.130692, 52.867420, 54.624165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.736858, 53.737324, 54.732124>,  <55.376854, 53.295700, 55.120125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.736858, 53.737324, 54.732124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.044632, 53.809231, 54.977291>,  <56.229294, 53.852375, 55.124390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.044632, 53.809231, 54.977291>,  <55.736858, 53.737324, 54.732124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.044632, 53.809231, 54.977291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410202, -0.874612, -0.258435,
		0.489605, 0.450266, -0.746691,
		0.769429, 0.179764, 0.612914,
		56.275459, 53.863159, 55.161167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.428932, 53.679932, 54.329491>,  <55.736858, 53.737324, 54.732124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.428932, 53.679932, 54.329491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.459381, 53.618961, 54.723644>,  <56.477650, 53.582378, 54.960136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.459381, 53.618961, 54.723644>,  <56.428932, 53.679932, 54.329491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.459381, 53.618961, 54.723644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387230, -0.906159, -0.170084,
		0.918835, 0.394516, -0.009959,
		0.076126, -0.152423, 0.985379,
		56.482220, 53.573235, 55.019257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.045425, 53.365959, 54.467873>,  <56.428932, 53.679932, 54.329491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.045425, 53.365959, 54.467873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.814796, 53.240654, 54.769718>,  <56.676418, 53.165470, 54.950825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.814796, 53.240654, 54.769718>,  <57.045425, 53.365959, 54.467873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.814796, 53.240654, 54.769718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429160, -0.902028, -0.046552,
		0.695262, 0.297008, 0.654520,
		-0.576569, -0.313259, 0.754610,
		56.641827, 53.146675, 54.996101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.484470, 53.134396, 54.962368>,  <57.045425, 53.365959, 54.467873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.484470, 53.134396, 54.962368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.134857, 52.941284, 54.940498>,  <56.925087, 52.825417, 54.927376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.134857, 52.941284, 54.940498>,  <57.484470, 53.134396, 54.962368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.134857, 52.941284, 54.940498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484877, -0.859554, -0.161437,
		0.030947, -0.167609, 0.985368,
		-0.874035, -0.482778, -0.054670,
		56.872646, 52.796452, 54.924099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.406567, 53.261021, 55.637745>,  <57.484470, 53.134396, 54.962368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.406567, 53.261021, 55.637745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.745461, 53.437782, 55.519821>,  <57.948795, 53.543839, 55.449066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.745461, 53.437782, 55.519821>,  <57.406567, 53.261021, 55.637745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.745461, 53.437782, 55.519821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319908, 0.867485, 0.380957,
		0.424092, -0.228447, 0.876332,
		0.847234, 0.441906, -0.294811,
		57.999630, 53.570354, 55.431377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.282444, 53.999363, 55.674915>,  <57.406567, 53.261021, 55.637745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.282444, 53.999363, 55.674915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.076492, 53.778526, 55.412590>,  <56.952919, 53.646023, 55.255196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.076492, 53.778526, 55.412590>,  <57.282444, 53.999363, 55.674915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.076492, 53.778526, 55.412590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290352, -0.832102, 0.472549,
		-0.806592, 0.052893, 0.588737,
		-0.514884, -0.552095, -0.655809,
		56.922028, 53.612896, 55.215847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.399906, 54.732662, 55.893723>,  <57.282444, 53.999363, 55.674915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.399906, 54.732662, 55.893723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.058205, 54.694901, 56.098206>,  <56.853184, 54.672245, 56.220894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.058205, 54.694901, 56.098206>,  <57.399906, 54.732662, 55.893723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.058205, 54.694901, 56.098206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518528, -0.224819, 0.824976,
		0.037046, 0.969817, 0.241005,
		-0.854258, -0.094406, 0.511205,
		56.801926, 54.666580, 56.251568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.518032, 55.278557, 56.387741>,  <57.399906, 54.732662, 55.893723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.518032, 55.278557, 56.387741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.273048, 54.969231, 56.453316>,  <57.126057, 54.783634, 56.492661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.273048, 54.969231, 56.453316>,  <57.518032, 55.278557, 56.387741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.273048, 54.969231, 56.453316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560290, -0.278361, 0.780122,
		-0.557646, 0.569647, 0.603766,
		-0.612459, -0.773316, 0.163940,
		57.089310, 54.737236, 56.502499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.303410, 55.338768, 57.013439>,  <57.518032, 55.278557, 56.387741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.303410, 55.338768, 57.013439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.302048, 54.947815, 56.928864>,  <57.301231, 54.713242, 56.878117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.302048, 54.947815, 56.928864>,  <57.303410, 55.338768, 57.013439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.302048, 54.947815, 56.928864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586308, -0.173239, 0.791348,
		-0.810081, -0.121277, 0.573638,
		-0.003404, -0.977384, -0.211443,
		57.301025, 54.654598, 56.865429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.225239, 54.867641, 57.591473>,  <57.303410, 55.338768, 57.013439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.225239, 54.867641, 57.591473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.513054, 54.634895, 57.743103>,  <57.685745, 54.495247, 57.834080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.513054, 54.634895, 57.743103>,  <57.225239, 54.867641, 57.591473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.513054, 54.634895, 57.743103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386399, -0.118110, -0.914738,
		0.577023, 0.804666, 0.139846,
		0.719542, -0.581861, 0.379074,
		57.728916, 54.460339, 57.856827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.588421, 54.792423, 58.215858>,  <57.225239, 54.867641, 57.591473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.588421, 54.792423, 58.215858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.823380, 55.111118, 58.159027>,  <57.964355, 55.302334, 58.124928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.823380, 55.111118, 58.159027>,  <57.588421, 54.792423, 58.215858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.823380, 55.111118, 58.159027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373375, 0.422541, 0.825864,
		0.718026, -0.432059, 0.545678,
		0.587393, 0.796734, -0.142075,
		57.999596, 55.350140, 58.116405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.066822, 54.929714, 58.742710>,  <57.588421, 54.792423, 58.215858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.066822, 54.929714, 58.742710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.897362, 55.245155, 58.564438>,  <57.795685, 55.434422, 58.457474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.897362, 55.245155, 58.564438>,  <58.066822, 54.929714, 58.742710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.897362, 55.245155, 58.564438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307497, 0.337594, 0.889649,
		0.852037, 0.513943, 0.099471,
		-0.423648, 0.788602, -0.445679,
		57.770267, 55.481735, 58.430733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.234421, 55.574535, 58.945499>,  <58.066822, 54.929714, 58.742710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.234421, 55.574535, 58.945499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.861580, 55.645393, 58.819138>,  <57.637875, 55.687908, 58.743320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.861580, 55.645393, 58.819138>,  <58.234421, 55.574535, 58.945499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.861580, 55.645393, 58.819138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272392, 0.232002, 0.933798,
		0.238707, 0.956449, -0.167998,
		-0.932106, 0.177143, -0.315909,
		57.581947, 55.698536, 58.724365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.922386, 55.931152, 58.737408>,  <58.234421, 55.574535, 58.945499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.922386, 55.931152, 58.737408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.102547, 55.614685, 58.902908>,  <59.210644, 55.424805, 59.002209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.102547, 55.614685, 58.902908>,  <58.922386, 55.931152, 58.737408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.102547, 55.614685, 58.902908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742550, 0.074624, -0.665621,
		0.495743, 0.607027, 0.621094,
		0.450398, -0.791169, 0.413754,
		59.237667, 55.377335, 59.027035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.635410, 56.098198, 58.791752>,  <58.922386, 55.931152, 58.737408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.635410, 56.098198, 58.791752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.617996, 55.698723, 58.780930>,  <59.607548, 55.459038, 58.774437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.617996, 55.698723, 58.780930>,  <59.635410, 56.098198, 58.791752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.617996, 55.698723, 58.780930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720564, -0.012631, -0.693274,
		0.692021, -0.049676, 0.720167,
		-0.043536, -0.998686, -0.027054,
		59.604935, 55.399117, 58.772812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.367924, 56.207436, 59.042519>,  <59.635410, 56.098198, 58.791752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.367924, 56.207436, 59.042519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.465630, 56.330772, 59.410271>,  <60.524254, 56.404774, 59.630920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.465630, 56.330772, 59.410271>,  <60.367924, 56.207436, 59.042519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.465630, 56.330772, 59.410271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764399, 0.522161, -0.378209,
		-0.596682, 0.795157, -0.108150,
		0.244264, 0.308340, 0.919381,
		60.538910, 56.423275, 59.686085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.433475, 56.991047, 59.006050>,  <60.367924, 56.207436, 59.042519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.433475, 56.991047, 59.006050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.658913, 56.812950, 59.284363>,  <60.794174, 56.706093, 59.451351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.658913, 56.812950, 59.284363>,  <60.433475, 56.991047, 59.006050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.658913, 56.812950, 59.284363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785206, 0.550345, -0.283852,
		-0.256539, 0.706313, 0.659780,
		0.563595, -0.445244, 0.695786,
		60.827991, 56.679379, 59.493099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.286007, 57.086243, 59.022808>,  <60.433475, 56.991047, 59.006050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.286007, 57.086243, 59.022808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.369530, 57.233780, 59.385101>,  <61.419643, 57.322300, 59.602478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.369530, 57.233780, 59.385101>,  <61.286007, 57.086243, 59.022808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.369530, 57.233780, 59.385101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646551, -0.746934, 0.155119,
		0.733739, 0.553215, -0.394438,
		0.208805, 0.368841, 0.905736,
		61.432171, 57.344433, 59.656822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.018940, 56.965652, 59.115314>,  <61.286007, 57.086243, 59.022808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.018940, 56.965652, 59.115314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.842934, 57.010952, 59.471642>,  <61.737331, 57.038132, 59.685440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.842934, 57.010952, 59.471642>,  <62.018940, 56.965652, 59.115314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.842934, 57.010952, 59.471642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563917, -0.737171, 0.372259,
		0.698847, 0.666148, 0.260500,
		-0.440012, 0.113251, 0.890822,
		61.710930, 57.044926, 59.738888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.446991, 57.083515, 59.679138>,  <62.018940, 56.965652, 59.115314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.446991, 57.083515, 59.679138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.123917, 56.901810, 59.829491>,  <61.930073, 56.792786, 59.919701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.123917, 56.901810, 59.829491>,  <62.446991, 57.083515, 59.679138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.123917, 56.901810, 59.829491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585288, -0.694797, 0.417966,
		0.071293, 0.557584, 0.827054,
		-0.807685, -0.454266, 0.375881,
		61.881611, 56.765530, 59.942257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.256943, 57.217182, 59.889023>,  <62.446991, 57.083515, 59.679138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.256943, 57.217182, 59.889023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.531364, 57.235233, 59.598564>,  <63.696018, 57.246063, 59.424290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.531364, 57.235233, 59.598564>,  <63.256943, 57.217182, 59.889023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.531364, 57.235233, 59.598564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692267, 0.266548, 0.670611,
		0.223815, -0.962765, 0.151627,
		0.686056, 0.045127, -0.726148,
		63.737183, 57.248772, 59.380718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.919334, 56.641506, 59.900745>,  <63.256943, 57.217182, 59.889023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.919334, 56.641506, 59.900745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.988365, 57.009190, 59.759171>,  <64.029785, 57.229801, 59.674225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.988365, 57.009190, 59.759171>,  <63.919334, 56.641506, 59.900745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.988365, 57.009190, 59.759171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626564, 0.174810, 0.759512,
		0.760023, -0.352836, -0.545776,
		0.172576, 0.919211, -0.353934,
		64.040138, 57.284954, 59.652992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.666893, 56.811752, 59.848915>,  <63.919334, 56.641506, 59.900745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.666893, 56.811752, 59.848915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.460213, 57.151291, 59.893600>,  <64.336205, 57.355015, 59.920414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.460213, 57.151291, 59.893600>,  <64.666893, 56.811752, 59.848915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.460213, 57.151291, 59.893600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574674, 0.247123, 0.780180,
		0.634647, 0.467315, -0.615499,
		-0.516694, 0.848850, 0.111717,
		64.305206, 57.405945, 59.927116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.937424, 57.347328, 60.305752>,  <64.666893, 56.811752, 59.848915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.937424, 57.347328, 60.305752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.593025, 57.438332, 60.487701>,  <64.386383, 57.492935, 60.596870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.593025, 57.438332, 60.487701>,  <64.937424, 57.347328, 60.305752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.593025, 57.438332, 60.487701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383318, -0.878099, -0.286373,
		0.334272, -0.420930, 0.843256,
		-0.861005, 0.227509, 0.454874,
		64.334724, 57.506584, 60.624165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.724030, 57.313480, 60.052902>,  <64.937424, 57.347328, 60.305752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.724030, 57.313480, 60.052902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.921860, 57.661057, 60.060150>,  <66.040558, 57.869602, 60.064499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.921860, 57.661057, 60.060150>,  <65.724030, 57.313480, 60.052902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.921860, 57.661057, 60.060150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758961, -0.441957, 0.478176,
		0.423517, -0.222744, -0.878077,
		0.494583, 0.868942, 0.018122,
		66.070236, 57.921738, 60.065586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.490768, 57.218998, 59.898087>,  <65.724030, 57.313480, 60.052902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.490768, 57.218998, 59.898087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.410439, 57.530651, 60.135612>,  <66.362244, 57.717644, 60.278130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.410439, 57.530651, 60.135612>,  <66.490768, 57.218998, 59.898087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.410439, 57.530651, 60.135612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702530, -0.307910, 0.641594,
		0.682731, 0.546019, -0.485532,
		-0.200823, 0.779137, 0.593815,
		66.350189, 57.764393, 60.313759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.031319, 57.718246, 60.085190>,  <66.490768, 57.218998, 59.898087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.031319, 57.718246, 60.085190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.384872, 57.725662, 60.272133>,  <67.597000, 57.730114, 60.384296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.384872, 57.725662, 60.272133>,  <67.031319, 57.718246, 60.085190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.384872, 57.725662, 60.272133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433746, 0.341384, -0.833859,
		-0.175009, 0.939741, 0.293699,
		0.883876, 0.018542, 0.467354,
		67.650032, 57.731224, 60.412338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.338188, 58.411270, 60.049854>,  <67.031319, 57.718246, 60.085190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.338188, 58.411270, 60.049854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.643639, 58.153488, 60.065598>,  <67.826912, 57.998817, 60.075043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.643639, 58.153488, 60.065598>,  <67.338188, 58.411270, 60.049854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.643639, 58.153488, 60.065598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247710, 0.236138, -0.939616,
		0.596248, 0.727266, 0.339960,
		0.763629, -0.644455, 0.039354,
		67.872726, 57.960152, 60.077404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.919479, 58.747448, 59.788345>,  <67.338188, 58.411270, 60.049854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.919479, 58.747448, 59.788345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.955788, 58.353607, 59.728577>,  <67.977570, 58.117302, 59.692715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.955788, 58.353607, 59.728577>,  <67.919479, 58.747448, 59.788345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.955788, 58.353607, 59.728577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224680, 0.166420, -0.960116,
		0.970196, 0.053579, 0.236325,
		0.090771, -0.984598, -0.149422,
		67.983017, 58.058228, 59.683750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.594475, 58.585384, 59.577007>,  <67.919479, 58.747448, 59.788345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.594475, 58.585384, 59.577007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.301346, 58.371132, 59.409172>,  <68.125465, 58.242580, 59.308472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.301346, 58.371132, 59.409172>,  <68.594475, 58.585384, 59.577007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.301346, 58.371132, 59.409172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365844, 0.209759, -0.906730,
		0.573689, -0.817983, 0.042241,
		-0.732830, -0.535634, -0.419591,
		68.081497, 58.210442, 59.283295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.894272, 58.273338, 58.981190>,  <68.594475, 58.585384, 59.577007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.894272, 58.273338, 58.981190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.504021, 58.301758, 58.898132>,  <68.269875, 58.318810, 58.848297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.504021, 58.301758, 58.898132>,  <68.894272, 58.273338, 58.981190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.504021, 58.301758, 58.898132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210854, 0.041019, -0.976657,
		-0.060876, -0.996629, -0.055001,
		-0.975620, 0.071052, -0.207646,
		68.211334, 58.323074, 58.835838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.869377, 58.085751, 58.255535>,  <68.894272, 58.273338, 58.981190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.869377, 58.085751, 58.255535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.120552, 58.208038, 57.969254>,  <69.271255, 58.281410, 57.797485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.120552, 58.208038, 57.969254>,  <68.869377, 58.085751, 58.255535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.120552, 58.208038, 57.969254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725827, 0.101789, 0.680304,
		0.280834, -0.946665, -0.157983,
		0.627939, 0.305720, -0.715701,
		69.308937, 58.299755, 57.754543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.615387, 57.810749, 58.206699>,  <68.869377, 58.085751, 58.255535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.615387, 57.810749, 58.206699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.651756, 58.174522, 58.044388>,  <69.673576, 58.392788, 57.946999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.651756, 58.174522, 58.044388>,  <69.615387, 57.810749, 58.206699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.651756, 58.174522, 58.044388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598684, 0.275695, 0.752043,
		0.795807, -0.311317, -0.519397,
		0.090928, 0.909436, -0.405780,
		69.679031, 58.447353, 57.922653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.260529, 57.668957, 58.853741>,  <69.615387, 57.810749, 58.206699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.260529, 57.668957, 58.853741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.318390, 57.275200, 58.813652>,  <69.353111, 57.038944, 58.789597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.318390, 57.275200, 58.813652>,  <69.260529, 57.668957, 58.853741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.318390, 57.275200, 58.813652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965021, 0.117975, 0.234126,
		-0.218648, -0.130588, 0.967026,
		0.144659, -0.984393, -0.100226,
		69.361786, 56.979881, 58.783585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.704262, 57.543465, 59.434597>,  <69.260529, 57.668957, 58.853741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.704262, 57.543465, 59.434597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.763695, 57.272781, 59.146156>,  <69.799355, 57.110371, 58.973091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.763695, 57.272781, 59.146156>,  <69.704262, 57.543465, 59.434597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.763695, 57.272781, 59.146156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980090, 0.197886, 0.016253,
		0.131696, -0.709156, 0.692642,
		0.148590, -0.676711, -0.721098,
		69.808273, 57.069767, 58.929829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.265701, 57.292217, 59.772228>,  <69.704262, 57.543465, 59.434597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.265701, 57.292217, 59.772228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.261795, 57.273399, 59.372688>,  <70.259453, 57.262108, 59.132965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.261795, 57.273399, 59.372688>,  <70.265701, 57.292217, 59.772228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.261795, 57.273399, 59.372688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990022, 0.139971, -0.016265,
		0.140574, -0.989038, 0.045205,
		-0.009760, -0.047040, -0.998845,
		70.258865, 57.259289, 59.073036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.729179, 56.675220, 59.450428>,  <70.265701, 57.292217, 59.772228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.729179, 56.675220, 59.450428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.674500, 57.015862, 59.248009>,  <70.641693, 57.220245, 59.126556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.674500, 57.015862, 59.248009>,  <70.729179, 56.675220, 59.450428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.674500, 57.015862, 59.248009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987738, 0.156065, -0.004171,
		0.075425, -0.500416, -0.862493,
		-0.136693, 0.851603, -0.506051,
		70.633492, 57.271343, 59.096195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.109245, 56.609791, 58.826427>,  <70.729179, 56.675220, 59.450428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.109245, 56.609791, 58.826427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.061249, 56.980934, 58.967667>,  <71.032448, 57.203621, 59.052410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.061249, 56.980934, 58.967667>,  <71.109245, 56.609791, 58.826427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.061249, 56.980934, 58.967667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992156, 0.099529, 0.075641,
		0.035040, 0.359407, -0.932523,
		-0.119999, 0.927858, 0.353100,
		71.025246, 57.259293, 59.073597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.400002, 57.174088, 58.393642>,  <71.109245, 56.609791, 58.826427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.400002, 57.174088, 58.393642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.411224, 57.285599, 58.777618>,  <71.417953, 57.352505, 59.008003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.411224, 57.285599, 58.777618>,  <71.400002, 57.174088, 58.393642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.411224, 57.285599, 58.777618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995485, 0.079321, -0.052127,
		-0.090676, 0.957073, -0.275299,
		0.028052, 0.278783, 0.959944,
		71.419640, 57.369232, 59.065601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.832649, 57.848042, 58.586376>,  <71.400002, 57.174088, 58.393642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.832649, 57.848042, 58.586376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.822227, 57.593613, 58.894852>,  <71.815979, 57.440956, 59.079937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.822227, 57.593613, 58.894852>,  <71.832649, 57.848042, 58.586376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.822227, 57.593613, 58.894852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998821, 0.015050, 0.046153,
		-0.040964, 0.771480, 0.634934,
		-0.026050, -0.636076, 0.771187,
		71.814415, 57.402790, 59.126209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.069458, 58.161507, 59.202755>,  <71.832649, 57.848042, 58.586376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.069458, 58.161507, 59.202755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.158997, 57.771919, 59.188438>,  <72.212723, 57.538166, 59.179848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.158997, 57.771919, 59.188438>,  <72.069458, 58.161507, 59.202755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.158997, 57.771919, 59.188438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963293, 0.226677, -0.143819,
		0.148187, -0.002281, 0.988957,
		0.223846, -0.973967, -0.035788,
		72.226151, 57.479729, 59.177704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.612671, 57.881138, 59.673866>,  <72.069458, 58.161507, 59.202755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.612671, 57.881138, 59.673866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.626686, 57.654633, 59.344475>,  <72.635094, 57.518730, 59.146839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.626686, 57.654633, 59.344475>,  <72.612671, 57.881138, 59.673866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.626686, 57.654633, 59.344475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984208, 0.162613, -0.069940,
		0.173513, -0.808026, 0.563016,
		0.035040, -0.566260, -0.823481,
		72.637199, 57.484753, 59.097431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.291534, 57.815639, 60.362038>,  <72.612671, 57.881138, 59.673866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.291534, 57.815639, 60.362038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.551514, 57.578468, 60.552200>,  <72.707497, 57.436165, 60.666298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.551514, 57.578468, 60.552200>,  <72.291534, 57.815639, 60.362038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.551514, 57.578468, 60.552200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759895, -0.516485, 0.394718,
		0.011499, -0.617802, -0.786250,
		0.649944, -0.592929, 0.475404,
		72.746498, 57.400589, 60.694820>
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
