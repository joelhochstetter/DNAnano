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
	<24.267256, 34.915592, 34.591602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202681, 35.107483, 34.936577>,  <24.163935, 35.222618, 35.143562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202681, 35.107483, 34.936577>,  <24.267256, 34.915592, 34.591602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.202681, 35.107483, 34.936577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638194, -0.615834, 0.462014,
		0.752758, 0.624992, -0.206736,
		-0.161440, 0.479722, 0.862440,
		24.154249, 35.251400, 35.195309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.881935, 35.049648, 35.068584>,  <24.267256, 34.915592, 34.591602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.881935, 35.049648, 35.068584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.568911, 35.056347, 35.317524>,  <24.381096, 35.060364, 35.466888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.568911, 35.056347, 35.317524>,  <24.881935, 35.049648, 35.068584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.568911, 35.056347, 35.317524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481964, -0.616481, 0.622625,
		0.394091, 0.787192, 0.474364,
		-0.782561, 0.016744, 0.622348,
		24.334143, 35.061371, 35.504227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.084839, 34.933460, 35.828053>,  <24.881935, 35.049648, 35.068584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.084839, 34.933460, 35.828053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477741, 34.881104, 35.774323>,  <25.713482, 34.849689, 35.742085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477741, 34.881104, 35.774323>,  <25.084839, 34.933460, 35.828053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477741, 34.881104, 35.774323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044257, -0.857730, 0.512192,
		-0.182256, -0.497158, -0.848302,
		0.982254, -0.130893, -0.134324,
		25.772417, 34.841835, 35.734024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298180, 34.284248, 35.479744>,  <25.084839, 34.933460, 35.828053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298180, 34.284248, 35.479744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591404, 34.414726, 35.718479>,  <25.767338, 34.493015, 35.861721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591404, 34.414726, 35.718479>,  <25.298180, 34.284248, 35.479744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.591404, 34.414726, 35.718479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230770, -0.706164, 0.669386,
		0.639819, -0.628433, -0.442385,
		0.733060, 0.326197, 0.596840,
		25.811321, 34.512585, 35.897530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700687, 33.689346, 35.688774>,  <25.298180, 34.284248, 35.479744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700687, 33.689346, 35.688774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676676, 33.972763, 35.970016>,  <25.662270, 34.142815, 36.138763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676676, 33.972763, 35.970016>,  <25.700687, 33.689346, 35.688774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676676, 33.972763, 35.970016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348200, -0.674995, 0.650491,
		0.935496, -0.205774, 0.287234,
		-0.060028, 0.708547, 0.703106,
		25.658667, 34.185326, 36.180950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204109, 33.670792, 36.258987>,  <25.700687, 33.689346, 35.688774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204109, 33.670792, 36.258987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.849537, 33.824028, 36.362892>,  <25.636793, 33.915970, 36.425236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.849537, 33.824028, 36.362892>,  <26.204109, 33.670792, 36.258987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.849537, 33.824028, 36.362892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221164, -0.843569, 0.489364,
		0.406600, 0.376338, 0.832494,
		-0.886433, 0.383093, 0.259762,
		25.583607, 33.938957, 36.440823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584641, 34.255245, 36.017586>,  <26.204109, 33.670792, 36.258987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584641, 34.255245, 36.017586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803459, 34.438736, 36.297672>,  <26.934750, 34.548832, 36.465725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803459, 34.438736, 36.297672>,  <26.584641, 34.255245, 36.017586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803459, 34.438736, 36.297672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199131, 0.741157, -0.641119,
		-0.813073, 0.490157, 0.314099,
		0.547045, 0.458730, 0.700220,
		26.967573, 34.576355, 36.507740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337091, 35.040787, 36.189312>,  <26.584641, 34.255245, 36.017586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337091, 35.040787, 36.189312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725367, 34.954327, 36.231346>,  <26.958332, 34.902451, 36.256565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725367, 34.954327, 36.231346>,  <26.337091, 35.040787, 36.189312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725367, 34.954327, 36.231346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232698, 0.735842, -0.635915,
		0.060126, 0.641729, 0.764571,
		0.970689, -0.216150, 0.105085,
		27.016573, 34.889481, 36.262871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561800, 35.778950, 36.337345>,  <26.337091, 35.040787, 36.189312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561800, 35.778950, 36.337345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852903, 35.564209, 36.166622>,  <27.027565, 35.435364, 36.064190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852903, 35.564209, 36.166622>,  <26.561800, 35.778950, 36.337345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852903, 35.564209, 36.166622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076000, 0.681611, -0.727757,
		0.681611, 0.497193, 0.536848,
		0.727757, -0.536848, -0.426807,
		27.071230, 35.403156, 36.038582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230080, 36.176769, 36.247700>,  <26.561800, 35.778950, 36.337345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230080, 36.176769, 36.247700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212790, 35.879169, 35.980988>,  <27.202415, 35.700611, 35.820961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212790, 35.879169, 35.980988>,  <27.230080, 36.176769, 36.247700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212790, 35.879169, 35.980988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055169, 0.664610, -0.745150,
		0.997541, -0.068995, 0.012318,
		-0.043225, -0.743998, -0.666782,
		27.199821, 35.655972, 35.780952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589777, 36.548248, 35.695564>,  <27.230080, 36.176769, 36.247700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.589777, 36.548248, 35.695564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410301, 36.234314, 35.524590>,  <27.302616, 36.045952, 35.422005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410301, 36.234314, 35.524590>,  <27.589777, 36.548248, 35.695564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410301, 36.234314, 35.524590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380601, 0.600561, -0.703185,
		0.808591, -0.152828, -0.568176,
		-0.448691, -0.784838, -0.427442,
		27.275694, 35.998863, 35.396358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782829, 36.584965, 34.973827>,  <27.589777, 36.548248, 35.695564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782829, 36.584965, 34.973827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453461, 36.358242, 34.984470>,  <27.255840, 36.222206, 34.990856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453461, 36.358242, 34.984470>,  <27.782829, 36.584965, 34.973827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453461, 36.358242, 34.984470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423989, 0.583428, -0.692709,
		0.377112, -0.581669, -0.720727,
		-0.823419, -0.566809, 0.026604,
		27.206434, 36.188198, 34.992451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622290, 36.417389, 34.228981>,  <27.782829, 36.584965, 34.973827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622290, 36.417389, 34.228981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275110, 36.340572, 34.412189>,  <27.066803, 36.294483, 34.522114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275110, 36.340572, 34.412189>,  <27.622290, 36.417389, 34.228981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275110, 36.340572, 34.412189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445687, 0.708101, -0.547682,
		-0.219147, -0.679494, -0.700188,
		-0.867950, -0.192042, 0.458020,
		27.014725, 36.282959, 34.549595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091669, 36.313980, 33.751408>,  <27.622290, 36.417389, 34.228981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091669, 36.313980, 33.751408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908106, 36.428902, 34.087708>,  <26.797968, 36.497852, 34.289486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908106, 36.428902, 34.087708>,  <27.091669, 36.313980, 33.751408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908106, 36.428902, 34.087708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467839, 0.726329, -0.503561,
		-0.755335, -0.624424, -0.198907,
		-0.458907, 0.287300, 0.840751,
		26.770433, 36.515091, 34.339931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429693, 36.326214, 33.578453>,  <27.091669, 36.313980, 33.751408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429693, 36.326214, 33.578453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410219, 36.552692, 33.907585>,  <26.398535, 36.688580, 34.105064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410219, 36.552692, 33.907585>,  <26.429693, 36.326214, 33.578453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410219, 36.552692, 33.907585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458700, 0.719124, -0.521972,
		-0.887257, -0.402845, 0.224703,
		-0.048684, 0.566195, 0.822833,
		26.395615, 36.722549, 34.154434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773853, 36.548130, 33.579144>,  <26.429693, 36.326214, 33.578453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773853, 36.548130, 33.579144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.945219, 36.803215, 33.835201>,  <26.048038, 36.956264, 33.988834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.945219, 36.803215, 33.835201>,  <25.773853, 36.548130, 33.579144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.945219, 36.803215, 33.835201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552885, 0.745356, -0.372510,
		-0.714689, -0.194337, 0.671902,
		0.428413, 0.637713, 0.640144,
		26.073744, 36.994530, 34.027245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.184448, 37.150719, 33.787998>,  <25.773853, 36.548130, 33.579144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.184448, 37.150719, 33.787998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563232, 37.275902, 33.817196>,  <25.790503, 37.351009, 33.834713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563232, 37.275902, 33.817196>,  <25.184448, 37.150719, 33.787998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563232, 37.275902, 33.817196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225310, 0.808544, -0.543591,
		-0.229139, 0.498312, 0.836170,
		0.946959, 0.312955, 0.072995,
		25.847321, 37.369789, 33.839096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109825, 37.846851, 33.977501>,  <25.184448, 37.150719, 33.787998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109825, 37.846851, 33.977501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487955, 37.814045, 33.851238>,  <25.714832, 37.794361, 33.775482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487955, 37.814045, 33.851238>,  <25.109825, 37.846851, 33.977501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.487955, 37.814045, 33.851238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078698, 0.881905, -0.464812,
		0.316499, 0.464239, 0.827231,
		0.945323, -0.082011, -0.315656,
		25.771551, 37.789440, 33.756542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357679, 38.533672, 33.889774>,  <25.109825, 37.846851, 33.977501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357679, 38.533672, 33.889774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610361, 38.322220, 33.662971>,  <25.761971, 38.195347, 33.526890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610361, 38.322220, 33.662971>,  <25.357679, 38.533672, 33.889774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610361, 38.322220, 33.662971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074553, 0.686608, -0.723195,
		0.771616, 0.499118, 0.394322,
		0.631704, -0.528631, -0.567008,
		25.799873, 38.163631, 33.492870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.934929, 39.057652, 33.850758>,  <25.357679, 38.533672, 33.889774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.934929, 39.057652, 33.850758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987778, 38.809708, 33.541351>,  <26.019487, 38.660942, 33.355709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987778, 38.809708, 33.541351>,  <25.934929, 39.057652, 33.850758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987778, 38.809708, 33.541351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066986, 0.784153, -0.616941,
		0.988967, 0.029698, 0.145127,
		0.132124, -0.619856, -0.773512,
		26.027414, 38.623753, 33.309299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460180, 39.278778, 33.467888>,  <25.934929, 39.057652, 33.850758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460180, 39.278778, 33.467888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249706, 39.056789, 33.210163>,  <26.123423, 38.923595, 33.055527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249706, 39.056789, 33.210163>,  <26.460180, 39.278778, 33.467888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.249706, 39.056789, 33.210163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004609, 0.755815, -0.654769,
		0.850359, -0.347498, -0.395139,
		-0.526183, -0.554967, -0.644316,
		26.091852, 38.890301, 33.016869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755751, 39.517303, 32.892548>,  <26.460180, 39.278778, 33.467888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755751, 39.517303, 32.892548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416204, 39.344574, 32.770588>,  <26.212477, 39.240936, 32.697414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416204, 39.344574, 32.770588>,  <26.755751, 39.517303, 32.892548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.416204, 39.344574, 32.770588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076232, 0.670757, -0.737749,
		0.523086, -0.603005, -0.602300,
		-0.848863, -0.431821, -0.304895,
		26.161545, 39.215027, 32.679119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713318, 39.668106, 32.142857>,  <26.755751, 39.517303, 32.892548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713318, 39.668106, 32.142857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331112, 39.569626, 32.207825>,  <26.101789, 39.510536, 32.246803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331112, 39.569626, 32.207825>,  <26.713318, 39.668106, 32.142857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331112, 39.569626, 32.207825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293437, 0.737844, -0.607850,
		0.029815, -0.628468, -0.777264,
		-0.955513, -0.246201, 0.162417,
		26.044458, 39.495766, 32.256550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442400, 39.591335, 31.502253>,  <26.713318, 39.668106, 32.142857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442400, 39.591335, 31.502253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166679, 39.691856, 31.774050>,  <26.001247, 39.752171, 31.937128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166679, 39.691856, 31.774050>,  <26.442400, 39.591335, 31.502253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.166679, 39.691856, 31.774050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326006, 0.729989, -0.600696,
		-0.646981, -0.635579, -0.421255,
		-0.689301, 0.251307, 0.679491,
		25.959888, 39.767250, 31.977898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941463, 39.354546, 30.899885>,  <26.442400, 39.591335, 31.502253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941463, 39.354546, 30.899885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236185, 39.132710, 30.745201>,  <26.413017, 38.999607, 30.652391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236185, 39.132710, 30.745201>,  <25.941463, 39.354546, 30.899885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236185, 39.132710, 30.745201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675928, -0.617352, -0.402489,
		-0.015517, 0.557943, -0.829734,
		0.736804, -0.554595, -0.386709,
		26.457226, 38.966331, 30.629189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933661, 39.085209, 30.127590>,  <25.941463, 39.354546, 30.899885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933661, 39.085209, 30.127590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113575, 38.815147, 30.361464>,  <26.221523, 38.653111, 30.501787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113575, 38.815147, 30.361464>,  <25.933661, 39.085209, 30.127590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113575, 38.815147, 30.361464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538846, -0.727212, -0.425215,
		0.712277, -0.123799, -0.690895,
		0.449786, -0.675156, 0.584685,
		26.248510, 38.612602, 30.536869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759455, 38.651371, 29.599855>,  <25.933661, 39.085209, 30.127590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759455, 38.651371, 29.599855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555370, 38.723743, 29.263535>,  <25.432920, 38.767166, 29.061741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555370, 38.723743, 29.263535>,  <25.759455, 38.651371, 29.599855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.555370, 38.723743, 29.263535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128009, -0.982708, -0.133785,
		-0.850470, 0.039372, 0.524547,
		-0.510210, 0.180928, -0.840804,
		25.402308, 38.778023, 29.011293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832994, 38.117008, 29.172464>,  <25.759455, 38.651371, 29.599855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.832994, 38.117008, 29.172464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061165, 38.182751, 29.494360>,  <26.198067, 38.222195, 29.687498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061165, 38.182751, 29.494360>,  <25.832994, 38.117008, 29.172464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061165, 38.182751, 29.494360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525144, 0.826330, 0.203476,
		-0.631538, -0.538672, 0.557667,
		0.570424, 0.164352, 0.804739,
		26.232292, 38.232056, 29.735783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.326967, 38.049877, 28.434664>,  <25.832994, 38.117008, 29.172464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.326967, 38.049877, 28.434664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.317507, 37.650112, 28.444559>,  <25.311831, 37.410252, 28.450497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.317507, 37.650112, 28.444559>,  <25.326967, 38.049877, 28.434664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.317507, 37.650112, 28.444559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242933, -0.029749, -0.969587,
		0.969755, -0.016924, 0.243495,
		-0.023653, -0.999414, 0.024738,
		25.310411, 37.350288, 28.451981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.809427, 37.913898, 27.943367>,  <25.326967, 38.049877, 28.434664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.809427, 37.913898, 27.943367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651093, 37.551277, 28.001995>,  <25.556091, 37.333706, 28.037172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651093, 37.551277, 28.001995>,  <25.809427, 37.913898, 27.943367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.651093, 37.551277, 28.001995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189100, -0.236652, -0.953015,
		0.898641, -0.349520, 0.265104,
		-0.395836, -0.906549, 0.146571,
		25.532341, 37.279312, 28.045967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236343, 37.649227, 27.360422>,  <25.809427, 37.913898, 27.943367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236343, 37.649227, 27.360422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952124, 37.386879, 27.462368>,  <25.781591, 37.229469, 27.523535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952124, 37.386879, 27.462368>,  <26.236343, 37.649227, 27.360422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952124, 37.386879, 27.462368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056411, -0.307941, -0.949731,
		0.701381, -0.689209, 0.181810,
		-0.710550, -0.655868, 0.254863,
		25.738958, 37.190117, 27.538828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410261, 36.969379, 27.041105>,  <26.236343, 37.649227, 27.360422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410261, 36.969379, 27.041105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015738, 36.997635, 27.100714>,  <25.779024, 37.014587, 27.136478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015738, 36.997635, 27.100714>,  <26.410261, 36.969379, 27.041105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015738, 36.997635, 27.100714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164159, -0.507145, -0.846083,
		0.015807, -0.858961, 0.511797,
		-0.986307, 0.070642, 0.149022,
		25.719845, 37.018829, 27.145420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093769, 36.388962, 27.030447>,  <26.410261, 36.969379, 27.041105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093769, 36.388962, 27.030447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814026, 36.640064, 26.893730>,  <25.646181, 36.790726, 26.811701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814026, 36.640064, 26.893730>,  <26.093769, 36.388962, 27.030447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814026, 36.640064, 26.893730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013129, -0.489384, -0.871970,
		-0.714652, -0.605330, 0.350496,
		-0.699357, 0.627757, -0.341792,
		25.604219, 36.828392, 26.791193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573793, 35.986637, 26.625528>,  <26.093769, 36.388962, 27.030447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573793, 35.986637, 26.625528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571131, 36.357635, 26.476021>,  <25.569532, 36.580235, 26.386316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571131, 36.357635, 26.476021>,  <25.573793, 35.986637, 26.625528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.571131, 36.357635, 26.476021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105371, -0.371047, -0.922616,
		-0.994411, -0.045526, -0.095261,
		-0.006657, 0.927497, -0.373770,
		25.569134, 36.635883, 26.363890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530413, 35.938839, 27.410200>,  <25.573793, 35.986637, 26.625528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530413, 35.938839, 27.410200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.212626, 36.168034, 27.329691>,  <25.021954, 36.305550, 27.281385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.212626, 36.168034, 27.329691>,  <25.530413, 35.938839, 27.410200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.212626, 36.168034, 27.329691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039845, -0.281529, -0.958725,
		-0.606000, -0.769695, 0.200835,
		-0.794466, 0.572985, -0.201275,
		24.974285, 36.339928, 27.269308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531588, 36.026009, 28.128967>,  <25.530413, 35.938839, 27.410200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531588, 36.026009, 28.128967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446720, 36.287476, 28.419540>,  <25.395800, 36.444355, 28.593884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446720, 36.287476, 28.419540>,  <25.531588, 36.026009, 28.128967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.446720, 36.287476, 28.419540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818316, -0.287495, 0.497700,
		0.534176, 0.700047, -0.473910,
		-0.212167, 0.653668, 0.726432,
		25.383070, 36.483578, 28.637470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102163, 36.282909, 28.188896>,  <25.531588, 36.026009, 28.128967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102163, 36.282909, 28.188896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904285, 36.355610, 28.528835>,  <25.785559, 36.399231, 28.732800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904285, 36.355610, 28.528835>,  <26.102163, 36.282909, 28.188896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904285, 36.355610, 28.528835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776037, -0.347809, 0.526114,
		0.391208, 0.919780, 0.031013,
		-0.494695, 0.181753, 0.849849,
		25.755877, 36.410137, 28.783791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536791, 36.542282, 28.609474>,  <26.102163, 36.282909, 28.188896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536791, 36.542282, 28.609474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259008, 36.428707, 28.873930>,  <26.092339, 36.360561, 29.032604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259008, 36.428707, 28.873930>,  <26.536791, 36.542282, 28.609474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.259008, 36.428707, 28.873930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719479, -0.262609, 0.642951,
		-0.008939, 0.922179, 0.386660,
		-0.694457, -0.283941, 0.661141,
		26.050671, 36.343525, 29.072273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805477, 36.824001, 29.268246>,  <26.536791, 36.542282, 28.609474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805477, 36.824001, 29.268246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530186, 36.552032, 29.369482>,  <26.365011, 36.388851, 29.430223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530186, 36.552032, 29.369482>,  <26.805477, 36.824001, 29.268246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530186, 36.552032, 29.369482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552548, -0.265165, 0.790176,
		-0.470144, 0.683666, 0.558181,
		-0.688226, -0.679918, 0.253092,
		26.323717, 36.348057, 29.445410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606106, 37.028484, 29.999315>,  <26.805477, 36.824001, 29.268246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606106, 37.028484, 29.999315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524963, 36.643543, 29.926947>,  <26.476278, 36.412579, 29.883526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524963, 36.643543, 29.926947>,  <26.606106, 37.028484, 29.999315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524963, 36.643543, 29.926947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440361, -0.254682, 0.860941,
		-0.874603, 0.094978, 0.475445,
		-0.202857, -0.962349, -0.180921,
		26.464106, 36.354839, 29.872671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584261, 36.764183, 30.666098>,  <26.606106, 37.028484, 29.999315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584261, 36.764183, 30.666098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621489, 36.434944, 30.442009>,  <26.643826, 36.237400, 30.307556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621489, 36.434944, 30.442009>,  <26.584261, 36.764183, 30.666098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621489, 36.434944, 30.442009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549747, -0.426639, 0.718163,
		-0.830131, -0.374817, 0.412790,
		0.093067, -0.823099, -0.560221,
		26.649408, 36.188015, 30.273943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.440468, 36.180531, 31.055965>,  <26.584261, 36.764183, 30.666098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.440468, 36.180531, 31.055965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665110, 36.034092, 30.759163>,  <26.799894, 35.946228, 30.581081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665110, 36.034092, 30.759163>,  <26.440468, 36.180531, 31.055965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665110, 36.034092, 30.759163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560581, -0.491237, 0.666660,
		-0.608566, -0.790352, -0.070651,
		0.561602, -0.366101, -0.742006,
		26.833590, 35.924263, 30.536560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433332, 35.511120, 31.089018>,  <26.440468, 36.180531, 31.055965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433332, 35.511120, 31.089018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774527, 35.569244, 30.888498>,  <26.979242, 35.604118, 30.768187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774527, 35.569244, 30.888498>,  <26.433332, 35.511120, 31.089018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774527, 35.569244, 30.888498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486629, -0.568670, 0.663179,
		-0.188706, -0.809629, -0.555780,
		0.852984, 0.145313, -0.501300,
		27.030422, 35.612839, 30.738108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653299, 34.838490, 31.017828>,  <26.433332, 35.511120, 31.089018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653299, 34.838490, 31.017828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978571, 35.047390, 30.915075>,  <27.173735, 35.172729, 30.853424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978571, 35.047390, 30.915075>,  <26.653299, 34.838490, 31.017828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978571, 35.047390, 30.915075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567231, -0.612314, 0.550745,
		0.130336, -0.593567, -0.794160,
		0.813180, 0.522254, -0.256884,
		27.222525, 35.204067, 30.838011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244690, 34.369202, 30.921801>,  <26.653299, 34.838490, 31.017828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244690, 34.369202, 30.921801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392691, 34.728252, 31.017609>,  <27.481491, 34.943684, 31.075092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392691, 34.728252, 31.017609>,  <27.244690, 34.369202, 30.921801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392691, 34.728252, 31.017609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589747, -0.426143, 0.686003,
		0.717843, -0.112566, -0.687045,
		0.370000, 0.897625, 0.239519,
		27.503691, 34.997540, 31.089464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026951, 34.326500, 30.836611>,  <27.244690, 34.369202, 30.921801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026951, 34.326500, 30.836611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929991, 34.639565, 31.065935>,  <27.871815, 34.827404, 31.203529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929991, 34.639565, 31.065935>,  <28.026951, 34.326500, 30.836611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929991, 34.639565, 31.065935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594446, -0.347202, 0.725317,
		0.766731, 0.516620, -0.381087,
		-0.242399, 0.782659, 0.573313,
		27.857271, 34.874363, 31.237928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669245, 34.463478, 31.156721>,  <28.026951, 34.326500, 30.836611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669245, 34.463478, 31.156721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412815, 34.684349, 31.369936>,  <28.258957, 34.816872, 31.497866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412815, 34.684349, 31.369936>,  <28.669245, 34.463478, 31.156721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412815, 34.684349, 31.369936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536484, -0.174249, 0.825725,
		0.548825, 0.815317, -0.184526,
		-0.641074, 0.552174, 0.533037,
		28.220493, 34.850002, 31.529846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135721, 34.824654, 31.646688>,  <28.669245, 34.463478, 31.156721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135721, 34.824654, 31.646688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766035, 34.833466, 31.799181>,  <28.544224, 34.838753, 31.890676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766035, 34.833466, 31.799181>,  <29.135721, 34.824654, 31.646688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766035, 34.833466, 31.799181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379389, -0.060631, 0.923249,
		0.043451, 0.997917, 0.047679,
		-0.924217, 0.022027, 0.381233,
		28.488770, 34.840073, 31.913551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142990, 35.329285, 32.143726>,  <29.135721, 34.824654, 31.646688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142990, 35.329285, 32.143726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846415, 35.078953, 32.240562>,  <28.668468, 34.928753, 32.298664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846415, 35.078953, 32.240562>,  <29.142990, 35.329285, 32.143726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846415, 35.078953, 32.240562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298048, 0.016087, 0.954415,
		-0.601193, 0.779796, 0.174599,
		-0.741440, -0.625827, 0.242089,
		28.623983, 34.891205, 32.313190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000393, 35.612869, 32.841522>,  <29.142990, 35.329285, 32.143726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000393, 35.612869, 32.841522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856647, 35.241833, 32.800652>,  <28.770401, 35.019211, 32.776131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856647, 35.241833, 32.800652>,  <29.000393, 35.612869, 32.841522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856647, 35.241833, 32.800652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377474, -0.244619, 0.893126,
		-0.853447, 0.282388, 0.438047,
		-0.359363, -0.927588, -0.102175,
		28.748838, 34.963558, 32.770000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562082, 35.484867, 33.438011>,  <29.000393, 35.612869, 32.841522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562082, 35.484867, 33.438011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678829, 35.141777, 33.268715>,  <28.748877, 34.935925, 33.167137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678829, 35.141777, 33.268715>,  <28.562082, 35.484867, 33.438011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678829, 35.141777, 33.268715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490492, -0.245665, 0.836102,
		-0.821116, -0.451624, 0.349004,
		0.291865, -0.857721, -0.423238,
		28.766388, 34.884460, 33.141743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533245, 34.917522, 33.959389>,  <28.562082, 35.484867, 33.438011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533245, 34.917522, 33.959389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766581, 34.747540, 33.682510>,  <28.906582, 34.645550, 33.516384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766581, 34.747540, 33.682510>,  <28.533245, 34.917522, 33.959389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766581, 34.747540, 33.682510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576028, -0.384374, 0.721421,
		-0.572633, -0.819554, 0.020567,
		0.583338, -0.424956, -0.692191,
		28.941582, 34.620052, 33.474854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595299, 34.212494, 34.148670>,  <28.533245, 34.917522, 33.959389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595299, 34.212494, 34.148670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896732, 34.325005, 33.911015>,  <29.077593, 34.392509, 33.768421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896732, 34.325005, 33.911015>,  <28.595299, 34.212494, 34.148670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896732, 34.325005, 33.911015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656039, -0.264667, 0.706799,
		0.041560, -0.922407, -0.383978,
		0.753582, 0.281278, -0.594135,
		29.122807, 34.409389, 33.732773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090349, 33.695282, 34.250847>,  <28.595299, 34.212494, 34.148670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090349, 33.695282, 34.250847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316168, 33.965652, 34.061359>,  <29.451660, 34.127876, 33.947666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316168, 33.965652, 34.061359>,  <29.090349, 33.695282, 34.250847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316168, 33.965652, 34.061359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736085, -0.152619, 0.659459,
		0.373450, -0.720990, -0.583703,
		0.564548, 0.675930, -0.473714,
		29.485533, 34.168430, 33.919247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609541, 33.351986, 34.093906>,  <29.090349, 33.695282, 34.250847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609541, 33.351986, 34.093906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710173, 33.739105, 34.090462>,  <29.770552, 33.971378, 34.088394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710173, 33.739105, 34.090462>,  <29.609541, 33.351986, 34.093906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710173, 33.739105, 34.090462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773519, -0.195712, 0.602798,
		0.581702, -0.158311, -0.797847,
		0.251578, 0.967799, -0.008611,
		29.785646, 34.029446, 34.087879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305120, 33.411087, 33.996300>,  <29.609541, 33.351986, 34.093906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305120, 33.411087, 33.996300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220901, 33.754108, 34.184029>,  <30.170370, 33.959923, 34.296665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220901, 33.754108, 34.184029>,  <30.305120, 33.411087, 33.996300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220901, 33.754108, 34.184029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629162, -0.248574, 0.736455,
		0.748214, 0.450340, -0.487205,
		-0.210549, 0.857557, 0.469323,
		30.157738, 34.011375, 34.324825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929241, 33.715889, 34.115139>,  <30.305120, 33.411087, 33.996300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929241, 33.715889, 34.115139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697365, 33.904266, 34.381123>,  <30.558239, 34.017292, 34.540714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697365, 33.904266, 34.381123>,  <30.929241, 33.715889, 34.115139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697365, 33.904266, 34.381123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667946, -0.192762, 0.718812,
		0.466697, 0.860847, -0.202820,
		-0.579692, 0.470940, 0.664961,
		30.523457, 34.045547, 34.580612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326021, 34.301170, 34.585735>,  <30.929241, 33.715889, 34.115139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326021, 34.301170, 34.585735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031258, 34.153534, 34.812271>,  <30.854401, 34.064953, 34.948193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031258, 34.153534, 34.812271>,  <31.326021, 34.301170, 34.585735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031258, 34.153534, 34.812271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649664, -0.155136, 0.744224,
		-0.186826, 0.916355, 0.354105,
		-0.736908, -0.369090, 0.566339,
		30.810184, 34.042809, 34.982174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277481, 34.682285, 35.232559>,  <31.326021, 34.301170, 34.585735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277481, 34.682285, 35.232559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075634, 34.346352, 35.312603>,  <30.954525, 34.144791, 35.360630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075634, 34.346352, 35.312603>,  <31.277481, 34.682285, 35.232559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075634, 34.346352, 35.312603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503811, -0.098223, 0.858212,
		-0.701097, 0.533888, 0.472681,
		-0.504617, -0.839831, 0.200114,
		30.924250, 34.094402, 35.372639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087282, 34.731300, 35.919559>,  <31.277481, 34.682285, 35.232559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087282, 34.731300, 35.919559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106937, 34.341705, 35.831078>,  <31.118731, 34.107948, 35.777988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106937, 34.341705, 35.831078>,  <31.087282, 34.731300, 35.919559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106937, 34.341705, 35.831078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451239, -0.175929, 0.874890,
		-0.891049, -0.142807, 0.430856,
		0.049140, -0.973989, -0.221201,
		31.121679, 34.049507, 35.764717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850435, 34.209286, 36.522308>,  <31.087282, 34.731300, 35.919559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850435, 34.209286, 36.522308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130413, 34.050861, 36.284580>,  <31.298399, 33.955807, 36.141945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130413, 34.050861, 36.284580>,  <30.850435, 34.209286, 36.522308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130413, 34.050861, 36.284580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543345, -0.244772, 0.803033,
		-0.463526, -0.884996, 0.043874,
		0.699943, -0.396066, -0.594317,
		31.340397, 33.932041, 36.106285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997316, 33.539772, 36.797241>,  <30.850435, 34.209286, 36.522308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997316, 33.539772, 36.797241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297003, 33.734970, 36.618114>,  <31.476814, 33.852089, 36.510639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297003, 33.734970, 36.618114>,  <30.997316, 33.539772, 36.797241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297003, 33.734970, 36.618114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582795, -0.164488, 0.795798,
		0.314687, -0.857206, -0.407639,
		0.749215, 0.487997, -0.447813,
		31.521767, 33.881371, 36.483772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725969, 33.147644, 36.840832>,  <30.997316, 33.539772, 36.797241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725969, 33.147644, 36.840832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775318, 33.542683, 36.801994>,  <31.804928, 33.779705, 36.778690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775318, 33.542683, 36.801994>,  <31.725969, 33.147644, 36.840832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775318, 33.542683, 36.801994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661322, -0.008871, 0.750049,
		0.739887, -0.156744, -0.654216,
		0.123370, 0.987599, -0.097095,
		31.812328, 33.838963, 36.772865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405205, 33.348698, 36.739529>,  <31.725969, 33.147644, 36.840832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405205, 33.348698, 36.739529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196976, 33.632454, 36.929588>,  <32.072037, 33.802708, 37.043625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196976, 33.632454, 36.929588>,  <32.405205, 33.348698, 36.739529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196976, 33.632454, 36.929588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516777, -0.181205, 0.836723,
		0.679663, 0.681123, -0.272266,
		-0.520576, 0.709391, 0.475147,
		32.040802, 33.845272, 37.072132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855366, 33.710835, 37.100590>,  <32.405205, 33.348698, 36.739529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855366, 33.710835, 37.100590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497902, 33.724857, 37.279541>,  <32.283424, 33.733273, 37.386913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497902, 33.724857, 37.279541>,  <32.855366, 33.710835, 37.100590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497902, 33.724857, 37.279541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396691, -0.404354, 0.824096,
		0.209792, 0.913930, 0.347446,
		-0.893657, 0.035060, 0.447378,
		32.229805, 33.735374, 37.413754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905117, 34.120735, 37.824741>,  <32.855366, 33.710835, 37.100590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905117, 34.120735, 37.824741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634300, 33.826756, 37.809395>,  <32.471809, 33.650368, 37.800186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634300, 33.826756, 37.809395>,  <32.905117, 34.120735, 37.824741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634300, 33.826756, 37.809395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447891, -0.452847, 0.770923,
		-0.583961, 0.504761, 0.635772,
		-0.677040, -0.734946, -0.038367,
		32.431187, 33.606274, 37.797886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491966, 34.477806, 37.763287>,  <32.905117, 34.120735, 37.824741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491966, 34.477806, 37.763287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853481, 34.615864, 37.662067>,  <34.070393, 34.698700, 37.601337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853481, 34.615864, 37.662067>,  <33.491966, 34.477806, 37.763287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853481, 34.615864, 37.662067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011017, 0.609839, 0.792449,
		0.427830, -0.713421, 0.554970,
		0.903792, 0.345148, -0.253048,
		34.124619, 34.719410, 37.586151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819359, 34.476734, 38.367447>,  <33.491966, 34.477806, 37.763287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819359, 34.476734, 38.367447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020557, 34.748447, 38.153694>,  <34.141277, 34.911476, 38.025440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020557, 34.748447, 38.153694>,  <33.819359, 34.476734, 38.367447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020557, 34.748447, 38.153694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009144, 0.622444, 0.782611,
		0.864238, -0.388768, 0.319301,
		0.503001, 0.679282, -0.534384,
		34.171459, 34.952232, 37.993378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550358, 34.499809, 38.675617>,  <33.819359, 34.476734, 38.367447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550358, 34.499809, 38.675617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473663, 34.832111, 38.466591>,  <34.427647, 35.031494, 38.341175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473663, 34.832111, 38.466591>,  <34.550358, 34.499809, 38.675617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473663, 34.832111, 38.466591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333424, 0.555917, 0.761436,
		0.923074, -0.028244, -0.383583,
		-0.191735, 0.830758, -0.522570,
		34.416142, 35.081337, 38.309818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046818, 34.878731, 38.842075>,  <34.550358, 34.499809, 38.675617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046818, 34.878731, 38.842075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786327, 35.133816, 38.677525>,  <34.630032, 35.286865, 38.578793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786327, 35.133816, 38.677525>,  <35.046818, 34.878731, 38.842075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786327, 35.133816, 38.677525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238953, 0.686819, 0.686426,
		0.720283, 0.348718, -0.599657,
		-0.651225, 0.637711, -0.411377,
		34.590961, 35.325130, 38.554111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458168, 35.507252, 38.654953>,  <35.046818, 34.878731, 38.842075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458168, 35.507252, 38.654953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073742, 35.589031, 38.729301>,  <34.843086, 35.638100, 38.773911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073742, 35.589031, 38.729301>,  <35.458168, 35.507252, 38.654953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073742, 35.589031, 38.729301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273106, 0.600646, 0.751424,
		0.041987, 0.772932, -0.633098,
		-0.961067, 0.204453, 0.185873,
		34.785423, 35.650368, 38.785065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438171, 36.090103, 39.050117>,  <35.458168, 35.507252, 38.654953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438171, 36.090103, 39.050117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049747, 36.013794, 39.107594>,  <34.816692, 35.968010, 39.142078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049747, 36.013794, 39.107594>,  <35.438171, 36.090103, 39.050117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049747, 36.013794, 39.107594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053069, 0.414227, 0.908625,
		-0.232860, 0.889956, -0.392116,
		-0.971061, -0.190773, 0.143686,
		34.758430, 35.956562, 39.150700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103798, 36.758865, 39.230949>,  <35.438171, 36.090103, 39.050117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103798, 36.758865, 39.230949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903122, 36.447849, 39.382603>,  <34.782719, 36.261238, 39.473595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903122, 36.447849, 39.382603>,  <35.103798, 36.758865, 39.230949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903122, 36.447849, 39.382603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030784, 0.421955, 0.906094,
		-0.864501, 0.466248, -0.187754,
		-0.501688, -0.777539, 0.379133,
		34.752617, 36.214588, 39.496342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610271, 37.062382, 39.546268>,  <35.103798, 36.758865, 39.230949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610271, 37.062382, 39.546268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647556, 36.703033, 39.717960>,  <34.669926, 36.487423, 39.820976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647556, 36.703033, 39.717960>,  <34.610271, 37.062382, 39.546268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647556, 36.703033, 39.717960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048516, 0.434688, 0.899273,
		-0.994464, -0.062997, 0.084103,
		0.093210, -0.898375, 0.429225,
		34.675518, 36.433521, 39.846729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456200, 37.299652, 40.187424>,  <34.610271, 37.062382, 39.546268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456200, 37.299652, 40.187424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554001, 36.915871, 40.243523>,  <34.612682, 36.685600, 40.277180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554001, 36.915871, 40.243523>,  <34.456200, 37.299652, 40.187424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554001, 36.915871, 40.243523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038562, 0.154142, 0.987296,
		-0.968882, -0.235988, 0.074686,
		0.244502, -0.959453, 0.140245,
		34.627350, 36.628036, 40.285595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073826, 37.100384, 40.701588>,  <34.456200, 37.299652, 40.187424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073826, 37.100384, 40.701588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371677, 36.833523, 40.709984>,  <34.550388, 36.673405, 40.715023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371677, 36.833523, 40.709984>,  <34.073826, 37.100384, 40.701588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371677, 36.833523, 40.709984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070755, 0.110169, 0.991391,
		-0.663721, -0.736730, 0.129239,
		0.744626, -0.667152, 0.020994,
		34.595066, 36.633377, 40.716282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926342, 36.528107, 41.235313>,  <34.073826, 37.100384, 40.701588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926342, 36.528107, 41.235313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322327, 36.523876, 41.178951>,  <34.559917, 36.521339, 41.145134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322327, 36.523876, 41.178951>,  <33.926342, 36.528107, 41.235313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322327, 36.523876, 41.178951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139369, -0.091459, 0.986008,
		-0.023315, -0.995752, -0.089068,
		0.989966, -0.010576, -0.140909,
		34.619316, 36.520702, 41.136677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169346, 35.877934, 41.621559>,  <33.926342, 36.528107, 41.235313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169346, 35.877934, 41.621559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461075, 36.150238, 41.594257>,  <34.636112, 36.313622, 41.577877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461075, 36.150238, 41.594257>,  <34.169346, 35.877934, 41.621559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461075, 36.150238, 41.594257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065692, 0.029627, 0.997400,
		0.681014, -0.731906, -0.023113,
		0.729318, 0.680761, -0.068256,
		34.679871, 36.354465, 41.573780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601345, 35.681950, 42.206356>,  <34.169346, 35.877934, 41.621559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601345, 35.681950, 42.206356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684914, 36.056377, 42.093124>,  <34.735054, 36.281033, 42.025185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684914, 36.056377, 42.093124>,  <34.601345, 35.681950, 42.206356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684914, 36.056377, 42.093124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051107, 0.278621, 0.959040,
		0.976597, -0.214828, 0.010370,
		0.208918, 0.936066, -0.283080,
		34.747589, 36.337196, 42.008202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181721, 35.981136, 42.592953>,  <34.601345, 35.681950, 42.206356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181721, 35.981136, 42.592953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976513, 36.297775, 42.460178>,  <34.853390, 36.487759, 42.380512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976513, 36.297775, 42.460178>,  <35.181721, 35.981136, 42.592953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976513, 36.297775, 42.460178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055469, 0.416470, 0.907456,
		0.856585, 0.447127, -0.257565,
		-0.513016, 0.791600, -0.331940,
		34.822609, 36.535255, 42.360596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578163, 36.624912, 42.870472>,  <35.181721, 35.981136, 42.592953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578163, 36.624912, 42.870472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199806, 36.714760, 42.776806>,  <34.972794, 36.768669, 42.720608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199806, 36.714760, 42.776806>,  <35.578163, 36.624912, 42.870472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199806, 36.714760, 42.776806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116501, 0.438440, 0.891178,
		0.302841, 0.870239, -0.388549,
		-0.945894, 0.224619, -0.234161,
		34.916039, 36.782146, 42.706558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464012, 37.241482, 43.203869>,  <35.578163, 36.624912, 42.870472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464012, 37.241482, 43.203869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088249, 37.124409, 43.132481>,  <34.862793, 37.054165, 43.089649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088249, 37.124409, 43.132481>,  <35.464012, 37.241482, 43.203869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088249, 37.124409, 43.132481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274832, 0.331870, 0.902402,
		-0.204886, 0.896773, -0.392200,
		-0.939409, -0.292679, -0.178466,
		34.806427, 37.036606, 43.078941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065998, 37.652283, 43.653343>,  <35.464012, 37.241482, 43.203869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065998, 37.652283, 43.653343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754421, 37.422310, 43.553177>,  <34.567474, 37.284325, 43.493076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754421, 37.422310, 43.553177>,  <35.065998, 37.652283, 43.653343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754421, 37.422310, 43.553177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449861, 0.234086, 0.861875,
		-0.436898, 0.784001, -0.440978,
		-0.778938, -0.574931, -0.250420,
		34.520741, 37.249832, 43.478050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387054, 38.082409, 43.718365>,  <35.065998, 37.652283, 43.653343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387054, 38.082409, 43.718365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284489, 37.696041, 43.732479>,  <34.222950, 37.464218, 43.740948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284489, 37.696041, 43.732479>,  <34.387054, 38.082409, 43.718365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284489, 37.696041, 43.732479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596650, 0.186902, 0.780433,
		-0.760433, 0.179060, -0.624243,
		-0.256416, -0.965922, 0.035291,
		34.207565, 37.406265, 43.743065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603970, 38.070496, 43.634201>,  <34.387054, 38.082409, 43.718365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603970, 38.070496, 43.634201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706352, 37.722675, 43.803139>,  <33.767784, 37.513985, 43.904503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706352, 37.722675, 43.803139>,  <33.603970, 38.070496, 43.634201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706352, 37.722675, 43.803139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628509, 0.182257, 0.756148,
		-0.734480, -0.458989, -0.499867,
		0.255960, -0.869547, 0.422343,
		33.783138, 37.461811, 43.929840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998455, 37.833168, 43.867481>,  <33.603970, 38.070496, 43.634201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998455, 37.833168, 43.867481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261742, 37.664429, 44.116898>,  <33.419712, 37.563183, 44.266548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261742, 37.664429, 44.116898>,  <32.998455, 37.833168, 43.867481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261742, 37.664429, 44.116898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486730, 0.393406, 0.779953,
		-0.574327, -0.816868, 0.053617,
		0.658212, -0.421851, 0.623538,
		33.459206, 37.537872, 44.303959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512264, 37.664726, 44.510990>,  <32.998455, 37.833168, 43.867481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512264, 37.664726, 44.510990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891342, 37.611675, 44.627121>,  <33.118790, 37.579845, 44.696800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891342, 37.611675, 44.627121>,  <32.512264, 37.664726, 44.510990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891342, 37.611675, 44.627121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237532, 0.314536, 0.919046,
		-0.213213, -0.939934, 0.266578,
		0.947691, -0.132632, 0.290328,
		33.175648, 37.571884, 44.714218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506977, 37.328598, 45.219791>,  <32.512264, 37.664726, 44.510990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506977, 37.328598, 45.219791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857307, 37.520229, 45.196411>,  <33.067505, 37.635208, 45.182384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857307, 37.520229, 45.196411>,  <32.506977, 37.328598, 45.219791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857307, 37.520229, 45.196411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003837, 0.128016, 0.991765,
		0.482614, -0.868388, 0.113958,
		0.875824, 0.479077, -0.058450,
		33.120056, 37.663952, 45.178875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892361, 37.173668, 45.857700>,  <32.506977, 37.328598, 45.219791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892361, 37.173668, 45.857700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050766, 37.510410, 45.711029>,  <33.145809, 37.712456, 45.623028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050766, 37.510410, 45.711029>,  <32.892361, 37.173668, 45.857700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050766, 37.510410, 45.711029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039705, 0.414647, 0.909116,
		0.917388, -0.345460, 0.197630,
		0.396009, 0.841858, -0.366675,
		33.169567, 37.762966, 45.601025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475185, 37.363083, 46.320953>,  <32.892361, 37.173668, 45.857700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475185, 37.363083, 46.320953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364315, 37.708000, 46.151424>,  <33.297791, 37.914951, 46.049706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364315, 37.708000, 46.151424>,  <33.475185, 37.363083, 46.320953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364315, 37.708000, 46.151424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100448, 0.412686, 0.905318,
		0.955553, 0.293509, -0.027773,
		-0.277181, 0.862289, -0.423825,
		33.281162, 37.966686, 46.024277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838474, 37.888931, 46.676205>,  <33.475185, 37.363083, 46.320953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838474, 37.888931, 46.676205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536850, 38.069420, 46.485294>,  <33.355877, 38.177711, 46.370750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536850, 38.069420, 46.485294>,  <33.838474, 37.888931, 46.676205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536850, 38.069420, 46.485294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271448, 0.447601, 0.852038,
		0.598087, 0.772044, -0.215035,
		-0.754061, 0.451222, -0.477274,
		33.310631, 38.204788, 46.342113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987568, 38.598240, 46.763119>,  <33.838474, 37.888931, 46.676205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987568, 38.598240, 46.763119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598572, 38.581059, 46.671543>,  <33.365173, 38.570747, 46.616600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598572, 38.581059, 46.671543>,  <33.987568, 38.598240, 46.763119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598572, 38.581059, 46.671543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222658, 0.460080, 0.859506,
		0.068408, 0.886838, -0.456989,
		-0.972494, -0.042956, -0.228935,
		33.306824, 38.568172, 46.602863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770290, 39.219513, 46.902267>,  <33.987568, 38.598240, 46.763119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770290, 39.219513, 46.902267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417931, 39.030270, 46.907757>,  <33.206516, 38.916725, 46.911049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417931, 39.030270, 46.907757>,  <33.770290, 39.219513, 46.902267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417931, 39.030270, 46.907757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143583, 0.294749, 0.944726,
		-0.451002, 0.830237, -0.327574,
		-0.880898, -0.473107, 0.013724,
		33.153660, 38.888336, 46.911873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324623, 39.714130, 47.093910>,  <33.770290, 39.219513, 46.902267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324623, 39.714130, 47.093910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164143, 39.360287, 47.188988>,  <33.067856, 39.147980, 47.246033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164143, 39.360287, 47.188988>,  <33.324623, 39.714130, 47.093910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164143, 39.360287, 47.188988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129397, 0.311627, 0.941353,
		-0.906804, 0.346915, -0.239491,
		-0.401201, -0.884612, 0.237695,
		33.043781, 39.094902, 47.260296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688011, 39.873890, 47.414879>,  <33.324623, 39.714130, 47.093910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688011, 39.873890, 47.414879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743206, 39.488693, 47.507492>,  <32.776325, 39.257576, 47.563061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743206, 39.488693, 47.507492>,  <32.688011, 39.873890, 47.414879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743206, 39.488693, 47.507492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332970, 0.175055, 0.926546,
		-0.932786, -0.204945, -0.296492,
		0.137989, -0.962992, 0.231529,
		32.784603, 39.199795, 47.576950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136276, 39.600323, 47.786518>,  <32.688011, 39.873890, 47.414879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136276, 39.600323, 47.786518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430706, 39.367134, 47.924118>,  <32.607365, 39.227222, 48.006680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430706, 39.367134, 47.924118>,  <32.136276, 39.600323, 47.786518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430706, 39.367134, 47.924118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461890, -0.061073, 0.884832,
		-0.494822, -0.810194, -0.314223,
		0.736076, -0.582971, 0.344000,
		32.651527, 39.192242, 48.027317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816393, 39.451954, 48.290321>,  <32.136276, 39.600323, 47.786518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816393, 39.451954, 48.290321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168629, 39.290760, 48.390053>,  <32.379971, 39.194046, 48.449890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168629, 39.290760, 48.390053>,  <31.816393, 39.451954, 48.290321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168629, 39.290760, 48.390053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276340, -0.009268, 0.961015,
		-0.384962, -0.915161, -0.119521,
		0.880591, -0.402983, 0.249328,
		32.432808, 39.169865, 48.464851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711580, 38.842457, 48.541420>,  <31.816393, 39.451954, 48.290321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711580, 38.842457, 48.541420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017979, 39.055771, 48.685005>,  <32.201817, 39.183762, 48.771156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017979, 39.055771, 48.685005>,  <31.711580, 38.842457, 48.541420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017979, 39.055771, 48.685005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391901, -0.055245, 0.918347,
		0.509574, -0.844128, 0.166679,
		0.765994, 0.533288, 0.358966,
		32.247776, 39.215755, 48.792694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987818, 38.591331, 49.188576>,  <31.711580, 38.842457, 48.541420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987818, 38.591331, 49.188576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086449, 38.973446, 49.253841>,  <32.145626, 39.202717, 49.292999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086449, 38.973446, 49.253841>,  <31.987818, 38.591331, 49.188576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086449, 38.973446, 49.253841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250631, -0.099773, 0.962927,
		0.936153, -0.278329, 0.214824,
		0.246577, 0.955289, 0.163161,
		32.160423, 39.260033, 49.302788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452660, 38.680298, 49.801052>,  <31.987818, 38.591331, 49.188576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452660, 38.680298, 49.801052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294552, 39.044342, 49.751320>,  <32.199688, 39.262768, 49.721481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294552, 39.044342, 49.751320>,  <32.452660, 38.680298, 49.801052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294552, 39.044342, 49.751320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264755, 0.016725, 0.964171,
		0.879582, 0.414027, 0.234345,
		-0.395273, 0.910111, -0.124327,
		32.175968, 39.317375, 49.714024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733078, 39.146233, 50.323372>,  <32.452660, 38.680298, 49.801052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733078, 39.146233, 50.323372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391586, 39.328583, 50.222717>,  <32.186691, 39.437992, 50.162323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391586, 39.328583, 50.222717>,  <32.733078, 39.146233, 50.323372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391586, 39.328583, 50.222717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208237, 0.144033, 0.967415,
		0.477269, 0.878310, -0.028034,
		-0.853728, 0.455880, -0.251639,
		32.135468, 39.465347, 50.147224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659126, 39.660282, 50.799629>,  <32.733078, 39.146233, 50.323372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659126, 39.660282, 50.799629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288876, 39.583321, 50.669273>,  <32.066727, 39.537144, 50.591061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288876, 39.583321, 50.669273>,  <32.659126, 39.660282, 50.799629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288876, 39.583321, 50.669273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338855, 0.037902, 0.940075,
		-0.168521, 0.980584, -0.100279,
		-0.925623, -0.192403, -0.325888,
		32.011189, 39.525600, 50.571507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232521, 40.306572, 51.016621>,  <32.659126, 39.660282, 50.799629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232521, 40.306572, 51.016621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028805, 39.966141, 50.965561>,  <31.906576, 39.761883, 50.934925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028805, 39.966141, 50.965561>,  <32.232521, 40.306572, 51.016621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028805, 39.966141, 50.965561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311262, 0.043879, 0.949311,
		-0.802336, 0.523203, -0.287255,
		-0.509287, -0.851078, -0.127647,
		31.876019, 39.710819, 50.927265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688616, 40.507202, 51.461582>,  <32.232521, 40.306572, 51.016621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688616, 40.507202, 51.461582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650755, 40.116390, 51.385204>,  <31.628038, 39.881905, 51.339378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650755, 40.116390, 51.385204>,  <31.688616, 40.507202, 51.461582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650755, 40.116390, 51.385204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392251, -0.139687, 0.909190,
		-0.914976, 0.160953, -0.370019,
		-0.094650, -0.977027, -0.190944,
		31.622360, 39.823280, 51.327923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070147, 40.313290, 51.761539>,  <31.688616, 40.507202, 51.461582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070147, 40.313290, 51.761539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277924, 39.977360, 51.698463>,  <31.402590, 39.775803, 51.660618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277924, 39.977360, 51.698463>,  <31.070147, 40.313290, 51.761539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277924, 39.977360, 51.698463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324635, -0.364661, 0.872717,
		-0.790436, -0.402135, -0.462059,
		0.519445, -0.839828, -0.157694,
		31.433758, 39.725410, 51.651154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650522, 39.681694, 51.705982>,  <31.070147, 40.313290, 51.761539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650522, 39.681694, 51.705982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010458, 39.597286, 51.858692>,  <31.226419, 39.546642, 51.950317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010458, 39.597286, 51.858692>,  <30.650522, 39.681694, 51.705982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010458, 39.597286, 51.858692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435808, -0.396979, 0.807761,
		-0.018898, -0.893239, -0.449184,
		0.899841, -0.211023, 0.381779,
		31.280411, 39.533978, 51.973225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731422, 38.951752, 52.056099>,  <30.650522, 39.681694, 51.705982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731422, 38.951752, 52.056099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007864, 39.186691, 52.224571>,  <31.173729, 39.327656, 52.325653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007864, 39.186691, 52.224571>,  <30.731422, 38.951752, 52.056099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007864, 39.186691, 52.224571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328148, -0.264223, 0.906921,
		0.643966, -0.764987, 0.010132,
		0.691105, 0.587351, 0.421180,
		31.215197, 39.362896, 52.350925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123602, 38.523388, 52.495644>,  <30.731422, 38.951752, 52.056099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123602, 38.523388, 52.495644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106672, 38.907131, 52.607246>,  <31.096516, 39.137375, 52.674210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106672, 38.907131, 52.607246>,  <31.123602, 38.523388, 52.495644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106672, 38.907131, 52.607246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397891, -0.272340, 0.876078,
		0.916456, -0.073936, 0.393246,
		-0.042323, 0.959356, 0.279006,
		31.093975, 39.194939, 52.690948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493296, 38.625820, 53.117245>,  <31.123602, 38.523388, 52.495644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493296, 38.625820, 53.117245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193874, 38.883034, 53.052525>,  <31.014221, 39.037361, 53.013691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193874, 38.883034, 53.052525>,  <31.493296, 38.625820, 53.117245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193874, 38.883034, 53.052525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334565, -0.155601, 0.929438,
		0.572484, 0.749864, 0.331612,
		-0.748551, 0.643033, -0.161799,
		30.969309, 39.075943, 53.003986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990147, 38.643539, 53.694084>,  <31.493296, 38.625820, 53.117245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990147, 38.643539, 53.694084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046028, 38.247852, 53.711662>,  <32.079556, 38.010441, 53.722210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046028, 38.247852, 53.711662>,  <31.990147, 38.643539, 53.694084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046028, 38.247852, 53.711662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733627, 0.073593, -0.675555,
		0.665037, 0.126618, 0.735998,
		0.139702, -0.989218, 0.043948,
		32.087940, 37.951088, 53.724846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722805, 38.620663, 53.760277>,  <31.990147, 38.643539, 53.694084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722805, 38.620663, 53.760277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568363, 38.295734, 53.585434>,  <32.475697, 38.100777, 53.480530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568363, 38.295734, 53.585434>,  <32.722805, 38.620663, 53.760277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568363, 38.295734, 53.585434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804385, -0.064537, -0.590593,
		0.451540, -0.579632, 0.678335,
		-0.386105, -0.812319, -0.437106,
		32.452530, 38.052040, 53.454304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106117, 37.995041, 53.829193>,  <32.722805, 38.620663, 53.760277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106117, 37.995041, 53.829193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879818, 38.017265, 53.500111>,  <32.744038, 38.030598, 53.302662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879818, 38.017265, 53.500111>,  <33.106117, 37.995041, 53.829193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879818, 38.017265, 53.500111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819032, -0.077640, -0.568470,
		-0.095457, -0.995432, -0.001578,
		-0.565751, 0.055557, -0.822702,
		32.710094, 38.033932, 53.253300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381130, 37.474869, 53.280754>,  <33.106117, 37.995041, 53.829193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381130, 37.474869, 53.280754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209595, 37.797028, 53.117077>,  <33.106674, 37.990322, 53.018871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209595, 37.797028, 53.117077>,  <33.381130, 37.474869, 53.280754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209595, 37.797028, 53.117077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771048, 0.090295, -0.630342,
		-0.470728, -0.585818, -0.659722,
		-0.428836, 0.805397, -0.409190,
		33.080944, 38.038647, 52.994320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665127, 37.417336, 53.023144>,  <33.381130, 37.474869, 53.280754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665127, 37.417336, 53.023144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315128, 37.500149, 52.848091>,  <32.105129, 37.549835, 52.743061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315128, 37.500149, 52.848091>,  <32.665127, 37.417336, 53.023144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315128, 37.500149, 52.848091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176176, -0.705807, -0.686148,
		-0.450934, -0.677477, 0.581106,
		-0.874997, 0.207031, -0.437627,
		32.052628, 37.562260, 52.716805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376976, 36.818676, 53.008583>,  <32.665127, 37.417336, 53.023144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376976, 36.818676, 53.008583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237801, 37.059776, 52.721352>,  <32.154297, 37.204437, 52.549015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237801, 37.059776, 52.721352>,  <32.376976, 36.818676, 53.008583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237801, 37.059776, 52.721352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177443, -0.709750, -0.681740,
		-0.920572, -0.364621, 0.139997,
		-0.347940, 0.602749, -0.718075,
		32.133419, 37.240601, 52.505928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972210, 36.487331, 52.478767>,  <32.376976, 36.818676, 53.008583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972210, 36.487331, 52.478767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146793, 36.806145, 52.311798>,  <32.251545, 36.997433, 52.211617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146793, 36.806145, 52.311798>,  <31.972210, 36.487331, 52.478767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146793, 36.806145, 52.311798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297308, -0.565646, -0.769190,
		-0.849183, 0.211617, -0.483846,
		0.436459, 0.797034, -0.417421,
		32.277733, 37.045254, 52.186573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985708, 36.464878, 51.753819>,  <31.972210, 36.487331, 52.478767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985708, 36.464878, 51.753819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264458, 36.748444, 51.797287>,  <32.431709, 36.918583, 51.823368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264458, 36.748444, 51.797287>,  <31.985708, 36.464878, 51.753819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264458, 36.748444, 51.797287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402210, -0.260851, -0.877601,
		-0.593795, 0.655287, -0.466912,
		0.696875, 0.708912, 0.108671,
		32.473518, 36.961117, 51.829887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075596, 36.740818, 51.131405>,  <31.985708, 36.464878, 51.753819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075596, 36.740818, 51.131405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419514, 36.859085, 51.297935>,  <32.625866, 36.930046, 51.397854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419514, 36.859085, 51.297935>,  <32.075596, 36.740818, 51.131405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419514, 36.859085, 51.297935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497861, -0.304156, -0.812172,
		-0.113503, 0.905577, -0.408714,
		0.859798, 0.295666, 0.416329,
		32.677452, 36.947784, 51.422832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366760, 37.243996, 50.686985>,  <32.075596, 36.740818, 51.131405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366760, 37.243996, 50.686985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668716, 37.092037, 50.900833>,  <32.849888, 37.000862, 51.029140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668716, 37.092037, 50.900833>,  <32.366760, 37.243996, 50.686985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668716, 37.092037, 50.900833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517388, -0.156003, -0.841411,
		0.403054, 0.911778, 0.078790,
		0.754889, -0.379900, 0.534621,
		32.895184, 36.978065, 51.061218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043705, 37.534286, 50.509422>,  <32.366760, 37.243996, 50.686985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043705, 37.534286, 50.509422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140808, 37.180714, 50.669289>,  <33.199070, 36.968571, 50.765209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140808, 37.180714, 50.669289>,  <33.043705, 37.534286, 50.509422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140808, 37.180714, 50.669289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535570, -0.221394, -0.814954,
		0.808846, 0.411890, 0.419660,
		0.242761, -0.883929, 0.399670,
		33.213638, 36.915535, 50.789188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709152, 37.385296, 50.126926>,  <33.043705, 37.534286, 50.509422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709152, 37.385296, 50.126926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632450, 37.049843, 50.330856>,  <33.586430, 36.848572, 50.453217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632450, 37.049843, 50.330856>,  <33.709152, 37.385296, 50.126926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632450, 37.049843, 50.330856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736406, -0.466347, -0.490129,
		0.648795, 0.281453, 0.707000,
		-0.191759, -0.838632, 0.509827,
		33.574921, 36.798252, 50.483803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323742, 37.200272, 50.511890>,  <33.709152, 37.385296, 50.126926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323742, 37.200272, 50.511890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104424, 36.875027, 50.433678>,  <33.972832, 36.679882, 50.386749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104424, 36.875027, 50.433678>,  <34.323742, 37.200272, 50.511890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104424, 36.875027, 50.433678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810964, -0.459854, -0.361761,
		0.204236, -0.356917, 0.911536,
		-0.548292, -0.813108, -0.195528,
		33.939938, 36.631096, 50.375019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805271, 36.692554, 50.402672>,  <34.323742, 37.200272, 50.511890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805271, 36.692554, 50.402672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484116, 36.498478, 50.264133>,  <34.291420, 36.382034, 50.181011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484116, 36.498478, 50.264133>,  <34.805271, 36.692554, 50.402672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484116, 36.498478, 50.264133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590140, -0.564794, -0.576839,
		0.084261, -0.667533, 0.739797,
		-0.802892, -0.485188, -0.346348,
		34.243248, 36.352921, 50.160229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925999, 35.970440, 50.323162>,  <34.805271, 36.692554, 50.402672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925999, 35.970440, 50.323162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606911, 35.972157, 50.081955>,  <34.415459, 35.973186, 49.937233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606911, 35.972157, 50.081955>,  <34.925999, 35.970440, 50.323162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606911, 35.972157, 50.081955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399730, -0.744949, -0.534104,
		-0.451508, -0.667108, 0.592543,
		-0.797720, 0.004295, -0.603013,
		34.367596, 35.973446, 49.901051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693565, 35.318260, 50.219250>,  <34.925999, 35.970440, 50.323162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693565, 35.318260, 50.219250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530701, 35.494316, 49.899124>,  <34.432980, 35.599949, 49.707050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530701, 35.494316, 49.899124>,  <34.693565, 35.318260, 50.219250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530701, 35.494316, 49.899124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202653, -0.810858, -0.549038,
		-0.890590, -0.385734, 0.240957,
		-0.407164, 0.440136, -0.800311,
		34.408550, 35.626358, 49.659031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433254, 34.739681, 49.923923>,  <34.693565, 35.318260, 50.219250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433254, 34.739681, 49.923923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448853, 35.039040, 49.659084>,  <34.458210, 35.218655, 49.500179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448853, 35.039040, 49.659084>,  <34.433254, 34.739681, 49.923923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448853, 35.039040, 49.659084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317415, -0.637565, -0.701967,
		-0.947485, -0.182786, -0.262416,
		0.038997, 0.748398, -0.662102,
		34.460552, 35.263557, 49.460453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167484, 34.534161, 49.252068>,  <34.433254, 34.739681, 49.923923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167484, 34.534161, 49.252068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406479, 34.841564, 49.160503>,  <34.549877, 35.026009, 49.105564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406479, 34.841564, 49.160503>,  <34.167484, 34.534161, 49.252068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406479, 34.841564, 49.160503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301920, -0.480060, -0.823642,
		-0.742867, 0.423005, -0.518859,
		0.597489, 0.768511, -0.228907,
		34.585724, 35.072117, 49.091831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876904, 34.835060, 48.704643>,  <34.167484, 34.534161, 49.252068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876904, 34.835060, 48.704643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258114, 34.956154, 48.708401>,  <34.486839, 35.028809, 48.710655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258114, 34.956154, 48.708401>,  <33.876904, 34.835060, 48.704643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258114, 34.956154, 48.708401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092995, -0.262958, -0.960315,
		-0.288249, 0.916082, -0.278759,
		0.953029, 0.302733, 0.009394,
		34.544022, 35.046974, 48.711220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975700, 35.113995, 47.987160>,  <33.876904, 34.835060, 48.704643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975700, 35.113995, 47.987160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330994, 35.033722, 48.152454>,  <34.544170, 34.985558, 48.251633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330994, 35.033722, 48.152454>,  <33.975700, 35.113995, 47.987160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330994, 35.033722, 48.152454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372672, -0.211209, -0.903607,
		0.268613, 0.956619, -0.112817,
		0.888236, -0.200677, 0.413238,
		34.597466, 34.973518, 48.276424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399395, 35.398365, 47.566105>,  <33.975700, 35.113995, 47.987160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399395, 35.398365, 47.566105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653950, 35.172611, 47.776428>,  <34.806683, 35.037159, 47.902622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653950, 35.172611, 47.776428>,  <34.399395, 35.398365, 47.566105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653950, 35.172611, 47.776428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481563, -0.241813, -0.842391,
		0.602584, 0.789298, 0.117902,
		0.636387, -0.564389, 0.525810,
		34.844868, 35.003296, 47.934170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129097, 35.676220, 47.503716>,  <34.399395, 35.398365, 47.566105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129097, 35.676220, 47.503716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110416, 35.281235, 47.564030>,  <35.099209, 35.044243, 47.600220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110416, 35.281235, 47.564030>,  <35.129097, 35.676220, 47.503716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110416, 35.281235, 47.564030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368426, -0.157337, -0.916246,
		0.928483, 0.012759, 0.371155,
		-0.046706, -0.987463, 0.150785,
		35.096405, 34.984997, 47.609264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588516, 35.454113, 47.109459>,  <35.129097, 35.676220, 47.503716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588516, 35.454113, 47.109459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380684, 35.118114, 47.171989>,  <35.255985, 34.916515, 47.209507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380684, 35.118114, 47.171989>,  <35.588516, 35.454113, 47.109459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380684, 35.118114, 47.171989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236157, -0.317024, -0.918545,
		0.821137, -0.440339, 0.363091,
		-0.519580, -0.839999, 0.156331,
		35.224812, 34.866116, 47.218887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012428, 34.877804, 46.988659>,  <35.588516, 35.454113, 47.109459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012428, 34.877804, 46.988659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645390, 34.727165, 46.937748>,  <35.425167, 34.636784, 46.907200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645390, 34.727165, 46.937748>,  <36.012428, 34.877804, 46.988659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645390, 34.727165, 46.937748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299658, -0.444899, -0.843961,
		0.261204, -0.812553, 0.521085,
		-0.917593, -0.376594, -0.127279,
		35.370113, 34.614185, 46.899563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139946, 34.182755, 46.773430>,  <36.012428, 34.877804, 46.988659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139946, 34.182755, 46.773430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766670, 34.275333, 46.663452>,  <35.542706, 34.330883, 46.597466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766670, 34.275333, 46.663452>,  <36.139946, 34.182755, 46.773430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766670, 34.275333, 46.663452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149771, -0.444976, -0.882930,
		-0.326696, -0.865117, 0.380581,
		-0.933187, 0.231450, -0.274942,
		35.486713, 34.344769, 46.580971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836437, 33.570030, 46.625107>,  <36.139946, 34.182755, 46.773430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836437, 33.570030, 46.625107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618183, 33.846176, 46.435085>,  <35.487232, 34.011864, 46.321072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618183, 33.846176, 46.435085>,  <35.836437, 33.570030, 46.625107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618183, 33.846176, 46.435085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010440, -0.561235, -0.827590,
		-0.837958, -0.456523, 0.299022,
		-0.545636, 0.690364, -0.475058,
		35.454491, 34.053284, 46.292568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337257, 33.228374, 46.289646>,  <35.836437, 33.570030, 46.625107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337257, 33.228374, 46.289646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319523, 33.575600, 46.091858>,  <35.308880, 33.783936, 45.973186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319523, 33.575600, 46.091858>,  <35.337257, 33.228374, 46.289646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319523, 33.575600, 46.091858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084017, -0.496440, -0.863996,
		-0.995477, 0.003233, 0.094944,
		-0.044341, 0.868065, -0.494466,
		35.306221, 33.836018, 45.943520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759193, 33.247402, 45.755569>,  <35.337257, 33.228374, 46.289646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759193, 33.247402, 45.755569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037968, 33.502380, 45.624146>,  <35.205231, 33.655365, 45.545292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037968, 33.502380, 45.624146>,  <34.759193, 33.247402, 45.755569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037968, 33.502380, 45.624146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050169, -0.413695, -0.909032,
		-0.715378, 0.650019, -0.256339,
		0.696934, 0.637441, -0.328559,
		35.247047, 33.693611, 45.525578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620071, 33.260555, 45.037342>,  <34.759193, 33.247402, 45.755569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620071, 33.260555, 45.037342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971317, 33.451843, 45.031521>,  <35.182064, 33.566616, 45.028027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971317, 33.451843, 45.031521>,  <34.620071, 33.260555, 45.037342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971317, 33.451843, 45.031521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154633, -0.312466, -0.937258,
		-0.452768, 0.820771, -0.348331,
		0.878117, 0.478225, -0.014556,
		35.234753, 33.595310, 45.027153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653961, 33.532047, 44.386627>,  <34.620071, 33.260555, 45.037342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653961, 33.532047, 44.386627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039192, 33.560047, 44.490608>,  <35.270332, 33.576847, 44.552998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039192, 33.560047, 44.490608>,  <34.653961, 33.532047, 44.386627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039192, 33.560047, 44.490608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269204, -0.241088, -0.932419,
		-0.002601, 0.967975, -0.251032,
		0.963080, 0.070004, 0.259956,
		35.328117, 33.581047, 44.568596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901054, 33.873085, 43.856800>,  <34.653961, 33.532047, 44.386627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901054, 33.873085, 43.856800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246506, 33.752331, 44.018299>,  <35.453777, 33.679878, 44.115200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246506, 33.752331, 44.018299>,  <34.901054, 33.873085, 43.856800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246506, 33.752331, 44.018299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370300, -0.163595, -0.914393,
		0.342098, 0.939201, -0.029495,
		0.863624, -0.301890, 0.403752,
		35.505592, 33.661762, 44.139423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403423, 34.251949, 43.462833>,  <34.901054, 33.873085, 43.856800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403423, 34.251949, 43.462833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567226, 33.928654, 43.632095>,  <35.665508, 33.734676, 43.733654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567226, 33.928654, 43.632095>,  <35.403423, 34.251949, 43.462833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567226, 33.928654, 43.632095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338232, -0.296276, -0.893207,
		0.847292, 0.508899, 0.152044,
		0.409505, -0.808234, 0.423158,
		35.690079, 33.686184, 43.759045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014290, 34.190464, 43.170612>,  <35.403423, 34.251949, 43.462833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014290, 34.190464, 43.170612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976219, 33.821442, 43.320190>,  <35.953377, 33.600029, 43.409935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976219, 33.821442, 43.320190>,  <36.014290, 34.190464, 43.170612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976219, 33.821442, 43.320190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503833, -0.368624, -0.781197,
		0.858541, 0.114050, 0.499900,
		-0.095180, -0.922556, 0.373941,
		35.947666, 33.544674, 43.432373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706463, 33.873974, 43.104336>,  <36.014290, 34.190464, 43.170612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706463, 33.873974, 43.104336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446831, 33.573803, 43.154224>,  <36.291054, 33.393700, 43.184158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446831, 33.573803, 43.154224>,  <36.706463, 33.873974, 43.104336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446831, 33.573803, 43.154224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305486, -0.407272, -0.860702,
		0.696691, -0.520561, 0.493597,
		-0.649076, -0.750431, 0.124718,
		36.252110, 33.348675, 43.191639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092892, 33.337360, 43.019806>,  <36.706463, 33.873974, 43.104336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092892, 33.337360, 43.019806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713715, 33.231449, 42.949032>,  <36.486210, 33.167904, 42.906567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713715, 33.231449, 42.949032>,  <37.092892, 33.337360, 43.019806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713715, 33.231449, 42.949032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300339, -0.558634, -0.773126,
		0.105865, -0.786016, 0.609073,
		-0.947940, -0.264775, -0.176931,
		36.429333, 33.152016, 42.895954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101555, 32.621891, 42.833694>,  <37.092892, 33.337360, 43.019806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101555, 32.621891, 42.833694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773808, 32.789108, 42.676788>,  <36.577160, 32.889439, 42.582645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773808, 32.789108, 42.676788>,  <37.101555, 32.621891, 42.833694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773808, 32.789108, 42.676788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230816, -0.385768, -0.893256,
		-0.524747, -0.822447, 0.219594,
		-0.819369, 0.418048, -0.392265,
		36.527996, 32.914524, 42.559109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751255, 32.112389, 42.372536>,  <37.101555, 32.621891, 42.833694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751255, 32.112389, 42.372536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606514, 32.469990, 42.266834>,  <36.519669, 32.684551, 42.203415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606514, 32.469990, 42.266834>,  <36.751255, 32.112389, 42.372536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606514, 32.469990, 42.266834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149249, -0.224250, -0.963035,
		-0.920211, -0.387914, -0.052284,
		-0.361850, 0.893999, -0.264253,
		36.497959, 32.738190, 42.187557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365143, 31.914660, 41.750526>,  <36.751255, 32.112389, 42.372536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365143, 31.914660, 41.750526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404823, 32.311703, 41.722569>,  <36.428631, 32.549931, 41.705795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404823, 32.311703, 41.722569>,  <36.365143, 31.914660, 41.750526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404823, 32.311703, 41.722569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150227, -0.084373, -0.985044,
		-0.983662, 0.087213, -0.157487,
		0.099197, 0.992610, -0.069893,
		36.434582, 32.609486, 41.701599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930489, 32.090820, 41.180286>,  <36.365143, 31.914660, 41.750526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930489, 32.090820, 41.180286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179462, 32.398422, 41.238529>,  <36.328846, 32.582985, 41.273476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179462, 32.398422, 41.238529>,  <35.930489, 32.090820, 41.180286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179462, 32.398422, 41.238529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212179, 0.013274, -0.977141,
		-0.753360, 0.639104, -0.154904,
		0.622438, 0.769006, 0.145605,
		36.366196, 32.629124, 41.282211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851677, 32.624588, 40.679470>,  <35.930489, 32.090820, 41.180286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851677, 32.624588, 40.679470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232521, 32.678715, 40.789146>,  <36.461025, 32.711189, 40.854954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232521, 32.678715, 40.789146>,  <35.851677, 32.624588, 40.679470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232521, 32.678715, 40.789146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277797, -0.008133, -0.960605,
		-0.127757, 0.990769, -0.045335,
		0.952107, 0.135318, 0.274193,
		36.518154, 32.719311, 40.871403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088928, 33.145554, 40.284653>,  <35.851677, 32.624588, 40.679470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088928, 33.145554, 40.284653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428757, 32.981419, 40.417229>,  <36.632652, 32.882938, 40.496773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428757, 32.981419, 40.417229>,  <36.088928, 33.145554, 40.284653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428757, 32.981419, 40.417229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447824, 0.229083, -0.864277,
		0.278722, 0.882689, 0.378383,
		0.849569, -0.410342, 0.331439,
		36.683628, 32.858315, 40.516659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654797, 33.583824, 39.944641>,  <36.088928, 33.145554, 40.284653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654797, 33.583824, 39.944641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802414, 33.233879, 40.070129>,  <36.890984, 33.023911, 40.145420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802414, 33.233879, 40.070129>,  <36.654797, 33.583824, 39.944641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802414, 33.233879, 40.070129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638506, -0.006626, -0.769589,
		0.675365, 0.484321, 0.556161,
		0.369042, -0.874865, 0.313717,
		36.913128, 32.971420, 40.164246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429607, 33.609337, 39.935883>,  <36.654797, 33.583824, 39.944641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429607, 33.609337, 39.935883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305557, 33.229397, 39.919804>,  <37.231129, 33.001434, 39.910156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305557, 33.229397, 39.919804>,  <37.429607, 33.609337, 39.935883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305557, 33.229397, 39.919804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463032, -0.113980, -0.878982,
		0.830316, -0.291207, 0.475157,
		-0.310124, -0.949846, -0.040199,
		37.212521, 32.944443, 39.907745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011318, 33.282246, 39.676342>,  <37.429607, 33.609337, 39.935883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011318, 33.282246, 39.676342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720200, 33.010517, 39.638748>,  <37.545528, 32.847481, 39.616192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720200, 33.010517, 39.638748>,  <38.011318, 33.282246, 39.676342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720200, 33.010517, 39.638748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328778, -0.225349, -0.917128,
		0.601844, -0.698384, 0.387354,
		-0.727797, -0.679322, -0.093988,
		37.501862, 32.806721, 39.610550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384132, 32.740395, 39.409153>,  <38.011318, 33.282246, 39.676342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384132, 32.740395, 39.409153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007183, 32.638248, 39.322685>,  <37.781013, 32.576962, 39.270805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007183, 32.638248, 39.322685>,  <38.384132, 32.740395, 39.409153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007183, 32.638248, 39.322685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255931, -0.134033, -0.957358,
		0.215502, -0.957509, 0.191664,
		-0.942368, -0.255365, -0.216172,
		37.724472, 32.561638, 39.257835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410988, 32.088146, 39.047607>,  <38.384132, 32.740395, 39.409153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410988, 32.088146, 39.047607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082615, 32.293770, 38.948154>,  <37.885590, 32.417145, 38.888485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082615, 32.293770, 38.948154>,  <38.410988, 32.088146, 39.047607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082615, 32.293770, 38.948154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225902, -0.107524, -0.968198,
		-0.524443, -0.850990, -0.027857,
		-0.820931, 0.514057, -0.248631,
		37.836334, 32.447987, 38.873566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859928, 31.488831, 38.791309>,  <38.410988, 32.088146, 39.047607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859928, 31.488831, 38.791309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201298, 31.573017, 38.982040>,  <39.406120, 31.623529, 39.096481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201298, 31.573017, 38.982040>,  <38.859928, 31.488831, 38.791309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201298, 31.573017, 38.982040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488062, 0.001627, 0.872808,
		0.182925, -0.977599, 0.104111,
		0.853425, 0.210471, 0.476831,
		39.457325, 31.636158, 39.125092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889729, 31.004866, 39.399284>,  <38.859928, 31.488831, 38.791309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889729, 31.004866, 39.399284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181404, 31.254917, 39.510632>,  <39.356411, 31.404949, 39.577442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181404, 31.254917, 39.510632>,  <38.889729, 31.004866, 39.399284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181404, 31.254917, 39.510632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306490, -0.065360, 0.949627,
		0.611835, -0.777780, 0.143936,
		0.729193, 0.625130, 0.278371,
		39.400162, 31.442455, 39.594143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204327, 30.702682, 39.976208>,  <38.889729, 31.004866, 39.399284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204327, 30.702682, 39.976208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299084, 31.091253, 39.970379>,  <39.355938, 31.324396, 39.966881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299084, 31.091253, 39.970379>,  <39.204327, 30.702682, 39.976208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299084, 31.091253, 39.970379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297909, 0.086908, 0.950630,
		0.924733, -0.220857, 0.309985,
		0.236894, 0.971426, -0.014572,
		39.370152, 31.382681, 39.966007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722431, 30.824327, 40.386292>,  <39.204327, 30.702682, 39.976208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722431, 30.824327, 40.386292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606731, 31.207035, 40.398445>,  <39.537312, 31.436661, 40.405739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606731, 31.207035, 40.398445>,  <39.722431, 30.824327, 40.386292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606731, 31.207035, 40.398445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051166, -0.047154, 0.997576,
		0.955884, 0.286997, 0.062594,
		-0.289253, 0.956770, 0.030389,
		39.519955, 31.494066, 40.407562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107792, 31.176849, 40.923901>,  <39.722431, 30.824327, 40.386292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107792, 31.176849, 40.923901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761246, 31.360441, 40.845161>,  <39.553318, 31.470596, 40.797920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761246, 31.360441, 40.845161>,  <40.107792, 31.176849, 40.923901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761246, 31.360441, 40.845161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108589, 0.211598, 0.971306,
		0.487463, 0.862880, -0.133481,
		-0.866365, 0.458981, -0.196846,
		39.501335, 31.498135, 40.786106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175377, 31.617920, 41.418957>,  <40.107792, 31.176849, 40.923901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175377, 31.617920, 41.418957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788124, 31.622290, 41.318882>,  <39.555771, 31.624912, 41.258839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788124, 31.622290, 41.318882>,  <40.175377, 31.617920, 41.418957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788124, 31.622290, 41.318882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237386, 0.278120, 0.930751,
		0.079751, 0.960484, -0.266664,
		-0.968136, 0.010925, -0.250186,
		39.497684, 31.625566, 41.243828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960278, 32.205185, 41.724621>,  <40.175377, 31.617920, 41.418957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960278, 32.205185, 41.724621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628365, 31.986923, 41.677761>,  <39.429218, 31.855967, 41.649647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628365, 31.986923, 41.677761>,  <39.960278, 32.205185, 41.724621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628365, 31.986923, 41.677761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333291, 0.316140, 0.888241,
		-0.447638, 0.776090, -0.444189,
		-0.829781, -0.545655, -0.117148,
		39.379429, 31.823227, 41.642616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445969, 32.682018, 41.972565>,  <39.960278, 32.205185, 41.724621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445969, 32.682018, 41.972565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260742, 32.328270, 41.949039>,  <39.149605, 32.116020, 41.934925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260742, 32.328270, 41.949039>,  <39.445969, 32.682018, 41.972565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260742, 32.328270, 41.949039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273470, 0.079448, 0.958594,
		-0.843079, 0.459976, -0.278638,
		-0.463068, -0.884370, -0.058808,
		39.121822, 32.062958, 41.931396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692730, 32.831959, 42.213974>,  <39.445969, 32.682018, 41.972565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692730, 32.831959, 42.213974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772133, 32.442913, 42.262318>,  <38.819775, 32.209484, 42.291325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772133, 32.442913, 42.262318>,  <38.692730, 32.831959, 42.213974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772133, 32.442913, 42.262318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261655, 0.066249, 0.962885,
		-0.944526, -0.222767, -0.241339,
		0.198511, -0.972618, 0.120862,
		38.831688, 32.151127, 42.298576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085434, 32.531059, 42.514984>,  <38.692730, 32.831959, 42.213974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085434, 32.531059, 42.514984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381992, 32.283161, 42.617931>,  <38.559929, 32.134422, 42.679699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381992, 32.283161, 42.617931>,  <38.085434, 32.531059, 42.514984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381992, 32.283161, 42.617931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181811, 0.183678, 0.966026,
		-0.645966, -0.763004, 0.023502,
		0.741399, -0.619748, 0.257373,
		38.604412, 32.097237, 42.695145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689926, 32.011375, 42.892258>,  <38.085434, 32.531059, 42.514984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689926, 32.011375, 42.892258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080097, 31.975416, 42.972721>,  <38.314198, 31.953840, 43.021000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080097, 31.975416, 42.972721>,  <37.689926, 32.011375, 42.892258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080097, 31.975416, 42.972721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198771, 0.034805, 0.979428,
		-0.095055, -0.995342, 0.016080,
		0.975425, -0.089903, 0.201154,
		38.372726, 31.948446, 43.033066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773804, 31.536772, 43.427654>,  <37.689926, 32.011375, 42.892258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773804, 31.536772, 43.427654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118603, 31.737509, 43.456238>,  <38.325485, 31.857950, 43.473389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118603, 31.737509, 43.456238>,  <37.773804, 31.536772, 43.427654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118603, 31.737509, 43.456238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136579, 0.094182, 0.986142,
		0.488158, -0.859816, 0.149726,
		0.862002, 0.501843, 0.071457,
		38.377205, 31.888062, 43.477676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125206, 31.264927, 44.065403>,  <37.773804, 31.536772, 43.427654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125206, 31.264927, 44.065403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283131, 31.620132, 43.971123>,  <38.377884, 31.833256, 43.914555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283131, 31.620132, 43.971123>,  <38.125206, 31.264927, 44.065403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283131, 31.620132, 43.971123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122617, 0.305172, 0.944370,
		0.910543, -0.343948, 0.229371,
		0.394812, 0.888014, -0.235698,
		38.401573, 31.886538, 43.900414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586430, 31.541117, 44.691788>,  <38.125206, 31.264927, 44.065403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586430, 31.541117, 44.691788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562336, 31.898449, 44.513653>,  <38.547882, 32.112850, 44.406769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562336, 31.898449, 44.513653>,  <38.586430, 31.541117, 44.691788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562336, 31.898449, 44.513653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011767, 0.445486, 0.895212,
		0.998115, 0.059160, -0.016320,
		-0.060231, 0.893332, -0.445342,
		38.544266, 32.166451, 44.380051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226276, 31.956001, 44.907970>,  <38.586430, 31.541117, 44.691788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226276, 31.956001, 44.907970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900814, 32.169006, 44.814682>,  <38.705536, 32.296810, 44.758709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900814, 32.169006, 44.814682>,  <39.226276, 31.956001, 44.907970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900814, 32.169006, 44.814682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008963, 0.412624, 0.910857,
		0.581276, 0.739035, -0.340508,
		-0.813657, 0.532511, -0.233225,
		38.656715, 32.328758, 44.744713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344185, 32.613255, 45.254868>,  <39.226276, 31.956001, 44.907970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344185, 32.613255, 45.254868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957157, 32.627434, 45.154831>,  <38.724941, 32.635941, 45.094807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957157, 32.627434, 45.154831>,  <39.344185, 32.613255, 45.254868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957157, 32.627434, 45.154831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183096, 0.583646, 0.791097,
		0.174013, 0.811234, -0.558228,
		-0.967572, 0.035452, -0.250095,
		38.666885, 32.638069, 45.079803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112045, 33.280006, 45.362087>,  <39.344185, 32.613255, 45.254868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112045, 33.280006, 45.362087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780891, 33.056210, 45.377945>,  <38.582199, 32.921932, 45.387459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780891, 33.056210, 45.377945>,  <39.112045, 33.280006, 45.362087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780891, 33.056210, 45.377945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313275, 0.519862, 0.794734,
		-0.465258, 0.645530, -0.605662,
		-0.827885, -0.559495, 0.039642,
		38.532524, 32.888363, 45.389839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602425, 33.733978, 45.777168>,  <39.112045, 33.280006, 45.362087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602425, 33.733978, 45.777168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415119, 33.381561, 45.750347>,  <38.302734, 33.170113, 45.734257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415119, 33.381561, 45.750347>,  <38.602425, 33.733978, 45.777168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415119, 33.381561, 45.750347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523609, 0.215565, 0.824236,
		-0.711733, 0.421067, -0.562262,
		-0.468263, -0.881042, -0.067050,
		38.274639, 33.117249, 45.730232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887585, 33.888191, 45.850639>,  <38.602425, 33.733978, 45.777168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887585, 33.888191, 45.850639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946365, 33.510139, 45.967354>,  <37.981632, 33.283310, 46.037384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946365, 33.510139, 45.967354>,  <37.887585, 33.888191, 45.850639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946365, 33.510139, 45.967354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698087, 0.109895, 0.707529,
		-0.700771, -0.307664, -0.643632,
		0.146949, -0.945128, 0.291787,
		37.990452, 33.226601, 46.054890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225166, 33.606152, 45.923439>,  <37.887585, 33.888191, 45.850639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225166, 33.606152, 45.923439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482220, 33.388794, 46.139492>,  <37.636452, 33.258377, 46.269123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482220, 33.388794, 46.139492>,  <37.225166, 33.606152, 45.923439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482220, 33.388794, 46.139492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602621, 0.076882, 0.794316,
		-0.473155, -0.835948, -0.278056,
		0.642629, -0.543397, 0.540137,
		37.675007, 33.225777, 46.301533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751759, 33.132195, 46.303360>,  <37.225166, 33.606152, 45.923439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751759, 33.132195, 46.303360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103046, 33.129532, 46.494644>,  <37.313820, 33.127934, 46.609413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103046, 33.129532, 46.494644>,  <36.751759, 33.132195, 46.303360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103046, 33.129532, 46.494644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457710, 0.278240, 0.844443,
		-0.138676, -0.960488, 0.241311,
		0.878220, -0.006654, 0.478211,
		37.366512, 33.127537, 46.638107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619972, 32.820065, 46.879135>,  <36.751759, 33.132195, 46.303360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619972, 32.820065, 46.879135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966522, 32.993130, 46.978897>,  <37.174450, 33.096970, 47.038754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966522, 32.993130, 46.978897>,  <36.619972, 32.820065, 46.879135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966522, 32.993130, 46.978897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385134, 0.260942, 0.885201,
		0.317920, -0.862965, 0.392707,
		0.866371, 0.432668, 0.249399,
		37.226433, 33.122929, 47.053719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717068, 32.677258, 47.689819>,  <36.619972, 32.820065, 46.879135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717068, 32.677258, 47.689819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949539, 32.981167, 47.573223>,  <37.089024, 33.163513, 47.503265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949539, 32.981167, 47.573223>,  <36.717068, 32.677258, 47.689819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949539, 32.981167, 47.573223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223754, 0.493590, 0.840419,
		0.782410, -0.423211, 0.456867,
		0.581179, 0.759778, -0.291494,
		37.123894, 33.209099, 47.485775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012127, 32.884247, 48.282352>,  <36.717068, 32.677258, 47.689819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012127, 32.884247, 48.282352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152489, 33.202572, 48.084953>,  <37.236706, 33.393566, 47.966515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152489, 33.202572, 48.084953>,  <37.012127, 32.884247, 48.282352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152489, 33.202572, 48.084953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032174, 0.536949, 0.843002,
		0.935859, -0.279933, 0.214021,
		0.350902, 0.795817, -0.493501,
		37.257759, 33.441319, 47.936901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710426, 33.213551, 48.568344>,  <37.012127, 32.884247, 48.282352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710426, 33.213551, 48.568344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505150, 33.491028, 48.366188>,  <37.381985, 33.657513, 48.244892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505150, 33.491028, 48.366188>,  <37.710426, 33.213551, 48.568344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505150, 33.491028, 48.366188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067690, 0.619728, 0.781892,
		0.855600, 0.367052, -0.364997,
		-0.513193, 0.693693, -0.505393,
		37.351192, 33.699135, 48.214569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089977, 33.918159, 48.614418>,  <37.710426, 33.213551, 48.568344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089977, 33.918159, 48.614418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700146, 33.961716, 48.536106>,  <37.466248, 33.987850, 48.489117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700146, 33.961716, 48.536106>,  <38.089977, 33.918159, 48.614418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700146, 33.961716, 48.536106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046251, 0.757308, 0.651418,
		0.219198, 0.643916, -0.733024,
		-0.974583, 0.108887, -0.195782,
		37.407772, 33.994381, 48.477371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047859, 34.563232, 48.625412>,  <38.089977, 33.918159, 48.614418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047859, 34.563232, 48.625412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672676, 34.432545, 48.671883>,  <37.447567, 34.354134, 48.699764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672676, 34.432545, 48.671883>,  <38.047859, 34.563232, 48.625412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672676, 34.432545, 48.671883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190262, 0.765004, 0.615280,
		-0.289897, 0.555001, -0.779701,
		-0.937955, -0.326715, 0.116176,
		37.391289, 34.334530, 48.706734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606411, 35.118221, 48.426868>,  <38.047859, 34.563232, 48.625412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606411, 35.118221, 48.426868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409088, 34.885612, 48.685627>,  <37.290695, 34.746048, 48.840881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409088, 34.885612, 48.685627>,  <37.606411, 35.118221, 48.426868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409088, 34.885612, 48.685627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187595, 0.797309, 0.573678,
		-0.849384, 0.161646, -0.502412,
		-0.493310, -0.581523, 0.646897,
		37.261093, 34.711155, 48.879696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981033, 35.606888, 48.624020>,  <37.606411, 35.118221, 48.426868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981033, 35.606888, 48.624020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968887, 35.314758, 48.896992>,  <36.961601, 35.139481, 49.060776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968887, 35.314758, 48.896992>,  <36.981033, 35.606888, 48.624020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968887, 35.314758, 48.896992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324573, 0.652947, 0.684333,
		-0.945373, -0.200720, -0.256868,
		-0.030362, -0.730323, 0.682427,
		36.959778, 35.095661, 49.101719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470119, 35.867077, 49.107468>,  <36.981033, 35.606888, 48.624020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470119, 35.867077, 49.107468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675758, 35.583607, 49.300747>,  <36.799141, 35.413525, 49.416714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675758, 35.583607, 49.300747>,  <36.470119, 35.867077, 49.107468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675758, 35.583607, 49.300747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135820, 0.488978, 0.861657,
		-0.846910, -0.508605, 0.155131,
		0.514098, -0.708676, 0.483199,
		36.829987, 35.371002, 49.445705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051567, 35.697311, 49.738953>,  <36.470119, 35.867077, 49.107468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051567, 35.697311, 49.738953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426025, 35.575268, 49.808857>,  <36.650700, 35.502041, 49.850800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426025, 35.575268, 49.808857>,  <36.051567, 35.697311, 49.738953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426025, 35.575268, 49.808857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061217, 0.348001, 0.935493,
		-0.346244, -0.886456, 0.307101,
		0.936145, -0.305109, 0.174759,
		36.706867, 35.483734, 49.861286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006428, 35.502472, 50.369255>,  <36.051567, 35.697311, 49.738953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006428, 35.502472, 50.369255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392826, 35.560020, 50.283318>,  <36.624664, 35.594551, 50.231754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392826, 35.560020, 50.283318>,  <36.006428, 35.502472, 50.369255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392826, 35.560020, 50.283318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143178, 0.394266, 0.907774,
		0.215312, -0.907664, 0.360259,
		0.965992, 0.143873, -0.214848,
		36.682625, 35.603184, 50.218864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341549, 35.307240, 50.965481>,  <36.006428, 35.502472, 50.369255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341549, 35.307240, 50.965481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579979, 35.550457, 50.755726>,  <36.723038, 35.696388, 50.629875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579979, 35.550457, 50.755726>,  <36.341549, 35.307240, 50.965481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579979, 35.550457, 50.755726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292643, 0.443647, 0.847076,
		0.747698, -0.658379, 0.086509,
		0.596076, 0.608041, -0.524385,
		36.758801, 35.732868, 50.598412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976971, 35.284740, 51.292316>,  <36.341549, 35.307240, 50.965481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976971, 35.284740, 51.292316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999226, 35.636993, 51.104107>,  <37.012581, 35.848347, 50.991180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999226, 35.636993, 51.104107>,  <36.976971, 35.284740, 51.292316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999226, 35.636993, 51.104107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315891, 0.431520, 0.844987,
		0.947163, -0.195649, -0.254174,
		0.055640, 0.880631, -0.470524,
		37.015919, 35.901184, 50.962952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513756, 35.630943, 51.568104>,  <36.976971, 35.284740, 51.292316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513756, 35.630943, 51.568104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306461, 35.929325, 51.400780>,  <37.182083, 36.108353, 51.300385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306461, 35.929325, 51.400780>,  <37.513756, 35.630943, 51.568104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306461, 35.929325, 51.400780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142298, 0.557510, 0.817884,
		0.843315, 0.364334, -0.395071,
		-0.518239, 0.745951, -0.418312,
		37.150990, 36.153111, 51.275288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805599, 36.280735, 51.897461>,  <37.513756, 35.630943, 51.568104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805599, 36.280735, 51.897461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463154, 36.395351, 51.725430>,  <37.257687, 36.464123, 51.622211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463154, 36.395351, 51.725430>,  <37.805599, 36.280735, 51.897461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463154, 36.395351, 51.725430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038033, 0.795018, 0.605392,
		0.515387, 0.534641, -0.669727,
		-0.856113, 0.286540, -0.430076,
		37.206322, 36.481312, 51.596405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893837, 36.957592, 51.768440>,  <37.805599, 36.280735, 51.897461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893837, 36.957592, 51.768440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502197, 36.879211, 51.790203>,  <37.267212, 36.832184, 51.803261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502197, 36.879211, 51.790203>,  <37.893837, 36.957592, 51.768440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502197, 36.879211, 51.790203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110771, 0.738232, 0.665390,
		-0.170543, 0.645460, -0.744511,
		-0.979104, -0.195948, 0.054402,
		37.208466, 36.820427, 51.806522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558723, 37.548920, 51.618950>,  <37.893837, 36.957592, 51.768440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558723, 37.548920, 51.618950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309811, 37.333347, 51.846043>,  <37.160465, 37.204002, 51.982300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309811, 37.333347, 51.846043>,  <37.558723, 37.548920, 51.618950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309811, 37.333347, 51.846043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123239, 0.648772, 0.750938,
		-0.773034, 0.537259, -0.337299,
		-0.622279, -0.538932, 0.567734,
		37.123127, 37.171669, 52.016361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960125, 38.059387, 51.991116>,  <37.558723, 37.548920, 51.618950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960125, 38.059387, 51.991116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100380, 38.432369, 52.025955>,  <38.184532, 38.656158, 52.046860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100380, 38.432369, 52.025955>,  <37.960125, 38.059387, 51.991116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100380, 38.432369, 52.025955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167840, 0.028927, -0.985390,
		-0.921350, 0.360130, -0.146361,
		0.350634, 0.932454, 0.087096,
		38.205570, 38.712105, 52.052082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771950, 38.374874, 51.361454>,  <37.960125, 38.059387, 51.991116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771950, 38.374874, 51.361454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086441, 38.569904, 51.513302>,  <38.275135, 38.686920, 51.604412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086441, 38.569904, 51.513302>,  <37.771950, 38.374874, 51.361454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086441, 38.569904, 51.513302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502619, -0.147227, -0.851879,
		-0.359462, 0.860580, -0.360818,
		0.786232, 0.487572, 0.379621,
		38.322311, 38.716175, 51.627190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771793, 39.012196, 50.979362>,  <37.771950, 38.374874, 51.361454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771793, 39.012196, 50.979362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135830, 38.929409, 51.122971>,  <38.354252, 38.879738, 51.209137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135830, 38.929409, 51.122971>,  <37.771793, 39.012196, 50.979362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135830, 38.929409, 51.122971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309058, -0.238180, -0.920735,
		0.276075, 0.948912, -0.152800,
		0.910091, -0.206968, 0.359024,
		38.408855, 38.867317, 51.230679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329689, 39.414032, 50.559227>,  <37.771793, 39.012196, 50.979362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329689, 39.414032, 50.559227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524975, 39.102341, 50.716427>,  <38.642147, 38.915325, 50.810745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524975, 39.102341, 50.716427>,  <38.329689, 39.414032, 50.559227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524975, 39.102341, 50.716427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349769, -0.237860, -0.906137,
		0.799569, 0.579846, 0.156425,
		0.488213, -0.779231, 0.392997,
		38.671440, 38.868572, 50.834328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934677, 39.467789, 50.266258>,  <38.329689, 39.414032, 50.559227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934677, 39.467789, 50.266258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941467, 39.081688, 50.370571>,  <38.945541, 38.850029, 50.433159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941467, 39.081688, 50.370571>,  <38.934677, 39.467789, 50.266258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941467, 39.081688, 50.370571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283204, -0.245495, -0.927107,
		0.958909, 0.089595, 0.269194,
		0.016978, -0.965249, 0.260781,
		38.946560, 38.792114, 50.448807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551525, 39.192039, 50.066189>,  <38.934677, 39.467789, 50.266258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551525, 39.192039, 50.066189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337116, 38.857662, 50.113300>,  <39.208469, 38.657036, 50.141567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337116, 38.857662, 50.113300>,  <39.551525, 39.192039, 50.066189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337116, 38.857662, 50.113300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183885, -0.251778, -0.950155,
		0.823931, -0.487650, 0.288678,
		-0.536025, -0.835946, 0.117776,
		39.176308, 38.606880, 50.148632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898308, 38.619797, 49.801521>,  <39.551525, 39.192039, 50.066189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898308, 38.619797, 49.801521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532734, 38.457523, 49.806297>,  <39.313389, 38.360161, 49.809162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532734, 38.457523, 49.806297>,  <39.898308, 38.619797, 49.801521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532734, 38.457523, 49.806297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215430, -0.509848, -0.832854,
		0.343964, -0.758602, 0.553365,
		-0.913936, -0.405683, 0.011944,
		39.258553, 38.335819, 49.809879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956173, 37.879791, 49.720871>,  <39.898308, 38.619797, 49.801521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956173, 37.879791, 49.720871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576523, 37.945221, 49.613239>,  <39.348732, 37.984478, 49.548660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576523, 37.945221, 49.613239>,  <39.956173, 37.879791, 49.720871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576523, 37.945221, 49.613239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141103, -0.542989, -0.827800,
		-0.281511, -0.823654, 0.492285,
		-0.949126, 0.163572, -0.269078,
		39.291786, 37.994293, 49.532516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693874, 37.317806, 49.444027>,  <39.956173, 37.879791, 49.720871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693874, 37.317806, 49.444027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401058, 37.535477, 49.280083>,  <39.225368, 37.666080, 49.181717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401058, 37.535477, 49.280083>,  <39.693874, 37.317806, 49.444027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401058, 37.535477, 49.280083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019280, -0.584832, -0.810925,
		-0.680991, -0.601530, 0.417628,
		-0.732038, 0.544181, -0.409862,
		39.181446, 37.698730, 49.157124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169518, 36.867085, 49.105312>,  <39.693874, 37.317806, 49.444027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169518, 36.867085, 49.105312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125908, 37.222301, 48.926651>,  <39.099743, 37.435432, 48.819454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125908, 37.222301, 48.926651>,  <39.169518, 36.867085, 49.105312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125908, 37.222301, 48.926651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047684, -0.444143, -0.894686,
		-0.992894, -0.118843, 0.006078,
		-0.109027, 0.888039, -0.446654,
		39.093201, 37.488712, 48.792656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736588, 36.693050, 48.644756>,  <39.169518, 36.867085, 49.105312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736588, 36.693050, 48.644756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903358, 37.025631, 48.497864>,  <39.003422, 37.225178, 48.409729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903358, 37.025631, 48.497864>,  <38.736588, 36.693050, 48.644756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903358, 37.025631, 48.497864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029529, -0.391424, -0.919737,
		-0.908460, 0.394308, -0.138644,
		0.416928, 0.831450, -0.367236,
		39.028439, 37.275066, 48.387691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507427, 36.736256, 47.965965>,  <38.736588, 36.693050, 48.644756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507427, 36.736256, 47.965965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780907, 37.028145, 47.968983>,  <38.944996, 37.203278, 47.970791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780907, 37.028145, 47.968983>,  <38.507427, 36.736256, 47.965965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780907, 37.028145, 47.968983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229777, -0.205458, -0.951309,
		-0.692642, 0.652145, -0.308146,
		0.683703, 0.729722, 0.007539,
		38.986019, 37.247063, 47.971245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217705, 37.233143, 47.474548>,  <38.507427, 36.736256, 47.965965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217705, 37.233143, 47.474548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609085, 37.193920, 47.547237>,  <38.843914, 37.170387, 47.590851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609085, 37.193920, 47.547237>,  <38.217705, 37.233143, 47.474548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609085, 37.193920, 47.547237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099569, -0.546930, -0.831236,
		0.180901, 0.831416, -0.525379,
		0.978448, -0.098060, 0.181723,
		38.902618, 37.164501, 47.601753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511703, 37.404045, 46.896606>,  <38.217705, 37.233143, 47.474548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511703, 37.404045, 46.896606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757492, 37.162167, 47.099293>,  <38.904964, 37.017040, 47.220905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757492, 37.162167, 47.099293>,  <38.511703, 37.404045, 46.896606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757492, 37.162167, 47.099293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118229, -0.564450, -0.816957,
		0.780028, 0.561908, -0.275347,
		0.614474, -0.604695, 0.506720,
		38.941833, 36.980759, 47.251308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086178, 37.370415, 46.487793>,  <38.511703, 37.404045, 46.896606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086178, 37.370415, 46.487793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105698, 37.059853, 46.739128>,  <39.117409, 36.873516, 46.889931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105698, 37.059853, 46.739128>,  <39.086178, 37.370415, 46.487793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105698, 37.059853, 46.739128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179988, -0.611955, -0.770140,
		0.982458, 0.150677, 0.109880,
		0.048801, -0.776407, 0.628340,
		39.120338, 36.826931, 46.927631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738232, 36.922710, 46.233192>,  <39.086178, 37.370415, 46.487793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738232, 36.922710, 46.233192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532387, 36.653568, 46.445770>,  <39.408878, 36.492081, 46.573318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532387, 36.653568, 46.445770>,  <39.738232, 36.922710, 46.233192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532387, 36.653568, 46.445770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249001, -0.710385, -0.658294,
		0.820472, -0.206434, 0.533114,
		-0.514611, -0.672858, 0.531449,
		39.378002, 36.451710, 46.605206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220425, 36.366486, 46.327099>,  <39.738232, 36.922710, 46.233192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220425, 36.366486, 46.327099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850368, 36.233181, 46.399830>,  <39.628334, 36.153198, 46.443466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850368, 36.233181, 46.399830>,  <40.220425, 36.366486, 46.327099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850368, 36.233181, 46.399830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111993, -0.697209, -0.708065,
		0.362739, -0.634694, 0.682337,
		-0.925137, -0.333260, 0.181824,
		39.572826, 36.133202, 46.454376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300537, 35.666203, 46.484806>,  <40.220425, 36.366486, 46.327099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300537, 35.666203, 46.484806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918682, 35.711678, 46.374718>,  <39.689571, 35.738964, 46.308666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918682, 35.711678, 46.374718>,  <40.300537, 35.666203, 46.484806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918682, 35.711678, 46.374718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136369, -0.654717, -0.743471,
		-0.264717, -0.747275, 0.609512,
		-0.954635, 0.113691, -0.275220,
		39.632290, 35.745785, 46.292152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132206, 35.032391, 46.307163>,  <40.300537, 35.666203, 46.484806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132206, 35.032391, 46.307163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843021, 35.246323, 46.132221>,  <39.669510, 35.374683, 46.027256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843021, 35.246323, 46.132221>,  <40.132206, 35.032391, 46.307163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843021, 35.246323, 46.132221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028361, -0.655473, -0.754686,
		-0.690305, -0.533205, 0.489051,
		-0.722962, 0.534834, -0.437354,
		39.626133, 35.406773, 46.001015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651165, 34.553570, 46.180912>,  <40.132206, 35.032391, 46.307163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651165, 34.553570, 46.180912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578747, 34.868771, 45.945530>,  <39.535294, 35.057892, 45.804302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578747, 34.868771, 45.945530>,  <39.651165, 34.553570, 46.180912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578747, 34.868771, 45.945530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131522, -0.612369, -0.779555,
		-0.974640, -0.063742, 0.214507,
		-0.181048, 0.787998, -0.588456,
		39.524433, 35.105171, 45.768993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015446, 34.439404, 45.757252>,  <39.651165, 34.553570, 46.180912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015446, 34.439404, 45.757252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222153, 34.715630, 45.554840>,  <39.346176, 34.881367, 45.433392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222153, 34.715630, 45.554840>,  <39.015446, 34.439404, 45.757252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222153, 34.715630, 45.554840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012858, -0.597269, -0.801938,
		-0.856027, 0.407911, -0.317530,
		0.516770, 0.690564, -0.506034,
		39.377182, 34.922798, 45.403030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763439, 34.263287, 45.078880>,  <39.015446, 34.439404, 45.757252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763439, 34.263287, 45.078880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086628, 34.492428, 45.023716>,  <39.280540, 34.629913, 44.990616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086628, 34.492428, 45.023716>,  <38.763439, 34.263287, 45.078880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086628, 34.492428, 45.023716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197688, -0.484043, -0.852421,
		-0.555066, 0.661471, -0.504340,
		0.807974, 0.572852, -0.137911,
		39.329021, 34.664284, 44.982342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670750, 34.605854, 44.432953>,  <38.763439, 34.263287, 45.078880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670750, 34.605854, 44.432953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064827, 34.639244, 44.492867>,  <39.301273, 34.659279, 44.528816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064827, 34.639244, 44.492867>,  <38.670750, 34.605854, 44.432953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064827, 34.639244, 44.492867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171473, -0.476509, -0.862285,
		-0.000606, 0.875198, -0.483765,
		0.985189, 0.083475, 0.149784,
		39.360382, 34.664288, 44.537800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947063, 34.853283, 43.736549>,  <38.670750, 34.605854, 44.432953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947063, 34.853283, 43.736549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253525, 34.699554, 43.942581>,  <39.437401, 34.607319, 44.066200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253525, 34.699554, 43.942581>,  <38.947063, 34.853283, 43.736549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253525, 34.699554, 43.942581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327809, -0.455668, -0.827591,
		0.552765, 0.802910, -0.223128,
		0.766154, -0.384320, 0.515079,
		39.483372, 34.584259, 44.097103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623852, 35.091373, 43.421261>,  <38.947063, 34.853283, 43.736549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623852, 35.091373, 43.421261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715523, 34.758404, 43.623070>,  <39.770527, 34.558620, 43.744156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715523, 34.758404, 43.623070>,  <39.623852, 35.091373, 43.421261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715523, 34.758404, 43.623070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639498, -0.262000, -0.722771,
		0.733838, 0.488286, 0.472290,
		0.229179, -0.832426, 0.504524,
		39.784275, 34.508675, 43.774426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375229, 35.071030, 43.246601>,  <39.623852, 35.091373, 43.421261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375229, 35.071030, 43.246601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245556, 34.712040, 43.366230>,  <40.167751, 34.496647, 43.438007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245556, 34.712040, 43.366230>,  <40.375229, 35.071030, 43.246601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245556, 34.712040, 43.366230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451402, -0.424587, -0.784832,
		0.831348, -0.119431, 0.542767,
		-0.324185, -0.897475, 0.299068,
		40.148300, 34.442799, 43.455952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009380, 34.681019, 43.296879>,  <40.375229, 35.071030, 43.246601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009380, 34.681019, 43.296879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720131, 34.407017, 43.261414>,  <40.546581, 34.242615, 43.240135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720131, 34.407017, 43.261414>,  <41.009380, 34.681019, 43.296879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720131, 34.407017, 43.261414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469899, -0.393791, -0.790016,
		0.506252, -0.612939, 0.606642,
		-0.723121, -0.685008, -0.088662,
		40.503193, 34.201515, 43.234814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415306, 34.107613, 43.144764>,  <41.009380, 34.681019, 43.296879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415306, 34.107613, 43.144764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040104, 34.053734, 43.017010>,  <40.814983, 34.021408, 42.940357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040104, 34.053734, 43.017010>,  <41.415306, 34.107613, 43.144764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040104, 34.053734, 43.017010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342999, -0.227718, -0.911316,
		0.050021, -0.964366, 0.259801,
		-0.938003, -0.134697, -0.319385,
		40.758701, 34.013325, 42.921196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460487, 33.473789, 42.877937>,  <41.415306, 34.107613, 43.144764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460487, 33.473789, 42.877937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135857, 33.640072, 42.713726>,  <40.941078, 33.739841, 42.615200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135857, 33.640072, 42.713726>,  <41.460487, 33.473789, 42.877937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135857, 33.640072, 42.713726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392365, -0.132819, -0.910169,
		-0.432890, -0.899748, -0.055316,
		-0.811576, 0.415707, -0.410526,
		40.892384, 33.764786, 42.590569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272816, 33.096672, 42.239883>,  <41.460487, 33.473789, 42.877937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272816, 33.096672, 42.239883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081329, 33.445354, 42.198021>,  <40.966438, 33.654564, 42.172905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081329, 33.445354, 42.198021>,  <41.272816, 33.096672, 42.239883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081329, 33.445354, 42.198021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327516, 0.066714, -0.942487,
		-0.814592, -0.485463, -0.317436,
		-0.478720, 0.871708, -0.104653,
		40.937714, 33.706867, 42.166626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032207, 32.955921, 41.549198>,  <41.272816, 33.096672, 42.239883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032207, 32.955921, 41.549198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029182, 33.348240, 41.627151>,  <41.027367, 33.583630, 41.673923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029182, 33.348240, 41.627151>,  <41.032207, 32.955921, 41.549198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029182, 33.348240, 41.627151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458422, 0.176602, -0.871011,
		-0.888702, 0.082751, -0.450955,
		-0.007562, 0.980798, 0.194882,
		41.026913, 33.642479, 41.685616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601418, 33.301376, 41.171852>,  <41.032207, 32.955921, 41.549198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601418, 33.301376, 41.171852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848003, 33.598232, 41.277077>,  <40.995956, 33.776344, 41.340214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848003, 33.598232, 41.277077>,  <40.601418, 33.301376, 41.171852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848003, 33.598232, 41.277077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344466, 0.046235, -0.937660,
		-0.708035, 0.668651, -0.227139,
		0.616465, 0.742137, 0.263063,
		41.032944, 33.820873, 41.355995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500313, 33.811325, 40.660320>,  <40.601418, 33.301376, 41.171852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500313, 33.811325, 40.660320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859158, 33.865025, 40.828686>,  <41.074463, 33.897243, 40.929707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859158, 33.865025, 40.828686>,  <40.500313, 33.811325, 40.660320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859158, 33.865025, 40.828686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403765, 0.137611, -0.904454,
		-0.179340, 0.981347, 0.069249,
		0.897113, 0.134245, 0.420913,
		41.128292, 33.905296, 40.954960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827232, 34.362473, 40.253716>,  <40.500313, 33.811325, 40.660320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827232, 34.362473, 40.253716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127895, 34.177135, 40.441471>,  <41.308292, 34.065933, 40.554127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127895, 34.177135, 40.441471>,  <40.827232, 34.362473, 40.253716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127895, 34.177135, 40.441471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592814, 0.162649, -0.788744,
		0.289113, 0.871125, 0.396932,
		0.751655, -0.463343, 0.469391,
		41.353394, 34.038132, 40.582287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424725, 34.765114, 40.059380>,  <40.827232, 34.362473, 40.253716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424725, 34.765114, 40.059380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573574, 34.422981, 40.203560>,  <41.662884, 34.217701, 40.290070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573574, 34.422981, 40.203560>,  <41.424725, 34.765114, 40.059380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573574, 34.422981, 40.203560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685246, -0.008777, -0.728259,
		0.626069, 0.518001, 0.582848,
		0.372123, -0.855335, 0.360453,
		41.685211, 34.166382, 40.311695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140160, 34.924332, 40.172417>,  <41.424725, 34.765114, 40.059380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140160, 34.924332, 40.172417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103317, 34.531322, 40.107712>,  <42.081211, 34.295517, 40.068890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103317, 34.531322, 40.107712>,  <42.140160, 34.924332, 40.172417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103317, 34.531322, 40.107712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804983, 0.022151, -0.592884,
		0.586105, -0.184824, 0.788874,
		-0.092105, -0.982522, -0.161763,
		42.075687, 34.236565, 40.059181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780006, 34.658573, 39.994652>,  <42.140160, 34.924332, 40.172417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780006, 34.658573, 39.994652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588123, 34.335796, 39.856831>,  <42.472992, 34.142128, 39.774139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588123, 34.335796, 39.856831>,  <42.780006, 34.658573, 39.994652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588123, 34.335796, 39.856831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362648, 0.175236, -0.915303,
		0.798978, -0.564031, 0.208574,
		-0.479709, -0.806946, -0.344554,
		42.444210, 34.093712, 39.753464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190701, 34.309334, 39.595085>,  <42.780006, 34.658573, 39.994652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190701, 34.309334, 39.595085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839413, 34.169540, 39.464497>,  <42.628639, 34.085663, 39.386143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839413, 34.169540, 39.464497>,  <43.190701, 34.309334, 39.595085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839413, 34.169540, 39.464497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304711, 0.117247, -0.945201,
		0.368611, -0.929577, 0.003522,
		-0.878224, -0.349485, -0.326471,
		42.575947, 34.064693, 39.366554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396820, 33.846352, 38.979008>,  <43.190701, 34.309334, 39.595085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396820, 33.846352, 38.979008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001064, 33.884377, 38.935074>,  <42.763611, 33.907192, 38.908714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001064, 33.884377, 38.935074>,  <43.396820, 33.846352, 38.979008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001064, 33.884377, 38.935074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111233, 0.009523, -0.993749,
		-0.093425, -0.995426, -0.019996,
		-0.989393, 0.095065, -0.109834,
		42.704247, 33.912895, 38.902122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259499, 33.420124, 38.383137>,  <43.396820, 33.846352, 38.979008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259499, 33.420124, 38.383137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961411, 33.684757, 38.416504>,  <42.782558, 33.843536, 38.436523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961411, 33.684757, 38.416504>,  <43.259499, 33.420124, 38.383137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961411, 33.684757, 38.416504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055733, 0.186454, -0.980882,
		-0.664486, -0.726323, -0.175821,
		-0.745220, 0.661581, 0.083416,
		42.737846, 33.883232, 38.441528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803253, 33.314671, 37.940037>,  <43.259499, 33.420124, 38.383137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803253, 33.314671, 37.940037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779392, 33.701870, 38.037537>,  <42.765076, 33.934189, 38.096039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779392, 33.701870, 38.037537>,  <42.803253, 33.314671, 37.940037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779392, 33.701870, 38.037537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092878, 0.237746, -0.966877,
		-0.993889, -0.080311, 0.075725,
		-0.059648, 0.968002, 0.243752,
		42.761497, 33.992271, 38.110661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404263, 32.801674, 37.582867>,  <42.803253, 33.314671, 37.940037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404263, 32.801674, 37.582867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346195, 32.554310, 37.273933>,  <43.311356, 32.405891, 37.088573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346195, 32.554310, 37.273933>,  <43.404263, 32.801674, 37.582867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346195, 32.554310, 37.273933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370244, 0.689932, -0.622023,
		0.917521, -0.376250, 0.128806,
		-0.145168, -0.618409, -0.772332,
		43.302643, 32.368786, 37.042233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013004, 32.990974, 37.028458>,  <43.404263, 32.801674, 37.582867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013004, 32.990974, 37.028458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707253, 32.820911, 36.834564>,  <43.523804, 32.718872, 36.718227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707253, 32.820911, 36.834564>,  <44.013004, 32.990974, 37.028458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707253, 32.820911, 36.834564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109553, 0.655220, -0.747452,
		0.635385, -0.624445, -0.454263,
		-0.764385, -0.425154, -0.484727,
		43.477940, 32.693363, 36.689144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267788, 32.968712, 36.449127>,  <44.013004, 32.990974, 37.028458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267788, 32.968712, 36.449127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.868767, 32.984024, 36.425755>,  <43.629353, 32.993210, 36.411732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.868767, 32.984024, 36.425755>,  <44.267788, 32.968712, 36.449127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868767, 32.984024, 36.425755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069749, 0.591260, -0.803459,
		0.003794, -0.805572, -0.592486,
		-0.997557, 0.038277, -0.058431,
		43.569500, 32.995506, 36.408226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034199, 32.837177, 35.807987>,  <44.267788, 32.968712, 36.449127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034199, 32.837177, 35.807987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767944, 33.084145, 35.975662>,  <43.608192, 33.232327, 36.076267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767944, 33.084145, 35.975662>,  <44.034199, 32.837177, 35.807987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767944, 33.084145, 35.975662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168942, 0.422451, -0.890502,
		-0.726899, -0.663572, -0.176891,
		-0.665640, 0.617420, 0.419184,
		43.568253, 33.269371, 36.101418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426613, 32.908566, 35.308460>,  <44.034199, 32.837177, 35.807987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426613, 32.908566, 35.308460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444298, 33.222980, 35.555096>,  <43.454910, 33.411629, 35.703079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444298, 33.222980, 35.555096>,  <43.426613, 32.908566, 35.308460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444298, 33.222980, 35.555096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074936, 0.618066, -0.782547,
		-0.996208, -0.011607, 0.086229,
		0.044212, 0.786041, 0.616592,
		43.457561, 33.458794, 35.740074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737514, 33.269543, 35.404053>,  <43.426613, 32.908566, 35.308460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737514, 33.269543, 35.404053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048397, 33.520950, 35.416126>,  <43.234928, 33.671795, 35.423370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048397, 33.520950, 35.416126>,  <42.737514, 33.269543, 35.404053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048397, 33.520950, 35.416126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227074, 0.324876, -0.918092,
		-0.586844, 0.706695, 0.395217,
		0.777208, 0.628520, 0.030180,
		43.281559, 33.709507, 35.425179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489525, 33.951527, 35.222019>,  <42.737514, 33.269543, 35.404053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489525, 33.951527, 35.222019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881863, 33.931496, 35.146717>,  <43.117264, 33.919476, 35.101536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881863, 33.931496, 35.146717>,  <42.489525, 33.951527, 35.222019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881863, 33.931496, 35.146717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133696, 0.529808, -0.837514,
		0.141679, 0.846638, 0.512963,
		0.980843, -0.050077, -0.188254,
		43.176117, 33.916473, 35.090240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744190, 34.599739, 35.010502>,  <42.489525, 33.951527, 35.222019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744190, 34.599739, 35.010502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003483, 34.348408, 34.838455>,  <43.159058, 34.197609, 34.735226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003483, 34.348408, 34.838455>,  <42.744190, 34.599739, 35.010502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003483, 34.348408, 34.838455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066820, 0.515747, -0.854131,
		0.758508, 0.582413, 0.292337,
		0.648229, -0.628331, -0.430115,
		43.197952, 34.159908, 34.709419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330265, 35.016293, 34.734955>,  <42.744190, 34.599739, 35.010502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330265, 35.016293, 34.734955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.311733, 34.663708, 34.546963>,  <43.300613, 34.452156, 34.434170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.311733, 34.663708, 34.546963>,  <43.330265, 35.016293, 34.734955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311733, 34.663708, 34.546963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067000, 0.466680, -0.881885,
		0.996677, -0.072347, 0.037437,
		-0.046330, -0.881462, -0.469977,
		43.297832, 34.399269, 34.405972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845833, 35.070293, 34.381779>,  <43.330265, 35.016293, 34.734955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845833, 35.070293, 34.381779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.635117, 34.793991, 34.183651>,  <43.508686, 34.628208, 34.064774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.635117, 34.793991, 34.183651>,  <43.845833, 35.070293, 34.381779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.635117, 34.793991, 34.183651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157944, 0.493037, -0.855551,
		0.835190, -0.528932, -0.150628,
		-0.526793, -0.690757, -0.495321,
		43.477077, 34.586765, 34.035053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325367, 34.643578, 33.910854>,  <43.845833, 35.070293, 34.381779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325367, 34.643578, 33.910854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956009, 34.625259, 33.758415>,  <43.734394, 34.614269, 33.666950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956009, 34.625259, 33.758415>,  <44.325367, 34.643578, 33.910854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956009, 34.625259, 33.758415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329068, 0.416702, -0.847392,
		0.197610, -0.907889, -0.369713,
		-0.923398, -0.045793, -0.381102,
		43.678989, 34.611523, 33.644085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414223, 34.482811, 33.189861>,  <44.325367, 34.643578, 33.910854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414223, 34.482811, 33.189861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.041489, 34.627964, 33.189999>,  <43.817848, 34.715054, 33.190083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.041489, 34.627964, 33.189999>,  <44.414223, 34.482811, 33.189861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.041489, 34.627964, 33.189999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177640, 0.456993, -0.871551,
		-0.316427, -0.812081, -0.490305,
		-0.931836, 0.362880, 0.000347,
		43.761936, 34.736828, 33.190102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130672, 34.173538, 32.595821>,  <44.414223, 34.482811, 33.189861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130672, 34.173538, 32.595821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902653, 34.494598, 32.666023>,  <43.765842, 34.687233, 32.708145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902653, 34.494598, 32.666023>,  <44.130672, 34.173538, 32.595821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902653, 34.494598, 32.666023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024698, 0.230251, -0.972818,
		-0.821239, -0.550219, -0.151078,
		-0.570049, 0.802647, 0.175502,
		43.731636, 34.735394, 32.718674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504803, 34.105423, 32.197670>,  <44.130672, 34.173538, 32.595821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504803, 34.105423, 32.197670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559006, 34.495205, 32.269299>,  <43.591526, 34.729076, 32.312275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559006, 34.495205, 32.269299>,  <43.504803, 34.105423, 32.197670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559006, 34.495205, 32.269299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086857, 0.191729, -0.977597,
		-0.986962, 0.116915, 0.110619,
		0.135505, 0.974459, 0.179074,
		43.599659, 34.787544, 32.323021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033543, 34.469681, 31.672703>,  <43.504803, 34.105423, 32.197670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033543, 34.469681, 31.672703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.235317, 34.789177, 31.803886>,  <43.356380, 34.980873, 31.882597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.235317, 34.789177, 31.803886>,  <43.033543, 34.469681, 31.672703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235317, 34.789177, 31.803886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125104, 0.308206, -0.943058,
		-0.854339, 0.516740, 0.055544,
		0.504435, 0.798742, 0.327959,
		43.386646, 35.028801, 31.902275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679504, 35.040401, 31.454935>,  <43.033543, 34.469681, 31.672703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679504, 35.040401, 31.454935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053539, 35.168995, 31.514616>,  <43.277958, 35.246151, 31.550425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053539, 35.168995, 31.514616>,  <42.679504, 35.040401, 31.454935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053539, 35.168995, 31.514616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032451, 0.496866, -0.867220,
		-0.352935, 0.806083, 0.475045,
		0.935085, 0.321488, 0.149203,
		43.334064, 35.265442, 31.559378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709972, 35.827129, 31.372972>,  <42.679504, 35.040401, 31.454935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709972, 35.827129, 31.372972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076801, 35.674683, 31.326117>,  <43.296898, 35.583214, 31.298004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076801, 35.674683, 31.326117>,  <42.709972, 35.827129, 31.372972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076801, 35.674683, 31.326117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122317, 0.548550, -0.827122,
		0.379485, 0.744206, 0.549680,
		0.917077, -0.381116, -0.117138,
		43.351925, 35.560349, 31.290976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024948, 36.276657, 31.013042>,  <42.709972, 35.827129, 31.372972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024948, 36.276657, 31.013042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296425, 35.986294, 30.968428>,  <43.459309, 35.812077, 30.941658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296425, 35.986294, 30.968428>,  <43.024948, 36.276657, 31.013042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296425, 35.986294, 30.968428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271956, 0.389477, -0.879970,
		0.682217, 0.566894, 0.461748,
		0.678690, -0.725906, -0.111537,
		43.500031, 35.768520, 30.934967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586918, 36.626785, 30.841101>,  <43.024948, 36.276657, 31.013042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586918, 36.626785, 30.841101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655499, 36.258202, 30.701662>,  <43.696648, 36.037052, 30.617998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655499, 36.258202, 30.701662>,  <43.586918, 36.626785, 30.841101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.655499, 36.258202, 30.701662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248677, 0.382858, -0.889708,
		0.953291, 0.065856, 0.294788,
		0.171455, -0.921457, -0.348598,
		43.706936, 35.981766, 30.597082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190567, 36.722435, 30.393484>,  <43.586918, 36.626785, 30.841101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190567, 36.722435, 30.393484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053467, 36.360714, 30.291687>,  <43.971207, 36.143681, 30.230610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053467, 36.360714, 30.291687>,  <44.190567, 36.722435, 30.393484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053467, 36.360714, 30.291687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350036, 0.128458, -0.927887,
		0.871780, -0.407110, 0.272509,
		-0.342746, -0.904301, -0.254491,
		43.950642, 36.089424, 30.215340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695255, 36.442688, 30.010189>,  <44.190567, 36.722435, 30.393484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695255, 36.442688, 30.010189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355534, 36.256142, 29.911243>,  <44.151703, 36.144215, 29.851875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355534, 36.256142, 29.911243>,  <44.695255, 36.442688, 30.010189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.355534, 36.256142, 29.911243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193342, 0.161227, -0.967794,
		0.491229, -0.869774, -0.046762,
		-0.849301, -0.466367, -0.247363,
		44.100742, 36.116230, 29.837034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877823, 35.994835, 29.436811>,  <44.695255, 36.442688, 30.010189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877823, 35.994835, 29.436811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480038, 36.025448, 29.408024>,  <44.241367, 36.043816, 29.390751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480038, 36.025448, 29.408024>,  <44.877823, 35.994835, 29.436811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480038, 36.025448, 29.408024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074985, 0.037301, -0.996487,
		-0.073579, -0.996369, -0.042834,
		-0.994466, 0.076533, -0.071968,
		44.181698, 36.048409, 29.386433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640610, 35.438423, 29.002995>,  <44.877823, 35.994835, 29.436811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.640610, 35.438423, 29.002995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372852, 35.735550, 29.007769>,  <44.212200, 35.913826, 29.010633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372852, 35.735550, 29.007769>,  <44.640610, 35.438423, 29.002995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.372852, 35.735550, 29.007769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158622, 0.158598, -0.974518,
		-0.725779, -0.650441, -0.223991,
		-0.669391, 0.742815, 0.011933,
		44.172035, 35.958393, 29.011349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297848, 35.379147, 28.349474>,  <44.640610, 35.438423, 29.002995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297848, 35.379147, 28.349474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171162, 35.740364, 28.465549>,  <44.095150, 35.957092, 28.535194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171162, 35.740364, 28.465549>,  <44.297848, 35.379147, 28.349474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.171162, 35.740364, 28.465549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139449, 0.346943, -0.927461,
		-0.938215, -0.253272, -0.235809,
		-0.316712, 0.903041, 0.290189,
		44.076149, 36.011276, 28.552607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797943, 35.598610, 27.761906>,  <44.297848, 35.379147, 28.349474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797943, 35.598610, 27.761906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911739, 35.919392, 27.972021>,  <43.980019, 36.111862, 28.098091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911739, 35.919392, 27.972021>,  <43.797943, 35.598610, 27.761906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911739, 35.919392, 27.972021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137087, 0.508269, -0.850217,
		-0.948826, 0.313892, 0.034662,
		0.284494, 0.801956, 0.525289,
		43.997089, 36.159977, 28.129608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417973, 36.220764, 27.527180>,  <43.797943, 35.598610, 27.761906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.417973, 36.220764, 27.527180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758183, 36.370399, 27.675053>,  <43.962307, 36.460178, 27.763777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758183, 36.370399, 27.675053>,  <43.417973, 36.220764, 27.527180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758183, 36.370399, 27.675053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178211, 0.456337, -0.871778,
		-0.494819, 0.807352, 0.321461,
		0.850526, 0.374085, 0.369684,
		44.013340, 36.482624, 27.785957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390888, 36.817200, 27.215099>,  <43.417973, 36.220764, 27.527180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390888, 36.817200, 27.215099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766041, 36.757504, 27.340387>,  <43.991131, 36.721687, 27.415560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766041, 36.757504, 27.340387>,  <43.390888, 36.817200, 27.215099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766041, 36.757504, 27.340387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341950, 0.244762, -0.907283,
		0.058740, 0.958028, 0.280591,
		0.937880, -0.149242, 0.313221,
		44.047405, 36.712730, 27.434353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696495, 37.431297, 27.233906>,  <43.390888, 36.817200, 27.215099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696495, 37.431297, 27.233906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950619, 37.127087, 27.180262>,  <44.103092, 36.944561, 27.148075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950619, 37.127087, 27.180262>,  <43.696495, 37.431297, 27.233906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950619, 37.127087, 27.180262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229716, 0.351909, -0.907409,
		0.737300, 0.545679, 0.398275,
		0.635310, -0.760523, -0.134111,
		44.141212, 36.898930, 27.140028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323792, 37.794411, 27.125603>,  <43.696495, 37.431297, 27.233906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323792, 37.794411, 27.125603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302132, 37.430733, 26.960466>,  <44.289135, 37.212528, 26.861385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302132, 37.430733, 26.960466>,  <44.323792, 37.794411, 27.125603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302132, 37.430733, 26.960466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224622, 0.391761, -0.892227,
		0.972941, -0.141043, 0.183013,
		-0.054145, -0.909192, -0.412841,
		44.285889, 37.157974, 26.836615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977451, 37.753620, 26.739677>,  <44.323792, 37.794411, 27.125603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977451, 37.753620, 26.739677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672138, 37.526241, 26.616865>,  <44.488949, 37.389812, 26.543179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672138, 37.526241, 26.616865>,  <44.977451, 37.753620, 26.739677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672138, 37.526241, 26.616865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148384, 0.308283, -0.939651,
		0.628796, -0.762776, -0.150958,
		-0.763281, -0.568449, -0.307031,
		44.443153, 37.355705, 26.524755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265076, 37.391808, 26.118092>,  <44.977451, 37.753620, 26.739677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.265076, 37.391808, 26.118092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865646, 37.413002, 26.120758>,  <44.625988, 37.425720, 26.122358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865646, 37.413002, 26.120758>,  <45.265076, 37.391808, 26.118092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865646, 37.413002, 26.120758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008068, 0.273046, -0.961967,
		-0.052792, -0.960541, -0.273083,
		-0.998573, 0.052987, 0.006665,
		44.566074, 37.428898, 26.122757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172626, 37.048687, 25.468449>,  <45.265076, 37.391808, 26.118092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172626, 37.048687, 25.468449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.853569, 37.270794, 25.562632>,  <44.662136, 37.404060, 25.619141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.853569, 37.270794, 25.562632>,  <45.172626, 37.048687, 25.468449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.853569, 37.270794, 25.562632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156074, 0.187064, -0.969870,
		-0.582585, -0.810360, -0.062547,
		-0.797644, 0.555269, 0.235456,
		44.614277, 37.437374, 25.633268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.831310, 36.663795, 25.441681>,  <45.172626, 37.048687, 25.468449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.831310, 36.663795, 25.441681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.213436, 36.552925, 25.400585>,  <46.442711, 36.486404, 25.375927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.213436, 36.552925, 25.400585>,  <45.831310, 36.663795, 25.441681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.213436, 36.552925, 25.400585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015865, -0.395133, 0.918487,
		-0.295172, -0.875812, -0.381873,
		0.955313, -0.277170, -0.102738,
		46.500031, 36.469772, 25.369764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.872459, 35.908737, 25.514317>,  <45.831310, 36.663795, 25.441681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.872459, 35.908737, 25.514317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.212070, 36.092274, 25.619093>,  <46.415836, 36.202396, 25.681959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.212070, 36.092274, 25.619093>,  <45.872459, 35.908737, 25.514317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.212070, 36.092274, 25.619093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028413, -0.534710, 0.844558,
		0.527584, -0.709610, -0.467020,
		0.849027, 0.458845, 0.261942,
		46.466778, 36.229927, 25.697676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.473396, 35.366787, 25.683601>,  <45.872459, 35.908737, 25.514317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.473396, 35.366787, 25.683601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.528255, 35.705334, 25.889458>,  <46.561172, 35.908463, 26.012972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.528255, 35.705334, 25.889458>,  <46.473396, 35.366787, 25.683601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.528255, 35.705334, 25.889458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038545, -0.523716, 0.851020,
		0.989800, -0.096880, -0.104450,
		0.137149, 0.846366, 0.514640,
		46.569401, 35.959244, 26.043850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.934589, 35.263336, 26.207613>,  <46.473396, 35.366787, 25.683601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.934589, 35.263336, 26.207613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.730888, 35.583534, 26.334023>,  <46.608669, 35.775654, 26.409868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.730888, 35.583534, 26.334023>,  <46.934589, 35.263336, 26.207613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.730888, 35.583534, 26.334023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010518, -0.361387, 0.932356,
		0.860555, 0.478125, 0.175616,
		-0.509248, 0.800497, 0.316022,
		46.578114, 35.823685, 26.428829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.259670, 35.537815, 26.840784>,  <46.934589, 35.263336, 26.207613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.259670, 35.537815, 26.840784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.867313, 35.614876, 26.829878>,  <46.631901, 35.661114, 26.823334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.867313, 35.614876, 26.829878>,  <47.259670, 35.537815, 26.840784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.867313, 35.614876, 26.829878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078564, -0.263947, 0.961332,
		0.178006, 0.945102, 0.274038,
		-0.980888, 0.192652, -0.027266,
		46.573048, 35.672672, 26.821697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.997337, 35.936611, 27.429710>,  <47.259670, 35.537815, 26.840784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.997337, 35.936611, 27.429710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.706749, 35.689167, 27.310003>,  <46.532394, 35.540699, 27.238178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.706749, 35.689167, 27.310003>,  <46.997337, 35.936611, 27.429710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.706749, 35.689167, 27.310003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028558, -0.407938, 0.912563,
		-0.686605, 0.671495, 0.278688,
		-0.726469, -0.618611, -0.299269,
		46.488808, 35.503582, 27.220222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.570107, 35.898571, 27.925354>,  <46.997337, 35.936611, 27.429710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.570107, 35.898571, 27.925354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.493198, 35.562462, 27.722586>,  <46.447056, 35.360794, 27.600925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.493198, 35.562462, 27.722586>,  <46.570107, 35.898571, 27.925354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.493198, 35.562462, 27.722586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035256, -0.510311, 0.859267,
		-0.980709, 0.183080, 0.068491,
		-0.192267, -0.840276, -0.506921,
		46.435520, 35.310379, 27.570509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.077263, 35.665329, 28.261189>,  <46.570107, 35.898571, 27.925354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.077263, 35.665329, 28.261189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.188808, 35.343559, 28.051373>,  <46.255733, 35.150497, 27.925484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.188808, 35.343559, 28.051373>,  <46.077263, 35.665329, 28.261189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.188808, 35.343559, 28.051373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151466, -0.576213, 0.803141,
		-0.948311, -0.144515, -0.282526,
		0.278861, -0.804421, -0.524541,
		46.272469, 35.102234, 27.894011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566555, 35.274925, 28.359995>,  <46.077263, 35.665329, 28.261189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566555, 35.274925, 28.359995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.860744, 35.023911, 28.257793>,  <46.037258, 34.873302, 28.196472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.860744, 35.023911, 28.257793>,  <45.566555, 35.274925, 28.359995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.860744, 35.023911, 28.257793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203024, -0.563878, 0.800514,
		-0.646427, -0.536879, -0.542120,
		0.735469, -0.627537, -0.255507,
		46.081387, 34.835651, 28.181141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282692, 34.544785, 28.391556>,  <45.566555, 35.274925, 28.359995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282692, 34.544785, 28.391556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678143, 34.507038, 28.438400>,  <45.915413, 34.484390, 28.466507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678143, 34.507038, 28.438400>,  <45.282692, 34.544785, 28.391556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678143, 34.507038, 28.438400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150399, -0.620248, 0.769852,
		-0.000009, -0.778709, -0.627385,
		0.988625, -0.094365, 0.117111,
		45.974731, 34.478729, 28.473534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471985, 33.828342, 28.632631>,  <45.282692, 34.544785, 28.391556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471985, 33.828342, 28.632631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792942, 34.047871, 28.726404>,  <45.985516, 34.179588, 28.782667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792942, 34.047871, 28.726404>,  <45.471985, 33.828342, 28.632631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792942, 34.047871, 28.726404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012542, -0.377222, 0.926038,
		0.596662, -0.745988, -0.295798,
		0.802395, 0.548822, 0.234430,
		46.033661, 34.212517, 28.796734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.821167, 33.415379, 29.008642>,  <45.471985, 33.828342, 28.632631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.821167, 33.415379, 29.008642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016636, 33.750217, 29.106998>,  <46.133919, 33.951122, 29.166012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016636, 33.750217, 29.106998>,  <45.821167, 33.415379, 29.008642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016636, 33.750217, 29.106998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025418, -0.295373, 0.955044,
		0.872096, -0.460456, -0.165619,
		0.488675, 0.837099, 0.245890,
		46.163239, 34.001347, 29.180765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.262150, 33.199173, 29.515270>,  <45.821167, 33.415379, 29.008642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.262150, 33.199173, 29.515270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.261383, 33.595802, 29.567099>,  <46.260921, 33.833778, 29.598196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.261383, 33.595802, 29.567099>,  <46.262150, 33.199173, 29.515270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.261383, 33.595802, 29.567099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121897, -0.128371, 0.984206,
		0.992541, 0.017685, -0.120623,
		-0.001922, 0.991569, 0.129569,
		46.260807, 33.893272, 29.605968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.798241, 33.333748, 29.979685>,  <46.262150, 33.199173, 29.515270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.798241, 33.333748, 29.979685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.570747, 33.661507, 30.008345>,  <46.434250, 33.858162, 30.025541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.570747, 33.661507, 30.008345>,  <46.798241, 33.333748, 29.979685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.570747, 33.661507, 30.008345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203239, 0.055585, 0.977550,
		0.797017, 0.570528, -0.198146,
		-0.568733, 0.819395, 0.071651,
		46.400127, 33.907326, 30.029840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.217281, 33.970463, 30.249544>,  <46.798241, 33.333748, 29.979685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.217281, 33.970463, 30.249544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.825455, 34.010502, 30.319311>,  <46.590359, 34.034527, 30.361172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.825455, 34.010502, 30.319311>,  <47.217281, 33.970463, 30.249544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.825455, 34.010502, 30.319311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166756, -0.080425, 0.982713,
		0.112396, 0.991722, 0.062090,
		-0.979571, 0.100099, 0.174415,
		46.531582, 34.040531, 30.371635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.117619, 34.443424, 30.769728>,  <47.217281, 33.970463, 30.249544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.117619, 34.443424, 30.769728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.757763, 34.269699, 30.751766>,  <46.541847, 34.165462, 30.740990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.757763, 34.269699, 30.751766>,  <47.117619, 34.443424, 30.769728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.757763, 34.269699, 30.751766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032073, -0.168301, 0.985214,
		-0.435451, 0.884899, 0.165340,
		-0.899641, -0.434315, -0.044905,
		46.487869, 34.139404, 30.738295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.824722, 34.702385, 31.358507>,  <47.117619, 34.443424, 30.769728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.824722, 34.702385, 31.358507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.591755, 34.388039, 31.275372>,  <46.451973, 34.199429, 31.225491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.591755, 34.388039, 31.275372>,  <46.824722, 34.702385, 31.358507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.591755, 34.388039, 31.275372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148249, -0.148704, 0.977706,
		-0.799256, 0.600247, -0.029897,
		-0.582420, -0.785869, -0.207838,
		46.417030, 34.152279, 31.213020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.146801, 34.731205, 31.809055>,  <46.824722, 34.702385, 31.358507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.146801, 34.731205, 31.809055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189392, 34.351677, 31.690126>,  <46.214947, 34.123959, 31.618769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189392, 34.351677, 31.690126>,  <46.146801, 34.731205, 31.809055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.189392, 34.351677, 31.690126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199965, -0.313346, 0.928347,
		-0.974001, -0.039392, -0.223095,
		0.106475, -0.948822, -0.297322,
		46.221336, 34.067032, 31.600929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631630, 34.479477, 32.205868>,  <46.146801, 34.731205, 31.809055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631630, 34.479477, 32.205868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854046, 34.162140, 32.106724>,  <45.987495, 33.971737, 32.047237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854046, 34.162140, 32.106724>,  <45.631630, 34.479477, 32.205868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.854046, 34.162140, 32.106724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321653, -0.480370, 0.815956,
		-0.766396, -0.373975, -0.522283,
		0.556036, -0.793339, -0.247863,
		46.020855, 33.924137, 32.032364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240749, 33.951508, 32.124008>,  <45.631630, 34.479477, 32.205868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240749, 33.951508, 32.124008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600655, 33.801605, 32.213436>,  <45.816597, 33.711662, 32.267094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600655, 33.801605, 32.213436>,  <45.240749, 33.951508, 32.124008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600655, 33.801605, 32.213436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387831, -0.451886, 0.803359,
		-0.200037, -0.809540, -0.551934,
		0.899762, -0.374759, 0.223571,
		45.870583, 33.689178, 32.280506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.126083, 33.348049, 32.419907>,  <45.240749, 33.951508, 32.124008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.126083, 33.348049, 32.419907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.509045, 33.393387, 32.526131>,  <45.738823, 33.420589, 32.589867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.509045, 33.393387, 32.526131>,  <45.126083, 33.348049, 32.419907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.509045, 33.393387, 32.526131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227864, -0.268287, 0.936002,
		0.177337, -0.956648, -0.231033,
		0.957408, 0.113344, 0.265562,
		45.796268, 33.427391, 32.605801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.256477, 32.871349, 32.916481>,  <45.126083, 33.348049, 32.419907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.256477, 32.871349, 32.916481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559772, 33.126942, 32.968292>,  <45.741749, 33.280296, 32.999378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559772, 33.126942, 32.968292>,  <45.256477, 32.871349, 32.916481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559772, 33.126942, 32.968292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006436, -0.206000, 0.978531,
		0.651946, -0.741125, -0.160309,
		0.758238, 0.638981, 0.129531,
		45.787243, 33.318638, 33.007153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662151, 32.520050, 33.333981>,  <45.256477, 32.871349, 32.916481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662151, 32.520050, 33.333981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765022, 32.905556, 33.362289>,  <45.826744, 33.136860, 33.379272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.765022, 32.905556, 33.362289>,  <45.662151, 32.520050, 33.333981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.765022, 32.905556, 33.362289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116978, -0.103742, 0.987701,
		0.959257, -0.245739, -0.139420,
		0.257180, 0.963769, 0.070769,
		45.842175, 33.194687, 33.383518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243378, 32.543499, 33.796379>,  <45.662151, 32.520050, 33.333981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243378, 32.543499, 33.796379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.122944, 32.924938, 33.796227>,  <46.050682, 33.153801, 33.796135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.122944, 32.924938, 33.796227>,  <46.243378, 32.543499, 33.796379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.122944, 32.924938, 33.796227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201925, 0.064150, 0.977298,
		0.931973, 0.294174, -0.211870,
		-0.301088, 0.953597, -0.000385,
		46.032619, 33.211018, 33.796112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.704853, 32.848488, 34.178989>,  <46.243378, 32.543499, 33.796379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.704853, 32.848488, 34.178989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.404922, 33.113132, 34.181400>,  <46.224964, 33.271919, 34.182846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.404922, 33.113132, 34.181400>,  <46.704853, 32.848488, 34.178989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.404922, 33.113132, 34.181400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203777, 0.222259, 0.953454,
		0.629475, 0.716152, -0.301477,
		-0.749824, 0.661610, 0.006029,
		46.179974, 33.311615, 34.183208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.006023, 33.453182, 34.382862>,  <46.704853, 32.848488, 34.178989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.006023, 33.453182, 34.382862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.615162, 33.449642, 34.467796>,  <46.380646, 33.447517, 34.518757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.615162, 33.449642, 34.467796>,  <47.006023, 33.453182, 34.382862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.615162, 33.449642, 34.467796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209919, 0.115544, 0.970867,
		-0.033126, 0.993263, -0.111047,
		-0.977157, -0.008850, 0.212332,
		46.322014, 33.446987, 34.531494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.814465, 34.153950, 34.783630>,  <47.006023, 33.453182, 34.382862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.814465, 34.153950, 34.783630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553795, 33.855423, 34.837799>,  <46.397392, 33.676308, 34.870300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553795, 33.855423, 34.837799>,  <46.814465, 34.153950, 34.783630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553795, 33.855423, 34.837799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084038, 0.106399, 0.990766,
		-0.753830, 0.657036, -0.006619,
		-0.651673, -0.746313, 0.135423,
		46.358292, 33.631531, 34.878426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.093525, 34.429047, 35.016102>,  <46.814465, 34.153950, 34.783630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.093525, 34.429047, 35.016102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.223000, 34.069145, 35.133179>,  <46.300686, 33.853203, 35.203426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.223000, 34.069145, 35.133179>,  <46.093525, 34.429047, 35.016102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.223000, 34.069145, 35.133179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013570, 0.313728, 0.949416,
		-0.946067, -0.303342, 0.113760,
		0.323687, -0.899755, 0.292691,
		46.320107, 33.799217, 35.220985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.774525, 34.699467, 35.324703>,  <46.093525, 34.429047, 35.016102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.774525, 34.699467, 35.324703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452793, 34.933193, 35.367825>,  <46.259754, 35.073429, 35.393696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452793, 34.933193, 35.367825>,  <46.774525, 34.699467, 35.324703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452793, 34.933193, 35.367825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483399, 0.749006, -0.453118,
		-0.345511, -0.312345, -0.884908,
		-0.804331, 0.584321, 0.107802,
		46.211494, 35.108490, 35.400166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.336884, 35.018970, 34.973557>,  <46.774525, 34.699467, 35.324703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.336884, 35.018970, 34.973557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.612823, 35.302685, 35.031548>,  <47.778385, 35.472916, 35.066341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.612823, 35.302685, 35.031548>,  <47.336884, 35.018970, 34.973557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.612823, 35.302685, 35.031548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222445, 0.017100, 0.974795,
		0.688933, -0.704710, 0.169574,
		0.689847, 0.709290, 0.144979,
		47.819778, 35.515472, 35.075043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.652962, 39.812721, 44.511116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.291706, 39.642593, 44.487652>,  <36.074951, 39.540516, 44.473572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.291706, 39.642593, 44.487652>,  <36.652962, 39.812721, 44.511116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291706, 39.642593, 44.487652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289638, -0.502687, -0.814503,
		0.316932, -0.752603, 0.577185,
		-0.903141, -0.425317, -0.058664,
		36.020763, 39.514999, 44.470051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736851, 39.117218, 44.415249>,  <36.652962, 39.812721, 44.511116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736851, 39.117218, 44.415249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.375507, 39.214993, 44.274281>,  <36.158703, 39.273655, 44.189697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.375507, 39.214993, 44.274281>,  <36.736851, 39.117218, 44.415249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375507, 39.214993, 44.274281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142252, -0.604435, -0.783851,
		-0.404615, -0.758229, 0.511249,
		-0.903356, 0.244432, -0.352423,
		36.104500, 39.288322, 44.168552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642921, 38.569775, 43.958958>,  <36.736851, 39.117218, 44.415249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642921, 38.569775, 43.958958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.330933, 38.807316, 43.879982>,  <36.143738, 38.949841, 43.832596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.330933, 38.807316, 43.879982>,  <36.642921, 38.569775, 43.958958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330933, 38.807316, 43.879982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081697, -0.409412, -0.908684,
		-0.620457, -0.692620, 0.367846,
		-0.779973, 0.593852, -0.197438,
		36.096939, 38.985470, 43.820751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092537, 38.178883, 43.688660>,  <36.642921, 38.569775, 43.958958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092537, 38.178883, 43.688660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.015541, 38.539478, 43.533604>,  <35.969345, 38.755836, 43.440571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.015541, 38.539478, 43.533604>,  <36.092537, 38.178883, 43.688660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015541, 38.539478, 43.533604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127985, -0.414716, -0.900905,
		-0.972917, -0.123803, 0.195206,
		-0.192490, 0.901489, -0.387640,
		35.957794, 38.809925, 43.417313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535156, 38.102264, 43.132103>,  <36.092537, 38.178883, 43.688660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535156, 38.102264, 43.132103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.746185, 38.432423, 43.051712>,  <35.872803, 38.630516, 43.003479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.746185, 38.432423, 43.051712>,  <35.535156, 38.102264, 43.132103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746185, 38.432423, 43.051712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139947, -0.317793, -0.937775,
		-0.837902, 0.466620, -0.283171,
		0.527575, 0.825392, -0.200977,
		35.904457, 38.680042, 42.991417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291214, 38.437313, 42.483280>,  <35.535156, 38.102264, 43.132103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291214, 38.437313, 42.483280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.663620, 38.572254, 42.539013>,  <35.887062, 38.653217, 42.572453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.663620, 38.572254, 42.539013>,  <35.291214, 38.437313, 42.483280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663620, 38.572254, 42.539013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222249, -0.221179, -0.949571,
		-0.289521, 0.915027, -0.280896,
		0.931012, 0.337349, 0.139328,
		35.942924, 38.673458, 42.580811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410324, 38.857361, 41.925064>,  <35.291214, 38.437313, 42.483280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410324, 38.857361, 41.925064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768623, 38.764404, 42.076656>,  <35.983604, 38.708630, 42.167614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768623, 38.764404, 42.076656>,  <35.410324, 38.857361, 41.925064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768623, 38.764404, 42.076656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326346, -0.235158, -0.915532,
		0.301882, 0.943767, -0.134802,
		0.895748, -0.232390, 0.378985,
		36.037350, 38.694687, 42.190353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956203, 39.245384, 41.437233>,  <35.410324, 38.857361, 41.925064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956203, 39.245384, 41.437233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129295, 38.953808, 41.649418>,  <36.233150, 38.778862, 41.776730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129295, 38.953808, 41.649418>,  <35.956203, 39.245384, 41.437233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129295, 38.953808, 41.649418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559693, -0.244054, -0.791948,
		0.706746, 0.639593, 0.302376,
		0.432728, -0.728944, 0.530460,
		36.259113, 38.735126, 41.808556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570488, 39.260929, 41.093338>,  <35.956203, 39.245384, 41.437233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570488, 39.260929, 41.093338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567131, 38.913857, 41.292160>,  <36.565117, 38.705612, 41.411453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567131, 38.913857, 41.292160>,  <36.570488, 39.260929, 41.093338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567131, 38.913857, 41.292160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273848, -0.480065, -0.833394,
		0.961736, 0.129119, 0.241643,
		-0.008397, -0.867679, 0.497055,
		36.564613, 38.653553, 41.441277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258553, 39.083626, 41.018517>,  <36.570488, 39.260929, 41.093338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258553, 39.083626, 41.018517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.056225, 38.746967, 41.094166>,  <36.934826, 38.544971, 41.139553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.056225, 38.746967, 41.094166>,  <37.258553, 39.083626, 41.018517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056225, 38.746967, 41.094166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114625, -0.282869, -0.952285,
		0.854988, -0.460010, 0.239556,
		-0.505823, -0.841651, 0.189121,
		36.904476, 38.494473, 41.150902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604408, 38.675743, 40.622711>,  <37.258553, 39.083626, 41.018517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604408, 38.675743, 40.622711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278286, 38.455536, 40.694504>,  <37.082615, 38.323414, 40.737579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278286, 38.455536, 40.694504>,  <37.604408, 38.675743, 40.622711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278286, 38.455536, 40.694504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131496, -0.477903, -0.868515,
		0.563906, -0.684501, 0.462026,
		-0.815303, -0.550515, 0.179483,
		37.033695, 38.290382, 40.748348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836021, 38.097595, 40.787251>,  <37.604408, 38.675743, 40.622711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836021, 38.097595, 40.787251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465790, 38.023270, 40.655327>,  <37.243649, 37.978676, 40.576172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465790, 38.023270, 40.655327>,  <37.836021, 38.097595, 40.787251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465790, 38.023270, 40.655327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374612, -0.574908, -0.727425,
		-0.054441, -0.796840, 0.601732,
		-0.925582, -0.185814, -0.329804,
		37.188114, 37.967525, 40.556385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895199, 37.436523, 40.711685>,  <37.836021, 38.097595, 40.787251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895199, 37.436523, 40.711685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.581852, 37.541965, 40.486526>,  <37.393845, 37.605232, 40.351433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.581852, 37.541965, 40.486526>,  <37.895199, 37.436523, 40.711685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581852, 37.541965, 40.486526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211023, -0.739036, -0.639762,
		-0.584646, -0.619951, 0.523307,
		-0.783363, 0.263604, -0.562898,
		37.346844, 37.621048, 40.317657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686825, 36.815590, 40.483887>,  <37.895199, 37.436523, 40.711685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686825, 36.815590, 40.483887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.520298, 37.066303, 40.220425>,  <37.420383, 37.216732, 40.062347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.520298, 37.066303, 40.220425>,  <37.686825, 36.815590, 40.483887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520298, 37.066303, 40.220425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252882, -0.616011, -0.746044,
		-0.873345, -0.477151, 0.097953,
		-0.416316, 0.626783, -0.658653,
		37.395405, 37.254337, 40.022827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221748, 36.352665, 40.051304>,  <37.686825, 36.815590, 40.483887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221748, 36.352665, 40.051304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.287647, 36.687328, 39.842358>,  <37.327187, 36.888126, 39.716991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.287647, 36.687328, 39.842358>,  <37.221748, 36.352665, 40.051304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287647, 36.687328, 39.842358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199272, -0.546912, -0.813128,
		-0.965996, 0.029871, -0.256826,
		0.164750, 0.836657, -0.522363,
		37.337070, 36.938324, 39.685650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913425, 36.241734, 39.476147>,  <37.221748, 36.352665, 40.051304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913425, 36.241734, 39.476147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.182903, 36.527042, 39.398815>,  <37.344589, 36.698227, 39.352417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.182903, 36.527042, 39.398815>,  <36.913425, 36.241734, 39.476147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182903, 36.527042, 39.398815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357220, -0.543317, -0.759737,
		-0.646939, 0.442770, -0.620826,
		0.673694, 0.713275, -0.193327,
		37.385010, 36.741024, 39.340816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922062, 36.296597, 38.764469>,  <36.913425, 36.241734, 39.476147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922062, 36.296597, 38.764469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.270725, 36.470200, 38.855553>,  <37.479923, 36.574360, 38.910202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.270725, 36.470200, 38.855553>,  <36.922062, 36.296597, 38.764469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270725, 36.470200, 38.855553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412389, -0.398404, -0.819274,
		-0.264850, 0.808031, -0.526251,
		0.871659, 0.434005, 0.227706,
		37.532223, 36.600403, 38.923866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151951, 36.434746, 38.163857>,  <36.922062, 36.296597, 38.764469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151951, 36.434746, 38.163857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.480850, 36.431637, 38.391487>,  <37.678188, 36.429771, 38.528065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.480850, 36.431637, 38.391487>,  <37.151951, 36.434746, 38.163857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480850, 36.431637, 38.391487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501231, -0.463745, -0.730553,
		0.269580, 0.885935, -0.377420,
		0.822249, -0.007768, 0.569075,
		37.727524, 36.429306, 38.562210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717983, 36.455280, 37.725693>,  <37.151951, 36.434746, 38.163857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717983, 36.455280, 37.725693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.881508, 36.302975, 38.057449>,  <37.979622, 36.211590, 38.256504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.881508, 36.302975, 38.057449>,  <37.717983, 36.455280, 37.725693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881508, 36.302975, 38.057449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481201, -0.682275, -0.550406,
		0.775449, 0.624116, -0.095696,
		0.408808, -0.380763, 0.829395,
		38.004150, 36.188747, 38.306267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494865, 36.416882, 37.591911>,  <37.717983, 36.455280, 37.725693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494865, 36.416882, 37.591911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.434547, 36.163269, 37.895294>,  <38.398357, 36.011101, 38.077324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.434547, 36.163269, 37.895294>,  <38.494865, 36.416882, 37.591911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434547, 36.163269, 37.895294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542113, -0.694617, -0.472887,
		0.826666, 0.339863, 0.448460,
		-0.150791, -0.634035, 0.758460,
		38.389309, 35.973057, 38.122833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213249, 36.090748, 37.825378>,  <38.494865, 36.416882, 37.591911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213249, 36.090748, 37.825378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.925694, 35.842575, 37.950768>,  <38.753162, 35.693672, 38.026001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.925694, 35.842575, 37.950768>,  <39.213249, 36.090748, 37.825378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925694, 35.842575, 37.950768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468845, -0.765710, -0.440310,
		0.513211, -0.169563, 0.841346,
		-0.718887, -0.620432, 0.313472,
		38.710026, 35.656445, 38.044807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577320, 35.646088, 38.197823>,  <39.213249, 36.090748, 37.825378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577320, 35.646088, 38.197823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.250519, 35.522362, 38.003162>,  <39.054440, 35.448124, 37.886368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.250519, 35.522362, 38.003162>,  <39.577320, 35.646088, 38.197823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250519, 35.522362, 38.003162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545590, -0.687836, -0.478762,
		-0.186646, -0.656662, 0.730725,
		-0.817004, -0.309317, -0.486650,
		39.005417, 35.429565, 37.857166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155556, 36.155968, 38.057735>,  <39.577320, 35.646088, 38.197823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155556, 36.155968, 38.057735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.530071, 36.036049, 38.130928>,  <40.754780, 35.964096, 38.174843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.530071, 36.036049, 38.130928>,  <40.155556, 36.155968, 38.057735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530071, 36.036049, 38.130928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059460, 0.378164, 0.923827,
		-0.346160, -0.875850, 0.336245,
		0.936289, -0.299798, 0.182983,
		40.810959, 35.946110, 38.185822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159065, 36.074345, 38.838104>,  <40.155556, 36.155968, 38.057735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159065, 36.074345, 38.838104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.551052, 36.063225, 38.759216>,  <40.786243, 36.056553, 38.711884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.551052, 36.063225, 38.759216>,  <40.159065, 36.074345, 38.838104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551052, 36.063225, 38.759216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194670, 0.343080, 0.918912,
		0.042115, -0.938895, 0.341619,
		0.979964, -0.027802, -0.197224,
		40.845043, 36.054886, 38.700050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538509, 35.591492, 39.314610>,  <40.159065, 36.074345, 38.838104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538509, 35.591492, 39.314610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.824265, 35.832958, 39.173050>,  <40.995716, 35.977837, 39.088116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.824265, 35.832958, 39.173050>,  <40.538509, 35.591492, 39.314610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824265, 35.832958, 39.173050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201727, 0.306608, 0.930214,
		0.670043, -0.735923, 0.097261,
		0.714386, 0.603663, -0.353896,
		41.038582, 36.014057, 39.066879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114735, 35.547768, 39.685158>,  <40.538509, 35.591492, 39.314610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114735, 35.547768, 39.685158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.161766, 35.917690, 39.540428>,  <41.189983, 36.139645, 39.453590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.161766, 35.917690, 39.540428>,  <41.114735, 35.547768, 39.685158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161766, 35.917690, 39.540428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035890, 0.360155, 0.932202,
		0.992415, -0.122590, 0.009154,
		0.117575, 0.924803, -0.361823,
		41.197041, 36.195129, 39.431881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671951, 35.950146, 40.067860>,  <41.114735, 35.547768, 39.685158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.671951, 35.950146, 40.067860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.433739, 36.206459, 39.874062>,  <41.290813, 36.360249, 39.757782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.433739, 36.206459, 39.874062>,  <41.671951, 35.950146, 40.067860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433739, 36.206459, 39.874062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147537, 0.505609, 0.850054,
		0.789671, 0.577712, -0.206565,
		-0.595527, 0.640787, -0.484499,
		41.255081, 36.398697, 39.728710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912807, 36.582966, 40.275730>,  <41.671951, 35.950146, 40.067860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912807, 36.582966, 40.275730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.563820, 36.704205, 40.122406>,  <41.354427, 36.776947, 40.030411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.563820, 36.704205, 40.122406>,  <41.912807, 36.582966, 40.275730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563820, 36.704205, 40.122406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246503, 0.404299, 0.880783,
		0.421937, 0.862944, -0.278024,
		-0.872471, 0.303101, -0.383307,
		41.302078, 36.795135, 40.007416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862789, 37.172977, 40.561420>,  <41.912807, 36.582966, 40.275730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862789, 37.172977, 40.561420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.487095, 37.111549, 40.438618>,  <41.261677, 37.074692, 40.364937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.487095, 37.111549, 40.438618>,  <41.862789, 37.172977, 40.561420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487095, 37.111549, 40.438618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310098, 0.763149, 0.566959,
		0.147228, 0.627711, -0.764397,
		-0.939236, -0.153566, -0.307009,
		41.205326, 37.065479, 40.346516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567749, 37.793243, 40.484566>,  <41.862789, 37.172977, 40.561420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567749, 37.793243, 40.484566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.261856, 37.539505, 40.529804>,  <41.078320, 37.387264, 40.556946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.261856, 37.539505, 40.529804>,  <41.567749, 37.793243, 40.484566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261856, 37.539505, 40.529804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405357, 0.610062, 0.680816,
		-0.500866, 0.474799, -0.723671,
		-0.764735, -0.634342, 0.113097,
		41.032436, 37.349201, 40.563732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974655, 38.135529, 40.617584>,  <41.567749, 37.793243, 40.484566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974655, 38.135529, 40.617584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.867226, 37.775356, 40.754459>,  <40.802769, 37.559254, 40.836586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.867226, 37.775356, 40.754459>,  <40.974655, 38.135529, 40.617584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867226, 37.775356, 40.754459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198104, 0.399277, 0.895172,
		-0.942669, 0.172628, -0.285613,
		-0.268570, -0.900432, 0.342188,
		40.786655, 37.505226, 40.857117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306309, 38.206055, 40.839062>,  <40.974655, 38.135529, 40.617584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306309, 38.206055, 40.839062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.423244, 37.866135, 41.014507>,  <40.493404, 37.662182, 41.119774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.423244, 37.866135, 41.014507>,  <40.306309, 38.206055, 40.839062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423244, 37.866135, 41.014507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403212, 0.306359, 0.862302,
		-0.867156, -0.428935, -0.253090,
		0.292335, -0.849799, 0.438613,
		40.510944, 37.611195, 41.146091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746304, 38.101574, 41.372150>,  <40.306309, 38.206055, 40.839062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746304, 38.101574, 41.372150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.038193, 37.842133, 41.458694>,  <40.213326, 37.686466, 41.510620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.038193, 37.842133, 41.458694>,  <39.746304, 38.101574, 41.372150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038193, 37.842133, 41.458694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206431, 0.092672, 0.974063,
		-0.651834, -0.755461, -0.066267,
		0.729726, -0.648607, 0.216357,
		40.257111, 37.647552, 41.523602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426167, 37.528442, 41.743214>,  <39.746304, 38.101574, 41.372150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426167, 37.528442, 41.743214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.812344, 37.541496, 41.846638>,  <40.044052, 37.549328, 41.908691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.812344, 37.541496, 41.846638>,  <39.426167, 37.528442, 41.743214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812344, 37.541496, 41.846638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260426, 0.083566, 0.961871,
		0.009778, -0.995968, 0.089175,
		0.965444, 0.032629, 0.258559,
		40.101978, 37.551289, 41.924206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597446, 37.090385, 42.343884>,  <39.426167, 37.528442, 41.743214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597446, 37.090385, 42.343884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.840405, 37.406361, 42.310230>,  <39.986179, 37.595943, 42.290039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.840405, 37.406361, 42.310230>,  <39.597446, 37.090385, 42.343884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840405, 37.406361, 42.310230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065745, 0.155534, 0.985640,
		0.791677, -0.593138, 0.146405,
		0.607392, 0.789934, -0.084137,
		40.022621, 37.643341, 42.284988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152107, 37.032364, 42.828369>,  <39.597446, 37.090385, 42.343884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152107, 37.032364, 42.828369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.134789, 37.425148, 42.754745>,  <40.124397, 37.660820, 42.710571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.134789, 37.425148, 42.754745>,  <40.152107, 37.032364, 42.828369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134789, 37.425148, 42.754745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234109, 0.169132, 0.957386,
		0.971246, 0.084541, 0.222563,
		-0.043295, 0.981961, -0.184061,
		40.121799, 37.719738, 42.699528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587463, 37.374516, 43.298119>,  <40.152107, 37.032364, 42.828369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587463, 37.374516, 43.298119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.355038, 37.666309, 43.153774>,  <40.215584, 37.841385, 43.067165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.355038, 37.666309, 43.153774>,  <40.587463, 37.374516, 43.298119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355038, 37.666309, 43.153774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167153, 0.326980, 0.930131,
		0.796511, 0.600782, -0.068060,
		-0.581060, 0.729483, -0.360865,
		40.180721, 37.885155, 43.045513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818085, 37.965839, 43.670052>,  <40.587463, 37.374516, 43.298119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818085, 37.965839, 43.670052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.438496, 38.029919, 43.561394>,  <40.210743, 38.068367, 43.496197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.438496, 38.029919, 43.561394>,  <40.818085, 37.965839, 43.670052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438496, 38.029919, 43.561394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182341, 0.424080, 0.887078,
		0.257311, 0.891343, -0.373228,
		-0.948969, 0.160200, -0.271649,
		40.153805, 38.077980, 43.479900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645351, 38.478683, 44.118534>,  <40.818085, 37.965839, 43.670052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645351, 38.478683, 44.118534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.279121, 38.375404, 43.995205>,  <40.059383, 38.313438, 43.921207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.279121, 38.375404, 43.995205>,  <40.645351, 38.478683, 44.118534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279121, 38.375404, 43.995205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394248, 0.425022, 0.814816,
		-0.079339, 0.867578, -0.490931,
		-0.915573, -0.258195, -0.308320,
		40.004448, 38.297947, 43.902710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177952, 39.139469, 44.209072>,  <40.645351, 38.478683, 44.118534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177952, 39.139469, 44.209072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.916687, 38.838005, 44.179741>,  <39.759930, 38.657127, 44.162144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.916687, 38.838005, 44.179741>,  <40.177952, 39.139469, 44.209072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916687, 38.838005, 44.179741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607995, 0.464255, 0.644057,
		-0.451360, 0.465253, -0.761455,
		-0.653159, -0.753662, -0.073325,
		39.720737, 38.611908, 44.157742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.461113, 39.393036, 43.993507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.379593, 39.041992, 44.167068>,  <39.330681, 38.831367, 44.271206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.379593, 39.041992, 44.167068>,  <39.461113, 39.393036, 43.993507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379593, 39.041992, 44.167068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759574, 0.421367, 0.495477,
		-0.617666, -0.228603, -0.752482,
		-0.203803, -0.877605, 0.433905,
		39.318451, 38.778709, 44.297241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810913, 39.402756, 44.063042>,  <39.461113, 39.393036, 43.993507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810913, 39.402756, 44.063042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.954407, 39.151283, 44.339035>,  <39.040501, 39.000401, 44.504631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.954407, 39.151283, 44.339035>,  <38.810913, 39.402756, 44.063042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954407, 39.151283, 44.339035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728844, 0.273161, 0.627829,
		-0.583179, -0.728111, -0.360217,
		0.358732, -0.628679, 0.689981,
		39.062027, 38.962681, 44.546028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234215, 39.123863, 44.238182>,  <38.810913, 39.402756, 44.063042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234215, 39.123863, 44.238182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.483273, 39.103294, 44.550507>,  <38.632706, 39.090954, 44.737904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.483273, 39.103294, 44.550507>,  <38.234215, 39.123863, 44.238182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483273, 39.103294, 44.550507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760098, 0.197348, 0.619117,
		-0.185930, -0.978984, 0.083790,
		0.622641, -0.051424, 0.780816,
		38.670063, 39.087868, 44.784752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769444, 38.896118, 44.818413>,  <38.234215, 39.123863, 44.238182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769444, 38.896118, 44.818413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.097134, 39.038101, 44.998577>,  <38.293747, 39.123291, 45.106674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.097134, 39.038101, 44.998577>,  <37.769444, 38.896118, 44.818413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097134, 39.038101, 44.998577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538228, 0.204832, 0.817530,
		0.197937, -0.912164, 0.358857,
		0.819227, 0.354966, 0.450408,
		38.342903, 39.144588, 45.133701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695431, 38.748150, 45.575188>,  <37.769444, 38.896118, 44.818413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695431, 38.748150, 45.575188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998219, 39.008865, 45.593853>,  <38.179890, 39.165295, 45.605053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998219, 39.008865, 45.593853>,  <37.695431, 38.748150, 45.575188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998219, 39.008865, 45.593853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331011, 0.320900, 0.887387,
		0.563414, -0.687165, 0.458659,
		0.756965, 0.651787, 0.046659,
		38.225307, 39.204403, 45.607849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846458, 38.695339, 46.311356>,  <37.695431, 38.748150, 45.575188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846458, 38.695339, 46.311356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998333, 39.039455, 46.175270>,  <38.089458, 39.245926, 46.093620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998333, 39.039455, 46.175270>,  <37.846458, 38.695339, 46.311356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998333, 39.039455, 46.175270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393745, 0.483053, 0.782064,
		0.837141, -0.162981, 0.522142,
		0.379684, 0.860289, -0.340210,
		38.112240, 39.297543, 46.073208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167362, 39.004761, 46.904202>,  <37.846458, 38.695339, 46.311356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167362, 39.004761, 46.904202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.091698, 39.313320, 46.661167>,  <38.046299, 39.498455, 46.515347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.091698, 39.313320, 46.661167>,  <38.167362, 39.004761, 46.904202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091698, 39.313320, 46.661167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288264, 0.547866, 0.785333,
		0.938680, 0.323701, 0.118731,
		-0.189164, 0.771402, -0.607582,
		38.034950, 39.544743, 46.478893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531216, 39.551495, 47.099361>,  <38.167362, 39.004761, 46.904202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531216, 39.551495, 47.099361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212051, 39.695900, 46.906277>,  <38.020554, 39.782543, 46.790428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212051, 39.695900, 46.906277>,  <38.531216, 39.551495, 47.099361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212051, 39.695900, 46.906277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284045, 0.481133, 0.829355,
		0.531653, 0.798863, -0.281359,
		-0.797912, 0.361010, -0.482709,
		37.972679, 39.804203, 46.761463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624798, 40.247078, 47.106907>,  <38.531216, 39.551495, 47.099361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624798, 40.247078, 47.106907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.243454, 40.133427, 47.066177>,  <38.014648, 40.065235, 47.041740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.243454, 40.133427, 47.066177>,  <38.624798, 40.247078, 47.106907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243454, 40.133427, 47.066177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239813, 0.508219, 0.827165,
		-0.183272, 0.813008, -0.552656,
		-0.953363, -0.284131, -0.101828,
		37.957443, 40.048187, 47.035629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210789, 40.856651, 47.231682>,  <38.624798, 40.247078, 47.106907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210789, 40.856651, 47.231682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.916584, 40.588627, 47.271755>,  <37.740059, 40.427811, 47.295799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.916584, 40.588627, 47.271755>,  <38.210789, 40.856651, 47.231682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916584, 40.588627, 47.271755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311036, 0.465319, 0.828695,
		-0.601891, 0.578359, -0.550662,
		-0.735516, -0.670060, 0.100181,
		37.695930, 40.387608, 47.301811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598881, 41.241795, 47.397602>,  <38.210789, 40.856651, 47.231682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598881, 41.241795, 47.397602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548267, 40.864983, 47.521908>,  <37.517899, 40.638897, 47.596493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548267, 40.864983, 47.521908>,  <37.598881, 41.241795, 47.397602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548267, 40.864983, 47.521908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185941, 0.330256, 0.925395,
		-0.974379, 0.059313, -0.216951,
		-0.126537, -0.942026, 0.310765,
		37.510307, 40.582375, 47.615139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209831, 41.284657, 47.993629>,  <37.598881, 41.241795, 47.397602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209831, 41.284657, 47.993629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274914, 40.891953, 48.032978>,  <37.313965, 40.656330, 48.056587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274914, 40.891953, 48.032978>,  <37.209831, 41.284657, 47.993629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274914, 40.891953, 48.032978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006747, 0.098594, 0.995105,
		-0.986651, -0.162577, 0.009418,
		0.162710, -0.981757, 0.098374,
		37.323727, 40.597424, 48.062489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685352, 40.998322, 48.305004>,  <37.209831, 41.284657, 47.993629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685352, 40.998322, 48.305004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004452, 40.778969, 48.405296>,  <37.195911, 40.647358, 48.465473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004452, 40.778969, 48.405296>,  <36.685352, 40.998322, 48.305004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004452, 40.778969, 48.405296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164083, 0.202698, 0.965397,
		-0.580233, -0.811287, 0.071722,
		0.797751, -0.548387, 0.250730,
		37.243778, 40.614452, 48.480515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430805, 40.535431, 48.850243>,  <36.685352, 40.998322, 48.305004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430805, 40.535431, 48.850243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.827496, 40.547607, 48.900120>,  <37.065510, 40.554913, 48.930046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.827496, 40.547607, 48.900120>,  <36.430805, 40.535431, 48.850243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827496, 40.547607, 48.900120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127670, 0.133694, 0.982765,
		0.013248, -0.990555, 0.136475,
		0.991728, 0.030443, 0.124693,
		37.125015, 40.556740, 48.937527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584419, 40.126472, 49.467041>,  <36.430805, 40.535431, 48.850243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584419, 40.126472, 49.467041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.931564, 40.318916, 49.417492>,  <37.139851, 40.434383, 49.387764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.931564, 40.318916, 49.417492>,  <36.584419, 40.126472, 49.467041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931564, 40.318916, 49.417492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103399, 0.068950, 0.992247,
		0.485923, -0.873943, 0.010092,
		0.867864, 0.481112, -0.123870,
		37.191925, 40.463249, 49.380333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032742, 39.888466, 49.877441>,  <36.584419, 40.126472, 49.467041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032742, 39.888466, 49.877441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.226036, 40.232639, 49.812775>,  <37.342014, 40.439144, 49.773975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.226036, 40.232639, 49.812775>,  <37.032742, 39.888466, 49.877441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226036, 40.232639, 49.812775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254779, 0.038456, 0.966234,
		0.837597, -0.508111, -0.200637,
		0.483239, 0.860433, -0.161666,
		37.371006, 40.490768, 49.764275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459721, 39.905071, 50.450230>,  <37.032742, 39.888466, 49.877441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459721, 39.905071, 50.450230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488159, 40.273079, 50.296085>,  <37.505222, 40.493885, 50.203598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488159, 40.273079, 50.296085>,  <37.459721, 39.905071, 50.450230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488159, 40.273079, 50.296085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102654, 0.377541, 0.920285,
		0.992173, -0.104990, -0.067601,
		0.071098, 0.920022, -0.385364,
		37.509487, 40.549084, 50.180477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099827, 40.170006, 50.697834>,  <37.459721, 39.905071, 50.450230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099827, 40.170006, 50.697834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833153, 40.453686, 50.606113>,  <37.673149, 40.623894, 50.551083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833153, 40.453686, 50.606113>,  <38.099827, 40.170006, 50.697834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833153, 40.453686, 50.606113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112226, 0.399650, 0.909772,
		0.736846, 0.580794, -0.346029,
		-0.666681, 0.709195, -0.229300,
		37.633148, 40.666443, 50.537323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395180, 40.790623, 50.929985>,  <38.099827, 40.170006, 50.697834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395180, 40.790623, 50.929985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.002304, 40.861816, 50.905888>,  <37.766579, 40.904533, 50.891430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.002304, 40.861816, 50.905888>,  <38.395180, 40.790623, 50.929985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002304, 40.861816, 50.905888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025523, 0.444033, 0.895647,
		0.186160, 0.878156, -0.440667,
		-0.982188, 0.177981, -0.060248,
		37.707649, 40.915211, 50.887814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243595, 41.471806, 51.184280>,  <38.395180, 40.790623, 50.929985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243595, 41.471806, 51.184280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.907970, 41.256966, 51.218937>,  <37.706596, 41.128063, 51.239731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.907970, 41.256966, 51.218937>,  <38.243595, 41.471806, 51.184280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907970, 41.256966, 51.218937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127836, 0.349435, 0.928199,
		-0.528806, 0.767740, -0.361857,
		-0.839060, -0.537096, 0.086639,
		37.656254, 41.095837, 51.244930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782955, 41.861736, 51.539391>,  <38.243595, 41.471806, 51.184280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782955, 41.861736, 51.539391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.573063, 41.523026, 51.574326>,  <37.447128, 41.319798, 51.595287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.573063, 41.523026, 51.574326>,  <37.782955, 41.861736, 51.539391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573063, 41.523026, 51.574326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297313, 0.278438, 0.913278,
		-0.797661, 0.453258, -0.397863,
		-0.524730, -0.846776, 0.087339,
		37.415646, 41.268993, 51.600529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237476, 42.076187, 51.899094>,  <37.782955, 41.861736, 51.539391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237476, 42.076187, 51.899094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.259254, 41.681370, 51.959480>,  <37.272320, 41.444481, 51.995712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.259254, 41.681370, 51.959480>,  <37.237476, 42.076187, 51.899094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259254, 41.681370, 51.959480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219434, 0.135665, 0.966149,
		-0.974107, -0.085729, -0.209203,
		0.054446, -0.987039, 0.150964,
		37.275589, 41.385258, 52.004768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589077, 41.821442, 52.039936>,  <37.237476, 42.076187, 51.899094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589077, 41.821442, 52.039936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.309040, 41.690357, 52.293701>,  <36.141018, 41.611706, 52.445961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.309040, 41.690357, 52.293701>,  <36.589077, 41.821442, 52.039936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309040, 41.690357, 52.293701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588708, -0.237905, -0.772543,
		0.404102, -0.914334, -0.026372,
		-0.700088, -0.327712, 0.634414,
		36.099014, 41.592045, 52.484024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384651, 41.100994, 51.938942>,  <36.589077, 41.821442, 52.039936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384651, 41.100994, 51.938942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.071476, 41.287994, 52.103115>,  <35.883572, 41.400192, 52.201618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.071476, 41.287994, 52.103115>,  <36.384651, 41.100994, 51.938942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071476, 41.287994, 52.103115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588364, -0.342130, -0.732649,
		-0.202088, -0.815104, 0.542924,
		-0.782936, 0.467496, 0.410438,
		35.836594, 41.428246, 52.226246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819065, 40.630276, 51.992989>,  <36.384651, 41.100994, 51.938942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819065, 40.630276, 51.992989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.674595, 41.003117, 52.003925>,  <35.587914, 41.226822, 52.010487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.674595, 41.003117, 52.003925>,  <35.819065, 40.630276, 51.992989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674595, 41.003117, 52.003925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757583, -0.276204, -0.591421,
		-0.543711, -0.234318, 0.805899,
		-0.361173, 0.932098, 0.027341,
		35.566242, 41.282745, 52.012127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138401, 40.516129, 52.011360>,  <35.819065, 40.630276, 51.992989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138401, 40.516129, 52.011360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.167076, 40.894382, 51.884464>,  <35.184280, 41.121334, 51.808327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.167076, 40.894382, 51.884464>,  <35.138401, 40.516129, 52.011360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167076, 40.894382, 51.884464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727461, -0.168035, -0.665255,
		-0.682394, 0.278473, 0.675864,
		0.071687, 0.945631, -0.317244,
		35.188583, 41.178070, 51.789291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447136, 40.853588, 52.091930>,  <35.138401, 40.516129, 52.011360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447136, 40.853588, 52.091930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.648239, 41.057697, 51.812828>,  <34.768902, 41.180164, 51.645367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.648239, 41.057697, 51.812828>,  <34.447136, 40.853588, 52.091930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648239, 41.057697, 51.812828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772097, -0.097901, -0.627918,
		-0.388720, 0.854422, 0.344760,
		0.502755, 0.510272, -0.697753,
		34.799065, 41.210777, 51.603500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956223, 41.485153, 51.839729>,  <34.447136, 40.853588, 52.091930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956223, 41.485153, 51.839729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.225441, 41.383465, 51.561916>,  <34.386971, 41.322453, 51.395229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.225441, 41.383465, 51.561916>,  <33.956223, 41.485153, 51.839729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225441, 41.383465, 51.561916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727506, -0.058440, -0.683608,
		0.133198, 0.965379, -0.224280,
		0.673048, -0.254220, -0.694535,
		34.427357, 41.307198, 51.353558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831013, 41.960854, 51.253685>,  <33.956223, 41.485153, 51.839729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831013, 41.960854, 51.253685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995865, 41.626244, 51.109257>,  <34.094776, 41.425476, 51.022598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995865, 41.626244, 51.109257>,  <33.831013, 41.960854, 51.253685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995865, 41.626244, 51.109257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632588, 0.022500, -0.774162,
		0.655730, 0.547465, -0.519904,
		0.412129, -0.836526, -0.361074,
		34.119503, 41.375286, 51.000935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792305, 42.061924, 50.570427>,  <33.831013, 41.960854, 51.253685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792305, 42.061924, 50.570427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.878548, 41.671371, 50.564831>,  <33.930294, 41.437038, 50.561474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.878548, 41.671371, 50.564831>,  <33.792305, 42.061924, 50.570427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878548, 41.671371, 50.564831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455419, -0.087869, -0.885931,
		0.863776, 0.197381, -0.463607,
		0.215603, -0.976381, -0.013992,
		33.943230, 41.378456, 50.560635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856083, 41.969547, 49.793701>,  <33.792305, 42.061924, 50.570427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856083, 41.969547, 49.793701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.852772, 41.599697, 49.946014>,  <33.850784, 41.377789, 50.037403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.852772, 41.599697, 49.946014>,  <33.856083, 41.969547, 49.793701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852772, 41.599697, 49.946014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604895, -0.298596, -0.738202,
		0.796263, -0.236443, -0.556831,
		-0.008275, -0.924627, 0.380784,
		33.850288, 41.322308, 50.060249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080051, 41.560383, 49.214947>,  <33.856083, 41.969547, 49.793701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080051, 41.560383, 49.214947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.878151, 41.334946, 49.476509>,  <33.757011, 41.199684, 49.633446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.878151, 41.334946, 49.476509>,  <34.080051, 41.560383, 49.214947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878151, 41.334946, 49.476509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518198, -0.408014, -0.751662,
		0.690435, -0.718251, -0.086111,
		-0.504747, -0.563596, 0.653903,
		33.726727, 41.165867, 49.672680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453358, 41.071934, 49.013309>,  <34.080051, 41.560383, 49.214947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453358, 41.071934, 49.013309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621998, 40.710064, 49.037987>,  <34.723183, 40.492943, 49.052792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621998, 40.710064, 49.037987>,  <34.453358, 41.071934, 49.013309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621998, 40.710064, 49.037987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011002, -0.062922, -0.997958,
		0.906713, 0.421423, -0.016574,
		0.421605, -0.904679, 0.061689,
		34.748478, 40.438660, 49.056492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119556, 41.045757, 48.639664>,  <34.453358, 41.071934, 49.013309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119556, 41.045757, 48.639664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.943611, 40.686893, 48.655746>,  <34.838043, 40.471573, 48.665398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.943611, 40.686893, 48.655746>,  <35.119556, 41.045757, 48.639664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943611, 40.686893, 48.655746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131113, -0.108446, -0.985418,
		0.888440, -0.428181, 0.165332,
		-0.439866, -0.897162, 0.040208,
		34.811649, 40.417744, 48.667809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597027, 40.561905, 48.437675>,  <35.119556, 41.045757, 48.639664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597027, 40.561905, 48.437675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.240265, 40.396698, 48.363991>,  <35.026207, 40.297573, 48.319782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.240265, 40.396698, 48.363991>,  <35.597027, 40.561905, 48.437675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240265, 40.396698, 48.363991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250069, -0.111029, -0.961841,
		0.376802, -0.903931, 0.202309,
		-0.891900, -0.413015, -0.184209,
		34.972694, 40.272793, 48.308727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746853, 39.922264, 48.200378>,  <35.597027, 40.561905, 48.437675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746853, 39.922264, 48.200378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.378658, 40.022877, 48.080753>,  <35.157742, 40.083244, 48.008980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.378658, 40.022877, 48.080753>,  <35.746853, 39.922264, 48.200378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378658, 40.022877, 48.080753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258807, -0.181000, -0.948819,
		-0.292786, -0.950774, 0.101510,
		-0.920486, 0.251529, -0.299061,
		35.102512, 40.098335, 47.991035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581223, 39.362701, 47.706501>,  <35.746853, 39.922264, 48.200378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581223, 39.362701, 47.706501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320023, 39.653488, 47.621548>,  <35.163303, 39.827961, 47.570576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320023, 39.653488, 47.621548>,  <35.581223, 39.362701, 47.706501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320023, 39.653488, 47.621548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257389, -0.050715, -0.964976,
		-0.712277, -0.684797, -0.153996,
		-0.653003, 0.726967, -0.212382,
		35.124123, 39.871578, 47.557835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206104, 39.060287, 47.170334>,  <35.581223, 39.362701, 47.706501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206104, 39.060287, 47.170334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150272, 39.455757, 47.148277>,  <35.116772, 39.693039, 47.135044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150272, 39.455757, 47.148277>,  <35.206104, 39.060287, 47.170334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150272, 39.455757, 47.148277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323527, -0.007100, -0.946192,
		-0.935867, -0.149911, -0.318871,
		-0.139581, 0.988674, -0.055145,
		35.108398, 39.752357, 47.131733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864292, 39.096767, 46.568787>,  <35.206104, 39.060287, 47.170334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864292, 39.096767, 46.568787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014294, 39.462158, 46.631935>,  <35.104294, 39.681393, 46.669827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014294, 39.462158, 46.631935>,  <34.864292, 39.096767, 46.568787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014294, 39.462158, 46.631935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061336, 0.145479, -0.987458,
		-0.924991, 0.379987, -0.001474,
		0.375007, 0.913480, 0.157874,
		35.126797, 39.736202, 46.679298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432499, 39.564011, 46.208344>,  <34.864292, 39.096767, 46.568787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432499, 39.564011, 46.208344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.796124, 39.719410, 46.268566>,  <35.014297, 39.812649, 46.304699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.796124, 39.719410, 46.268566>,  <34.432499, 39.564011, 46.208344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796124, 39.719410, 46.268566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078378, 0.195438, -0.977579,
		-0.409214, 0.900484, 0.147216,
		0.909066, 0.388501, 0.150555,
		35.068844, 39.835960, 46.313732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476986, 40.154335, 45.797802>,  <34.432499, 39.564011, 46.208344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476986, 40.154335, 45.797802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.843014, 40.014019, 45.877399>,  <35.062630, 39.929829, 45.925159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.843014, 40.014019, 45.877399>,  <34.476986, 40.154335, 45.797802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843014, 40.014019, 45.877399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239606, 0.075967, -0.967894,
		0.324414, 0.933366, 0.153567,
		0.915065, -0.350794, 0.198995,
		35.117535, 39.908779, 45.937099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777359, 40.531422, 45.307983>,  <34.476986, 40.154335, 45.797802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777359, 40.531422, 45.307983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.054005, 40.266796, 45.423923>,  <35.219990, 40.108021, 45.493488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.054005, 40.266796, 45.423923>,  <34.777359, 40.531422, 45.307983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054005, 40.266796, 45.423923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329062, -0.068622, -0.941812,
		0.642955, 0.746746, 0.170234,
		0.691612, -0.661560, 0.289846,
		35.261490, 40.068329, 45.510876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367302, 40.682892, 44.911301>,  <34.777359, 40.531422, 45.307983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367302, 40.682892, 44.911301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.445515, 40.306480, 45.021744>,  <35.492443, 40.080635, 45.088009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.445515, 40.306480, 45.021744>,  <35.367302, 40.682892, 44.911301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445515, 40.306480, 45.021744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306919, -0.208678, -0.928576,
		0.931433, 0.266309, 0.248015,
		0.195533, -0.941028, 0.276105,
		35.504173, 40.024174, 45.104576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076824, 40.456512, 44.683472>,  <35.367302, 40.682892, 44.911301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076824, 40.456512, 44.683472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.879642, 40.113693, 44.743427>,  <35.761333, 39.908001, 44.779400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.879642, 40.113693, 44.743427>,  <36.076824, 40.456512, 44.683472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879642, 40.113693, 44.743427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244399, -0.301743, -0.921532,
		0.835022, -0.417644, 0.358207,
		-0.492959, -0.857044, 0.149890,
		35.731754, 39.856579, 44.788395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.234062, 36.429588, 27.750120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.863274, 36.549397, 27.659775>,  <44.640800, 36.621281, 27.605568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.863274, 36.549397, 27.659775>,  <45.234062, 36.429588, 27.750120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863274, 36.549397, 27.659775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295866, -0.213575, 0.931047,
		0.230625, 0.929879, 0.286595,
		-0.926971, 0.299517, -0.225864,
		44.585182, 36.639252, 27.592016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045944, 36.963947, 28.312042>,  <45.234062, 36.429588, 27.750120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045944, 36.963947, 28.312042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.712238, 36.814781, 28.149591>,  <44.512016, 36.725281, 28.052120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.712238, 36.814781, 28.149591>,  <45.045944, 36.963947, 28.312042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.712238, 36.814781, 28.149591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385005, -0.133267, 0.913242,
		-0.394686, 0.918245, -0.032395,
		-0.834263, -0.372916, -0.406127,
		44.461960, 36.702908, 28.027754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537270, 37.096832, 28.814672>,  <45.045944, 36.963947, 28.312042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537270, 37.096832, 28.814672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.353561, 36.822304, 28.589094>,  <44.243336, 36.657589, 28.453747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.353561, 36.822304, 28.589094>,  <44.537270, 37.096832, 28.814672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353561, 36.822304, 28.589094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504199, -0.321274, 0.801603,
		-0.731336, 0.652495, -0.198489,
		-0.459272, -0.686319, -0.563947,
		44.215778, 36.616409, 28.419910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747890, 37.187801, 28.962080>,  <44.537270, 37.096832, 28.814672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747890, 37.187801, 28.962080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.840527, 36.822601, 28.827744>,  <43.896107, 36.603481, 28.747141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.840527, 36.822601, 28.827744>,  <43.747890, 37.187801, 28.962080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840527, 36.822601, 28.827744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388774, -0.403324, 0.828363,
		-0.891752, -0.061274, -0.448358,
		0.231590, -0.913004, -0.335843,
		43.910004, 36.548698, 28.726990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119484, 36.774288, 28.927906>,  <43.747890, 37.187801, 28.962080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119484, 36.774288, 28.927906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.432911, 36.526886, 28.951462>,  <43.620968, 36.378445, 28.965595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.432911, 36.526886, 28.951462>,  <43.119484, 36.774288, 28.927906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432911, 36.526886, 28.951462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368430, -0.386239, 0.845623,
		-0.500281, -0.684299, -0.530522,
		0.783568, -0.618509, 0.058888,
		43.667980, 36.341335, 28.969128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903267, 36.219254, 29.405390>,  <43.119484, 36.774288, 28.927906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903267, 36.219254, 29.405390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.302189, 36.190300, 29.400591>,  <43.541542, 36.172928, 29.397711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.302189, 36.190300, 29.400591>,  <42.903267, 36.219254, 29.405390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302189, 36.190300, 29.400591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027011, -0.514241, 0.857220,
		-0.068219, -0.854586, -0.514811,
		0.997304, -0.072384, -0.011998,
		43.601379, 36.168583, 29.396992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008125, 35.568481, 29.547953>,  <42.903267, 36.219254, 29.405390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008125, 35.568481, 29.547953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.376266, 35.702065, 29.629358>,  <43.597153, 35.782215, 29.678202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.376266, 35.702065, 29.629358>,  <43.008125, 35.568481, 29.547953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376266, 35.702065, 29.629358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066176, -0.379898, 0.922658,
		0.385444, -0.862641, -0.327541,
		0.920355, 0.333957, 0.203516,
		43.652374, 35.802250, 29.690413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281654, 35.021992, 29.884077>,  <43.008125, 35.568481, 29.547953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281654, 35.021992, 29.884077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.535900, 35.316143, 29.978067>,  <43.688446, 35.492634, 30.034462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.535900, 35.316143, 29.978067>,  <43.281654, 35.021992, 29.884077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535900, 35.316143, 29.978067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069883, -0.357928, 0.931131,
		0.768837, -0.575419, -0.278895,
		0.635615, 0.735378, 0.234976,
		43.726585, 35.536755, 30.048561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929993, 34.693584, 30.221216>,  <43.281654, 35.021992, 29.884077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929993, 34.693584, 30.221216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.898788, 35.075077, 30.337357>,  <43.880066, 35.303974, 30.407042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.898788, 35.075077, 30.337357>,  <43.929993, 34.693584, 30.221216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898788, 35.075077, 30.337357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081418, -0.284171, 0.955310,
		0.993622, 0.098165, -0.055482,
		-0.078012, 0.953735, 0.290351,
		43.875385, 35.361198, 30.424461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454617, 34.937721, 30.612692>,  <43.929993, 34.693584, 30.221216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454617, 34.937721, 30.612692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.152885, 35.177181, 30.720480>,  <43.971848, 35.320858, 30.785152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.152885, 35.177181, 30.720480>,  <44.454617, 34.937721, 30.612692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152885, 35.177181, 30.720480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085642, -0.317225, 0.944476,
		0.650890, 0.735520, 0.188021,
		-0.754326, 0.598648, 0.269470,
		43.926586, 35.356777, 30.801321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646103, 35.140430, 31.219252>,  <44.454617, 34.937721, 30.612692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646103, 35.140430, 31.219252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.265083, 35.261791, 31.229004>,  <44.036472, 35.334610, 31.234856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.265083, 35.261791, 31.229004>,  <44.646103, 35.140430, 31.219252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265083, 35.261791, 31.229004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008569, -0.106796, 0.994244,
		0.304262, 0.946858, 0.104329,
		-0.952550, 0.303405, 0.024380,
		43.979317, 35.352814, 31.236319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554817, 35.605827, 31.816193>,  <44.646103, 35.140430, 31.219252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554817, 35.605827, 31.816193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.174049, 35.507629, 31.742897>,  <43.945587, 35.448711, 31.698919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.174049, 35.507629, 31.742897>,  <44.554817, 35.605827, 31.816193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174049, 35.507629, 31.742897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175607, -0.052829, 0.983042,
		-0.251010, 0.967958, 0.007179,
		-0.951922, -0.245493, -0.183240,
		43.888474, 35.433983, 31.687925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183781, 35.956161, 32.234634>,  <44.554817, 35.605827, 31.816193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.183781, 35.956161, 32.234634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.952000, 35.642033, 32.147446>,  <43.812931, 35.453556, 32.095135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.952000, 35.642033, 32.147446>,  <44.183781, 35.956161, 32.234634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952000, 35.642033, 32.147446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163672, -0.149866, 0.975065,
		-0.798402, 0.600679, -0.041695,
		-0.579452, -0.785318, -0.217968,
		43.778164, 35.406437, 32.082054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496155, 36.056923, 32.590668>,  <44.183781, 35.956161, 32.234634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496155, 36.056923, 32.590668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.533943, 35.666439, 32.512596>,  <43.556618, 35.432148, 32.465752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.533943, 35.666439, 32.512596>,  <43.496155, 36.056923, 32.590668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533943, 35.666439, 32.512596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187768, -0.210014, 0.959498,
		-0.977660, -0.053994, -0.203140,
		0.094470, -0.976206, -0.195183,
		43.562283, 35.373577, 32.454041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912945, 35.751972, 32.884430>,  <43.496155, 36.056923, 32.590668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912945, 35.751972, 32.884430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179928, 35.456085, 32.850220>,  <43.340118, 35.278553, 32.829693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179928, 35.456085, 32.850220>,  <42.912945, 35.751972, 32.884430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179928, 35.456085, 32.850220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233312, -0.316809, 0.919346,
		-0.707154, -0.593670, -0.384042,
		0.667457, -0.739721, -0.085523,
		43.380165, 35.234169, 32.824562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539379, 35.148197, 33.128620>,  <42.912945, 35.751972, 32.884430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539379, 35.148197, 33.128620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.915493, 35.013752, 33.150154>,  <43.141159, 34.933083, 33.163074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.915493, 35.013752, 33.150154>,  <42.539379, 35.148197, 33.128620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915493, 35.013752, 33.150154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278669, -0.669247, 0.688805,
		-0.195489, -0.662672, -0.722945,
		0.940281, -0.336116, 0.053835,
		43.197578, 34.912918, 33.166306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438103, 34.447277, 33.117531>,  <42.539379, 35.148197, 33.128620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438103, 34.447277, 33.117531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.809849, 34.481331, 33.261219>,  <43.032894, 34.501762, 33.347431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.809849, 34.481331, 33.261219>,  <42.438103, 34.447277, 33.117531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809849, 34.481331, 33.261219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179064, -0.746958, 0.640305,
		0.322834, -0.659398, -0.678949,
		0.929362, 0.085137, 0.359218,
		43.088657, 34.506870, 33.368984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775612, 33.800625, 33.292076>,  <42.438103, 34.447277, 33.117531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775612, 33.800625, 33.292076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.989197, 34.036594, 33.534355>,  <43.117348, 34.178177, 33.679722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.989197, 34.036594, 33.534355>,  <42.775612, 33.800625, 33.292076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989197, 34.036594, 33.534355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031424, -0.729729, 0.683014,
		0.844923, -0.345672, -0.408187,
		0.533965, 0.589921, 0.605702,
		43.149387, 34.213570, 33.716064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345116, 33.365566, 33.673702>,  <42.775612, 33.800625, 33.292076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345116, 33.365566, 33.673702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.288624, 33.673950, 33.922112>,  <43.254730, 33.858982, 34.071156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.288624, 33.673950, 33.922112>,  <43.345116, 33.365566, 33.673702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288624, 33.673950, 33.922112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380955, -0.536680, 0.752893,
		0.913744, 0.342913, -0.217906,
		-0.141231, 0.770964, 0.621023,
		43.246254, 33.905239, 34.108418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964256, 33.280781, 34.090782>,  <43.345116, 33.365566, 33.673702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964256, 33.280781, 34.090782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.715736, 33.526546, 34.285301>,  <43.566624, 33.674007, 34.402012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.715736, 33.526546, 34.285301>,  <43.964256, 33.280781, 34.090782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715736, 33.526546, 34.285301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221123, -0.457905, 0.861062,
		0.751727, 0.642506, 0.148634,
		-0.621298, 0.614417, 0.486293,
		43.529346, 33.710873, 34.431190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281853, 33.428890, 34.680031>,  <43.964256, 33.280781, 34.090782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281853, 33.428890, 34.680031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.896702, 33.524055, 34.731037>,  <43.665611, 33.581154, 34.761642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.896702, 33.524055, 34.731037>,  <44.281853, 33.428890, 34.680031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.896702, 33.524055, 34.731037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063121, -0.260851, 0.963313,
		0.262447, 0.935604, 0.236150,
		-0.962880, 0.237913, 0.127515,
		43.607838, 33.595428, 34.769291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051357, 33.586441, 34.699459>,  <44.281853, 33.428890, 34.680031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051357, 33.586441, 34.699459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.449799, 33.604263, 34.669003>,  <45.688862, 33.614956, 34.650730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.449799, 33.604263, 34.669003>,  <45.051357, 33.586441, 34.699459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.449799, 33.604263, 34.669003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081156, 0.124522, -0.988892,
		-0.034581, 0.991216, 0.127653,
		0.996101, 0.044557, -0.076137,
		45.748631, 33.617630, 34.646160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.205627, 34.127785, 34.246628>,  <45.051357, 33.586441, 34.699459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.205627, 34.127785, 34.246628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.526703, 33.889259, 34.242569>,  <45.719349, 33.746143, 34.240131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.526703, 33.889259, 34.242569>,  <45.205627, 34.127785, 34.246628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.526703, 33.889259, 34.242569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089137, 0.136780, -0.986583,
		0.589697, 0.791016, 0.162946,
		0.802690, -0.596310, -0.010150,
		45.767509, 33.710365, 34.239525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560215, 34.429398, 33.794849>,  <45.205627, 34.127785, 34.246628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560215, 34.429398, 33.794849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.724609, 34.064777, 33.800179>,  <45.823246, 33.846004, 33.803375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.724609, 34.064777, 33.800179>,  <45.560215, 34.429398, 33.794849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.724609, 34.064777, 33.800179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093637, 0.027669, -0.995222,
		0.906822, 0.410266, 0.096726,
		0.410982, -0.911546, 0.013325,
		45.847904, 33.791313, 33.804176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.270916, 34.457531, 33.499146>,  <45.560215, 34.429398, 33.794849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.270916, 34.457531, 33.499146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.114563, 34.090462, 33.470585>,  <46.020752, 33.870220, 33.453449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.114563, 34.090462, 33.470585>,  <46.270916, 34.457531, 33.499146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.114563, 34.090462, 33.470585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238990, -0.026274, -0.970667,
		0.888874, -0.396477, 0.229584,
		-0.390879, -0.917668, -0.071400,
		45.997299, 33.815163, 33.449165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.808498, 34.128647, 33.277771>,  <46.270916, 34.457531, 33.499146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.808498, 34.128647, 33.277771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.511189, 33.875847, 33.190033>,  <46.332802, 33.724167, 33.137390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.511189, 33.875847, 33.190033>,  <46.808498, 34.128647, 33.277771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.511189, 33.875847, 33.190033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446802, -0.224951, -0.865890,
		0.497902, -0.741600, 0.449581,
		-0.743278, -0.632002, -0.219345,
		46.288204, 33.686245, 33.124229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.116566, 33.408497, 32.925972>,  <46.808498, 34.128647, 33.277771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.116566, 33.408497, 32.925972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.734268, 33.440552, 32.812744>,  <46.504890, 33.459785, 32.744808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.734268, 33.440552, 32.812744>,  <47.116566, 33.408497, 32.925972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.734268, 33.440552, 32.812744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285614, 0.022073, -0.958090,
		-0.070529, -0.996540, -0.043984,
		-0.955746, 0.080135, -0.283069,
		46.447544, 33.464592, 32.727825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.935410, 32.959095, 32.361198>,  <47.116566, 33.408497, 32.925972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.935410, 32.959095, 32.361198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.610813, 33.191364, 32.334934>,  <46.416058, 33.330727, 32.319176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.610813, 33.191364, 32.334934>,  <46.935410, 32.959095, 32.361198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.610813, 33.191364, 32.334934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125826, 0.063896, -0.989992,
		-0.570663, -0.811628, -0.124914,
		-0.811487, 0.580669, -0.065661,
		46.367367, 33.365566, 32.315235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.874313, 32.988060, 31.737385>,  <46.935410, 32.959095, 32.361198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.874313, 32.988060, 31.737385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.565472, 33.227390, 31.823042>,  <46.380165, 33.370991, 31.874435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.565472, 33.227390, 31.823042>,  <46.874313, 32.988060, 31.737385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.565472, 33.227390, 31.823042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062612, 0.263707, -0.962569,
		-0.632402, -0.756613, -0.166147,
		-0.772106, 0.598328, 0.214142,
		46.333839, 33.406887, 31.887285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.315414, 32.851963, 31.253452>,  <46.874313, 32.988060, 31.737385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.315414, 32.851963, 31.253452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.284679, 33.233978, 31.367992>,  <46.266239, 33.463188, 31.436716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.284679, 33.233978, 31.367992>,  <46.315414, 32.851963, 31.253452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.284679, 33.233978, 31.367992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111674, 0.277150, -0.954315,
		-0.990770, -0.105306, 0.085357,
		-0.076838, 0.955038, 0.286352,
		46.261627, 33.520489, 31.453897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.739285, 33.122391, 30.903658>,  <46.315414, 32.851963, 31.253452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.739285, 33.122391, 30.903658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.948864, 33.445709, 31.011087>,  <46.074612, 33.639702, 31.075544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.948864, 33.445709, 31.011087>,  <45.739285, 33.122391, 30.903658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.948864, 33.445709, 31.011087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106682, 0.375112, -0.920820,
		-0.845043, 0.453810, 0.282770,
		0.523948, 0.808299, 0.268573,
		46.106049, 33.688198, 31.091660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.380562, 33.553352, 30.565386>,  <45.739285, 33.122391, 30.903658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.380562, 33.553352, 30.565386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.735882, 33.723324, 30.635088>,  <45.949074, 33.825306, 30.676910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.735882, 33.723324, 30.635088>,  <45.380562, 33.553352, 30.565386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.735882, 33.723324, 30.635088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034649, 0.440345, -0.897160,
		-0.457964, 0.790905, 0.405880,
		0.888295, 0.424930, 0.174258,
		46.002369, 33.850803, 30.687365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.284866, 34.253742, 30.378157>,  <45.380562, 33.553352, 30.565386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.284866, 34.253742, 30.378157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.677811, 34.179264, 30.385059>,  <45.913578, 34.134575, 30.389202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.677811, 34.179264, 30.385059>,  <45.284866, 34.253742, 30.378157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.677811, 34.179264, 30.385059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104302, 0.468998, -0.877019,
		0.155204, 0.863349, 0.480146,
		0.982361, -0.186197, 0.017259,
		45.972519, 34.123405, 30.390238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.647869, 34.918072, 30.268087>,  <45.284866, 34.253742, 30.378157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.647869, 34.918072, 30.268087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.894859, 34.620121, 30.166988>,  <46.043053, 34.441349, 30.106329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.894859, 34.620121, 30.166988>,  <45.647869, 34.918072, 30.268087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.894859, 34.620121, 30.166988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081387, 0.380095, -0.921360,
		0.782371, 0.548343, 0.295322,
		0.617472, -0.744881, -0.252747,
		46.080101, 34.396656, 30.091164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.024002, 35.151867, 29.853029>,  <45.647869, 34.918072, 30.268087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.024002, 35.151867, 29.853029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106514, 34.771469, 29.760883>,  <46.156021, 34.543232, 29.705595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106514, 34.771469, 29.760883>,  <46.024002, 35.151867, 29.853029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.106514, 34.771469, 29.760883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026896, 0.240849, -0.970190,
		0.978124, 0.193932, 0.075259,
		0.206277, -0.950990, -0.230364,
		46.168396, 34.486172, 29.691774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.587669, 35.209568, 29.523741>,  <46.024002, 35.151867, 29.853029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.587669, 35.209568, 29.523741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.463795, 34.849121, 29.402363>,  <46.389469, 34.632854, 29.329536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.463795, 34.849121, 29.402363>,  <46.587669, 35.209568, 29.523741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.463795, 34.849121, 29.402363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153020, 0.267740, -0.951263,
		0.938444, -0.341029, 0.054972,
		-0.309690, -0.901119, -0.303443,
		46.370888, 34.578785, 29.311331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.045124, 34.961517, 29.071140>,  <46.587669, 35.209568, 29.523741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.045124, 34.961517, 29.071140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.726513, 34.734451, 28.987904>,  <46.535347, 34.598209, 28.937962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.726513, 34.734451, 28.987904>,  <47.045124, 34.961517, 29.071140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.726513, 34.734451, 28.987904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256968, -0.006309, -0.966399,
		0.547282, -0.823233, 0.150898,
		-0.796524, -0.567669, -0.208091,
		46.487556, 34.564152, 28.925476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.300617, 34.446148, 28.679741>,  <47.045124, 34.961517, 29.071140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.300617, 34.446148, 28.679741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.907497, 34.460247, 28.607227>,  <46.671627, 34.468708, 28.563719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.907497, 34.460247, 28.607227>,  <47.300617, 34.446148, 28.679741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.907497, 34.460247, 28.607227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184375, 0.130806, -0.974113,
		-0.010621, -0.990781, -0.135055,
		-0.982799, 0.035247, -0.181286,
		46.612659, 34.470821, 28.552841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.203560, 34.201530, 27.975834>,  <47.300617, 34.446148, 28.679741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.203560, 34.201530, 27.975834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.847740, 34.377758, 28.024178>,  <46.634251, 34.483494, 28.053185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.847740, 34.377758, 28.024178>,  <47.203560, 34.201530, 27.975834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.847740, 34.377758, 28.024178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038293, 0.191715, -0.980703,
		-0.455240, -0.877008, -0.153669,
		-0.889545, 0.440571, 0.120860,
		46.580875, 34.509930, 28.060436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.748020, 34.059402, 27.331337>,  <47.203560, 34.201530, 27.975834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.748020, 34.059402, 27.331337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.610317, 34.392860, 27.504089>,  <46.527695, 34.592937, 27.607740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.610317, 34.392860, 27.504089>,  <46.748020, 34.059402, 27.331337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.610317, 34.392860, 27.504089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198020, 0.385178, -0.901347,
		-0.917756, -0.395813, 0.032480,
		-0.344254, 0.833649, 0.431879,
		46.507042, 34.642956, 27.633654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.148159, 34.237366, 26.923668>,  <46.748020, 34.059402, 27.331337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.148159, 34.237366, 26.923668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.266811, 34.555687, 27.134840>,  <46.338001, 34.746681, 27.261543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.266811, 34.555687, 27.134840>,  <46.148159, 34.237366, 26.923668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.266811, 34.555687, 27.134840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139750, 0.583031, -0.800340,
		-0.944711, 0.163629, 0.284159,
		0.296632, 0.795802, 0.527929,
		46.355801, 34.794426, 27.293219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.672897, 34.641354, 26.727678>,  <46.148159, 34.237366, 26.923668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.672897, 34.641354, 26.727678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.934864, 34.909309, 26.867584>,  <46.092045, 35.070084, 26.951527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.934864, 34.909309, 26.867584>,  <45.672897, 34.641354, 26.727678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.934864, 34.909309, 26.867584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078125, 0.520369, -0.850360,
		-0.751654, 0.529588, 0.393132,
		0.654914, 0.669891, 0.349763,
		46.131340, 35.110275, 26.972513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.330059, 37.554996, 42.337093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948631, 37.537094, 42.217964>,  <40.719772, 37.526352, 42.146488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948631, 37.537094, 42.217964>,  <41.330059, 37.554996, 42.337093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948631, 37.537094, 42.217964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293109, -0.365102, -0.883622,
		-0.069189, -0.929891, 0.361269,
		-0.953572, -0.044754, -0.297820,
		40.662560, 37.523666, 42.128616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267918, 36.956017, 41.962902>,  <41.330059, 37.554996, 42.337093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267918, 36.956017, 41.962902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945736, 37.158775, 41.840069>,  <40.752426, 37.280430, 41.766369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945736, 37.158775, 41.840069>,  <41.267918, 36.956017, 41.962902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945736, 37.158775, 41.840069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121782, -0.365529, -0.922799,
		-0.580014, -0.780668, 0.232685,
		-0.805452, 0.506899, -0.307083,
		40.704102, 37.310844, 41.747944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010971, 36.454506, 41.702660>,  <41.267918, 36.956017, 41.962902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010971, 36.454506, 41.702660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864193, 36.797096, 41.557442>,  <40.776127, 37.002651, 41.470310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864193, 36.797096, 41.557442>,  <41.010971, 36.454506, 41.702660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864193, 36.797096, 41.557442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160637, -0.326070, -0.931597,
		-0.916267, -0.400167, -0.017930,
		-0.366948, 0.856472, -0.363049,
		40.754108, 37.054039, 41.448528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531078, 36.310303, 41.246273>,  <41.010971, 36.454506, 41.702660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531078, 36.310303, 41.246273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627197, 36.683170, 41.137966>,  <40.684868, 36.906891, 41.072983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627197, 36.683170, 41.137966>,  <40.531078, 36.310303, 41.246273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627197, 36.683170, 41.137966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083518, -0.297764, -0.950979,
		-0.967100, 0.205902, -0.149404,
		0.240296, 0.932170, -0.270771,
		40.699287, 36.962822, 41.056736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013874, 36.542210, 40.740780>,  <40.531078, 36.310303, 41.246273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013874, 36.542210, 40.740780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325710, 36.786530, 40.685406>,  <40.512810, 36.933121, 40.652184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325710, 36.786530, 40.685406>,  <40.013874, 36.542210, 40.740780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325710, 36.786530, 40.685406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072868, -0.307991, -0.948595,
		-0.622040, 0.729426, -0.284614,
		0.779588, 0.610803, -0.138431,
		40.559586, 36.969769, 40.643875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005219, 36.669559, 40.000427>,  <40.013874, 36.542210, 40.740780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005219, 36.669559, 40.000427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355690, 36.842091, 40.086460>,  <40.565975, 36.945610, 40.138081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355690, 36.842091, 40.086460>,  <40.005219, 36.669559, 40.000427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355690, 36.842091, 40.086460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368198, -0.311027, -0.876180,
		-0.311027, 0.846886, -0.431331,
		0.876180, 0.431331, 0.215084,
		40.618546, 36.971489, 40.150986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167793, 37.069977, 39.412689>,  <40.005219, 36.669559, 40.000427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167793, 37.069977, 39.412689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512104, 37.001575, 39.604450>,  <40.718689, 36.960537, 39.719505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512104, 37.001575, 39.604450>,  <40.167793, 37.069977, 39.412689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512104, 37.001575, 39.604450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438082, -0.230617, -0.868850,
		0.259132, 0.957901, -0.123596,
		0.860776, -0.171002, 0.479400,
		40.770336, 36.950275, 39.748272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667782, 37.353973, 39.080677>,  <40.167793, 37.069977, 39.412689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667782, 37.353973, 39.080677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848644, 37.062771, 39.286808>,  <40.957161, 36.888050, 39.410488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848644, 37.062771, 39.286808>,  <40.667782, 37.353973, 39.080677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848644, 37.062771, 39.286808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542110, -0.234492, -0.806926,
		0.708285, 0.644225, 0.288630,
		0.452160, -0.728003, 0.515328,
		40.984291, 36.844372, 39.441406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329750, 37.384560, 38.855747>,  <40.667782, 37.353973, 39.080677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329750, 37.384560, 38.855747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275063, 37.020786, 39.012840>,  <41.242252, 36.802525, 39.107098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275063, 37.020786, 39.012840>,  <41.329750, 37.384560, 38.855747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275063, 37.020786, 39.012840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343819, -0.415377, -0.842170,
		0.929030, 0.019892, 0.369469,
		-0.136716, -0.909432, 0.392737,
		41.234047, 36.747955, 39.130661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709042, 36.923965, 38.434811>,  <41.329750, 37.384560, 38.855747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709042, 36.923965, 38.434811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503853, 36.654251, 38.647301>,  <41.380741, 36.492420, 38.774796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503853, 36.654251, 38.647301>,  <41.709042, 36.923965, 38.434811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503853, 36.654251, 38.647301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113321, -0.666625, -0.736729,
		0.850893, -0.317722, 0.418370,
		-0.512971, -0.674288, 0.531222,
		41.349960, 36.451965, 38.806667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067909, 36.348896, 38.365826>,  <41.709042, 36.923965, 38.434811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067909, 36.348896, 38.365826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693584, 36.251984, 38.468246>,  <41.468990, 36.193836, 38.529697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693584, 36.251984, 38.468246>,  <42.067909, 36.348896, 38.365826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693584, 36.251984, 38.468246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048572, -0.630809, -0.774416,
		0.349149, -0.737141, 0.578547,
		-0.935807, -0.242286, 0.256051,
		41.412842, 36.179298, 38.545063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013702, 35.562191, 38.353634>,  <42.067909, 36.348896, 38.365826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013702, 35.562191, 38.353634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636097, 35.687305, 38.311672>,  <41.409534, 35.762375, 38.286495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636097, 35.687305, 38.311672>,  <42.013702, 35.562191, 38.353634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636097, 35.687305, 38.311672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155654, -0.702644, -0.694307,
		-0.290883, -0.639105, 0.711991,
		-0.944012, 0.312787, -0.104908,
		41.352894, 35.781143, 38.280201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516903, 35.733196, 38.960011>,  <42.013702, 35.562191, 38.353634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516903, 35.733196, 38.960011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313145, 35.575066, 38.654270>,  <41.190891, 35.480186, 38.470825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313145, 35.575066, 38.654270>,  <41.516903, 35.733196, 38.960011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313145, 35.575066, 38.654270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709592, -0.695459, -0.113204,
		-0.486824, -0.600045, 0.634782,
		-0.509392, -0.395326, -0.764354,
		41.160328, 35.456467, 38.424965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393345, 34.923466, 39.018368>,  <41.516903, 35.733196, 38.960011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393345, 34.923466, 39.018368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375187, 35.042351, 38.636875>,  <41.364292, 35.113682, 38.407978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375187, 35.042351, 38.636875>,  <41.393345, 34.923466, 39.018368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375187, 35.042351, 38.636875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741152, -0.630108, -0.231642,
		-0.669801, -0.717376, -0.191673,
		-0.045399, 0.297213, -0.953731,
		41.361568, 35.131516, 38.350758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783360, 34.777050, 38.396873>,  <41.393345, 34.923466, 39.018368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783360, 34.777050, 38.396873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045094, 34.474998, 38.413010>,  <42.202133, 34.293766, 38.422691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045094, 34.474998, 38.413010>,  <41.783360, 34.777050, 38.396873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045094, 34.474998, 38.413010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230620, -0.148459, 0.961652,
		-0.720182, -0.638545, -0.271289,
		0.654333, -0.755129, 0.040343,
		42.241394, 34.248459, 38.425114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462337, 34.158634, 38.729824>,  <41.783360, 34.777050, 38.396873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462337, 34.158634, 38.729824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851166, 34.080235, 38.781464>,  <42.084461, 34.033195, 38.812447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851166, 34.080235, 38.781464>,  <41.462337, 34.158634, 38.729824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851166, 34.080235, 38.781464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187969, -0.320784, 0.928313,
		-0.140531, -0.926652, -0.348665,
		0.972069, -0.195995, 0.129101,
		42.142788, 34.021435, 38.820194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562466, 33.457470, 38.850048>,  <41.462337, 34.158634, 38.729824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562466, 33.457470, 38.850048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871929, 33.652340, 39.012089>,  <42.057606, 33.769260, 39.109314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871929, 33.652340, 39.012089>,  <41.562466, 33.457470, 38.850048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871929, 33.652340, 39.012089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283973, -0.304947, 0.909047,
		0.566401, -0.818332, -0.097580,
		0.773660, 0.487175, 0.405106,
		42.104027, 33.798492, 39.133621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760662, 33.035610, 39.404434>,  <41.562466, 33.457470, 38.850048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760662, 33.035610, 39.404434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964329, 33.363422, 39.509602>,  <42.086529, 33.560108, 39.572701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964329, 33.363422, 39.509602>,  <41.760662, 33.035610, 39.404434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964329, 33.363422, 39.509602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338070, -0.090484, 0.936761,
		0.791491, -0.565851, 0.230986,
		0.509167, 0.819528, 0.262915,
		42.117077, 33.609280, 39.588474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986176, 32.906166, 40.064766>,  <41.760662, 33.035610, 39.404434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986176, 32.906166, 40.064766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003681, 33.304180, 40.029018>,  <42.014183, 33.542988, 40.007568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003681, 33.304180, 40.029018>,  <41.986176, 32.906166, 40.064766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003681, 33.304180, 40.029018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374381, 0.099269, 0.921946,
		0.926242, -0.006889, 0.376867,
		0.043762, 0.995037, -0.089368,
		42.016811, 33.602692, 40.002209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317875, 33.110733, 40.692471>,  <41.986176, 32.906166, 40.064766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317875, 33.110733, 40.692471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095924, 33.418571, 40.566086>,  <41.962753, 33.603275, 40.490257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095924, 33.418571, 40.566086>,  <42.317875, 33.110733, 40.692471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095924, 33.418571, 40.566086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505944, -0.010685, 0.862500,
		0.660401, 0.638442, 0.395301,
		-0.554880, 0.769596, -0.315959,
		41.929459, 33.649448, 40.471298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338585, 33.549290, 41.247414>,  <42.317875, 33.110733, 40.692471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338585, 33.549290, 41.247414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031487, 33.695713, 41.037056>,  <41.847225, 33.783566, 40.910843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031487, 33.695713, 41.037056>,  <42.338585, 33.549290, 41.247414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031487, 33.695713, 41.037056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442842, 0.290038, 0.848392,
		0.463088, 0.884240, -0.060571,
		-0.767750, 0.366056, -0.525892,
		41.801163, 33.805531, 40.879288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243912, 34.202587, 41.530373>,  <42.338585, 33.549290, 41.247414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243912, 34.202587, 41.530373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902317, 34.084751, 41.358826>,  <41.697361, 34.014050, 41.255898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902317, 34.084751, 41.358826>,  <42.243912, 34.202587, 41.530373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902317, 34.084751, 41.358826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508584, 0.298702, 0.807539,
		-0.109792, 0.907740, -0.404912,
		-0.853983, -0.294594, -0.428867,
		41.646122, 33.996372, 41.230167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781208, 34.773113, 41.722775>,  <42.243912, 34.202587, 41.530373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781208, 34.773113, 41.722775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553730, 34.462440, 41.614449>,  <41.417244, 34.276035, 41.549454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553730, 34.462440, 41.614449>,  <41.781208, 34.773113, 41.722775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553730, 34.462440, 41.614449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522785, 0.087105, 0.848003,
		-0.635041, 0.623838, -0.455576,
		-0.568700, -0.776684, -0.270818,
		41.383121, 34.229435, 41.533203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038757, 34.971909, 41.933701>,  <41.781208, 34.773113, 41.722775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038757, 34.971909, 41.933701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041370, 34.577751, 41.865639>,  <41.042938, 34.341255, 41.824802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041370, 34.577751, 41.865639>,  <41.038757, 34.971909, 41.933701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041370, 34.577751, 41.865639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670692, -0.130525, 0.730161,
		-0.741707, 0.109354, -0.661749,
		0.006529, -0.985396, -0.170154,
		41.043327, 34.282131, 41.814594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363018, 34.844707, 42.038525>,  <41.038757, 34.971909, 41.933701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363018, 34.844707, 42.038525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514065, 34.474827, 42.057793>,  <40.604694, 34.252899, 42.069355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514065, 34.474827, 42.057793>,  <40.363018, 34.844707, 42.038525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514065, 34.474827, 42.057793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545462, -0.180110, 0.818555,
		-0.748247, -0.335378, -0.572406,
		0.377621, -0.924706, 0.048169,
		40.627350, 34.197414, 42.072243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808746, 34.361099, 42.096737>,  <40.363018, 34.844707, 42.038525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808746, 34.361099, 42.096737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133373, 34.181561, 42.246349>,  <40.328148, 34.073837, 42.336117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133373, 34.181561, 42.246349>,  <39.808746, 34.361099, 42.096737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133373, 34.181561, 42.246349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441457, -0.051730, 0.895790,
		-0.382721, -0.892112, -0.240127,
		0.811567, -0.448844, 0.374031,
		40.376842, 34.046906, 42.358559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545113, 33.824760, 42.474426>,  <39.808746, 34.361099, 42.096737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545113, 33.824760, 42.474426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916832, 33.875618, 42.613125>,  <40.139866, 33.906132, 42.696342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916832, 33.875618, 42.613125>,  <39.545113, 33.824760, 42.474426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916832, 33.875618, 42.613125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345392, -0.033243, 0.937869,
		0.130776, -0.991326, 0.013024,
		0.929302, 0.127149, 0.346744,
		40.195621, 33.913761, 42.717148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579865, 33.318699, 43.017475>,  <39.545113, 33.824760, 42.474426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579865, 33.318699, 43.017475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861820, 33.595478, 43.079872>,  <40.030994, 33.761547, 43.117310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861820, 33.595478, 43.079872>,  <39.579865, 33.318699, 43.017475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861820, 33.595478, 43.079872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264641, 0.052510, 0.962916,
		0.658097, -0.720035, 0.220132,
		0.704893, 0.691948, 0.155994,
		40.073288, 33.803062, 43.126671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450916, 32.690052, 43.370125>,  <39.579865, 33.318699, 43.017475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450916, 32.690052, 43.370125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160229, 32.427666, 43.451691>,  <38.985817, 32.270233, 43.500629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160229, 32.427666, 43.451691>,  <39.450916, 32.690052, 43.370125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160229, 32.427666, 43.451691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348360, -0.607772, -0.713623,
		0.592049, -0.447569, 0.670194,
		-0.726721, -0.655969, 0.203916,
		38.942211, 32.230873, 43.512867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618523, 32.012970, 43.301453>,  <39.450916, 32.690052, 43.370125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618523, 32.012970, 43.301453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227940, 31.969349, 43.227009>,  <38.993591, 31.943176, 43.182343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227940, 31.969349, 43.227009>,  <39.618523, 32.012970, 43.301453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227940, 31.969349, 43.227009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213700, -0.371619, -0.903455,
		0.029360, -0.921958, 0.386175,
		-0.976458, -0.109051, -0.186112,
		38.935001, 31.936634, 43.171177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568939, 31.293478, 42.946430>,  <39.618523, 32.012970, 43.301453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568939, 31.293478, 42.946430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255917, 31.530825, 42.871040>,  <39.068104, 31.673233, 42.825806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255917, 31.530825, 42.871040>,  <39.568939, 31.293478, 42.946430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255917, 31.530825, 42.871040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048020, -0.244306, -0.968509,
		-0.620728, -0.766962, 0.162689,
		-0.782554, 0.593367, -0.188477,
		39.021149, 31.708836, 42.814499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201408, 30.901236, 42.485626>,  <39.568939, 31.293478, 42.946430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201408, 30.901236, 42.485626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092670, 31.280680, 42.420834>,  <39.027428, 31.508347, 42.381958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092670, 31.280680, 42.420834>,  <39.201408, 30.901236, 42.485626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092670, 31.280680, 42.420834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011684, -0.165056, -0.986215,
		-0.962271, -0.269988, 0.033786,
		-0.271843, 0.948611, -0.161983,
		39.011116, 31.565264, 42.372238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672764, 30.857937, 42.036575>,  <39.201408, 30.901236, 42.485626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672764, 30.857937, 42.036575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815605, 31.228472, 41.988617>,  <38.901310, 31.450792, 41.959843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815605, 31.228472, 41.988617>,  <38.672764, 30.857937, 42.036575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815605, 31.228472, 41.988617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034281, -0.115276, -0.992742,
		-0.933436, 0.358620, -0.009409,
		0.357101, 0.926339, -0.119897,
		38.922737, 31.506372, 41.952648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259632, 31.126184, 41.423721>,  <38.672764, 30.857937, 42.036575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259632, 31.126184, 41.423721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597942, 31.333536, 41.474228>,  <38.800930, 31.457947, 41.504532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597942, 31.333536, 41.474228>,  <38.259632, 31.126184, 41.423721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597942, 31.333536, 41.474228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172030, -0.040932, -0.984241,
		-0.505043, 0.854170, -0.123796,
		0.845776, 0.518380, 0.126271,
		38.851677, 31.489050, 41.512108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241955, 31.567139, 40.893524>,  <38.259632, 31.126184, 41.423721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241955, 31.567139, 40.893524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618923, 31.616982, 41.017666>,  <38.845104, 31.646887, 41.092152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618923, 31.616982, 41.017666>,  <38.241955, 31.567139, 40.893524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618923, 31.616982, 41.017666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290686, 0.153671, -0.944398,
		-0.165373, 0.980234, 0.108600,
		0.942419, 0.124609, 0.310353,
		38.901649, 31.654364, 41.110771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486870, 32.330364, 40.615479>,  <38.241955, 31.567139, 40.893524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486870, 32.330364, 40.615479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797039, 32.083218, 40.667564>,  <38.983139, 31.934929, 40.698814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797039, 32.083218, 40.667564>,  <38.486870, 32.330364, 40.615479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797039, 32.083218, 40.667564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271839, 0.140522, -0.952028,
		0.569930, 0.773623, 0.276924,
		0.775425, -0.617868, 0.130213,
		39.029667, 31.897858, 40.706627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008869, 32.661999, 40.397343>,  <38.486870, 32.330364, 40.615479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008869, 32.661999, 40.397343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145802, 32.286243, 40.389847>,  <39.227962, 32.060791, 40.385349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145802, 32.286243, 40.389847>,  <39.008869, 32.661999, 40.397343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145802, 32.286243, 40.389847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389529, 0.160044, -0.907002,
		0.855030, 0.303196, 0.420708,
		0.342332, -0.939392, -0.018739,
		39.248501, 32.004425, 40.384224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616425, 32.651180, 40.010590>,  <39.008869, 32.661999, 40.397343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616425, 32.651180, 40.010590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539734, 32.258694, 40.001995>,  <39.493721, 32.023201, 39.996838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539734, 32.258694, 40.001995>,  <39.616425, 32.651180, 40.010590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539734, 32.258694, 40.001995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504154, -0.079680, -0.859930,
		0.842063, -0.175704, 0.509959,
		-0.191726, -0.981213, -0.021486,
		39.482216, 31.964331, 39.995548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232773, 32.369888, 39.802486>,  <39.616425, 32.651180, 40.010590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232773, 32.369888, 39.802486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963135, 32.080692, 39.741966>,  <39.801353, 31.907175, 39.705654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963135, 32.080692, 39.741966>,  <40.232773, 32.369888, 39.802486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963135, 32.080692, 39.741966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401728, -0.186955, -0.896472,
		0.619851, -0.665085, 0.416469,
		-0.674091, -0.722986, -0.151300,
		39.760906, 31.863796, 39.696575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621700, 31.811325, 39.652340>,  <40.232773, 32.369888, 39.802486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621700, 31.811325, 39.652340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261261, 31.753752, 39.488731>,  <40.044998, 31.719208, 39.390568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261261, 31.753752, 39.488731>,  <40.621700, 31.811325, 39.652340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261261, 31.753752, 39.488731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430877, -0.191496, -0.881859,
		0.048604, -0.970882, 0.234575,
		-0.901101, -0.143935, -0.409023,
		39.990932, 31.710571, 39.366024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.499901, 32.981953, 47.271168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.156830, 33.054668, 47.078777>,  <37.950985, 33.098297, 46.963345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.156830, 33.054668, 47.078777>,  <38.499901, 32.981953, 47.271168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156830, 33.054668, 47.078777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309011, -0.565417, -0.764733,
		-0.410972, -0.804523, 0.428772,
		-0.857680, 0.181788, -0.480977,
		37.899525, 33.109203, 46.934483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373634, 32.407932, 47.068928>,  <38.499901, 32.981953, 47.271168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373634, 32.407932, 47.068928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.179073, 32.668446, 46.835949>,  <38.062336, 32.824753, 46.696163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.179073, 32.668446, 46.835949>,  <38.373634, 32.407932, 47.068928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179073, 32.668446, 46.835949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303084, -0.499457, -0.811593,
		-0.819484, -0.571290, 0.045543,
		-0.486402, 0.651284, -0.582446,
		38.033154, 32.863831, 46.661217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216805, 32.056091, 46.501663>,  <38.373634, 32.407932, 47.068928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216805, 32.056091, 46.501663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.113430, 32.409294, 46.344944>,  <38.051407, 32.621216, 46.250912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.113430, 32.409294, 46.344944>,  <38.216805, 32.056091, 46.501663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113430, 32.409294, 46.344944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260228, -0.326951, -0.908507,
		-0.930318, -0.336748, -0.145288,
		-0.258436, 0.883009, -0.391799,
		38.035900, 32.674198, 46.227406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785469, 31.953920, 45.879997>,  <38.216805, 32.056091, 46.501663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785469, 31.953920, 45.879997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.929218, 32.322628, 45.821762>,  <38.015469, 32.543854, 45.786823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.929218, 32.322628, 45.821762>,  <37.785469, 31.953920, 45.879997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929218, 32.322628, 45.821762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163888, -0.215921, -0.962558,
		-0.918690, 0.322059, -0.228663,
		0.359373, 0.921768, -0.145583,
		38.037029, 32.599159, 45.778088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389561, 32.293587, 45.308365>,  <37.785469, 31.953920, 45.879997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389561, 32.293587, 45.308365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.750271, 32.459755, 45.356071>,  <37.966698, 32.559456, 45.384697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.750271, 32.459755, 45.356071>,  <37.389561, 32.293587, 45.308365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750271, 32.459755, 45.356071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190007, -0.133190, -0.972706,
		-0.388196, 0.899826, -0.199040,
		0.901776, 0.415420, 0.119270,
		38.020805, 32.584381, 45.391853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401485, 32.706326, 44.743179>,  <37.389561, 32.293587, 45.308365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401485, 32.706326, 44.743179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.785027, 32.672466, 44.851570>,  <38.015152, 32.652149, 44.916607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.785027, 32.672466, 44.851570>,  <37.401485, 32.706326, 44.743179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785027, 32.672466, 44.851570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230792, -0.323418, -0.917680,
		0.165324, 0.942462, -0.290574,
		0.958855, -0.084652, 0.270981,
		38.072681, 32.647072, 44.932865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717072, 33.133797, 44.282654>,  <37.401485, 32.706326, 44.743179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717072, 33.133797, 44.282654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.991348, 32.872391, 44.410873>,  <38.155914, 32.715549, 44.487804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.991348, 32.872391, 44.410873>,  <37.717072, 33.133797, 44.282654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991348, 32.872391, 44.410873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290635, -0.157940, -0.943709,
		0.667352, 0.740255, 0.081635,
		0.685692, -0.653512, 0.320546,
		38.197056, 32.676338, 44.507038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393021, 33.301754, 43.959560>,  <37.717072, 33.133797, 44.282654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393021, 33.301754, 43.959560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.399303, 32.913574, 44.055878>,  <38.403072, 32.680668, 44.113667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.399303, 32.913574, 44.055878>,  <38.393021, 33.301754, 43.959560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399303, 32.913574, 44.055878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491515, -0.202224, -0.847065,
		0.870728, 0.131659, 0.473814,
		0.015708, -0.970449, 0.240795,
		38.404015, 32.622440, 44.128117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100723, 33.045334, 43.912151>,  <38.393021, 33.301754, 43.959560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100723, 33.045334, 43.912151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.890171, 32.707771, 43.870682>,  <38.763840, 32.505234, 43.845798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.890171, 32.707771, 43.870682>,  <39.100723, 33.045334, 43.912151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890171, 32.707771, 43.870682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553453, -0.247513, -0.795253,
		0.645456, -0.475987, 0.597347,
		-0.526381, -0.843904, -0.103678,
		38.732258, 32.454601, 43.839577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794342, 33.241947, 43.789246>,  <39.100723, 33.045334, 43.912151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794342, 33.241947, 43.789246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.905621, 33.613609, 43.691853>,  <39.972385, 33.836605, 43.633419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.905621, 33.613609, 43.691853>,  <39.794342, 33.241947, 43.789246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905621, 33.613609, 43.691853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257883, 0.316428, 0.912891,
		0.925260, -0.191170, 0.327641,
		0.278192, 0.929155, -0.243478,
		39.989079, 33.892357, 43.618809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007126, 33.449020, 44.488132>,  <39.794342, 33.241947, 43.789246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007126, 33.449020, 44.488132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.973366, 33.780548, 44.266888>,  <39.953110, 33.979465, 44.134140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.973366, 33.780548, 44.266888>,  <40.007126, 33.449020, 44.488132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973366, 33.780548, 44.266888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233591, 0.523163, 0.819595,
		0.968665, 0.198377, 0.149449,
		-0.084403, 0.828823, -0.553109,
		39.948044, 34.029194, 44.100956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420837, 34.043045, 44.786011>,  <40.007126, 33.449020, 44.488132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420837, 34.043045, 44.786011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.131699, 34.200001, 44.558495>,  <39.958214, 34.294174, 44.421986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.131699, 34.200001, 44.558495>,  <40.420837, 34.043045, 44.786011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131699, 34.200001, 44.558495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277318, 0.589208, 0.758900,
		0.632920, 0.706304, -0.317090,
		-0.722846, 0.392388, -0.568793,
		39.914845, 34.317719, 44.387856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621559, 34.688808, 44.702347>,  <40.420837, 34.043045, 44.786011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621559, 34.688808, 44.702347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.224091, 34.680058, 44.658260>,  <39.985611, 34.674805, 44.631809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.224091, 34.680058, 44.658260>,  <40.621559, 34.688808, 44.702347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224091, 34.680058, 44.658260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097411, 0.656657, 0.747872,
		0.056009, 0.753872, -0.654630,
		-0.993667, -0.021880, -0.110214,
		39.925991, 34.673492, 44.625195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395622, 35.380714, 44.790054>,  <40.621559, 34.688808, 44.702347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395622, 35.380714, 44.790054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.068192, 35.158302, 44.847691>,  <39.871731, 35.024857, 44.882271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.068192, 35.158302, 44.847691>,  <40.395622, 35.380714, 44.790054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068192, 35.158302, 44.847691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375384, 0.707737, 0.598494,
		-0.434757, 0.435826, -0.788062,
		-0.818580, -0.556026, 0.144091,
		39.822617, 34.991493, 44.890919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846573, 35.765369, 44.581161>,  <40.395622, 35.380714, 44.790054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846573, 35.765369, 44.581161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725601, 35.508209, 44.862652>,  <39.653019, 35.353912, 45.031544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725601, 35.508209, 44.862652>,  <39.846573, 35.765369, 44.581161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725601, 35.508209, 44.862652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186846, 0.763955, 0.617626,
		-0.934680, 0.055298, -0.351162,
		-0.302425, -0.642896, 0.703721,
		39.634872, 35.315342, 45.073769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206841, 36.032490, 44.888222>,  <39.846573, 35.765369, 44.581161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206841, 36.032490, 44.888222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.345654, 35.754143, 45.139725>,  <39.428940, 35.587135, 45.290627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.345654, 35.754143, 45.139725>,  <39.206841, 36.032490, 44.888222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345654, 35.754143, 45.139725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214938, 0.593563, 0.775554,
		-0.912891, -0.404286, 0.056417,
		0.347032, -0.695870, 0.628755,
		39.449764, 35.545383, 45.328350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739086, 36.154236, 45.414566>,  <39.206841, 36.032490, 44.888222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739086, 36.154236, 45.414566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.987186, 35.901962, 45.601128>,  <39.136047, 35.750599, 45.713062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.987186, 35.901962, 45.601128>,  <38.739086, 36.154236, 45.414566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987186, 35.901962, 45.601128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145285, 0.491934, 0.858425,
		-0.770835, -0.600196, 0.213491,
		0.620246, -0.630687, 0.466399,
		39.173260, 35.712757, 45.741047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400040, 36.046661, 46.083080>,  <38.739086, 36.154236, 45.414566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400040, 36.046661, 46.083080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.773338, 35.916771, 46.144527>,  <38.997318, 35.838837, 46.181396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.773338, 35.916771, 46.144527>,  <38.400040, 36.046661, 46.083080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773338, 35.916771, 46.144527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012304, 0.456275, 0.889754,
		-0.359020, -0.828472, 0.429813,
		0.933249, -0.324728, 0.153619,
		39.053314, 35.819351, 46.190613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397034, 35.837589, 46.804413>,  <38.400040, 36.046661, 46.083080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397034, 35.837589, 46.804413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.772606, 35.918827, 46.693298>,  <38.997948, 35.967567, 46.626629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.772606, 35.918827, 46.693298>,  <38.397034, 35.837589, 46.804413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772606, 35.918827, 46.693298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058972, 0.700346, 0.711364,
		0.339014, -0.684303, 0.645600,
		0.938931, 0.203090, -0.277782,
		39.054287, 35.979755, 46.609962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712437, 35.683834, 47.418823>,  <38.397034, 35.837589, 46.804413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712437, 35.683834, 47.418823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.919064, 35.915901, 47.166931>,  <39.043041, 36.055141, 47.015797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.919064, 35.915901, 47.166931>,  <38.712437, 35.683834, 47.418823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919064, 35.915901, 47.166931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005370, 0.733248, 0.679940,
		0.856230, -0.354616, 0.375656,
		0.516567, 0.580168, -0.629734,
		39.074036, 36.089951, 46.978012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332924, 35.752716, 47.711090>,  <38.712437, 35.683834, 47.418823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332924, 35.752716, 47.711090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.257843, 36.072788, 47.483234>,  <39.212795, 36.264832, 47.346523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.257843, 36.072788, 47.483234>,  <39.332924, 35.752716, 47.711090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257843, 36.072788, 47.483234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196286, 0.598803, 0.776471,
		0.962413, 0.033934, -0.269461,
		-0.187702, 0.800178, -0.569635,
		39.201534, 36.312843, 47.312344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885391, 36.251938, 47.814297>,  <39.332924, 35.752716, 47.711090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885391, 36.251938, 47.814297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.631580, 36.506695, 47.639141>,  <39.479294, 36.659550, 47.534050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.631580, 36.506695, 47.639141>,  <39.885391, 36.251938, 47.814297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631580, 36.506695, 47.639141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238123, 0.700079, 0.673192,
		0.735307, 0.322886, -0.595876,
		-0.634525, 0.636894, -0.437886,
		39.441223, 36.697762, 47.507774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230663, 36.939735, 47.714474>,  <39.885391, 36.251938, 47.814297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230663, 36.939735, 47.714474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.836510, 37.007858, 47.712685>,  <39.600018, 37.048733, 47.711609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.836510, 37.007858, 47.712685>,  <40.230663, 36.939735, 47.714474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836510, 37.007858, 47.712685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125431, 0.743017, 0.657413,
		0.115288, 0.647241, -0.753517,
		-0.985381, 0.170306, -0.004476,
		39.540894, 37.058949, 47.711342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.389481, 38.867329, 45.671894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.674747, 38.676559, 45.877396>,  <32.845905, 38.562099, 46.000698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.674747, 38.676559, 45.877396>,  <32.389481, 38.867329, 45.671894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674747, 38.676559, 45.877396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425396, -0.288080, -0.857933,
		0.557170, 0.830395, -0.002568,
		0.713162, -0.476922, 0.513756,
		32.888695, 38.533482, 46.031521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000946, 39.160183, 45.347931>,  <32.389481, 38.867329, 45.671894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000946, 39.160183, 45.347931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.063423, 38.812870, 45.536263>,  <33.100910, 38.604481, 45.649261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.063423, 38.812870, 45.536263>,  <33.000946, 39.160183, 45.347931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063423, 38.812870, 45.536263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298307, -0.412956, -0.860512,
		0.941603, 0.274857, 0.194516,
		0.156191, -0.868286, 0.470832,
		33.110279, 38.552383, 45.677513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792000, 38.870872, 45.179436>,  <33.000946, 39.160183, 45.347931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792000, 38.870872, 45.179436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.584568, 38.551060, 45.300640>,  <33.460110, 38.359173, 45.373363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.584568, 38.551060, 45.300640>,  <33.792000, 38.870872, 45.179436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584568, 38.551060, 45.300640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200110, -0.458037, -0.866117,
		0.831280, -0.388519, 0.397525,
		-0.518584, -0.799534, 0.303011,
		33.428993, 38.311199, 45.391544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174026, 38.336060, 45.081635>,  <33.792000, 38.870872, 45.179436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174026, 38.336060, 45.081635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.843433, 38.111900, 45.103138>,  <33.645077, 37.977406, 45.116039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.843433, 38.111900, 45.103138>,  <34.174026, 38.336060, 45.081635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843433, 38.111900, 45.103138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332889, -0.563480, -0.756092,
		0.453999, -0.607000, 0.652254,
		-0.826480, -0.560393, 0.053756,
		33.595490, 37.943783, 45.119267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460186, 37.782627, 44.836994>,  <34.174026, 38.336060, 45.081635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460186, 37.782627, 44.836994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.068745, 37.700478, 44.842052>,  <33.833881, 37.651188, 44.845085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.068745, 37.700478, 44.842052>,  <34.460186, 37.782627, 44.836994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068745, 37.700478, 44.842052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098820, -0.522991, -0.846590,
		0.180481, -0.827225, 0.532095,
		-0.978602, -0.205375, 0.012643,
		33.775166, 37.638866, 44.845844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422321, 37.052441, 44.971397>,  <34.460186, 37.782627, 44.836994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422321, 37.052441, 44.971397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116982, 37.180382, 44.746899>,  <33.933777, 37.257145, 44.612198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116982, 37.180382, 44.746899>,  <34.422321, 37.052441, 44.971397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116982, 37.180382, 44.746899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362715, -0.506717, -0.782097,
		-0.534545, -0.800584, 0.270788,
		-0.763347, 0.319847, -0.561247,
		33.887978, 37.276337, 44.578526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256485, 36.479458, 44.628712>,  <34.422321, 37.052441, 44.971397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256485, 36.479458, 44.628712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.082005, 36.757694, 44.400368>,  <33.977314, 36.924637, 44.263363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.082005, 36.757694, 44.400368>,  <34.256485, 36.479458, 44.628712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082005, 36.757694, 44.400368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491669, -0.347084, -0.798620,
		-0.753650, -0.629032, -0.190603,
		-0.436203, 0.695594, -0.570856,
		33.951145, 36.966373, 44.229111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995094, 36.152367, 44.003094>,  <34.256485, 36.479458, 44.628712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995094, 36.152367, 44.003094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035931, 36.537819, 43.904305>,  <34.060432, 36.769089, 43.845032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035931, 36.537819, 43.904305>,  <33.995094, 36.152367, 44.003094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035931, 36.537819, 43.904305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518043, -0.263453, -0.813772,
		-0.849240, -0.044865, -0.526097,
		0.102092, 0.963628, -0.246976,
		34.066559, 36.826908, 43.830212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726906, 36.268120, 43.307976>,  <33.995094, 36.152367, 44.003094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726906, 36.268120, 43.307976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.970284, 36.583359, 43.345280>,  <34.116310, 36.772503, 43.367661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.970284, 36.583359, 43.345280>,  <33.726906, 36.268120, 43.307976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970284, 36.583359, 43.345280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250908, -0.079552, -0.964737,
		-0.752887, 0.610390, -0.246143,
		0.608446, 0.788096, 0.093258,
		34.152817, 36.819786, 43.373257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481056, 36.829998, 42.878792>,  <33.726906, 36.268120, 43.307976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481056, 36.829998, 42.878792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.876354, 36.866100, 42.928165>,  <34.113533, 36.887760, 42.957790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.876354, 36.866100, 42.928165>,  <33.481056, 36.829998, 42.878792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876354, 36.866100, 42.928165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119869, 0.043879, -0.991820,
		-0.094930, 0.994952, 0.032545,
		0.988241, 0.090253, 0.123430,
		34.172825, 36.893177, 42.965195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751026, 37.129646, 42.262054>,  <33.481056, 36.829998, 42.878792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751026, 37.129646, 42.262054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110897, 37.038795, 42.411182>,  <34.326820, 36.984287, 42.500660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110897, 37.038795, 42.411182>,  <33.751026, 37.129646, 42.262054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110897, 37.038795, 42.411182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362067, -0.088940, -0.927899,
		0.243907, 0.969796, 0.002217,
		0.899676, -0.227124, 0.372824,
		34.380798, 36.970657, 42.523029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189705, 37.586281, 42.033199>,  <33.751026, 37.129646, 42.262054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189705, 37.586281, 42.033199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.418198, 37.276386, 42.141632>,  <34.555294, 37.090450, 42.206692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.418198, 37.276386, 42.141632>,  <34.189705, 37.586281, 42.033199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418198, 37.276386, 42.141632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474435, 0.042150, -0.879281,
		0.669784, 0.630879, 0.391639,
		0.571227, -0.774736, 0.271080,
		34.589565, 37.043964, 42.222958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877121, 37.562614, 41.776791>,  <34.189705, 37.586281, 42.033199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877121, 37.562614, 41.776791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.860199, 37.169029, 41.846100>,  <34.850044, 36.932877, 41.887684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.860199, 37.169029, 41.846100>,  <34.877121, 37.562614, 41.776791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860199, 37.169029, 41.846100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520678, -0.169729, -0.836712,
		0.852704, 0.054823, 0.519509,
		-0.042305, -0.983965, 0.173274,
		34.847507, 36.873840, 41.898083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477833, 37.407818, 41.472431>,  <34.877121, 37.562614, 41.776791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477833, 37.407818, 41.472431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.252254, 37.079975, 41.512848>,  <35.116905, 36.883270, 41.537098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.252254, 37.079975, 41.512848>,  <35.477833, 37.407818, 41.472431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252254, 37.079975, 41.512848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429057, -0.395352, -0.812162,
		0.705599, -0.414665, 0.574616,
		-0.563950, -0.819604, 0.101045,
		35.083069, 36.834095, 41.543163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252556, 37.360443, 41.477581>,  <35.477833, 37.407818, 41.472431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252556, 37.360443, 41.477581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.454617, 37.692669, 41.383789>,  <36.575851, 37.892006, 41.327515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.454617, 37.692669, 41.383789>,  <36.252556, 37.360443, 41.477581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454617, 37.692669, 41.383789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157626, 0.355915, 0.921129,
		0.848514, -0.428349, 0.310710,
		0.505151, 0.830567, -0.234480,
		36.606163, 37.941837, 41.313446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766159, 37.511570, 42.035473>,  <36.252556, 37.360443, 41.477581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766159, 37.511570, 42.035473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.676289, 37.863632, 41.868214>,  <36.622368, 38.074871, 41.767857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.676289, 37.863632, 41.868214>,  <36.766159, 37.511570, 42.035473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676289, 37.863632, 41.868214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171150, 0.386807, 0.906139,
		0.959286, 0.275153, 0.063733,
		-0.224674, 0.880154, -0.418151,
		36.608887, 38.127678, 41.742767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733555, 37.945599, 42.644363>,  <36.766159, 37.511570, 42.035473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733555, 37.945599, 42.644363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.637936, 38.210381, 42.360203>,  <36.580566, 38.369251, 42.189705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.637936, 38.210381, 42.360203>,  <36.733555, 37.945599, 42.644363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637936, 38.210381, 42.360203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323120, 0.635686, 0.701068,
		0.915670, 0.397131, 0.061935,
		-0.239045, 0.661959, -0.710400,
		36.566223, 38.408970, 42.147083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188171, 38.681366, 42.724648>,  <36.733555, 37.945599, 42.644363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188171, 38.681366, 42.724648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824360, 38.685047, 42.558430>,  <36.606071, 38.687256, 42.458698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824360, 38.685047, 42.558430>,  <37.188171, 38.681366, 42.724648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824360, 38.685047, 42.558430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332943, 0.582355, 0.741628,
		0.248815, 0.812883, -0.526605,
		-0.909527, 0.009198, -0.415542,
		36.551502, 38.687805, 42.433765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938519, 39.372353, 42.898262>,  <37.188171, 38.681366, 42.724648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938519, 39.372353, 42.898262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.622124, 39.161434, 42.774139>,  <36.432285, 39.034882, 42.699665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.622124, 39.161434, 42.774139>,  <36.938519, 39.372353, 42.898262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622124, 39.161434, 42.774139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560320, 0.420623, 0.713525,
		-0.245720, 0.738262, -0.628165,
		-0.790989, -0.527301, -0.310307,
		36.384827, 39.003242, 42.681046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403278, 39.831837, 42.771782>,  <36.938519, 39.372353, 42.898262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403278, 39.831837, 42.771782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269058, 39.467083, 42.866325>,  <36.188526, 39.248230, 42.923050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269058, 39.467083, 42.866325>,  <36.403278, 39.831837, 42.771782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269058, 39.467083, 42.866325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535955, 0.391140, 0.748172,
		-0.774697, 0.124376, -0.619980,
		-0.335554, -0.911888, 0.236355,
		36.168392, 39.193516, 42.937233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723755, 39.957634, 42.926651>,  <36.403278, 39.831837, 42.771782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723755, 39.957634, 42.926651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.794548, 39.599266, 43.089630>,  <35.837025, 39.384247, 43.187416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.794548, 39.599266, 43.089630>,  <35.723755, 39.957634, 42.926651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794548, 39.599266, 43.089630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310045, 0.342151, 0.887020,
		-0.934103, -0.283317, -0.217218,
		0.176986, -0.895916, 0.407445,
		35.847645, 39.330490, 43.211864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167572, 39.753082, 43.377331>,  <35.723755, 39.957634, 42.926651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167572, 39.753082, 43.377331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.450008, 39.508678, 43.520500>,  <35.619469, 39.362038, 43.606403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.450008, 39.508678, 43.520500>,  <35.167572, 39.753082, 43.377331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450008, 39.508678, 43.520500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342603, 0.147590, 0.927815,
		-0.619726, -0.777746, -0.105121,
		0.706090, -0.611005, 0.357924,
		35.661835, 39.325378, 43.627876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899242, 39.369244, 43.850971>,  <35.167572, 39.753082, 43.377331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899242, 39.369244, 43.850971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278873, 39.314594, 43.964520>,  <35.506653, 39.281807, 44.032650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278873, 39.314594, 43.964520>,  <34.899242, 39.369244, 43.850971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278873, 39.314594, 43.964520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264559, 0.143609, 0.953617,
		-0.171049, -0.980159, 0.100152,
		0.949079, -0.136619, 0.283874,
		35.563599, 39.273609, 44.049683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797821, 39.031849, 44.515652>,  <34.899242, 39.369244, 43.850971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797821, 39.031849, 44.515652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.176514, 39.160183, 44.504559>,  <35.403728, 39.237183, 44.497902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.176514, 39.160183, 44.504559>,  <34.797821, 39.031849, 44.515652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176514, 39.160183, 44.504559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074817, 0.302897, 0.950082,
		0.313251, -0.897385, 0.310765,
		0.946719, 0.320865, -0.027743,
		35.460533, 39.256435, 44.496239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152946, 38.718601, 45.095524>,  <34.797821, 39.031849, 44.515652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152946, 38.718601, 45.095524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.342632, 39.055313, 44.992352>,  <35.456444, 39.257339, 44.930447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.342632, 39.055313, 44.992352>,  <35.152946, 38.718601, 45.095524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342632, 39.055313, 44.992352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008230, 0.288719, 0.957379,
		0.880370, -0.456127, 0.129987,
		0.474216, 0.841778, -0.257934,
		35.484898, 39.307846, 44.914970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661671, 38.804516, 45.530800>,  <35.152946, 38.718601, 45.095524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661671, 38.804516, 45.530800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.608360, 39.177349, 45.396065>,  <35.576374, 39.401051, 45.315224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.608360, 39.177349, 45.396065>,  <35.661671, 38.804516, 45.530800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608360, 39.177349, 45.396065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150466, 0.354957, 0.922695,
		0.979590, 0.072291, -0.187554,
		-0.133276, 0.932083, -0.336835,
		35.568378, 39.456974, 45.295013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130970, 39.191059, 45.870857>,  <35.661671, 38.804516, 45.530800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130970, 39.191059, 45.870857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.840260, 39.444771, 45.765419>,  <35.665833, 39.596996, 45.702156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.840260, 39.444771, 45.765419>,  <36.130970, 39.191059, 45.870857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840260, 39.444771, 45.765419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006160, 0.389762, 0.920895,
		0.686844, 0.667663, -0.287178,
		-0.726779, 0.634280, -0.263593,
		35.622227, 39.635056, 45.686340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402634, 39.887070, 46.143318>,  <36.130970, 39.191059, 45.870857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402634, 39.887070, 46.143318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.004913, 39.883747, 46.100800>,  <35.766281, 39.881756, 46.075291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.004913, 39.883747, 46.100800>,  <36.402634, 39.887070, 46.143318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004913, 39.883747, 46.100800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093973, 0.539184, 0.836929,
		0.050363, 0.842147, -0.536891,
		-0.994300, -0.008303, -0.106295,
		35.706623, 39.881256, 46.068913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012375, 40.308117, 46.086514>,  <36.402634, 39.887070, 46.143318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012375, 40.308117, 46.086514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.325966, 40.171341, 46.293762>,  <37.514122, 40.089275, 46.418110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.325966, 40.171341, 46.293762>,  <37.012375, 40.308117, 46.086514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325966, 40.171341, 46.293762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404520, -0.351706, -0.844196,
		0.470888, 0.871426, -0.137411,
		0.783982, -0.341936, 0.518123,
		37.561161, 40.068760, 46.449200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629646, 40.551495, 45.722401>,  <37.012375, 40.308117, 46.086514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629646, 40.551495, 45.722401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768753, 40.242416, 45.934818>,  <37.852215, 40.056969, 46.062267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768753, 40.242416, 45.934818>,  <37.629646, 40.551495, 45.722401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768753, 40.242416, 45.934818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603811, -0.248727, -0.757329,
		0.717267, 0.584020, 0.380063,
		0.347764, -0.772693, 0.531042,
		37.873081, 40.010609, 46.094131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360992, 40.526028, 45.658180>,  <37.629646, 40.551495, 45.722401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360992, 40.526028, 45.658180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.284649, 40.149204, 45.768520>,  <38.238842, 39.923111, 45.834724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.284649, 40.149204, 45.768520>,  <38.360992, 40.526028, 45.658180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284649, 40.149204, 45.768520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727073, -0.324476, -0.605045,
		0.659497, 0.085086, 0.746876,
		-0.190863, -0.942059, 0.275855,
		38.227390, 39.866585, 45.851276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991890, 40.193939, 45.615952>,  <38.360992, 40.526028, 45.658180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991890, 40.193939, 45.615952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.762390, 39.866333, 45.614166>,  <38.624691, 39.669769, 45.613094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.762390, 39.866333, 45.614166>,  <38.991890, 40.193939, 45.615952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762390, 39.866333, 45.614166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715652, -0.498677, -0.489043,
		0.398310, -0.283782, 0.872248,
		-0.573751, -0.819017, -0.004461,
		38.590263, 39.620628, 45.612827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400284, 39.499249, 45.769997>,  <38.991890, 40.193939, 45.615952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400284, 39.499249, 45.769997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.071899, 39.384342, 45.572617>,  <38.874866, 39.315399, 45.454189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.071899, 39.384342, 45.572617>,  <39.400284, 39.499249, 45.769997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071899, 39.384342, 45.572617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543858, -0.656608, -0.522575,
		-0.173886, -0.697384, 0.695284,
		-0.820964, -0.287267, -0.493453,
		38.825611, 39.298161, 45.424580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389832, 38.736084, 45.789608>,  <39.400284, 39.499249, 45.769997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389832, 38.736084, 45.789608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.153183, 38.847530, 45.486992>,  <39.011192, 38.914398, 45.305420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.153183, 38.847530, 45.486992>,  <39.389832, 38.736084, 45.789608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153183, 38.847530, 45.486992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370191, -0.739733, -0.561920,
		-0.716202, -0.612508, 0.334497,
		-0.591620, 0.278621, -0.756543,
		38.975697, 38.931114, 45.260029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548149, 38.206093, 45.445034>,  <39.389832, 38.736084, 45.789608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548149, 38.206093, 45.445034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.353233, 38.417377, 45.166885>,  <39.236286, 38.544147, 44.999996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.353233, 38.417377, 45.166885>,  <39.548149, 38.206093, 45.445034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353233, 38.417377, 45.166885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354480, -0.608103, -0.710320,
		-0.798058, -0.592625, 0.109080,
		-0.487286, 0.528210, -0.695375,
		39.207047, 38.575840, 44.958271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170258, 37.692589, 44.990124>,  <39.548149, 38.206093, 45.445034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170258, 37.692589, 44.990124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.226185, 38.028931, 44.780964>,  <39.259743, 38.230736, 44.655468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.226185, 38.028931, 44.780964>,  <39.170258, 37.692589, 44.990124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226185, 38.028931, 44.780964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275376, -0.540270, -0.795158,
		-0.951115, -0.032816, -0.307089,
		0.139817, 0.840852, -0.522895,
		39.268131, 38.281185, 44.624096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015709, 37.532780, 44.209579>,  <39.170258, 37.692589, 44.990124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015709, 37.532780, 44.209579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.223709, 37.873241, 44.180916>,  <39.348507, 38.077518, 44.163715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.223709, 37.873241, 44.180916>,  <39.015709, 37.532780, 44.209579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223709, 37.873241, 44.180916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253901, -0.234129, -0.938466,
		-0.815559, 0.469806, -0.337856,
		0.519998, 0.851156, -0.071662,
		39.379707, 38.128590, 44.159416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835182, 37.888325, 43.600891>,  <39.015709, 37.532780, 44.209579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835182, 37.888325, 43.600891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.204967, 38.019299, 43.679024>,  <39.426838, 38.097881, 43.725903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.204967, 38.019299, 43.679024>,  <38.835182, 37.888325, 43.600891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204967, 38.019299, 43.679024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202033, 0.013779, -0.979282,
		-0.323338, 0.944775, -0.053414,
		0.924465, 0.327430, 0.195331,
		39.482307, 38.117527, 43.737621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965889, 38.366802, 43.004459>,  <38.835182, 37.888325, 43.600891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965889, 38.366802, 43.004459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.329895, 38.286499, 43.149548>,  <39.548298, 38.238316, 43.236599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.329895, 38.286499, 43.149548>,  <38.965889, 38.366802, 43.004459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329895, 38.286499, 43.149548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362775, -0.037844, -0.931108,
		0.200657, 0.978909, 0.038392,
		0.910017, -0.200761, 0.362717,
		39.602901, 38.226273, 43.258362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353645, 38.888985, 42.801659>,  <38.965889, 38.366802, 43.004459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353645, 38.888985, 42.801659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.607853, 38.585598, 42.859409>,  <39.760376, 38.403564, 42.894058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.607853, 38.585598, 42.859409>,  <39.353645, 38.888985, 42.801659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607853, 38.585598, 42.859409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305769, 0.075537, -0.949105,
		0.708962, 0.647315, 0.279922,
		0.635514, -0.758470, 0.144376,
		39.798508, 38.358055, 42.902721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019566, 39.002151, 42.395054>,  <39.353645, 38.888985, 42.801659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019566, 39.002151, 42.395054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.062000, 38.617195, 42.495087>,  <40.087460, 38.386219, 42.555107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.062000, 38.617195, 42.495087>,  <40.019566, 39.002151, 42.395054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062000, 38.617195, 42.495087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454104, -0.176855, -0.873219,
		0.884610, 0.206200, 0.418266,
		0.106085, -0.962395, 0.250084,
		40.093826, 38.328476, 42.570110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694298, 38.777870, 42.289864>,  <40.019566, 39.002151, 42.395054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694298, 38.777870, 42.289864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.479645, 38.441208, 42.265686>,  <40.350853, 38.239212, 42.251179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.479645, 38.441208, 42.265686>,  <40.694298, 38.777870, 42.289864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479645, 38.441208, 42.265686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519558, -0.273120, -0.809608,
		0.664899, -0.465863, 0.583850,
		-0.536628, -0.841651, -0.060446,
		40.318657, 38.188713, 42.247551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.280611, 40.480381, 32.397278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.294899, 40.198166, 32.114170>,  <25.303473, 40.028835, 31.944305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.294899, 40.198166, 32.114170>,  <25.280611, 40.480381, 32.397278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.294899, 40.198166, 32.114170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123352, -0.705920, 0.697468,
		-0.991720, 0.062391, -0.112245,
		0.035720, -0.705539, -0.707771,
		25.305614, 39.986504, 31.901838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.837294, 39.976299, 32.569965>,  <25.280611, 40.480381, 32.397278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.837294, 39.976299, 32.569965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.135897, 39.817650, 32.356270>,  <25.315060, 39.722462, 32.228050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.135897, 39.817650, 32.356270>,  <24.837294, 39.976299, 32.569965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.135897, 39.817650, 32.356270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048223, -0.768557, 0.637961,
		-0.663624, -0.502008, -0.554610,
		0.746511, -0.396621, -0.534241,
		25.359850, 39.698662, 32.195995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.797611, 39.251423, 32.534420>,  <24.837294, 39.976299, 32.569965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.797611, 39.251423, 32.534420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.180635, 39.325233, 32.445850>,  <25.410450, 39.369522, 32.392708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.180635, 39.325233, 32.445850>,  <24.797611, 39.251423, 32.534420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.180635, 39.325233, 32.445850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269087, -0.847629, 0.457293,
		-0.103301, -0.497467, -0.861310,
		0.957560, 0.184529, -0.221423,
		25.467903, 39.380592, 32.379425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.999208, 38.612202, 32.404358>,  <24.797611, 39.251423, 32.534420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.999208, 38.612202, 32.404358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.353996, 38.784519, 32.470940>,  <25.566868, 38.887909, 32.510887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.353996, 38.784519, 32.470940>,  <24.999208, 38.612202, 32.404358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.353996, 38.784519, 32.470940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324733, -0.838026, 0.438476,
		0.328383, -0.334861, -0.883194,
		0.886969, 0.430790, 0.166453,
		25.620087, 38.913757, 32.520874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.453527, 38.138016, 32.232742>,  <24.999208, 38.612202, 32.404358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.453527, 38.138016, 32.232742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.685467, 38.364235, 32.467327>,  <25.824631, 38.499966, 32.608078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.685467, 38.364235, 32.467327>,  <25.453527, 38.138016, 32.232742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.685467, 38.364235, 32.467327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105951, -0.766059, 0.633978,
		0.807807, -0.305474, -0.504116,
		0.579846, 0.565544, 0.586463,
		25.859421, 38.533897, 32.643265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028011, 37.772041, 32.329479>,  <25.453527, 38.138016, 32.232742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028011, 37.772041, 32.329479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.044910, 38.036030, 32.629520>,  <26.055050, 38.194424, 32.809544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.044910, 38.036030, 32.629520>,  <26.028011, 37.772041, 32.329479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044910, 38.036030, 32.629520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221126, -0.738330, 0.637159,
		0.974330, 0.138950, -0.177129,
		0.042246, 0.659971, 0.750102,
		26.057585, 38.234020, 32.854549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599358, 37.524986, 32.746521>,  <26.028011, 37.772041, 32.329479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599358, 37.524986, 32.746521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.361950, 37.736248, 32.989433>,  <26.219505, 37.863007, 33.135181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.361950, 37.736248, 32.989433>,  <26.599358, 37.524986, 32.746521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361950, 37.736248, 32.989433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128977, -0.682381, 0.719528,
		0.794417, 0.505380, 0.336887,
		-0.593520, 0.528155, 0.607278,
		26.183893, 37.894695, 33.171616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032349, 37.679169, 33.386021>,  <26.599358, 37.524986, 32.746521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032349, 37.679169, 33.386021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.645168, 37.701599, 33.483940>,  <26.412859, 37.715057, 33.542690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.645168, 37.701599, 33.483940>,  <27.032349, 37.679169, 33.386021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645168, 37.701599, 33.483940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159948, -0.613825, 0.773069,
		0.193612, 0.787448, 0.585183,
		-0.967952, 0.056077, 0.244795,
		26.354782, 37.718422, 33.557377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102154, 37.837456, 34.068588>,  <27.032349, 37.679169, 33.386021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102154, 37.837456, 34.068588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.728018, 37.701550, 34.029190>,  <26.503536, 37.620007, 34.005550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.728018, 37.701550, 34.029190>,  <27.102154, 37.837456, 34.068588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728018, 37.701550, 34.029190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144816, -0.621787, 0.769681,
		-0.322755, 0.705648, 0.630784,
		-0.935338, -0.339767, -0.098496,
		26.447416, 37.599621, 33.999641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809933, 37.786976, 34.744095>,  <27.102154, 37.837456, 34.068588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809933, 37.786976, 34.744095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.580835, 37.547752, 34.519848>,  <26.443377, 37.404217, 34.385300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.580835, 37.547752, 34.519848>,  <26.809933, 37.786976, 34.744095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580835, 37.547752, 34.519848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103736, -0.731277, 0.674146,
		-0.813145, 0.327956, 0.480874,
		-0.572743, -0.598062, -0.560614,
		26.409012, 37.368332, 34.351665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409481, 37.465412, 35.190670>,  <26.809933, 37.786976, 34.744095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409481, 37.465412, 35.190670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.390743, 37.233200, 34.865513>,  <26.379501, 37.093872, 34.670418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.390743, 37.233200, 34.865513>,  <26.409481, 37.465412, 35.190670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390743, 37.233200, 34.865513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092997, -0.812785, 0.575093,
		-0.994564, -0.048657, 0.092061,
		-0.046844, -0.580528, -0.812891,
		26.376690, 37.059040, 34.621647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035812, 36.833241, 35.342361>,  <26.409481, 37.465412, 35.190670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035812, 36.833241, 35.342361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.257805, 36.716969, 35.030594>,  <26.391001, 36.647205, 34.843533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.257805, 36.716969, 35.030594>,  <26.035812, 36.833241, 35.342361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257805, 36.716969, 35.030594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258828, -0.830114, 0.493881,
		-0.790571, -0.475831, -0.385464,
		0.554983, -0.290679, -0.779423,
		26.424299, 36.629765, 34.796768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984486, 36.094311, 35.293415>,  <26.035812, 36.833241, 35.342361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.984486, 36.094311, 35.293415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.312231, 36.163609, 35.074825>,  <26.508879, 36.205189, 34.943672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.312231, 36.163609, 35.074825>,  <25.984486, 36.094311, 35.293415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312231, 36.163609, 35.074825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400005, -0.855617, 0.328505,
		-0.410658, -0.487756, -0.770360,
		0.819363, 0.173245, -0.546471,
		26.558041, 36.215584, 34.910885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161205, 35.471416, 35.029655>,  <25.984486, 36.094311, 35.293415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161205, 35.471416, 35.029655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.489090, 35.700428, 35.022923>,  <26.685822, 35.837833, 35.018883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.489090, 35.700428, 35.022923>,  <26.161205, 35.471416, 35.029655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489090, 35.700428, 35.022923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547310, -0.774264, 0.317753,
		0.168891, -0.269678, -0.948024,
		0.819712, 0.572529, -0.016831,
		26.735004, 35.872189, 35.017872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639124, 34.953560, 34.897533>,  <26.161205, 35.471416, 35.029655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639124, 34.953560, 34.897533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.843613, 35.272503, 35.025826>,  <26.966307, 35.463871, 35.102798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.843613, 35.272503, 35.025826>,  <26.639124, 34.953560, 34.897533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843613, 35.272503, 35.025826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645989, -0.602634, 0.468542,
		0.566877, -0.032344, -0.823167,
		0.511222, 0.797362, 0.320726,
		26.996979, 35.511711, 35.122044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355425, 34.849735, 34.796875>,  <26.639124, 34.953560, 34.897533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355425, 34.849735, 34.796875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.272579, 35.091782, 35.104366>,  <27.222872, 35.237011, 35.288860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.272579, 35.091782, 35.104366>,  <27.355425, 34.849735, 34.796875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.272579, 35.091782, 35.104366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532281, -0.589582, 0.607512,
		0.820841, 0.535002, -0.199981,
		-0.207115, 0.605117, 0.768724,
		27.210445, 35.273315, 35.334984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943439, 34.829014, 35.296951>,  <27.355425, 34.849735, 34.796875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943439, 34.829014, 35.296951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.645248, 34.976475, 35.519073>,  <27.466333, 35.064949, 35.652348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.645248, 34.976475, 35.519073>,  <27.943439, 34.829014, 35.296951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645248, 34.976475, 35.519073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387868, -0.437603, 0.811210,
		0.542055, 0.820122, 0.183235,
		-0.745476, 0.368650, 0.555304,
		27.421606, 35.087070, 35.685665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227253, 35.054123, 35.926720>,  <27.943439, 34.829014, 35.296951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227253, 35.054123, 35.926720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.861637, 34.891891, 35.928989>,  <27.642267, 34.794552, 35.930351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.861637, 34.891891, 35.928989>,  <28.227253, 35.054123, 35.926720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861637, 34.891891, 35.928989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275123, -0.609638, 0.743403,
		-0.298052, 0.681062, 0.668819,
		-0.914042, -0.405580, 0.005672,
		27.587425, 34.770218, 35.930691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993059, 35.023087, 36.098232>,  <28.227253, 35.054123, 35.926720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993059, 35.023087, 36.098232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.223545, 35.276413, 35.891586>,  <29.361835, 35.428410, 35.767597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.223545, 35.276413, 35.891586>,  <28.993059, 35.023087, 36.098232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223545, 35.276413, 35.891586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491244, 0.236808, 0.838213,
		0.653191, -0.736774, -0.174660,
		0.576212, 0.633314, -0.516617,
		29.396408, 35.466408, 35.736603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646887, 34.868263, 36.161598>,  <28.993059, 35.023087, 36.098232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646887, 34.868263, 36.161598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.655470, 35.265957, 36.119587>,  <29.660620, 35.504574, 36.094379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.655470, 35.265957, 36.119587>,  <29.646887, 34.868263, 36.161598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655470, 35.265957, 36.119587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398793, 0.087821, 0.912826,
		0.916790, -0.061471, -0.394611,
		0.021457, 0.994238, -0.105028,
		29.661907, 35.564228, 36.088078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645926, 34.544666, 35.382053>,  <29.646887, 34.868263, 36.161598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645926, 34.544666, 35.382053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.936037, 34.392719, 35.152386>,  <30.110104, 34.301552, 35.014584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.936037, 34.392719, 35.152386>,  <29.645926, 34.544666, 35.382053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936037, 34.392719, 35.152386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470892, 0.334676, -0.816243,
		0.502225, 0.862376, 0.063857,
		0.725280, -0.379868, -0.574168,
		30.153622, 34.278759, 34.980137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731798, 35.081158, 34.833668>,  <29.645926, 34.544666, 35.382053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731798, 35.081158, 34.833668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.883612, 34.738846, 34.693043>,  <29.974701, 34.533459, 34.608669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.883612, 34.738846, 34.693043>,  <29.731798, 35.081158, 34.833668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883612, 34.738846, 34.693043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468020, 0.150191, -0.870862,
		0.798066, 0.495061, -0.343519,
		0.379536, -0.855779, -0.351561,
		29.997473, 34.482113, 34.587574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025040, 35.292175, 34.123581>,  <29.731798, 35.081158, 34.833668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025040, 35.292175, 34.123581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.958403, 34.897812, 34.117577>,  <29.918421, 34.661194, 34.113976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.958403, 34.897812, 34.117577>,  <30.025040, 35.292175, 34.123581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958403, 34.897812, 34.117577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289355, 0.063435, -0.955118,
		0.942613, -0.154774, -0.295846,
		-0.166594, -0.985911, -0.015010,
		29.908424, 34.602039, 34.113075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200167, 35.194565, 33.461216>,  <30.025040, 35.292175, 34.123581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200167, 35.194565, 33.461216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.989971, 34.875904, 33.580688>,  <29.863853, 34.684708, 33.652370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.989971, 34.875904, 33.580688>,  <30.200167, 35.194565, 33.461216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989971, 34.875904, 33.580688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512593, 0.016261, -0.858477,
		0.679050, -0.604221, -0.416903,
		-0.525490, -0.796651, 0.298677,
		29.832325, 34.636909, 33.670292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138546, 34.670887, 32.955006>,  <30.200167, 35.194565, 33.461216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138546, 34.670887, 32.955006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.817125, 34.611496, 33.185574>,  <29.624273, 34.575863, 33.323914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.817125, 34.611496, 33.185574>,  <30.138546, 34.670887, 32.955006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817125, 34.611496, 33.185574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568679, -0.094535, -0.817109,
		0.175812, -0.984387, -0.008471,
		-0.803551, -0.148475, 0.576421,
		29.576059, 34.566956, 33.358501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768480, 34.049736, 32.634354>,  <30.138546, 34.670887, 32.955006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768480, 34.049736, 32.634354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.517046, 34.223930, 32.892105>,  <29.366184, 34.328449, 33.046757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.517046, 34.223930, 32.892105>,  <29.768480, 34.049736, 32.634354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517046, 34.223930, 32.892105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700881, 0.041936, -0.712044,
		-0.337111, -0.899216, 0.278866,
		-0.628587, 0.435490, 0.644381,
		29.328470, 34.354576, 33.085419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094881, 33.648010, 32.690456>,  <29.768480, 34.049736, 32.634354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094881, 33.648010, 32.690456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.016439, 34.023396, 32.804180>,  <28.969374, 34.248627, 32.872414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.016439, 34.023396, 32.804180>,  <29.094881, 33.648010, 32.690456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016439, 34.023396, 32.804180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728072, 0.054868, -0.683301,
		-0.656851, -0.340998, 0.672508,
		-0.196105, 0.938461, 0.284311,
		28.957607, 34.304935, 32.889473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301991, 33.696281, 32.687695>,  <29.094881, 33.648010, 32.690456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301991, 33.696281, 32.687695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.424187, 34.076900, 32.701782>,  <28.497505, 34.305271, 32.710236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.424187, 34.076900, 32.701782>,  <28.301991, 33.696281, 32.687695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424187, 34.076900, 32.701782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707300, 0.251531, -0.660650,
		-0.637497, 0.176910, 0.749867,
		0.305490, 0.951543, 0.035222,
		28.515833, 34.362362, 32.712349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777758, 34.014954, 32.709549>,  <28.301991, 33.696281, 32.687695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777758, 34.014954, 32.709549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.032251, 34.290997, 32.571587>,  <28.184948, 34.456623, 32.488808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.032251, 34.290997, 32.571587>,  <27.777758, 34.014954, 32.709549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032251, 34.290997, 32.571587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689558, 0.308172, -0.655393,
		-0.345998, 0.654818, 0.671937,
		0.636235, 0.690104, -0.344908,
		28.223122, 34.498028, 32.468113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476757, 34.682110, 32.702286>,  <27.777758, 34.014954, 32.709549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476757, 34.682110, 32.702286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.766962, 34.739532, 32.433060>,  <27.941086, 34.773987, 32.271523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.766962, 34.739532, 32.433060>,  <27.476757, 34.682110, 32.702286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766962, 34.739532, 32.433060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600474, 0.609881, -0.517181,
		0.336246, 0.779382, 0.528680,
		0.725513, 0.143558, -0.673069,
		27.984615, 34.782600, 32.231140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337086, 35.328007, 32.315845>,  <27.476757, 34.682110, 32.702286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337086, 35.328007, 32.315845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.641937, 35.210049, 32.085300>,  <27.824848, 35.139275, 31.946972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.641937, 35.210049, 32.085300>,  <27.337086, 35.328007, 32.315845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641937, 35.210049, 32.085300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386750, 0.506580, -0.770585,
		0.519217, 0.810194, 0.272029,
		0.762128, -0.294894, -0.576367,
		27.870575, 35.121582, 31.912390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703508, 35.903297, 31.945339>,  <27.337086, 35.328007, 32.315845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703508, 35.903297, 31.945339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755674, 35.571564, 31.728012>,  <27.786974, 35.372524, 31.597616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755674, 35.571564, 31.728012>,  <27.703508, 35.903297, 31.945339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755674, 35.571564, 31.728012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238536, 0.505655, -0.829105,
		0.962337, 0.237730, -0.131880,
		0.130417, -0.829336, -0.543317,
		27.794800, 35.322762, 31.565018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127087, 36.072170, 31.370544>,  <27.703508, 35.903297, 31.945339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127087, 36.072170, 31.370544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.927357, 35.740837, 31.268930>,  <27.807518, 35.542038, 31.207962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.927357, 35.740837, 31.268930>,  <28.127087, 36.072170, 31.370544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927357, 35.740837, 31.268930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344459, 0.458825, -0.819041,
		0.794998, -0.321463, -0.514431,
		-0.499326, -0.828336, -0.254034,
		27.777559, 35.492336, 31.192720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269556, 35.960217, 30.608694>,  <28.127087, 36.072170, 31.370544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269556, 35.960217, 30.608694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.957190, 35.720470, 30.679039>,  <27.769770, 35.576622, 30.721245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.957190, 35.720470, 30.679039>,  <28.269556, 35.960217, 30.608694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957190, 35.720470, 30.679039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468503, 0.375821, -0.799540,
		0.413131, -0.706762, -0.574291,
		-0.780915, -0.599372, 0.175857,
		27.722914, 35.540661, 30.731798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059830, 35.710876, 29.937609>,  <28.269556, 35.960217, 30.608694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059830, 35.710876, 29.937609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755102, 35.671162, 30.193663>,  <27.572266, 35.647335, 30.347296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755102, 35.671162, 30.193663>,  <28.059830, 35.710876, 29.937609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755102, 35.671162, 30.193663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631038, 0.337007, -0.698725,
		-0.146359, -0.936253, -0.319390,
		-0.761820, -0.099282, 0.640136,
		27.526556, 35.641376, 30.385704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515940, 35.459213, 29.546125>,  <28.059830, 35.710876, 29.937609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515940, 35.459213, 29.546125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.304596, 35.596561, 29.856720>,  <27.177790, 35.678970, 30.043077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.304596, 35.596561, 29.856720>,  <27.515940, 35.459213, 29.546125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304596, 35.596561, 29.856720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727146, 0.289111, -0.622634,
		-0.438285, -0.893595, 0.096925,
		-0.528361, 0.343369, 0.776487,
		27.146088, 35.699574, 30.089666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803762, 35.137859, 29.524378>,  <27.515940, 35.459213, 29.546125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803762, 35.137859, 29.524378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.753853, 35.456009, 29.761635>,  <26.723907, 35.646896, 29.903990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.753853, 35.456009, 29.761635>,  <26.803762, 35.137859, 29.524378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753853, 35.456009, 29.761635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817493, 0.256362, -0.515736,
		-0.562260, -0.549240, 0.618223,
		-0.124774, 0.795371, 0.593142,
		26.716421, 35.694618, 29.939577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201958, 35.112980, 29.827629>,  <26.803762, 35.137859, 29.524378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201958, 35.112980, 29.827629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.295633, 35.501507, 29.811138>,  <26.351839, 35.734623, 29.801245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.295633, 35.501507, 29.811138>,  <26.201958, 35.112980, 29.827629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295633, 35.501507, 29.811138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886972, 0.196108, -0.418118,
		-0.398040, 0.134486, 0.907457,
		0.234191, 0.971316, -0.041226,
		26.365891, 35.792900, 29.798771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.562466, 35.410488, 29.813911>,  <26.201958, 35.112980, 29.827629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.562466, 35.410488, 29.813911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.789783, 35.722191, 29.708237>,  <25.926174, 35.909214, 29.644831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.789783, 35.722191, 29.708237>,  <25.562466, 35.410488, 29.813911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789783, 35.722191, 29.708237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777219, 0.402967, -0.483268,
		-0.270132, 0.479972, 0.834659,
		0.568295, 0.779259, -0.264189,
		25.960272, 35.955967, 29.628981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202045, 35.989895, 29.963356>,  <25.562466, 35.410488, 29.813911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202045, 35.989895, 29.963356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.468069, 36.095257, 29.683840>,  <25.627684, 36.158474, 29.516130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.468069, 36.095257, 29.683840>,  <25.202045, 35.989895, 29.963356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.468069, 36.095257, 29.683840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708877, 0.517023, -0.479772,
		0.234918, 0.814436, 0.530573,
		0.665061, 0.263405, -0.698793,
		25.667587, 36.174278, 29.474201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.217016, 36.733452, 29.943785>,  <25.202045, 35.989895, 29.963356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.217016, 36.733452, 29.943785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.379023, 36.620224, 29.596029>,  <25.476227, 36.552288, 29.387377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.379023, 36.620224, 29.596029>,  <25.217016, 36.733452, 29.943785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379023, 36.620224, 29.596029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652161, 0.577000, -0.491688,
		0.640818, 0.766122, 0.049089,
		0.405018, -0.283069, -0.869386,
		25.500528, 36.535305, 29.335213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.186163, 37.318550, 29.630960>,  <25.217016, 36.733452, 29.943785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.186163, 37.318550, 29.630960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.216484, 37.052654, 29.333673>,  <25.234676, 36.893116, 29.155302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.216484, 37.052654, 29.333673>,  <25.186163, 37.318550, 29.630960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216484, 37.052654, 29.333673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778649, 0.426136, -0.460560,
		0.622865, 0.613617, -0.485298,
		0.075804, -0.664743, -0.743217,
		25.239225, 36.853230, 29.110708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.203217, 37.573708, 48.061371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.823822, 37.454334, 48.018845>,  <39.596184, 37.382710, 47.993328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.823822, 37.454334, 48.018845>,  <40.203217, 37.573708, 48.061371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823822, 37.454334, 48.018845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273165, 0.600436, 0.751570,
		-0.160458, 0.741899, -0.651030,
		-0.948490, -0.298434, -0.106316,
		39.539276, 37.364803, 47.986950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748943, 38.269543, 48.032509>,  <40.203217, 37.573708, 48.061371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748943, 38.269543, 48.032509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.522480, 37.948746, 48.108692>,  <39.386600, 37.756268, 48.154404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.522480, 37.948746, 48.108692>,  <39.748943, 38.269543, 48.032509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522480, 37.948746, 48.108692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338029, 0.436623, 0.833725,
		-0.751799, 0.407640, -0.518294,
		-0.566159, -0.801992, 0.190458,
		39.352631, 37.708149, 48.165829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075455, 38.596275, 48.188065>,  <39.748943, 38.269543, 48.032509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075455, 38.596275, 48.188065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.070408, 38.243622, 48.376774>,  <39.067379, 38.032032, 48.489998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.070408, 38.243622, 48.376774>,  <39.075455, 38.596275, 48.188065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070408, 38.243622, 48.376774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076872, 0.471265, 0.878635,
		-0.996961, -0.025184, -0.073717,
		-0.012613, -0.881632, 0.471769,
		39.066624, 37.979134, 48.518303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375694, 38.574390, 48.631611>,  <39.075455, 38.596275, 48.188065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375694, 38.574390, 48.631611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.647457, 38.328697, 48.792168>,  <38.810516, 38.181282, 48.888500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.647457, 38.328697, 48.792168>,  <38.375694, 38.574390, 48.631611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647457, 38.328697, 48.792168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264259, 0.305497, 0.914789,
		-0.684522, -0.727587, 0.045240,
		0.679409, -0.614238, 0.401391,
		38.851280, 38.144424, 48.912586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111214, 38.376640, 49.247711>,  <38.375694, 38.574390, 48.631611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111214, 38.376640, 49.247711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.485752, 38.267681, 49.336308>,  <38.710476, 38.202305, 49.389465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.485752, 38.267681, 49.336308>,  <38.111214, 38.376640, 49.247711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485752, 38.267681, 49.336308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193120, 0.127230, 0.972891,
		-0.293198, -0.953735, 0.066525,
		0.936344, -0.272403, 0.221489,
		38.766655, 38.185959, 49.402756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063637, 37.930828, 49.834293>,  <38.111214, 38.376640, 49.247711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063637, 37.930828, 49.834293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.439926, 38.065857, 49.821079>,  <38.665699, 38.146873, 49.813148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.439926, 38.065857, 49.821079>,  <38.063637, 37.930828, 49.834293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439926, 38.065857, 49.821079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004756, 0.084271, 0.996432,
		0.339149, -0.937521, 0.077670,
		0.940721, 0.337570, -0.033039,
		38.722141, 38.167126, 49.811169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445030, 37.585022, 50.386009>,  <38.063637, 37.930828, 49.834293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445030, 37.585022, 50.386009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.638714, 37.922935, 50.294903>,  <38.754925, 38.125683, 50.240238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.638714, 37.922935, 50.294903>,  <38.445030, 37.585022, 50.386009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638714, 37.922935, 50.294903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074682, 0.219466, 0.972758,
		0.871761, -0.488025, 0.043176,
		0.484205, 0.844788, -0.227769,
		38.783974, 38.176373, 50.226574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957802, 37.589592, 50.931557>,  <38.445030, 37.585022, 50.386009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957802, 37.589592, 50.931557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.937824, 37.960022, 50.781948>,  <38.925838, 38.182281, 50.692184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.937824, 37.960022, 50.781948>,  <38.957802, 37.589592, 50.931557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937824, 37.960022, 50.781948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120771, 0.366140, 0.922689,
		0.991423, 0.091256, 0.093556,
		-0.049947, 0.926074, -0.374021,
		38.922840, 38.237843, 50.669743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490665, 37.983543, 51.407997>,  <38.957802, 37.589592, 50.931557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490665, 37.983543, 51.407997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.238659, 38.240776, 51.233860>,  <39.087456, 38.395115, 51.129379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.238659, 38.240776, 51.233860>,  <39.490665, 37.983543, 51.407997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238659, 38.240776, 51.233860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205031, 0.402954, 0.891959,
		0.749025, 0.651209, -0.122017,
		-0.630018, 0.643082, -0.435341,
		39.049652, 38.433701, 51.103256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615425, 38.589691, 51.623295>,  <39.490665, 37.983543, 51.407997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615425, 38.589691, 51.623295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237865, 38.654247, 51.508057>,  <39.011330, 38.692982, 51.438911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237865, 38.654247, 51.508057>,  <39.615425, 38.589691, 51.623295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237865, 38.654247, 51.508057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211472, 0.374644, 0.902730,
		0.253628, 0.913013, -0.319498,
		-0.943903, 0.161393, -0.288097,
		38.954693, 38.702663, 51.421627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457321, 39.296219, 51.832272>,  <39.615425, 38.589691, 51.623295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457321, 39.296219, 51.832272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.100594, 39.118221, 51.799706>,  <38.886555, 39.011421, 51.780167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.100594, 39.118221, 51.799706>,  <39.457321, 39.296219, 51.832272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100594, 39.118221, 51.799706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281054, 0.404001, 0.870512,
		-0.354485, 0.799225, -0.485366,
		-0.891823, -0.444998, -0.081413,
		38.833046, 38.984722, 51.775280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926121, 39.799404, 51.976383>,  <39.457321, 39.296219, 51.832272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926121, 39.799404, 51.976383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.704990, 39.468983, 52.020222>,  <38.572311, 39.270729, 52.046524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.704990, 39.468983, 52.020222>,  <38.926121, 39.799404, 51.976383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704990, 39.468983, 52.020222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358763, 0.354654, 0.863429,
		-0.752110, 0.438009, -0.492421,
		-0.552829, -0.826056, 0.109598,
		38.539143, 39.221165, 52.053101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144760, 39.870846, 52.118233>,  <38.926121, 39.799404, 51.976383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144760, 39.870846, 52.118233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.251457, 39.536556, 52.310242>,  <38.315475, 39.335983, 52.425446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.251457, 39.536556, 52.310242>,  <38.144760, 39.870846, 52.118233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251457, 39.536556, 52.310242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305595, 0.399027, 0.864517,
		-0.914036, -0.377294, -0.148955,
		0.266740, -0.835719, 0.480024,
		38.331478, 39.285839, 52.454250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767338, 40.502285, 52.409840>,  <38.144760, 39.870846, 52.118233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767338, 40.502285, 52.409840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.442444, 40.731953, 52.451035>,  <37.247509, 40.869755, 52.475754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.442444, 40.731953, 52.451035>,  <37.767338, 40.502285, 52.409840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442444, 40.731953, 52.451035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001081, 0.175072, -0.984555,
		-0.583333, -0.799798, -0.141578,
		-0.812232, 0.574171, 0.102989,
		37.198772, 40.904205, 52.481930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200714, 40.080326, 52.148113>,  <37.767338, 40.502285, 52.409840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200714, 40.080326, 52.148113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.223900, 40.478317, 52.115486>,  <37.237812, 40.717113, 52.095909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.223900, 40.478317, 52.115486>,  <37.200714, 40.080326, 52.148113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223900, 40.478317, 52.115486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123806, -0.073906, -0.989550,
		-0.990612, 0.067458, 0.118901,
		0.057966, 0.994981, -0.081564,
		37.241291, 40.776810, 52.091019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610207, 40.289860, 51.768898>,  <37.200714, 40.080326, 52.148113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610207, 40.289860, 51.768898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863880, 40.593075, 51.707981>,  <37.016083, 40.775005, 51.671432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863880, 40.593075, 51.707981>,  <36.610207, 40.289860, 51.768898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863880, 40.593075, 51.707981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066827, -0.142487, -0.987538,
		-0.770290, 0.636457, -0.039706,
		0.634183, 0.758037, -0.152289,
		37.054134, 40.820484, 51.662296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403870, 40.667034, 51.180840>,  <36.610207, 40.289860, 51.768898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403870, 40.667034, 51.180840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.779663, 40.802490, 51.201569>,  <37.005142, 40.883762, 51.214005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.779663, 40.802490, 51.201569>,  <36.403870, 40.667034, 51.180840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779663, 40.802490, 51.201569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076782, -0.060729, -0.995197,
		-0.333866, 0.938955, -0.083056,
		0.939488, 0.338639, 0.051819,
		37.061508, 40.904083, 51.217113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458652, 41.348995, 50.780571>,  <36.403870, 40.667034, 51.180840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458652, 41.348995, 50.780571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.822582, 41.183670, 50.795460>,  <37.040939, 41.084473, 50.804394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.822582, 41.183670, 50.795460>,  <36.458652, 41.348995, 50.780571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822582, 41.183670, 50.795460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063087, 0.049105, -0.996799,
		0.410165, 0.909263, 0.070752,
		0.909827, -0.413316, 0.037221,
		37.095531, 41.059677, 50.806625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767616, 41.561977, 50.196884>,  <36.458652, 41.348995, 50.780571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767616, 41.561977, 50.196884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.045956, 41.298420, 50.311188>,  <37.212959, 41.140285, 50.379768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.045956, 41.298420, 50.311188>,  <36.767616, 41.561977, 50.196884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045956, 41.298420, 50.311188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158442, -0.247247, -0.955911,
		0.700493, 0.710446, -0.067650,
		0.695849, -0.658890, 0.285759,
		37.254711, 41.100754, 50.396915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231472, 41.684998, 49.710674>,  <36.767616, 41.561977, 50.196884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231472, 41.684998, 49.710674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.323895, 41.336098, 49.883091>,  <37.379349, 41.126759, 49.986542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.323895, 41.336098, 49.883091>,  <37.231472, 41.684998, 49.710674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323895, 41.336098, 49.883091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265950, -0.369537, -0.890344,
		0.935886, 0.320359, 0.146589,
		0.231060, -0.872246, 0.431044,
		37.393211, 41.074425, 50.012405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891781, 41.583279, 49.367188>,  <37.231472, 41.684998, 49.710674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891781, 41.583279, 49.367188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.754692, 41.231922, 49.500439>,  <37.672440, 41.021107, 49.580387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.754692, 41.231922, 49.500439>,  <37.891781, 41.583279, 49.367188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754692, 41.231922, 49.500439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298852, -0.438120, -0.847784,
		0.890635, -0.190996, 0.412661,
		-0.342719, -0.878391, 0.333126,
		37.651878, 40.968407, 49.600376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306889, 41.062038, 49.132702>,  <37.891781, 41.583279, 49.367188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306889, 41.062038, 49.132702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.963161, 40.872978, 49.210850>,  <37.756924, 40.759541, 49.257740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.963161, 40.872978, 49.210850>,  <38.306889, 41.062038, 49.132702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963161, 40.872978, 49.210850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027709, -0.424469, -0.905019,
		0.510689, -0.772286, 0.377851,
		-0.859319, -0.472653, 0.195372,
		37.705364, 40.731182, 49.269463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422157, 40.341949, 48.941956>,  <38.306889, 41.062038, 49.132702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422157, 40.341949, 48.941956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.029408, 40.417351, 48.949795>,  <37.793758, 40.462593, 48.954498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.029408, 40.417351, 48.949795>,  <38.422157, 40.341949, 48.941956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029408, 40.417351, 48.949795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079909, -0.317996, -0.944718,
		-0.171851, -0.929163, 0.327296,
		-0.981877, 0.188505, 0.019600,
		37.734844, 40.473904, 48.955673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185219, 39.865620, 48.463127>,  <38.422157, 40.341949, 48.941956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185219, 39.865620, 48.463127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.852024, 40.080242, 48.517151>,  <37.652107, 40.209015, 48.549564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.852024, 40.080242, 48.517151>,  <38.185219, 39.865620, 48.463127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852024, 40.080242, 48.517151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321561, -0.270833, -0.907330,
		-0.450256, -0.799223, 0.398135,
		-0.832987, 0.536556, 0.135054,
		37.602127, 40.241207, 48.557667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587055, 39.432110, 48.476379>,  <38.185219, 39.865620, 48.463127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587055, 39.432110, 48.476379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.526546, 39.796303, 48.322422>,  <37.490242, 40.014816, 48.230045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.526546, 39.796303, 48.322422>,  <37.587055, 39.432110, 48.476379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526546, 39.796303, 48.322422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106413, -0.402113, -0.909385,
		-0.982747, -0.096609, 0.157716,
		-0.151274, 0.910479, -0.384895,
		37.481163, 40.069447, 48.206955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283855, 39.344860, 47.896854>,  <37.587055, 39.432110, 48.476379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283855, 39.344860, 47.896854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.334034, 39.734455, 47.821377>,  <37.364143, 39.968212, 47.776089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.334034, 39.734455, 47.821377>,  <37.283855, 39.344860, 47.896854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334034, 39.734455, 47.821377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073165, -0.180595, -0.980832,
		-0.989398, 0.136851, 0.048606,
		0.125450, 0.973990, -0.188694,
		37.371670, 40.026653, 47.764771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739471, 39.566837, 47.509220>,  <37.283855, 39.344860, 47.896854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739471, 39.566837, 47.509220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.057983, 39.798489, 47.439301>,  <37.249088, 39.937481, 47.397350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.057983, 39.798489, 47.439301>,  <36.739471, 39.566837, 47.509220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057983, 39.798489, 47.439301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120132, -0.131812, -0.983968,
		-0.592885, 0.804509, -0.035387,
		0.796276, 0.579129, -0.174797,
		37.296867, 39.972229, 47.386860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603336, 40.043056, 46.825409>,  <36.739471, 39.566837, 47.509220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603336, 40.043056, 46.825409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998680, 40.025002, 46.883530>,  <37.235886, 40.014168, 46.918400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998680, 40.025002, 46.883530>,  <36.603336, 40.043056, 46.825409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998680, 40.025002, 46.883530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134138, -0.192188, -0.972147,
		0.071806, 0.980319, -0.183896,
		0.988358, -0.045139, 0.145299,
		37.295189, 40.011459, 46.927120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124554, 40.461727, 46.593636>,  <36.603336, 40.043056, 46.825409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124554, 40.461727, 46.593636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784317, 40.290703, 46.471195>,  <35.580177, 40.188087, 46.397732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784317, 40.290703, 46.471195>,  <36.124554, 40.461727, 46.593636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784317, 40.290703, 46.471195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443577, 0.270815, 0.854341,
		-0.282384, 0.862469, -0.420006,
		-0.850587, -0.427557, -0.306097,
		35.529140, 40.162437, 46.379368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599480, 40.932404, 46.796440>,  <36.124554, 40.461727, 46.593636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599480, 40.932404, 46.796440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.434757, 40.568371, 46.777805>,  <35.335926, 40.349953, 46.766624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.434757, 40.568371, 46.777805>,  <35.599480, 40.932404, 46.796440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434757, 40.568371, 46.777805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510037, 0.187822, 0.839396,
		-0.755169, 0.369426, -0.541521,
		-0.411804, -0.910081, -0.046584,
		35.311214, 40.295345, 46.763828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764999, 41.007812, 46.873081>,  <35.599480, 40.932404, 46.796440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764999, 41.007812, 46.873081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.885994, 40.637650, 46.964405>,  <34.958591, 40.415554, 47.019199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.885994, 40.637650, 46.964405>,  <34.764999, 41.007812, 46.873081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885994, 40.637650, 46.964405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463827, 0.066344, 0.883438,
		-0.832685, -0.373129, -0.409159,
		0.302491, -0.925404, 0.228311,
		34.976742, 40.360027, 47.032898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236526, 40.812416, 47.315987>,  <34.764999, 41.007812, 46.873081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236526, 40.812416, 47.315987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.494354, 40.516201, 47.392036>,  <34.649052, 40.338474, 47.437664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.494354, 40.516201, 47.392036>,  <34.236526, 40.812416, 47.315987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494354, 40.516201, 47.392036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468003, -0.185523, 0.864034,
		-0.604574, -0.645904, -0.466153,
		0.644565, -0.740533, 0.190123,
		34.687725, 40.294041, 47.449074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878868, 40.367825, 47.646648>,  <34.236526, 40.812416, 47.315987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878868, 40.367825, 47.646648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.255718, 40.263130, 47.730453>,  <34.481827, 40.200314, 47.780739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.255718, 40.263130, 47.730453>,  <33.878868, 40.367825, 47.646648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255718, 40.263130, 47.730453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281502, -0.278126, 0.918370,
		-0.182095, -0.924198, -0.335707,
		0.942125, -0.261733, 0.209518,
		34.538357, 40.184608, 47.793308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883244, 39.681770, 47.981873>,  <33.878868, 40.367825, 47.646648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883244, 39.681770, 47.981873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.218170, 39.872822, 48.088280>,  <34.419128, 39.987453, 48.152122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.218170, 39.872822, 48.088280>,  <33.883244, 39.681770, 47.981873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218170, 39.872822, 48.088280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228541, -0.136226, 0.963956,
		0.496655, -0.867934, -0.004906,
		0.837319, 0.477632, 0.266016,
		34.469364, 40.016109, 48.168083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104321, 39.337482, 48.650425>,  <33.883244, 39.681770, 47.981873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104321, 39.337482, 48.650425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335358, 39.664005, 48.652477>,  <34.473980, 39.859921, 48.653709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335358, 39.664005, 48.652477>,  <34.104321, 39.337482, 48.650425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335358, 39.664005, 48.652477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008938, 0.000044, 0.999960,
		0.816274, -0.577619, 0.007322,
		0.577596, 0.816306, 0.005127,
		34.508636, 39.908897, 48.654015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467457, 39.454395, 48.958519>,  <34.104321, 39.337482, 48.650425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467457, 39.454395, 48.958519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.128933, 39.243931, 48.991768>,  <32.925819, 39.117653, 49.011719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.128933, 39.243931, 48.991768>,  <33.467457, 39.454395, 48.958519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128933, 39.243931, 48.991768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276274, -0.566979, -0.776020,
		0.455442, -0.633790, 0.625206,
		-0.846313, -0.526160, 0.083126,
		32.875038, 39.086082, 49.016705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544888, 38.724979, 48.879551>,  <33.467457, 39.454395, 48.958519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544888, 38.724979, 48.879551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.180962, 38.829494, 48.750568>,  <32.962608, 38.892204, 48.673180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.180962, 38.829494, 48.750568>,  <33.544888, 38.724979, 48.879551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180962, 38.829494, 48.750568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191625, -0.424708, -0.884818,
		-0.368137, -0.866806, 0.336336,
		-0.909810, 0.261284, -0.322453,
		32.908020, 38.907879, 48.653831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477722, 38.249786, 48.474369>,  <33.544888, 38.724979, 48.879551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477722, 38.249786, 48.474369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.225464, 38.528736, 48.338161>,  <33.074108, 38.696106, 48.256435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.225464, 38.528736, 48.338161>,  <33.477722, 38.249786, 48.474369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225464, 38.528736, 48.338161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015859, -0.427104, -0.904063,
		-0.775906, -0.575547, 0.258293,
		-0.630649, 0.697372, -0.340520,
		33.036270, 38.737949, 48.236004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012287, 37.923336, 47.978535>,  <33.477722, 38.249786, 48.474369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012287, 37.923336, 47.978535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.966770, 38.308407, 47.880310>,  <32.939461, 38.539452, 47.821377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.966770, 38.308407, 47.880310>,  <33.012287, 37.923336, 47.978535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966770, 38.308407, 47.880310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015091, -0.245461, -0.969289,
		-0.993390, -0.114002, 0.013403,
		-0.113790, 0.962680, -0.245559,
		32.932632, 38.597210, 47.806641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541031, 37.913395, 47.501179>,  <33.012287, 37.923336, 47.978535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541031, 37.913395, 47.501179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680328, 38.281269, 47.428619>,  <32.763908, 38.501991, 47.385082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680328, 38.281269, 47.428619>,  <32.541031, 37.913395, 47.501179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680328, 38.281269, 47.428619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048860, -0.211059, -0.976251,
		-0.936128, 0.331114, -0.118437,
		0.348248, 0.919683, -0.181400,
		32.784801, 38.557175, 47.374199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103397, 38.238117, 46.955379>,  <32.541031, 37.913395, 47.501179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103397, 38.238117, 46.955379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.429192, 38.465519, 46.909042>,  <32.624668, 38.601959, 46.881241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.429192, 38.465519, 46.909042>,  <32.103397, 38.238117, 46.955379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429192, 38.465519, 46.909042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059223, -0.280089, -0.958145,
		-0.577157, 0.773533, -0.261796,
		0.814483, 0.568505, -0.115845,
		32.673538, 38.636070, 46.874290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035725, 38.630138, 46.363186>,  <32.103397, 38.238117, 46.955379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035725, 38.630138, 46.363186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.429806, 38.605892, 46.427322>,  <32.666252, 38.591343, 46.465805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.429806, 38.605892, 46.427322>,  <32.035725, 38.630138, 46.363186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429806, 38.605892, 46.427322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138212, -0.272364, -0.952216,
		0.101389, 0.960283, -0.259955,
		0.985199, -0.060615, 0.160338,
		32.725365, 38.587708, 46.475422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.220551, 36.515224, 52.690483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.519550, 36.691490, 52.491657>,  <36.698948, 36.797249, 52.372364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.519550, 36.691490, 52.491657>,  <36.220551, 36.515224, 52.690483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519550, 36.691490, 52.491657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139667, -0.627297, -0.766154,
		-0.649418, 0.642119, -0.407356,
		0.747495, 0.440660, -0.497061,
		36.743797, 36.823689, 52.342537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981468, 36.419743, 51.982498>,  <36.220551, 36.515224, 52.690483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981468, 36.419743, 51.982498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.349018, 36.563545, 51.917465>,  <36.569546, 36.649826, 51.878445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.349018, 36.563545, 51.917465>,  <35.981468, 36.419743, 51.982498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349018, 36.563545, 51.917465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005079, -0.422807, -0.906205,
		-0.394528, 0.831859, -0.390331,
		0.918870, 0.359506, -0.162584,
		36.624680, 36.671398, 51.868690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004704, 36.839794, 51.310093>,  <35.981468, 36.419743, 51.982498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004704, 36.839794, 51.310093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.379070, 36.716702, 51.378628>,  <36.603691, 36.642845, 51.419746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.379070, 36.716702, 51.378628>,  <36.004704, 36.839794, 51.310093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379070, 36.716702, 51.378628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087548, -0.267927, -0.959453,
		0.341163, 0.912970, -0.223816,
		0.935918, -0.307735, 0.171335,
		36.659847, 36.624382, 51.430027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537025, 37.112537, 50.691616>,  <36.004704, 36.839794, 51.310093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537025, 37.112537, 50.691616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.736801, 36.815163, 50.869545>,  <36.856667, 36.636738, 50.976303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.736801, 36.815163, 50.869545>,  <36.537025, 37.112537, 50.691616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736801, 36.815163, 50.869545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052455, -0.486554, -0.872074,
		0.864762, 0.458878, -0.204006,
		0.499435, -0.743435, 0.444824,
		36.886631, 36.592133, 51.002991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083065, 36.975723, 50.214157>,  <36.537025, 37.112537, 50.691616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083065, 36.975723, 50.214157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.045143, 36.647812, 50.440067>,  <37.022388, 36.451065, 50.575615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.045143, 36.647812, 50.440067>,  <37.083065, 36.975723, 50.214157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045143, 36.647812, 50.440067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145305, -0.572652, -0.806818,
		0.984834, 0.005572, 0.173410,
		-0.094808, -0.819779, 0.564777,
		37.016701, 36.401878, 50.609501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535816, 36.469368, 49.876938>,  <37.083065, 36.975723, 50.214157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535816, 36.469368, 49.876938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.297417, 36.246666, 50.108391>,  <37.154377, 36.113045, 50.247261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.297417, 36.246666, 50.108391>,  <37.535816, 36.469368, 49.876938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297417, 36.246666, 50.108391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148893, -0.784728, -0.601691,
		0.789062, -0.272451, 0.550591,
		-0.595996, -0.556751, 0.578633,
		37.118618, 36.079639, 50.281982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904812, 35.790195, 49.918217>,  <37.535816, 36.469368, 49.876938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904812, 35.790195, 49.918217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.516766, 35.733837, 49.997231>,  <37.283936, 35.700024, 50.044640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.516766, 35.733837, 49.997231>,  <37.904812, 35.790195, 49.918217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516766, 35.733837, 49.997231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019977, -0.764974, -0.643751,
		0.241807, -0.628461, 0.739301,
		-0.970119, -0.140894, 0.197531,
		37.225731, 35.691570, 50.056488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932213, 35.136589, 49.999786>,  <37.904812, 35.790195, 49.918217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932213, 35.136589, 49.999786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.549274, 35.244881, 49.959396>,  <37.319511, 35.309856, 49.935162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.549274, 35.244881, 49.959396>,  <37.932213, 35.136589, 49.999786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549274, 35.244881, 49.959396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147763, -0.758998, -0.634104,
		-0.248310, -0.592136, 0.766627,
		-0.957345, 0.270733, -0.100971,
		37.262070, 35.326099, 49.929104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655251, 34.520832, 50.017933>,  <37.932213, 35.136589, 49.999786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655251, 34.520832, 50.017933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.377766, 34.762398, 49.860939>,  <37.211273, 34.907337, 49.766743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.377766, 34.762398, 49.860939>,  <37.655251, 34.520832, 50.017933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377766, 34.762398, 49.860939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235964, -0.705419, -0.668360,
		-0.680496, -0.371042, 0.631864,
		-0.693719, 0.603914, -0.392483,
		37.169651, 34.943573, 49.743195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006157, 34.172382, 50.020321>,  <37.655251, 34.520832, 50.017933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006157, 34.172382, 50.020321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.993259, 34.453243, 49.735802>,  <36.985519, 34.621758, 49.565090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.993259, 34.453243, 49.735802>,  <37.006157, 34.172382, 50.020321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993259, 34.453243, 49.735802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042067, -0.710087, -0.702856,
		-0.998594, -0.052585, -0.006641,
		-0.032244, 0.702148, -0.711301,
		36.983585, 34.663887, 49.522411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419369, 34.038643, 49.523106>,  <37.006157, 34.172382, 50.020321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419369, 34.038643, 49.523106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.706882, 34.249107, 49.341331>,  <36.879391, 34.375385, 49.232265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.706882, 34.249107, 49.341331>,  <36.419369, 34.038643, 49.523106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706882, 34.249107, 49.341331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039322, -0.683364, -0.729019,
		-0.694125, 0.506135, -0.511878,
		0.718780, 0.526157, -0.454437,
		36.922516, 34.406956, 49.205002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117161, 34.066368, 48.923626>,  <36.419369, 34.038643, 49.523106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117161, 34.066368, 48.923626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.507637, 34.142517, 48.882042>,  <36.741924, 34.188206, 48.857090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.507637, 34.142517, 48.882042>,  <36.117161, 34.066368, 48.923626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507637, 34.142517, 48.882042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038972, -0.625420, -0.779315,
		-0.213377, 0.756710, -0.617949,
		0.976192, 0.190370, -0.103960,
		36.800495, 34.199627, 48.850853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832653, 34.662525, 48.782482>,  <36.117161, 34.066368, 48.923626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832653, 34.662525, 48.782482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.470276, 34.769299, 48.651020>,  <35.252850, 34.833363, 48.572144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.470276, 34.769299, 48.651020>,  <35.832653, 34.662525, 48.782482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470276, 34.769299, 48.651020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118560, 0.585251, 0.802138,
		0.406462, 0.765657, -0.498556,
		-0.905943, 0.266930, -0.328659,
		35.198494, 34.849377, 48.552422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785610, 35.420563, 48.741615>,  <35.832653, 34.662525, 48.782482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785610, 35.420563, 48.741615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.409435, 35.285660, 48.724472>,  <35.183731, 35.204720, 48.714188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.409435, 35.285660, 48.724472>,  <35.785610, 35.420563, 48.741615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409435, 35.285660, 48.724472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286598, 0.718681, 0.633529,
		-0.182860, 0.608078, -0.772531,
		-0.940438, -0.337253, -0.042856,
		35.127304, 35.184483, 48.711617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285549, 36.003071, 48.605824>,  <35.785610, 35.420563, 48.741615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285549, 36.003071, 48.605824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.074932, 35.711205, 48.780334>,  <34.948563, 35.536083, 48.885040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.074932, 35.711205, 48.780334>,  <35.285549, 36.003071, 48.605824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074932, 35.711205, 48.780334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437872, 0.672638, 0.596512,
		-0.728712, 0.123054, -0.673673,
		-0.526541, -0.729668, 0.436277,
		34.916969, 35.492306, 48.911217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610134, 36.305099, 48.660477>,  <35.285549, 36.003071, 48.605824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610134, 36.305099, 48.660477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.566139, 35.982994, 48.893528>,  <34.539742, 35.789730, 49.033360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.566139, 35.982994, 48.893528>,  <34.610134, 36.305099, 48.660477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566139, 35.982994, 48.893528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708893, 0.474438, 0.521900,
		-0.696687, -0.355618, -0.623027,
		-0.109991, -0.805261, 0.582630,
		34.533142, 35.741417, 49.068317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928043, 36.227596, 48.624992>,  <34.610134, 36.305099, 48.660477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928043, 36.227596, 48.624992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.043507, 36.025482, 48.950291>,  <34.112785, 35.904213, 49.145470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.043507, 36.025482, 48.950291>,  <33.928043, 36.227596, 48.624992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043507, 36.025482, 48.950291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601296, 0.565320, 0.564674,
		-0.745062, -0.652000, -0.140638,
		0.288661, -0.505282, 0.813243,
		34.130104, 35.873898, 49.194263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366032, 36.306873, 49.181789>,  <33.928043, 36.227596, 48.624992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366032, 36.306873, 49.181789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.674809, 36.171169, 49.396832>,  <33.860073, 36.089748, 49.525856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.674809, 36.171169, 49.396832>,  <33.366032, 36.306873, 49.181789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674809, 36.171169, 49.396832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441930, 0.321509, 0.837454,
		-0.456957, -0.884045, 0.098257,
		0.771938, -0.339258, 0.537602,
		33.906391, 36.069393, 49.558113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210838, 35.751335, 49.558952>,  <33.366032, 36.306873, 49.181789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210838, 35.751335, 49.558952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.511303, 35.941296, 49.742355>,  <33.691582, 36.055271, 49.852398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.511303, 35.941296, 49.742355>,  <33.210838, 35.751335, 49.558952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511303, 35.941296, 49.742355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589820, 0.170931, 0.789237,
		0.296435, -0.863280, 0.408502,
		0.751158, 0.474901, 0.458510,
		33.736649, 36.083767, 49.879910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435524, 35.460876, 50.196621>,  <33.210838, 35.751335, 49.558952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435524, 35.460876, 50.196621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.529705, 35.848206, 50.229862>,  <33.586216, 36.080605, 50.249805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.529705, 35.848206, 50.229862>,  <33.435524, 35.460876, 50.196621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529705, 35.848206, 50.229862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548199, 0.061721, 0.834068,
		0.802521, -0.241940, 0.545368,
		0.235454, 0.968326, 0.083099,
		33.600342, 36.138702, 50.254791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384357, 35.604408, 50.865288>,  <33.435524, 35.460876, 50.196621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384357, 35.604408, 50.865288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.460800, 35.983051, 50.761425>,  <33.506664, 36.210236, 50.699108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.460800, 35.983051, 50.761425>,  <33.384357, 35.604408, 50.865288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460800, 35.983051, 50.761425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582015, 0.322291, 0.746583,
		0.790404, 0.008450, 0.612528,
		0.191104, 0.946603, -0.259658,
		33.518131, 36.267033, 50.683529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696510, 35.868252, 51.368313>,  <33.384357, 35.604408, 50.865288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696510, 35.868252, 51.368313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.564003, 36.199299, 51.187069>,  <33.484501, 36.397926, 51.078323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.564003, 36.199299, 51.187069>,  <33.696510, 35.868252, 51.368313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564003, 36.199299, 51.187069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565679, 0.210142, 0.797401,
		0.755162, 0.520466, 0.398555,
		-0.331267, 0.827621, -0.453108,
		33.464622, 36.447586, 51.051136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781658, 36.501915, 51.845871>,  <33.696510, 35.868252, 51.368313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781658, 36.501915, 51.845871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.532822, 36.693474, 51.598110>,  <33.383518, 36.808407, 51.449451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.532822, 36.693474, 51.598110>,  <33.781658, 36.501915, 51.845871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532822, 36.693474, 51.598110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464261, 0.411402, 0.784353,
		0.630446, 0.775506, -0.033598,
		-0.622093, 0.478894, -0.619404,
		33.346195, 36.837143, 51.412289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756851, 37.323772, 52.065960>,  <33.781658, 36.501915, 51.845871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756851, 37.323772, 52.065960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.421291, 37.228340, 51.870277>,  <33.219955, 37.171082, 51.752869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.421291, 37.228340, 51.870277>,  <33.756851, 37.323772, 52.065960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421291, 37.228340, 51.870277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543656, 0.410487, 0.732078,
		0.026157, 0.880103, -0.474063,
		-0.838900, -0.238578, -0.489210,
		33.169621, 37.156765, 51.723515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370735, 37.973587, 51.984245>,  <33.756851, 37.323772, 52.065960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370735, 37.973587, 51.984245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.129208, 37.655903, 51.957031>,  <32.984291, 37.465294, 51.940704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.129208, 37.655903, 51.957031>,  <33.370735, 37.973587, 51.984245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129208, 37.655903, 51.957031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563678, 0.365081, 0.740934,
		-0.563620, 0.485741, -0.668123,
		-0.603821, -0.794211, -0.068035,
		32.948063, 37.417641, 51.936623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603321, 38.144367, 51.869678>,  <33.370735, 37.973587, 51.984245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603321, 38.144367, 51.869678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.593437, 37.800255, 52.073368>,  <32.587505, 37.593788, 52.195583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.593437, 37.800255, 52.073368>,  <32.603321, 38.144367, 51.869678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593437, 37.800255, 52.073368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756807, 0.348915, 0.552722,
		-0.653171, -0.371729, -0.659685,
		-0.024712, -0.860277, 0.509228,
		32.586025, 37.542171, 52.226135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112652, 38.632545, 51.518829>,  <32.603321, 38.144367, 51.869678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112652, 38.632545, 51.518829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.873808, 38.950016, 51.565376>,  <31.730501, 39.140499, 51.593304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.873808, 38.950016, 51.565376>,  <32.112652, 38.632545, 51.518829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873808, 38.950016, 51.565376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005480, 0.141027, -0.989991,
		-0.802141, -0.591771, -0.079859,
		-0.597110, 0.793674, 0.116366,
		31.694675, 39.188118, 51.600285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431768, 38.580757, 51.119411>,  <32.112652, 38.632545, 51.518829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431768, 38.580757, 51.119411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.515049, 38.968285, 51.173145>,  <31.565018, 39.200802, 51.205383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.515049, 38.968285, 51.173145>,  <31.431768, 38.580757, 51.119411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515049, 38.968285, 51.173145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150215, 0.104039, -0.983164,
		-0.966482, 0.224874, -0.123870,
		0.208200, 0.968818, 0.134331,
		31.577509, 39.258930, 51.213444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044146, 38.850430, 50.536072>,  <31.431768, 38.580757, 51.119411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044146, 38.850430, 50.536072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.319866, 39.105816, 50.673019>,  <31.485298, 39.259048, 50.755188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.319866, 39.105816, 50.673019>,  <31.044146, 38.850430, 50.536072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319866, 39.105816, 50.673019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113272, 0.371791, -0.921380,
		-0.715563, 0.673892, 0.183956,
		0.689304, 0.638468, 0.342373,
		31.526657, 39.297356, 50.775730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774759, 39.468365, 50.223793>,  <31.044146, 38.850430, 50.536072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774759, 39.468365, 50.223793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.157396, 39.529251, 50.323204>,  <31.386978, 39.565784, 50.382851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.157396, 39.529251, 50.323204>,  <30.774759, 39.468365, 50.223793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157396, 39.529251, 50.323204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211241, 0.225346, -0.951103,
		-0.200776, 0.962315, 0.183410,
		0.956591, 0.152215, 0.248524,
		31.444374, 39.574917, 50.397762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064379, 40.096310, 49.905899>,  <30.774759, 39.468365, 50.223793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064379, 40.096310, 49.905899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.393164, 39.880505, 49.978893>,  <31.590435, 39.751022, 50.022690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.393164, 39.880505, 49.978893>,  <31.064379, 40.096310, 49.905899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393164, 39.880505, 49.978893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277113, 0.098918, -0.955732,
		0.497580, 0.836146, 0.230813,
		0.821963, -0.539515, 0.182487,
		31.639753, 39.718651, 50.033638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570459, 40.403267, 49.496403>,  <31.064379, 40.096310, 49.905899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570459, 40.403267, 49.496403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.732773, 40.047733, 49.581554>,  <31.830160, 39.834415, 49.632645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.732773, 40.047733, 49.581554>,  <31.570459, 40.403267, 49.496403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732773, 40.047733, 49.581554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497660, 0.019512, -0.867152,
		0.766599, 0.457818, 0.450254,
		0.405783, -0.888832, 0.212879,
		31.854507, 39.781082, 49.645420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234825, 40.564484, 49.293865>,  <31.570459, 40.403267, 49.496403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234825, 40.564484, 49.293865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.358746, 40.865211, 49.061043>,  <32.433098, 41.045650, 48.921349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.358746, 40.865211, 49.061043>,  <32.234825, 40.564484, 49.293865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358746, 40.865211, 49.061043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316313, -0.658798, -0.682592,
		-0.896642, 0.027360, -0.441909,
		0.309804, 0.751822, -0.582052,
		32.451687, 41.090759, 48.886429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538116, 40.553699, 49.913765>,  <32.234825, 40.564484, 49.293865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538116, 40.553699, 49.913765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.867279, 40.649776, 49.707802>,  <33.064777, 40.707424, 49.584225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.867279, 40.649776, 49.707802>,  <32.538116, 40.553699, 49.913765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867279, 40.649776, 49.707802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489242, 0.161255, 0.857111,
		0.288902, -0.957238, 0.015186,
		0.822908, 0.240192, -0.514909,
		33.114151, 40.721832, 49.553329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053391, 40.727219, 50.409698>,  <32.538116, 40.553699, 49.913765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053391, 40.727219, 50.409698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.319408, 40.745548, 50.111538>,  <33.479019, 40.756546, 49.932644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.319408, 40.745548, 50.111538>,  <33.053391, 40.727219, 50.409698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319408, 40.745548, 50.111538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722985, 0.210573, 0.657991,
		0.187107, -0.976504, 0.106916,
		0.665044, 0.045816, -0.745397,
		33.518921, 40.759296, 49.887920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622654, 40.167110, 50.551041>,  <33.053391, 40.727219, 50.409698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622654, 40.167110, 50.551041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.743805, 40.501049, 50.367176>,  <33.816494, 40.701412, 50.256855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.743805, 40.501049, 50.367176>,  <33.622654, 40.167110, 50.551041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743805, 40.501049, 50.367176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771778, 0.068113, 0.632233,
		0.559130, -0.546245, -0.623690,
		0.302873, 0.834851, -0.459664,
		33.834667, 40.751503, 50.229279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384331, 40.161678, 50.583511>,  <33.622654, 40.167110, 50.551041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384331, 40.161678, 50.583511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.271675, 40.545242, 50.569805>,  <34.204082, 40.775379, 50.561581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.271675, 40.545242, 50.569805>,  <34.384331, 40.161678, 50.583511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271675, 40.545242, 50.569805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762545, 0.245361, 0.598601,
		0.582411, 0.142459, -0.800314,
		-0.281642, 0.958907, -0.034270,
		34.187183, 40.832916, 50.559525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052822, 40.521080, 50.417355>,  <34.384331, 40.161678, 50.583511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052822, 40.521080, 50.417355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.796429, 40.774494, 50.590687>,  <34.642593, 40.926544, 50.694687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.796429, 40.774494, 50.590687>,  <35.052822, 40.521080, 50.417355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796429, 40.774494, 50.590687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723325, 0.309701, 0.617160,
		0.256790, 0.709026, -0.656765,
		-0.640984, 0.633535, 0.433328,
		34.604134, 40.964554, 50.720684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364262, 41.149750, 50.459782>,  <35.052822, 40.521080, 50.417355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364262, 41.149750, 50.459782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.069176, 41.219048, 50.720787>,  <34.892124, 41.260624, 50.877388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.069176, 41.219048, 50.720787>,  <35.364262, 41.149750, 50.459782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069176, 41.219048, 50.720787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652301, 0.432050, 0.622765,
		-0.174028, 0.885054, -0.431734,
		-0.737711, 0.173242, 0.652510,
		34.847862, 41.271019, 50.916538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372372, 41.921635, 50.720055>,  <35.364262, 41.149750, 50.459782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372372, 41.921635, 50.720055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.208744, 41.681225, 50.994698>,  <35.110569, 41.536980, 51.159485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.208744, 41.681225, 50.994698>,  <35.372372, 41.921635, 50.720055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208744, 41.681225, 50.994698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671843, 0.310804, 0.672330,
		-0.617487, 0.736325, 0.276651,
		-0.409069, -0.601021, 0.686612,
		35.086021, 41.500919, 51.200680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239422, 42.414940, 51.434303>,  <35.372372, 41.921635, 50.720055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239422, 42.414940, 51.434303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.220081, 42.029018, 51.537697>,  <35.208477, 41.797466, 51.599731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.220081, 42.029018, 51.537697>,  <35.239422, 42.414940, 51.434303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220081, 42.029018, 51.537697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533623, 0.193810, 0.823216,
		-0.844339, 0.177735, 0.505471,
		-0.048349, -0.964805, 0.258485,
		35.205578, 41.739578, 51.615242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809723, 42.411167, 52.057842>,  <35.239422, 42.414940, 51.434303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809723, 42.411167, 52.057842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.051064, 42.092731, 52.039043>,  <35.195866, 41.901669, 52.027763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.051064, 42.092731, 52.039043>,  <34.809723, 42.411167, 52.057842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051064, 42.092731, 52.039043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432701, 0.277293, 0.857834,
		-0.669882, -0.537909, 0.511774,
		0.603348, -0.796092, -0.047000,
		35.232067, 41.853905, 52.024944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.752632, 34.884075, 37.665039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128448, 34.951214, 37.784431>,  <38.353939, 34.991497, 37.856068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128448, 34.951214, 37.784431>,  <37.752632, 34.884075, 37.665039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128448, 34.951214, 37.784431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329601, 0.679698, 0.655266,
		-0.092891, -0.714029, 0.693927,
		0.939540, 0.167851, 0.298482,
		38.410309, 35.001568, 37.873978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878891, 34.739258, 38.427956>,  <37.752632, 34.884075, 37.665039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878891, 34.739258, 38.427956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126686, 35.023373, 38.294254>,  <38.275364, 35.193840, 38.214035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126686, 35.023373, 38.294254>,  <37.878891, 34.739258, 38.427956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126686, 35.023373, 38.294254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393113, 0.649258, 0.651097,
		0.679483, -0.271947, 0.681431,
		0.619488, 0.710289, -0.334253,
		38.312534, 35.236458, 38.193981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127365, 35.136616, 39.059906>,  <37.878891, 34.739258, 38.427956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127365, 35.136616, 39.059906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202602, 35.395805, 38.764679>,  <38.247746, 35.551319, 38.587543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202602, 35.395805, 38.764679>,  <38.127365, 35.136616, 39.059906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202602, 35.395805, 38.764679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297521, 0.753768, 0.585931,
		0.936003, 0.109380, 0.334567,
		0.188097, 0.647974, -0.738072,
		38.259033, 35.590199, 38.543259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625225, 35.708393, 39.338593>,  <38.127365, 35.136616, 39.059906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625225, 35.708393, 39.338593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401413, 35.822025, 39.027149>,  <38.267128, 35.890205, 38.840282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401413, 35.822025, 39.027149>,  <38.625225, 35.708393, 39.338593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401413, 35.822025, 39.027149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269799, 0.825826, 0.495196,
		0.783669, 0.487143, -0.385428,
		-0.559528, 0.284082, -0.778605,
		38.233555, 35.907249, 38.793568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761993, 36.392700, 39.325260>,  <38.625225, 35.708393, 39.338593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761993, 36.392700, 39.325260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438011, 36.415169, 39.091743>,  <38.243622, 36.428650, 38.951633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438011, 36.415169, 39.091743>,  <38.761993, 36.392700, 39.325260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438011, 36.415169, 39.091743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242959, 0.873835, 0.421169,
		0.533798, 0.482966, -0.694120,
		-0.809957, 0.056176, -0.583793,
		38.195023, 36.432022, 38.916607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649601, 37.146912, 39.264725>,  <38.761993, 36.392700, 39.325260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649601, 37.146912, 39.264725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307251, 36.971481, 39.155083>,  <38.101841, 36.866222, 39.089298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307251, 36.971481, 39.155083>,  <38.649601, 37.146912, 39.264725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307251, 36.971481, 39.155083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516886, 0.707313, 0.482221,
		-0.017617, 0.554398, -0.832065,
		-0.855873, -0.438578, -0.274100,
		38.050488, 36.839909, 39.072853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216988, 37.679115, 39.097118>,  <38.649601, 37.146912, 39.264725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216988, 37.679115, 39.097118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976486, 37.371170, 39.182724>,  <37.832188, 37.186401, 39.234089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976486, 37.371170, 39.182724>,  <38.216988, 37.679115, 39.097118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976486, 37.371170, 39.182724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594515, 0.609954, 0.523935,
		-0.533902, 0.187779, -0.824432,
		-0.601249, -0.769867, 0.214018,
		37.796112, 37.140209, 39.246929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548283, 38.105370, 39.131378>,  <38.216988, 37.679115, 39.097118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548283, 38.105370, 39.131378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453396, 37.742874, 39.271355>,  <37.396465, 37.525375, 39.355339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453396, 37.742874, 39.271355>,  <37.548283, 38.105370, 39.131378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453396, 37.742874, 39.271355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510800, 0.422765, 0.748567,
		-0.826324, -0.001176, -0.563194,
		-0.237219, -0.906238, 0.349942,
		37.382229, 37.471004, 39.376339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836315, 38.118393, 39.229767>,  <37.548283, 38.105370, 39.131378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836315, 38.118393, 39.229767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003593, 37.863747, 39.488945>,  <37.103962, 37.710957, 39.644451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003593, 37.863747, 39.488945>,  <36.836315, 38.118393, 39.229767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003593, 37.863747, 39.488945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419218, 0.497539, 0.759415,
		-0.805835, -0.589212, -0.058813,
		0.418195, -0.636619, 0.647943,
		37.129051, 37.672760, 39.683327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273930, 37.878922, 39.671494>,  <36.836315, 38.118393, 39.229767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273930, 37.878922, 39.671494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622955, 37.836376, 39.862206>,  <36.832371, 37.810848, 39.976635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622955, 37.836376, 39.862206>,  <36.273930, 37.878922, 39.671494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622955, 37.836376, 39.862206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441264, 0.247100, 0.862686,
		-0.209575, -0.963134, 0.168674,
		0.872562, -0.106368, 0.476782,
		36.884724, 37.804466, 40.005241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868568, 38.017635, 40.290367>,  <36.273930, 37.878922, 39.671494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868568, 38.017635, 40.290367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256676, 37.964874, 40.371548>,  <36.489540, 37.933216, 40.420254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256676, 37.964874, 40.371548>,  <35.868568, 38.017635, 40.290367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256676, 37.964874, 40.371548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157756, 0.291304, 0.943533,
		-0.183576, -0.947493, 0.261833,
		0.970264, -0.131905, 0.202949,
		36.547756, 37.925304, 40.432434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951126, 37.614746, 40.846508>,  <35.868568, 38.017635, 40.290367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951126, 37.614746, 40.846508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289970, 37.826988, 40.834820>,  <36.493279, 37.954334, 40.827805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289970, 37.826988, 40.834820>,  <35.951126, 37.614746, 40.846508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289970, 37.826988, 40.834820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016670, 0.028434, 0.999457,
		0.531150, -0.847141, 0.015242,
		0.847114, 0.530607, -0.029225,
		36.544106, 37.986172, 40.826054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875656, 36.732063, 40.957954>,  <35.951126, 37.614746, 40.846508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875656, 36.732063, 40.957954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487103, 36.660374, 41.020302>,  <35.253971, 36.617359, 41.057709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487103, 36.660374, 41.020302>,  <35.875656, 36.732063, 40.957954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487103, 36.660374, 41.020302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103170, -0.272703, -0.956550,
		0.213939, -0.945258, 0.246409,
		-0.971383, -0.179221, 0.155864,
		35.195686, 36.606609, 41.067062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676487, 35.996262, 40.658100>,  <35.875656, 36.732063, 40.957954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676487, 35.996262, 40.658100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318020, 36.170612, 40.691322>,  <35.102940, 36.275223, 40.711254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318020, 36.170612, 40.691322>,  <35.676487, 35.996262, 40.658100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318020, 36.170612, 40.691322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303523, -0.465643, -0.831294,
		-0.323667, -0.770187, 0.549592,
		-0.896166, 0.435876, 0.083056,
		35.049171, 36.301376, 40.716240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262764, 35.478600, 40.513077>,  <35.676487, 35.996262, 40.658100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262764, 35.478600, 40.513077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059486, 35.817535, 40.451435>,  <34.937519, 36.020897, 40.414452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059486, 35.817535, 40.451435>,  <35.262764, 35.478600, 40.513077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059486, 35.817535, 40.451435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429957, -0.404648, -0.807092,
		-0.746241, -0.343901, 0.569961,
		-0.508194, 0.847344, -0.154102,
		34.907028, 36.071739, 40.405205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584084, 35.247498, 40.376038>,  <35.262764, 35.478600, 40.513077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584084, 35.247498, 40.376038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564747, 35.615864, 40.221336>,  <34.553146, 35.836884, 40.128517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564747, 35.615864, 40.221336>,  <34.584084, 35.247498, 40.376038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564747, 35.615864, 40.221336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425184, -0.369342, -0.826320,
		-0.903815, 0.124496, 0.409413,
		-0.048340, 0.920916, -0.386751,
		34.550243, 35.892139, 40.105312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075706, 35.189529, 40.008862>,  <34.584084, 35.247498, 40.376038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075706, 35.189529, 40.008862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273586, 35.498634, 39.849812>,  <34.392315, 35.684097, 39.754383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273586, 35.498634, 39.849812>,  <34.075706, 35.189529, 40.008862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273586, 35.498634, 39.849812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287890, -0.285981, -0.913966,
		-0.819993, 0.566614, 0.080995,
		0.494703, 0.772764, -0.397625,
		34.421997, 35.730465, 39.730526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592613, 35.664070, 39.493099>,  <34.075706, 35.189529, 40.008862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592613, 35.664070, 39.493099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967827, 35.751278, 39.385353>,  <34.192955, 35.803604, 39.320705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967827, 35.751278, 39.385353>,  <33.592613, 35.664070, 39.493099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967827, 35.751278, 39.385353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272343, -0.016855, -0.962052,
		-0.214290, 0.975798, 0.043567,
		0.938034, 0.218024, -0.269364,
		34.249237, 35.816685, 39.304543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568897, 36.082546, 38.908230>,  <33.592613, 35.664070, 39.493099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568897, 36.082546, 38.908230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944595, 35.954750, 38.858047>,  <34.170013, 35.878071, 38.827938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944595, 35.954750, 38.858047>,  <33.568897, 36.082546, 38.908230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944595, 35.954750, 38.858047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245076, -0.368331, -0.896811,
		0.240312, 0.873074, -0.424254,
		0.939248, -0.319489, -0.125455,
		34.226372, 35.858902, 38.820412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649319, 36.161667, 38.060322>,  <33.568897, 36.082546, 38.908230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649319, 36.161667, 38.060322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932655, 35.922386, 38.210205>,  <34.102657, 35.778816, 38.300137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932655, 35.922386, 38.210205>,  <33.649319, 36.161667, 38.060322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932655, 35.922386, 38.210205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020399, -0.513275, -0.857982,
		0.705576, 0.615387, -0.351371,
		0.708341, -0.598204, 0.374708,
		34.145157, 35.742924, 38.322617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195778, 36.155792, 37.628632>,  <33.649319, 36.161667, 38.060322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195778, 36.155792, 37.628632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270088, 35.828430, 37.846142>,  <34.314674, 35.632011, 37.976650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270088, 35.828430, 37.846142>,  <34.195778, 36.155792, 37.628632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270088, 35.828430, 37.846142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102598, -0.534232, -0.839089,
		0.977221, 0.211674, -0.015281,
		0.185777, -0.818407, 0.543780,
		34.325821, 35.582909, 38.009277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774506, 35.794502, 37.223270>,  <34.195778, 36.155792, 37.628632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774506, 35.794502, 37.223270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615517, 35.519222, 37.466053>,  <34.520123, 35.354053, 37.611721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615517, 35.519222, 37.466053>,  <34.774506, 35.794502, 37.223270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615517, 35.519222, 37.466053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171058, -0.705426, -0.687833,
		0.901530, -0.169569, 0.398109,
		-0.397471, -0.688202, 0.606956,
		34.496277, 35.312763, 37.648140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282070, 35.270027, 37.296879>,  <34.774506, 35.794502, 37.223270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282070, 35.270027, 37.296879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929264, 35.102165, 37.382607>,  <34.717579, 35.001450, 37.434044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929264, 35.102165, 37.382607>,  <35.282070, 35.270027, 37.296879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929264, 35.102165, 37.382607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172631, -0.710980, -0.681694,
		0.438455, -0.564268, 0.699542,
		-0.882018, -0.419655, 0.214323,
		34.664658, 34.976269, 37.446903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472889, 34.542416, 37.448311>,  <35.282070, 35.270027, 37.296879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472889, 34.542416, 37.448311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087570, 34.581173, 37.348179>,  <34.856380, 34.604427, 37.288097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087570, 34.581173, 37.348179>,  <35.472889, 34.542416, 37.448311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087570, 34.581173, 37.348179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029892, -0.888055, -0.458765,
		-0.266763, -0.449411, 0.852565,
		-0.963299, 0.096897, -0.250334,
		34.798580, 34.610241, 37.273079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200359, 33.898270, 37.584301>,  <35.472889, 34.542416, 37.448311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200359, 33.898270, 37.584301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959003, 34.047745, 37.302509>,  <34.814190, 34.137428, 37.133434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959003, 34.047745, 37.302509>,  <35.200359, 33.898270, 37.584301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959003, 34.047745, 37.302509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037131, -0.895619, -0.443271,
		-0.796584, -0.241307, 0.554280,
		-0.603387, 0.373683, -0.704475,
		34.777988, 34.159851, 37.091167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534897, 33.238106, 37.669304>,  <35.200359, 33.898270, 37.584301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534897, 33.238106, 37.669304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682735, 33.028156, 37.976006>,  <35.771439, 32.902187, 38.160027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682735, 33.028156, 37.976006>,  <35.534897, 33.238106, 37.669304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682735, 33.028156, 37.976006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897454, 0.415468, -0.148201,
		-0.240774, 0.742899, 0.624603,
		0.369601, -0.524870, 0.766751,
		35.793617, 32.870697, 38.206032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924835, 33.706844, 38.104931>,  <35.534897, 33.238106, 37.669304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924835, 33.706844, 38.104931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084469, 33.340111, 38.109818>,  <36.180248, 33.120071, 38.112751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084469, 33.340111, 38.109818>,  <35.924835, 33.706844, 38.104931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084469, 33.340111, 38.109818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832660, 0.356799, -0.423523,
		0.383941, 0.179193, 0.905803,
		0.399082, -0.916834, 0.012217,
		36.204193, 33.065060, 38.113483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565472, 33.701759, 38.523788>,  <35.924835, 33.706844, 38.104931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565472, 33.701759, 38.523788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549770, 33.441570, 38.220383>,  <36.540348, 33.285458, 38.038342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549770, 33.441570, 38.220383>,  <36.565472, 33.701759, 38.523788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549770, 33.441570, 38.220383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878399, 0.339385, -0.336502,
		0.476314, -0.679484, 0.558056,
		-0.039252, -0.650476, -0.758512,
		36.537994, 33.246426, 37.992828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655136, 32.956982, 38.570786>,  <36.565472, 33.701759, 38.523788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655136, 32.956982, 38.570786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015762, 32.801163, 38.646069>,  <37.232140, 32.707672, 38.691238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015762, 32.801163, 38.646069>,  <36.655136, 32.956982, 38.570786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015762, 32.801163, 38.646069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227478, -0.056786, 0.972126,
		-0.368007, -0.919252, -0.139811,
		0.901568, -0.389553, 0.188212,
		37.286232, 32.684296, 38.702534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584438, 32.219257, 38.839966>,  <36.655136, 32.956982, 38.570786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584438, 32.219257, 38.839966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931938, 32.366646, 38.972332>,  <37.140438, 32.455078, 39.051754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931938, 32.366646, 38.972332>,  <36.584438, 32.219257, 38.839966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931938, 32.366646, 38.972332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335319, -0.054112, 0.940549,
		0.364476, -0.928061, 0.076547,
		0.868745, 0.368475, 0.330919,
		37.192562, 32.477188, 39.071609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566708, 31.943476, 39.520180>,  <36.584438, 32.219257, 38.839966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566708, 31.943476, 39.520180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876114, 32.196949, 39.515907>,  <37.061760, 32.349033, 39.513344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876114, 32.196949, 39.515907>,  <36.566708, 31.943476, 39.520180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876114, 32.196949, 39.515907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047859, 0.075205, 0.996019,
		0.631966, -0.769927, 0.088500,
		0.773517, 0.633685, -0.010680,
		37.108170, 32.387054, 39.512703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069115, 31.683939, 39.822033>,  <36.566708, 31.943476, 39.520180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069115, 31.683939, 39.822033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135605, 32.076790, 39.857361>,  <37.175499, 32.312500, 39.878559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135605, 32.076790, 39.857361>,  <37.069115, 31.683939, 39.822033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135605, 32.076790, 39.857361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092302, -0.073676, 0.993002,
		0.981759, -0.173212, 0.078406,
		0.166223, 0.982125, 0.088320,
		37.185471, 32.371426, 39.883858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489254, 31.800245, 40.447170>,  <37.069115, 31.683939, 39.822033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489254, 31.800245, 40.447170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332134, 32.163250, 40.387665>,  <37.237862, 32.381054, 40.351963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332134, 32.163250, 40.387665>,  <37.489254, 31.800245, 40.447170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332134, 32.163250, 40.387665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220723, 0.063997, 0.973235,
		0.892742, 0.415122, 0.175171,
		-0.392801, 0.907512, -0.148759,
		37.214294, 32.435505, 40.343037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775620, 32.317783, 40.941437>,  <37.489254, 31.800245, 40.447170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775620, 32.317783, 40.941437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436840, 32.485344, 40.810471>,  <37.233574, 32.585880, 40.731892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436840, 32.485344, 40.810471>,  <37.775620, 32.317783, 40.941437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436840, 32.485344, 40.810471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265395, 0.200521, 0.943057,
		0.460700, 0.885616, -0.058657,
		-0.846948, 0.418899, -0.327419,
		37.182755, 32.611015, 40.712246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682789, 32.911842, 41.338596>,  <37.775620, 32.317783, 40.941437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682789, 32.911842, 41.338596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322601, 32.856625, 41.173626>,  <37.106487, 32.823494, 41.074642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322601, 32.856625, 41.173626>,  <37.682789, 32.911842, 41.338596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322601, 32.856625, 41.173626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434781, 0.262161, 0.861532,
		-0.010804, 0.955100, -0.296086,
		-0.900472, -0.138040, -0.412427,
		37.052460, 32.815212, 41.049896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308289, 33.600559, 41.352005>,  <37.682789, 32.911842, 41.338596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308289, 33.600559, 41.352005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031036, 33.312401, 41.342201>,  <36.864685, 33.139507, 41.336319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031036, 33.312401, 41.342201>,  <37.308289, 33.600559, 41.352005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031036, 33.312401, 41.342201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394527, 0.350702, 0.849327,
		-0.603252, 0.598368, -0.527298,
		-0.693135, -0.720391, -0.024511,
		36.823097, 33.096283, 41.334846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746906, 33.875576, 41.696896>,  <37.308289, 33.600559, 41.352005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746906, 33.875576, 41.696896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632671, 33.492329, 41.688374>,  <36.564133, 33.262383, 41.683258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632671, 33.492329, 41.688374>,  <36.746906, 33.875576, 41.696896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632671, 33.492329, 41.688374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614424, 0.165988, 0.771318,
		-0.735475, 0.233368, -0.636094,
		-0.285585, -0.958116, -0.021307,
		36.546997, 33.204895, 41.681980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975101, 33.871323, 41.829243>,  <36.746906, 33.875576, 41.696896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975101, 33.871323, 41.829243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123173, 33.516201, 41.938622>,  <36.212017, 33.303127, 42.004250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123173, 33.516201, 41.938622>,  <35.975101, 33.871323, 41.829243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123173, 33.516201, 41.938622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453496, 0.084192, 0.887272,
		-0.810745, -0.452458, -0.371449,
		0.370181, -0.887803, 0.273446,
		36.234226, 33.249859, 42.020657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401558, 33.480160, 42.178986>,  <35.975101, 33.871323, 41.829243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401558, 33.480160, 42.178986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736626, 33.294239, 42.293716>,  <35.937668, 33.182686, 42.362556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736626, 33.294239, 42.293716>,  <35.401558, 33.480160, 42.178986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736626, 33.294239, 42.293716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305286, 0.037005, 0.951541,
		-0.452890, -0.884642, -0.110900,
		0.837670, -0.464800, 0.286828,
		35.987926, 33.154800, 42.379765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224777, 32.890682, 42.552940>,  <35.401558, 33.480160, 42.178986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224777, 32.890682, 42.552940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600601, 32.956203, 42.673203>,  <35.826096, 32.995518, 42.745358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600601, 32.956203, 42.673203>,  <35.224777, 32.890682, 42.552940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600601, 32.956203, 42.673203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298243, -0.039707, 0.953664,
		0.168153, -0.985693, 0.011547,
		0.939561, 0.163805, 0.300653,
		35.882469, 33.005344, 42.763397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315887, 32.454330, 43.122444>,  <35.224777, 32.890682, 42.552940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315887, 32.454330, 43.122444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588734, 32.745781, 43.147152>,  <35.752441, 32.920650, 43.161976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588734, 32.745781, 43.147152>,  <35.315887, 32.454330, 43.122444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588734, 32.745781, 43.147152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134181, 0.041683, 0.990080,
		0.718826, -0.683639, 0.126201,
		0.682118, 0.728629, 0.061768,
		35.793369, 32.964371, 43.165684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655704, 32.333202, 43.841354>,  <35.315887, 32.454330, 43.122444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655704, 32.333202, 43.841354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752644, 32.703537, 43.725365>,  <35.810806, 32.925739, 43.655769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752644, 32.703537, 43.725365>,  <35.655704, 32.333202, 43.841354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752644, 32.703537, 43.725365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113337, 0.323858, 0.939292,
		0.963548, -0.194766, 0.183418,
		0.242344, 0.925841, -0.289979,
		35.825348, 32.981289, 43.638371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160030, 32.584290, 44.288834>,  <35.655704, 32.333202, 43.841354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160030, 32.584290, 44.288834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006348, 32.916866, 44.128288>,  <35.914139, 33.116413, 44.031960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006348, 32.916866, 44.128288>,  <36.160030, 32.584290, 44.288834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006348, 32.916866, 44.128288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056917, 0.412575, 0.909144,
		0.921491, 0.372144, -0.111192,
		-0.384208, 0.831439, -0.401365,
		35.891087, 33.166298, 44.007877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596401, 33.074383, 44.437664>,  <36.160030, 32.584290, 44.288834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596401, 33.074383, 44.437664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240475, 33.249805, 44.387218>,  <36.026920, 33.355057, 44.356953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240475, 33.249805, 44.387218>,  <36.596401, 33.074383, 44.437664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240475, 33.249805, 44.387218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045661, 0.360543, 0.931624,
		0.454037, 0.823212, -0.340840,
		-0.889812, 0.438555, -0.126111,
		35.973530, 33.381371, 44.349384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647251, 33.778492, 44.795040>,  <36.596401, 33.074383, 44.437664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647251, 33.778492, 44.795040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258499, 33.701878, 44.740238>,  <36.025249, 33.655910, 44.707359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258499, 33.701878, 44.740238>,  <36.647251, 33.778492, 44.795040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258499, 33.701878, 44.740238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199510, 0.360639, 0.911117,
		-0.125105, 0.912827, -0.388710,
		-0.971877, -0.191537, -0.137000,
		35.966934, 33.644417, 44.699139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307686, 34.307755, 45.091335>,  <36.647251, 33.778492, 44.795040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307686, 34.307755, 45.091335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979542, 34.079765, 45.072807>,  <35.782658, 33.942970, 45.061691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979542, 34.079765, 45.072807>,  <36.307686, 34.307755, 45.091335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979542, 34.079765, 45.072807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342561, 0.424954, 0.837894,
		-0.457894, 0.703239, -0.543864,
		-0.820357, -0.569973, -0.046319,
		35.733437, 33.908772, 45.058910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864613, 34.769794, 45.094864>,  <36.307686, 34.307755, 45.091335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864613, 34.769794, 45.094864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697739, 34.429882, 45.223751>,  <35.597614, 34.225933, 45.301083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697739, 34.429882, 45.223751>,  <35.864613, 34.769794, 45.094864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697739, 34.429882, 45.223751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332335, 0.472631, 0.816195,
		-0.845879, 0.233419, -0.479587,
		-0.417183, -0.849786, 0.322215,
		35.572582, 34.174946, 45.320415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255402, 34.946545, 45.324757>,  <35.864613, 34.769794, 45.094864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255402, 34.946545, 45.324757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261936, 34.598423, 45.521656>,  <35.265858, 34.389549, 45.639797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261936, 34.598423, 45.521656>,  <35.255402, 34.946545, 45.324757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261936, 34.598423, 45.521656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437397, 0.436488, 0.786233,
		-0.899120, -0.228156, -0.373534,
		0.016341, -0.870301, 0.492250,
		35.266838, 34.337334, 45.669331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633823, 34.941971, 45.759098>,  <35.255402, 34.946545, 45.324757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633823, 34.941971, 45.759098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878380, 34.667336, 45.916481>,  <35.025112, 34.502556, 46.010910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878380, 34.667336, 45.916481>,  <34.633823, 34.941971, 45.759098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878380, 34.667336, 45.916481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429084, 0.130135, 0.893841,
		-0.664900, -0.715308, -0.215040,
		0.611387, -0.686586, 0.393454,
		35.061794, 34.461361, 46.034515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238522, 34.435265, 46.180611>,  <34.633823, 34.941971, 45.759098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238522, 34.435265, 46.180611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617504, 34.431404, 46.308510>,  <34.844894, 34.429089, 46.385250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617504, 34.431404, 46.308510>,  <34.238522, 34.435265, 46.180611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617504, 34.431404, 46.308510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317008, 0.105579, 0.942528,
		-0.042856, -0.994364, 0.096971,
		0.947454, -0.009652, 0.319746,
		34.901741, 34.428509, 46.404434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279755, 33.909916, 46.678036>,  <34.238522, 34.435265, 46.180611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279755, 33.909916, 46.678036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581429, 34.162159, 46.751286>,  <34.762436, 34.313503, 46.795235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581429, 34.162159, 46.751286>,  <34.279755, 33.909916, 46.678036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581429, 34.162159, 46.751286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236893, 0.001191, 0.971535,
		0.612438, -0.776102, 0.150284,
		0.754189, 0.630606, 0.183123,
		34.807686, 34.351341, 46.806221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484596, 33.796505, 47.336220>,  <34.279755, 33.909916, 46.678036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484596, 33.796505, 47.336220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739204, 34.098579, 47.273556>,  <34.891968, 34.279823, 47.235958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739204, 34.098579, 47.273556>,  <34.484596, 33.796505, 47.336220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739204, 34.098579, 47.273556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002911, 0.200765, 0.979635,
		0.771258, -0.624010, 0.125592,
		0.636517, 0.755186, -0.156658,
		34.930161, 34.325134, 47.226559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107143, 33.703186, 47.705845>,  <34.484596, 33.796505, 47.336220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107143, 33.703186, 47.705845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071400, 34.101032, 47.684853>,  <35.049953, 34.339741, 47.672256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071400, 34.101032, 47.684853>,  <35.107143, 33.703186, 47.705845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071400, 34.101032, 47.684853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096986, 0.043749, 0.994324,
		0.991266, 0.093938, 0.092555,
		-0.089356, 0.994616, -0.052478,
		35.044594, 34.399418, 47.669109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553585, 34.051464, 48.305389>,  <35.107143, 33.703186, 47.705845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553585, 34.051464, 48.305389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288288, 34.330776, 48.197674>,  <35.129108, 34.498363, 48.133045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288288, 34.330776, 48.197674>,  <35.553585, 34.051464, 48.305389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288288, 34.330776, 48.197674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052080, 0.315883, 0.947368,
		0.746589, 0.642361, -0.173141,
		-0.663244, 0.698277, -0.269289,
		35.089314, 34.540260, 48.116886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185307, 34.345848, 48.249252>,  <35.553585, 34.051464, 48.305389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185307, 34.345848, 48.249252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542713, 34.195309, 48.347221>,  <36.757156, 34.104984, 48.406002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542713, 34.195309, 48.347221>,  <36.185307, 34.345848, 48.249252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542713, 34.195309, 48.347221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138738, -0.287381, -0.947715,
		0.427055, 0.880782, -0.204566,
		0.893519, -0.376346, 0.244926,
		36.810768, 34.082405, 48.420700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559639, 34.624607, 47.739677>,  <36.185307, 34.345848, 48.249252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559639, 34.624607, 47.739677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793083, 34.328609, 47.873428>,  <36.933151, 34.151012, 47.953678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793083, 34.328609, 47.873428>,  <36.559639, 34.624607, 47.739677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793083, 34.328609, 47.873428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195863, -0.271342, -0.942343,
		0.788059, 0.615454, -0.013421,
		0.583610, -0.739994, 0.334378,
		36.968166, 34.106613, 47.973743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102272, 34.489616, 47.268463>,  <36.559639, 34.624607, 47.739677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102272, 34.489616, 47.268463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182701, 34.150585, 47.464905>,  <37.230961, 33.947166, 47.582767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182701, 34.150585, 47.464905>,  <37.102272, 34.489616, 47.268463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182701, 34.150585, 47.464905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450038, -0.365368, -0.814845,
		0.870077, 0.384860, 0.307976,
		0.201077, -0.847579, 0.491100,
		37.243023, 33.896313, 47.612236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837799, 34.229362, 47.201614>,  <37.102272, 34.489616, 47.268463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837799, 34.229362, 47.201614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618950, 33.906105, 47.288853>,  <37.487640, 33.712151, 47.341198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618950, 33.906105, 47.288853>,  <37.837799, 34.229362, 47.201614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618950, 33.906105, 47.288853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461736, -0.508704, -0.726649,
		0.698184, -0.296859, 0.651470,
		-0.547118, -0.808143, 0.218099,
		37.454815, 33.663662, 47.354282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309052, 33.718529, 47.231915>,  <37.837799, 34.229362, 47.201614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309052, 33.718529, 47.231915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956520, 33.538918, 47.173077>,  <37.745003, 33.431152, 47.137772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956520, 33.538918, 47.173077>,  <38.309052, 33.718529, 47.231915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956520, 33.538918, 47.173077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427800, -0.626108, -0.651902,
		0.200621, -0.637467, 0.743900,
		-0.881328, -0.449025, -0.147098,
		37.692123, 33.404209, 47.128948>
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
