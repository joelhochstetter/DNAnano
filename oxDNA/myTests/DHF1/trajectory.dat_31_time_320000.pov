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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<3.159075, 1.235183, 5.716188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.769505, 1.214821, 5.804620>,  <2.535762, 1.202603, 5.857679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.769505, 1.214821, 5.804620>,  <3.159075, 1.235183, 5.716188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.769505, 1.214821, 5.804620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224679, 0.351407, -0.908863,
		-0.031423, -0.934838, -0.353682,
		-0.973926, -0.050905, 0.221080,
		2.477327, 1.199549, 5.870944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.833971, 0.916339, 5.129914>,  <3.159075, 1.235183, 5.716188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.833971, 0.916339, 5.129914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.598909, 1.161049, 5.341723>,  <2.457873, 1.307875, 5.468809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.598909, 1.161049, 5.341723>,  <2.833971, 0.916339, 5.129914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.598909, 1.161049, 5.341723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197541, 0.526166, -0.827120,
		-0.784629, -0.590662, -0.188352,
		-0.587653, 0.611775, 0.529524,
		2.422613, 1.344581, 5.500581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.082654, 0.990457, 4.868424>,  <2.833971, 0.916339, 5.129914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.082654, 0.990457, 4.868424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.244160, 1.314293, 5.038853>,  <2.341063, 1.508595, 5.141109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.244160, 1.314293, 5.038853>,  <2.082654, 0.990457, 4.868424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.244160, 1.314293, 5.038853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252628, 0.546278, -0.798598,
		-0.879291, 0.214809, 0.425094,
		0.403765, 0.809591, 0.426070,
		2.365289, 1.557170, 5.166674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.493613, 1.574568, 5.073099>,  <2.082654, 0.990457, 4.868424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.493613, 1.574568, 5.073099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.868328, 1.688782, 4.992208>,  <2.093158, 1.757310, 4.943673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.868328, 1.688782, 4.992208>,  <1.493613, 1.574568, 5.073099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.868328, 1.688782, 4.992208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345636, 0.665268, -0.661782,
		-0.054426, 0.689847, 0.721906,
		0.936789, 0.285535, -0.202228,
		2.149365, 1.774442, 4.931539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.590492, 2.246686, 5.295887>,  <1.493613, 1.574568, 5.073099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.590492, 2.246686, 5.295887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.817709, 2.156639, 4.979242>,  <1.954039, 2.102611, 4.789256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.817709, 2.156639, 4.979242>,  <1.590492, 2.246686, 5.295887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.817709, 2.156639, 4.979242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339670, 0.811991, -0.474653,
		0.749634, 0.538510, 0.384779,
		0.568043, -0.225118, -0.791612,
		1.988122, 2.089104, 4.741759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.083796, 2.835971, 5.138033>,  <1.590492, 2.246686, 5.295887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.083796, 2.835971, 5.138033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.961441, 2.605412, 4.834930>,  <1.888028, 2.467076, 4.653069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.961441, 2.605412, 4.834930>,  <2.083796, 2.835971, 5.138033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.961441, 2.605412, 4.834930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346566, 0.808714, -0.475262,
		0.886750, 0.117237, -0.447134,
		-0.305885, -0.576400, -0.757758,
		1.869675, 2.432492, 4.607603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.421698, 2.948112, 4.436544>,  <2.083796, 2.835971, 5.138033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.421698, 2.948112, 4.436544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.029903, 2.868473, 4.424096>,  <1.794827, 2.820689, 4.416627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.029903, 2.868473, 4.424096>,  <2.421698, 2.948112, 4.436544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.029903, 2.868473, 4.424096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141262, 0.788514, -0.598574,
		0.143714, -0.581899, -0.800462,
		-0.979485, -0.199099, -0.031120,
		1.736058, 2.808743, 4.414760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.208085, 2.881569, 3.755985>,  <2.421698, 2.948112, 4.436544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.208085, 2.881569, 3.755985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.900839, 3.013390, 3.975583>,  <1.716491, 3.092482, 4.107342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.900839, 3.013390, 3.975583>,  <2.208085, 2.881569, 3.755985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.900839, 3.013390, 3.975583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009186, 0.851628, -0.524067,
		-0.640246, -0.407587, -0.651120,
		-0.768115, 0.329550, 0.548996,
		1.670404, 3.112255, 4.140282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.383152, 2.252591, 3.133840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.044352, 2.406799, 2.987437>,  <0.158929, 2.499324, 2.899595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.044352, 2.406799, 2.987437>,  <-0.383152, 2.252591, 3.133840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.044352, 2.406799, 2.987437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428302, -0.087090, 0.899429,
		0.314874, -0.918580, -0.238885,
		0.847002, 0.385521, -0.366007,
		0.209749, 2.522456, 2.877635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.511174, 2.977424, 2.806738>,  <-0.383152, 2.252591, 3.133840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.511174, 2.977424, 2.806738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.312376, 2.702835, 2.594418>,  <-0.193097, 2.538082, 2.467025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.312376, 2.702835, 2.594418>,  <-0.511174, 2.977424, 2.806738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.312376, 2.702835, 2.594418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434474, 0.726357, -0.532576,
		0.751151, 0.034068, 0.659251,
		0.496996, -0.686473, -0.530802,
		-0.163277, 2.496893, 2.435177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.298506, 3.096398, 2.768912>,  <-0.511174, 2.977424, 2.806738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.298506, 3.096398, 2.768912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.148399, 2.908524, 2.449270>,  <0.058335, 2.795799, 2.257485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.148399, 2.908524, 2.449270>,  <0.298506, 3.096398, 2.768912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.148399, 2.908524, 2.449270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287787, 0.760467, -0.582125,
		0.881109, -0.448424, -0.150208,
		-0.375267, -0.469687, -0.799105,
		0.035819, 2.767617, 2.209539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.726518, 3.120360, 2.326746>,  <0.298506, 3.096398, 2.768912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.726518, 3.120360, 2.326746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.395487, 3.063583, 2.109503>,  <0.196868, 3.029517, 1.979157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.395487, 3.063583, 2.109503>,  <0.726518, 3.120360, 2.326746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.395487, 3.063583, 2.109503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329374, 0.660668, -0.674559,
		0.454563, -0.737137, -0.500002,
		-0.827578, -0.141941, -0.543109,
		0.147214, 3.021001, 1.946570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.881621, 2.875918, 1.684364>,  <0.726518, 3.120360, 2.326746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.881621, 2.875918, 1.684364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.552441, 3.101742, 1.658989>,  <0.354932, 3.237236, 1.643764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.552441, 3.101742, 1.658989>,  <0.881621, 2.875918, 1.684364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.552441, 3.101742, 1.658989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423186, 0.534682, -0.731456,
		-0.379031, -0.628799, -0.678931,
		-0.822951, 0.564559, -0.063438,
		0.305555, 3.271109, 1.639957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.604999, 2.770058, 0.939357>,  <0.881621, 2.875918, 1.684364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.604999, 2.770058, 0.939357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.505529, 3.105362, 1.133462>,  <0.445848, 3.306545, 1.249925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.505529, 3.105362, 1.133462>,  <0.604999, 2.770058, 0.939357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.505529, 3.105362, 1.133462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392647, 0.545232, -0.740642,
		-0.885432, 0.006360, -0.464725,
		-0.248673, 0.838261, 0.485263,
		0.430928, 3.356840, 1.279041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.065573, 3.225329, 0.464868>,  <0.604999, 2.770058, 0.939357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.065573, 3.225329, 0.464868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.295872, 3.424118, 0.724571>,  <0.434051, 3.543391, 0.880393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.295872, 3.424118, 0.724571>,  <0.065573, 3.225329, 0.464868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.295872, 3.424118, 0.724571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487056, 0.429346, -0.760552,
		-0.656729, 0.754110, 0.005142,
		0.575747, 0.496971, 0.649257,
		0.468596, 3.573210, 0.919348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.076137, 3.983706, 0.348745>,  <0.065573, 3.225329, 0.464868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.076137, 3.983706, 0.348745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.416019, 3.897243, 0.541109>,  <0.619949, 3.845366, 0.656527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.416019, 3.897243, 0.541109>,  <0.076137, 3.983706, 0.348745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.416019, 3.897243, 0.541109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486450, 0.673223, -0.556899,
		-0.203381, 0.707140, 0.677193,
		0.849707, -0.216158, 0.480909,
		0.670932, 3.832396, 0.685382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
