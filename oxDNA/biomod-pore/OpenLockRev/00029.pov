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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.477150, 35.293129, 50.817757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391262, 35.130322, 50.462627>,  <40.339729, 35.032639, 50.249550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391262, 35.130322, 50.462627>,  <40.477150, 35.293129, 50.817757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391262, 35.130322, 50.462627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971016, 0.008753, -0.238855,
		0.104989, -0.913379, 0.393340,
		-0.214722, -0.407016, -0.887824,
		40.326847, 35.008217, 50.196281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782810, 34.633175, 50.720520>,  <40.477150, 35.293129, 50.817757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782810, 34.633175, 50.720520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754105, 34.884014, 50.410271>,  <40.736881, 35.034519, 50.224121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754105, 34.884014, 50.410271>,  <40.782810, 34.633175, 50.720520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754105, 34.884014, 50.410271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995297, -0.005705, -0.096700,
		-0.065065, -0.778919, -0.623740,
		-0.071762, 0.627099, -0.775627,
		40.732574, 35.072144, 50.177582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076027, 34.325924, 50.099468>,  <40.782810, 34.633175, 50.720520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076027, 34.325924, 50.099468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092709, 34.724056, 50.064671>,  <41.102718, 34.962936, 50.043793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092709, 34.724056, 50.064671>,  <41.076027, 34.325924, 50.099468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092709, 34.724056, 50.064671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972997, -0.060243, -0.222819,
		-0.227020, -0.075355, -0.970970,
		0.041704, 0.995335, -0.086996,
		41.105221, 35.022655, 50.038570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546146, 34.456024, 49.497303>,  <41.076027, 34.325924, 50.099468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546146, 34.456024, 49.497303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524960, 34.790367, 49.715855>,  <41.512249, 34.990974, 49.846985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524960, 34.790367, 49.715855>,  <41.546146, 34.456024, 49.497303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524960, 34.790367, 49.715855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990145, -0.027075, 0.137405,
		0.129644, 0.548276, -0.826187,
		-0.052967, 0.835859, 0.546383,
		41.509071, 35.041126, 49.879768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221199, 34.667828, 49.427368>,  <41.546146, 34.456024, 49.497303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221199, 34.667828, 49.427368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073013, 34.865070, 49.742226>,  <41.984100, 34.983418, 49.931141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073013, 34.865070, 49.742226>,  <42.221199, 34.667828, 49.427368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073013, 34.865070, 49.742226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928789, 0.206063, 0.308041,
		-0.010303, 0.845210, -0.534334,
		-0.370466, 0.493110, 0.787145,
		41.961872, 35.013004, 49.978371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550350, 35.260132, 49.498497>,  <42.221199, 34.667828, 49.427368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550350, 35.260132, 49.498497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409100, 35.217186, 49.870255>,  <42.324348, 35.191418, 50.093311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409100, 35.217186, 49.870255>,  <42.550350, 35.260132, 49.498497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409100, 35.217186, 49.870255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905713, 0.209756, 0.368357,
		-0.234497, 0.971841, 0.023176,
		-0.353123, -0.107369, 0.929396,
		42.303162, 35.184975, 50.149075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789776, 35.819233, 49.908363>,  <42.550350, 35.260132, 49.498497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789776, 35.819233, 49.908363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694298, 35.522095, 50.158550>,  <42.637012, 35.343811, 50.308662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694298, 35.522095, 50.158550>,  <42.789776, 35.819233, 49.908363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694298, 35.522095, 50.158550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895580, 0.080630, 0.437534,
		-0.375451, 0.664591, 0.646031,
		-0.238691, -0.742844, 0.625467,
		42.622692, 35.299240, 50.346191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044666, 35.934738, 50.509243>,  <42.789776, 35.819233, 49.908363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044666, 35.934738, 50.509243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989437, 35.539783, 50.540249>,  <42.956299, 35.302811, 50.558853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989437, 35.539783, 50.540249>,  <43.044666, 35.934738, 50.509243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989437, 35.539783, 50.540249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925703, -0.100824, 0.364566,
		-0.352152, 0.122090, 0.927945,
		-0.138069, -0.987385, 0.077514,
		42.948017, 35.243568, 50.563503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322636, 35.787952, 51.142632>,  <43.044666, 35.934738, 50.509243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322636, 35.787952, 51.142632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295094, 35.428757, 50.968792>,  <43.278568, 35.213242, 50.864487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295094, 35.428757, 50.968792>,  <43.322636, 35.787952, 51.142632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295094, 35.428757, 50.968792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902875, -0.241396, 0.355730,
		-0.424351, -0.367895, 0.827393,
		-0.068858, -0.897987, -0.434600,
		43.274437, 35.159359, 50.838413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458500, 35.261917, 51.668999>,  <43.322636, 35.787952, 51.142632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458500, 35.261917, 51.668999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524590, 35.052437, 51.334709>,  <43.564243, 34.926750, 51.134136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524590, 35.052437, 51.334709>,  <43.458500, 35.261917, 51.668999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524590, 35.052437, 51.334709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890321, -0.285349, 0.354831,
		-0.424299, -0.802692, 0.419115,
		0.165225, -0.523701, -0.835726,
		43.574158, 34.895329, 51.083992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589748, 34.518063, 51.822056>,  <43.458500, 35.261917, 51.668999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589748, 34.518063, 51.822056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777271, 34.667988, 51.502121>,  <43.889786, 34.757942, 51.310162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777271, 34.667988, 51.502121>,  <43.589748, 34.518063, 51.822056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777271, 34.667988, 51.502121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883079, -0.219233, 0.414860,
		-0.019857, -0.900808, -0.433764,
		0.468804, 0.374810, -0.799837,
		43.917912, 34.780430, 51.262169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166412, 34.307640, 51.988876>,  <43.589748, 34.518063, 51.822056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166412, 34.307640, 51.988876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235546, 34.514420, 51.653519>,  <44.277027, 34.638485, 51.452305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235546, 34.514420, 51.653519>,  <44.166412, 34.307640, 51.988876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235546, 34.514420, 51.653519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984945, -0.087629, 0.149013,
		0.003564, -0.851521, -0.524308,
		0.172833, 0.516945, -0.838389,
		44.287395, 34.669502, 51.402000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596725, 33.848469, 51.472946>,  <44.166412, 34.307640, 51.988876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596725, 33.848469, 51.472946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.667824, 34.227978, 51.368450>,  <44.710484, 34.455681, 51.305752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.667824, 34.227978, 51.368450>,  <44.596725, 33.848469, 51.472946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667824, 34.227978, 51.368450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980045, -0.146660, 0.134173,
		0.088986, -0.279873, -0.955904,
		0.177745, 0.948768, -0.261238,
		44.721146, 34.512608, 51.290077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976509, 33.851650, 50.956001>,  <44.596725, 33.848469, 51.472946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976509, 33.851650, 50.956001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038197, 34.210739, 51.121075>,  <45.075211, 34.426193, 51.220119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038197, 34.210739, 51.121075>,  <44.976509, 33.851650, 50.956001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038197, 34.210739, 51.121075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987617, -0.127900, -0.090851,
		-0.028777, 0.421581, -0.906334,
		0.154221, 0.897725, 0.412680,
		45.084461, 34.480057, 51.244877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681423, 33.954987, 50.789558>,  <44.976509, 33.851650, 50.956001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681423, 33.954987, 50.789558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614220, 34.296303, 50.987007>,  <45.573898, 34.501095, 51.105476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614220, 34.296303, 50.987007>,  <45.681423, 33.954987, 50.789558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614220, 34.296303, 50.987007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985430, 0.158819, 0.060860,
		-0.026465, 0.496654, -0.867545,
		-0.168009, 0.853294, 0.493621,
		45.563816, 34.552292, 51.135094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.950947, 34.567776, 50.416767>,  <45.681423, 33.954987, 50.789558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.950947, 34.567776, 50.416767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.932156, 34.647350, 50.808323>,  <45.920879, 34.695095, 51.043255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.932156, 34.647350, 50.808323>,  <45.950947, 34.567776, 50.416767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.932156, 34.647350, 50.808323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965993, 0.258495, -0.006170,
		-0.254265, 0.945308, -0.204311,
		-0.046981, 0.198932, 0.978887,
		45.918060, 34.707031, 51.101990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.253475, 35.270123, 50.576324>,  <45.950947, 34.567776, 50.416767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.253475, 35.270123, 50.576324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257713, 35.063911, 50.919048>,  <46.260258, 34.940186, 51.124683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257713, 35.063911, 50.919048>,  <46.253475, 35.270123, 50.576324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.257713, 35.063911, 50.919048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941691, 0.293334, 0.164843,
		-0.336312, 0.805103, 0.488573,
		0.010599, -0.515524, 0.856810,
		46.260895, 34.909256, 51.176090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.535629, 35.707306, 51.046200>,  <46.253475, 35.270123, 50.576324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.535629, 35.707306, 51.046200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588066, 35.336514, 51.186783>,  <46.619526, 35.114037, 51.271133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588066, 35.336514, 51.186783>,  <46.535629, 35.707306, 51.046200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.588066, 35.336514, 51.186783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960802, 0.206152, 0.185367,
		-0.244286, 0.313382, 0.917669,
		0.131088, -0.926981, 0.351458,
		46.627392, 35.058418, 51.292221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.941360, 35.826584, 51.531971>,  <46.535629, 35.707306, 51.046200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.941360, 35.826584, 51.531971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.005726, 35.438095, 51.461742>,  <47.044346, 35.205002, 51.419605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.005726, 35.438095, 51.461742>,  <46.941360, 35.826584, 51.531971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.005726, 35.438095, 51.461742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961816, 0.114406, 0.248639,
		-0.221398, -0.208879, 0.952551,
		0.160913, -0.971227, -0.175574,
		47.054001, 35.146729, 51.409069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.411636, 35.662884, 52.100224>,  <46.941360, 35.826584, 51.531971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.411636, 35.662884, 52.100224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.429321, 35.353592, 51.847191>,  <47.439934, 35.168015, 51.695374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.429321, 35.353592, 51.847191>,  <47.411636, 35.662884, 52.100224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.429321, 35.353592, 51.847191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980385, -0.088150, 0.176279,
		-0.192067, -0.627964, 0.754170,
		0.044217, -0.773234, -0.632577,
		47.442585, 35.121620, 51.657417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.718407, 35.105640, 52.453453>,  <47.411636, 35.662884, 52.100224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.718407, 35.105640, 52.453453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.781311, 35.069695, 52.060070>,  <47.819054, 35.048126, 51.824039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.781311, 35.069695, 52.060070>,  <47.718407, 35.105640, 52.453453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.781311, 35.069695, 52.060070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977013, -0.130972, 0.168200,
		-0.143921, -0.987305, 0.067203,
		0.157263, -0.089865, -0.983460,
		47.828491, 35.042736, 51.765034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.085922, 34.575104, 52.147690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.304895, 34.909191, 52.168575>,  <24.436279, 35.109642, 52.181107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.304895, 34.909191, 52.168575>,  <24.085922, 34.575104, 52.147690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.304895, 34.909191, 52.168575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817165, -0.520062, -0.248551,
		-0.180439, 0.178734, -0.967210,
		0.547434, 0.835218, 0.052216,
		24.469126, 35.159756, 52.184238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.567440, 34.519264, 51.629860>,  <24.085922, 34.575104, 52.147690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.567440, 34.519264, 51.629860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.753082, 34.815067, 51.824890>,  <24.864468, 34.992550, 51.941910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.753082, 34.815067, 51.824890>,  <24.567440, 34.519264, 51.629860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.753082, 34.815067, 51.824890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882818, -0.341196, -0.322827,
		-0.072374, 0.580269, -0.811203,
		0.464105, 0.739509, 0.487578,
		24.892313, 35.036919, 51.971165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.111670, 34.864784, 51.237511>,  <24.567440, 34.519264, 51.629860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.111670, 34.864784, 51.237511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.206079, 34.919144, 51.622391>,  <25.262726, 34.951759, 51.853317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.206079, 34.919144, 51.622391>,  <25.111670, 34.864784, 51.237511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.206079, 34.919144, 51.622391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930659, -0.316497, -0.183586,
		0.279583, 0.938808, -0.201179,
		0.236024, 0.135901, 0.962197,
		25.276886, 34.959915, 51.911049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667974, 35.307331, 51.075119>,  <25.111670, 34.864784, 51.237511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667974, 35.307331, 51.075119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.690111, 35.161934, 51.447102>,  <25.703392, 35.074696, 51.670292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.690111, 35.161934, 51.447102>,  <25.667974, 35.307331, 51.075119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690111, 35.161934, 51.447102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981406, -0.151641, -0.117674,
		0.183793, 0.919172, 0.348343,
		0.055340, -0.363493, 0.929952,
		25.706713, 35.052887, 51.726086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274038, 35.567982, 51.218731>,  <25.667974, 35.307331, 51.075119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274038, 35.567982, 51.218731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.183960, 35.290676, 51.492569>,  <26.129913, 35.124290, 51.656872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.183960, 35.290676, 51.492569>,  <26.274038, 35.567982, 51.218731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183960, 35.290676, 51.492569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972955, -0.197096, 0.120462,
		0.051418, 0.693206, 0.718903,
		-0.225198, -0.693267, 0.684593,
		26.116400, 35.082695, 51.697948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361809, 35.780022, 51.963242>,  <26.274038, 35.567982, 51.218731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.361809, 35.780022, 51.963242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.401733, 35.382416, 51.945496>,  <26.425688, 35.143852, 51.934849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.401733, 35.382416, 51.945496>,  <26.361809, 35.780022, 51.963242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401733, 35.382416, 51.945496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973370, 0.088296, 0.211551,
		-0.206368, -0.064301, 0.976359,
		0.099812, -0.994017, -0.044367,
		26.431677, 35.084209, 51.932186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784369, 35.574543, 52.547981>,  <26.361809, 35.780022, 51.963242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784369, 35.574543, 52.547981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.797415, 35.261311, 52.299557>,  <26.805243, 35.073372, 52.150501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.797415, 35.261311, 52.299557>,  <26.784369, 35.574543, 52.547981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797415, 35.261311, 52.299557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989590, -0.061848, 0.129950,
		-0.140173, -0.618834, 0.772914,
		0.032614, -0.783083, -0.621062,
		26.807199, 35.026386, 52.113239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430279, 35.162132, 52.741745>,  <26.784369, 35.574543, 52.547981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430279, 35.162132, 52.741745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.330469, 35.008625, 52.386112>,  <27.270584, 34.916523, 52.172733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.330469, 35.008625, 52.386112>,  <27.430279, 35.162132, 52.741745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330469, 35.008625, 52.386112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967123, -0.052198, -0.248895,
		0.049109, -0.921955, 0.384171,
		-0.249522, -0.383763, -0.889081,
		27.255613, 34.893497, 52.119389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858130, 34.485016, 52.612000>,  <27.430279, 35.162132, 52.741745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858130, 34.485016, 52.612000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.751791, 34.688076, 52.284191>,  <27.687988, 34.809910, 52.087505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.751791, 34.688076, 52.284191>,  <27.858130, 34.485016, 52.612000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751791, 34.688076, 52.284191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963771, 0.159089, -0.214095,
		0.021693, -0.846749, -0.531551,
		-0.265848, 0.507649, -0.819523,
		27.672037, 34.840370, 52.038334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296030, 34.165176, 52.173817>,  <27.858130, 34.485016, 52.612000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296030, 34.165176, 52.173817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.158417, 34.491657, 51.988148>,  <28.075848, 34.687546, 51.876747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.158417, 34.491657, 51.988148>,  <28.296030, 34.165176, 52.173817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158417, 34.491657, 51.988148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877633, 0.103802, -0.467958,
		-0.333766, -0.568367, -0.752037,
		-0.344035, 0.816201, -0.464172,
		28.055206, 34.736519, 51.848896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378157, 34.071648, 51.458092>,  <28.296030, 34.165176, 52.173817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378157, 34.071648, 51.458092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.323729, 34.465889, 51.498226>,  <28.291071, 34.702435, 51.522305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.323729, 34.465889, 51.498226>,  <28.378157, 34.071648, 51.458092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323729, 34.465889, 51.498226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824661, 0.168807, -0.539849,
		-0.549015, 0.009281, -0.835761,
		-0.136072, 0.985605, 0.100332,
		28.282907, 34.761570, 51.528324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553766, 34.425350, 50.739685>,  <28.378157, 34.071648, 51.458092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553766, 34.425350, 50.739685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.603065, 34.693649, 51.032234>,  <28.632645, 34.854630, 51.207764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.603065, 34.693649, 51.032234>,  <28.553766, 34.425350, 50.739685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603065, 34.693649, 51.032234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828491, 0.336143, -0.447895,
		-0.546271, 0.661135, -0.514283,
		0.123247, 0.670752, 0.731370,
		28.640039, 34.894875, 51.251644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812880, 35.049980, 50.410336>,  <28.553766, 34.425350, 50.739685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812880, 35.049980, 50.410336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.899397, 35.102478, 50.797321>,  <28.951307, 35.133976, 51.029514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.899397, 35.102478, 50.797321>,  <28.812880, 35.049980, 50.410336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899397, 35.102478, 50.797321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837433, 0.484484, -0.252946,
		-0.501919, 0.864899, -0.005114,
		0.216295, 0.131241, 0.967467,
		28.964285, 35.141850, 51.087563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191692, 35.566559, 50.426105>,  <28.812880, 35.049980, 50.410336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191692, 35.566559, 50.426105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.271721, 35.442410, 50.797836>,  <29.319738, 35.367920, 51.020874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.271721, 35.442410, 50.797836>,  <29.191692, 35.566559, 50.426105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271721, 35.442410, 50.797836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922702, 0.378698, -0.072169,
		-0.329534, 0.871927, 0.362147,
		0.200070, -0.310371, 0.929323,
		29.331741, 35.349297, 51.076633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506750, 36.140503, 50.632862>,  <29.191692, 35.566559, 50.426105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506750, 36.140503, 50.632862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.636934, 35.825321, 50.841938>,  <29.715044, 35.636211, 50.967384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.636934, 35.825321, 50.841938>,  <29.506750, 36.140503, 50.632862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636934, 35.825321, 50.841938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940350, 0.327649, -0.091592,
		-0.099088, 0.521319, 0.847589,
		0.325460, -0.787955, 0.522688,
		29.734571, 35.588936, 50.998745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158909, 36.389153, 50.952732>,  <29.506750, 36.140503, 50.632862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158909, 36.389153, 50.952732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.130693, 35.991238, 50.982162>,  <30.113764, 35.752487, 50.999821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.130693, 35.991238, 50.982162>,  <30.158909, 36.389153, 50.952732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130693, 35.991238, 50.982162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956992, -0.088299, -0.276349,
		0.281406, 0.050917, 0.958237,
		-0.070540, -0.994792, 0.073575,
		30.109531, 35.692799, 51.004234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717253, 36.231045, 51.306629>,  <30.158909, 36.389153, 50.952732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717253, 36.231045, 51.306629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.600075, 35.918140, 51.086723>,  <30.529768, 35.730396, 50.954781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.600075, 35.918140, 51.086723>,  <30.717253, 36.231045, 51.306629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600075, 35.918140, 51.086723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945338, -0.150828, -0.289115,
		0.143244, -0.604412, 0.783688,
		-0.292946, -0.782264, -0.549769,
		30.512192, 35.683460, 50.921791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256828, 35.717644, 51.458931>,  <30.717253, 36.231045, 51.306629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256828, 35.717644, 51.458931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.076185, 35.569191, 51.134384>,  <30.967800, 35.480122, 50.939655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.076185, 35.569191, 51.134384>,  <31.256828, 35.717644, 51.458931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076185, 35.569191, 51.134384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888233, -0.272849, -0.369588,
		-0.084215, -0.887590, 0.452871,
		-0.451608, -0.371130, -0.811365,
		30.940702, 35.457851, 50.890976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513109, 35.040104, 51.331646>,  <31.256828, 35.717644, 51.458931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513109, 35.040104, 51.331646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.376472, 35.180988, 50.983105>,  <31.294491, 35.265518, 50.773979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.376472, 35.180988, 50.983105>,  <31.513109, 35.040104, 51.331646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376472, 35.180988, 50.983105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804750, -0.369298, -0.464755,
		-0.485483, -0.859979, -0.157297,
		-0.341590, 0.352216, -0.871355,
		31.273996, 35.286652, 50.721699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730951, 34.495049, 50.852623>,  <31.513109, 35.040104, 51.331646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730951, 34.495049, 50.852623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.651928, 34.825058, 50.640850>,  <31.604513, 35.023064, 50.513786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.651928, 34.825058, 50.640850>,  <31.730951, 34.495049, 50.852623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651928, 34.825058, 50.640850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807110, -0.169628, -0.565508,
		-0.556367, -0.539031, -0.632377,
		-0.197558, 0.825028, -0.529433,
		31.592661, 35.072567, 50.482021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796143, 34.340019, 50.090313>,  <31.730951, 34.495049, 50.852623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796143, 34.340019, 50.090313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.829193, 34.737774, 50.116768>,  <31.849024, 34.976425, 50.132641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.829193, 34.737774, 50.116768>,  <31.796143, 34.340019, 50.090313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829193, 34.737774, 50.116768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791051, -0.025077, -0.611236,
		-0.606145, 0.102825, -0.788680,
		0.082628, 0.994383, 0.066139,
		31.853981, 35.036087, 50.136608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.116598, 34.803360, 35.260014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.364250, 35.105511, 35.174149>,  <24.512842, 35.286800, 35.122631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.364250, 35.105511, 35.174149>,  <24.116598, 34.803360, 35.260014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.364250, 35.105511, 35.174149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275074, 0.047424, 0.960253,
		0.735534, -0.653570, -0.178424,
		0.619131, 0.755379, -0.214662,
		24.549990, 35.332123, 35.109749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.829239, 34.708530, 35.493420>,  <24.116598, 34.803360, 35.260014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.829239, 34.708530, 35.493420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.737322, 35.097492, 35.477261>,  <24.682171, 35.330868, 35.467564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.737322, 35.097492, 35.477261>,  <24.829239, 34.708530, 35.493420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.737322, 35.097492, 35.477261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483703, 0.150131, 0.862260,
		0.844527, 0.178600, -0.504852,
		-0.229794, 0.972401, -0.040401,
		24.668385, 35.389214, 35.465141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441341, 35.133286, 35.422577>,  <24.829239, 34.708530, 35.493420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.441341, 35.133286, 35.422577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.094954, 35.238407, 35.592766>,  <24.887121, 35.301479, 35.694881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.094954, 35.238407, 35.592766>,  <25.441341, 35.133286, 35.422577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.094954, 35.238407, 35.592766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411458, -0.109157, 0.904868,
		0.284248, 0.958654, -0.013607,
		-0.865970, 0.262806, 0.425474,
		24.835163, 35.317249, 35.720409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470222, 35.045227, 36.078384>,  <25.441341, 35.133286, 35.422577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470222, 35.045227, 36.078384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.081371, 35.134987, 36.105545>,  <24.848061, 35.188843, 36.121841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.081371, 35.134987, 36.105545>,  <25.470222, 35.045227, 36.078384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081371, 35.134987, 36.105545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063038, -0.028792, 0.997596,
		0.225811, 0.974073, 0.013844,
		-0.972129, 0.224396, 0.067905,
		24.789732, 35.202305, 36.125916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.339535, 35.717587, 36.428967>,  <25.470222, 35.045227, 36.078384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.339535, 35.717587, 36.428967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.083807, 35.412842, 36.470615>,  <24.930370, 35.229996, 36.495605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.083807, 35.412842, 36.470615>,  <25.339535, 35.717587, 36.428967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083807, 35.412842, 36.470615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181802, -0.018188, 0.983167,
		-0.747140, 0.647488, 0.150136,
		-0.639320, -0.761858, 0.104125,
		24.892012, 35.184284, 36.501854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.879343, 35.925770, 36.943771>,  <25.339535, 35.717587, 36.428967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.879343, 35.925770, 36.943771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.917997, 35.528175, 36.923183>,  <24.941191, 35.289619, 36.910831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.917997, 35.528175, 36.923183>,  <24.879343, 35.925770, 36.943771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917997, 35.528175, 36.923183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187046, -0.032658, 0.981808,
		-0.977586, -0.104507, 0.182766,
		0.096638, -0.993988, -0.051473,
		24.946989, 35.229980, 36.907742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.357622, 35.589993, 37.293106>,  <24.879343, 35.925770, 36.943771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.357622, 35.589993, 37.293106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.698069, 35.381950, 37.321629>,  <24.902336, 35.257126, 37.338741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.698069, 35.381950, 37.321629>,  <24.357622, 35.589993, 37.293106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.698069, 35.381950, 37.321629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051900, 0.218529, 0.974449,
		-0.522403, -0.825671, 0.212987,
		0.851118, -0.520109, 0.071308,
		24.953403, 35.225918, 37.343021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.269039, 35.261288, 38.039505>,  <24.357622, 35.589993, 37.293106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.269039, 35.261288, 38.039505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.610317, 35.402794, 37.886189>,  <24.815084, 35.487698, 37.794201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.610317, 35.402794, 37.886189>,  <24.269039, 35.261288, 38.039505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.610317, 35.402794, 37.886189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104674, 0.603766, 0.790260,
		0.510978, -0.714367, 0.478101,
		0.853197, 0.353761, -0.383287,
		24.866276, 35.508923, 37.771202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.055403, 35.201626, 38.363579>,  <24.269039, 35.261288, 38.039505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.055403, 35.201626, 38.363579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.925817, 35.524082, 38.165516>,  <24.848066, 35.717556, 38.046680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.925817, 35.524082, 38.165516>,  <25.055403, 35.201626, 38.363579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.925817, 35.524082, 38.165516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119384, 0.554031, 0.823891,
		0.938507, 0.207797, -0.275727,
		-0.323964, 0.806145, -0.495154,
		24.828629, 35.765926, 38.016972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438883, 35.775715, 38.623318>,  <25.055403, 35.201626, 38.363579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.438883, 35.775715, 38.623318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.130934, 35.971310, 38.459274>,  <24.946165, 36.088669, 38.360847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.130934, 35.971310, 38.459274>,  <25.438883, 35.775715, 38.623318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130934, 35.971310, 38.459274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183809, 0.785264, 0.591249,
		0.611157, 0.379804, -0.694432,
		-0.769871, 0.488989, -0.410108,
		24.899973, 36.118008, 38.336243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614819, 36.455639, 38.192509>,  <25.438883, 35.775715, 38.623318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614819, 36.455639, 38.192509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.272570, 36.411160, 38.394714>,  <25.067221, 36.384472, 38.516037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.272570, 36.411160, 38.394714>,  <25.614819, 36.455639, 38.192509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.272570, 36.411160, 38.394714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147947, 0.883366, 0.444721,
		-0.496007, 0.455302, -0.739376,
		-0.855621, -0.111196, 0.505517,
		25.015882, 36.377800, 38.546368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.979298, 36.937057, 38.059448>,  <25.614819, 36.455639, 38.192509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.979298, 36.937057, 38.059448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.994678, 36.796329, 38.433559>,  <25.003906, 36.711891, 38.658028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.994678, 36.796329, 38.433559>,  <24.979298, 36.937057, 38.059448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.994678, 36.796329, 38.433559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183774, 0.922494, 0.339459,
		-0.982216, 0.158827, 0.100128,
		0.038452, -0.351823, 0.935277,
		25.006214, 36.690784, 38.714142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.842104, 37.584755, 38.525780>,  <24.979298, 36.937057, 38.059448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.842104, 37.584755, 38.525780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.014730, 37.286823, 38.729343>,  <25.118305, 37.108067, 38.851482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.014730, 37.286823, 38.729343>,  <24.842104, 37.584755, 38.525780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.014730, 37.286823, 38.729343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585809, 0.660407, 0.469777,
		-0.685989, 0.095385, 0.721333,
		0.431564, -0.744825, 0.508909,
		25.144199, 37.063377, 38.882015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.865271, 37.912685, 39.200203>,  <24.842104, 37.584755, 38.525780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.865271, 37.912685, 39.200203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.098818, 37.587959, 39.197292>,  <25.238945, 37.393124, 39.195545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.098818, 37.587959, 39.197292>,  <24.865271, 37.912685, 39.200203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.098818, 37.587959, 39.197292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695025, 0.495198, 0.521266,
		-0.419572, -0.309404, 0.853363,
		0.583866, -0.811818, -0.007272,
		25.273977, 37.344414, 39.195110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247568, 38.000916, 39.843670>,  <24.865271, 37.912685, 39.200203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247568, 38.000916, 39.843670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.440710, 37.724342, 39.628719>,  <25.556595, 37.558399, 39.499748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.440710, 37.724342, 39.628719>,  <25.247568, 38.000916, 39.843670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440710, 37.724342, 39.628719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856055, 0.243444, 0.455967,
		-0.184448, -0.680190, 0.709451,
		0.482855, -0.691431, -0.537377,
		25.585567, 37.516914, 39.467506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646011, 37.385303, 40.267281>,  <25.247568, 38.000916, 39.843670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646011, 37.385303, 40.267281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.824495, 37.495949, 39.926838>,  <25.931585, 37.562336, 39.722572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.824495, 37.495949, 39.926838>,  <25.646011, 37.385303, 40.267281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.824495, 37.495949, 39.926838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885533, 0.000964, 0.464575,
		0.129328, -0.960981, -0.244520,
		0.446212, 0.276613, -0.851105,
		25.958359, 37.578934, 39.671505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330305, 36.932610, 39.945133>,  <25.646011, 37.385303, 40.267281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330305, 36.932610, 39.945133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.313549, 37.326126, 39.875397>,  <26.303495, 37.562237, 39.833553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.313549, 37.326126, 39.875397>,  <26.330305, 36.932610, 39.945133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313549, 37.326126, 39.875397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822793, 0.132960, 0.552570,
		0.566795, -0.120300, -0.815028,
		-0.041892, 0.983794, -0.174343,
		26.300982, 37.621265, 39.823093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071953, 37.091923, 39.710133>,  <26.330305, 36.932610, 39.945133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071953, 37.091923, 39.710133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.836765, 37.327538, 39.931881>,  <26.695654, 37.468906, 40.064930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.836765, 37.327538, 39.931881>,  <27.071953, 37.091923, 39.710133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836765, 37.327538, 39.931881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714265, 0.056422, 0.697598,
		0.379633, 0.806133, -0.453903,
		-0.587967, 0.589038, 0.554373,
		26.660376, 37.504250, 40.098194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345999, 37.851017, 39.884716>,  <27.071953, 37.091923, 39.710133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345999, 37.851017, 39.884716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.086313, 37.783947, 40.181473>,  <26.930502, 37.743706, 40.359528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.086313, 37.783947, 40.181473>,  <27.345999, 37.851017, 39.884716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086313, 37.783947, 40.181473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668231, 0.340159, 0.661634,
		-0.363300, 0.925299, -0.108791,
		-0.649215, -0.167674, 0.741893,
		26.891548, 37.733646, 40.404041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169897, 38.473717, 40.256645>,  <27.345999, 37.851017, 39.884716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169897, 38.473717, 40.256645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.081255, 38.172604, 40.504585>,  <27.028070, 37.991936, 40.653351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.081255, 38.172604, 40.504585>,  <27.169897, 38.473717, 40.256645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081255, 38.172604, 40.504585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566564, 0.417964, 0.710148,
		-0.793660, 0.508558, 0.333875,
		-0.221604, -0.752778, 0.619852,
		27.014774, 37.946770, 40.690540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832153, 38.722637, 40.841888>,  <27.169897, 38.473717, 40.256645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832153, 38.722637, 40.841888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.036459, 38.384937, 40.906830>,  <27.159042, 38.182316, 40.945793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.036459, 38.384937, 40.906830>,  <26.832153, 38.722637, 40.841888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036459, 38.384937, 40.906830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533283, 0.459249, 0.710422,
		-0.674335, -0.276279, 0.684793,
		0.510766, -0.844251, 0.162353,
		27.189690, 38.131660, 40.955536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.847185, 38.586082, 41.574837>,  <26.832153, 38.722637, 40.841888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.847185, 38.586082, 41.574837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.165390, 38.432377, 41.387432>,  <27.356312, 38.340153, 41.274990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.165390, 38.432377, 41.387432>,  <26.847185, 38.586082, 41.574837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165390, 38.432377, 41.387432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588134, 0.303601, 0.749617,
		-0.145809, -0.871877, 0.467516,
		0.795511, -0.384262, -0.468513,
		27.404043, 38.317097, 41.246880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297707, 38.444321, 42.177864>,  <26.847185, 38.586082, 41.574837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297707, 38.444321, 42.177864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.545301, 38.402100, 41.866554>,  <27.693859, 38.376766, 41.679768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.545301, 38.402100, 41.866554>,  <27.297707, 38.444321, 42.177864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545301, 38.402100, 41.866554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778857, 0.210133, 0.590953,
		0.101163, -0.971958, 0.212283,
		0.618989, -0.105556, -0.778274,
		27.730999, 38.370434, 41.633072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757215, 37.977398, 42.139091>,  <27.297707, 38.444321, 42.177864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757215, 37.977398, 42.139091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.944773, 38.270912, 41.942440>,  <28.057308, 38.447021, 41.824448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.944773, 38.270912, 41.942440>,  <27.757215, 37.977398, 42.139091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944773, 38.270912, 41.942440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718544, 0.006787, 0.695448,
		0.513646, -0.679348, -0.524074,
		0.468895, 0.733784, -0.491628,
		28.085442, 38.491047, 41.794952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460707, 37.847069, 41.992397>,  <27.757215, 37.977398, 42.139091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460707, 37.847069, 41.992397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.394047, 38.238396, 42.041592>,  <28.354052, 38.473190, 42.071110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.394047, 38.238396, 42.041592>,  <28.460707, 37.847069, 41.992397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394047, 38.238396, 42.041592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603356, 0.002524, 0.797467,
		0.779865, 0.207103, -0.590694,
		-0.166649, 0.978316, 0.122988,
		28.344051, 38.531891, 42.078487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077452, 38.202122, 41.950977>,  <28.460707, 37.847069, 41.992397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077452, 38.202122, 41.950977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.816065, 38.405552, 42.175240>,  <28.659233, 38.527611, 42.309795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.816065, 38.405552, 42.175240>,  <29.077452, 38.202122, 41.950977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816065, 38.405552, 42.175240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526619, -0.226592, 0.819346,
		0.543742, 0.830664, -0.119757,
		-0.653466, 0.508579, 0.560651,
		28.620026, 38.558125, 42.343433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453171, 38.681503, 42.458851>,  <29.077452, 38.202122, 41.950977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453171, 38.681503, 42.458851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.101578, 38.560535, 42.606327>,  <28.890623, 38.487953, 42.694813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.101578, 38.560535, 42.606327>,  <29.453171, 38.681503, 42.458851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101578, 38.560535, 42.606327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457142, -0.314377, 0.831978,
		-0.135700, 0.899838, 0.414581,
		-0.878980, -0.302422, 0.368693,
		28.837883, 38.469810, 42.716934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352568, 38.888081, 43.241219>,  <29.453171, 38.681503, 42.458851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352568, 38.888081, 43.241219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.177044, 38.538830, 43.156277>,  <29.071730, 38.329281, 43.105312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.177044, 38.538830, 43.156277>,  <29.352568, 38.888081, 43.241219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177044, 38.538830, 43.156277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475662, -0.426203, 0.769479,
		-0.762359, 0.236645, 0.602335,
		-0.438810, -0.873127, -0.212357,
		29.045401, 38.276894, 43.092571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037199, 38.607906, 43.853741>,  <29.352568, 38.888081, 43.241219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037199, 38.607906, 43.853741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.134436, 38.304565, 43.611816>,  <29.192778, 38.122559, 43.466660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.134436, 38.304565, 43.611816>,  <29.037199, 38.607906, 43.853741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134436, 38.304565, 43.611816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541634, -0.411138, 0.733211,
		-0.804697, -0.505827, 0.310807,
		0.243094, -0.758357, -0.604815,
		29.207363, 38.077057, 43.430370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764114, 37.946648, 44.175316>,  <29.037199, 38.607906, 43.853741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764114, 37.946648, 44.175316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.091370, 37.861904, 43.961487>,  <29.287724, 37.811058, 43.833191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.091370, 37.861904, 43.961487>,  <28.764114, 37.946648, 44.175316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091370, 37.861904, 43.961487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371487, -0.514871, 0.772596,
		-0.438913, -0.830678, -0.342535,
		0.818140, -0.211855, -0.534570,
		29.336811, 37.798347, 43.801117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956247, 37.157669, 44.027866>,  <28.764114, 37.946648, 44.175316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956247, 37.157669, 44.027866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.269285, 37.402100, 44.075409>,  <29.457108, 37.548759, 44.103935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.269285, 37.402100, 44.075409>,  <28.956247, 37.157669, 44.027866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269285, 37.402100, 44.075409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251505, -0.485006, 0.837564,
		0.569465, -0.625580, -0.533253,
		0.782595, 0.611080, 0.118857,
		29.504065, 37.585423, 44.111065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424944, 36.718994, 44.422512>,  <28.956247, 37.157669, 44.027866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424944, 36.718994, 44.422512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.560179, 37.090469, 44.483475>,  <29.641319, 37.313354, 44.520054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.560179, 37.090469, 44.483475>,  <29.424944, 36.718994, 44.422512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560179, 37.090469, 44.483475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243301, -0.242688, 0.939099,
		0.909121, -0.280419, -0.308002,
		0.338089, 0.928692, 0.152406,
		29.661606, 37.369076, 44.529198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143461, 36.777584, 44.564095>,  <29.424944, 36.718994, 44.422512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143461, 36.777584, 44.564095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.963970, 37.078041, 44.757767>,  <29.856276, 37.258316, 44.873970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.963970, 37.078041, 44.757767>,  <30.143461, 36.777584, 44.564095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963970, 37.078041, 44.757767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291657, -0.389031, 0.873837,
		0.844736, 0.533329, -0.044506,
		-0.448729, 0.751142, 0.484178,
		29.829351, 37.303383, 44.903019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598562, 37.202881, 45.056183>,  <30.143461, 36.777584, 44.564095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598562, 37.202881, 45.056183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.219681, 37.145218, 45.170742>,  <29.992352, 37.110619, 45.239475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.219681, 37.145218, 45.170742>,  <30.598562, 37.202881, 45.056183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219681, 37.145218, 45.170742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319710, -0.357022, 0.877679,
		-0.024274, 0.922906, 0.384261,
		-0.947204, -0.144157, 0.286396,
		29.935520, 37.101971, 45.256660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398342, 37.500961, 45.766975>,  <30.598562, 37.202881, 45.056183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398342, 37.500961, 45.766975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.132418, 37.210007, 45.698940>,  <29.972862, 37.035435, 45.658119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.132418, 37.210007, 45.698940>,  <30.398342, 37.500961, 45.766975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132418, 37.210007, 45.698940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123302, -0.331423, 0.935390,
		-0.736764, 0.600886, 0.310022,
		-0.664812, -0.727389, -0.170091,
		29.932974, 36.991791, 45.647915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935812, 37.889755, 46.178070>,  <30.398342, 37.500961, 45.766975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935812, 37.889755, 46.178070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.012926, 37.620903, 46.464031>,  <31.059195, 37.459591, 46.635609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.012926, 37.620903, 46.464031>,  <30.935812, 37.889755, 46.178070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012926, 37.620903, 46.464031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162554, -0.696622, -0.698780,
		0.967683, 0.250924, -0.025041,
		0.192785, -0.672127, 0.714898,
		31.070761, 37.419266, 46.678501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535706, 37.569275, 45.956036>,  <30.935812, 37.889755, 46.178070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535706, 37.569275, 45.956036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.357368, 37.291336, 46.181751>,  <31.250366, 37.124573, 46.317181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.357368, 37.291336, 46.181751>,  <31.535706, 37.569275, 45.956036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357368, 37.291336, 46.181751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203048, -0.692483, -0.692271,
		0.871778, -0.194065, 0.449823,
		-0.445840, -0.694843, 0.564287,
		31.223616, 37.082882, 46.351036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055862, 36.950073, 46.084717>,  <31.535706, 37.569275, 45.956036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055862, 36.950073, 46.084717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.676319, 36.835106, 46.136971>,  <31.448593, 36.766125, 46.168324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.676319, 36.835106, 46.136971>,  <32.055862, 36.950073, 46.084717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676319, 36.835106, 46.136971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167245, -0.808556, -0.564151,
		0.267774, -0.513449, 0.815271,
		-0.948855, -0.287415, 0.130638,
		31.391663, 36.748882, 46.176163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324833, 36.649979, 46.793053>,  <32.055862, 36.950073, 46.084717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324833, 36.649979, 46.793053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.552269, 36.320984, 46.799038>,  <32.688732, 36.123589, 46.802628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.552269, 36.320984, 46.799038>,  <32.324833, 36.649979, 46.793053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552269, 36.320984, 46.799038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708242, 0.498704, 0.499687,
		-0.418445, -0.273524, 0.866077,
		0.568592, -0.822484, 0.014959,
		32.722847, 36.074238, 46.803524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539955, 36.438313, 47.512371>,  <32.324833, 36.649979, 46.793053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539955, 36.438313, 47.512371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.821007, 36.281704, 47.274712>,  <32.989639, 36.187740, 47.132114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.821007, 36.281704, 47.274712>,  <32.539955, 36.438313, 47.512371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821007, 36.281704, 47.274712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711356, 0.366927, 0.599447,
		-0.016686, -0.843845, 0.536327,
		0.702633, -0.391522, -0.594152,
		33.031796, 36.164246, 47.096466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134548, 35.923920, 47.859871>,  <32.539955, 36.438313, 47.512371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134548, 35.923920, 47.859871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.193153, 36.190083, 47.567089>,  <33.228317, 36.349781, 47.391418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.193153, 36.190083, 47.567089>,  <33.134548, 35.923920, 47.859871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193153, 36.190083, 47.567089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465147, 0.606693, 0.644641,
		0.873025, -0.434918, -0.220623,
		0.146515, 0.665410, -0.731959,
		33.237106, 36.389706, 47.347500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859653, 35.924877, 48.490227>,  <33.134548, 35.923920, 47.859871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859653, 35.924877, 48.490227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.930332, 35.728580, 48.831509>,  <32.972740, 35.610802, 49.036278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.930332, 35.728580, 48.831509>,  <32.859653, 35.924877, 48.490227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930332, 35.728580, 48.831509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981727, 0.025645, -0.188560,
		0.070654, 0.870928, 0.486304,
		0.176693, -0.490740, 0.853202,
		32.983341, 35.581360, 49.087471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419437, 36.202179, 48.695232>,  <32.859653, 35.924877, 48.490227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419437, 36.202179, 48.695232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.450001, 35.867573, 48.912266>,  <33.468338, 35.666809, 49.042484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.450001, 35.867573, 48.912266>,  <33.419437, 36.202179, 48.695232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450001, 35.867573, 48.912266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993421, 0.110422, 0.030347,
		-0.085299, 0.536696, 0.839453,
		0.076406, -0.836519, 0.542584,
		33.472923, 35.616615, 49.075043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932064, 36.349617, 49.246746>,  <33.419437, 36.202179, 48.695232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932064, 36.349617, 49.246746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907829, 35.954742, 49.187702>,  <33.893288, 35.717819, 49.152275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907829, 35.954742, 49.187702>,  <33.932064, 36.349617, 49.246746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907829, 35.954742, 49.187702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998159, -0.059509, -0.011741,
		0.002806, -0.148052, 0.988976,
		-0.060591, -0.987188, -0.147612,
		33.889652, 35.658585, 49.143417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448860, 36.105862, 49.662415>,  <33.932064, 36.349617, 49.246746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448860, 36.105862, 49.662415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.380901, 35.819744, 49.391273>,  <34.340126, 35.648071, 49.228588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.380901, 35.819744, 49.391273>,  <34.448860, 36.105862, 49.662415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380901, 35.819744, 49.391273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977934, -0.207236, -0.026422,
		-0.121576, -0.667386, 0.734721,
		-0.169894, -0.715297, -0.677854,
		34.329933, 35.605156, 49.187916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058468, 35.703999, 49.712849>,  <34.448860, 36.105862, 49.662415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058468, 35.703999, 49.712849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891445, 35.539165, 49.388916>,  <34.791233, 35.440266, 49.194557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891445, 35.539165, 49.388916>,  <35.058468, 35.703999, 49.712849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891445, 35.539165, 49.388916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895663, -0.336813, -0.290423,
		-0.153083, -0.846606, 0.509730,
		-0.417557, -0.412087, -0.809834,
		34.766178, 35.415539, 49.145966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086800, 34.990498, 49.689800>,  <35.058468, 35.703999, 49.712849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086800, 34.990498, 49.689800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.073677, 35.085114, 49.301373>,  <35.065804, 35.141884, 49.068317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.073677, 35.085114, 49.301373>,  <35.086800, 34.990498, 49.689800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073677, 35.085114, 49.301373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896324, -0.422892, -0.133287,
		-0.442184, -0.874765, -0.198141,
		-0.032803, 0.236535, -0.971069,
		35.063835, 35.156075, 49.010052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482365, 34.527878, 49.418503>,  <35.086800, 34.990498, 49.689800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482365, 34.527878, 49.418503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434048, 34.789570, 49.119869>,  <35.405056, 34.946587, 48.940689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434048, 34.789570, 49.119869>,  <35.482365, 34.527878, 49.418503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434048, 34.789570, 49.119869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890144, -0.261505, -0.373174,
		-0.439378, -0.709647, -0.550770,
		-0.120793, 0.654229, -0.746588,
		35.397808, 34.985840, 48.895893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578724, 34.106213, 48.863007>,  <35.482365, 34.527878, 49.418503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578724, 34.106213, 48.863007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.673748, 34.487244, 48.786942>,  <35.730762, 34.715862, 48.741302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.673748, 34.487244, 48.786942>,  <35.578724, 34.106213, 48.863007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673748, 34.487244, 48.786942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928319, -0.280274, -0.244276,
		-0.285990, -0.118506, -0.950876,
		0.237558, 0.952577, -0.190167,
		35.745014, 34.773018, 48.729893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944447, 34.077934, 48.203819>,  <35.578724, 34.106213, 48.863007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944447, 34.077934, 48.203819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.044949, 34.453629, 48.297386>,  <36.105247, 34.679043, 48.353527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.044949, 34.453629, 48.297386>,  <35.944447, 34.077934, 48.203819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044949, 34.453629, 48.297386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949894, -0.192837, -0.245998,
		-0.185941, 0.284005, -0.940621,
		0.251251, 0.939231, 0.233918,
		36.120323, 34.735397, 48.367561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211124, 34.346779, 47.598270>,  <35.944447, 34.077934, 48.203819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211124, 34.346779, 47.598270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.356983, 34.567673, 47.898155>,  <36.444500, 34.700207, 48.078087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.356983, 34.567673, 47.898155>,  <36.211124, 34.346779, 47.598270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356983, 34.567673, 47.898155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925071, -0.123023, -0.359318,
		-0.106195, 0.824564, -0.555714,
		0.364646, 0.552232, 0.749715,
		36.466377, 34.733341, 48.123070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595715, 34.893845, 47.273140>,  <36.211124, 34.346779, 47.598270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595715, 34.893845, 47.273140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.721371, 34.830757, 47.647614>,  <36.796764, 34.792904, 47.872299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.721371, 34.830757, 47.647614>,  <36.595715, 34.893845, 47.273140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721371, 34.830757, 47.647614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900881, -0.261610, -0.346372,
		0.299545, 0.952200, 0.059903,
		0.314145, -0.157719, 0.936183,
		36.815613, 34.783440, 47.928467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264999, 35.143322, 47.331474>,  <36.595715, 34.893845, 47.273140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264999, 35.143322, 47.331474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.225945, 34.872532, 47.623272>,  <37.202511, 34.710056, 47.798351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.225945, 34.872532, 47.623272>,  <37.264999, 35.143322, 47.331474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225945, 34.872532, 47.623272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811526, -0.478466, -0.335404,
		0.576101, 0.559260, 0.596101,
		-0.097636, -0.676978, 0.729499,
		37.196655, 34.669437, 47.842121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912663, 35.047607, 47.519928>,  <37.264999, 35.143322, 47.331474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912663, 35.047607, 47.519928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.725266, 34.726109, 47.666630>,  <37.612827, 34.533211, 47.754650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.725266, 34.726109, 47.666630>,  <37.912663, 35.047607, 47.519928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725266, 34.726109, 47.666630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827771, -0.544413, -0.135682,
		0.308718, 0.240020, 0.920372,
		-0.468496, -0.803744, 0.366751,
		37.584717, 34.484985, 47.776653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706310, 35.130478, 47.427727>,  <37.912663, 35.047607, 47.519928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706310, 35.130478, 47.427727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.028534, 35.173920, 47.660717>,  <39.221867, 35.199986, 47.800510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.028534, 35.173920, 47.660717>,  <38.706310, 35.130478, 47.427727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028534, 35.173920, 47.660717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078758, -0.993961, 0.076412,
		0.587261, -0.015680, -0.809246,
		0.805557, 0.108609, 0.582480,
		39.270203, 35.206501, 47.835461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219013, 34.637753, 47.183506>,  <38.706310, 35.130478, 47.427727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219013, 34.637753, 47.183506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.303295, 34.724995, 47.564671>,  <39.353863, 34.777340, 47.793369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.303295, 34.724995, 47.564671>,  <39.219013, 34.637753, 47.183506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303295, 34.724995, 47.564671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045373, -0.975924, 0.213340,
		0.976497, -0.001715, -0.215526,
		0.210703, 0.218105, 0.952909,
		39.366505, 34.790424, 47.850544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813599, 34.247520, 47.455101>,  <39.219013, 34.637753, 47.183506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813599, 34.247520, 47.455101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.567188, 34.347900, 47.753777>,  <39.419342, 34.408127, 47.932980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.567188, 34.347900, 47.753777>,  <39.813599, 34.247520, 47.455101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567188, 34.347900, 47.753777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149838, -0.967922, 0.201680,
		0.773343, 0.012359, 0.633867,
		-0.616027, 0.250945, 0.746684,
		39.382381, 34.423183, 47.977783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972939, 34.315136, 48.153633>,  <39.813599, 34.247520, 47.455101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972939, 34.315136, 48.153633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698406, 34.061653, 48.010880>,  <39.533688, 33.909565, 47.925228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698406, 34.061653, 48.010880>,  <39.972939, 34.315136, 48.153633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698406, 34.061653, 48.010880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694150, -0.717205, -0.061421,
		-0.217036, -0.289885, 0.932128,
		-0.686332, -0.633706, -0.356883,
		39.492508, 33.871540, 47.903816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050587, 34.237587, 48.903111>,  <39.972939, 34.315136, 48.153633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050587, 34.237587, 48.903111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.298561, 34.156017, 49.206188>,  <40.447346, 34.107075, 49.388035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.298561, 34.156017, 49.206188>,  <40.050587, 34.237587, 48.903111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298561, 34.156017, 49.206188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768474, 0.037284, 0.638794,
		-0.158514, -0.978277, -0.133595,
		0.619936, -0.203922, 0.757690,
		40.484543, 34.094841, 49.433495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864433, 33.589230, 49.455399>,  <40.050587, 34.237587, 48.903111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864433, 33.589230, 49.455399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.078014, 33.825943, 49.696953>,  <40.206165, 33.967972, 49.841885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.078014, 33.825943, 49.696953>,  <39.864433, 33.589230, 49.455399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078014, 33.825943, 49.696953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745846, -0.006747, 0.666084,
		0.398253, -0.806067, 0.437778,
		0.533955, 0.591785, 0.603889,
		40.238201, 34.003479, 49.878120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787132, 33.416538, 50.131969>,  <39.864433, 33.589230, 49.455399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787132, 33.416538, 50.131969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.857838, 33.810059, 50.143894>,  <39.900261, 34.046169, 50.151051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.857838, 33.810059, 50.143894>,  <39.787132, 33.416538, 50.131969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857838, 33.810059, 50.143894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761414, 0.117488, 0.637531,
		0.623700, -0.135397, 0.769848,
		0.176768, 0.983801, 0.029816,
		39.910870, 34.105198, 50.152840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044064, 33.610695, 50.725624>,  <39.787132, 33.416538, 50.131969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044064, 33.610695, 50.725624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.858852, 33.925846, 50.563217>,  <39.747726, 34.114937, 50.465771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.858852, 33.925846, 50.563217>,  <40.044064, 33.610695, 50.725624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858852, 33.925846, 50.563217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482132, 0.160501, 0.861271,
		0.743745, 0.594546, 0.305546,
		-0.463025, 0.787880, -0.406021,
		39.719944, 34.162209, 50.441410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819790, 33.947910, 51.339222>,  <40.044064, 33.610695, 50.725624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819790, 33.947910, 51.339222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.625256, 34.148548, 51.053040>,  <39.508533, 34.268932, 50.881329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.625256, 34.148548, 51.053040>,  <39.819790, 33.947910, 51.339222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625256, 34.148548, 51.053040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608959, 0.392628, 0.689211,
		0.626615, 0.770871, 0.114504,
		-0.486336, 0.501598, -0.715456,
		39.479355, 34.299026, 50.838402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680149, 34.561787, 51.623970>,  <39.819790, 33.947910, 51.339222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680149, 34.561787, 51.623970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.401752, 34.488724, 51.346195>,  <39.234715, 34.444885, 51.179531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.401752, 34.488724, 51.346195>,  <39.680149, 34.561787, 51.623970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401752, 34.488724, 51.346195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713604, 0.283458, 0.640642,
		0.079824, 0.941429, -0.327628,
		-0.695987, -0.182658, -0.694434,
		39.192955, 34.433926, 51.137867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326046, 35.191322, 51.579151>,  <39.680149, 34.561787, 51.623970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326046, 35.191322, 51.579151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.085300, 34.896172, 51.456966>,  <38.940853, 34.719082, 51.383656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.085300, 34.896172, 51.456966>,  <39.326046, 35.191322, 51.579151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085300, 34.896172, 51.456966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720182, 0.336200, 0.606883,
		-0.345107, 0.585246, -0.733749,
		-0.601862, -0.737873, -0.305459,
		38.904743, 34.674809, 51.365330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592621, 35.477890, 51.565777>,  <39.326046, 35.191322, 51.579151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592621, 35.477890, 51.565777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.553169, 35.079994, 51.576855>,  <38.529499, 34.841255, 51.583504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.553169, 35.079994, 51.576855>,  <38.592621, 35.477890, 51.565777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553169, 35.079994, 51.576855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820472, 0.097040, 0.563391,
		-0.563114, 0.032844, -0.825726,
		-0.098632, -0.994739, 0.027697,
		38.523579, 34.781574, 51.585163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912586, 35.388088, 51.345791>,  <38.592621, 35.477890, 51.565777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912586, 35.388088, 51.345791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043850, 35.068352, 51.547131>,  <38.122608, 34.876511, 51.667934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043850, 35.068352, 51.547131>,  <37.912586, 35.388088, 51.345791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043850, 35.068352, 51.547131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782300, 0.068692, 0.619102,
		-0.529453, -0.596932, -0.602787,
		0.328155, -0.799346, 0.503349,
		38.142296, 34.828548, 51.698135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299252, 34.973835, 51.601135>,  <37.912586, 35.388088, 51.345791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299252, 34.973835, 51.601135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597168, 34.841129, 51.832726>,  <37.775917, 34.761505, 51.971680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597168, 34.841129, 51.832726>,  <37.299252, 34.973835, 51.601135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597168, 34.841129, 51.832726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632707, -0.075389, 0.770713,
		-0.212047, -0.940345, -0.266059,
		0.744793, -0.331764, 0.578977,
		37.820606, 34.741600, 52.006420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045235, 34.272949, 51.962650>,  <37.299252, 34.973835, 51.601135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045235, 34.272949, 51.962650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.334641, 34.431252, 52.188889>,  <37.508286, 34.526234, 52.324631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.334641, 34.431252, 52.188889>,  <37.045235, 34.272949, 51.962650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334641, 34.431252, 52.188889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586239, -0.080351, 0.806144,
		0.364486, -0.914832, 0.173875,
		0.723515, 0.395760, 0.565597,
		37.551697, 34.549980, 52.358566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033291, 33.814472, 52.506447>,  <37.045235, 34.272949, 51.962650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033291, 33.814472, 52.506447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228905, 34.134762, 52.644829>,  <37.346275, 34.326935, 52.727859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228905, 34.134762, 52.644829>,  <37.033291, 33.814472, 52.506447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228905, 34.134762, 52.644829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428219, -0.125139, 0.894969,
		0.759914, -0.585818, 0.281687,
		0.489039, 0.800723, 0.345953,
		37.375618, 34.374977, 52.748615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296532, 33.556801, 53.154099>,  <37.033291, 33.814472, 52.506447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296532, 33.556801, 53.154099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.310642, 33.956440, 53.163574>,  <37.319107, 34.196224, 53.169258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.310642, 33.956440, 53.163574>,  <37.296532, 33.556801, 53.154099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310642, 33.956440, 53.163574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214454, -0.015581, 0.976610,
		0.976097, -0.039531, 0.213711,
		0.035277, 0.999097, 0.023686,
		37.321224, 34.256168, 53.170681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551662, 33.756878, 53.824818>,  <37.296532, 33.556801, 53.154099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551662, 33.756878, 53.824818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.393089, 34.099762, 53.693344>,  <37.297947, 34.305492, 53.614460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.393089, 34.099762, 53.693344>,  <37.551662, 33.756878, 53.824818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393089, 34.099762, 53.693344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227885, 0.254929, 0.939723,
		0.889331, 0.447439, 0.094283,
		-0.396433, 0.857210, -0.328681,
		37.274158, 34.356926, 53.594742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860428, 34.287380, 54.219353>,  <37.551662, 33.756878, 53.824818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860428, 34.287380, 54.219353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543507, 34.479233, 54.068508>,  <37.353355, 34.594345, 53.978001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543507, 34.479233, 54.068508>,  <37.860428, 34.287380, 54.219353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543507, 34.479233, 54.068508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251804, 0.305943, 0.918147,
		0.555746, 0.822407, -0.121626,
		-0.792301, 0.479631, -0.377112,
		37.305817, 34.623123, 53.955376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821648, 34.915588, 54.558132>,  <37.860428, 34.287380, 54.219353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821648, 34.915588, 54.558132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.450405, 34.845566, 54.426701>,  <37.227657, 34.803551, 54.347839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.450405, 34.845566, 54.426701>,  <37.821648, 34.915588, 54.558132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450405, 34.845566, 54.426701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371297, 0.370303, 0.851478,
		-0.027385, 0.912266, -0.408681,
		-0.928110, -0.175059, -0.328581,
		37.171970, 34.793049, 54.328125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510635, 35.532753, 54.618813>,  <37.821648, 34.915588, 54.558132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510635, 35.532753, 54.618813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232422, 35.247143, 54.650810>,  <37.065495, 35.075775, 54.670010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.232422, 35.247143, 54.650810>,  <37.510635, 35.532753, 54.618813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232422, 35.247143, 54.650810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293956, 0.384386, 0.875121,
		-0.655609, 0.585161, -0.477246,
		-0.695533, -0.714027, 0.079996,
		37.023762, 35.032936, 54.674809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924183, 35.877522, 54.788628>,  <37.510635, 35.532753, 54.618813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924183, 35.877522, 54.788628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.862968, 35.503002, 54.915077>,  <36.826241, 35.278290, 54.990944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.862968, 35.503002, 54.915077>,  <36.924183, 35.877522, 54.788628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862968, 35.503002, 54.915077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532090, 0.347630, 0.772032,
		-0.832742, -0.050054, -0.551394,
		-0.153037, -0.936295, 0.316119,
		36.817059, 35.222115, 55.009914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225685, 35.855316, 54.909515>,  <36.924183, 35.877522, 54.788628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225685, 35.855316, 54.909515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.369381, 35.542038, 55.112514>,  <36.455597, 35.354073, 55.234314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.369381, 35.542038, 55.112514>,  <36.225685, 35.855316, 54.909515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369381, 35.542038, 55.112514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657184, 0.173808, 0.733417,
		-0.662615, -0.596992, -0.452264,
		0.359237, -0.783193, 0.507501,
		36.477154, 35.307079, 55.264763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623440, 35.553837, 55.255260>,  <36.225685, 35.855316, 54.909515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623440, 35.553837, 55.255260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.915649, 35.377010, 55.463459>,  <36.090973, 35.270916, 55.588379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.915649, 35.377010, 55.463459>,  <35.623440, 35.553837, 55.255260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915649, 35.377010, 55.463459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568176, 0.029371, 0.822383,
		-0.378834, -0.896502, -0.229714,
		0.730521, -0.442064, 0.520498,
		36.134808, 35.244392, 55.619610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213390, 35.025688, 55.576519>,  <35.623440, 35.553837, 55.255260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213390, 35.025688, 55.576519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548855, 35.123447, 55.771217>,  <35.750134, 35.182102, 55.888039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548855, 35.123447, 55.771217>,  <35.213390, 35.025688, 55.576519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548855, 35.123447, 55.771217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523375, 0.114217, 0.844413,
		0.150787, -0.962922, 0.223706,
		0.838655, 0.244409, 0.486746,
		35.800453, 35.196766, 55.917244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088470, 34.768223, 56.201347>,  <35.213390, 35.025688, 55.576519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088470, 34.768223, 56.201347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.399178, 35.000118, 56.299767>,  <35.585602, 35.139256, 56.358818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.399178, 35.000118, 56.299767>,  <35.088470, 34.768223, 56.201347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399178, 35.000118, 56.299767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369709, 0.103473, 0.923368,
		0.509856, -0.808203, 0.294710,
		0.776764, 0.579742, 0.246044,
		35.632206, 35.174042, 56.373581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188328, 34.619823, 56.936932>,  <35.088470, 34.768223, 56.201347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188328, 34.619823, 56.936932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.377346, 34.966736, 56.874298>,  <35.490757, 35.174885, 56.836716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.377346, 34.966736, 56.874298>,  <35.188328, 34.619823, 56.936932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377346, 34.966736, 56.874298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461015, 0.394686, 0.794788,
		0.751109, -0.303385, 0.586338,
		0.472546, 0.867284, -0.156587,
		35.519112, 35.226921, 56.827324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478123, 34.803436, 57.648071>,  <35.188328, 34.619823, 56.936932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478123, 34.803436, 57.648071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446770, 35.131821, 57.421837>,  <35.427959, 35.328850, 57.286098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446770, 35.131821, 57.421837>,  <35.478123, 34.803436, 57.648071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446770, 35.131821, 57.421837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375449, 0.501249, 0.779607,
		0.923523, 0.273453, 0.268940,
		-0.078380, 0.820959, -0.565583,
		35.423256, 35.378109, 57.252163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517323, 35.340969, 58.197227>,  <35.478123, 34.803436, 57.648071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517323, 35.340969, 58.197227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.367970, 35.512207, 57.868031>,  <35.278358, 35.614948, 57.670513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.367970, 35.512207, 57.868031>,  <35.517323, 35.340969, 58.197227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367970, 35.512207, 57.868031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584802, 0.580057, 0.567046,
		0.720131, 0.693016, 0.033764,
		-0.373386, 0.428093, -0.822994,
		35.255955, 35.640636, 57.621132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767742, 36.106083, 58.157238>,  <35.517323, 35.340969, 58.197227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767742, 36.106083, 58.157238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.437607, 36.060272, 57.936073>,  <35.239525, 36.032787, 57.803375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.437607, 36.060272, 57.936073>,  <35.767742, 36.106083, 58.157238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437607, 36.060272, 57.936073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456476, 0.711691, 0.533972,
		0.332345, 0.693094, -0.639662,
		-0.825334, -0.114527, -0.552908,
		35.190006, 36.025913, 57.770203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581078, 36.803864, 58.040695>,  <35.767742, 36.106083, 58.157238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581078, 36.803864, 58.040695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.245804, 36.594021, 57.981056>,  <35.044640, 36.468113, 57.945274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.245804, 36.594021, 57.981056>,  <35.581078, 36.803864, 58.040695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245804, 36.594021, 57.981056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533439, 0.731684, 0.424360,
		-0.113530, 0.435227, -0.893134,
		-0.838185, -0.524610, -0.149099,
		34.994347, 36.436638, 57.936325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078922, 37.178535, 57.817207>,  <35.581078, 36.803864, 58.040695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078922, 37.178535, 57.817207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.849781, 36.879669, 57.952019>,  <34.712296, 36.700352, 58.032906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.849781, 36.879669, 57.952019>,  <35.078922, 37.178535, 57.817207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849781, 36.879669, 57.952019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670718, 0.663650, 0.331219,
		-0.471141, -0.036308, -0.881310,
		-0.572856, -0.747162, 0.337025,
		34.677925, 36.655521, 58.053127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420849, 37.364170, 57.644848>,  <35.078922, 37.178535, 57.817207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420849, 37.364170, 57.644848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.389229, 37.121857, 57.961525>,  <34.370258, 36.976471, 58.151531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.389229, 37.121857, 57.961525>,  <34.420849, 37.364170, 57.644848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389229, 37.121857, 57.961525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758757, 0.551659, 0.346354,
		-0.646560, -0.573326, -0.503247,
		-0.079047, -0.605781, 0.791695,
		34.365513, 36.940121, 58.199032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786922, 37.401131, 57.830528>,  <34.420849, 37.364170, 57.644848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786922, 37.401131, 57.830528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.885746, 37.197422, 58.160282>,  <33.945042, 37.075199, 58.358135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.885746, 37.197422, 58.160282>,  <33.786922, 37.401131, 57.830528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885746, 37.197422, 58.160282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699180, 0.495344, 0.515540,
		-0.670901, -0.703762, -0.233690,
		0.247061, -0.509267, 0.824383,
		33.959866, 37.044643, 58.407597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160255, 37.153042, 58.077576>,  <33.786922, 37.401131, 57.830528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160255, 37.153042, 58.077576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.413155, 37.201916, 58.383606>,  <33.564892, 37.231239, 58.567223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.413155, 37.201916, 58.383606>,  <33.160255, 37.153042, 58.077576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413155, 37.201916, 58.383606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697802, 0.518897, 0.493780,
		-0.336662, -0.846059, 0.413331,
		0.632243, 0.122186, 0.765074,
		33.602829, 37.238571, 58.613129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765869, 37.123417, 58.722977>,  <33.160255, 37.153042, 58.077576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765869, 37.123417, 58.722977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.114323, 37.267067, 58.856934>,  <33.323395, 37.353256, 58.937309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.114323, 37.267067, 58.856934>,  <32.765869, 37.123417, 58.722977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114323, 37.267067, 58.856934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478850, 0.772343, 0.417359,
		-0.108766, -0.523939, 0.844783,
		0.871133, 0.359130, 0.334893,
		33.375664, 37.374805, 58.957401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665821, 37.307384, 59.408432>,  <32.765869, 37.123417, 58.722977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665821, 37.307384, 59.408432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.973045, 37.530300, 59.282246>,  <33.157379, 37.664047, 59.206532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.973045, 37.530300, 59.282246>,  <32.665821, 37.307384, 59.408432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973045, 37.530300, 59.282246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365757, 0.786125, 0.498226,
		0.525653, -0.267280, 0.807620,
		0.768057, 0.557287, -0.315470,
		33.203461, 37.697487, 59.187603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660740, 37.833023, 59.907585>,  <32.665821, 37.307384, 59.408432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660740, 37.833023, 59.907585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.865368, 37.961933, 59.588978>,  <32.988144, 38.039280, 59.397816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.865368, 37.961933, 59.588978>,  <32.660740, 37.833023, 59.907585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865368, 37.961933, 59.588978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374261, 0.918014, 0.131066,
		0.773451, 0.231055, 0.590243,
		0.511568, 0.322279, -0.796514,
		33.018837, 38.058617, 59.350025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919800, 38.505253, 60.131176>,  <32.660740, 37.833023, 59.907585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919800, 38.505253, 60.131176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.890942, 38.509346, 59.732239>,  <32.873627, 38.511803, 59.492878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.890942, 38.509346, 59.732239>,  <32.919800, 38.505253, 60.131176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890942, 38.509346, 59.732239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581811, 0.811760, 0.050416,
		0.810118, 0.583901, -0.052616,
		-0.072149, 0.010230, -0.997341,
		32.869297, 38.512417, 59.433037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099346, 39.182510, 59.978210>,  <32.919800, 38.505253, 60.131176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099346, 39.182510, 59.978210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906612, 39.034775, 59.660358>,  <32.790974, 38.946133, 59.469646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906612, 39.034775, 59.660358>,  <33.099346, 39.182510, 59.978210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906612, 39.034775, 59.660358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598313, 0.801205, -0.009602,
		0.640204, 0.470808, -0.607024,
		-0.481830, -0.369338, -0.794625,
		32.762062, 38.923973, 59.421970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902767, 39.806198, 59.469658>,  <33.099346, 39.182510, 59.978210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902767, 39.806198, 59.469658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.646938, 39.514549, 59.372219>,  <32.493443, 39.339561, 59.313755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.646938, 39.514549, 59.372219>,  <32.902767, 39.806198, 59.469658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646938, 39.514549, 59.372219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753383, 0.657506, 0.010022,
		0.152858, 0.189930, -0.969826,
		-0.639569, -0.729118, -0.243595,
		32.455067, 39.295815, 59.299141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521175, 40.130962, 58.939091>,  <32.902767, 39.806198, 59.469658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521175, 40.130962, 58.939091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302788, 39.816601, 59.055214>,  <32.171753, 39.627983, 59.124886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302788, 39.816601, 59.055214>,  <32.521175, 40.130962, 58.939091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302788, 39.816601, 59.055214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792140, 0.597067, 0.126586,
		-0.272816, -0.160851, -0.948524,
		-0.545971, -0.785899, 0.290306,
		32.138996, 39.580830, 59.142307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846216, 40.342266, 58.714321>,  <32.521175, 40.130962, 58.939091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846216, 40.342266, 58.714321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.737637, 40.049595, 58.964428>,  <31.672489, 39.873993, 59.114491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.737637, 40.049595, 58.964428>,  <31.846216, 40.342266, 58.714321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737637, 40.049595, 58.964428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941384, 0.337035, -0.014292,
		-0.200279, -0.592493, -0.780282,
		-0.271450, -0.731683, 0.625264,
		31.656202, 39.830090, 59.152008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238182, 40.255543, 58.512138>,  <31.846216, 40.342266, 58.714321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238182, 40.255543, 58.512138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.277948, 40.092770, 58.875351>,  <31.301807, 39.995106, 59.093281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.277948, 40.092770, 58.875351>,  <31.238182, 40.255543, 58.512138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277948, 40.092770, 58.875351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880427, 0.389233, 0.270824,
		-0.463643, -0.826381, -0.319576,
		0.099415, -0.406929, 0.908034,
		31.307774, 39.970692, 59.147762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728699, 39.690552, 58.553303>,  <31.238182, 40.255543, 58.512138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728699, 39.690552, 58.553303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.841101, 39.845455, 58.904545>,  <30.908543, 39.938396, 59.115292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.841101, 39.845455, 58.904545>,  <30.728699, 39.690552, 58.553303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841101, 39.845455, 58.904545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942921, 0.281784, 0.177477,
		-0.178707, -0.877856, 0.444334,
		0.281006, 0.387255, 0.878105,
		30.925402, 39.961632, 59.167976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125982, 39.847801, 58.946217>,  <30.728699, 39.690552, 58.553303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125982, 39.847801, 58.946217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.389261, 40.070503, 59.148918>,  <30.547228, 40.204124, 59.270538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.389261, 40.070503, 59.148918>,  <30.125982, 39.847801, 58.946217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389261, 40.070503, 59.148918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749912, 0.544236, 0.376083,
		-0.066405, -0.627556, 0.775735,
		0.658196, 0.556759, 0.506751,
		30.586720, 40.237530, 59.300945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869291, 39.961914, 59.646027>,  <30.125982, 39.847801, 58.946217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869291, 39.961914, 59.646027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125853, 40.267002, 59.612892>,  <30.279789, 40.450054, 59.593010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125853, 40.267002, 59.612892>,  <29.869291, 39.961914, 59.646027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125853, 40.267002, 59.612892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669422, 0.609131, 0.425246,
		0.374800, -0.217304, 0.901279,
		0.641405, 0.762718, -0.082835,
		30.318274, 40.495819, 59.588043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015455, 40.262505, 60.256214>,  <29.869291, 39.961914, 59.646027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015455, 40.262505, 60.256214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.090080, 40.563190, 60.003193>,  <30.134855, 40.743603, 59.851379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.090080, 40.563190, 60.003193>,  <30.015455, 40.262505, 60.256214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090080, 40.563190, 60.003193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608471, 0.593913, 0.526338,
		0.771336, 0.286695, 0.568197,
		0.186561, 0.751714, -0.632551,
		30.146049, 40.788704, 59.813427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891623, 40.979214, 60.564701>,  <30.015455, 40.262505, 60.256214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891623, 40.979214, 60.564701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.868990, 41.094925, 60.182472>,  <29.855412, 41.164352, 59.953136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.868990, 41.094925, 60.182472>,  <29.891623, 40.979214, 60.564701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868990, 41.094925, 60.182472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844555, 0.496580, 0.200336,
		0.532470, 0.818368, 0.216214,
		-0.056581, 0.289277, -0.955572,
		29.852016, 41.181709, 59.895802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840311, 41.760933, 60.559235>,  <29.891623, 40.979214, 60.564701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840311, 41.760933, 60.559235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.666620, 41.565319, 60.256634>,  <29.562407, 41.447952, 60.075073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.666620, 41.565319, 60.256634>,  <29.840311, 41.760933, 60.559235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666620, 41.565319, 60.256634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850627, 0.498978, 0.165695,
		0.296447, 0.715450, -0.632654,
		-0.434227, -0.489032, -0.756502,
		29.536352, 41.418610, 60.029682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537010, 42.138870, 59.834358>,  <29.840311, 41.760933, 60.559235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537010, 42.138870, 59.834358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.316921, 41.819260, 59.931358>,  <29.184868, 41.627491, 59.989559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.316921, 41.819260, 59.931358>,  <29.537010, 42.138870, 59.834358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316921, 41.819260, 59.931358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783863, 0.594340, 0.179771,
		-0.287771, -0.091174, -0.953349,
		-0.550224, -0.799028, 0.242502,
		29.151854, 41.579552, 60.004108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775322, 42.194386, 59.564980>,  <29.537010, 42.138870, 59.834358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775322, 42.194386, 59.564980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.794569, 41.932625, 59.866825>,  <28.806118, 41.775566, 60.047932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.794569, 41.932625, 59.866825>,  <28.775322, 42.194386, 59.564980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794569, 41.932625, 59.866825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724765, 0.496984, 0.477203,
		-0.687314, -0.569877, -0.450377,
		0.048117, -0.654406, 0.754611,
		28.809004, 41.736301, 60.093208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124109, 42.094414, 59.784676>,  <28.775322, 42.194386, 59.564980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124109, 42.094414, 59.784676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.355064, 41.979065, 60.090214>,  <28.493637, 41.909855, 60.273537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.355064, 41.979065, 60.090214>,  <28.124109, 42.094414, 59.784676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355064, 41.979065, 60.090214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567120, 0.531379, 0.629295,
		-0.587364, -0.796541, 0.143270,
		0.577389, -0.288374, 0.763847,
		28.528282, 41.892551, 60.319366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110813, 41.398987, 60.174774>,  <28.124109, 42.094414, 59.784676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110813, 41.398987, 60.174774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.997793, 41.206730, 59.842716>,  <27.929981, 41.091373, 59.643482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.997793, 41.206730, 59.842716>,  <28.110813, 41.398987, 60.174774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997793, 41.206730, 59.842716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319121, 0.769021, -0.553867,
		0.904615, -0.421412, -0.063901,
		-0.282548, -0.480644, -0.830149,
		27.913029, 41.062538, 59.593670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586277, 41.198406, 59.610928>,  <28.110813, 41.398987, 60.174774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586277, 41.198406, 59.610928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.234182, 41.282909, 59.440960>,  <28.022926, 41.333611, 59.338982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.234182, 41.282909, 59.440960>,  <28.586277, 41.198406, 59.610928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234182, 41.282909, 59.440960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465888, 0.554910, -0.689219,
		0.090186, -0.804639, -0.586876,
		-0.880236, 0.211261, -0.424917,
		27.970112, 41.346287, 59.313484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478445, 41.006950, 58.851231>,  <28.586277, 41.198406, 59.610928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478445, 41.006950, 58.851231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.267454, 41.328537, 58.961067>,  <28.140860, 41.521488, 59.026970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.267454, 41.328537, 58.961067>,  <28.478445, 41.006950, 58.851231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267454, 41.328537, 58.961067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425686, 0.529826, -0.733537,
		-0.735227, -0.270034, -0.621709,
		-0.527478, 0.803969, 0.274592,
		28.109211, 41.569729, 59.043446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086819, 41.254997, 58.260929>,  <28.478445, 41.006950, 58.851231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086819, 41.254997, 58.260929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.225111, 41.511948, 58.534519>,  <28.308086, 41.666119, 58.698673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.225111, 41.511948, 58.534519>,  <28.086819, 41.254997, 58.260929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225111, 41.511948, 58.534519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586304, 0.421229, -0.691964,
		-0.732611, 0.640251, -0.230996,
		0.345729, 0.642374, 0.683979,
		28.328829, 41.704659, 58.739712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200279, 41.982960, 58.003170>,  <28.086819, 41.254997, 58.260929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200279, 41.982960, 58.003170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.498344, 41.940262, 58.266483>,  <28.677183, 41.914642, 58.424473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.498344, 41.940262, 58.266483>,  <28.200279, 41.982960, 58.003170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498344, 41.940262, 58.266483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619424, 0.476504, -0.623906,
		-0.247072, 0.872667, 0.421197,
		0.745164, -0.106749, 0.658282,
		28.721893, 41.908237, 58.463966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591690, 42.677296, 58.155807>,  <28.200279, 41.982960, 58.003170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591690, 42.677296, 58.155807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.837925, 42.369072, 58.221893>,  <28.985666, 42.184139, 58.261543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.837925, 42.369072, 58.221893>,  <28.591690, 42.677296, 58.155807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837925, 42.369072, 58.221893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724695, 0.471142, -0.502834,
		0.309624, 0.429266, 0.848448,
		0.615589, -0.770556, 0.165210,
		29.022602, 42.137905, 58.271458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304321, 43.036716, 58.189419>,  <28.591690, 42.677296, 58.155807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304321, 43.036716, 58.189419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.350508, 42.647449, 58.109810>,  <29.378220, 42.413887, 58.062046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.350508, 42.647449, 58.109810>,  <29.304321, 43.036716, 58.189419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350508, 42.647449, 58.109810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802275, 0.209506, -0.558982,
		0.585680, -0.095124, 0.804941,
		0.115467, -0.973169, -0.199019,
		29.385147, 42.355499, 58.050102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073225, 42.959187, 58.196987>,  <29.304321, 43.036716, 58.189419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073225, 42.959187, 58.196987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.927456, 42.635841, 58.012058>,  <29.839994, 42.441833, 57.901100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.927456, 42.635841, 58.012058>,  <30.073225, 42.959187, 58.196987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927456, 42.635841, 58.012058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779351, 0.006997, -0.626548,
		0.509714, -0.588640, 0.627450,
		-0.364421, -0.808365, -0.462324,
		29.818130, 42.393333, 57.873360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700903, 42.575779, 57.993111>,  <30.073225, 42.959187, 58.196987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700903, 42.575779, 57.993111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.423908, 42.422874, 57.748375>,  <30.257711, 42.331131, 57.601536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.423908, 42.422874, 57.748375>,  <30.700903, 42.575779, 57.993111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423908, 42.422874, 57.748375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679561, -0.060903, -0.731087,
		0.242204, -0.922045, 0.301945,
		-0.692484, -0.382262, -0.611835,
		30.216164, 42.308197, 57.564823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970226, 41.947830, 57.744930>,  <30.700903, 42.575779, 57.993111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970226, 41.947830, 57.744930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676430, 42.044399, 57.491241>,  <30.500151, 42.102341, 57.339027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676430, 42.044399, 57.491241>,  <30.970226, 41.947830, 57.744930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676430, 42.044399, 57.491241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489380, -0.459026, -0.741486,
		-0.470139, -0.854990, 0.219001,
		-0.734490, 0.241427, -0.634221,
		30.456081, 42.116825, 57.300976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885475, 41.344460, 57.324295>,  <30.970226, 41.947830, 57.744930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885475, 41.344460, 57.324295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.753698, 41.663128, 57.121597>,  <30.674631, 41.854328, 56.999977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.753698, 41.663128, 57.121597>,  <30.885475, 41.344460, 57.324295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753698, 41.663128, 57.121597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444810, -0.342457, -0.827567,
		-0.832833, -0.498042, -0.241545,
		-0.329444, 0.796666, -0.506744,
		30.654865, 41.902126, 56.969574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967514, 41.081390, 56.644753>,  <30.885475, 41.344460, 57.324295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967514, 41.081390, 56.644753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.957203, 41.480343, 56.617741>,  <30.951017, 41.719715, 56.601532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.957203, 41.480343, 56.617741>,  <30.967514, 41.081390, 56.644753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957203, 41.480343, 56.617741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563022, -0.041334, -0.825407,
		-0.826040, -0.059296, -0.560484,
		-0.025777, 0.997384, -0.067528,
		30.949471, 41.779556, 56.597481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663927, 41.251492, 55.925751>,  <30.967514, 41.081390, 56.644753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663927, 41.251492, 55.925751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.851221, 41.577381, 56.062561>,  <30.963598, 41.772915, 56.144650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.851221, 41.577381, 56.062561>,  <30.663927, 41.251492, 55.925751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851221, 41.577381, 56.062561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391196, 0.155942, -0.906999,
		-0.792289, 0.558489, -0.245699,
		0.468235, 0.814722, 0.342030,
		30.991692, 41.821796, 56.165169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459370, 41.759407, 55.436207>,  <30.663927, 41.251492, 55.925751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459370, 41.759407, 55.436207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.789999, 41.886215, 55.622231>,  <30.988377, 41.962299, 55.733845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.789999, 41.886215, 55.622231>,  <30.459370, 41.759407, 55.436207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789999, 41.886215, 55.622231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430766, 0.175466, -0.885241,
		-0.362243, 0.932045, 0.008473,
		0.826572, 0.317023, 0.465055,
		31.037970, 41.981323, 55.761745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620567, 42.488789, 55.262009>,  <30.459370, 41.759407, 55.436207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620567, 42.488789, 55.262009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.957926, 42.298111, 55.361160>,  <31.160341, 42.183704, 55.420650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.957926, 42.298111, 55.361160>,  <30.620567, 42.488789, 55.262009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957926, 42.298111, 55.361160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407888, 0.267759, -0.872888,
		0.349724, 0.837301, 0.420263,
		0.843399, -0.476690, 0.247883,
		31.210945, 42.155106, 55.435524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184084, 42.782032, 54.962440>,  <30.620567, 42.488789, 55.262009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184084, 42.782032, 54.962440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.322895, 42.416496, 55.046795>,  <31.406181, 42.197174, 55.097408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.322895, 42.416496, 55.046795>,  <31.184084, 42.782032, 54.962440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322895, 42.416496, 55.046795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476442, -0.021901, -0.878933,
		0.807821, 0.405488, 0.427790,
		0.347028, -0.913838, 0.210883,
		31.427004, 42.142345, 55.110062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814087, 42.813660, 54.635872>,  <31.184084, 42.782032, 54.962440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814087, 42.813660, 54.635872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.743282, 42.428860, 54.719028>,  <31.700800, 42.197979, 54.768921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.743282, 42.428860, 54.719028>,  <31.814087, 42.813660, 54.635872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743282, 42.428860, 54.719028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474440, -0.268465, -0.838351,
		0.862307, -0.049768, 0.503934,
		-0.177012, -0.962003, 0.207888,
		31.690178, 42.140259, 54.781395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427494, 42.496586, 54.659451>,  <31.814087, 42.813660, 54.635872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427494, 42.496586, 54.659451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170773, 42.201054, 54.577271>,  <32.016739, 42.023735, 54.527962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170773, 42.201054, 54.577271>,  <32.427494, 42.496586, 54.659451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170773, 42.201054, 54.577271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574726, -0.286040, -0.766728,
		0.507718, -0.610167, 0.608209,
		-0.641804, -0.738835, -0.205451,
		31.978231, 41.979404, 54.515636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657013, 41.886005, 54.819099>,  <32.427494, 42.496586, 54.659451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657013, 41.886005, 54.819099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.385044, 41.821026, 54.533073>,  <32.221863, 41.782040, 54.361458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.385044, 41.821026, 54.533073>,  <32.657013, 41.886005, 54.819099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385044, 41.821026, 54.533073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720195, -0.331344, -0.609533,
		-0.137914, -0.929421, 0.342283,
		-0.679925, -0.162447, -0.715061,
		32.181068, 41.772293, 54.318554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808262, 41.305706, 54.588699>,  <32.657013, 41.886005, 54.819099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808262, 41.305706, 54.588699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.561100, 41.408371, 54.291428>,  <32.412804, 41.469971, 54.113064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.561100, 41.408371, 54.291428>,  <32.808262, 41.305706, 54.588699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561100, 41.408371, 54.291428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651797, -0.361404, -0.666744,
		-0.439719, -0.896386, 0.056018,
		-0.617905, 0.256668, -0.743179,
		32.375729, 41.485371, 54.068474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427025, 40.658215, 54.192196>,  <32.808262, 41.305706, 54.588699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427025, 40.658215, 54.192196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436287, 40.973854, 53.946663>,  <32.441845, 41.163239, 53.799343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436287, 40.973854, 53.946663>,  <32.427025, 40.658215, 54.192196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436287, 40.973854, 53.946663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677938, -0.463654, -0.570461,
		-0.734754, -0.402933, -0.545693,
		0.023155, 0.789095, -0.613835,
		32.443233, 41.210583, 53.762512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242771, 40.379086, 53.491486>,  <32.427025, 40.658215, 54.192196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242771, 40.379086, 53.491486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.440849, 40.724297, 53.451550>,  <32.559696, 40.931423, 53.427589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.440849, 40.724297, 53.451550>,  <32.242771, 40.379086, 53.491486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440849, 40.724297, 53.451550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630436, -0.436028, -0.642208,
		-0.597776, 0.255074, -0.760001,
		0.495192, 0.863028, -0.099839,
		32.589405, 40.983204, 53.421597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486366, 40.452385, 52.798687>,  <32.242771, 40.379086, 53.491486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486366, 40.452385, 52.798687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.732212, 40.744888, 52.917015>,  <32.879719, 40.920391, 52.988010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.732212, 40.744888, 52.917015>,  <32.486366, 40.452385, 52.798687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732212, 40.744888, 52.917015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666016, -0.280109, -0.691347,
		-0.422693, 0.621931, -0.659190,
		0.614616, 0.731259, 0.295816,
		32.916595, 40.964268, 53.005760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610554, 40.837326, 52.161205>,  <32.486366, 40.452385, 52.798687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610554, 40.837326, 52.161205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.896809, 40.895550, 52.434460>,  <33.068562, 40.930485, 52.598412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.896809, 40.895550, 52.434460>,  <32.610554, 40.837326, 52.161205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896809, 40.895550, 52.434460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686889, -0.324026, -0.650531,
		0.126663, 0.934783, -0.331868,
		0.715640, 0.145558, 0.683134,
		33.111500, 40.939217, 52.639400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985210, 41.204700, 51.799423>,  <32.610554, 40.837326, 52.161205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985210, 41.204700, 51.799423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.205421, 41.061386, 52.101032>,  <33.337547, 40.975399, 52.281998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.205421, 41.061386, 52.101032>,  <32.985210, 41.204700, 51.799423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205421, 41.061386, 52.101032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689783, -0.313542, -0.652603,
		0.470238, 0.879387, 0.074528,
		0.550523, -0.358287, 0.754026,
		33.370579, 40.953899, 52.327240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583397, 41.437832, 51.569458>,  <32.985210, 41.204700, 51.799423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583397, 41.437832, 51.569458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644211, 41.127064, 51.813847>,  <33.680698, 40.940605, 51.960480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644211, 41.127064, 51.813847>,  <33.583397, 41.437832, 51.569458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644211, 41.127064, 51.813847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711157, -0.343306, -0.613512,
		0.686398, 0.527771, 0.500316,
		0.152033, -0.776916, 0.610973,
		33.689819, 40.893990, 51.997139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229855, 41.419205, 51.541889>,  <33.583397, 41.437832, 51.569458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229855, 41.419205, 51.541889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.132656, 41.066956, 51.704597>,  <34.074337, 40.855606, 51.802223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.132656, 41.066956, 51.704597>,  <34.229855, 41.419205, 51.541889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132656, 41.066956, 51.704597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818725, -0.411084, -0.400874,
		0.520234, 0.235623, 0.820876,
		-0.242994, -0.880620, 0.406770,
		34.059757, 40.802769, 51.826630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860828, 41.202717, 51.893387>,  <34.229855, 41.419205, 51.541889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860828, 41.202717, 51.893387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.627853, 40.881134, 51.845364>,  <34.488068, 40.688183, 51.816547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.627853, 40.881134, 51.845364>,  <34.860828, 41.202717, 51.893387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627853, 40.881134, 51.845364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745571, -0.469509, -0.472954,
		0.323866, -0.364981, 0.872868,
		-0.582439, -0.803959, -0.120062,
		34.453121, 40.639946, 51.809345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244766, 40.642666, 52.278229>,  <34.860828, 41.202717, 51.893387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244766, 40.642666, 52.278229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.998100, 40.488544, 52.003632>,  <34.850101, 40.396072, 51.838875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.998100, 40.488544, 52.003632>,  <35.244766, 40.642666, 52.278229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998100, 40.488544, 52.003632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764215, -0.502310, -0.404550,
		-0.188956, -0.774097, 0.604211,
		-0.616661, -0.385305, -0.686491,
		34.813103, 40.372952, 51.797684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421318, 39.909584, 52.279175>,  <35.244766, 40.642666, 52.278229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421318, 39.909584, 52.279175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.215809, 39.970615, 51.941475>,  <35.092503, 40.007233, 51.738857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.215809, 39.970615, 51.941475>,  <35.421318, 39.909584, 52.279175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215809, 39.970615, 51.941475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631229, -0.599216, -0.492434,
		-0.581017, -0.785915, 0.211557,
		-0.513780, 0.152572, -0.844246,
		35.061676, 40.016388, 51.688202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248722, 39.334724, 52.005878>,  <35.421318, 39.909584, 52.279175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248722, 39.334724, 52.005878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.241226, 39.569103, 51.681824>,  <35.236729, 39.709732, 51.487392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.241226, 39.569103, 51.681824>,  <35.248722, 39.334724, 52.005878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241226, 39.569103, 51.681824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430067, -0.726760, -0.535595,
		-0.902602, -0.358449, -0.238376,
		-0.018741, 0.585947, -0.810133,
		35.235603, 39.744888, 51.438786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078236, 38.906239, 51.432663>,  <35.248722, 39.334724, 52.005878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078236, 38.906239, 51.432663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.245560, 39.214603, 51.240532>,  <35.345955, 39.399624, 51.125256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.245560, 39.214603, 51.240532>,  <35.078236, 38.906239, 51.432663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245560, 39.214603, 51.240532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512467, -0.636918, -0.575946,
		-0.749931, -0.005227, -0.661495,
		0.418307, 0.770914, -0.480323,
		35.371052, 39.445877, 51.096436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009602, 38.717373, 50.831165>,  <35.078236, 38.906239, 51.432663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009602, 38.717373, 50.831165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311157, 38.978554, 50.802048>,  <35.492092, 39.135262, 50.784576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311157, 38.978554, 50.802048>,  <35.009602, 38.717373, 50.831165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311157, 38.978554, 50.802048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458669, -0.602403, -0.653248,
		-0.470391, 0.459091, -0.753636,
		0.753894, 0.652951, -0.072794,
		35.537327, 39.174438, 50.780209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155602, 38.703197, 50.168846>,  <35.009602, 38.717373, 50.831165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155602, 38.703197, 50.168846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.488163, 38.870514, 50.315159>,  <35.687702, 38.970901, 50.402946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.488163, 38.870514, 50.315159>,  <35.155602, 38.703197, 50.168846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488163, 38.870514, 50.315159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550129, -0.526933, -0.647843,
		-0.078242, 0.739849, -0.668208,
		0.831406, 0.418289, 0.365784,
		35.737583, 38.996002, 50.424892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472191, 39.081913, 49.615173>,  <35.155602, 38.703197, 50.168846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472191, 39.081913, 49.615173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.760498, 39.002254, 49.880756>,  <35.933483, 38.954460, 50.040104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.760498, 39.002254, 49.880756>,  <35.472191, 39.081913, 49.615173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760498, 39.002254, 49.880756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478110, -0.550710, -0.684199,
		0.501899, 0.810593, -0.301723,
		0.720769, -0.199142, 0.663954,
		35.976730, 38.942513, 50.079941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215092, 39.323116, 49.276844>,  <35.472191, 39.081913, 49.615173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215092, 39.323116, 49.276844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.301331, 39.085564, 49.586895>,  <36.353073, 38.943031, 49.772926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.301331, 39.085564, 49.586895>,  <36.215092, 39.323116, 49.276844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301331, 39.085564, 49.586895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653055, -0.502463, -0.566612,
		0.725974, 0.628361, 0.279508,
		0.215595, -0.593880, 0.775129,
		36.366009, 38.907398, 49.819435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941071, 39.375034, 49.418346>,  <36.215092, 39.323116, 49.276844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941071, 39.375034, 49.418346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.806324, 39.027565, 49.563637>,  <36.725475, 38.819084, 49.650810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.806324, 39.027565, 49.563637>,  <36.941071, 39.375034, 49.418346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806324, 39.027565, 49.563637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629740, -0.494656, -0.598951,
		0.699961, 0.026968, 0.713671,
		-0.336869, -0.868670, 0.363223,
		36.705265, 38.766964, 49.672604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511112, 38.907661, 49.487701>,  <36.941071, 39.375034, 49.418346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511112, 38.907661, 49.487701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210064, 38.644463, 49.497570>,  <37.029434, 38.486546, 49.503490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210064, 38.644463, 49.497570>,  <37.511112, 38.907661, 49.487701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210064, 38.644463, 49.497570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556195, -0.655347, -0.511046,
		0.352436, -0.370898, 0.859199,
		-0.752619, -0.657993, 0.024676,
		36.984280, 38.447063, 49.504974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838055, 38.300163, 49.816261>,  <37.511112, 38.907661, 49.487701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838055, 38.300163, 49.816261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505001, 38.201603, 49.617867>,  <37.305168, 38.142467, 49.498829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505001, 38.201603, 49.617867>,  <37.838055, 38.300163, 49.816261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505001, 38.201603, 49.617867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477026, -0.774069, -0.416250,
		-0.281363, -0.583183, 0.762058,
		-0.832635, -0.246404, -0.495987,
		37.255211, 38.127682, 49.469070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926754, 37.574871, 49.717781>,  <37.838055, 38.300163, 49.816261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926754, 37.574871, 49.717781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645229, 37.650043, 49.443752>,  <37.476315, 37.695148, 49.279335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645229, 37.650043, 49.443752>,  <37.926754, 37.574871, 49.717781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645229, 37.650043, 49.443752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412181, -0.677409, -0.609282,
		-0.578580, -0.711196, 0.399307,
		-0.703813, 0.187932, -0.685076,
		37.434086, 37.706425, 49.238228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821651, 36.951134, 49.387878>,  <37.926754, 37.574871, 49.717781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821651, 36.951134, 49.387878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.665806, 37.212189, 49.127953>,  <37.572300, 37.368824, 48.971996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.665806, 37.212189, 49.127953>,  <37.821651, 36.951134, 49.387878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665806, 37.212189, 49.127953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446150, -0.483507, -0.753108,
		-0.805700, -0.583337, -0.102794,
		-0.389614, 0.652640, -0.649817,
		37.548923, 37.407982, 48.933006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497318, 36.598373, 48.892559>,  <37.821651, 36.951134, 49.387878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497318, 36.598373, 48.892559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.565235, 36.948139, 48.710758>,  <37.605988, 37.157997, 48.601677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.565235, 36.948139, 48.710758>,  <37.497318, 36.598373, 48.892559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565235, 36.948139, 48.710758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558874, -0.465302, -0.686407,
		-0.811683, -0.137459, -0.567693,
		0.169796, 0.874414, -0.454500,
		37.616173, 37.210464, 48.574409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275295, 36.484730, 48.200024>,  <37.497318, 36.598373, 48.892559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275295, 36.484730, 48.200024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527351, 36.795143, 48.189472>,  <37.678585, 36.981392, 48.183144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527351, 36.795143, 48.189472>,  <37.275295, 36.484730, 48.200024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527351, 36.795143, 48.189472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634601, -0.534274, -0.558421,
		-0.447446, 0.335144, -0.829138,
		0.630138, 0.776035, -0.026376,
		37.716393, 37.027954, 48.181561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444202, 36.669937, 47.533600>,  <37.275295, 36.484730, 48.200024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444202, 36.669937, 47.533600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.747429, 36.811588, 47.752663>,  <37.929363, 36.896580, 47.884102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.747429, 36.811588, 47.752663>,  <37.444202, 36.669937, 47.533600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747429, 36.811588, 47.752663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648095, -0.502861, -0.571930,
		0.072858, 0.788494, -0.610712,
		0.758066, 0.354130, 0.547656,
		37.974850, 36.917828, 47.916958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693947, 36.776333, 47.797031>,  <37.444202, 36.669937, 47.533600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693947, 36.776333, 47.797031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.571789, 36.871704, 47.428276>,  <36.498493, 36.928928, 47.207024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.571789, 36.871704, 47.428276>,  <36.693947, 36.776333, 47.797031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571789, 36.871704, 47.428276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799328, 0.461961, 0.384275,
		0.517500, 0.854250, 0.049502,
		-0.305399, 0.238431, -0.921891,
		36.480167, 36.943233, 47.151711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394390, 37.424427, 47.710606>,  <36.693947, 36.776333, 47.797031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394390, 37.424427, 47.710606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.235195, 37.237900, 47.394592>,  <36.139679, 37.125984, 47.204983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.235195, 37.237900, 47.394592>,  <36.394390, 37.424427, 47.710606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235195, 37.237900, 47.394592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902211, 0.354966, 0.244979,
		0.166199, 0.810278, -0.561986,
		-0.397987, -0.466315, -0.790036,
		36.115799, 37.098007, 47.157581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994148, 37.915363, 47.231983>,  <36.394390, 37.424427, 47.710606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994148, 37.915363, 47.231983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854683, 37.551071, 47.143433>,  <35.771004, 37.332497, 47.090302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854683, 37.551071, 47.143433>,  <35.994148, 37.915363, 47.231983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854683, 37.551071, 47.143433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926983, 0.300217, 0.224884,
		-0.138346, 0.283624, -0.948904,
		-0.348660, -0.910729, -0.221380,
		35.750084, 37.277851, 47.077019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538219, 38.087070, 46.846031>,  <35.994148, 37.915363, 47.231983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538219, 38.087070, 46.846031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.413254, 37.718941, 46.940178>,  <35.338276, 37.498062, 46.996666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.413254, 37.718941, 46.940178>,  <35.538219, 38.087070, 46.846031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413254, 37.718941, 46.940178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947220, 0.320561, -0.003849,
		-0.071907, -0.224144, -0.971900,
		-0.312416, -0.920326, 0.235364,
		35.319530, 37.442844, 47.010788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106991, 37.862373, 46.352993>,  <35.538219, 38.087070, 46.846031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106991, 37.862373, 46.352993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.007362, 37.626297, 46.660145>,  <34.947586, 37.484650, 46.844437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.007362, 37.626297, 46.660145>,  <35.106991, 37.862373, 46.352993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007362, 37.626297, 46.660145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924865, 0.380216, -0.007762,
		-0.287378, -0.712116, -0.640551,
		-0.249075, -0.590192, 0.767877,
		34.932640, 37.449238, 46.890507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383915, 37.595699, 46.264198>,  <35.106991, 37.862373, 46.352993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383915, 37.595699, 46.264198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.440731, 37.519108, 46.652664>,  <34.474819, 37.473152, 46.885742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.440731, 37.519108, 46.652664>,  <34.383915, 37.595699, 46.264198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440731, 37.519108, 46.652664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924448, 0.325079, 0.199299,
		-0.353867, -0.926099, -0.130841,
		0.142037, -0.191481, 0.971165,
		34.483341, 37.461662, 46.944016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709087, 37.240734, 46.582630>,  <34.383915, 37.595699, 46.264198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709087, 37.240734, 46.582630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.915840, 37.366203, 46.901237>,  <34.039890, 37.441486, 47.092403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.915840, 37.366203, 46.901237>,  <33.709087, 37.240734, 46.582630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915840, 37.366203, 46.901237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822393, 0.440314, 0.360269,
		-0.237713, -0.841268, 0.485551,
		0.516878, 0.313673, 0.796521,
		34.070904, 37.460304, 47.140194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279423, 36.998920, 47.064102>,  <33.709087, 37.240734, 46.582630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279423, 36.998920, 47.064102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524799, 37.261810, 47.239258>,  <33.672024, 37.419544, 47.344353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524799, 37.261810, 47.239258>,  <33.279423, 36.998920, 47.064102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524799, 37.261810, 47.239258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771883, 0.381719, 0.508416,
		0.166993, -0.649882, 0.741462,
		0.613441, 0.657224, 0.437889,
		33.708832, 37.458977, 47.370625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169678, 36.936768, 47.825951>,  <33.279423, 36.998920, 47.064102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169678, 36.936768, 47.825951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.300125, 37.305485, 47.742096>,  <33.378395, 37.526714, 47.691784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.300125, 37.305485, 47.742096>,  <33.169678, 36.936768, 47.825951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300125, 37.305485, 47.742096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851074, 0.382820, 0.359334,
		0.411484, 0.061230, 0.909358,
		0.326119, 0.921792, -0.209636,
		33.397961, 37.582024, 47.679203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058498, 37.340199, 48.492825>,  <33.169678, 36.936768, 47.825951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058498, 37.340199, 48.492825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.107578, 37.598045, 48.190987>,  <33.137028, 37.752754, 48.009884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.107578, 37.598045, 48.190987>,  <33.058498, 37.340199, 48.492825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107578, 37.598045, 48.190987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862934, 0.444850, 0.239696,
		0.490194, 0.621755, 0.610844,
		0.122703, 0.644615, -0.754596,
		33.144390, 37.791431, 47.964607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048950, 37.986610, 48.855900>,  <33.058498, 37.340199, 48.492825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048950, 37.986610, 48.855900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.968014, 38.104614, 48.482368>,  <32.919453, 38.175415, 48.258251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.968014, 38.104614, 48.482368>,  <33.048950, 37.986610, 48.855900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968014, 38.104614, 48.482368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822638, 0.466161, 0.325516,
		0.531342, 0.834066, 0.148358,
		-0.202343, 0.295005, -0.933825,
		32.907310, 38.193115, 48.202221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858612, 38.700981, 48.930576>,  <33.048950, 37.986610, 48.855900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858612, 38.700981, 48.930576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.703575, 38.594223, 48.577637>,  <32.610554, 38.530167, 48.365875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.703575, 38.594223, 48.577637>,  <32.858612, 38.700981, 48.930576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703575, 38.594223, 48.577637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841059, 0.494199, 0.219970,
		0.377345, 0.827365, -0.416027,
		-0.387596, -0.266899, -0.882346,
		32.587296, 38.514153, 48.312931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752216, 39.256336, 48.481075>,  <32.858612, 38.700981, 48.930576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752216, 39.256336, 48.481075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.469547, 39.000168, 48.360752>,  <32.299946, 38.846466, 48.288559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.469547, 39.000168, 48.360752>,  <32.752216, 39.256336, 48.481075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469547, 39.000168, 48.360752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692927, 0.712381, 0.111199,
		0.143073, 0.287016, -0.947181,
		-0.706670, -0.640417, -0.300804,
		32.257545, 38.808044, 48.270512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415337, 39.541779, 47.909203>,  <32.752216, 39.256336, 48.481075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415337, 39.541779, 47.909203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.149319, 39.277763, 48.048958>,  <31.989708, 39.119354, 48.132812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.149319, 39.277763, 48.048958>,  <32.415337, 39.541779, 47.909203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149319, 39.277763, 48.048958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689246, 0.722579, 0.053097,
		-0.287506, -0.205503, -0.935472,
		-0.665041, -0.660036, 0.349388,
		31.949806, 39.079754, 48.153774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894199, 39.934151, 47.901360>,  <32.415337, 39.541779, 47.909203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894199, 39.934151, 47.901360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.762821, 39.622135, 48.114403>,  <31.683994, 39.434925, 48.242229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.762821, 39.622135, 48.114403>,  <31.894199, 39.934151, 47.901360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762821, 39.622135, 48.114403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627944, 0.601555, 0.493779,
		-0.705557, -0.172269, -0.687396,
		-0.328443, -0.780035, 0.532606,
		31.664288, 39.388126, 48.274185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241331, 40.086273, 47.997841>,  <31.894199, 39.934151, 47.901360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241331, 40.086273, 47.997841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.294725, 39.812222, 48.284275>,  <31.326763, 39.647789, 48.456135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.294725, 39.812222, 48.284275>,  <31.241331, 40.086273, 47.997841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294725, 39.812222, 48.284275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516227, 0.568717, 0.640368,
		-0.845985, -0.455142, -0.277768,
		0.133487, -0.685133, 0.716083,
		31.334772, 39.606682, 48.499100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670544, 40.219513, 48.498695>,  <31.241331, 40.086273, 47.997841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670544, 40.219513, 48.498695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.938686, 40.016342, 48.715076>,  <31.099571, 39.894440, 48.844906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.938686, 40.016342, 48.715076>,  <30.670544, 40.219513, 48.498695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938686, 40.016342, 48.715076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440304, 0.314525, 0.840955,
		-0.597291, -0.801923, -0.012801,
		0.670355, -0.507932, 0.540953,
		31.139793, 39.863964, 48.877361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312662, 39.738605, 48.987610>,  <30.670544, 40.219513, 48.498695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312662, 39.738605, 48.987610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.674227, 39.802029, 49.146507>,  <30.891165, 39.840084, 49.241844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.674227, 39.802029, 49.146507>,  <30.312662, 39.738605, 48.987610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674227, 39.802029, 49.146507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427670, 0.349380, 0.833686,
		-0.006598, -0.923467, 0.383621,
		0.903911, 0.158562, 0.397244,
		30.945400, 39.849598, 49.265682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229122, 39.419830, 49.680729>,  <30.312662, 39.738605, 48.987610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229122, 39.419830, 49.680729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.557018, 39.648407, 49.696129>,  <30.753756, 39.785553, 49.705368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.557018, 39.648407, 49.696129>,  <30.229122, 39.419830, 49.680729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557018, 39.648407, 49.696129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258324, 0.308894, 0.915343,
		0.511170, -0.760290, 0.400829,
		0.819740, 0.571439, 0.038504,
		30.802940, 39.819839, 49.707680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698162, 39.197296, 50.319790>,  <30.229122, 39.419830, 49.680729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698162, 39.197296, 50.319790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.750082, 39.576344, 50.203056>,  <30.781235, 39.803772, 50.133015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.750082, 39.576344, 50.203056>,  <30.698162, 39.197296, 50.319790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750082, 39.576344, 50.203056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307265, 0.318276, 0.896821,
		0.942730, -0.026739, 0.332483,
		0.129801, 0.947621, -0.291833,
		30.789022, 39.860630, 50.115505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909718, 39.521996, 50.902599>,  <30.698162, 39.197296, 50.319790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909718, 39.521996, 50.902599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.849417, 39.844219, 50.673393>,  <30.813236, 40.037552, 50.535870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.849417, 39.844219, 50.673393>,  <30.909718, 39.521996, 50.902599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849417, 39.844219, 50.673393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151912, 0.553878, 0.818622,
		0.976829, 0.210458, 0.038875,
		-0.150754, 0.805560, -0.573015,
		30.804190, 40.085888, 50.501488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205141, 40.004353, 51.216042>,  <30.909718, 39.521996, 50.902599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205141, 40.004353, 51.216042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.939325, 40.202000, 50.991814>,  <30.779837, 40.320587, 50.857277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.939325, 40.202000, 50.991814>,  <31.205141, 40.004353, 51.216042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939325, 40.202000, 50.991814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166618, 0.633307, 0.755752,
		0.728440, 0.595628, -0.338529,
		-0.664540, 0.494115, -0.560569,
		30.739964, 40.350235, 50.823643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338537, 40.651749, 51.359028>,  <31.205141, 40.004353, 51.216042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338537, 40.651749, 51.359028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.966503, 40.655983, 51.212151>,  <30.743282, 40.658524, 51.124023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.966503, 40.655983, 51.212151>,  <31.338537, 40.651749, 51.359028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966503, 40.655983, 51.212151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300164, 0.554330, 0.776286,
		0.211767, 0.832230, -0.512395,
		-0.930084, 0.010589, -0.367194,
		30.687477, 40.659161, 51.101994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047359, 41.386948, 51.488655>,  <31.338537, 40.651749, 51.359028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047359, 41.386948, 51.488655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.716717, 41.168892, 51.432735>,  <30.518332, 41.038059, 51.399181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.716717, 41.168892, 51.432735>,  <31.047359, 41.386948, 51.488655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716717, 41.168892, 51.432735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491636, 0.578583, 0.650797,
		-0.273885, 0.606686, -0.746270,
		-0.826608, -0.545136, -0.139803,
		30.468735, 41.005352, 51.390793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498774, 41.915867, 51.506176>,  <31.047359, 41.386948, 51.488655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498774, 41.915867, 51.506176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.283419, 41.583191, 51.560486>,  <30.154205, 41.383587, 51.593071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.283419, 41.583191, 51.560486>,  <30.498774, 41.915867, 51.506176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283419, 41.583191, 51.560486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620481, 0.500259, 0.603940,
		-0.570214, 0.240906, -0.785379,
		-0.538386, -0.831688, 0.135777,
		30.121902, 41.333683, 51.601219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839718, 42.112823, 51.396297>,  <30.498774, 41.915867, 51.506176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839718, 42.112823, 51.396297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.850182, 41.787315, 51.628536>,  <29.856461, 41.592010, 51.767879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.850182, 41.787315, 51.628536>,  <29.839718, 42.112823, 51.396297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850182, 41.787315, 51.628536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472468, 0.501767, 0.724572,
		-0.880960, -0.293269, -0.371354,
		0.026161, -0.813771, 0.580596,
		29.858030, 41.543182, 51.802715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258440, 42.180340, 51.743484>,  <29.839718, 42.112823, 51.396297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258440, 42.180340, 51.743484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.477001, 41.952225, 51.988831>,  <29.608137, 41.815353, 52.136036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.477001, 41.952225, 51.988831>,  <29.258440, 42.180340, 51.743484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477001, 41.952225, 51.988831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569533, 0.283948, 0.771366,
		-0.614065, -0.770807, -0.169649,
		0.546402, -0.570290, 0.613363,
		29.640923, 41.781139, 52.172840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813627, 41.895134, 52.199753>,  <29.258440, 42.180340, 51.743484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813627, 41.895134, 52.199753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.145029, 41.828579, 52.413628>,  <29.343870, 41.788647, 52.541954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.145029, 41.828579, 52.413628>,  <28.813627, 41.895134, 52.199753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145029, 41.828579, 52.413628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475497, 0.295295, 0.828675,
		-0.295771, -0.940806, 0.165538,
		0.828506, -0.166385, 0.534691,
		29.393581, 41.778664, 52.574036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655712, 41.448570, 52.708714>,  <28.813627, 41.895134, 52.199753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655712, 41.448570, 52.708714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.989697, 41.639339, 52.818535>,  <29.190088, 41.753803, 52.884426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.989697, 41.639339, 52.818535>,  <28.655712, 41.448570, 52.708714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989697, 41.639339, 52.818535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414695, 0.217338, 0.883624,
		0.361755, -0.851648, 0.379249,
		0.834962, 0.476928, 0.274551,
		29.240185, 41.782417, 52.900902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739504, 41.137466, 53.410549>,  <28.655712, 41.448570, 52.708714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739504, 41.137466, 53.410549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.948616, 41.478104, 53.395092>,  <29.074083, 41.682487, 53.385818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.948616, 41.478104, 53.395092>,  <28.739504, 41.137466, 53.410549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948616, 41.478104, 53.395092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184585, 0.157335, 0.970142,
		0.832245, -0.500036, 0.239442,
		0.522778, 0.851592, -0.038642,
		29.105450, 41.733582, 53.383499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145527, 41.127605, 53.965435>,  <28.739504, 41.137466, 53.410549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145527, 41.127605, 53.965435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.155783, 41.519310, 53.885052>,  <29.161936, 41.754333, 53.836823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.155783, 41.519310, 53.885052>,  <29.145527, 41.127605, 53.965435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155783, 41.519310, 53.885052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346162, 0.197281, 0.917198,
		0.937824, 0.046046, 0.344042,
		0.025640, 0.979265, -0.200955,
		29.163475, 41.813091, 53.824764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516417, 41.439526, 54.534061>,  <29.145527, 41.127605, 53.965435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516417, 41.439526, 54.534061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.284906, 41.710087, 54.351852>,  <29.146000, 41.872421, 54.242527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.284906, 41.710087, 54.351852>,  <29.516417, 41.439526, 54.534061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284906, 41.710087, 54.351852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460836, 0.189567, 0.867003,
		0.672793, 0.711723, 0.201992,
		-0.578775, 0.676399, -0.455527,
		29.111275, 41.913006, 54.215195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424618, 41.942730, 55.034412>,  <29.516417, 41.439526, 54.534061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424618, 41.942730, 55.034412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.121641, 42.068275, 54.805405>,  <28.939856, 42.143604, 54.667999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.121641, 42.068275, 54.805405>,  <29.424618, 41.942730, 55.034412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121641, 42.068275, 54.805405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513041, 0.256232, 0.819228,
		0.403823, 0.914240, -0.033056,
		-0.757441, 0.313864, -0.572515,
		28.894409, 42.162434, 54.633652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187099, 42.484020, 55.291191>,  <29.424618, 41.942730, 55.034412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187099, 42.484020, 55.291191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.871376, 42.397961, 55.061165>,  <28.681942, 42.346325, 54.923149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.871376, 42.397961, 55.061165>,  <29.187099, 42.484020, 55.291191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871376, 42.397961, 55.061165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613733, 0.303811, 0.728719,
		0.017925, 0.928121, -0.371848,
		-0.789310, -0.215153, -0.575064,
		28.634583, 42.333416, 54.888645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713156, 43.042595, 55.395016>,  <29.187099, 42.484020, 55.291191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713156, 43.042595, 55.395016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.522419, 42.714912, 55.267563>,  <28.407976, 42.518303, 55.191090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.522419, 42.714912, 55.267563>,  <28.713156, 43.042595, 55.395016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522419, 42.714912, 55.267563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710553, 0.145860, 0.688360,
		-0.517430, 0.554647, -0.651639,
		-0.476844, -0.819202, -0.318634,
		28.379366, 42.469151, 55.171974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045237, 43.134686, 55.599125>,  <28.713156, 43.042595, 55.395016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045237, 43.134686, 55.599125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.047377, 42.739471, 55.537464>,  <28.048660, 42.502342, 55.500469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.047377, 42.739471, 55.537464>,  <28.045237, 43.134686, 55.599125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047377, 42.739471, 55.537464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641777, -0.121610, 0.757187,
		-0.766873, 0.094882, -0.634747,
		0.005348, -0.988033, -0.154152,
		28.048981, 42.443062, 55.491219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401073, 42.954468, 55.601238>,  <28.045237, 43.134686, 55.599125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401073, 42.954468, 55.601238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.576168, 42.599213, 55.657242>,  <27.681225, 42.386059, 55.690842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.576168, 42.599213, 55.657242>,  <27.401073, 42.954468, 55.601238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576168, 42.599213, 55.657242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694394, -0.235031, 0.680131,
		-0.571143, -0.394937, -0.719598,
		0.437736, -0.888136, 0.140005,
		27.707489, 42.332771, 55.699242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001165, 42.273720, 55.586197>,  <27.401073, 42.954468, 55.601238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001165, 42.273720, 55.586197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.287638, 42.222202, 55.860569>,  <27.459520, 42.191292, 56.025192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.287638, 42.222202, 55.860569>,  <27.001165, 42.273720, 55.586197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287638, 42.222202, 55.860569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681527, -0.340792, 0.647597,
		0.150351, -0.931275, -0.331846,
		0.716181, -0.128796, 0.685927,
		27.502493, 42.183563, 56.066345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918756, 41.580112, 55.830849>,  <27.001165, 42.273720, 55.586197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.918756, 41.580112, 55.830849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.118153, 41.759197, 56.127781>,  <27.237791, 41.866650, 56.305943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.118153, 41.759197, 56.127781>,  <26.918756, 41.580112, 55.830849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118153, 41.759197, 56.127781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529632, -0.520626, 0.669655,
		0.686292, -0.726981, -0.022405,
		0.498491, 0.447713, 0.742334,
		27.267700, 41.893513, 56.350483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315632, 41.076988, 56.298843>,  <26.918756, 41.580112, 55.830849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315632, 41.076988, 56.298843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.054321, 40.820744, 56.460262>,  <26.897535, 40.666996, 56.557114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.054321, 40.820744, 56.460262>,  <27.315632, 41.076988, 56.298843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054321, 40.820744, 56.460262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066283, -0.579350, -0.812379,
		0.754214, -0.503959, 0.420936,
		-0.653275, -0.640608, 0.403549,
		26.858339, 40.628563, 56.581326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573080, 40.456921, 56.258869>,  <27.315632, 41.076988, 56.298843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573080, 40.456921, 56.258869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.181852, 40.384537, 56.300110>,  <26.947115, 40.341106, 56.324856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.181852, 40.384537, 56.300110>,  <27.573080, 40.456921, 56.258869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181852, 40.384537, 56.300110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013394, -0.548665, -0.835935,
		0.207843, -0.816222, 0.539057,
		-0.978070, -0.180963, 0.103103,
		26.888432, 40.330246, 56.331039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493628, 39.810036, 56.009487>,  <27.573080, 40.456921, 56.258869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493628, 39.810036, 56.009487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.125521, 39.958385, 55.959599>,  <26.904655, 40.047398, 55.929665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.125521, 39.958385, 55.959599>,  <27.493628, 39.810036, 56.009487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125521, 39.958385, 55.959599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021745, -0.269778, -0.962677,
		-0.390681, -0.888634, 0.240204,
		-0.920269, 0.370876, -0.124720,
		26.849440, 40.069649, 55.922184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199743, 39.449791, 55.557339>,  <27.493628, 39.810036, 56.009487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199743, 39.449791, 55.557339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.928463, 39.742550, 55.530891>,  <26.765694, 39.918205, 55.515022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.928463, 39.742550, 55.530891>,  <27.199743, 39.449791, 55.557339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.928463, 39.742550, 55.530891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011226, -0.079639, -0.996761,
		-0.734789, -0.676748, 0.045795,
		-0.678203, 0.731895, -0.066115,
		26.725002, 39.962120, 55.511055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659986, 39.177258, 55.152969>,  <27.199743, 39.449791, 55.557339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659986, 39.177258, 55.152969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.634184, 39.574619, 55.115036>,  <26.618702, 39.813034, 55.092278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.634184, 39.574619, 55.115036>,  <26.659986, 39.177258, 55.152969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634184, 39.574619, 55.115036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030258, -0.093039, -0.995203,
		-0.997459, -0.067064, -0.024057,
		-0.064504, 0.993401, -0.094832,
		26.614832, 39.872639, 55.086586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131828, 39.225533, 54.633938>,  <26.659986, 39.177258, 55.152969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131828, 39.225533, 54.633938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.329636, 39.573143, 54.627647>,  <26.448320, 39.781708, 54.623875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.329636, 39.573143, 54.627647>,  <26.131828, 39.225533, 54.633938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329636, 39.573143, 54.627647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043840, 0.006869, -0.999015,
		-0.868061, 0.494720, 0.041495,
		0.494518, 0.869025, -0.015726,
		26.477991, 39.833851, 54.622929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792994, 39.628555, 54.067158>,  <26.131828, 39.225533, 54.633938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792994, 39.628555, 54.067158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.153570, 39.790611, 54.128166>,  <26.369917, 39.887844, 54.164772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.153570, 39.790611, 54.128166>,  <25.792994, 39.628555, 54.067158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153570, 39.790611, 54.128166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144085, 0.051435, -0.988228,
		-0.408215, 0.912807, -0.012009,
		0.901443, 0.405140, 0.152518,
		26.424004, 39.912155, 54.173923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822052, 40.207470, 53.597618>,  <25.792994, 39.628555, 54.067158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822052, 40.207470, 53.597618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.185783, 40.076206, 53.699940>,  <26.404022, 39.997448, 53.761333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.185783, 40.076206, 53.699940>,  <25.822052, 40.207470, 53.597618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185783, 40.076206, 53.699940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234704, -0.103096, -0.966584,
		0.343564, 0.938980, -0.016728,
		0.909328, -0.328158, 0.255803,
		26.458582, 39.977760, 53.776680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154293, 40.598137, 53.091911>,  <25.822052, 40.207470, 53.597618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154293, 40.598137, 53.091911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.423416, 40.327080, 53.210655>,  <26.584890, 40.164444, 53.281902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.423416, 40.327080, 53.210655>,  <26.154293, 40.598137, 53.091911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423416, 40.327080, 53.210655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372145, -0.036802, -0.927445,
		0.639405, 0.734466, 0.227422,
		0.672807, -0.677647, 0.296859,
		26.625257, 40.123787, 53.299713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735159, 40.713573, 52.724258>,  <26.154293, 40.598137, 53.091911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735159, 40.713573, 52.724258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.809673, 40.335285, 52.830772>,  <26.854382, 40.108311, 52.894680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.809673, 40.335285, 52.830772>,  <26.735159, 40.713573, 52.724258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809673, 40.335285, 52.830772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467305, -0.153119, -0.870736,
		0.864248, 0.286639, 0.413417,
		0.186285, -0.945723, 0.266281,
		26.865559, 40.051567, 52.910656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467400, 40.601418, 52.721420>,  <26.735159, 40.713573, 52.724258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467400, 40.601418, 52.721420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.308016, 40.236126, 52.687378>,  <27.212385, 40.016953, 52.666950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.308016, 40.236126, 52.687378>,  <27.467400, 40.601418, 52.721420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308016, 40.236126, 52.687378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575437, -0.176652, -0.798540,
		0.714215, -0.367161, 0.595894,
		-0.398458, -0.913229, -0.085111,
		27.188478, 39.962158, 52.661846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004696, 40.236778, 52.500233>,  <27.467400, 40.601418, 52.721420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004696, 40.236778, 52.500233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.683296, 40.012817, 52.419346>,  <27.490456, 39.878441, 52.370811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.683296, 40.012817, 52.419346>,  <28.004696, 40.236778, 52.500233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683296, 40.012817, 52.419346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476472, -0.401228, -0.782298,
		0.356877, -0.724929, 0.589166,
		-0.803501, -0.559905, -0.202220,
		27.442245, 39.844845, 52.358681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217211, 39.530632, 52.472134>,  <28.004696, 40.236778, 52.500233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217211, 39.530632, 52.472134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.894613, 39.574608, 52.239761>,  <27.701056, 39.600994, 52.100338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.894613, 39.574608, 52.239761>,  <28.217211, 39.530632, 52.472134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894613, 39.574608, 52.239761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434868, -0.555390, -0.708824,
		-0.400576, -0.824290, 0.400106,
		-0.806492, 0.109944, -0.580933,
		27.652666, 39.607590, 52.065483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215372, 38.901676, 52.118851>,  <28.217211, 39.530632, 52.472134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215372, 38.901676, 52.118851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.952589, 39.087311, 51.881187>,  <27.794918, 39.198692, 51.738590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.952589, 39.087311, 51.881187>,  <28.215372, 38.901676, 52.118851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952589, 39.087311, 51.881187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356830, -0.502825, -0.787299,
		-0.664136, -0.729237, 0.164734,
		-0.656959, 0.464092, -0.594158,
		27.755501, 39.226540, 51.702942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764585, 38.364483, 51.768841>,  <28.215372, 38.901676, 52.118851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764585, 38.364483, 51.768841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.802658, 38.702171, 51.557854>,  <27.825500, 38.904785, 51.431259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.802658, 38.702171, 51.557854>,  <27.764585, 38.364483, 51.768841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802658, 38.702171, 51.557854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434590, -0.511953, -0.740969,
		-0.895585, -0.158709, -0.415620,
		0.095180, 0.844225, -0.527471,
		27.831211, 38.955441, 51.399612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743689, 38.138950, 51.111633>,  <27.764585, 38.364483, 51.768841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743689, 38.138950, 51.111633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.863180, 38.516891, 51.057945>,  <27.934875, 38.743656, 51.025730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.863180, 38.516891, 51.057945>,  <27.743689, 38.138950, 51.111633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863180, 38.516891, 51.057945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324463, -0.232822, -0.916798,
		-0.897488, 0.230325, -0.376120,
		0.298731, 0.944851, -0.134223,
		27.952799, 38.800346, 51.017677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557980, 38.281662, 50.378090>,  <27.743689, 38.138950, 51.111633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557980, 38.281662, 50.378090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.833267, 38.543926, 50.502327>,  <27.998440, 38.701283, 50.576870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.833267, 38.543926, 50.502327>,  <27.557980, 38.281662, 50.378090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833267, 38.543926, 50.502327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488689, -0.102534, -0.866412,
		-0.536225, 0.748063, -0.390979,
		0.688220, 0.655659, 0.310589,
		28.039734, 38.740623, 50.595505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706627, 38.851856, 49.834267>,  <27.557980, 38.281662, 50.378090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706627, 38.851856, 49.834267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.019917, 38.790543, 50.075287>,  <28.207890, 38.753754, 50.219898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.019917, 38.790543, 50.075287>,  <27.706627, 38.851856, 49.834267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019917, 38.790543, 50.075287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576488, -0.183923, -0.796137,
		0.232861, 0.970915, -0.055685,
		0.783223, -0.153288, 0.602549,
		28.254883, 38.744556, 50.256050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224047, 39.004948, 49.436172>,  <27.706627, 38.851856, 49.834267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224047, 39.004948, 49.436172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.410183, 38.810005, 49.731724>,  <28.521864, 38.693039, 49.909054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.410183, 38.810005, 49.731724>,  <28.224047, 39.004948, 49.436172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410183, 38.810005, 49.731724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604046, -0.435320, -0.667552,
		0.646983, 0.756957, 0.091811,
		0.465341, -0.487352, 0.738881,
		28.549786, 38.663799, 49.953388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012423, 39.143532, 49.308819>,  <28.224047, 39.004948, 49.436172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012423, 39.143532, 49.308819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.960228, 38.803589, 49.513062>,  <28.928911, 38.599625, 49.635609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.960228, 38.803589, 49.513062>,  <29.012423, 39.143532, 49.308819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960228, 38.803589, 49.513062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596840, -0.478572, -0.644012,
		0.791679, 0.220716, 0.569674,
		-0.130486, -0.849855, 0.510607,
		28.921082, 38.548634, 49.666245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686083, 38.896618, 49.384632>,  <29.012423, 39.143532, 49.308819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686083, 38.896618, 49.384632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.456783, 38.574318, 49.444164>,  <29.319204, 38.380936, 49.479885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.456783, 38.574318, 49.444164>,  <29.686083, 38.896618, 49.384632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456783, 38.574318, 49.444164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626696, -0.548165, -0.553865,
		0.527862, -0.224229, 0.819196,
		-0.573248, -0.805752, 0.148832,
		29.284809, 38.332592, 49.488815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172216, 38.413586, 49.519093>,  <29.686083, 38.896618, 49.384632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172216, 38.413586, 49.519093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.835005, 38.215740, 49.434566>,  <29.632677, 38.097031, 49.383850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.835005, 38.215740, 49.434566>,  <30.172216, 38.413586, 49.519093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835005, 38.215740, 49.434566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528219, -0.687264, -0.498651,
		0.101414, -0.531998, 0.840651,
		-0.843031, -0.494618, -0.211313,
		29.582096, 38.067356, 49.371174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349827, 37.799545, 49.542191>,  <30.172216, 38.413586, 49.519093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349827, 37.799545, 49.542191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.004166, 37.752548, 49.346462>,  <29.796770, 37.724350, 49.229023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.004166, 37.752548, 49.346462>,  <30.349827, 37.799545, 49.542191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004166, 37.752548, 49.346462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417265, -0.710839, -0.566213,
		-0.281304, -0.693472, 0.663299,
		-0.864151, -0.117494, -0.489323,
		29.744921, 37.717300, 49.199665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232748, 37.078991, 49.567051>,  <30.349827, 37.799545, 49.542191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232748, 37.078991, 49.567051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.022045, 37.219669, 49.257511>,  <29.895624, 37.304077, 49.071789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.022045, 37.219669, 49.257511>,  <30.232748, 37.078991, 49.567051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022045, 37.219669, 49.257511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410348, -0.692067, -0.593850,
		-0.744408, -0.630360, 0.220233,
		-0.526756, 0.351695, -0.773847,
		29.864017, 37.325176, 49.025356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046375, 36.527046, 49.237450>,  <30.232748, 37.078991, 49.567051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046375, 36.527046, 49.237450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.009043, 36.817856, 48.965351>,  <29.986643, 36.992340, 48.802094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.009043, 36.817856, 48.965351>,  <30.046375, 36.527046, 49.237450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009043, 36.817856, 48.965351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422115, -0.589888, -0.688369,
		-0.901725, -0.351386, -0.251832,
		-0.093331, 0.727022, -0.680242,
		29.981043, 37.035961, 48.761280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745907, 36.190830, 48.678669>,  <30.046375, 36.527046, 49.237450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745907, 36.190830, 48.678669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.920584, 36.521534, 48.536812>,  <30.025391, 36.719955, 48.451698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.920584, 36.521534, 48.536812>,  <29.745907, 36.190830, 48.678669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920584, 36.521534, 48.536812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555372, -0.557883, -0.616707,
		-0.707716, 0.072355, -0.702783,
		0.436692, 0.826760, -0.354639,
		30.051592, 36.769562, 48.430420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628029, 36.152592, 47.926411>,  <29.745907, 36.190830, 48.678669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628029, 36.152592, 47.926411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.952454, 36.373440, 48.003708>,  <30.147108, 36.505947, 48.050087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.952454, 36.373440, 48.003708>,  <29.628029, 36.152592, 47.926411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952454, 36.373440, 48.003708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530946, -0.556184, -0.639340,
		-0.245513, 0.621146, -0.744245,
		0.811061, 0.552120, 0.193245,
		30.195772, 36.539078, 48.061680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964739, 36.062595, 47.309204>,  <29.628029, 36.152592, 47.926411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964739, 36.062595, 47.309204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.218462, 36.245735, 47.558372>,  <30.370695, 36.355621, 47.707874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.218462, 36.245735, 47.558372>,  <29.964739, 36.062595, 47.309204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218462, 36.245735, 47.558372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772771, -0.398351, -0.494107,
		0.021911, 0.794787, -0.606493,
		0.634307, 0.457854, 0.622916,
		30.408754, 36.383091, 47.745247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445879, 36.232975, 46.874298>,  <29.964739, 36.062595, 47.309204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445879, 36.232975, 46.874298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.626513, 36.201744, 47.229820>,  <30.734892, 36.183006, 47.443134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.626513, 36.201744, 47.229820>,  <30.445879, 36.232975, 46.874298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626513, 36.201744, 47.229820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728546, -0.542799, -0.417840,
		0.515066, 0.836226, -0.188237,
		0.451584, -0.078076, 0.888806,
		30.761988, 36.178322, 47.496464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091541, 36.179817, 46.639023>,  <30.445879, 36.232975, 46.874298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091541, 36.179817, 46.639023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.114660, 36.045551, 47.015106>,  <31.128532, 35.964993, 47.240757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.114660, 36.045551, 47.015106>,  <31.091541, 36.179817, 46.639023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114660, 36.045551, 47.015106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491829, -0.809988, -0.319410,
		0.868771, 0.480883, 0.118274,
		0.057798, -0.335665, 0.940207,
		31.132000, 35.944851, 47.297169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765909, 36.122452, 46.745365>,  <31.091541, 36.179817, 46.639023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765909, 36.122452, 46.745365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.605677, 35.882805, 47.022667>,  <31.509537, 35.739017, 47.189049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.605677, 35.882805, 47.022667>,  <31.765909, 36.122452, 46.745365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605677, 35.882805, 47.022667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685454, -0.698024, -0.207161,
		0.608020, 0.392208, 0.690279,
		-0.400581, -0.599113, 0.693252,
		31.485502, 35.703072, 47.230644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296158, 35.781685, 47.085720>,  <31.765909, 36.122452, 46.745365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296158, 35.781685, 47.085720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.983961, 35.543728, 47.162582>,  <31.796642, 35.400951, 47.208702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.983961, 35.543728, 47.162582>,  <32.296158, 35.781685, 47.085720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983961, 35.543728, 47.162582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578944, -0.803791, -0.136909,
		0.235901, 0.004391, 0.971767,
		-0.780496, -0.594896, 0.192158,
		31.749813, 35.365257, 47.220230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579845, 35.346180, 47.586708>,  <32.296158, 35.781685, 47.085720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579845, 35.346180, 47.586708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.255714, 35.165226, 47.437729>,  <32.061237, 35.056652, 47.348343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.255714, 35.165226, 47.437729>,  <32.579845, 35.346180, 47.586708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255714, 35.165226, 47.437729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539637, -0.823844, -0.173418,
		-0.228385, -0.341511, 0.911707,
		-0.810328, -0.452385, -0.372446,
		32.012615, 35.029510, 47.325996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552952, 34.738132, 47.858284>,  <32.579845, 35.346180, 47.586708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552952, 34.738132, 47.858284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326248, 34.693771, 47.531731>,  <32.190228, 34.667156, 47.335796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326248, 34.693771, 47.531731>,  <32.552952, 34.738132, 47.858284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326248, 34.693771, 47.531731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431908, -0.883818, -0.179780,
		-0.701599, -0.454496, 0.548810,
		-0.566758, -0.110902, -0.816386,
		32.156219, 34.660500, 47.286816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524414, 34.104385, 47.774452>,  <32.552952, 34.738132, 47.858284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524414, 34.104385, 47.774452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.415401, 34.230625, 47.410889>,  <32.349995, 34.306370, 47.192749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.415401, 34.230625, 47.410889>,  <32.524414, 34.104385, 47.774452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415401, 34.230625, 47.410889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443842, -0.796913, -0.409797,
		-0.853657, -0.515096, 0.077107,
		-0.272533, 0.315602, -0.908912,
		32.333641, 34.325306, 47.138214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210274, 33.488628, 47.423031>,  <32.524414, 34.104385, 47.774452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210274, 33.488628, 47.423031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.308281, 33.708748, 47.103748>,  <32.367085, 33.840820, 46.912178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.308281, 33.708748, 47.103748>,  <32.210274, 33.488628, 47.423031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308281, 33.708748, 47.103748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447576, -0.794525, -0.410373,
		-0.860025, -0.256711, -0.440972,
		0.245016, 0.550299, -0.798209,
		32.381786, 33.873837, 46.864285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031387, 33.055290, 46.873081>,  <32.210274, 33.488628, 47.423031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031387, 33.055290, 46.873081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.291237, 33.315140, 46.715107>,  <32.447147, 33.471050, 46.620323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.291237, 33.315140, 46.715107>,  <32.031387, 33.055290, 46.873081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291237, 33.315140, 46.715107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425543, -0.741190, -0.519183,
		-0.629996, 0.169212, -0.757939,
		0.649629, 0.649619, -0.394940,
		32.486126, 33.510025, 46.596626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013550, 33.075092, 46.087605>,  <32.031387, 33.055290, 46.873081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013550, 33.075092, 46.087605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.375675, 33.180588, 46.220779>,  <32.592949, 33.243885, 46.300686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.375675, 33.180588, 46.220779>,  <32.013550, 33.075092, 46.087605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375675, 33.180588, 46.220779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422255, -0.643588, -0.638354,
		0.045920, 0.718497, -0.694013,
		0.905313, 0.263737, 0.332942,
		32.647270, 33.259708, 46.320663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474808, 33.033958, 45.587078>,  <32.013550, 33.075092, 46.087605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474808, 33.033958, 45.587078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.722286, 33.050049, 45.900917>,  <32.870773, 33.059704, 46.089222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.722286, 33.050049, 45.900917>,  <32.474808, 33.033958, 45.587078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722286, 33.050049, 45.900917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467765, -0.821236, -0.326752,
		0.631196, 0.569168, -0.526915,
		0.618699, 0.040228, 0.784598,
		32.907894, 33.062119, 46.136295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075813, 32.725861, 45.416611>,  <32.474808, 33.033958, 45.587078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075813, 32.725861, 45.416611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158894, 32.691170, 45.806347>,  <33.208740, 32.670357, 46.040188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158894, 32.691170, 45.806347>,  <33.075813, 32.725861, 45.416611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158894, 32.691170, 45.806347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534775, -0.823966, -0.187335,
		0.819071, 0.559963, -0.124758,
		0.207697, -0.086723, 0.974341,
		33.221203, 32.665154, 46.098648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742687, 32.375443, 45.503239>,  <33.075813, 32.725861, 45.416611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742687, 32.375443, 45.503239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.577160, 32.320606, 45.863228>,  <33.477844, 32.287704, 46.079224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.577160, 32.320606, 45.863228>,  <33.742687, 32.375443, 45.503239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577160, 32.320606, 45.863228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324552, -0.945854, 0.005151,
		0.850540, 0.294220, 0.435909,
		-0.413822, -0.137094, 0.899976,
		33.453014, 32.279476, 46.133221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184715, 32.026859, 45.921734>,  <33.742687, 32.375443, 45.503239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184715, 32.026859, 45.921734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.822941, 31.933441, 46.064529>,  <33.605873, 31.877390, 46.150208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.822941, 31.933441, 46.064529>,  <34.184715, 32.026859, 45.921734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822941, 31.933441, 46.064529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271998, -0.960373, 0.060825,
		0.328639, 0.152114, 0.932125,
		-0.904441, -0.233547, 0.356991,
		33.551609, 31.863377, 46.171627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187710, 31.345869, 45.869148>,  <34.184715, 32.026859, 45.921734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187710, 31.345869, 45.869148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187382, 31.108591, 46.191170>,  <34.187183, 30.966225, 46.384384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187382, 31.108591, 46.191170>,  <34.187710, 31.345869, 45.869148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187382, 31.108591, 46.191170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999288, 0.029879, 0.023038,
		-0.037720, 0.804504, 0.592748,
		-0.000823, -0.593195, 0.805059,
		34.187134, 30.930634, 46.432686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573845, 31.618200, 46.409767>,  <34.187710, 31.345869, 45.869148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573845, 31.618200, 46.409767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.566780, 31.221949, 46.463943>,  <34.562542, 30.984198, 46.496449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.566780, 31.221949, 46.463943>,  <34.573845, 31.618200, 46.409767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566780, 31.221949, 46.463943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999002, -0.011925, 0.043042,
		-0.041023, 0.136068, 0.989850,
		-0.017661, -0.990628, 0.135443,
		34.561481, 30.924761, 46.504578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814430, 31.413137, 47.111847>,  <34.573845, 31.618200, 46.409767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814430, 31.413137, 47.111847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.877678, 31.119595, 46.847588>,  <34.915627, 30.943470, 46.689034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.877678, 31.119595, 46.847588>,  <34.814430, 31.413137, 47.111847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877678, 31.119595, 46.847588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978615, 0.027322, 0.203877,
		-0.131566, -0.678755, 0.722483,
		0.158122, -0.733856, -0.660645,
		34.925114, 30.899437, 46.649395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038555, 30.865160, 47.485275>,  <34.814430, 31.413137, 47.111847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038555, 30.865160, 47.485275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172508, 30.916597, 47.111897>,  <35.252880, 30.947460, 46.887871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172508, 30.916597, 47.111897>,  <35.038555, 30.865160, 47.485275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172508, 30.916597, 47.111897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918814, 0.175051, 0.353750,
		0.208890, -0.976126, -0.059531,
		0.334883, 0.128593, -0.933444,
		35.272972, 30.955175, 46.831863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567760, 30.416105, 47.301132>,  <35.038555, 30.865160, 47.485275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567760, 30.416105, 47.301132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.597046, 30.763735, 47.105438>,  <35.614616, 30.972313, 46.988022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.597046, 30.763735, 47.105438>,  <35.567760, 30.416105, 47.301132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597046, 30.763735, 47.105438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957813, 0.075422, 0.277321,
		0.277911, -0.488900, -0.826887,
		0.073217, 0.869073, -0.489235,
		35.619011, 31.024456, 46.958668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167488, 30.502546, 46.892838>,  <35.567760, 30.416105, 47.301132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167488, 30.502546, 46.892838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.080612, 30.879898, 46.993126>,  <36.028488, 31.106310, 47.053299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.080612, 30.879898, 46.993126>,  <36.167488, 30.502546, 46.892838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080612, 30.879898, 46.993126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897373, 0.091887, 0.431600,
		0.384125, 0.318732, -0.866521,
		-0.217187, 0.943381, 0.250725,
		36.015457, 31.162912, 47.068344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880936, 30.797462, 46.847210>,  <36.167488, 30.502546, 46.892838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880936, 30.797462, 46.847210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.642227, 31.062256, 47.028603>,  <36.499001, 31.221132, 47.137436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.642227, 31.062256, 47.028603>,  <36.880936, 30.797462, 46.847210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642227, 31.062256, 47.028603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765636, 0.300643, 0.568696,
		0.240131, 0.686581, -0.686253,
		-0.596773, 0.661982, 0.453478,
		36.463196, 31.260851, 47.164646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114182, 31.536018, 46.753139>,  <36.880936, 30.797462, 46.847210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114182, 31.536018, 46.753139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.899132, 31.596258, 47.084988>,  <36.770100, 31.632402, 47.284096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.899132, 31.596258, 47.084988>,  <37.114182, 31.536018, 46.753139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899132, 31.596258, 47.084988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805266, 0.383442, 0.452237,
		-0.250006, 0.911203, -0.327422,
		-0.537628, 0.150600, 0.829624,
		36.737843, 31.641438, 47.333874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140091, 32.255829, 46.847942>,  <37.114182, 31.536018, 46.753139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140091, 32.255829, 46.847942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050888, 32.100033, 47.205395>,  <36.997368, 32.006557, 47.419865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050888, 32.100033, 47.205395>,  <37.140091, 32.255829, 46.847942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050888, 32.100033, 47.205395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674703, 0.599986, 0.429875,
		-0.703594, 0.698797, 0.128987,
		-0.223005, -0.389486, 0.893627,
		36.983986, 31.983187, 47.473484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041103, 32.806015, 47.337097>,  <37.140091, 32.255829, 46.847942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041103, 32.806015, 47.337097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.124348, 32.496189, 47.576008>,  <37.174294, 32.310295, 47.719357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.124348, 32.496189, 47.576008>,  <37.041103, 32.806015, 47.337097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124348, 32.496189, 47.576008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648121, 0.566546, 0.508886,
		-0.732551, 0.281207, 0.619912,
		0.208106, -0.774563, 0.597280,
		37.186779, 32.263821, 47.755192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062912, 33.132839, 47.958580>,  <37.041103, 32.806015, 47.337097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062912, 33.132839, 47.958580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.247166, 32.779194, 47.989964>,  <37.357719, 32.567005, 48.008793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.247166, 32.779194, 47.989964>,  <37.062912, 33.132839, 47.958580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247166, 32.779194, 47.989964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701931, 0.416956, 0.577443,
		-0.543239, -0.210918, 0.812653,
		0.460634, -0.884116, 0.078457,
		37.385357, 32.513958, 48.013500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257282, 33.097027, 48.634666>,  <37.062912, 33.132839, 47.958580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257282, 33.097027, 48.634666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483952, 32.812916, 48.467632>,  <37.619953, 32.642448, 48.367413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483952, 32.812916, 48.467632>,  <37.257282, 33.097027, 48.634666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483952, 32.812916, 48.467632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803588, 0.364483, 0.470530,
		-0.182004, -0.602207, 0.777317,
		0.566675, -0.710281, -0.417588,
		37.653954, 32.599831, 48.342358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767006, 32.887257, 49.190681>,  <37.257282, 33.097027, 48.634666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767006, 32.887257, 49.190681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.896141, 32.810863, 48.819885>,  <37.973621, 32.765026, 48.597408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.896141, 32.810863, 48.819885>,  <37.767006, 32.887257, 49.190681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896141, 32.810863, 48.819885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927732, 0.257708, 0.270000,
		0.187326, -0.947160, 0.260377,
		0.322834, -0.190982, -0.926986,
		37.992992, 32.753571, 48.541790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334198, 32.461533, 49.317631>,  <37.767006, 32.887257, 49.190681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334198, 32.461533, 49.317631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371304, 32.648514, 48.965977>,  <38.393566, 32.760700, 48.754982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371304, 32.648514, 48.965977>,  <38.334198, 32.461533, 49.317631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371304, 32.648514, 48.965977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892821, 0.351800, 0.281260,
		0.440757, -0.811004, -0.384716,
		0.092760, 0.467450, -0.879140,
		38.399132, 32.788750, 48.702236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117977, 32.483654, 49.127296>,  <38.334198, 32.461533, 49.317631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117977, 32.483654, 49.127296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.962475, 32.751358, 48.874012>,  <38.869171, 32.911980, 48.722042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.962475, 32.751358, 48.874012>,  <39.117977, 32.483654, 49.127296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962475, 32.751358, 48.874012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880222, 0.472814, -0.040677,
		0.272168, -0.573180, -0.772910,
		-0.388758, 0.669262, -0.633211,
		38.845848, 32.952137, 48.684048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656734, 32.674515, 48.807987>,  <39.117977, 32.483654, 49.127296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656734, 32.674515, 48.807987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.405502, 32.967636, 48.703285>,  <39.254765, 33.143509, 48.640465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.405502, 32.967636, 48.703285>,  <39.656734, 32.674515, 48.807987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405502, 32.967636, 48.703285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767708, 0.638460, -0.054702,
		0.127035, -0.235309, -0.963583,
		-0.628081, 0.732801, -0.261756,
		39.217079, 33.187477, 48.624760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894379, 32.849648, 48.149685>,  <39.656734, 32.674515, 48.807987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894379, 32.849648, 48.149685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.705391, 33.123405, 48.371811>,  <39.591999, 33.287663, 48.505089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.705391, 33.123405, 48.371811>,  <39.894379, 32.849648, 48.149685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705391, 33.123405, 48.371811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790158, 0.608034, -0.077097,
		-0.390417, 0.402362, -0.828058,
		-0.472466, 0.684397, 0.555317,
		39.563652, 33.328724, 48.538406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969162, 32.253250, 47.734035>,  <39.894379, 32.849648, 48.149685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969162, 32.253250, 47.734035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.863598, 31.871185, 47.680340>,  <39.800259, 31.641947, 47.648121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.863598, 31.871185, 47.680340>,  <39.969162, 32.253250, 47.734035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863598, 31.871185, 47.680340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961325, 0.249107, 0.117470,
		-0.078763, 0.160051, -0.983961,
		-0.263913, -0.955160, -0.134241,
		39.784424, 31.584637, 47.640068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526253, 32.153412, 47.081425>,  <39.969162, 32.253250, 47.734035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526253, 32.153412, 47.081425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.449417, 31.888472, 47.371086>,  <39.403316, 31.729507, 47.544884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.449417, 31.888472, 47.371086>,  <39.526253, 32.153412, 47.081425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449417, 31.888472, 47.371086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969900, 0.240650, -0.037168,
		-0.149648, -0.709493, -0.688640,
		-0.192092, -0.662350, 0.724150,
		39.391788, 31.689766, 47.588329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112705, 32.744621, 46.994591>,  <39.526253, 32.153412, 47.081425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112705, 32.744621, 46.994591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.349609, 32.597088, 46.708042>,  <39.491753, 32.508568, 46.536114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.349609, 32.597088, 46.708042>,  <39.112705, 32.744621, 46.994591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349609, 32.597088, 46.708042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108012, 0.844714, -0.524206,
		0.798474, 0.387843, 0.460452,
		0.592260, -0.368831, -0.716374,
		39.527287, 32.486439, 46.493130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664448, 33.105942, 47.056080>,  <39.112705, 32.744621, 46.994591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664448, 33.105942, 47.056080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536114, 32.985016, 46.697044>,  <39.459114, 32.912460, 46.481621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536114, 32.985016, 46.697044>,  <39.664448, 33.105942, 47.056080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536114, 32.985016, 46.697044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056288, 0.952103, -0.300552,
		0.945460, -0.045905, -0.322487,
		-0.320837, -0.302312, -0.897592,
		39.439865, 32.894321, 46.427765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864948, 33.578159, 46.577667>,  <39.664448, 33.105942, 47.056080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864948, 33.578159, 46.577667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.554604, 33.397102, 46.401867>,  <39.368397, 33.288467, 46.296387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.554604, 33.397102, 46.401867>,  <39.864948, 33.578159, 46.577667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554604, 33.397102, 46.401867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292686, 0.875347, -0.384840,
		0.558908, -0.169947, -0.811628,
		-0.775859, -0.452643, -0.439497,
		39.321846, 33.261311, 46.270016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935349, 32.917061, 46.160393>,  <39.864948, 33.578159, 46.577667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935349, 32.917061, 46.160393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.307201, 32.994640, 46.035072>,  <40.530315, 33.041187, 45.959881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.307201, 32.994640, 46.035072>,  <39.935349, 32.917061, 46.160393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307201, 32.994640, 46.035072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184184, -0.491846, -0.850978,
		-0.319143, 0.848806, -0.421516,
		0.929637, 0.193947, -0.313305,
		40.586094, 33.052826, 45.941082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910282, 32.668472, 45.502171>,  <39.935349, 32.917061, 46.160393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910282, 32.668472, 45.502171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.299198, 32.742756, 45.558960>,  <40.532547, 32.787327, 45.593033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.299198, 32.742756, 45.558960>,  <39.910282, 32.668472, 45.502171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299198, 32.742756, 45.558960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196025, -0.316864, -0.927993,
		-0.127356, 0.930112, -0.344489,
		0.972294, 0.185714, 0.141971,
		40.590885, 32.798470, 45.601551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119892, 32.980297, 44.891918>,  <39.910282, 32.668472, 45.502171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119892, 32.980297, 44.891918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.434811, 32.794739, 45.054379>,  <40.623764, 32.683403, 45.151855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.434811, 32.794739, 45.054379>,  <40.119892, 32.980297, 44.891918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434811, 32.794739, 45.054379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200746, -0.429977, -0.880239,
		0.582974, 0.774547, -0.245396,
		0.787301, -0.463894, 0.406153,
		40.671001, 32.655571, 45.176224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814816, 33.195091, 44.601486>,  <40.119892, 32.980297, 44.891918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814816, 33.195091, 44.601486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.756905, 32.824165, 44.739544>,  <40.722157, 32.601608, 44.822380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.756905, 32.824165, 44.739544>,  <40.814816, 33.195091, 44.601486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756905, 32.824165, 44.739544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159184, -0.366106, -0.916857,
		0.976576, -0.077799, 0.200617,
		-0.144778, -0.927315, 0.345146,
		40.713470, 32.545971, 44.843086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300964, 32.726353, 44.398285>,  <40.814816, 33.195091, 44.601486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300964, 32.726353, 44.398285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.975647, 32.495739, 44.429672>,  <40.780457, 32.357372, 44.448505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.975647, 32.495739, 44.429672>,  <41.300964, 32.726353, 44.398285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975647, 32.495739, 44.429672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113964, -0.290088, -0.950190,
		0.570577, -0.763845, 0.301632,
		-0.813298, -0.576532, 0.078467,
		40.731659, 32.322781, 44.453213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059414, 32.489098, 44.321461>,  <41.300964, 32.726353, 44.398285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059414, 32.489098, 44.321461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.017490, 32.823498, 44.106010>,  <41.992336, 33.024139, 43.976742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.017490, 32.823498, 44.106010>,  <42.059414, 32.489098, 44.321461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017490, 32.823498, 44.106010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845989, -0.209768, -0.490205,
		-0.522799, -0.507046, -0.685264,
		-0.104810, 0.836004, -0.538621,
		41.986046, 33.074299, 43.944424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122246, 32.302563, 43.661942>,  <42.059414, 32.489098, 44.321461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122246, 32.302563, 43.661942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.257298, 32.674408, 43.721039>,  <42.338329, 32.897514, 43.756496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.257298, 32.674408, 43.721039>,  <42.122246, 32.302563, 43.661942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257298, 32.674408, 43.721039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847736, -0.232092, -0.476945,
		-0.409084, 0.286276, -0.866427,
		0.337628, 0.929613, 0.147741,
		42.358585, 32.953293, 43.765362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329929, 32.712170, 42.999367>,  <42.122246, 32.302563, 43.661942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329929, 32.712170, 42.999367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.529247, 32.827736, 43.326347>,  <42.648838, 32.897076, 43.522537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.529247, 32.827736, 43.326347>,  <42.329929, 32.712170, 42.999367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529247, 32.827736, 43.326347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860571, -0.279476, -0.425805,
		0.105439, 0.915654, -0.387892,
		0.498297, 0.288912, 0.817453,
		42.678738, 32.914410, 43.571583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977337, 33.090649, 42.729969>,  <42.329929, 32.712170, 42.999367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977337, 33.090649, 42.729969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.033878, 32.921219, 43.087875>,  <43.067802, 32.819561, 43.302620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.033878, 32.921219, 43.087875>,  <42.977337, 33.090649, 42.729969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033878, 32.921219, 43.087875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909937, -0.300406, -0.285956,
		0.389916, 0.854602, 0.342959,
		0.141352, -0.423570, 0.894767,
		43.076283, 32.794147, 43.356304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692913, 33.330669, 42.787144>,  <42.977337, 33.090649, 42.729969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692913, 33.330669, 42.787144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.635986, 33.115986, 43.119816>,  <43.601830, 32.987175, 43.319420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.635986, 33.115986, 43.119816>,  <43.692913, 33.330669, 42.787144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.635986, 33.115986, 43.119816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824549, -0.529124, -0.200367,
		0.547600, 0.657244, 0.517846,
		-0.142315, -0.536711, 0.831678,
		43.593292, 32.954971, 43.369320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353134, 33.055996, 42.385288>,  <43.692913, 33.330669, 42.787144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353134, 33.055996, 42.385288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.544151, 32.707466, 42.340137>,  <44.658760, 32.498348, 42.313046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.544151, 32.707466, 42.340137>,  <44.353134, 33.055996, 42.385288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544151, 32.707466, 42.340137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862666, 0.440626, 0.248306,
		-0.166621, -0.215950, 0.962083,
		0.477540, -0.871329, -0.112875,
		44.687412, 32.446068, 42.306274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614056, 32.774876, 43.042667>,  <44.353134, 33.055996, 42.385288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614056, 32.774876, 43.042667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.800365, 32.733829, 42.691093>,  <44.912151, 32.709202, 42.480148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.800365, 32.733829, 42.691093>,  <44.614056, 32.774876, 43.042667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800365, 32.733829, 42.691093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759140, 0.556723, 0.337294,
		0.454712, -0.824336, 0.337204,
		0.465773, -0.102614, -0.878935,
		44.940098, 32.703045, 42.427414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.331398, 32.705536, 43.091656>,  <44.614056, 32.774876, 43.042667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.331398, 32.705536, 43.091656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.267071, 32.884262, 42.739635>,  <45.228474, 32.991497, 42.528423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.267071, 32.884262, 42.739635>,  <45.331398, 32.705536, 43.091656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.267071, 32.884262, 42.739635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652373, 0.717230, 0.244930,
		0.740638, -0.534734, -0.406835,
		-0.160822, 0.446813, -0.880054,
		45.218822, 33.018307, 42.475620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.985798, 32.823433, 42.673046>,  <45.331398, 32.705536, 43.091656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.985798, 32.823433, 42.673046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.690365, 33.085381, 42.608994>,  <45.513103, 33.242550, 42.570564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.690365, 33.085381, 42.608994>,  <45.985798, 32.823433, 42.673046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690365, 33.085381, 42.608994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558313, 0.727288, 0.399173,
		0.377865, 0.205422, -0.902785,
		-0.738583, 0.654870, -0.160127,
		45.468788, 33.281841, 42.560955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.552799, 32.357254, 42.928261>,  <45.985798, 32.823433, 42.673046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.552799, 32.357254, 42.928261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.686291, 32.482506, 42.572605>,  <46.766384, 32.557659, 42.359211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.686291, 32.482506, 42.572605>,  <46.552799, 32.357254, 42.928261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.686291, 32.482506, 42.572605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310789, 0.853933, 0.417383,
		0.889966, -0.415627, 0.187659,
		0.333724, 0.313134, -0.889143,
		46.786407, 32.576447, 42.305862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.268631, 32.753563, 42.994942>,  <46.552799, 32.357254, 42.928261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.268631, 32.753563, 42.994942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.998055, 32.876984, 42.727440>,  <46.835709, 32.951035, 42.566940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.998055, 32.876984, 42.727440>,  <47.268631, 32.753563, 42.994942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.998055, 32.876984, 42.727440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045327, 0.888852, 0.455947,
		0.735103, 0.338732, -0.587268,
		-0.676439, 0.308548, -0.668752,
		46.795124, 32.969547, 42.526814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.477135, 33.337055, 42.584709>,  <47.268631, 32.753563, 42.994942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.477135, 33.337055, 42.584709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.079002, 33.350208, 42.621021>,  <46.840122, 33.358101, 42.642807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.079002, 33.350208, 42.621021>,  <47.477135, 33.337055, 42.584709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.079002, 33.350208, 42.621021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080855, 0.797801, 0.597475,
		-0.052777, 0.602024, -0.796732,
		-0.995328, 0.032887, 0.090782,
		46.780403, 33.360073, 42.648254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.631111, 33.582832, 41.894997>,  <47.477135, 33.337055, 42.584709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.631111, 33.582832, 41.894997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.830639, 33.927818, 41.860744>,  <47.950356, 34.134811, 41.840191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.830639, 33.927818, 41.860744>,  <47.631111, 33.582832, 41.894997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.830639, 33.927818, 41.860744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347874, -0.108738, 0.931214,
		0.793831, -0.494292, -0.354270,
		0.498814, 0.862468, -0.085632,
		47.980282, 34.186558, 41.835056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.267239, 32.953136, 41.716022>,  <47.631111, 33.582832, 41.894997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.267239, 32.953136, 41.716022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.011543, 32.672447, 41.590199>,  <46.858124, 32.504032, 41.514702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.011543, 32.672447, 41.590199>,  <47.267239, 32.953136, 41.716022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.011543, 32.672447, 41.590199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167501, 0.272176, -0.947557,
		0.750542, -0.658407, -0.056446,
		-0.639242, -0.701726, -0.314563,
		46.819771, 32.461929, 41.495831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.582180, 32.618736, 41.122753>,  <47.267239, 32.953136, 41.716022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.582180, 32.618736, 41.122753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.195473, 32.527901, 41.075771>,  <46.963448, 32.473400, 41.047581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.195473, 32.527901, 41.075771>,  <47.582180, 32.618736, 41.122753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.195473, 32.527901, 41.075771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087645, 0.137208, -0.986657,
		0.240174, -0.964160, -0.112745,
		-0.966765, -0.227088, -0.117458,
		46.905441, 32.459774, 41.040535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.371323, 32.100311, 40.601437>,  <47.582180, 32.618736, 41.122753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.371323, 32.100311, 40.601437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.074207, 32.367908, 40.590710>,  <46.895939, 32.528465, 40.584274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.074207, 32.367908, 40.590710>,  <47.371323, 32.100311, 40.601437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.074207, 32.367908, 40.590710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176982, 0.157560, -0.971521,
		-0.645717, -0.726375, -0.235433,
		-0.742784, 0.668995, -0.026816,
		46.851372, 32.568607, 40.582664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.902275, 31.937527, 39.912949>,  <47.371323, 32.100311, 40.601437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.902275, 31.937527, 39.912949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.911068, 32.319286, 40.032040>,  <46.916344, 32.548344, 40.103493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.911068, 32.319286, 40.032040>,  <46.902275, 31.937527, 39.912949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.911068, 32.319286, 40.032040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149909, 0.291283, -0.944818,
		-0.988455, 0.065405, -0.136668,
		0.021987, 0.954398, 0.297725,
		46.917664, 32.605606, 40.121357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.437702, 32.299259, 39.456924>,  <46.902275, 31.937527, 39.912949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.437702, 32.299259, 39.456924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.711643, 32.544987, 39.613682>,  <46.876007, 32.692425, 39.707737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.711643, 32.544987, 39.613682>,  <46.437702, 32.299259, 39.456924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.711643, 32.544987, 39.613682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084293, 0.467416, -0.880010,
		-0.723789, 0.635711, 0.268328,
		0.684853, 0.614323, 0.391897,
		46.917099, 32.729282, 39.731251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.260662, 32.889130, 39.336998>,  <46.437702, 32.299259, 39.456924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.260662, 32.889130, 39.336998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.654160, 32.817806, 39.328552>,  <46.890259, 32.775013, 39.323486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.654160, 32.817806, 39.328552>,  <46.260662, 32.889130, 39.336998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.654160, 32.817806, 39.328552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064919, 0.462838, -0.884063,
		0.167407, 0.868324, 0.466891,
		0.983748, -0.178309, -0.021112,
		46.949284, 32.764313, 39.322220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.526569, 33.613068, 39.298481>,  <46.260662, 32.889130, 39.336998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.526569, 33.613068, 39.298481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.721790, 33.289310, 39.167831>,  <46.838924, 33.095055, 39.089439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.721790, 33.289310, 39.167831>,  <46.526569, 33.613068, 39.298481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.721790, 33.289310, 39.167831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032882, 0.356906, -0.933562,
		0.872195, 0.466366, 0.147574,
		0.488052, -0.809395, -0.326626,
		46.868206, 33.046494, 39.069843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.993176, 33.950527, 38.914944>,  <46.526569, 33.613068, 39.298481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.993176, 33.950527, 38.914944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.900654, 33.572613, 38.822098>,  <46.845142, 33.345863, 38.766392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.900654, 33.572613, 38.822098>,  <46.993176, 33.950527, 38.914944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.900654, 33.572613, 38.822098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097388, 0.259868, -0.960721,
		0.967995, -0.199615, -0.152120,
		-0.231305, -0.944787, -0.232111,
		46.831261, 33.289177, 38.752464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.361588, 33.690006, 38.435246>,  <46.993176, 33.950527, 38.914944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.361588, 33.690006, 38.435246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.013817, 33.493408, 38.415119>,  <46.805157, 33.375450, 38.403042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.013817, 33.493408, 38.415119>,  <47.361588, 33.690006, 38.435246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.013817, 33.493408, 38.415119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097725, 0.270906, -0.957632,
		0.484308, -0.827670, -0.283564,
		-0.869422, -0.491500, -0.050318,
		46.752991, 33.345959, 38.400024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.488544, 33.126705, 37.995075>,  <47.361588, 33.690006, 38.435246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.488544, 33.126705, 37.995075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.102692, 33.232037, 37.999809>,  <46.871181, 33.295235, 38.002647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.102692, 33.232037, 37.999809>,  <47.488544, 33.126705, 37.995075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.102692, 33.232037, 37.999809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004810, 0.062461, -0.998036,
		-0.263551, -0.962682, -0.061519,
		-0.964633, 0.263329, 0.011831,
		46.813301, 33.311035, 38.003357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.202461, 32.917793, 37.440323>,  <47.488544, 33.126705, 37.995075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.202461, 32.917793, 37.440323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.899487, 33.150879, 37.558128>,  <46.717701, 33.290730, 37.628811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.899487, 33.150879, 37.558128>,  <47.202461, 32.917793, 37.440323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.899487, 33.150879, 37.558128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321032, 0.060400, -0.945140,
		-0.568534, -0.810431, 0.141320,
		-0.757435, 0.582713, 0.294513,
		46.672256, 33.325691, 37.646481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.470413, 32.603580, 37.279747>,  <47.202461, 32.917793, 37.440323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.470413, 32.603580, 37.279747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.489548, 33.003113, 37.282627>,  <46.501030, 33.242832, 37.284355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.489548, 33.003113, 37.282627>,  <46.470413, 32.603580, 37.279747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489548, 33.003113, 37.282627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159880, 0.014773, -0.987026,
		-0.985977, 0.046067, 0.160400,
		0.047839, 0.998829, 0.007200,
		46.503899, 33.302761, 37.284786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.842854, 32.943409, 37.043507>,  <46.470413, 32.603580, 37.279747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.842854, 32.943409, 37.043507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.144093, 33.193935, 36.962936>,  <46.324837, 33.344254, 36.914593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.144093, 33.193935, 36.962936>,  <45.842854, 32.943409, 37.043507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.144093, 33.193935, 36.962936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146888, -0.138366, -0.979428,
		-0.641305, 0.767189, -0.012204,
		0.753095, 0.626319, -0.201426,
		46.370022, 33.381832, 36.902508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583996, 33.430824, 36.540615>,  <45.842854, 32.943409, 37.043507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.583996, 33.430824, 36.540615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.978092, 33.372616, 36.504566>,  <46.214550, 33.337688, 36.482937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.978092, 33.372616, 36.504566>,  <45.583996, 33.430824, 36.540615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.978092, 33.372616, 36.504566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083543, 0.050747, -0.995211,
		0.149400, 0.988053, 0.037841,
		0.985241, -0.145523, -0.090127,
		46.273666, 33.328960, 36.477528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.905781, 33.965523, 36.198685>,  <45.583996, 33.430824, 36.540615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.905781, 33.965523, 36.198685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.114136, 33.637932, 36.102394>,  <46.239147, 33.441376, 36.044621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.114136, 33.637932, 36.102394>,  <45.905781, 33.965523, 36.198685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.114136, 33.637932, 36.102394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126571, 0.204786, -0.970589,
		0.844190, 0.536036, 0.003011,
		0.520887, -0.818980, -0.240725,
		46.270401, 33.392239, 36.030178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.523232, 34.111874, 35.836903>,  <45.905781, 33.965523, 36.198685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.523232, 34.111874, 35.836903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.458202, 33.731091, 35.733105>,  <46.419186, 33.502621, 35.670826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.458202, 33.731091, 35.733105>,  <46.523232, 34.111874, 35.836903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.458202, 33.731091, 35.733105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107429, 0.278512, -0.954406,
		0.980830, -0.127286, -0.147547,
		-0.162576, -0.951961, -0.259499,
		46.409428, 33.445503, 35.655254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.881847, 34.031818, 35.234810>,  <46.523232, 34.111874, 35.836903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.881847, 34.031818, 35.234810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.633179, 33.718788, 35.221497>,  <46.483978, 33.530972, 35.213509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.633179, 33.718788, 35.221497>,  <46.881847, 34.031818, 35.234810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.633179, 33.718788, 35.221497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125721, 0.141627, -0.981904,
		0.773124, -0.606237, -0.186431,
		-0.621670, -0.782572, -0.033279,
		46.446678, 33.484016, 35.211514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.345482, 34.631058, 35.005322>,  <46.881847, 34.031818, 35.234810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.345482, 34.631058, 35.005322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.657368, 34.826073, 35.162476>,  <47.844498, 34.943081, 35.256767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.657368, 34.826073, 35.162476>,  <47.345482, 34.631058, 35.005322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.657368, 34.826073, 35.162476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456656, -0.013482, -0.889541,
		-0.428386, 0.872999, -0.233148,
		0.779712, 0.487535, 0.392885,
		47.891281, 34.972332, 35.280342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.646080, 35.108166, 55.546085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.899025, 35.147316, 55.853474>,  <32.050793, 35.170807, 56.037907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.899025, 35.147316, 55.853474>,  <31.646080, 35.108166, 55.546085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899025, 35.147316, 55.853474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756343, -0.292524, -0.585128,
		0.167527, 0.951236, -0.259007,
		0.632361, 0.097873, 0.768466,
		32.088734, 35.176678, 56.084015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171249, 35.409561, 55.233685>,  <31.646080, 35.108166, 55.546085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171249, 35.409561, 55.233685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.300442, 35.229931, 55.566914>,  <32.377956, 35.122150, 55.766850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.300442, 35.229931, 55.566914>,  <32.171249, 35.409561, 55.233685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300442, 35.229931, 55.566914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765349, -0.393852, -0.509040,
		0.556706, 0.802002, 0.216495,
		0.322985, -0.449080, 0.833071,
		32.397339, 35.095207, 55.816833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837944, 35.744781, 55.310505>,  <32.171249, 35.409561, 55.233685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837944, 35.744781, 55.310505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.819714, 35.397995, 55.509014>,  <32.808773, 35.189922, 55.628120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.819714, 35.397995, 55.509014>,  <32.837944, 35.744781, 55.310505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819714, 35.397995, 55.509014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634844, -0.408709, -0.655691,
		0.771295, 0.285169, 0.569019,
		-0.045581, -0.866969, 0.496273,
		32.806038, 35.137905, 55.657898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558506, 35.583237, 55.392200>,  <32.837944, 35.744781, 55.310505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558506, 35.583237, 55.392200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.395542, 35.231754, 55.491707>,  <33.297764, 35.020863, 55.551411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.395542, 35.231754, 55.491707>,  <33.558506, 35.583237, 55.392200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395542, 35.231754, 55.491707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765340, -0.477138, -0.431965,
		0.498266, 0.014402, 0.866904,
		-0.407412, -0.878710, 0.248764,
		33.273319, 34.968140, 55.566338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073902, 35.114315, 55.739563>,  <33.558506, 35.583237, 55.392200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073902, 35.114315, 55.739563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.791893, 34.879055, 55.581059>,  <33.622688, 34.737900, 55.485954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.791893, 34.879055, 55.581059>,  <34.073902, 35.114315, 55.739563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791893, 34.879055, 55.581059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683932, -0.416095, -0.599251,
		0.187567, -0.693501, 0.695610,
		-0.705022, -0.588150, -0.396262,
		33.580387, 34.702610, 55.462181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418968, 34.532333, 55.782372>,  <34.073902, 35.114315, 55.739563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418968, 34.532333, 55.782372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.149872, 34.518093, 55.486763>,  <33.988415, 34.509548, 55.309399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.149872, 34.518093, 55.486763>,  <34.418968, 34.532333, 55.782372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149872, 34.518093, 55.486763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596180, -0.617606, -0.512964,
		-0.438159, -0.785681, 0.436717,
		-0.672745, -0.035602, -0.739017,
		33.948048, 34.507412, 55.265057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751175, 34.011143, 55.395004>,  <34.418968, 34.532333, 55.782372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751175, 34.011143, 55.395004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.449188, 34.127171, 55.159760>,  <34.267994, 34.196789, 55.018612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.449188, 34.127171, 55.159760>,  <34.751175, 34.011143, 55.395004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449188, 34.127171, 55.159760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335105, -0.600241, -0.726234,
		-0.563665, -0.745367, 0.355963,
		-0.754974, 0.290068, -0.588111,
		34.222698, 34.214191, 54.983326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437969, 33.321655, 55.099922>,  <34.751175, 34.011143, 55.395004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437969, 33.321655, 55.099922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.391644, 33.657944, 54.888348>,  <34.363846, 33.859718, 54.761402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.391644, 33.657944, 54.888348>,  <34.437969, 33.321655, 55.099922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391644, 33.657944, 54.888348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431066, -0.437214, -0.789320,
		-0.894856, -0.319424, -0.311770,
		-0.115818, 0.840721, -0.528937,
		34.356899, 33.910160, 54.729668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087105, 33.096928, 54.552277>,  <34.437969, 33.321655, 55.099922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087105, 33.096928, 54.552277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.231049, 33.452152, 54.437847>,  <34.317413, 33.665287, 54.369190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.231049, 33.452152, 54.437847>,  <34.087105, 33.096928, 54.552277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231049, 33.452152, 54.437847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230881, -0.381845, -0.894924,
		-0.903988, 0.255997, -0.342448,
		0.359860, 0.888065, -0.286078,
		34.339008, 33.718571, 54.352024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051300, 33.089424, 53.863453>,  <34.087105, 33.096928, 54.552277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051300, 33.089424, 53.863453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.311771, 33.388626, 53.914757>,  <34.468056, 33.568146, 53.945538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.311771, 33.388626, 53.914757>,  <34.051300, 33.089424, 53.863453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311771, 33.388626, 53.914757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386277, -0.181201, -0.904409,
		-0.653264, 0.638477, -0.406933,
		0.651181, 0.748006, 0.128256,
		34.507126, 33.613029, 53.953232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971642, 33.631565, 53.363873>,  <34.051300, 33.089424, 53.863453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971642, 33.631565, 53.363873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.343262, 33.685509, 53.501667>,  <34.566235, 33.717876, 53.584343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.343262, 33.685509, 53.501667>,  <33.971642, 33.631565, 53.363873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343262, 33.685509, 53.501667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356829, -0.080953, -0.930655,
		-0.097619, 0.987553, -0.123331,
		0.929055, 0.134858, 0.344485,
		34.621979, 33.725967, 53.605011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273685, 34.064163, 52.855427>,  <33.971642, 33.631565, 53.363873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273685, 34.064163, 52.855427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.576771, 33.893471, 53.052921>,  <34.758621, 33.791054, 53.171417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.576771, 33.893471, 53.052921>,  <34.273685, 34.064163, 52.855427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576771, 33.893471, 53.052921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476719, -0.154723, -0.865332,
		0.445655, 0.891045, 0.086195,
		0.757714, -0.426730, 0.493732,
		34.804085, 33.765453, 53.201042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909721, 34.337124, 52.563000>,  <34.273685, 34.064163, 52.855427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909721, 34.337124, 52.563000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.989044, 33.982910, 52.731049>,  <35.036636, 33.770382, 52.831879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.989044, 33.982910, 52.731049>,  <34.909721, 34.337124, 52.563000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989044, 33.982910, 52.731049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425876, -0.308216, -0.850666,
		0.882783, 0.347611, 0.316007,
		0.198302, -0.885534, 0.420127,
		35.048534, 33.717251, 52.857086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580822, 34.233253, 52.236649>,  <34.909721, 34.337124, 52.563000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580822, 34.233253, 52.236649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.446655, 33.889801, 52.391697>,  <35.366154, 33.683731, 52.484726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.446655, 33.889801, 52.391697>,  <35.580822, 34.233253, 52.236649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446655, 33.889801, 52.391697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349824, -0.495557, -0.795014,
		0.874709, -0.131066, 0.466590,
		-0.335421, -0.858630, 0.387617,
		35.346027, 33.632214, 52.507980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096752, 33.818726, 52.136856>,  <35.580822, 34.233253, 52.236649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096752, 33.818726, 52.136856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.820469, 33.532345, 52.177528>,  <35.654701, 33.360516, 52.201931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.820469, 33.532345, 52.177528>,  <36.096752, 33.818726, 52.136856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820469, 33.532345, 52.177528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344585, -0.449482, -0.824153,
		0.635757, -0.534209, 0.557166,
		-0.690706, -0.715951, 0.101680,
		35.613258, 33.317558, 52.208031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417995, 33.231609, 52.094223>,  <36.096752, 33.818726, 52.136856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417995, 33.231609, 52.094223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.034500, 33.156681, 52.008690>,  <35.804401, 33.111725, 51.957371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.034500, 33.156681, 52.008690>,  <36.417995, 33.231609, 52.094223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034500, 33.156681, 52.008690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283023, -0.558317, -0.779859,
		0.026700, -0.808203, 0.588299,
		-0.958741, -0.187324, -0.213833,
		35.746880, 33.100483, 51.944538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212528, 32.346687, 52.002869>,  <36.417995, 33.231609, 52.094223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212528, 32.346687, 52.002869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.912849, 32.547771, 51.830364>,  <35.733044, 32.668423, 51.726860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.912849, 32.547771, 51.830364>,  <36.212528, 32.346687, 52.002869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912849, 32.547771, 51.830364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117358, -0.540061, -0.833404,
		-0.651871, -0.674993, 0.345613,
		-0.749194, 0.502712, -0.431266,
		35.688091, 32.698586, 51.700985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910091, 31.818420, 51.603821>,  <36.212528, 32.346687, 52.002869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910091, 31.818420, 51.603821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.789379, 32.165081, 51.444904>,  <35.716953, 32.373077, 51.349556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.789379, 32.165081, 51.444904>,  <35.910091, 31.818420, 51.603821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789379, 32.165081, 51.444904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151830, -0.455090, -0.877406,
		-0.941210, -0.204463, 0.268921,
		-0.301780, 0.866654, -0.397291,
		35.698845, 32.425076, 51.325718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360622, 31.657310, 51.242085>,  <35.910091, 31.818420, 51.603821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360622, 31.657310, 51.242085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.488712, 32.010319, 51.104324>,  <35.565567, 32.222122, 51.021667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.488712, 32.010319, 51.104324>,  <35.360622, 31.657310, 51.242085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488712, 32.010319, 51.104324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019717, -0.369673, -0.928952,
		-0.947136, 0.290685, -0.135780,
		0.320227, 0.882521, -0.344399,
		35.584782, 32.275074, 51.001003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811195, 31.774036, 50.760502>,  <35.360622, 31.657310, 51.242085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811195, 31.774036, 50.760502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.135704, 31.994005, 50.681076>,  <35.330410, 32.125984, 50.633419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.135704, 31.994005, 50.681076>,  <34.811195, 31.774036, 50.760502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135704, 31.994005, 50.681076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078547, -0.439051, -0.895023,
		-0.579371, 0.710509, -0.399383,
		0.811271, 0.549920, -0.198565,
		35.379086, 32.158981, 50.621506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700451, 31.871250, 50.074081>,  <34.811195, 31.774036, 50.760502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700451, 31.871250, 50.074081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.081360, 31.964178, 50.153286>,  <35.309906, 32.019936, 50.200809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.081360, 31.964178, 50.153286>,  <34.700451, 31.871250, 50.074081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081360, 31.964178, 50.153286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301269, -0.610804, -0.732227,
		-0.049166, 0.756932, -0.651641,
		0.952271, 0.232320, 0.198010,
		35.367043, 32.033875, 50.212688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008648, 31.954285, 49.450623>,  <34.700451, 31.871250, 50.074081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008648, 31.954285, 49.450623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.276138, 31.829821, 49.720730>,  <35.436630, 31.755142, 49.882793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.276138, 31.829821, 49.720730>,  <35.008648, 31.954285, 49.450623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276138, 31.829821, 49.720730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381638, -0.635793, -0.670910,
		0.638093, 0.706361, -0.306417,
		0.668722, -0.311162, 0.675269,
		35.476753, 31.736471, 49.923309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044552, 31.697302, 48.729904>,  <35.008648, 31.954285, 49.450623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044552, 31.697302, 48.729904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.749210, 31.719219, 48.461033>,  <34.572006, 31.732368, 48.299709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.749210, 31.719219, 48.461033>,  <35.044552, 31.697302, 48.729904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749210, 31.719219, 48.461033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643030, 0.243296, 0.726168,
		0.203327, 0.968403, -0.144407,
		-0.738357, 0.054791, -0.672181,
		34.527702, 31.735657, 48.259380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729034, 32.358311, 48.893608>,  <35.044552, 31.697302, 48.729904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729034, 32.358311, 48.893608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.473923, 32.138485, 48.677746>,  <34.320858, 32.006592, 48.548229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.473923, 32.138485, 48.677746>,  <34.729034, 32.358311, 48.893608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473923, 32.138485, 48.677746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762852, 0.354002, 0.541054,
		-0.106305, 0.756745, -0.645008,
		-0.637774, -0.549563, -0.539652,
		34.282589, 31.973616, 48.515850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278042, 32.735134, 48.998722>,  <34.729034, 32.358311, 48.893608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278042, 32.735134, 48.998722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.107048, 32.388626, 48.895317>,  <34.004452, 32.180721, 48.833275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.107048, 32.388626, 48.895317>,  <34.278042, 32.735134, 48.998722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107048, 32.388626, 48.895317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806640, 0.236401, 0.541707,
		-0.408154, 0.440097, -0.799828,
		-0.427484, -0.866273, -0.258512,
		33.978802, 32.128746, 48.817764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602386, 32.851902, 48.823181>,  <34.278042, 32.735134, 48.998722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602386, 32.851902, 48.823181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.582729, 32.464050, 48.919014>,  <33.570934, 32.231339, 48.976513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.582729, 32.464050, 48.919014>,  <33.602386, 32.851902, 48.823181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582729, 32.464050, 48.919014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796076, 0.182891, 0.576900,
		-0.603198, -0.162378, -0.780888,
		-0.049142, -0.969631, 0.239585,
		33.567986, 32.173161, 48.990891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839821, 32.583412, 48.696068>,  <33.602386, 32.851902, 48.823181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839821, 32.583412, 48.696068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.003830, 32.324303, 48.952904>,  <33.102234, 32.168839, 49.107006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.003830, 32.324303, 48.952904>,  <32.839821, 32.583412, 48.696068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003830, 32.324303, 48.952904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846197, -0.007472, 0.532817,
		-0.340346, -0.761798, -0.551206,
		0.410018, -0.647771, 0.642088,
		33.126835, 32.129971, 49.145531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270317, 32.182533, 48.896912>,  <32.839821, 32.583412, 48.696068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270317, 32.182533, 48.896912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.545177, 32.056293, 49.158665>,  <32.710094, 31.980549, 49.315716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.545177, 32.056293, 49.158665>,  <32.270317, 32.182533, 48.896912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545177, 32.056293, 49.158665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684189, 0.021841, 0.728978,
		-0.244359, -0.948640, -0.200924,
		0.687149, -0.315602, 0.654386,
		32.751324, 31.961613, 49.354980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920891, 31.707270, 49.359558>,  <32.270317, 32.182533, 48.896912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920891, 31.707270, 49.359558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.236042, 31.812078, 49.582481>,  <32.425133, 31.874964, 49.716236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.236042, 31.812078, 49.582481>,  <31.920891, 31.707270, 49.359558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236042, 31.812078, 49.582481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600281, 0.124686, 0.790010,
		0.137534, -0.956966, 0.255540,
		0.787875, 0.262050, 0.557300,
		32.472404, 31.890686, 49.749672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882957, 31.310829, 50.019611>,  <31.920891, 31.707270, 49.359558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882957, 31.310829, 50.019611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.087341, 31.649616, 50.078354>,  <32.209972, 31.852888, 50.113602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.087341, 31.649616, 50.078354>,  <31.882957, 31.310829, 50.019611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087341, 31.649616, 50.078354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424746, 0.100230, 0.899747,
		0.747335, -0.522113, 0.410959,
		0.510961, 0.846966, 0.146860,
		32.240631, 31.903706, 50.122414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152515, 31.220533, 50.678837>,  <31.882957, 31.310829, 50.019611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152515, 31.220533, 50.678837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.175106, 31.613201, 50.606022>,  <32.188660, 31.848801, 50.562332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.175106, 31.613201, 50.606022>,  <32.152515, 31.220533, 50.678837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175106, 31.613201, 50.606022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562137, 0.181947, 0.806782,
		0.825113, 0.056764, 0.562109,
		0.056478, 0.981669, -0.182036,
		32.192051, 31.907701, 50.551411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449154, 31.536266, 51.310070>,  <32.152515, 31.220533, 50.678837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449154, 31.536266, 51.310070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.269558, 31.844881, 51.129784>,  <32.161800, 32.030048, 51.021614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.269558, 31.844881, 51.129784>,  <32.449154, 31.536266, 51.310070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269558, 31.844881, 51.129784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355291, 0.308671, 0.882321,
		0.819863, 0.556288, 0.135529,
		-0.448991, 0.771535, -0.450712,
		32.134861, 32.076340, 50.994572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482826, 32.046078, 51.847359>,  <32.449154, 31.536266, 51.310070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482826, 32.046078, 51.847359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.207951, 32.183056, 51.591076>,  <32.043026, 32.265244, 51.437305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.207951, 32.183056, 51.591076>,  <32.482826, 32.046078, 51.847359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207951, 32.183056, 51.591076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568923, 0.294768, 0.767749,
		0.451774, 0.892099, -0.007734,
		-0.687188, 0.342449, -0.640704,
		32.001793, 32.285789, 51.398865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384228, 32.731060, 52.011856>,  <32.482826, 32.046078, 51.847359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384228, 32.731060, 52.011856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.060459, 32.604656, 51.813877>,  <31.866198, 32.528812, 51.695091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.060459, 32.604656, 51.813877>,  <32.384228, 32.731060, 52.011856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060459, 32.604656, 51.813877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586990, 0.459397, 0.666631,
		0.016713, 0.830115, -0.557342,
		-0.809422, -0.316013, -0.494947,
		31.817633, 32.509853, 51.665394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988125, 33.340977, 51.698246>,  <32.384228, 32.731060, 52.011856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988125, 33.340977, 51.698246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.740686, 33.031609, 51.753609>,  <31.592224, 32.845985, 51.786827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.740686, 33.031609, 51.753609>,  <31.988125, 33.340977, 51.698246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740686, 33.031609, 51.753609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552645, 0.553509, 0.623066,
		-0.558502, 0.308937, -0.769827,
		-0.618594, -0.773425, 0.138404,
		31.555109, 32.799580, 51.795132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306406, 33.599480, 51.605274>,  <31.988125, 33.340977, 51.698246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306406, 33.599480, 51.605274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.254778, 33.267155, 51.821827>,  <31.223801, 33.067760, 51.951759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.254778, 33.267155, 51.821827>,  <31.306406, 33.599480, 51.605274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254778, 33.267155, 51.821827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532535, 0.518612, 0.668915,
		-0.836509, -0.201965, -0.509375,
		-0.129071, -0.830813, 0.541377,
		31.216057, 33.017910, 51.984241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621159, 33.645607, 51.780140>,  <31.306406, 33.599480, 51.605274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621159, 33.645607, 51.780140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.813831, 33.395763, 52.026020>,  <30.929436, 33.245857, 52.173546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.813831, 33.395763, 52.026020>,  <30.621159, 33.645607, 51.780140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813831, 33.395763, 52.026020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537492, 0.343443, 0.770162,
		-0.692160, -0.701367, -0.170291,
		0.481681, -0.624605, 0.614697,
		30.958336, 33.208382, 52.210430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141846, 33.399139, 52.138073>,  <30.621159, 33.645607, 51.780140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141846, 33.399139, 52.138073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.469711, 33.338783, 52.359119>,  <30.666431, 33.302570, 52.491749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.469711, 33.338783, 52.359119>,  <30.141846, 33.399139, 52.138073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469711, 33.338783, 52.359119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408787, 0.521737, 0.748788,
		-0.401304, -0.839657, 0.365967,
		0.819664, -0.150889, 0.552616,
		30.715611, 33.293518, 52.524902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944052, 33.203510, 52.791012>,  <30.141846, 33.399139, 52.138073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944052, 33.203510, 52.791012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.317837, 33.318684, 52.874794>,  <30.542109, 33.387787, 52.925064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.317837, 33.318684, 52.874794>,  <29.944052, 33.203510, 52.791012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317837, 33.318684, 52.874794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320742, 0.425282, 0.846321,
		0.154608, -0.858037, 0.489763,
		0.934463, 0.287936, 0.209457,
		30.598175, 33.405064, 52.937630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098711, 33.093597, 53.583218>,  <29.944052, 33.203510, 52.791012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098711, 33.093597, 53.583218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.352949, 33.371063, 53.447659>,  <30.505493, 33.537540, 53.366322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.352949, 33.371063, 53.447659>,  <30.098711, 33.093597, 53.583218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352949, 33.371063, 53.447659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121525, 0.523399, 0.843377,
		0.762397, -0.494862, 0.416968,
		0.635597, 0.693660, -0.338900,
		30.543629, 33.579163, 53.345989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.513491, 33.268150, 54.154228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557714, 33.582333, 53.910645>,  <30.584248, 33.770844, 53.764496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557714, 33.582333, 53.910645>,  <30.513491, 33.268150, 54.154228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557714, 33.582333, 53.910645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055601, 0.616643, 0.785277,
		0.992313, -0.052960, 0.111847,
		0.110558, 0.785459, -0.608958,
		30.590881, 33.817970, 53.727959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960558, 33.623032, 54.477215>,  <30.513491, 33.268150, 54.154228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960558, 33.623032, 54.477215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801405, 33.877422, 54.212723>,  <30.705914, 34.030056, 54.054028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801405, 33.877422, 54.212723>,  <30.960558, 33.623032, 54.477215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801405, 33.877422, 54.212723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058240, 0.701772, 0.710017,
		0.915586, 0.321013, -0.242183,
		-0.397882, 0.635977, -0.661229,
		30.682041, 34.068214, 54.014355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299911, 34.229088, 54.635876>,  <30.960558, 33.623032, 54.477215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299911, 34.229088, 54.635876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975101, 34.350792, 54.436661>,  <30.780216, 34.423813, 54.317131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975101, 34.350792, 54.436661>,  <31.299911, 34.229088, 54.635876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975101, 34.350792, 54.436661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206740, 0.648064, 0.732989,
		0.545777, 0.698170, -0.463342,
		-0.812026, 0.304257, -0.498038,
		30.731493, 34.442070, 54.287251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313164, 34.950405, 54.663292>,  <31.299911, 34.229088, 54.635876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313164, 34.950405, 54.663292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936556, 34.918411, 54.532364>,  <30.710590, 34.899216, 54.453808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936556, 34.918411, 54.532364>,  <31.313164, 34.950405, 54.663292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936556, 34.918411, 54.532364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267756, 0.767339, 0.582664,
		0.204562, 0.636233, -0.743883,
		-0.941521, -0.079989, -0.327324,
		30.654100, 34.894413, 54.434166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976206, 35.679451, 54.260967>,  <31.313164, 34.950405, 54.663292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976206, 35.679451, 54.260967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699093, 35.442280, 54.425156>,  <30.532825, 35.299976, 54.523670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699093, 35.442280, 54.425156>,  <30.976206, 35.679451, 54.260967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699093, 35.442280, 54.425156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448685, 0.800005, 0.398338,
		-0.564567, 0.091788, -0.820268,
		-0.692781, -0.592931, 0.410472,
		30.491259, 35.264400, 54.548298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349686, 35.962673, 54.113354>,  <30.976206, 35.679451, 54.260967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349686, 35.962673, 54.113354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245005, 35.724869, 54.417477>,  <30.182196, 35.582184, 54.599949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245005, 35.724869, 54.417477>,  <30.349686, 35.962673, 54.113354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245005, 35.724869, 54.417477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431116, 0.776810, 0.459027,
		-0.863511, -0.207653, -0.459597,
		-0.261701, -0.594514, 0.760306,
		30.166494, 35.546513, 54.645569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702045, 36.216446, 54.308434>,  <30.349686, 35.962673, 54.113354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702045, 36.216446, 54.308434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821861, 36.022198, 54.636932>,  <29.893751, 35.905647, 54.834034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821861, 36.022198, 54.636932>,  <29.702045, 36.216446, 54.308434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821861, 36.022198, 54.636932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555118, 0.611365, 0.563983,
		-0.775965, -0.624824, -0.086449,
		0.299539, -0.485620, 0.821249,
		29.911722, 35.876511, 54.883308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107216, 36.103172, 54.616886>,  <29.702045, 36.216446, 54.308434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107216, 36.103172, 54.616886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389647, 36.074108, 54.898647>,  <29.559105, 36.056671, 55.067703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389647, 36.074108, 54.898647>,  <29.107216, 36.103172, 54.616886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389647, 36.074108, 54.898647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494803, 0.660981, 0.564159,
		-0.506585, -0.746877, 0.430750,
		0.706075, -0.072658, 0.704400,
		29.601469, 36.052311, 55.109966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805489, 35.853863, 55.256767>,  <29.107216, 36.103172, 54.616886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805489, 35.853863, 55.256767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116119, 36.091999, 55.339230>,  <29.302498, 36.234879, 55.388706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116119, 36.091999, 55.339230>,  <28.805489, 35.853863, 55.256767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116119, 36.091999, 55.339230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551078, 0.483279, 0.680261,
		0.305350, -0.641886, 0.703380,
		0.776578, 0.595335, 0.206160,
		29.349092, 36.270599, 55.401077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659918, 35.964874, 55.881363>,  <28.805489, 35.853863, 55.256767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659918, 35.964874, 55.881363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922581, 36.244255, 55.767548>,  <29.080179, 36.411884, 55.699261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922581, 36.244255, 55.767548>,  <28.659918, 35.964874, 55.881363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922581, 36.244255, 55.767548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408144, 0.646360, 0.644699,
		0.634203, -0.307218, 0.709509,
		0.656662, 0.698453, -0.284534,
		29.119579, 36.453793, 55.682186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731255, 36.300385, 56.575470>,  <28.659918, 35.964874, 55.881363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731255, 36.300385, 56.575470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891317, 36.541851, 56.299656>,  <28.987354, 36.686733, 56.134167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891317, 36.541851, 56.299656>,  <28.731255, 36.300385, 56.575470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891317, 36.541851, 56.299656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290029, 0.797145, 0.529567,
		0.869343, -0.011924, 0.494065,
		0.400157, 0.603669, -0.689535,
		29.011364, 36.722950, 56.092796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287563, 36.618187, 56.846806>,  <28.731255, 36.300385, 56.575470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287563, 36.618187, 56.846806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124474, 36.839729, 56.556427>,  <29.026621, 36.972656, 56.382198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124474, 36.839729, 56.556427>,  <29.287563, 36.618187, 56.846806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124474, 36.839729, 56.556427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080339, 0.770190, 0.632734,
		0.909564, 0.316303, -0.269528,
		-0.407724, 0.553859, -0.725949,
		29.002157, 37.005886, 56.338642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425600, 37.270248, 57.021297>,  <29.287563, 36.618187, 56.846806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425600, 37.270248, 57.021297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182186, 37.374676, 56.721558>,  <29.036139, 37.437332, 56.541714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182186, 37.374676, 56.721558>,  <29.425600, 37.270248, 57.021297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182186, 37.374676, 56.721558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110040, 0.907446, 0.405504,
		0.785861, 0.329222, -0.523485,
		-0.608535, 0.261065, -0.749353,
		28.999626, 37.452995, 56.496750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775572, 37.864639, 56.744732>,  <29.425600, 37.270248, 57.021297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775572, 37.864639, 56.744732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384586, 37.830246, 56.667606>,  <29.149996, 37.809608, 56.621330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384586, 37.830246, 56.667606>,  <29.775572, 37.864639, 56.744732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384586, 37.830246, 56.667606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165531, 0.878997, 0.447173,
		0.131029, 0.469011, -0.873419,
		-0.977462, -0.085985, -0.192810,
		29.091349, 37.804451, 56.609764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611563, 38.474091, 56.477989>,  <29.775572, 37.864639, 56.744732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611563, 38.474091, 56.477989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257607, 38.327763, 56.593330>,  <29.045233, 38.239967, 56.662537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257607, 38.327763, 56.593330>,  <29.611563, 38.474091, 56.477989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257607, 38.327763, 56.593330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211726, 0.867284, 0.450546,
		-0.414903, 0.337631, -0.844903,
		-0.884889, -0.365820, 0.288353,
		28.992140, 38.218018, 56.679836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102917, 38.983196, 56.331268>,  <29.611563, 38.474091, 56.477989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102917, 38.983196, 56.331268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942598, 38.753994, 56.617214>,  <28.846407, 38.616474, 56.788780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942598, 38.753994, 56.617214>,  <29.102917, 38.983196, 56.331268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942598, 38.753994, 56.617214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419640, 0.808430, 0.412727,
		-0.814411, -0.134566, -0.564470,
		-0.400795, -0.573003, 0.714864,
		28.822359, 38.582092, 56.831673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419226, 39.236183, 56.455078>,  <29.102917, 38.983196, 56.331268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419226, 39.236183, 56.455078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505056, 39.046379, 56.796558>,  <28.556555, 38.932495, 57.001446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505056, 39.046379, 56.796558>,  <28.419226, 39.236183, 56.455078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505056, 39.046379, 56.796558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582065, 0.639763, 0.501900,
		-0.784320, -0.604602, -0.138920,
		0.214574, -0.474511, 0.853696,
		28.569429, 38.904026, 57.052666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739063, 39.050373, 56.750221>,  <28.419226, 39.236183, 56.455078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739063, 39.050373, 56.750221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010782, 39.029572, 57.043026>,  <28.173815, 39.017090, 57.218708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010782, 39.029572, 57.043026>,  <27.739063, 39.050373, 56.750221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010782, 39.029572, 57.043026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616874, 0.499850, 0.607961,
		-0.397515, -0.864550, 0.307467,
		0.679300, -0.052006, 0.732016,
		28.214573, 39.013969, 57.262630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347263, 38.847069, 57.447216>,  <27.739063, 39.050373, 56.750221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347263, 38.847069, 57.447216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702131, 39.013424, 57.527176>,  <27.915052, 39.113239, 57.575153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702131, 39.013424, 57.527176>,  <27.347263, 38.847069, 57.447216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702131, 39.013424, 57.527176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438509, 0.625001, 0.645820,
		0.143650, -0.660613, 0.736855,
		0.887172, 0.415890, 0.199904,
		27.968283, 39.138191, 57.587147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304783, 39.057850, 58.180706>,  <27.347263, 38.847069, 57.447216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304783, 39.057850, 58.180706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632431, 39.269711, 58.092602>,  <27.829020, 39.396828, 58.039742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632431, 39.269711, 58.092602>,  <27.304783, 39.057850, 58.180706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632431, 39.269711, 58.092602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391833, 0.797072, 0.459502,
		0.418934, -0.290085, 0.860433,
		0.819122, 0.529647, -0.220256,
		27.878168, 39.428604, 58.026524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701403, 39.290947, 58.768589>,  <27.304783, 39.057850, 58.180706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701403, 39.290947, 58.768589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826487, 39.549412, 58.490112>,  <27.901537, 39.704491, 58.323025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826487, 39.549412, 58.490112>,  <27.701403, 39.290947, 58.768589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826487, 39.549412, 58.490112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411709, 0.752728, 0.513708,
		0.855984, 0.125989, 0.501416,
		0.312708, 0.646163, -0.696194,
		27.920300, 39.743259, 58.281254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078445, 39.799046, 59.119106>,  <27.701403, 39.290947, 58.768589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078445, 39.799046, 59.119106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943913, 39.942806, 58.770920>,  <27.863194, 40.029060, 58.562008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943913, 39.942806, 58.770920>,  <28.078445, 39.799046, 59.119106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943913, 39.942806, 58.770920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417140, 0.771839, 0.479853,
		0.844319, 0.524496, -0.109674,
		-0.336332, 0.359400, -0.870467,
		27.843014, 40.050625, 58.509781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064747, 39.498985, 59.746689>,  <28.078445, 39.799046, 59.119106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064747, 39.498985, 59.746689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387360, 39.295059, 59.866421>,  <28.580927, 39.172703, 59.938259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387360, 39.295059, 59.866421>,  <28.064747, 39.498985, 59.746689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387360, 39.295059, 59.866421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007142, 0.514686, 0.857349,
		-0.591151, -0.689339, 0.418751,
		0.806530, -0.509813, 0.299334,
		28.629318, 39.142117, 59.956223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863966, 39.283806, 60.405560>,  <28.064747, 39.498985, 59.746689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863966, 39.283806, 60.405560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258808, 39.334282, 60.366158>,  <28.495712, 39.364567, 60.342514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258808, 39.334282, 60.366158>,  <27.863966, 39.283806, 60.405560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258808, 39.334282, 60.366158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011275, 0.668619, 0.743520,
		0.159687, -0.732820, 0.661418,
		0.987103, 0.126188, -0.098507,
		28.554939, 39.372139, 60.336605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855555, 39.537804, 61.027588>,  <27.863966, 39.283806, 60.405560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855555, 39.537804, 61.027588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054544, 39.379589, 61.336411>,  <28.173939, 39.284660, 61.521706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054544, 39.379589, 61.336411>,  <27.855555, 39.537804, 61.027588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054544, 39.379589, 61.336411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715757, -0.315682, -0.622926,
		0.490115, 0.862493, 0.126066,
		0.497473, -0.395538, 0.772056,
		28.203787, 39.260929, 61.568027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.475214, 39.783188, 60.927792>,  <27.855555, 39.537804, 61.027588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.475214, 39.783188, 60.927792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538235, 39.479713, 61.180641>,  <28.576048, 39.297630, 61.332352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538235, 39.479713, 61.180641>,  <28.475214, 39.783188, 60.927792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538235, 39.479713, 61.180641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769614, -0.306756, -0.559995,
		0.618766, 0.574718, 0.535563,
		0.157552, -0.758683, 0.632122,
		28.585501, 39.252110, 61.370277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169783, 39.760586, 61.076515>,  <28.475214, 39.783188, 60.927792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169783, 39.760586, 61.076515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036453, 39.389256, 61.142368>,  <28.956455, 39.166458, 61.181881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036453, 39.389256, 61.142368>,  <29.169783, 39.760586, 61.076515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036453, 39.389256, 61.142368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667521, -0.355682, -0.654146,
		0.665818, -0.108148, 0.738235,
		-0.333321, -0.928329, 0.164628,
		28.936457, 39.110756, 61.191757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673033, 39.391022, 60.914436>,  <29.169783, 39.760586, 61.076515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673033, 39.391022, 60.914436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407227, 39.092281, 60.924477>,  <29.247744, 38.913036, 60.930500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407227, 39.092281, 60.924477>,  <29.673033, 39.391022, 60.914436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407227, 39.092281, 60.924477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552111, -0.513322, -0.657019,
		0.503579, -0.422744, 0.753456,
		-0.664516, -0.746853, 0.025096,
		29.207872, 38.868225, 60.932007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994459, 38.731567, 61.079884>,  <29.673033, 39.391022, 60.914436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994459, 38.731567, 61.079884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666527, 38.655914, 60.863697>,  <29.469767, 38.610523, 60.733986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666527, 38.655914, 60.863697>,  <29.994459, 38.731567, 61.079884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666527, 38.655914, 60.863697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566087, -0.409740, -0.715304,
		-0.086163, -0.892380, 0.442984,
		-0.819830, -0.189134, -0.540469,
		29.420578, 38.599174, 60.701557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142185, 38.009491, 60.738174>,  <29.994459, 38.731567, 61.079884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142185, 38.009491, 60.738174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825686, 38.143436, 60.533512>,  <29.635786, 38.223804, 60.410717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825686, 38.143436, 60.533512>,  <30.142185, 38.009491, 60.738174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825686, 38.143436, 60.533512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311481, -0.499324, -0.808490,
		-0.526220, -0.799085, 0.290783,
		-0.791247, 0.334870, -0.511654,
		29.588310, 38.243896, 60.380016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926601, 37.431362, 60.346207>,  <30.142185, 38.009491, 60.738174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926601, 37.431362, 60.346207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781088, 37.750954, 60.154667>,  <29.693779, 37.942707, 60.039742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781088, 37.750954, 60.154667>,  <29.926601, 37.431362, 60.346207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781088, 37.750954, 60.154667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378002, -0.343215, -0.859836,
		-0.851338, -0.493799, -0.177160,
		-0.363783, 0.798978, -0.478849,
		29.671953, 37.990646, 60.011013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709917, 37.149620, 59.755188>,  <29.926601, 37.431362, 60.346207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709917, 37.149620, 59.755188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707539, 37.533386, 59.642410>,  <29.706112, 37.763645, 59.574745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707539, 37.533386, 59.642410>,  <29.709917, 37.149620, 59.755188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707539, 37.533386, 59.642410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329697, -0.264304, -0.906336,
		-0.944068, -0.098347, -0.314743,
		-0.005948, 0.959412, -0.281945,
		29.705753, 37.821209, 59.557827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213518, 37.178474, 59.203316>,  <29.709917, 37.149620, 59.755188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213518, 37.178474, 59.203316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466490, 37.483692, 59.149960>,  <29.618273, 37.666824, 59.117947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466490, 37.483692, 59.149960>,  <29.213518, 37.178474, 59.203316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466490, 37.483692, 59.149960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183527, -0.314895, -0.931214,
		-0.752563, 0.564446, -0.339188,
		0.632429, 0.763048, -0.133387,
		29.656218, 37.712608, 59.109943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147579, 37.512928, 58.512505>,  <29.213518, 37.178474, 59.203316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147579, 37.512928, 58.512505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519934, 37.586960, 58.638485>,  <29.743347, 37.631378, 58.714073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519934, 37.586960, 58.638485>,  <29.147579, 37.512928, 58.512505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519934, 37.586960, 58.638485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360714, -0.329381, -0.872579,
		-0.057756, 0.925880, -0.373377,
		0.930887, 0.185078, 0.314954,
		29.799200, 37.642483, 58.732971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495632, 37.753410, 57.890030>,  <29.147579, 37.512928, 58.512505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495632, 37.753410, 57.890030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822142, 37.706478, 58.116280>,  <30.018047, 37.678318, 58.252029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822142, 37.706478, 58.116280>,  <29.495632, 37.753410, 57.890030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822142, 37.706478, 58.116280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482781, -0.399112, -0.779507,
		0.317206, 0.909364, -0.269141,
		0.816274, -0.117328, 0.565625,
		30.067024, 37.671280, 58.285969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079586, 38.043274, 57.496685>,  <29.495632, 37.753410, 57.890030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079586, 38.043274, 57.496685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220102, 37.773178, 57.756115>,  <30.304413, 37.611122, 57.911774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220102, 37.773178, 57.756115>,  <30.079586, 38.043274, 57.496685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220102, 37.773178, 57.756115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558242, -0.405060, -0.724080,
		0.751638, 0.616424, 0.234653,
		0.351292, -0.675239, 0.648572,
		30.325489, 37.570606, 57.950687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810581, 37.965328, 57.386562>,  <30.079586, 38.043274, 57.496685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810581, 37.965328, 57.386562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699781, 37.639080, 57.589752>,  <30.633301, 37.443333, 57.711666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699781, 37.639080, 57.589752>,  <30.810581, 37.965328, 57.386562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699781, 37.639080, 57.589752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579525, -0.563498, -0.588745,
		0.766434, 0.131303, 0.628759,
		-0.277000, -0.815616, 0.507977,
		30.616682, 37.394394, 57.742146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388626, 37.539120, 57.462406>,  <30.810581, 37.965328, 57.386562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388626, 37.539120, 57.462406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084112, 37.286919, 57.522953>,  <30.901403, 37.135597, 57.559280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084112, 37.286919, 57.522953>,  <31.388626, 37.539120, 57.462406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084112, 37.286919, 57.522953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465006, -0.693554, -0.550230,
		0.451900, -0.348498, 0.821180,
		-0.761286, -0.630502, 0.151364,
		30.855726, 37.097767, 57.568363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718618, 36.989403, 57.788418>,  <31.388626, 37.539120, 57.462406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718618, 36.989403, 57.788418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376404, 36.864548, 57.623188>,  <31.171076, 36.789635, 57.524052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376404, 36.864548, 57.623188>,  <31.718618, 36.989403, 57.788418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376404, 36.864548, 57.623188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503863, -0.685473, -0.525594,
		-0.119091, -0.657796, 0.743722,
		-0.855534, -0.312141, -0.413073,
		31.119743, 36.770905, 57.499268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701401, 36.283127, 57.908520>,  <31.718618, 36.989403, 57.788418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701401, 36.283127, 57.908520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441545, 36.355148, 57.613075>,  <31.285631, 36.398361, 57.435810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441545, 36.355148, 57.613075>,  <31.701401, 36.283127, 57.908520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441545, 36.355148, 57.613075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374002, -0.770160, -0.516697,
		-0.661885, -0.611909, 0.432985,
		-0.649640, 0.180057, -0.738612,
		31.246655, 36.409164, 57.391491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349123, 35.674278, 57.829857>,  <31.701401, 36.283127, 57.908520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349123, 35.674278, 57.829857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338242, 35.899338, 57.499359>,  <31.331713, 36.034374, 57.301060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338242, 35.899338, 57.499359>,  <31.349123, 35.674278, 57.829857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338242, 35.899338, 57.499359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415409, -0.745442, -0.521298,
		-0.909228, -0.357411, -0.213452,
		-0.027202, 0.562649, -0.826248,
		31.330080, 36.068130, 57.251484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974194, 35.188850, 57.438309>,  <31.349123, 35.674278, 57.829857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974194, 35.188850, 57.438309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146235, 35.454224, 57.193401>,  <31.249460, 35.613445, 57.046455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146235, 35.454224, 57.193401>,  <30.974194, 35.188850, 57.438309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146235, 35.454224, 57.193401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455141, -0.745055, -0.487586,
		-0.779652, -0.068955, -0.622405,
		0.430105, 0.663429, -0.612267,
		31.275267, 35.653252, 57.009720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223162, 34.702709, 56.855083>,  <30.974194, 35.188850, 57.438309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223162, 34.702709, 56.855083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407494, 35.055786, 56.818226>,  <31.518093, 35.267632, 56.796112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407494, 35.055786, 56.818226>,  <31.223162, 34.702709, 56.855083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407494, 35.055786, 56.818226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636113, -0.400916, -0.659262,
		-0.618867, 0.245194, -0.746246,
		0.460829, 0.882693, -0.092142,
		31.545742, 35.320595, 56.790585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356609, 34.671932, 56.139202>,  <31.223162, 34.702709, 56.855083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356609, 34.671932, 56.139202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621685, 34.940147, 56.272598>,  <31.780731, 35.101078, 56.352634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621685, 34.940147, 56.272598>,  <31.356609, 34.671932, 56.139202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621685, 34.940147, 56.272598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713251, -0.429375, -0.553995,
		-0.228283, 0.604990, -0.762806,
		0.662691, 0.670540, 0.333491,
		31.820492, 35.141308, 56.372646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<48.009773, 34.905396, 50.508366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.976944, 34.902340, 50.907005>,  <47.957245, 34.900505, 51.146187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.976944, 34.902340, 50.907005>,  <48.009773, 34.905396, 50.508366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.976944, 34.902340, 50.907005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956184, -0.281365, -0.080902,
		0.281026, -0.959570, 0.015787,
		-0.082073, -0.007641, 0.996597,
		47.952320, 34.900047, 51.205986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.664242, 34.271454, 50.750278>,  <48.009773, 34.905396, 50.508366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.664242, 34.271454, 50.750278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.601707, 34.530964, 51.048180>,  <47.564186, 34.686668, 51.226921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.601707, 34.530964, 51.048180>,  <47.664242, 34.271454, 50.750278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.601707, 34.530964, 51.048180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979624, -0.198098, -0.033071,
		0.126078, -0.734744, 0.666524,
		-0.156336, 0.648774, 0.744749,
		47.554806, 34.725597, 51.271603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.231804, 33.905067, 51.306744>,  <47.664242, 34.271454, 50.750278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.231804, 33.905067, 51.306744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.178944, 34.298805, 51.353378>,  <47.147228, 34.535049, 51.381359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.178944, 34.298805, 51.353378>,  <47.231804, 33.905067, 51.306744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.178944, 34.298805, 51.353378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983604, -0.144789, 0.107517,
		0.122715, -0.100468, 0.987343,
		-0.132155, 0.984349, 0.116588,
		47.139297, 34.594109, 51.388355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.788616, 33.824394, 51.786385>,  <47.231804, 33.905067, 51.306744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.788616, 33.824394, 51.786385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.741436, 34.198879, 51.653961>,  <46.713127, 34.423569, 51.574509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.741436, 34.198879, 51.653961>,  <46.788616, 33.824394, 51.786385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.741436, 34.198879, 51.653961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981685, -0.059712, 0.180911,
		0.149603, 0.346330, 0.926107,
		-0.117955, 0.936211, -0.331054,
		46.706051, 34.479744, 51.554646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282787, 34.123619, 52.268635>,  <46.788616, 33.824394, 51.786385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.282787, 34.123619, 52.268635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.288208, 34.354393, 51.941963>,  <46.291462, 34.492859, 51.745960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.288208, 34.354393, 51.941963>,  <46.282787, 34.123619, 52.268635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.288208, 34.354393, 51.941963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997348, 0.066212, 0.030223,
		0.071511, 0.814102, 0.576302,
		0.013554, 0.576934, -0.816678,
		46.292274, 34.527473, 51.696960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.944027, 34.852631, 52.377079>,  <46.282787, 34.123619, 52.268635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.944027, 34.852631, 52.377079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.916477, 34.802460, 51.981194>,  <45.899948, 34.772358, 51.743664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.916477, 34.802460, 51.981194>,  <45.944027, 34.852631, 52.377079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.916477, 34.802460, 51.981194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975152, 0.217851, 0.040252,
		0.210561, 0.967889, -0.137312,
		-0.068873, -0.125425, -0.989710,
		45.895817, 34.764832, 51.684280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452667, 35.374352, 52.136234>,  <45.944027, 34.852631, 52.377079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452667, 35.374352, 52.136234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.514313, 35.132526, 51.823631>,  <45.551300, 34.987431, 51.636070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.514313, 35.132526, 51.823631>,  <45.452667, 35.374352, 52.136234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.514313, 35.132526, 51.823631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917774, 0.205379, -0.339867,
		0.365976, 0.769625, -0.523201,
		0.154115, -0.604564, -0.781506,
		45.560547, 34.951157, 51.589180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.272598, 35.784744, 51.456078>,  <45.452667, 35.374352, 52.136234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.272598, 35.784744, 51.456078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.227615, 35.389107, 51.418018>,  <45.200626, 35.151726, 51.395184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.227615, 35.389107, 51.418018>,  <45.272598, 35.784744, 51.456078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227615, 35.389107, 51.418018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914853, 0.140434, -0.378578,
		0.387810, 0.044470, -0.920666,
		-0.112457, -0.989091, -0.095145,
		45.193878, 35.092381, 51.389473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839283, 35.783218, 50.891003>,  <45.272598, 35.784744, 51.456078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.839283, 35.783218, 50.891003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.814404, 35.412495, 51.039143>,  <44.799477, 35.190060, 51.128025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.814404, 35.412495, 51.039143>,  <44.839283, 35.783218, 50.891003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814404, 35.412495, 51.039143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881298, -0.123162, -0.456229,
		0.468449, -0.354765, -0.809133,
		-0.062200, -0.926808, 0.370349,
		44.795742, 35.134453, 51.150246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685165, 35.347927, 50.344082>,  <44.839283, 35.783218, 50.891003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685165, 35.347927, 50.344082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.549370, 35.124664, 50.646923>,  <44.467892, 34.990707, 50.828629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.549370, 35.124664, 50.646923>,  <44.685165, 35.347927, 50.344082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549370, 35.124664, 50.646923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883442, -0.087121, -0.460370,
		0.322918, -0.825150, -0.463521,
		-0.339492, -0.558155, 0.757105,
		44.447521, 34.957218, 50.874054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325058, 34.888329, 49.994595>,  <44.685165, 35.347927, 50.344082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325058, 34.888329, 49.994595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.187225, 34.841991, 50.367226>,  <44.104527, 34.814190, 50.590805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.187225, 34.841991, 50.367226>,  <44.325058, 34.888329, 49.994595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187225, 34.841991, 50.367226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886541, -0.286194, -0.363507,
		0.308725, -0.951142, -0.004088,
		-0.344577, -0.115848, 0.931582,
		44.083851, 34.807236, 50.646702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897533, 34.290920, 49.949623>,  <44.325058, 34.888329, 49.994595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897533, 34.290920, 49.949623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.800972, 34.493580, 50.280689>,  <43.743034, 34.615173, 50.479328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.800972, 34.493580, 50.280689>,  <43.897533, 34.290920, 49.949623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800972, 34.493580, 50.280689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970405, -0.131462, -0.202563,
		0.006179, -0.852073, 0.523387,
		-0.241404, 0.506646, 0.827668,
		43.728550, 34.645573, 50.528988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254997, 34.002502, 50.270226>,  <43.897533, 34.290920, 49.949623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254997, 34.002502, 50.270226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.252220, 34.355396, 50.458530>,  <43.250553, 34.567131, 50.571514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.252220, 34.355396, 50.458530>,  <43.254997, 34.002502, 50.270226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252220, 34.355396, 50.458530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998045, 0.023126, -0.058060,
		-0.062109, -0.470243, 0.880349,
		-0.006944, 0.882234, 0.470760,
		43.250137, 34.620068, 50.599758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.751553, 33.986263, 50.865852>,  <43.254997, 34.002502, 50.270226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.751553, 33.986263, 50.865852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.817429, 34.368633, 50.768631>,  <42.856953, 34.598057, 50.710297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.817429, 34.368633, 50.768631>,  <42.751553, 33.986263, 50.865852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817429, 34.368633, 50.768631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985580, 0.149777, -0.078733,
		-0.038859, 0.252519, 0.966811,
		0.164687, 0.955929, -0.243058,
		42.866837, 34.655411, 50.695713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193542, 34.335964, 51.138424>,  <42.751553, 33.986263, 50.865852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193542, 34.335964, 51.138424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.321915, 34.627407, 50.896389>,  <42.398937, 34.802273, 50.751167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.321915, 34.627407, 50.896389>,  <42.193542, 34.335964, 51.138424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321915, 34.627407, 50.896389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946065, 0.216718, -0.240819,
		-0.044330, 0.649738, 0.758864,
		0.320928, 0.728611, -0.605087,
		42.418194, 34.845989, 50.714863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806122, 34.915287, 51.333801>,  <42.193542, 34.335964, 51.138424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806122, 34.915287, 51.333801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.954430, 35.008038, 50.974075>,  <42.043415, 35.063690, 50.758240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.954430, 35.008038, 50.974075>,  <41.806122, 34.915287, 51.333801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954430, 35.008038, 50.974075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927831, 0.134968, -0.347726,
		0.040747, 0.963336, 0.265188,
		0.370769, 0.231881, -0.899312,
		42.065659, 35.077602, 50.704281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509796, 35.595741, 51.138340>,  <41.806122, 34.915287, 51.333801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509796, 35.595741, 51.138340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.637169, 35.454533, 50.786434>,  <41.713593, 35.369808, 50.575291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.637169, 35.454533, 50.786434>,  <41.509796, 35.595741, 51.138340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637169, 35.454533, 50.786434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898831, 0.182412, -0.398534,
		0.301167, 0.917663, -0.259216,
		0.318436, -0.353017, -0.879760,
		41.732700, 35.348629, 50.522507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358036, 36.116760, 50.598763>,  <41.509796, 35.595741, 51.138340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358036, 36.116760, 50.598763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.406136, 35.777416, 50.392532>,  <41.434994, 35.573811, 50.268795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.406136, 35.777416, 50.392532>,  <41.358036, 36.116760, 50.598763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406136, 35.777416, 50.392532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865154, 0.165156, -0.473531,
		0.486877, 0.502996, -0.714105,
		0.120246, -0.848362, -0.515579,
		41.442207, 35.522907, 50.237858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054096, 36.331463, 49.954044>,  <41.358036, 36.116760, 50.598763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054096, 36.331463, 49.954044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.089294, 35.933128, 49.963627>,  <41.110413, 35.694130, 49.969376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.089294, 35.933128, 49.963627>,  <41.054096, 36.331463, 49.954044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089294, 35.933128, 49.963627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964646, -0.091190, -0.247270,
		0.248424, -0.001348, -0.968651,
		0.087998, -0.995833, 0.023954,
		41.115692, 35.634380, 49.970814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747677, 36.031887, 49.264713>,  <41.054096, 36.331463, 49.954044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747677, 36.031887, 49.264713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.742374, 35.750587, 49.549042>,  <40.739193, 35.581810, 49.719639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.742374, 35.750587, 49.549042>,  <40.747677, 36.031887, 49.264713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742374, 35.750587, 49.549042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938166, -0.237194, -0.252160,
		0.345933, -0.670211, -0.656618,
		-0.013254, -0.703247, 0.710822,
		40.738400, 35.539612, 49.762287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488678, 35.596031, 48.875946>,  <40.747677, 36.031887, 49.264713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488678, 35.596031, 48.875946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.447491, 35.478615, 49.256100>,  <40.422779, 35.408165, 49.484192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.447491, 35.478615, 49.256100>,  <40.488678, 35.596031, 48.875946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447491, 35.478615, 49.256100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952089, -0.247521, -0.179609,
		0.287964, -0.923344, -0.253994,
		-0.102972, -0.293546, 0.950383,
		40.416599, 35.390553, 49.541214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828884, 35.420692, 48.879543>,  <40.488678, 35.596031, 48.875946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828884, 35.420692, 48.879543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.910454, 35.372753, 49.268192>,  <39.959396, 35.343990, 49.501381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.910454, 35.372753, 49.268192>,  <39.828884, 35.420692, 48.879543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910454, 35.372753, 49.268192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976131, -0.100654, 0.192451,
		0.074733, -0.987677, -0.137514,
		0.203920, -0.119849, 0.971624,
		39.971630, 35.336800, 49.559681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539261, 34.806606, 49.027775>,  <39.828884, 35.420692, 48.879543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539261, 34.806606, 49.027775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.556122, 35.015358, 49.368565>,  <39.566238, 35.140610, 49.573040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.556122, 35.015358, 49.368565>,  <39.539261, 34.806606, 49.027775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556122, 35.015358, 49.368565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955163, -0.229080, 0.187582,
		0.293066, -0.821686, 0.488820,
		0.042154, 0.521877, 0.851979,
		39.568768, 35.171921, 49.624157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894379, 34.367683, 48.791969>,  <39.539261, 34.806606, 49.027775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894379, 34.367683, 48.791969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.101307, 34.035538, 48.709148>,  <39.225464, 33.836250, 48.659454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.101307, 34.035538, 48.709148>,  <38.894379, 34.367683, 48.791969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101307, 34.035538, 48.709148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851782, -0.476209, -0.218386,
		0.082739, 0.289341, -0.953643,
		0.517322, -0.830365, -0.207055,
		39.256504, 33.786427, 48.647034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353268, 34.211712, 48.414089>,  <38.894379, 34.367683, 48.791969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353268, 34.211712, 48.414089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613224, 33.910507, 48.455311>,  <38.769196, 33.729786, 48.480042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613224, 33.910507, 48.455311>,  <38.353268, 34.211712, 48.414089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613224, 33.910507, 48.455311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705733, -0.648216, -0.285931,
		0.282108, 0.113097, -0.952693,
		0.649889, -0.753010, 0.103050,
		38.808189, 33.684605, 48.486225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291908, 33.785698, 47.838589>,  <38.353268, 34.211712, 48.414089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291908, 33.785698, 47.838589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454952, 33.552147, 48.119431>,  <38.552780, 33.412018, 48.287933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454952, 33.552147, 48.119431>,  <38.291908, 33.785698, 47.838589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454952, 33.552147, 48.119431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683686, -0.704819, -0.189219,
		0.605334, -0.402889, -0.686478,
		0.407608, -0.583875, 0.702101,
		38.577236, 33.376984, 48.330059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436241, 33.257008, 47.483063>,  <38.291908, 33.785698, 47.838589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436241, 33.257008, 47.483063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.413387, 33.135536, 47.863487>,  <38.399677, 33.062653, 48.091743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.413387, 33.135536, 47.863487>,  <38.436241, 33.257008, 47.483063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413387, 33.135536, 47.863487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675360, -0.689822, -0.260834,
		0.735272, -0.657210, -0.165680,
		-0.057133, -0.303678, 0.951060,
		38.396248, 33.044434, 48.148804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504627, 32.509220, 47.390011>,  <38.436241, 33.257008, 47.483063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504627, 32.509220, 47.390011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.337414, 32.583496, 47.745712>,  <38.237087, 32.628063, 47.959133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.337414, 32.583496, 47.745712>,  <38.504627, 32.509220, 47.390011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337414, 32.583496, 47.745712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729786, -0.651584, -0.207006,
		0.540981, -0.735498, 0.407901,
		-0.418034, 0.185694, 0.889250,
		38.212002, 32.639206, 48.012486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425167, 31.786980, 47.664196>,  <38.504627, 32.509220, 47.390011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425167, 31.786980, 47.664196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.177433, 32.044453, 47.844017>,  <38.028793, 32.198936, 47.951908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.177433, 32.044453, 47.844017>,  <38.425167, 31.786980, 47.664196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177433, 32.044453, 47.844017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766971, -0.618443, -0.171127,
		0.167869, -0.450777, 0.876710,
		-0.619335, 0.643684, 0.449550,
		37.991631, 32.237556, 47.978882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868694, 31.332600, 47.918827>,  <38.425167, 31.786980, 47.664196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868694, 31.332600, 47.918827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.715919, 31.700037, 47.959450>,  <37.624256, 31.920500, 47.983826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.715919, 31.700037, 47.959450>,  <37.868694, 31.332600, 47.918827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715919, 31.700037, 47.959450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826702, -0.290454, -0.481873,
		-0.413146, -0.268002, 0.870336,
		-0.381935, 0.918592, 0.101558,
		37.601337, 31.975615, 47.989918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306961, 31.132591, 48.364517>,  <37.868694, 31.332600, 47.918827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306961, 31.132591, 48.364517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.234600, 31.499807, 48.223396>,  <37.191181, 31.720137, 48.138721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.234600, 31.499807, 48.223396>,  <37.306961, 31.132591, 48.364517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234600, 31.499807, 48.223396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869347, -0.317010, -0.379132,
		-0.459902, 0.238124, 0.855446,
		-0.180904, 0.918042, -0.352806,
		37.180328, 31.775221, 48.117554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663624, 31.396105, 48.606373>,  <37.306961, 31.132591, 48.364517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663624, 31.396105, 48.606373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.761745, 31.572504, 48.261040>,  <36.820618, 31.678343, 48.053841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.761745, 31.572504, 48.261040>,  <36.663624, 31.396105, 48.606373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761745, 31.572504, 48.261040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873671, -0.285393, -0.394017,
		-0.420150, 0.850925, 0.315279,
		0.245301, 0.440997, -0.863336,
		36.835335, 31.704803, 48.002037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059902, 31.671412, 48.407097>,  <36.663624, 31.396105, 48.606373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059902, 31.671412, 48.407097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.268677, 31.674265, 48.065914>,  <36.393944, 31.675978, 47.861206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.268677, 31.674265, 48.065914>,  <36.059902, 31.671412, 48.407097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268677, 31.674265, 48.065914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844466, -0.136639, -0.517888,
		-0.120242, 0.990595, -0.065292,
		0.521939, 0.007135, -0.852953,
		36.425259, 31.676405, 47.810028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843658, 32.140274, 47.874126>,  <36.059902, 31.671412, 48.407097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843658, 32.140274, 47.874126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.019867, 31.847755, 47.665840>,  <36.125591, 31.672245, 47.540867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.019867, 31.847755, 47.665840>,  <35.843658, 32.140274, 47.874126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019867, 31.847755, 47.665840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829976, -0.110684, -0.546708,
		0.342169, 0.673023, -0.655714,
		0.440524, -0.731293, -0.520720,
		36.152023, 31.628368, 47.509624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753315, 32.409618, 47.252888>,  <35.843658, 32.140274, 47.874126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753315, 32.409618, 47.252888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.825142, 32.018444, 47.210190>,  <35.868237, 31.783739, 47.184570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.825142, 32.018444, 47.210190>,  <35.753315, 32.409618, 47.252888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825142, 32.018444, 47.210190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760285, -0.069094, -0.645904,
		0.624278, 0.197141, -0.755918,
		0.179564, -0.977937, -0.106749,
		35.879009, 31.725063, 47.178165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.772682, 32.125172, 51.009319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.088264, 32.274651, 51.204418>,  <31.277615, 32.364338, 51.321480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.088264, 32.274651, 51.204418>,  <30.772682, 32.125172, 51.009319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088264, 32.274651, 51.204418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582793, -0.203597, -0.786702,
		-0.194685, 0.904930, -0.378417,
		0.788955, 0.373698, 0.487750,
		31.324951, 32.386761, 51.350742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055729, 32.530201, 50.562275>,  <30.772682, 32.125172, 51.009319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055729, 32.530201, 50.562275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.350716, 32.472195, 50.826126>,  <31.527708, 32.437393, 50.984436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.350716, 32.472195, 50.826126>,  <31.055729, 32.530201, 50.562275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350716, 32.472195, 50.826126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613848, -0.263393, -0.744187,
		0.281658, 0.953727, -0.105228,
		0.737468, -0.145012, 0.659631,
		31.571957, 32.428692, 51.024014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612316, 33.111469, 50.428532>,  <31.055729, 32.530201, 50.562275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612316, 33.111469, 50.428532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.773439, 32.790573, 50.604782>,  <31.870113, 32.598034, 50.710533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.773439, 32.790573, 50.604782>,  <31.612316, 33.111469, 50.428532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773439, 32.790573, 50.604782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609463, -0.124071, -0.783046,
		0.682863, 0.583961, 0.438962,
		0.402806, -0.802244, 0.440626,
		31.894281, 32.549900, 50.736969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296417, 33.174774, 50.210548>,  <31.612316, 33.111469, 50.428532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296417, 33.174774, 50.210548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.260185, 32.794563, 50.329407>,  <32.238445, 32.566437, 50.400723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.260185, 32.794563, 50.329407>,  <32.296417, 33.174774, 50.210548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260185, 32.794563, 50.329407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659900, -0.280754, -0.696928,
		0.745873, 0.132957, 0.652683,
		-0.090582, -0.950526, 0.297146,
		32.233009, 32.509407, 50.418549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000568, 32.916836, 50.420254>,  <32.296417, 33.174774, 50.210548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000568, 32.916836, 50.420254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.768597, 32.602695, 50.333626>,  <32.629414, 32.414211, 50.281651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.768597, 32.602695, 50.333626>,  <33.000568, 32.916836, 50.420254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768597, 32.602695, 50.333626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677071, -0.316799, -0.664239,
		0.453056, -0.531841, 0.715462,
		-0.579928, -0.785355, -0.216567,
		32.594620, 32.367088, 50.268654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414619, 32.370834, 50.430565>,  <33.000568, 32.916836, 50.420254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414619, 32.370834, 50.430565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.100266, 32.251854, 50.213711>,  <32.911652, 32.180466, 50.083599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.100266, 32.251854, 50.213711>,  <33.414619, 32.370834, 50.430565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100266, 32.251854, 50.213711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617270, -0.324960, -0.716505,
		0.036953, -0.897732, 0.438989,
		-0.785883, -0.297452, -0.542135,
		32.864502, 32.162617, 50.051071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613003, 31.777733, 50.306202>,  <33.414619, 32.370834, 50.430565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613003, 31.777733, 50.306202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.345615, 31.814629, 50.011005>,  <33.185181, 31.836765, 49.833885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.345615, 31.814629, 50.011005>,  <33.613003, 31.777733, 50.306202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345615, 31.814629, 50.011005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712877, -0.203405, -0.671143,
		-0.212025, -0.974739, 0.070207,
		-0.668469, 0.092250, -0.737996,
		33.145073, 31.842300, 49.789608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700562, 31.230587, 49.880291>,  <33.613003, 31.777733, 50.306202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700562, 31.230587, 49.880291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.514076, 31.500566, 49.651524>,  <33.402184, 31.662554, 49.514263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.514076, 31.500566, 49.651524>,  <33.700562, 31.230587, 49.880291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514076, 31.500566, 49.651524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549033, -0.286170, -0.785283,
		-0.693691, -0.680112, -0.237152,
		-0.466215, 0.674948, -0.571917,
		33.374210, 31.703051, 49.479950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598579, 30.885550, 49.216862>,  <33.700562, 31.230587, 49.880291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598579, 30.885550, 49.216862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.586311, 31.279766, 49.150208>,  <33.578949, 31.516296, 49.110214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.586311, 31.279766, 49.150208>,  <33.598579, 30.885550, 49.216862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586311, 31.279766, 49.150208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555061, -0.121853, -0.822836,
		-0.831244, -0.117731, -0.543298,
		-0.030671, 0.985541, -0.166638,
		33.577110, 31.575428, 49.100216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415028, 30.940403, 48.497211>,  <33.598579, 30.885550, 49.216862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415028, 30.940403, 48.497211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.576450, 31.292793, 48.596020>,  <33.673306, 31.504227, 48.655304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.576450, 31.292793, 48.596020>,  <33.415028, 30.940403, 48.497211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576450, 31.292793, 48.596020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585826, -0.041408, -0.809378,
		-0.702813, 0.471346, -0.532809,
		0.403560, 0.880975, 0.247025,
		33.697517, 31.557085, 48.670128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477184, 31.206093, 47.839058>,  <33.415028, 30.940403, 48.497211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477184, 31.206093, 47.839058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711975, 31.437597, 48.065506>,  <33.852852, 31.576500, 48.201374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711975, 31.437597, 48.065506>,  <33.477184, 31.206093, 47.839058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711975, 31.437597, 48.065506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675665, 0.035028, -0.736377,
		-0.446017, 0.814743, -0.370489,
		0.586981, 0.578763, 0.566116,
		33.888069, 31.611227, 48.235340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540756, 31.826185, 47.352242>,  <33.477184, 31.206093, 47.839058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540756, 31.826185, 47.352242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.839390, 31.777819, 47.613926>,  <34.018570, 31.748798, 47.770935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.839390, 31.777819, 47.613926>,  <33.540756, 31.826185, 47.352242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839390, 31.777819, 47.613926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639957, -0.138250, -0.755872,
		0.181842, 0.982988, -0.025833,
		0.746584, -0.120917, 0.654210,
		34.063366, 31.741543, 47.810188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971016, 31.500185, 47.238338>,  <33.540756, 31.826185, 47.352242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971016, 31.500185, 47.238338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.155212, 31.633177, 46.909119>,  <33.265728, 31.712973, 46.711586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.155212, 31.633177, 46.909119>,  <32.971016, 31.500185, 47.238338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155212, 31.633177, 46.909119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312539, 0.928560, 0.200240,
		0.830824, 0.165026, 0.531505,
		0.460489, 0.332480, -0.823047,
		33.293358, 31.732922, 46.662205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771927, 32.141998, 47.244156>,  <32.971016, 31.500185, 47.238338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771927, 32.141998, 47.244156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.993019, 32.171967, 46.912163>,  <33.125675, 32.189949, 46.712967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.993019, 32.171967, 46.912163>,  <32.771927, 32.141998, 47.244156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993019, 32.171967, 46.912163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200147, 0.978735, -0.044936,
		0.808968, 0.190956, 0.555974,
		0.552732, 0.074925, -0.829984,
		33.158840, 32.194443, 46.663166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412872, 32.624531, 47.331699>,  <32.771927, 32.141998, 47.244156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412872, 32.624531, 47.331699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.314190, 32.624897, 46.944065>,  <33.254978, 32.625118, 46.711483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.314190, 32.624897, 46.944065>,  <33.412872, 32.624531, 47.331699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314190, 32.624897, 46.944065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086471, 0.996032, -0.021068,
		0.965224, -0.088995, -0.245811,
		-0.246710, 0.000920, -0.969089,
		33.240177, 32.625172, 46.653339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753563, 33.271259, 47.091873>,  <33.412872, 32.624531, 47.331699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753563, 33.271259, 47.091873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.476822, 33.185207, 46.816177>,  <33.310776, 33.133575, 46.650761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.476822, 33.185207, 46.816177>,  <33.753563, 33.271259, 47.091873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476822, 33.185207, 46.816177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293473, 0.955960, -0.003794,
		0.659702, 0.199649, -0.724523,
		-0.691857, -0.215131, -0.689241,
		33.269264, 33.120667, 46.609406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605110, 33.943008, 46.720551>,  <33.753563, 33.271259, 47.091873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605110, 33.943008, 46.720551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.310879, 33.726910, 46.557056>,  <33.134342, 33.597252, 46.458961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.310879, 33.726910, 46.557056>,  <33.605110, 33.943008, 46.720551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310879, 33.726910, 46.557056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579801, 0.814105, -0.032608,
		0.350370, 0.213000, -0.912070,
		-0.735576, -0.540244, -0.408736,
		33.090206, 33.564838, 46.434437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409588, 34.374142, 46.106331>,  <33.605110, 33.943008, 46.720551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409588, 34.374142, 46.106331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.138725, 34.112938, 46.242001>,  <32.976208, 33.956215, 46.323402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.138725, 34.112938, 46.242001>,  <33.409588, 34.374142, 46.106331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138725, 34.112938, 46.242001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597377, 0.756992, 0.264772,
		-0.429650, -0.023321, -0.902695,
		-0.677158, -0.653008, 0.339173,
		32.935577, 33.917034, 46.343754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714718, 34.629257, 45.886501>,  <33.409588, 34.374142, 46.106331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714718, 34.629257, 45.886501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.626431, 34.385475, 46.191090>,  <32.573460, 34.239204, 46.373844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.626431, 34.385475, 46.191090>,  <32.714718, 34.629257, 45.886501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626431, 34.385475, 46.191090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617798, 0.691495, 0.374380,
		-0.754726, -0.387807, -0.529146,
		-0.220715, -0.609459, 0.761475,
		32.560215, 34.202637, 46.419533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068108, 34.814465, 45.930729>,  <32.714718, 34.629257, 45.886501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068108, 34.814465, 45.930729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.131828, 34.652618, 46.290932>,  <32.170063, 34.555511, 46.507053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.131828, 34.652618, 46.290932>,  <32.068108, 34.814465, 45.930729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131828, 34.652618, 46.290932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690488, 0.606261, 0.394554,
		-0.705584, -0.684643, -0.182800,
		0.159304, -0.404612, 0.900506,
		32.179619, 34.531235, 46.561085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426218, 34.674419, 46.246830>,  <32.068108, 34.814465, 45.930729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426218, 34.674419, 46.246830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.654112, 34.645569, 46.574295>,  <31.790848, 34.628258, 46.770775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.654112, 34.645569, 46.574295>,  <31.426218, 34.674419, 46.246830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654112, 34.645569, 46.574295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702745, 0.473708, 0.530802,
		-0.426092, -0.877723, 0.219197,
		0.569732, -0.072131, 0.818659,
		31.825031, 34.623928, 46.819893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995947, 34.417713, 46.823021>,  <31.426218, 34.674419, 46.246830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995947, 34.417713, 46.823021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.298725, 34.612663, 46.997147>,  <31.480392, 34.729633, 47.101624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.298725, 34.612663, 46.997147>,  <30.995947, 34.417713, 46.823021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298725, 34.612663, 46.997147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650730, 0.501123, 0.570462,
		0.059886, -0.715079, 0.696474,
		0.756944, 0.487379, 0.435312,
		31.525808, 34.758877, 47.127739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808582, 34.542782, 47.567036>,  <30.995947, 34.417713, 46.823021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808582, 34.542782, 47.567036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.097418, 34.797298, 47.458424>,  <31.270720, 34.950008, 47.393257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.097418, 34.797298, 47.458424>,  <30.808582, 34.542782, 47.567036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097418, 34.797298, 47.458424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360278, 0.680943, 0.637586,
		0.590583, -0.362568, 0.720942,
		0.722089, 0.636287, -0.271528,
		31.314045, 34.988186, 47.376965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003983, 34.926243, 48.131645>,  <30.808582, 34.542782, 47.567036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003983, 34.926243, 48.131645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.143679, 35.168621, 47.845749>,  <31.227497, 35.314049, 47.674210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.143679, 35.168621, 47.845749>,  <31.003983, 34.926243, 48.131645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143679, 35.168621, 47.845749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538299, 0.754088, 0.376279,
		0.766984, 0.253333, 0.589540,
		0.349241, 0.605949, -0.714743,
		31.248451, 35.350407, 47.631325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097490, 35.495728, 48.523876>,  <31.003983, 34.926243, 48.131645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097490, 35.495728, 48.523876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.111563, 35.633446, 48.148594>,  <31.120007, 35.716076, 47.923424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.111563, 35.633446, 48.148594>,  <31.097490, 35.495728, 48.523876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111563, 35.633446, 48.148594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237489, 0.914773, 0.326787,
		0.970753, 0.211316, 0.113948,
		0.035181, 0.344291, -0.938204,
		31.122118, 35.736732, 47.867134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491133, 36.060364, 48.556465>,  <31.097490, 35.495728, 48.523876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491133, 36.060364, 48.556465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.246244, 36.092392, 48.241817>,  <31.099312, 36.111610, 48.053028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.246244, 36.092392, 48.241817>,  <31.491133, 36.060364, 48.556465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246244, 36.092392, 48.241817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474765, 0.758325, 0.446701,
		0.632282, 0.646940, -0.426247,
		-0.612223, 0.080073, -0.786620,
		31.062578, 36.116413, 48.005833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287640, 36.720333, 48.665699>,  <31.491133, 36.060364, 48.556465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287640, 36.720333, 48.665699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.039082, 36.603325, 48.374962>,  <30.889948, 36.533119, 48.200520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.039082, 36.603325, 48.374962>,  <31.287640, 36.720333, 48.665699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039082, 36.603325, 48.374962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620404, 0.750273, 0.228447,
		0.478507, 0.592893, -0.647695,
		-0.621393, -0.292520, -0.726845,
		30.852663, 36.515568, 48.156910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198214, 37.321312, 48.350468>,  <31.287640, 36.720333, 48.665699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198214, 37.321312, 48.350468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.886263, 37.089787, 48.255173>,  <30.699093, 36.950871, 48.197994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.886263, 37.089787, 48.255173>,  <31.198214, 37.321312, 48.350468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886263, 37.089787, 48.255173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622862, 0.755289, 0.203917,
		0.061909, 0.307422, -0.949557,
		-0.779878, -0.578818, -0.238241,
		30.652300, 36.916142, 48.183701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593130, 37.826061, 47.863976>,  <31.198214, 37.321312, 48.350468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593130, 37.826061, 47.863976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.782316, 38.155899, 47.988140>,  <31.895828, 38.353802, 48.062637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.782316, 38.155899, 47.988140>,  <31.593130, 37.826061, 47.863976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782316, 38.155899, 47.988140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877469, -0.408959, -0.250600,
		-0.079698, 0.390899, -0.916977,
		0.472965, 0.824592, 0.310408,
		31.924206, 38.403278, 48.081264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010735, 38.006519, 47.314960>,  <31.593130, 37.826061, 47.863976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010735, 38.006519, 47.314960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.199429, 38.185627, 47.618793>,  <32.312645, 38.293091, 47.801094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.199429, 38.185627, 47.618793>,  <32.010735, 38.006519, 47.314960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199429, 38.185627, 47.618793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878268, -0.314980, -0.359767,
		0.078162, 0.836834, -0.541849,
		0.471737, 0.447768, 0.759584,
		32.340950, 38.319958, 47.846668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595303, 38.329422, 46.927670>,  <32.010735, 38.006519, 47.314960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595303, 38.329422, 46.927670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.662815, 38.287842, 47.319733>,  <32.703323, 38.262894, 47.554970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.662815, 38.287842, 47.319733>,  <32.595303, 38.329422, 46.927670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662815, 38.287842, 47.319733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936585, -0.292935, -0.192349,
		0.307117, 0.950465, 0.047918,
		0.168784, -0.103953, 0.980156,
		32.713451, 38.256657, 47.613781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153427, 38.753933, 47.101376>,  <32.595303, 38.329422, 46.927670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153427, 38.753933, 47.101376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.162064, 38.455498, 47.367573>,  <33.167248, 38.276436, 47.527290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.162064, 38.455498, 47.367573>,  <33.153427, 38.753933, 47.101376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162064, 38.455498, 47.367573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965935, -0.156128, -0.206382,
		0.257882, 0.647279, 0.717306,
		0.021595, -0.746093, 0.665492,
		33.168541, 38.231670, 47.567219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905293, 38.754547, 47.378185>,  <33.153427, 38.753933, 47.101376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905293, 38.754547, 47.378185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.746735, 38.398815, 47.469360>,  <33.651600, 38.185375, 47.524067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.746735, 38.398815, 47.469360>,  <33.905293, 38.754547, 47.378185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746735, 38.398815, 47.469360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865030, -0.444972, -0.231782,
		0.307559, 0.105299, 0.945684,
		-0.396397, -0.889332, 0.227942,
		33.627815, 38.132015, 47.537743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259392, 38.447090, 47.898510>,  <33.905293, 38.754547, 47.378185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259392, 38.447090, 47.898510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.107536, 38.134731, 47.700085>,  <34.016422, 37.947315, 47.581032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.107536, 38.134731, 47.700085>,  <34.259392, 38.447090, 47.898510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107536, 38.134731, 47.700085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917920, -0.384786, -0.096764,
		-0.115313, -0.492078, 0.862880,
		-0.379640, -0.780897, -0.496059,
		33.993645, 37.900463, 47.551266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645206, 37.934834, 48.190109>,  <34.259392, 38.447090, 47.898510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645206, 37.934834, 48.190109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477215, 37.793774, 47.855621>,  <34.376419, 37.709137, 47.654930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477215, 37.793774, 47.855621>,  <34.645206, 37.934834, 48.190109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477215, 37.793774, 47.855621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838829, -0.502527, -0.209366,
		-0.346390, -0.789372, 0.506859,
		-0.419977, -0.352646, -0.836218,
		34.351223, 37.687981, 47.604755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713875, 37.190651, 48.235546>,  <34.645206, 37.934834, 48.190109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713875, 37.190651, 48.235546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.630386, 37.239479, 47.847416>,  <34.580296, 37.268776, 47.614536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.630386, 37.239479, 47.847416>,  <34.713875, 37.190651, 48.235546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630386, 37.239479, 47.847416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770692, -0.590269, -0.240034,
		-0.602056, -0.797923, 0.029121,
		-0.208718, 0.122070, -0.970328,
		34.567772, 37.276100, 47.556316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910778, 36.653076, 47.919842>,  <34.713875, 37.190651, 48.235546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910778, 36.653076, 47.919842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.909702, 36.905010, 47.609154>,  <34.909058, 37.056171, 47.422741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.909702, 36.905010, 47.609154>,  <34.910778, 36.653076, 47.919842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909702, 36.905010, 47.609154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765299, -0.498662, -0.407004,
		-0.643669, -0.595519, -0.480674,
		-0.002685, 0.629836, -0.776724,
		34.908897, 37.093960, 47.376137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980907, 36.222698, 47.324890>,  <34.910778, 36.653076, 47.919842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980907, 36.222698, 47.324890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.089108, 36.595612, 47.228821>,  <35.154030, 36.819359, 47.171181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.089108, 36.595612, 47.228821>,  <34.980907, 36.222698, 47.324890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089108, 36.595612, 47.228821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866551, -0.344470, -0.361151,
		-0.419426, -0.110429, -0.901048,
		0.270503, 0.932280, -0.240172,
		35.170258, 36.875294, 47.156769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350239, 36.078735, 46.677311>,  <34.980907, 36.222698, 47.324890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350239, 36.078735, 46.677311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.473553, 36.434055, 46.813477>,  <35.547543, 36.647247, 46.895176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.473553, 36.434055, 46.813477>,  <35.350239, 36.078735, 46.677311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473553, 36.434055, 46.813477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892341, -0.146021, -0.427089,
		-0.329674, 0.435437, -0.837681,
		0.308289, 0.888298, 0.340419,
		35.566040, 36.700546, 46.915604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602394, 36.500732, 46.109673>,  <35.350239, 36.078735, 46.677311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602394, 36.500732, 46.109673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.766949, 36.654129, 46.440418>,  <35.865681, 36.746166, 46.638866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.766949, 36.654129, 46.440418>,  <35.602394, 36.500732, 46.109673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766949, 36.654129, 46.440418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907362, -0.086357, -0.411385,
		-0.086357, 0.919499, -0.383489,
		0.411385, 0.383489, 0.826861,
		35.890366, 36.769176, 46.688477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.386436, 40.994946, 52.904408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.146620, 41.228600, 52.685562>,  <30.002729, 41.368793, 52.554253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.146620, 41.228600, 52.685562>,  <30.386436, 40.994946, 52.904408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146620, 41.228600, 52.685562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178503, -0.568788, -0.802881,
		-0.780182, -0.579023, 0.236743,
		-0.599543, 0.584134, -0.547116,
		29.966757, 41.403839, 52.521427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954460, 40.503666, 52.537315>,  <30.386436, 40.994946, 52.904408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954460, 40.503666, 52.537315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.909058, 40.834343, 52.316879>,  <29.881817, 41.032749, 52.184616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.909058, 40.834343, 52.316879>,  <29.954460, 40.503666, 52.537315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909058, 40.834343, 52.316879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122638, -0.538777, -0.833474,
		-0.985939, -0.162188, -0.040230,
		-0.113505, 0.826689, -0.551091,
		29.875006, 41.082348, 52.151550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469589, 40.321232, 51.935936>,  <29.954460, 40.503666, 52.537315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469589, 40.321232, 51.935936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.704210, 40.631081, 51.841354>,  <29.844982, 40.816990, 51.784603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.704210, 40.631081, 51.841354>,  <29.469589, 40.321232, 51.935936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704210, 40.631081, 51.841354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276218, -0.465778, -0.840687,
		-0.761355, 0.427792, -0.487168,
		0.586552, 0.774625, -0.236458,
		29.880177, 40.863468, 51.770416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383106, 40.417454, 51.225075>,  <29.469589, 40.321232, 51.935936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383106, 40.417454, 51.225075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.744291, 40.582935, 51.271561>,  <29.961002, 40.682224, 51.299454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.744291, 40.582935, 51.271561>,  <29.383106, 40.417454, 51.225075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744291, 40.582935, 51.271561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300650, -0.414971, -0.858725,
		-0.307032, 0.810337, -0.499084,
		0.902962, 0.413706, 0.116219,
		30.015181, 40.707047, 51.306427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573874, 40.613190, 50.520386>,  <29.383106, 40.417454, 51.225075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573874, 40.613190, 50.520386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925699, 40.647713, 50.707539>,  <30.136795, 40.668427, 50.819832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925699, 40.647713, 50.707539>,  <29.573874, 40.613190, 50.520386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925699, 40.647713, 50.707539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475762, -0.168359, -0.863311,
		0.004260, 0.981940, -0.189145,
		0.879564, 0.086310, 0.467886,
		30.189568, 40.673607, 50.847904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907118, 41.030987, 50.110973>,  <29.573874, 40.613190, 50.520386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907118, 41.030987, 50.110973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.190147, 40.841068, 50.320320>,  <30.359964, 40.727119, 50.445927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.190147, 40.841068, 50.320320>,  <29.907118, 41.030987, 50.110973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190147, 40.841068, 50.320320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483870, -0.214224, -0.848515,
		0.514986, 0.853628, 0.078158,
		0.707573, -0.474792, 0.523367,
		30.402420, 40.698631, 50.477329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521702, 41.106121, 49.720753>,  <29.907118, 41.030987, 50.110973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521702, 41.106121, 49.720753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.608261, 40.809856, 49.975182>,  <30.660196, 40.632095, 50.127838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.608261, 40.809856, 49.975182>,  <30.521702, 41.106121, 49.720753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608261, 40.809856, 49.975182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550912, -0.445239, -0.705874,
		0.806020, 0.503170, 0.311692,
		0.216397, -0.740663, 0.636074,
		30.673180, 40.587658, 50.166004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159592, 41.113781, 49.790192>,  <30.521702, 41.106121, 49.720753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159592, 41.113781, 49.790192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067003, 40.734947, 49.879143>,  <31.011450, 40.507648, 49.932514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067003, 40.734947, 49.879143>,  <31.159592, 41.113781, 49.790192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067003, 40.734947, 49.879143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540816, -0.315279, -0.779819,
		0.808665, -0.060241, 0.585177,
		-0.231471, -0.947085, 0.222375,
		30.997562, 40.450821, 49.945854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732067, 40.646839, 49.746162>,  <31.159592, 41.113781, 49.790192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732067, 40.646839, 49.746162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445059, 40.368229, 49.744404>,  <31.272854, 40.201061, 49.743347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445059, 40.368229, 49.744404>,  <31.732067, 40.646839, 49.746162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445059, 40.368229, 49.744404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527321, -0.539070, -0.656762,
		0.455080, -0.473558, 0.754085,
		-0.717520, -0.696525, -0.004397,
		31.229803, 40.159271, 49.743084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150459, 40.021454, 49.686390>,  <31.732067, 40.646839, 49.746162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150459, 40.021454, 49.686390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.774393, 39.964584, 49.562531>,  <31.548754, 39.930462, 49.488213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.774393, 39.964584, 49.562531>,  <32.150459, 40.021454, 49.686390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774393, 39.964584, 49.562531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340206, -0.442035, -0.829979,
		-0.018876, -0.885659, 0.463953,
		-0.940161, -0.142173, -0.309650,
		31.492344, 39.921932, 49.469635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070221, 39.292068, 49.570843>,  <32.150459, 40.021454, 49.686390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070221, 39.292068, 49.570843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.763636, 39.443707, 49.363449>,  <31.579685, 39.534691, 49.239014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.763636, 39.443707, 49.363449>,  <32.070221, 39.292068, 49.570843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763636, 39.443707, 49.363449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146197, -0.683076, -0.715565,
		-0.625432, -0.624253, 0.468127,
		-0.766460, 0.379099, -0.518481,
		31.533697, 39.557438, 49.207905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640442, 38.715401, 49.443359>,  <32.070221, 39.292068, 49.570843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640442, 38.715401, 49.443359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.539381, 38.983006, 49.163761>,  <31.478745, 39.143566, 48.996002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.539381, 38.983006, 49.163761>,  <31.640442, 38.715401, 49.443359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539381, 38.983006, 49.163761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162417, -0.682857, -0.712269,
		-0.953827, -0.293486, 0.063868,
		-0.252653, 0.669008, -0.698995,
		31.463585, 39.183708, 48.954063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100021, 38.440895, 48.985565>,  <31.640442, 38.715401, 49.443359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100021, 38.440895, 48.985565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.322708, 38.718513, 48.802975>,  <31.456320, 38.885082, 48.693420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.322708, 38.718513, 48.802975>,  <31.100021, 38.440895, 48.985565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322708, 38.718513, 48.802975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260997, -0.667820, -0.697063,
		-0.788635, 0.268928, -0.552930,
		0.556717, 0.694042, -0.456477,
		31.489723, 38.926727, 48.666031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128624, 38.098087, 48.353611>,  <31.100021, 38.440895, 48.985565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128624, 38.098087, 48.353611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.381960, 38.403854, 48.305374>,  <31.533962, 38.587315, 48.276432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.381960, 38.403854, 48.305374>,  <31.128624, 38.098087, 48.353611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381960, 38.403854, 48.305374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572761, -0.567812, -0.591214,
		-0.520406, 0.305373, -0.797449,
		0.633342, 0.764419, -0.120587,
		31.571962, 38.633179, 48.269199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660833, 37.739929, 47.855869>,  <31.128624, 38.098087, 48.353611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660833, 37.739929, 47.855869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.461100, 37.441666, 48.032349>,  <30.341259, 37.262707, 48.138237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.461100, 37.441666, 48.032349>,  <30.660833, 37.739929, 47.855869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461100, 37.441666, 48.032349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656891, 0.657862, 0.368389,
		-0.564939, -0.105868, -0.818313,
		-0.499337, -0.745660, 0.441196,
		30.311298, 37.217968, 48.164707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957041, 37.984089, 47.856247>,  <30.660833, 37.739929, 47.855869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957041, 37.984089, 47.856247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.955343, 37.687778, 48.124943>,  <29.954325, 37.509995, 48.286160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.955343, 37.687778, 48.124943>,  <29.957041, 37.984089, 47.856247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955343, 37.687778, 48.124943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680775, 0.494187, 0.540671,
		-0.732481, -0.455011, -0.506396,
		-0.004244, -0.740773, 0.671742,
		29.954071, 37.465546, 48.326466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186647, 37.731693, 47.923244>,  <29.957041, 37.984089, 47.856247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186647, 37.731693, 47.923244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.377752, 37.636883, 48.261608>,  <29.492414, 37.579994, 48.464626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.377752, 37.636883, 48.261608>,  <29.186647, 37.731693, 47.923244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377752, 37.636883, 48.261608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697773, 0.482621, 0.529330,
		-0.533721, -0.843145, 0.065184,
		0.477761, -0.237031, 0.845908,
		29.521080, 37.565773, 48.515381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694782, 37.845661, 48.472752>,  <29.186647, 37.731693, 47.923244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694782, 37.845661, 48.472752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015043, 37.765411, 48.698566>,  <29.207199, 37.717262, 48.834057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015043, 37.765411, 48.698566>,  <28.694782, 37.845661, 48.472752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015043, 37.765411, 48.698566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453150, 0.413623, 0.789665,
		-0.391932, -0.888069, 0.240255,
		0.800652, -0.200623, 0.564541,
		29.255239, 37.705223, 48.867928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522114, 37.400337, 49.072617>,  <28.694782, 37.845661, 48.472752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522114, 37.400337, 49.072617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.870926, 37.556755, 49.190361>,  <29.080214, 37.650604, 49.261005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.870926, 37.556755, 49.190361>,  <28.522114, 37.400337, 49.072617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870926, 37.556755, 49.190361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424421, 0.304604, 0.852692,
		0.243771, -0.868508, 0.431589,
		0.872034, 0.391037, 0.294359,
		29.132536, 37.674068, 49.278667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623430, 37.228931, 49.825241>,  <28.522114, 37.400337, 49.072617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623430, 37.228931, 49.825241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.814716, 37.560791, 49.710003>,  <28.929487, 37.759907, 49.640862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.814716, 37.560791, 49.710003>,  <28.623430, 37.228931, 49.825241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814716, 37.560791, 49.710003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426089, 0.506012, 0.749933,
		0.767958, -0.235876, 0.595485,
		0.478214, 0.829647, -0.288093,
		28.958181, 37.809685, 49.623577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856050, 37.481426, 50.396713>,  <28.623430, 37.228931, 49.825241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856050, 37.481426, 50.396713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.871067, 37.800854, 50.156418>,  <28.880077, 37.992508, 50.012241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.871067, 37.800854, 50.156418>,  <28.856050, 37.481426, 50.396713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871067, 37.800854, 50.156418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264120, 0.587712, 0.764746,
		0.963759, 0.129959, 0.232979,
		0.037539, 0.798565, -0.600737,
		28.882328, 38.040424, 49.976196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174185, 37.964188, 50.812057>,  <28.856050, 37.481426, 50.396713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174185, 37.964188, 50.812057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.980373, 38.197941, 50.551682>,  <28.864086, 38.338192, 50.395454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.980373, 38.197941, 50.551682>,  <29.174185, 37.964188, 50.812057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980373, 38.197941, 50.551682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144120, 0.680628, 0.718314,
		0.862821, 0.441858, -0.245563,
		-0.484530, 0.584386, -0.650941,
		28.835014, 38.373257, 50.356400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404808, 38.726589, 50.894154>,  <29.174185, 37.964188, 50.812057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404808, 38.726589, 50.894154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.055077, 38.737957, 50.700352>,  <28.845238, 38.744778, 50.584072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.055077, 38.737957, 50.700352>,  <29.404808, 38.726589, 50.894154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055077, 38.737957, 50.700352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418450, 0.461583, 0.782202,
		0.245870, 0.886642, -0.391682,
		-0.874327, 0.028421, -0.484505,
		28.792778, 38.746483, 50.555000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089819, 39.434441, 51.019207>,  <29.404808, 38.726589, 50.894154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089819, 39.434441, 51.019207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.761337, 39.249649, 50.885220>,  <28.564249, 39.138775, 50.804825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.761337, 39.249649, 50.885220>,  <29.089819, 39.434441, 51.019207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761337, 39.249649, 50.885220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540521, 0.441562, 0.716142,
		-0.182930, 0.769156, -0.612320,
		-0.821202, -0.461976, -0.334970,
		28.514977, 39.111057, 50.784729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568502, 39.917858, 50.905735>,  <29.089819, 39.434441, 51.019207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568502, 39.917858, 50.905735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.367512, 39.572552, 50.924889>,  <28.246918, 39.365368, 50.936382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.367512, 39.572552, 50.924889>,  <28.568502, 39.917858, 50.905735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367512, 39.572552, 50.924889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668786, 0.423185, 0.611261,
		-0.547943, 0.275119, -0.789979,
		-0.502477, -0.863263, 0.047886,
		28.216768, 39.313572, 50.939255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815248, 40.073353, 50.757263>,  <28.568502, 39.917858, 50.905735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815248, 40.073353, 50.757263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.804390, 39.725948, 50.955231>,  <27.797874, 39.517506, 51.074013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.804390, 39.725948, 50.955231>,  <27.815248, 40.073353, 50.757263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804390, 39.725948, 50.955231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559965, 0.423345, 0.712192,
		-0.828071, -0.257804, -0.497831,
		-0.027148, -0.868514, 0.494921,
		27.796246, 39.465393, 51.103706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043776, 39.931808, 50.900970>,  <27.815248, 40.073353, 50.757263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043776, 39.931808, 50.900970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.253063, 39.706116, 51.156433>,  <27.378635, 39.570702, 51.309711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.253063, 39.706116, 51.156433>,  <27.043776, 39.931808, 50.900970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253063, 39.706116, 51.156433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544635, 0.355010, 0.759829,
		-0.655451, -0.745392, -0.121553,
		0.523218, -0.564233, 0.638659,
		27.410028, 39.536846, 51.348030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527500, 39.516621, 51.345306>,  <27.043776, 39.931808, 50.900970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527500, 39.516621, 51.345306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.854753, 39.526230, 51.575119>,  <27.051105, 39.531994, 51.713005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.854753, 39.526230, 51.575119>,  <26.527500, 39.516621, 51.345306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854753, 39.526230, 51.575119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572990, 0.118166, 0.810999,
		-0.048409, -0.992703, 0.110439,
		0.818131, 0.024021, 0.574530,
		27.100193, 39.533436, 51.747478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.358833, 36.555855, 59.528584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.244751, 36.707821, 59.176601>,  <34.176300, 36.799000, 58.965412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.244751, 36.707821, 59.176601>,  <34.358833, 36.555855, 59.528584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244751, 36.707821, 59.176601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366549, -0.805063, -0.466386,
		-0.885606, -0.455565, 0.090354,
		-0.285210, 0.379915, -0.879955,
		34.159187, 36.821796, 58.912617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919487, 36.123692, 59.085876>,  <34.358833, 36.555855, 59.528584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919487, 36.123692, 59.085876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080326, 36.354630, 58.801624>,  <34.176830, 36.493191, 58.631073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080326, 36.354630, 58.801624>,  <33.919487, 36.123692, 59.085876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080326, 36.354630, 58.801624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331365, -0.815288, -0.474871,
		-0.853529, -0.044532, -0.519138,
		0.402100, 0.577340, -0.710629,
		34.200954, 36.527832, 58.588436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833260, 35.701393, 58.491875>,  <33.919487, 36.123692, 59.085876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833260, 35.701393, 58.491875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099815, 35.978092, 58.380581>,  <34.259747, 36.144112, 58.313805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099815, 35.978092, 58.380581>,  <33.833260, 35.701393, 58.491875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099815, 35.978092, 58.380581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428653, -0.660766, -0.616153,
		-0.610070, 0.291330, -0.736845,
		0.666386, 0.691747, -0.278235,
		34.299732, 36.185616, 58.297112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978569, 35.623764, 57.719223>,  <33.833260, 35.701393, 58.491875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978569, 35.623764, 57.719223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.271679, 35.892269, 57.763855>,  <34.447544, 36.053371, 57.790634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.271679, 35.892269, 57.763855>,  <33.978569, 35.623764, 57.719223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271679, 35.892269, 57.763855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470957, -0.381937, -0.795187,
		-0.491159, 0.635245, -0.596009,
		0.732777, 0.671258, 0.111581,
		34.491512, 36.093647, 57.797329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102184, 36.088310, 57.092831>,  <33.978569, 35.623764, 57.719223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102184, 36.088310, 57.092831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.422081, 36.035751, 57.327148>,  <34.614017, 36.004215, 57.467739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.422081, 36.035751, 57.327148>,  <34.102184, 36.088310, 57.092831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422081, 36.035751, 57.327148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498614, -0.398071, -0.770015,
		0.334366, 0.907895, -0.252836,
		0.799740, -0.131400, 0.585790,
		34.662003, 35.996330, 57.502884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676620, 36.348213, 56.629257>,  <34.102184, 36.088310, 57.092831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676620, 36.348213, 56.629257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.853889, 36.121044, 56.906693>,  <34.960251, 35.984741, 57.073154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.853889, 36.121044, 56.906693>,  <34.676620, 36.348213, 56.629257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853889, 36.121044, 56.906693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664542, -0.311148, -0.679390,
		0.601649, 0.762005, 0.239515,
		0.443174, -0.567922, 0.693586,
		34.986843, 35.950668, 57.114769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342640, 36.514786, 56.607002>,  <34.676620, 36.348213, 56.629257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342640, 36.514786, 56.607002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348503, 36.164436, 56.799927>,  <35.352020, 35.954227, 56.915684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348503, 36.164436, 56.799927>,  <35.342640, 36.514786, 56.607002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348503, 36.164436, 56.799927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745013, -0.312149, -0.589507,
		0.666889, 0.367973, 0.647962,
		0.014662, -0.875876, 0.482314,
		35.352901, 35.901672, 56.944622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059494, 36.359306, 56.724903>,  <35.342640, 36.514786, 56.607002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059494, 36.359306, 56.724903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890179, 35.997013, 56.733643>,  <35.788589, 35.779636, 56.738884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890179, 35.997013, 56.733643>,  <36.059494, 36.359306, 56.724903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890179, 35.997013, 56.733643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689437, -0.337665, -0.640826,
		0.587792, -0.256196, 0.767375,
		-0.423293, -0.905729, 0.021845,
		35.763191, 35.725296, 56.740196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592716, 35.952435, 56.639317>,  <36.059494, 36.359306, 56.724903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592716, 35.952435, 56.639317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.301254, 35.689766, 56.561501>,  <36.126377, 35.532166, 56.514812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.301254, 35.689766, 56.561501>,  <36.592716, 35.952435, 56.639317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301254, 35.689766, 56.561501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580460, -0.441375, -0.684291,
		0.363488, -0.611535, 0.702781,
		-0.728658, -0.656668, -0.194537,
		36.082657, 35.492767, 56.503139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902977, 35.344891, 56.600124>,  <36.592716, 35.952435, 56.639317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902977, 35.344891, 56.600124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.563286, 35.301991, 56.393318>,  <36.359470, 35.276253, 56.269234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.563286, 35.301991, 56.393318>,  <36.902977, 35.344891, 56.600124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563286, 35.301991, 56.393318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492849, -0.512400, -0.703239,
		-0.189502, -0.852024, 0.488001,
		-0.849228, -0.107246, -0.517020,
		36.308517, 35.269817, 56.238213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987019, 34.673702, 56.369144>,  <36.902977, 35.344891, 56.600124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987019, 34.673702, 56.369144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.721821, 34.856037, 56.131607>,  <36.562702, 34.965439, 55.989082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.721821, 34.856037, 56.131607>,  <36.987019, 34.673702, 56.369144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721821, 34.856037, 56.131607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421189, -0.428666, -0.799278,
		-0.618904, -0.780036, 0.092207,
		-0.662991, 0.455839, -0.593846,
		36.522923, 34.992790, 55.953453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653645, 34.163464, 55.861214>,  <36.987019, 34.673702, 56.369144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653645, 34.163464, 55.861214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.586109, 34.513912, 55.680588>,  <36.545589, 34.724182, 55.572212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.586109, 34.513912, 55.680588>,  <36.653645, 34.163464, 55.861214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586109, 34.513912, 55.680588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379069, -0.365187, -0.850262,
		-0.909836, -0.314727, -0.270454,
		-0.168834, 0.876120, -0.451564,
		36.535458, 34.776749, 55.545120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312283, 34.025650, 55.279770>,  <36.653645, 34.163464, 55.861214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312283, 34.025650, 55.279770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429775, 34.394966, 55.180767>,  <36.500271, 34.616554, 55.121365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429775, 34.394966, 55.180767>,  <36.312283, 34.025650, 55.279770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429775, 34.394966, 55.180767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197386, -0.311937, -0.929373,
		-0.935286, 0.224133, -0.273870,
		0.293733, 0.923287, -0.247510,
		36.517895, 34.671951, 55.106514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979584, 34.339077, 54.674236>,  <36.312283, 34.025650, 55.279770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979584, 34.339077, 54.674236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.307861, 34.567574, 54.679031>,  <36.504829, 34.704670, 54.681908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.307861, 34.567574, 54.679031>,  <35.979584, 34.339077, 54.674236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307861, 34.567574, 54.679031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097949, -0.119985, -0.987932,
		-0.562905, 0.811968, -0.154423,
		0.820697, 0.571237, 0.011991,
		36.554070, 34.738945, 54.682629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334946, 34.446121, 54.321770>,  <35.979584, 34.339077, 54.674236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334946, 34.446121, 54.321770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.074467, 34.181171, 54.173603>,  <34.918179, 34.022202, 54.084705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.074467, 34.181171, 54.173603>,  <35.334946, 34.446121, 54.321770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074467, 34.181171, 54.173603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705506, 0.348516, 0.617088,
		-0.279646, 0.663175, -0.694260,
		-0.651198, -0.662371, -0.370413,
		34.879108, 33.982460, 54.062481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826782, 34.870537, 54.092823>,  <35.334946, 34.446121, 54.321770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826782, 34.870537, 54.092823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.684082, 34.502045, 54.154873>,  <34.598461, 34.280949, 54.192104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.684082, 34.502045, 54.154873>,  <34.826782, 34.870537, 54.092823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684082, 34.502045, 54.154873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804136, 0.387334, 0.450930,
		-0.475497, 0.036123, -0.878975,
		-0.356746, -0.921231, 0.155129,
		34.577057, 34.225674, 54.201412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072319, 34.867653, 53.858593>,  <34.826782, 34.870537, 54.092823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072319, 34.867653, 53.858593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.129982, 34.564991, 54.113682>,  <34.164581, 34.383392, 54.266735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.129982, 34.564991, 54.113682>,  <34.072319, 34.867653, 53.858593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129982, 34.564991, 54.113682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710593, 0.369350, 0.598864,
		-0.688677, -0.539493, -0.484429,
		0.144158, -0.756655, 0.637723,
		34.173229, 34.337994, 54.305000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417004, 34.694473, 54.105591>,  <34.072319, 34.867653, 53.858593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417004, 34.694473, 54.105591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663494, 34.529381, 54.373894>,  <33.811390, 34.430325, 54.534874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663494, 34.529381, 54.373894>,  <33.417004, 34.694473, 54.105591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663494, 34.529381, 54.373894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626414, 0.259359, 0.735077,
		-0.477359, -0.873145, -0.098719,
		0.616226, -0.412735, 0.670758,
		33.848362, 34.405560, 54.575123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060032, 34.140930, 54.451702>,  <33.417004, 34.694473, 54.105591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060032, 34.140930, 54.451702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330921, 34.250957, 54.724674>,  <33.493454, 34.316975, 54.888458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330921, 34.250957, 54.724674>,  <33.060032, 34.140930, 54.451702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330921, 34.250957, 54.724674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733475, 0.179061, 0.655707,
		0.058166, -0.944603, 0.323019,
		0.677223, 0.275066, 0.682428,
		33.534088, 34.333477, 54.929401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610825, 33.947922, 55.077538>,  <33.060032, 34.140930, 54.451702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610825, 33.947922, 55.077538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.912701, 34.182430, 55.195332>,  <33.093826, 34.323135, 55.266006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.912701, 34.182430, 55.195332>,  <32.610825, 33.947922, 55.077538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912701, 34.182430, 55.195332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592094, 0.415287, 0.690624,
		0.282599, -0.695572, 0.660543,
		0.754694, 0.586274, 0.294484,
		33.139111, 34.358311, 55.283676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468185, 33.912441, 55.762955>,  <32.610825, 33.947922, 55.077538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468185, 33.912441, 55.762955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731236, 34.212193, 55.732082>,  <32.889065, 34.392044, 55.713558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731236, 34.212193, 55.732082>,  <32.468185, 33.912441, 55.762955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731236, 34.212193, 55.732082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503359, 0.513312, 0.695083,
		0.560501, -0.418252, 0.714775,
		0.657623, 0.749384, -0.077181,
		32.928524, 34.437008, 55.708927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897041, 34.024017, 56.344967>,  <32.468185, 33.912441, 55.762955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897041, 34.024017, 56.344967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862476, 34.369495, 56.146351>,  <32.841740, 34.576782, 56.027180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862476, 34.369495, 56.146351>,  <32.897041, 34.024017, 56.344967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862476, 34.369495, 56.146351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567696, 0.366887, 0.736964,
		0.818691, 0.345567, 0.458616,
		-0.086410, 0.863700, -0.496544,
		32.836552, 34.628605, 55.997387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912384, 34.594173, 56.873871>,  <32.897041, 34.024017, 56.344967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912384, 34.594173, 56.873871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.763142, 34.749786, 56.536957>,  <32.673595, 34.843155, 56.334808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.763142, 34.749786, 56.536957>,  <32.912384, 34.594173, 56.873871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763142, 34.749786, 56.536957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542817, 0.644719, 0.538226,
		0.752425, 0.658022, -0.029375,
		-0.373103, 0.389030, -0.842289,
		32.651211, 34.866497, 56.284271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964828, 35.298901, 56.998131>,  <32.912384, 34.594173, 56.873871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964828, 35.298901, 56.998131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685287, 35.249630, 56.716301>,  <32.517563, 35.220070, 56.547203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685287, 35.249630, 56.716301>,  <32.964828, 35.298901, 56.998131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685287, 35.249630, 56.716301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559017, 0.708575, 0.430605,
		0.446208, 0.694802, -0.564046,
		-0.698855, -0.123172, -0.704578,
		32.475632, 35.212677, 56.504929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757946, 35.900227, 56.878643>,  <32.964828, 35.298901, 56.998131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757946, 35.900227, 56.878643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468220, 35.662762, 56.738396>,  <32.294384, 35.520283, 56.654247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468220, 35.662762, 56.738396>,  <32.757946, 35.900227, 56.878643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468220, 35.662762, 56.738396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688631, 0.647923, 0.325551,
		0.033907, 0.477249, -0.878114,
		-0.724319, -0.593658, -0.350618,
		32.250923, 35.484665, 56.633209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292957, 36.355942, 56.776329>,  <32.757946, 35.900227, 56.878643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292957, 36.355942, 56.776329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.061932, 36.029617, 56.764530>,  <31.923315, 35.833824, 56.757450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.061932, 36.029617, 56.764530>,  <32.292957, 36.355942, 56.776329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061932, 36.029617, 56.764530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799514, 0.557993, 0.222310,
		-0.164903, 0.151983, -0.974530,
		-0.577568, -0.815810, -0.029497,
		31.888660, 35.784874, 56.755680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833210, 36.495869, 56.261459>,  <32.292957, 36.355942, 56.776329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833210, 36.495869, 56.261459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.671986, 36.224289, 56.506920>,  <31.575251, 36.061340, 56.654194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.671986, 36.224289, 56.506920>,  <31.833210, 36.495869, 56.261459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671986, 36.224289, 56.506920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753317, 0.626889, 0.198803,
		-0.519666, -0.382141, -0.764144,
		-0.403063, -0.678954, 0.613647,
		31.551067, 36.020603, 56.691013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118019, 36.638504, 56.152824>,  <31.833210, 36.495869, 56.261459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118019, 36.638504, 56.152824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.143660, 36.423649, 56.489246>,  <31.159044, 36.294735, 56.691101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.143660, 36.423649, 56.489246>,  <31.118019, 36.638504, 56.152824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143660, 36.423649, 56.489246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659005, 0.610108, 0.439864,
		-0.749403, -0.582456, -0.314867,
		0.064099, -0.537134, 0.841058,
		31.162889, 36.262508, 56.741562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473171, 36.133583, 56.084717>,  <31.118019, 36.638504, 56.152824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473171, 36.133583, 56.084717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.204010, 36.097973, 55.790974>,  <30.042513, 36.076607, 55.614727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.204010, 36.097973, 55.790974>,  <30.473171, 36.133583, 56.084717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204010, 36.097973, 55.790974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399722, -0.879076, -0.259707,
		-0.622433, -0.468295, 0.627118,
		-0.672904, -0.089023, -0.734354,
		30.002138, 36.071266, 55.570667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269855, 35.404850, 56.029018>,  <30.473171, 36.133583, 56.084717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269855, 35.404850, 56.029018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.161482, 35.527206, 55.663937>,  <30.096457, 35.600620, 55.444889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.161482, 35.527206, 55.663937>,  <30.269855, 35.404850, 56.029018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161482, 35.527206, 55.663937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276183, -0.883598, -0.378123,
		-0.922127, -0.354519, 0.154915,
		-0.270934, 0.305893, -0.912701,
		30.080202, 35.618973, 55.390125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912563, 34.762787, 55.643402>,  <30.269855, 35.404850, 56.029018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912563, 34.762787, 55.643402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.980143, 35.001770, 55.329842>,  <30.020691, 35.145161, 55.141705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.980143, 35.001770, 55.329842>,  <29.912563, 34.762787, 55.643402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980143, 35.001770, 55.329842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253201, -0.794949, -0.551312,
		-0.952547, -0.105340, -0.285584,
		0.168949, 0.597461, -0.783899,
		30.030827, 35.181007, 55.094673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650366, 34.369320, 55.002644>,  <29.912563, 34.762787, 55.643402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650366, 34.369320, 55.002644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.900984, 34.654827, 54.877438>,  <30.051355, 34.826130, 54.802315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.900984, 34.654827, 54.877438>,  <29.650366, 34.369320, 55.002644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900984, 34.654827, 54.877438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308043, -0.595701, -0.741788,
		-0.715927, 0.368342, -0.593104,
		0.626545, 0.713768, -0.313013,
		30.088947, 34.868958, 54.783535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471792, 34.459850, 54.364212>,  <29.650366, 34.369320, 55.002644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471792, 34.459850, 54.364212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.845407, 34.602718, 54.363262>,  <30.069576, 34.688438, 54.362694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.845407, 34.602718, 54.363262>,  <29.471792, 34.459850, 54.364212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845407, 34.602718, 54.363262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188213, -0.497829, -0.846606,
		-0.303564, 0.790314, -0.532215,
		0.934037, 0.357169, -0.002375,
		30.125618, 34.709869, 54.362549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581963, 34.759212, 53.717365>,  <29.471792, 34.459850, 54.364212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581963, 34.759212, 53.717365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.940269, 34.686234, 53.879509>,  <30.155252, 34.642445, 53.976795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.940269, 34.686234, 53.879509>,  <29.581963, 34.759212, 53.717365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940269, 34.686234, 53.879509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280550, -0.475302, -0.833894,
		0.344814, 0.860697, -0.374572,
		0.895765, -0.182452, 0.405359,
		30.209000, 34.631496, 54.001118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150764, 34.933811, 53.184750>,  <29.581963, 34.759212, 53.717365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150764, 34.933811, 53.184750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.327570, 34.681988, 53.440334>,  <30.433653, 34.530891, 53.593685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.327570, 34.681988, 53.440334>,  <30.150764, 34.933811, 53.184750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327570, 34.681988, 53.440334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338735, -0.542436, -0.768779,
		0.830592, 0.556250, -0.026509,
		0.442013, -0.629562, 0.638965,
		30.460175, 34.493118, 53.632023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835449, 34.818314, 52.967884>,  <30.150764, 34.933811, 53.184750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835449, 34.818314, 52.967884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.754963, 34.505268, 53.203522>,  <30.706671, 34.317440, 53.344906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.754963, 34.505268, 53.203522>,  <30.835449, 34.818314, 52.967884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754963, 34.505268, 53.203522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393613, -0.615307, -0.682984,
		0.896984, 0.094447, 0.431855,
		-0.201218, -0.782609, 0.589096,
		30.694597, 34.270485, 53.380249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476179, 34.385101, 52.901161>,  <30.835449, 34.818314, 52.967884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476179, 34.385101, 52.901161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.179752, 34.146938, 53.025295>,  <31.001896, 34.004040, 53.099777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.179752, 34.146938, 53.025295>,  <31.476179, 34.385101, 52.901161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179752, 34.146938, 53.025295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300837, -0.707650, -0.639319,
		0.600267, -0.380417, 0.703536,
		-0.741065, -0.595412, 0.310335,
		30.957434, 33.968315, 53.118397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807123, 33.747643, 53.220360>,  <31.476179, 34.385101, 52.901161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807123, 33.747643, 53.220360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.426998, 33.655197, 53.136940>,  <31.198923, 33.599731, 53.086887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.426998, 33.655197, 53.136940>,  <31.807123, 33.747643, 53.220360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426998, 33.655197, 53.136940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309850, -0.766708, -0.562274,
		-0.029948, -0.598955, 0.800223,
		-0.950313, -0.231110, -0.208547,
		31.141905, 33.585865, 53.074375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892536, 33.081032, 53.122631>,  <31.807123, 33.747643, 53.220360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892536, 33.081032, 53.122631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.534758, 33.149673, 52.957455>,  <31.320091, 33.190861, 52.858349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.534758, 33.149673, 52.957455>,  <31.892536, 33.081032, 53.122631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534758, 33.149673, 52.957455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179522, -0.707953, -0.683063,
		-0.409560, -0.685094, 0.602418,
		-0.894446, 0.171608, -0.412938,
		31.266424, 33.201157, 52.833572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607849, 32.422558, 53.037666>,  <31.892536, 33.081032, 53.122631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607849, 32.422558, 53.037666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.387453, 32.639816, 52.784241>,  <31.255217, 32.770172, 52.632183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.387453, 32.639816, 52.784241>,  <31.607849, 32.422558, 53.037666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387453, 32.639816, 52.784241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119442, -0.700061, -0.704022,
		-0.825922, -0.463581, 0.320850,
		-0.550987, 0.543145, -0.633567,
		31.222157, 32.802761, 52.594170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183157, 31.888336, 52.644646>,  <31.607849, 32.422558, 53.037666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183157, 31.888336, 52.644646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.192907, 32.235378, 52.445984>,  <31.198757, 32.443604, 52.326786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.192907, 32.235378, 52.445984>,  <31.183157, 31.888336, 52.644646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192907, 32.235378, 52.445984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059916, -0.497179, -0.865577,
		-0.997906, -0.008656, -0.064103,
		0.024378, 0.867605, -0.496656,
		31.200220, 32.495659, 52.296986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833866, 31.757198, 51.935448>,  <31.183157, 31.888336, 52.644646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833866, 31.757198, 51.935448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.040174, 32.096401, 51.886688>,  <31.163960, 32.299923, 51.857430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.040174, 32.096401, 51.886688>,  <30.833866, 31.757198, 51.935448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040174, 32.096401, 51.886688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295066, -0.309415, -0.903990,
		-0.804310, 0.430285, -0.409806,
		0.515773, 0.848008, -0.121903,
		31.194906, 32.350803, 51.850117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.347694, 38.986435, 52.104183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.665104, 39.218052, 52.179043>,  <26.855551, 39.357021, 52.223957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.665104, 39.218052, 52.179043>,  <26.347694, 38.986435, 52.104183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665104, 39.218052, 52.179043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333635, 0.156775, 0.929575,
		0.508926, -0.800080, 0.317595,
		0.793525, 0.579046, 0.187148,
		26.903162, 39.391766, 52.235188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484425, 38.765568, 52.711990>,  <26.347694, 38.986435, 52.104183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484425, 38.765568, 52.711990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.673992, 39.114937, 52.667213>,  <26.787733, 39.324558, 52.640347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.673992, 39.114937, 52.667213>,  <26.484425, 38.765568, 52.711990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673992, 39.114937, 52.667213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243748, 0.252272, 0.936454,
		0.846162, -0.416516, 0.332451,
		0.473916, 0.873426, -0.111938,
		26.816168, 39.376965, 52.633633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012043, 38.760532, 53.171421>,  <26.484425, 38.765568, 52.711990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012043, 38.760532, 53.171421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.981367, 39.152988, 53.100445>,  <26.962961, 39.388462, 53.057858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.981367, 39.152988, 53.100445>,  <27.012043, 38.760532, 53.171421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981367, 39.152988, 53.100445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048671, 0.174070, 0.983530,
		0.995867, 0.084061, 0.034404,
		-0.076688, 0.981139, -0.177442,
		26.958361, 39.447330, 53.047211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376867, 39.131989, 53.715137>,  <27.012043, 38.760532, 53.171421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376867, 39.131989, 53.715137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.142378, 39.431374, 53.591106>,  <27.001684, 39.611004, 53.516689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.142378, 39.431374, 53.591106>,  <27.376867, 39.131989, 53.715137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142378, 39.431374, 53.591106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072852, 0.332491, 0.940289,
		0.806867, 0.573810, -0.140387,
		-0.586224, 0.748460, -0.310079,
		26.966511, 39.655910, 53.498081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657154, 39.724277, 53.993637>,  <27.376867, 39.131989, 53.715137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657154, 39.724277, 53.993637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.285088, 39.849014, 53.916126>,  <27.061848, 39.923855, 53.869621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.285088, 39.849014, 53.916126>,  <27.657154, 39.724277, 53.993637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285088, 39.849014, 53.916126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125061, 0.227113, 0.965805,
		0.345183, 0.922593, -0.172254,
		-0.930166, 0.311838, -0.193776,
		27.006039, 39.942566, 53.857994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639421, 40.379929, 54.357742>,  <27.657154, 39.724277, 53.993637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639421, 40.379929, 54.357742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.264139, 40.255718, 54.296619>,  <27.038971, 40.181190, 54.259945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.264139, 40.255718, 54.296619>,  <27.639421, 40.379929, 54.357742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264139, 40.255718, 54.296619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202738, 0.135302, 0.969841,
		-0.280484, 0.940887, -0.189896,
		-0.938204, -0.310524, -0.152804,
		26.982677, 40.162560, 54.250778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204742, 40.888786, 54.678795>,  <27.639421, 40.379929, 54.357742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204742, 40.888786, 54.678795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.962374, 40.570934, 54.663689>,  <26.816954, 40.380222, 54.654625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.962374, 40.570934, 54.663689>,  <27.204742, 40.888786, 54.678795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962374, 40.570934, 54.663689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293563, 0.179216, 0.938990,
		-0.739379, 0.580041, -0.341864,
		-0.605920, -0.794629, -0.037770,
		26.780598, 40.332546, 54.652359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467314, 41.115570, 54.877068>,  <27.204742, 40.888786, 54.678795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467314, 41.115570, 54.877068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.528292, 40.731197, 54.969479>,  <26.564878, 40.500576, 55.024925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.528292, 40.731197, 54.969479>,  <26.467314, 41.115570, 54.877068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528292, 40.731197, 54.969479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319547, 0.173279, 0.931592,
		-0.935227, -0.215842, -0.280646,
		0.152447, -0.960930, 0.231027,
		26.574026, 40.442917, 55.038788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979160, 40.944759, 55.308731>,  <26.467314, 41.115570, 54.877068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979160, 40.944759, 55.308731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.222662, 40.636448, 55.383907>,  <26.368763, 40.451462, 55.429012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.222662, 40.636448, 55.383907>,  <25.979160, 40.944759, 55.308731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222662, 40.636448, 55.383907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243127, 0.044251, 0.968985,
		-0.755188, -0.635566, -0.160459,
		0.608753, -0.770777, 0.187941,
		26.405289, 40.405216, 55.440289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.583019, 40.588223, 55.777946>,  <25.979160, 40.944759, 55.308731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.583019, 40.588223, 55.777946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.949266, 40.448444, 55.857471>,  <26.169016, 40.364578, 55.905186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.949266, 40.448444, 55.857471>,  <25.583019, 40.588223, 55.777946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.949266, 40.448444, 55.857471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163347, 0.128521, 0.978162,
		-0.367366, -0.928100, 0.060595,
		0.915620, -0.349445, 0.198817,
		26.223953, 40.343613, 55.917118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602480, 40.215134, 56.408497>,  <25.583019, 40.588223, 55.777946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602480, 40.215134, 56.408497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.999992, 40.246738, 56.377106>,  <26.238501, 40.265701, 56.358273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.999992, 40.246738, 56.377106>,  <25.602480, 40.215134, 56.408497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.999992, 40.246738, 56.377106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040649, 0.398700, 0.916180,
		0.103672, -0.913672, 0.393008,
		0.993780, 0.079007, -0.078474,
		26.298126, 40.270439, 56.353565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879965, 39.883129, 57.008701>,  <25.602480, 40.215134, 56.408497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879965, 39.883129, 57.008701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.194153, 40.101677, 56.892410>,  <26.382666, 40.232803, 56.822636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.194153, 40.101677, 56.892410>,  <25.879965, 39.883129, 57.008701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194153, 40.101677, 56.892410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038552, 0.425638, 0.904072,
		0.617698, -0.721329, 0.313262,
		0.785470, 0.546367, -0.290724,
		26.429794, 40.265587, 56.805195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303017, 40.021549, 57.628761>,  <25.879965, 39.883129, 57.008701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303017, 40.021549, 57.628761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.428459, 40.312107, 57.384140>,  <26.503725, 40.486443, 57.237366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.428459, 40.312107, 57.384140>,  <26.303017, 40.021549, 57.628761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428459, 40.312107, 57.384140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145727, 0.599597, 0.786922,
		0.938304, -0.335904, 0.082181,
		0.313605, 0.726397, -0.611555,
		26.522541, 40.530025, 57.200672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.056997, 40.189716, 57.518764>,  <26.303017, 40.021549, 57.628761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.056997, 40.189716, 57.518764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.245274, 40.317471, 57.847748>,  <27.358238, 40.394123, 58.045139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.245274, 40.317471, 57.847748>,  <27.056997, 40.189716, 57.518764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245274, 40.317471, 57.847748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793531, -0.560744, -0.236377,
		0.385693, 0.763909, -0.517382,
		0.470689, 0.319390, 0.822461,
		27.386480, 40.413288, 58.094486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668186, 40.516521, 57.233711>,  <27.056997, 40.189716, 57.518764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668186, 40.516521, 57.233711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.712637, 40.399944, 57.613754>,  <27.739307, 40.329998, 57.841782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.712637, 40.399944, 57.613754>,  <27.668186, 40.516521, 57.233711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712637, 40.399944, 57.613754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837695, -0.486918, -0.247339,
		0.534712, 0.823390, 0.190030,
		0.111128, -0.291442, 0.950112,
		27.745975, 40.312511, 57.898788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415802, 40.487133, 57.367214>,  <27.668186, 40.516521, 57.233711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415802, 40.487133, 57.367214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.251102, 40.255470, 57.648651>,  <28.152283, 40.116474, 57.817513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.251102, 40.255470, 57.648651>,  <28.415802, 40.487133, 57.367214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251102, 40.255470, 57.648651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628951, -0.739314, -0.240492,
		0.659456, 0.343501, 0.668674,
		-0.411750, -0.579157, 0.703590,
		28.127577, 40.081722, 57.859730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908892, 40.093494, 57.618877>,  <28.415802, 40.487133, 57.367214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908892, 40.093494, 57.618877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.578690, 39.899586, 57.734489>,  <28.380568, 39.783241, 57.803856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.578690, 39.899586, 57.734489>,  <28.908892, 40.093494, 57.618877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578690, 39.899586, 57.734489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444258, -0.873971, -0.197002,
		0.348104, -0.034223, 0.936831,
		-0.825505, -0.484772, 0.289030,
		28.331038, 39.754154, 57.821198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130629, 39.421902, 58.016628>,  <28.908892, 40.093494, 57.618877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130629, 39.421902, 58.016628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.757259, 39.333481, 57.903591>,  <28.533237, 39.280430, 57.835770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.757259, 39.333481, 57.903591>,  <29.130629, 39.421902, 58.016628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757259, 39.333481, 57.903591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276745, -0.944873, -0.175006,
		-0.228325, -0.241560, 0.943142,
		-0.933424, -0.221051, -0.282589,
		28.477232, 39.267166, 57.818813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196646, 38.697956, 58.093269>,  <29.130629, 39.421902, 58.016628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196646, 38.697956, 58.093269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.858507, 38.776356, 57.894482>,  <28.655624, 38.823395, 57.775208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.858507, 38.776356, 57.894482>,  <29.196646, 38.697956, 58.093269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858507, 38.776356, 57.894482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003810, -0.928033, -0.372479,
		-0.534207, -0.316766, 0.783762,
		-0.845346, 0.195994, -0.496968,
		28.604904, 38.835155, 57.745392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736521, 38.189880, 58.088993>,  <29.196646, 38.697956, 58.093269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736521, 38.189880, 58.088993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.641422, 38.402561, 57.763840>,  <28.584364, 38.530170, 57.568748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.641422, 38.402561, 57.763840>,  <28.736521, 38.189880, 58.088993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641422, 38.402561, 57.763840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083625, -0.822563, -0.562491,
		-0.967721, -0.201707, 0.151098,
		-0.237746, 0.531699, -0.812880,
		28.570099, 38.562069, 57.519978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288614, 37.824196, 57.730839>,  <28.736521, 38.189880, 58.088993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288614, 37.824196, 57.730839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.436552, 38.066925, 57.449417>,  <28.525314, 38.212563, 57.280563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.436552, 38.066925, 57.449417>,  <28.288614, 37.824196, 57.730839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436552, 38.066925, 57.449417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018636, -0.752245, -0.658620,
		-0.928908, 0.256697, -0.266904,
		0.369842, 0.606823, -0.703550,
		28.547504, 38.248970, 57.238354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859615, 37.732338, 57.106220>,  <28.288614, 37.824196, 57.730839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859615, 37.732338, 57.106220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.207348, 37.886749, 56.982773>,  <28.415987, 37.979397, 56.908703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.207348, 37.886749, 56.982773>,  <27.859615, 37.732338, 57.106220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207348, 37.886749, 56.982773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019689, -0.596896, -0.802077,
		-0.493839, 0.703347, -0.511299,
		0.869330, 0.386030, -0.308619,
		28.468147, 38.002560, 56.890186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832115, 37.939831, 56.290886>,  <27.859615, 37.732338, 57.106220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832115, 37.939831, 56.290886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.211386, 37.882500, 56.404316>,  <28.438948, 37.848099, 56.472374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.211386, 37.882500, 56.404316>,  <27.832115, 37.939831, 56.290886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211386, 37.882500, 56.404316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157094, -0.564302, -0.810484,
		0.276191, 0.813031, -0.512542,
		0.948177, -0.143331, 0.283577,
		28.495838, 37.839500, 56.489388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117020, 37.842033, 55.648327>,  <27.832115, 37.939831, 56.290886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117020, 37.842033, 55.648327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.385830, 37.716621, 55.916679>,  <28.547117, 37.641373, 56.077690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.385830, 37.716621, 55.916679>,  <28.117020, 37.842033, 55.648327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385830, 37.716621, 55.916679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412889, -0.593414, -0.690929,
		0.614737, 0.741321, -0.269336,
		0.672028, -0.313533, 0.670877,
		28.587439, 37.622562, 56.117943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710934, 37.793419, 55.324219>,  <28.117020, 37.842033, 55.648327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710934, 37.793419, 55.324219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.794252, 37.547295, 55.628326>,  <28.844244, 37.399620, 55.810791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.794252, 37.547295, 55.628326>,  <28.710934, 37.793419, 55.324219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794252, 37.547295, 55.628326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550548, -0.568712, -0.611116,
		0.808399, 0.545857, 0.220298,
		0.208296, -0.615311, 0.760267,
		28.856741, 37.362701, 55.856407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336605, 37.628487, 55.204918>,  <28.710934, 37.793419, 55.324219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336605, 37.628487, 55.204918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.228954, 37.346542, 55.467442>,  <29.164364, 37.177376, 55.624954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.228954, 37.346542, 55.467442>,  <29.336605, 37.628487, 55.204918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228954, 37.346542, 55.467442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567274, -0.666711, -0.483422,
		0.778313, 0.242204, 0.579280,
		-0.269126, -0.704864, 0.656306,
		29.148216, 37.135082, 55.664333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996368, 37.406342, 55.374710>,  <29.336605, 37.628487, 55.204918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996368, 37.406342, 55.374710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.735882, 37.122372, 55.481979>,  <29.579590, 36.951988, 55.546341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.735882, 37.122372, 55.481979>,  <29.996368, 37.406342, 55.374710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735882, 37.122372, 55.481979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583140, -0.694263, -0.421837,
		0.485659, -0.118323, 0.866103,
		-0.651217, -0.709928, 0.268176,
		29.540516, 36.909393, 55.562431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386963, 36.894497, 55.725418>,  <29.996368, 37.406342, 55.374710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386963, 36.894497, 55.725418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.063643, 36.692802, 55.603828>,  <29.869650, 36.571785, 55.530872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.063643, 36.692802, 55.603828>,  <30.386963, 36.894497, 55.725418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063643, 36.692802, 55.603828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586136, -0.737940, -0.334499,
		-0.055651, -0.448547, 0.892025,
		-0.808299, -0.504232, -0.303977,
		29.821154, 36.541534, 55.512634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448969, 36.730984, 56.483738>,  <30.386963, 36.894497, 55.725418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448969, 36.730984, 56.483738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.677626, 36.578072, 56.774139>,  <30.814819, 36.486324, 56.948380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.677626, 36.578072, 56.774139>,  <30.448969, 36.730984, 56.483738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677626, 36.578072, 56.774139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498491, 0.540996, 0.677370,
		-0.651713, -0.749121, 0.118692,
		0.571644, -0.382284, 0.726004,
		30.849119, 36.463387, 56.991940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005028, 36.391502, 56.978680>,  <30.448969, 36.730984, 56.483738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005028, 36.391502, 56.978680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.354109, 36.499866, 57.141159>,  <30.563559, 36.564884, 57.238647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.354109, 36.499866, 57.141159>,  <30.005028, 36.391502, 56.978680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354109, 36.499866, 57.141159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487068, 0.540893, 0.685711,
		-0.033946, -0.796269, 0.603990,
		0.872704, 0.270907, 0.406199,
		30.615919, 36.581139, 57.263020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901567, 36.264645, 57.740276>,  <30.005028, 36.391502, 56.978680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901567, 36.264645, 57.740276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.211733, 36.509521, 57.678371>,  <30.397833, 36.656448, 57.641228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.211733, 36.509521, 57.678371>,  <29.901567, 36.264645, 57.740276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211733, 36.509521, 57.678371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302825, 0.575592, 0.759599,
		0.554098, -0.542141, 0.631711,
		0.775418, 0.612190, -0.154760,
		30.444357, 36.693180, 57.631943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303219, 36.274685, 58.432961>,  <29.901567, 36.264645, 57.740276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303219, 36.274685, 58.432961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.398991, 36.600414, 58.221470>,  <30.456453, 36.795853, 58.094578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.398991, 36.600414, 58.221470>,  <30.303219, 36.274685, 58.432961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398991, 36.600414, 58.221470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323214, 0.580352, 0.747478,
		0.915536, -0.008076, 0.402155,
		0.239428, 0.814325, -0.528723,
		30.470819, 36.844711, 58.062851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745291, 36.753517, 58.880768>,  <30.303219, 36.274685, 58.432961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745291, 36.753517, 58.880768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.608316, 36.987591, 58.586746>,  <30.526133, 37.128036, 58.410336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.608316, 36.987591, 58.586746>,  <30.745291, 36.753517, 58.880768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608316, 36.987591, 58.586746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258143, 0.693642, 0.672475,
		0.903383, 0.420027, -0.086465,
		-0.342434, 0.585183, -0.735051,
		30.505587, 37.163147, 58.366230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021385, 37.344204, 59.139111>,  <30.745291, 36.753517, 58.880768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021385, 37.344204, 59.139111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.713760, 37.407326, 58.891357>,  <30.529184, 37.445198, 58.742706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.713760, 37.407326, 58.891357>,  <31.021385, 37.344204, 59.139111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713760, 37.407326, 58.891357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432219, 0.585503, 0.685837,
		0.470881, 0.795163, -0.382083,
		-0.769063, 0.157804, -0.619387,
		30.483042, 37.454666, 58.705540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949932, 38.061615, 59.132118>,  <31.021385, 37.344204, 59.139111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949932, 38.061615, 59.132118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.596144, 37.927734, 59.002079>,  <30.383871, 37.847408, 58.924057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.596144, 37.927734, 59.002079>,  <30.949932, 38.061615, 59.132118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596144, 37.927734, 59.002079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464529, 0.566138, 0.680956,
		-0.043865, 0.753303, -0.656209,
		-0.884471, -0.334698, -0.325097,
		30.330803, 37.827324, 58.904549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715614, 38.351028, 58.908028>,  <30.949932, 38.061615, 59.132118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715614, 38.351028, 58.908028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.956470, 38.653694, 59.009922>,  <32.100983, 38.835293, 59.071060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.956470, 38.653694, 59.009922>,  <31.715614, 38.351028, 58.908028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956470, 38.653694, 59.009922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780097, -0.625502, 0.014002,
		0.169934, 0.190289, -0.966909,
		0.602139, 0.756662, 0.254738,
		32.137112, 38.880692, 59.086342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212559, 38.353294, 58.326374>,  <31.715614, 38.351028, 58.908028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212559, 38.353294, 58.326374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.362854, 38.521214, 58.656849>,  <32.453030, 38.621964, 58.855133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.362854, 38.521214, 58.656849>,  <32.212559, 38.353294, 58.326374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362854, 38.521214, 58.656849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783745, -0.619691, -0.041559,
		0.494537, 0.663139, -0.561854,
		0.375736, 0.419798, 0.826191,
		32.475574, 38.647152, 58.904705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931332, 38.466694, 58.138977>,  <32.212559, 38.353294, 58.326374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931332, 38.466694, 58.138977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.917858, 38.487793, 58.538193>,  <32.909775, 38.500454, 58.777721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.917858, 38.487793, 58.538193>,  <32.931332, 38.466694, 58.138977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917858, 38.487793, 58.538193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761173, -0.645784, 0.059820,
		0.647673, 0.761696, -0.018400,
		-0.033682, 0.052749, 0.998040,
		32.907753, 38.503616, 58.837605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706436, 38.621624, 58.382675>,  <32.931332, 38.466694, 58.138977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706436, 38.621624, 58.382675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.489384, 38.444160, 58.667973>,  <33.359154, 38.337681, 58.839153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.489384, 38.444160, 58.667973>,  <33.706436, 38.621624, 58.382675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489384, 38.444160, 58.667973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701660, -0.706214, 0.094526,
		0.461767, 0.551749, 0.694510,
		-0.542628, -0.443661, 0.713246,
		33.326595, 38.311062, 58.881947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209408, 38.478298, 58.783321>,  <33.706436, 38.621624, 58.382675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209408, 38.478298, 58.783321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.915604, 38.238377, 58.910275>,  <33.739319, 38.094425, 58.986446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.915604, 38.238377, 58.910275>,  <34.209408, 38.478298, 58.783321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915604, 38.238377, 58.910275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674106, -0.698640, 0.239757,
		0.077930, 0.390054, 0.917488,
		-0.734512, -0.599800, 0.317383,
		33.695251, 38.058437, 59.005489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507992, 37.960735, 59.236679>,  <34.209408, 38.478298, 58.783321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507992, 37.960735, 59.236679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.157925, 37.789043, 59.147369>,  <33.947884, 37.686028, 59.093784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.157925, 37.789043, 59.147369>,  <34.507992, 37.960735, 59.236679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157925, 37.789043, 59.147369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461068, -0.879750, -0.116004,
		-0.146631, -0.204466, 0.967829,
		-0.875166, -0.429225, -0.223271,
		33.895374, 37.660275, 59.080387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445118, 37.257465, 59.592854>,  <34.507992, 37.960735, 59.236679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445118, 37.257465, 59.592854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.192848, 37.255775, 59.282440>,  <34.041485, 37.254761, 59.096191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.192848, 37.255775, 59.282440>,  <34.445118, 37.257465, 59.592854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192848, 37.255775, 59.282440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408549, -0.852000, -0.327390,
		-0.659799, -0.523525, 0.539061,
		-0.630677, -0.004222, -0.776034,
		34.003647, 37.254509, 59.049629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.154255, 42.288578, 56.786434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908640, 42.007309, 56.643040>,  <27.761271, 41.838547, 56.557003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908640, 42.007309, 56.643040>,  <28.154255, 42.288578, 56.786434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908640, 42.007309, 56.643040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354073, 0.160514, -0.921340,
		0.705400, -0.692667, 0.150411,
		-0.614039, -0.703169, -0.358481,
		27.724428, 41.796360, 56.535496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568981, 41.628613, 56.411613>,  <28.154255, 42.288578, 56.786434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568981, 41.628613, 56.411613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201431, 41.726360, 56.287704>,  <27.980902, 41.785007, 56.213360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201431, 41.726360, 56.287704>,  <28.568981, 41.628613, 56.411613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201431, 41.726360, 56.287704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360357, 0.200072, -0.911106,
		-0.160668, -0.948818, -0.271900,
		-0.918874, 0.244366, -0.309768,
		27.925770, 41.799671, 56.194775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424549, 41.247952, 55.827343>,  <28.568981, 41.628613, 56.411613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424549, 41.247952, 55.827343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187281, 41.568535, 55.796864>,  <28.044920, 41.760887, 55.778576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187281, 41.568535, 55.796864>,  <28.424549, 41.247952, 55.827343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187281, 41.568535, 55.796864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311117, 0.140908, -0.939868,
		-0.742532, -0.581208, -0.332931,
		-0.593171, 0.801463, -0.076195,
		28.009329, 41.808975, 55.774006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996986, 41.197098, 55.200840>,  <28.424549, 41.247952, 55.827343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996986, 41.197098, 55.200840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013727, 41.585548, 55.294788>,  <28.023771, 41.818619, 55.351158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013727, 41.585548, 55.294788>,  <27.996986, 41.197098, 55.200840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013727, 41.585548, 55.294788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398379, 0.199364, -0.895292,
		-0.916266, 0.131037, -0.378532,
		0.041851, 0.971125, 0.234873,
		28.026283, 41.876884, 55.365250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650532, 41.490219, 54.655056>,  <27.996986, 41.197098, 55.200840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650532, 41.490219, 54.655056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859646, 41.792496, 54.812855>,  <27.985115, 41.973862, 54.907536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859646, 41.792496, 54.812855>,  <27.650532, 41.490219, 54.655056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859646, 41.792496, 54.812855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626484, -0.026744, -0.778975,
		-0.578111, 0.654386, -0.487408,
		0.522785, 0.755688, 0.394501,
		28.016481, 42.019203, 54.931206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673580, 41.868229, 54.118832>,  <27.650532, 41.490219, 54.655056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673580, 41.868229, 54.118832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965363, 41.991631, 54.363033>,  <28.140432, 42.065670, 54.509556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965363, 41.991631, 54.363033>,  <27.673580, 41.868229, 54.118832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965363, 41.991631, 54.363033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641896, -0.000331, -0.766791,
		-0.236356, 0.951223, -0.198269,
		0.729455, 0.308504, 0.610508,
		28.184198, 42.084183, 54.546185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069136, 42.213913, 53.679771>,  <27.673580, 41.868229, 54.118832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069136, 42.213913, 53.679771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310442, 42.213326, 53.998787>,  <28.455225, 42.212975, 54.190197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310442, 42.213326, 53.998787>,  <28.069136, 42.213913, 53.679771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310442, 42.213326, 53.998787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796021, 0.062805, -0.602002,
		-0.049205, 0.998025, 0.039057,
		0.603266, -0.001468, 0.797539,
		28.491423, 42.212887, 54.238049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467236, 42.879597, 53.597572>,  <28.069136, 42.213913, 53.679771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467236, 42.879597, 53.597572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659695, 42.605186, 53.815880>,  <28.775171, 42.440540, 53.946865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659695, 42.605186, 53.815880>,  <28.467236, 42.879597, 53.597572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659695, 42.605186, 53.815880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731792, -0.028474, -0.680933,
		0.482676, 0.727023, 0.488325,
		0.481150, -0.686022, 0.545773,
		28.804039, 42.399380, 53.979610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100464, 43.111301, 53.658993>,  <28.467236, 42.879597, 53.597572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100464, 43.111301, 53.658993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115343, 42.713711, 53.700237>,  <29.124269, 42.475159, 53.724983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115343, 42.713711, 53.700237>,  <29.100464, 43.111301, 53.658993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115343, 42.713711, 53.700237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589433, -0.061497, -0.805473,
		0.806960, 0.090736, 0.583594,
		0.037196, -0.993975, 0.103108,
		29.126501, 42.415520, 53.731171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771606, 42.834423, 53.429668>,  <29.100464, 43.111301, 53.658993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771606, 42.834423, 53.429668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552794, 42.500427, 53.405838>,  <29.421505, 42.300030, 53.391541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552794, 42.500427, 53.405838>,  <29.771606, 42.834423, 53.429668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552794, 42.500427, 53.405838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511958, -0.277394, -0.812990,
		0.662310, -0.475234, 0.579222,
		-0.547033, -0.834988, -0.059579,
		29.388683, 42.249931, 53.387962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308437, 42.319183, 53.369358>,  <29.771606, 42.834423, 53.429668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308437, 42.319183, 53.369358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980993, 42.141590, 53.223610>,  <29.784527, 42.035034, 53.136162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980993, 42.141590, 53.223610>,  <30.308437, 42.319183, 53.369358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980993, 42.141590, 53.223610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542513, -0.389422, -0.744332,
		0.188576, -0.806990, 0.559648,
		-0.818608, -0.443979, -0.364367,
		29.735411, 42.008396, 53.114300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575790, 41.674862, 53.108662>,  <30.308437, 42.319183, 53.369358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575790, 41.674862, 53.108662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212587, 41.702694, 52.943409>,  <29.994665, 41.719395, 52.844257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212587, 41.702694, 52.943409>,  <30.575790, 41.674862, 53.108662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212587, 41.702694, 52.943409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261147, -0.677087, -0.688008,
		-0.327598, -0.732606, 0.596631,
		-0.908010, 0.069582, -0.413130,
		29.940184, 41.723568, 52.819469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091951, 41.365726, 53.743351>,  <30.575790, 41.674862, 53.108662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091951, 41.365726, 53.743351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437614, 41.501869, 53.891617>,  <31.645012, 41.583557, 53.980576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437614, 41.501869, 53.891617>,  <31.091951, 41.365726, 53.743351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437614, 41.501869, 53.891617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416037, 0.068838, 0.906738,
		0.283102, -0.937772, 0.201089,
		0.864157, 0.340360, 0.370660,
		31.696861, 41.603977, 54.002815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068081, 41.031479, 54.428997>,  <31.091951, 41.365726, 53.743351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068081, 41.031479, 54.428997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348703, 41.315556, 54.452480>,  <31.517076, 41.486000, 54.466572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348703, 41.315556, 54.452480>,  <31.068081, 41.031479, 54.428997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348703, 41.315556, 54.452480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301399, 0.221060, 0.927519,
		0.645739, -0.668400, 0.369137,
		0.701555, 0.710193, 0.058708,
		31.559170, 41.528614, 54.470093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665037, 40.872421, 54.989422>,  <31.068081, 41.031479, 54.428997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665037, 40.872421, 54.989422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617319, 41.262150, 54.913036>,  <31.588688, 41.495987, 54.867207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617319, 41.262150, 54.913036>,  <31.665037, 40.872421, 54.989422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617319, 41.262150, 54.913036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076805, 0.182705, 0.980163,
		0.989884, 0.131594, 0.053037,
		-0.119294, 0.974321, -0.190964,
		31.581532, 41.554447, 54.855747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163231, 41.120583, 55.483822>,  <31.665037, 40.872421, 54.989422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163231, 41.120583, 55.483822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910183, 41.409760, 55.372715>,  <31.758354, 41.583263, 55.306049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910183, 41.409760, 55.372715>,  <32.163231, 41.120583, 55.483822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910183, 41.409760, 55.372715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116523, 0.265731, 0.956979,
		0.765649, 0.637768, -0.083867,
		-0.632617, 0.722938, -0.277772,
		31.720398, 41.626640, 55.289383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340900, 41.735691, 55.923553>,  <32.163231, 41.120583, 55.483822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340900, 41.735691, 55.923553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991379, 41.840916, 55.759956>,  <31.781668, 41.904053, 55.661800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991379, 41.840916, 55.759956>,  <32.340900, 41.735691, 55.923553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991379, 41.840916, 55.759956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290082, 0.393043, 0.872565,
		0.390290, 0.881088, -0.267131,
		-0.873800, 0.263063, -0.408988,
		31.729239, 41.919834, 55.637260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133663, 42.438496, 56.237160>,  <32.340900, 41.735691, 55.923553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133663, 42.438496, 56.237160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790983, 42.280102, 56.104935>,  <31.585377, 42.185066, 56.025600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790983, 42.280102, 56.104935>,  <32.133663, 42.438496, 56.237160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790983, 42.280102, 56.104935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440706, 0.228881, 0.867981,
		-0.268046, 0.889276, -0.370593,
		-0.856697, -0.395981, -0.330559,
		31.533974, 42.161308, 56.005768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596212, 42.914825, 56.576370>,  <32.133663, 42.438496, 56.237160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596212, 42.914825, 56.576370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409729, 42.581989, 56.456184>,  <31.297840, 42.382286, 56.384071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409729, 42.581989, 56.456184>,  <31.596212, 42.914825, 56.576370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409729, 42.581989, 56.456184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629915, 0.073748, 0.773155,
		-0.621175, 0.549718, -0.558527,
		-0.466207, -0.832089, -0.300465,
		31.269867, 42.332363, 56.366043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857544, 43.079494, 56.371536>,  <31.596212, 42.914825, 56.576370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857544, 43.079494, 56.371536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859346, 42.689518, 56.460503>,  <30.860428, 42.455532, 56.513882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859346, 42.689518, 56.460503>,  <30.857544, 43.079494, 56.371536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859346, 42.689518, 56.460503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843551, 0.115742, 0.524429,
		-0.537030, -0.189984, -0.821891,
		0.004506, -0.974941, 0.222418,
		30.860699, 42.397038, 56.527229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106152, 42.930222, 56.318768>,  <30.857544, 43.079494, 56.371536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106152, 42.930222, 56.318768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284559, 42.624493, 56.505047>,  <30.391603, 42.441055, 56.616814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284559, 42.624493, 56.505047>,  <30.106152, 42.930222, 56.318768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284559, 42.624493, 56.505047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812893, -0.128207, 0.568127,
		-0.374530, -0.631955, -0.678499,
		0.446019, -0.764327, 0.465694,
		30.418365, 42.395195, 56.644756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521854, 42.493595, 56.484650>,  <30.106152, 42.930222, 56.318768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521854, 42.493595, 56.484650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822628, 42.377312, 56.721321>,  <30.003092, 42.307541, 56.863323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822628, 42.377312, 56.721321>,  <29.521854, 42.493595, 56.484650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822628, 42.377312, 56.721321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637656, -0.092959, 0.764692,
		-0.167302, -0.952284, -0.255273,
		0.751934, -0.290711, 0.591677,
		30.048208, 42.290100, 56.898827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244663, 41.923412, 56.824894>,  <29.521854, 42.493595, 56.484650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244663, 41.923412, 56.824894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560078, 42.024479, 57.049171>,  <29.749327, 42.085117, 57.183739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560078, 42.024479, 57.049171>,  <29.244663, 41.923412, 56.824894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560078, 42.024479, 57.049171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527297, -0.191434, 0.827835,
		0.316501, -0.948427, -0.017722,
		0.788534, 0.252666, 0.560691,
		29.796638, 42.100277, 57.217381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413631, 41.286884, 57.352966>,  <29.244663, 41.923412, 56.824894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413631, 41.286884, 57.352966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538145, 41.645454, 57.479160>,  <29.612854, 41.860596, 57.554878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538145, 41.645454, 57.479160>,  <29.413631, 41.286884, 57.352966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538145, 41.645454, 57.479160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224946, -0.253040, 0.940941,
		0.923310, -0.363869, 0.122878,
		0.311287, 0.896421, 0.315485,
		29.631531, 41.914379, 57.573807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611061, 41.095829, 57.998524>,  <29.413631, 41.286884, 57.352966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611061, 41.095829, 57.998524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546410, 41.490204, 58.015514>,  <29.507618, 41.726830, 58.025711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546410, 41.490204, 58.015514>,  <29.611061, 41.095829, 57.998524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546410, 41.490204, 58.015514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330720, -0.094672, 0.938968,
		0.929785, 0.137717, 0.341371,
		-0.161630, 0.985937, 0.042479,
		29.497921, 41.785984, 58.028259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009270, 41.348106, 58.567856>,  <29.611061, 41.095829, 57.998524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009270, 41.348106, 58.567856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701185, 41.589157, 58.484318>,  <29.516335, 41.733788, 58.434196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701185, 41.589157, 58.484318>,  <30.009270, 41.348106, 58.567856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701185, 41.589157, 58.484318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391501, -0.188222, 0.900722,
		0.503490, 0.775509, 0.380899,
		-0.770211, 0.602627, -0.208845,
		29.470121, 41.769943, 58.421665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641945, 41.554066, 58.907055>,  <30.009270, 41.348106, 58.567856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641945, 41.554066, 58.907055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515854, 41.335812, 59.217644>,  <30.440199, 41.204861, 59.403999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515854, 41.335812, 59.217644>,  <30.641945, 41.554066, 58.907055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515854, 41.335812, 59.217644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836045, -0.546825, -0.044846,
		0.449065, 0.635031, 0.628551,
		-0.315229, -0.545636, 0.776474,
		30.421286, 41.172119, 59.450584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252483, 41.404190, 59.389442>,  <30.641945, 41.554066, 58.907055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252483, 41.404190, 59.389442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966171, 41.137112, 59.471256>,  <30.794384, 40.976864, 59.520344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966171, 41.137112, 59.471256>,  <31.252483, 41.404190, 59.389442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966171, 41.137112, 59.471256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661983, -0.742029, -0.105696,
		0.222347, 0.059746, 0.973135,
		-0.715779, -0.667700, 0.204539,
		30.751438, 40.936802, 59.532619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450228, 40.956364, 59.955696>,  <31.252483, 41.404190, 59.389442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450228, 40.956364, 59.955696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177919, 40.752110, 59.745628>,  <31.014534, 40.629559, 59.619587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177919, 40.752110, 59.745628>,  <31.450228, 40.956364, 59.955696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177919, 40.752110, 59.745628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602913, -0.797785, -0.005845,
		-0.415986, -0.320610, 0.850979,
		-0.680772, -0.510635, -0.525168,
		30.973688, 40.598919, 59.588078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426504, 40.291393, 60.340958>,  <31.450228, 40.956364, 59.955696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426504, 40.291393, 60.340958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300138, 40.248051, 59.963924>,  <31.224319, 40.222046, 59.737705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300138, 40.248051, 59.963924>,  <31.426504, 40.291393, 60.340958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300138, 40.248051, 59.963924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675965, -0.722834, -0.143464,
		-0.665785, -0.682474, 0.301596,
		-0.315914, -0.108353, -0.942580,
		31.205364, 40.215546, 59.681149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331236, 39.544758, 60.388565>,  <31.426504, 40.291393, 60.340958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331236, 39.544758, 60.388565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321472, 39.663166, 60.006618>,  <31.315613, 39.734211, 59.777451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321472, 39.663166, 60.006618>,  <31.331236, 39.544758, 60.388565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321472, 39.663166, 60.006618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703164, -0.673859, -0.226879,
		-0.710609, -0.676968, -0.191701,
		-0.024411, 0.296019, -0.954870,
		31.314150, 39.751972, 59.720158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359581, 38.910599, 59.992096>,  <31.331236, 39.544758, 60.388565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359581, 38.910599, 59.992096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457640, 39.179985, 59.713142>,  <31.516476, 39.341618, 59.545769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457640, 39.179985, 59.713142>,  <31.359581, 38.910599, 59.992096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457640, 39.179985, 59.713142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767225, -0.574521, -0.285116,
		-0.592679, -0.465157, -0.657542,
		0.245148, 0.673465, -0.697386,
		31.531185, 39.382023, 59.503925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302589, 38.618046, 59.413033>,  <31.359581, 38.910599, 59.992096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302589, 38.618046, 59.413033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564543, 38.913197, 59.347717>,  <31.721714, 39.090286, 59.308529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564543, 38.913197, 59.347717>,  <31.302589, 38.618046, 59.413033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564543, 38.913197, 59.347717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713016, -0.674885, -0.190101,
		-0.250474, 0.008066, -0.968090,
		0.654883, 0.737879, -0.163290,
		31.761007, 39.134560, 59.298729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549629, 38.695694, 59.081661>,  <31.302589, 38.618046, 59.413033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549629, 38.695694, 59.081661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271852, 38.407875, 59.080952>,  <30.105186, 38.235184, 59.080524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271852, 38.407875, 59.080952>,  <30.549629, 38.695694, 59.081661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271852, 38.407875, 59.080952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534953, 0.514635, 0.670057,
		-0.481226, 0.466263, -0.742308,
		-0.694440, -0.719548, -0.001773,
		30.063520, 38.192009, 59.080421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997488, 39.055592, 59.157482>,  <30.549629, 38.695694, 59.081661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997488, 39.055592, 59.157482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894674, 38.688778, 59.279457>,  <29.832987, 38.468689, 59.352642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894674, 38.688778, 59.279457>,  <29.997488, 39.055592, 59.157482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894674, 38.688778, 59.279457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402134, 0.388415, 0.829109,
		-0.878762, 0.090482, -0.468606,
		-0.257033, -0.917031, 0.304938,
		29.817564, 38.413670, 59.370937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187576, 38.943943, 59.351154>,  <29.997488, 39.055592, 59.157482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187576, 38.943943, 59.351154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359230, 38.654514, 59.567410>,  <29.462223, 38.480858, 59.697163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359230, 38.654514, 59.567410>,  <29.187576, 38.943943, 59.351154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359230, 38.654514, 59.567410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519879, 0.291604, 0.802928,
		-0.738626, -0.625631, -0.251031,
		0.429135, -0.723570, 0.540639,
		29.487970, 38.437443, 59.729603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623501, 38.676987, 59.640160>,  <29.187576, 38.943943, 59.351154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623501, 38.676987, 59.640160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919085, 38.548546, 59.877083>,  <29.096436, 38.471481, 60.019238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919085, 38.548546, 59.877083>,  <28.623501, 38.676987, 59.640160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919085, 38.548546, 59.877083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519723, 0.287774, 0.804409,
		-0.428749, -0.902263, 0.045769,
		0.738960, -0.321102, 0.592310,
		29.140772, 38.452213, 60.054775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207420, 38.356419, 60.146286>,  <28.623501, 38.676987, 59.640160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207420, 38.356419, 60.146286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573017, 38.416683, 60.296974>,  <28.792376, 38.452843, 60.387386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573017, 38.416683, 60.296974>,  <28.207420, 38.356419, 60.146286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573017, 38.416683, 60.296974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402054, 0.211656, 0.890817,
		0.054476, -0.965662, 0.254025,
		0.913994, 0.150660, 0.376718,
		28.847216, 38.461884, 60.409988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329622, 37.963020, 60.723743>,  <28.207420, 38.356419, 60.146286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329622, 37.963020, 60.723743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604254, 38.240463, 60.810932>,  <28.769033, 38.406929, 60.863247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604254, 38.240463, 60.810932>,  <28.329622, 37.963020, 60.723743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604254, 38.240463, 60.810932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474497, 0.200312, 0.857163,
		0.550875, -0.691938, 0.466646,
		0.686578, 0.693612, 0.217975,
		28.810226, 38.448547, 60.876324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442799, 37.879372, 61.398190>,  <28.329622, 37.963020, 60.723743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442799, 37.879372, 61.398190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577986, 38.251888, 61.343815>,  <28.659098, 38.475399, 61.311188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577986, 38.251888, 61.343815>,  <28.442799, 37.879372, 61.398190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577986, 38.251888, 61.343815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460214, 0.289522, 0.839274,
		0.820964, -0.221084, 0.526440,
		0.337966, 0.931289, -0.135941,
		28.679375, 38.531277, 61.303032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615633, 38.165131, 62.085266>,  <28.442799, 37.879372, 61.398190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615633, 38.165131, 62.085266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612953, 38.499519, 61.865776>,  <28.611345, 38.700153, 61.734081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612953, 38.499519, 61.865776>,  <28.615633, 38.165131, 62.085266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612953, 38.499519, 61.865776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424932, 0.494349, 0.758322,
		0.905200, 0.238251, 0.351922,
		-0.006699, 0.835976, -0.548725,
		28.610943, 38.750313, 61.701157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654081, 38.592567, 62.577393>,  <28.615633, 38.165131, 62.085266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654081, 38.592567, 62.577393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539488, 38.813061, 62.263943>,  <28.470732, 38.945358, 62.075874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539488, 38.813061, 62.263943>,  <28.654081, 38.592567, 62.577393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539488, 38.813061, 62.263943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686809, 0.452101, 0.569120,
		0.667996, 0.701245, 0.249073,
		-0.286486, 0.551236, -0.783623,
		28.453543, 38.978432, 62.028854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.255398, 34.020878, 48.915581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258167, 34.246124, 48.585041>,  <37.259827, 34.381271, 48.386719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258167, 34.246124, 48.585041>,  <37.255398, 34.020878, 48.915581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258167, 34.246124, 48.585041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677673, 0.610310, 0.410221,
		0.735331, 0.557154, 0.385834,
		0.006922, 0.563117, -0.826348,
		37.260242, 34.415058, 48.337135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344204, 34.717327, 49.158524>,  <37.255398, 34.020878, 48.915581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344204, 34.717327, 49.158524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.180363, 34.730404, 48.793854>,  <37.082058, 34.738251, 48.575050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.180363, 34.730404, 48.793854>,  <37.344204, 34.717327, 49.158524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180363, 34.730404, 48.793854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761506, 0.538032, 0.361430,
		0.502327, 0.842291, -0.195484,
		-0.409605, 0.032694, -0.911677,
		37.057480, 34.740211, 48.520351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894257, 35.350529, 49.204624>,  <37.344204, 34.717327, 49.158524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894257, 35.350529, 49.204624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.783760, 35.178349, 48.860905>,  <36.717461, 35.075039, 48.654671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.783760, 35.178349, 48.860905>,  <36.894257, 35.350529, 49.204624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783760, 35.178349, 48.860905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869309, 0.493207, 0.032398,
		0.409868, 0.755947, -0.510443,
		-0.276245, -0.430454, -0.859301,
		36.700886, 35.049213, 48.603115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569660, 35.891766, 48.756439>,  <36.894257, 35.350529, 49.204624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569660, 35.891766, 48.756439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.430859, 35.527332, 48.667431>,  <36.347580, 35.308674, 48.614025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.430859, 35.527332, 48.667431>,  <36.569660, 35.891766, 48.756439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430859, 35.527332, 48.667431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930503, 0.304779, 0.203158,
		-0.117275, 0.277551, -0.953526,
		-0.347002, -0.911084, -0.222519,
		36.326759, 35.254005, 48.600674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047390, 36.009510, 48.305790>,  <36.569660, 35.891766, 48.756439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047390, 36.009510, 48.305790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.944508, 35.646935, 48.439785>,  <35.882778, 35.429390, 48.520184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.944508, 35.646935, 48.439785>,  <36.047390, 36.009510, 48.305790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944508, 35.646935, 48.439785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958299, 0.283919, 0.032454,
		-0.124527, -0.312673, -0.941663,
		-0.257208, -0.906436, 0.334990,
		35.867344, 35.375004, 48.540283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436459, 35.844154, 47.957890>,  <36.047390, 36.009510, 48.305790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436459, 35.844154, 47.957890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.416950, 35.581482, 48.258926>,  <35.405243, 35.423878, 48.439548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.416950, 35.581482, 48.258926>,  <35.436459, 35.844154, 47.957890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416950, 35.581482, 48.258926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996505, 0.083150, 0.007972,
		-0.067813, -0.749572, -0.658440,
		-0.048774, -0.656679, 0.752592,
		35.402317, 35.384480, 48.484703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844845, 35.586491, 47.789799>,  <35.436459, 35.844154, 47.957890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844845, 35.586491, 47.789799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.910378, 35.426071, 48.150314>,  <34.949696, 35.329819, 48.366623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.910378, 35.426071, 48.150314>,  <34.844845, 35.586491, 47.789799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910378, 35.426071, 48.150314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986164, -0.090029, 0.139195,
		0.025318, -0.911621, -0.410251,
		0.163827, -0.401050, 0.901287,
		34.959526, 35.305756, 48.420700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333256, 35.136879, 47.891792>,  <34.844845, 35.586491, 47.789799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333256, 35.136879, 47.891792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.463444, 35.167339, 48.268784>,  <34.541557, 35.185616, 48.494980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.463444, 35.167339, 48.268784>,  <34.333256, 35.136879, 47.891792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463444, 35.167339, 48.268784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945532, 0.019931, 0.324917,
		0.005955, -0.996898, 0.078480,
		0.325473, 0.076140, 0.942480,
		34.561085, 35.190186, 48.551529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008301, 34.661850, 48.358967>,  <34.333256, 35.136879, 47.891792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008301, 34.661850, 48.358967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.110279, 34.920952, 48.646137>,  <34.171467, 35.076412, 48.818439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.110279, 34.920952, 48.646137>,  <34.008301, 34.661850, 48.358967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110279, 34.920952, 48.646137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912028, -0.085597, 0.401097,
		0.321264, -0.757027, 0.568946,
		0.254942, 0.647752, 0.717929,
		34.186760, 35.115276, 48.861515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759304, 34.407536, 48.957043>,  <34.008301, 34.661850, 48.358967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759304, 34.407536, 48.957043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.816284, 34.787983, 49.066647>,  <33.850471, 35.016251, 49.132408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.816284, 34.787983, 49.066647>,  <33.759304, 34.407536, 48.957043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816284, 34.787983, 49.066647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939688, 0.042985, 0.339321,
		0.310956, -0.305820, 0.899878,
		0.142453, 0.951119, 0.274009,
		33.859020, 35.073318, 49.148849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592224, 34.491016, 49.631935>,  <33.759304, 34.407536, 48.957043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592224, 34.491016, 49.631935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.523842, 34.846027, 49.460793>,  <33.482811, 35.059036, 49.358109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.523842, 34.846027, 49.460793>,  <33.592224, 34.491016, 49.631935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523842, 34.846027, 49.460793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883583, 0.054036, 0.465145,
		0.435951, 0.457566, 0.774971,
		-0.170958, 0.887532, -0.427855,
		33.472553, 35.112286, 49.332436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427250, 34.951229, 50.201969>,  <33.592224, 34.491016, 49.631935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427250, 34.951229, 50.201969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.269844, 35.101208, 49.866215>,  <33.175400, 35.191196, 49.664764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.269844, 35.101208, 49.866215>,  <33.427250, 34.951229, 50.201969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269844, 35.101208, 49.866215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874003, 0.130539, 0.468057,
		0.285068, 0.917810, 0.276335,
		-0.393515, 0.374946, -0.839382,
		33.151791, 35.213692, 49.614399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885094, 35.433994, 50.389393>,  <33.427250, 34.951229, 50.201969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885094, 35.433994, 50.389393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.762936, 35.417355, 50.008865>,  <32.689640, 35.407372, 49.780548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.762936, 35.417355, 50.008865>,  <32.885094, 35.433994, 50.389393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762936, 35.417355, 50.008865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932636, 0.214678, 0.290006,
		0.192163, 0.975798, -0.104359,
		-0.305391, -0.041601, -0.951318,
		32.671318, 35.404873, 49.723469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527950, 36.158405, 50.288284>,  <32.885094, 35.433994, 50.389393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527950, 36.158405, 50.288284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.369186, 35.837696, 50.109570>,  <32.273930, 35.645271, 50.002342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.369186, 35.837696, 50.109570>,  <32.527950, 36.158405, 50.288284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369186, 35.837696, 50.109570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850494, 0.138230, 0.507497,
		-0.345141, 0.581417, -0.736772,
		-0.396911, -0.801777, -0.446783,
		32.250114, 35.597164, 49.975536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879889, 36.332867, 50.045395>,  <32.527950, 36.158405, 50.288284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879889, 36.332867, 50.045395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.880983, 35.936680, 50.100471>,  <31.881641, 35.698967, 50.133518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.880983, 35.936680, 50.100471>,  <31.879889, 36.332867, 50.045395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880983, 35.936680, 50.100471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936827, 0.045622, 0.346804,
		-0.349781, -0.129946, -0.927775,
		0.002738, -0.990471, 0.137694,
		31.881805, 35.639538, 50.141781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294294, 36.134815, 49.738926>,  <31.879889, 36.332867, 50.045395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294294, 36.134815, 49.738926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.375206, 35.815235, 49.965469>,  <31.423754, 35.623486, 50.101395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.375206, 35.815235, 49.965469>,  <31.294294, 36.134815, 49.738926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375206, 35.815235, 49.965469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931460, 0.021636, 0.363199,
		-0.302431, -0.601009, -0.739813,
		0.202279, -0.798949, 0.566360,
		31.435890, 35.575550, 50.135376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716793, 35.624397, 49.603573>,  <31.294294, 36.134815, 49.738926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716793, 35.624397, 49.603573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.890226, 35.540512, 49.954121>,  <30.994287, 35.490181, 50.164448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.890226, 35.540512, 49.954121>,  <30.716793, 35.624397, 49.603573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890226, 35.540512, 49.954121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900244, -0.143511, 0.411054,
		0.039564, -0.967173, -0.251019,
		0.433584, -0.209715, 0.876370,
		31.020302, 35.477596, 50.217033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312691, 35.041725, 49.848618>,  <30.716793, 35.624397, 49.603573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312691, 35.041725, 49.848618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.523193, 35.176754, 50.160797>,  <30.649494, 35.257771, 50.348106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.523193, 35.176754, 50.160797>,  <30.312691, 35.041725, 49.848618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523193, 35.176754, 50.160797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787522, -0.152695, 0.597071,
		0.320725, -0.928832, 0.185489,
		0.526256, 0.337572, 0.780449,
		30.681070, 35.278027, 50.394932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200346, 34.548931, 50.364651>,  <30.312691, 35.041725, 49.848618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200346, 34.548931, 50.364651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.289885, 34.894218, 50.545647>,  <30.343607, 35.101391, 50.654243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.289885, 34.894218, 50.545647>,  <30.200346, 34.548931, 50.364651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289885, 34.894218, 50.545647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850020, -0.054226, 0.523951,
		0.476822, -0.501907, 0.721616,
		0.223844, 0.863220, 0.452488,
		30.357038, 35.153183, 50.681393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089043, 34.417744, 51.061718>,  <30.200346, 34.548931, 50.364651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089043, 34.417744, 51.061718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.113405, 34.816982, 51.065735>,  <30.128023, 35.056526, 51.068146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.113405, 34.816982, 51.065735>,  <30.089043, 34.417744, 51.061718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113405, 34.816982, 51.065735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786605, 0.041802, 0.616040,
		0.614446, -0.045417, 0.787651,
		0.060904, 0.998093, 0.010040,
		30.131676, 35.116409, 51.068748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099865, 34.525063, 51.724419>,  <30.089043, 34.417744, 51.061718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099865, 34.525063, 51.724419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.993824, 34.857368, 51.528645>,  <29.930199, 35.056751, 51.411179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.993824, 34.857368, 51.528645>,  <30.099865, 34.525063, 51.724419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993824, 34.857368, 51.528645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842112, 0.047755, 0.537185,
		0.469647, 0.554572, 0.686936,
		-0.265103, 0.830764, -0.489440,
		29.914293, 35.106598, 51.381813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667448, 34.877743, 52.270000>,  <30.099865, 34.525063, 51.724419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667448, 34.877743, 52.270000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.557793, 35.039139, 51.920818>,  <29.491999, 35.135975, 51.711311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.557793, 35.039139, 51.920818>,  <29.667448, 34.877743, 52.270000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557793, 35.039139, 51.920818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915965, 0.167022, 0.364846,
		0.293013, 0.899611, 0.323794,
		-0.274139, 0.403489, -0.872952,
		29.475552, 35.160187, 51.658932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209869, 35.489326, 52.384285>,  <29.667448, 34.877743, 52.270000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209869, 35.489326, 52.384285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.129065, 35.364300, 52.013020>,  <29.080582, 35.289284, 51.790260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.129065, 35.364300, 52.013020>,  <29.209869, 35.489326, 52.384285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129065, 35.364300, 52.013020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978735, 0.098908, 0.179709,
		0.035631, 0.944731, -0.325903,
		-0.202011, -0.312570, -0.928166,
		29.068460, 35.270531, 51.734570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577936, 35.824287, 52.206589>,  <29.209869, 35.489326, 52.384285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577936, 35.824287, 52.206589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.610258, 35.563740, 51.904808>,  <28.629652, 35.407413, 51.723740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.610258, 35.563740, 51.904808>,  <28.577936, 35.824287, 52.206589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610258, 35.563740, 51.904808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967253, -0.233964, 0.098397,
		-0.240607, 0.721793, -0.648940,
		0.080806, -0.651364, -0.754449,
		28.634501, 35.368332, 51.678474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220118, 36.026707, 51.591949>,  <28.577936, 35.824287, 52.206589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220118, 36.026707, 51.591949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.232426, 35.626904, 51.594311>,  <28.239811, 35.387020, 51.595726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.232426, 35.626904, 51.594311>,  <28.220118, 36.026707, 51.591949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232426, 35.626904, 51.594311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999522, -0.030750, 0.003179,
		-0.002996, -0.005995, -0.999978,
		0.030768, -0.999510, 0.005900,
		28.241655, 35.327049, 51.596081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611830, 35.785908, 51.245064>,  <28.220118, 36.026707, 51.591949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611830, 35.785908, 51.245064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.760147, 35.460217, 51.423748>,  <27.849138, 35.264801, 51.530956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.760147, 35.460217, 51.423748>,  <27.611830, 35.785908, 51.245064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760147, 35.460217, 51.423748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927687, -0.347348, 0.136919,
		0.043681, -0.465175, -0.884140,
		0.370796, -0.814225, 0.446709,
		27.871386, 35.215950, 51.557762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391989, 35.166691, 50.858002>,  <27.611830, 35.785908, 51.245064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391989, 35.166691, 50.858002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.490719, 35.058334, 51.230171>,  <27.549957, 34.993320, 51.453472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.490719, 35.058334, 51.230171>,  <27.391989, 35.166691, 50.858002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490719, 35.058334, 51.230171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919250, -0.369311, 0.136337,
		0.306685, -0.888947, -0.340172,
		0.246826, -0.270891, 0.930427,
		27.564766, 34.977066, 51.509300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940685, 34.560642, 50.911293>,  <27.391989, 35.166691, 50.858002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940685, 34.560642, 50.911293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.051538, 34.653637, 51.284206>,  <27.118050, 34.709435, 51.507954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.051538, 34.653637, 51.284206>,  <26.940685, 34.560642, 50.911293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051538, 34.653637, 51.284206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932015, -0.170802, 0.319647,
		0.233551, -0.957483, 0.169351,
		0.277131, 0.232491, 0.932280,
		27.134678, 34.723385, 51.563889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759611, 33.968235, 51.341225>,  <26.940685, 34.560642, 50.911293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759611, 33.968235, 51.341225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.776962, 34.295105, 51.571125>,  <26.787373, 34.491226, 51.709064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.776962, 34.295105, 51.571125>,  <26.759611, 33.968235, 51.341225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776962, 34.295105, 51.571125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965339, -0.113918, 0.234826,
		0.257369, -0.565014, 0.783913,
		0.043378, 0.817179, 0.574749,
		26.789976, 34.540260, 51.743549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351225, 33.855236, 51.860470>,  <26.759611, 33.968235, 51.341225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351225, 33.855236, 51.860470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.376999, 34.253685, 51.884418>,  <26.392464, 34.492756, 51.898788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.376999, 34.253685, 51.884418>,  <26.351225, 33.855236, 51.860470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376999, 34.253685, 51.884418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960458, 0.045620, 0.274663,
		0.270867, -0.075199, 0.959675,
		0.064435, 0.996125, 0.059869,
		26.396330, 34.552521, 51.902378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977142, 34.001469, 52.424282>,  <26.351225, 33.855236, 51.860470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977142, 34.001469, 52.424282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.017365, 34.345840, 52.224808>,  <26.041498, 34.552464, 52.105122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.017365, 34.345840, 52.224808>,  <25.977142, 34.001469, 52.424282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017365, 34.345840, 52.224808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931629, 0.257409, 0.256532,
		0.349222, 0.438797, 0.827950,
		0.100556, 0.860928, -0.498689,
		26.047531, 34.604118, 52.075203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705168, 34.519043, 52.940044>,  <25.977142, 34.001469, 52.424282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705168, 34.519043, 52.940044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.713125, 34.695683, 52.581249>,  <25.717899, 34.801666, 52.365971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.713125, 34.695683, 52.581249>,  <25.705168, 34.519043, 52.940044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713125, 34.695683, 52.581249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821707, 0.518318, 0.236947,
		0.569562, 0.732351, 0.373177,
		0.019895, 0.441598, -0.896992,
		25.719093, 34.828163, 52.312153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494713, 35.259884, 53.136211>,  <25.705168, 34.519043, 52.940044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.494713, 35.259884, 53.136211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.446571, 35.167934, 52.749912>,  <25.417686, 35.112766, 52.518131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.446571, 35.167934, 52.749912>,  <25.494713, 35.259884, 53.136211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.446571, 35.167934, 52.749912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861647, 0.507332, -0.013376,
		0.493030, 0.830526, -0.259130,
		-0.120356, -0.229874, -0.965750,
		25.410465, 35.098972, 52.460186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.360796, 35.871838, 52.835789>,  <25.494713, 35.259884, 53.136211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.360796, 35.871838, 52.835789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.219957, 35.605907, 52.572266>,  <25.135454, 35.446350, 52.414150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.219957, 35.605907, 52.572266>,  <25.360796, 35.871838, 52.835789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.219957, 35.605907, 52.572266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843025, 0.531058, -0.085362,
		0.406618, 0.525339, -0.747450,
		-0.352095, -0.664828, -0.658812,
		25.114328, 35.406460, 52.374622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166975, 36.259857, 52.253735>,  <25.360796, 35.871838, 52.835789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166975, 36.259857, 52.253735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.958248, 35.919655, 52.280094>,  <24.833012, 35.715534, 52.295910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.958248, 35.919655, 52.280094>,  <25.166975, 36.259857, 52.253735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.958248, 35.919655, 52.280094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844571, 0.504211, -0.180194,
		0.120030, -0.149684, -0.981421,
		-0.521816, -0.850509, 0.065899,
		24.801702, 35.664501, 52.299862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<36.506485, 31.505871, 50.520779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.226475, 31.663300, 50.282429>,  <36.058468, 31.757757, 50.139420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.226475, 31.663300, 50.282429>,  <36.506485, 31.505871, 50.520779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226475, 31.663300, 50.282429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014450, 0.842055, 0.539198,
		0.713975, 0.368841, -0.595144,
		-0.700022, 0.393574, -0.595876,
		36.016468, 31.781372, 50.103664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656349, 32.193253, 50.447872>,  <36.506485, 31.505871, 50.520779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656349, 32.193253, 50.447872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.267570, 32.157772, 50.360737>,  <36.034306, 32.136482, 50.308456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.267570, 32.157772, 50.360737>,  <36.656349, 32.193253, 50.447872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267570, 32.157772, 50.360737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203485, 0.781631, 0.589615,
		0.117972, 0.617401, -0.777752,
		-0.971945, -0.088702, -0.217842,
		35.975986, 32.131161, 50.295383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430412, 32.863285, 50.251217>,  <36.656349, 32.193253, 50.447872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430412, 32.863285, 50.251217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.115120, 32.650558, 50.375065>,  <35.925945, 32.522923, 50.449371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.115120, 32.650558, 50.375065>,  <36.430412, 32.863285, 50.251217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115120, 32.650558, 50.375065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292425, 0.766396, 0.571948,
		-0.541461, 0.360288, -0.759614,
		-0.788231, -0.531817, 0.309616,
		35.878651, 32.491013, 50.467949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941483, 33.386162, 50.512981>,  <36.430412, 32.863285, 50.251217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941483, 33.386162, 50.512981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824402, 33.038303, 50.671997>,  <35.754154, 32.829586, 50.767406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824402, 33.038303, 50.671997>,  <35.941483, 33.386162, 50.512981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824402, 33.038303, 50.671997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406875, 0.489502, 0.771259,
		-0.865320, 0.064000, -0.497117,
		-0.292700, -0.869650, 0.397536,
		35.736591, 32.777409, 50.791256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304790, 33.500061, 50.799728>,  <35.941483, 33.386162, 50.512981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304790, 33.500061, 50.799728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.425549, 33.161201, 50.974632>,  <35.498001, 32.957886, 51.079575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.425549, 33.161201, 50.974632>,  <35.304790, 33.500061, 50.799728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425549, 33.161201, 50.974632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172407, 0.402585, 0.899000,
		-0.937624, -0.346786, -0.024518,
		0.301890, -0.847151, 0.437262,
		35.516117, 32.907055, 51.105812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713562, 33.335278, 51.149582>,  <35.304790, 33.500061, 50.799728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713562, 33.335278, 51.149582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.015701, 33.122280, 51.302372>,  <35.196983, 32.994480, 51.394047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.015701, 33.122280, 51.302372>,  <34.713562, 33.335278, 51.149582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015701, 33.122280, 51.302372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210953, 0.354270, 0.911039,
		-0.620447, -0.768725, 0.155263,
		0.755343, -0.532498, 0.381971,
		35.242306, 32.962532, 51.416962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462696, 32.943138, 51.760990>,  <34.713562, 33.335278, 51.149582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462696, 32.943138, 51.760990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858395, 32.964329, 51.815510>,  <35.095814, 32.977043, 51.848221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.858395, 32.964329, 51.815510>,  <34.462696, 32.943138, 51.760990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858395, 32.964329, 51.815510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145768, 0.282779, 0.948044,
		0.011677, -0.957721, 0.287461,
		0.989250, 0.052973, 0.136303,
		35.155170, 32.980221, 51.856400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591145, 32.508736, 52.298470>,  <34.462696, 32.943138, 51.760990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591145, 32.508736, 52.298470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891819, 32.772533, 52.296291>,  <35.072224, 32.930813, 52.294983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891819, 32.772533, 52.296291>,  <34.591145, 32.508736, 52.298470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891819, 32.772533, 52.296291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243419, 0.285102, 0.927073,
		0.612953, -0.695545, 0.374842,
		0.751689, 0.659496, -0.005445,
		35.117325, 32.970383, 52.294659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866886, 32.492123, 53.000732>,  <34.591145, 32.508736, 52.298470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866886, 32.492123, 53.000732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050606, 32.822563, 52.870132>,  <35.160835, 33.020828, 52.791775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050606, 32.822563, 52.870132>,  <34.866886, 32.492123, 53.000732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050606, 32.822563, 52.870132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197130, 0.453185, 0.869346,
		0.866134, -0.334924, 0.370996,
		0.459294, 0.826105, -0.326496,
		35.188393, 33.070396, 52.772182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301430, 32.662643, 53.595463>,  <34.866886, 32.492123, 53.000732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301430, 32.662643, 53.595463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.232800, 32.976521, 53.357193>,  <35.191620, 33.164845, 53.214233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.232800, 32.976521, 53.357193>,  <35.301430, 32.662643, 53.595463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232800, 32.976521, 53.357193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338280, 0.520949, 0.783695,
		0.925272, 0.335967, 0.176062,
		-0.171577, 0.784690, -0.595671,
		35.181328, 33.211929, 53.178493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725250, 33.220207, 53.906776>,  <35.301430, 32.662643, 53.595463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725250, 33.220207, 53.906776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438225, 33.386345, 53.683140>,  <35.266010, 33.486027, 53.548958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438225, 33.386345, 53.683140>,  <35.725250, 33.220207, 53.906776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438225, 33.386345, 53.683140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323897, 0.511650, 0.795805,
		0.616595, 0.752131, -0.232614,
		-0.717566, 0.415346, -0.559094,
		35.222954, 33.510948, 53.515411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792507, 33.955334, 54.050610>,  <35.725250, 33.220207, 53.906776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792507, 33.955334, 54.050610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.430790, 33.854820, 53.912563>,  <35.213760, 33.794510, 53.829735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.430790, 33.854820, 53.912563>,  <35.792507, 33.955334, 54.050610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430790, 33.854820, 53.912563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424838, 0.450209, 0.785382,
		-0.041983, 0.856835, -0.513878,
		-0.904295, -0.251288, -0.345115,
		35.159500, 33.779434, 53.809029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917454, 34.732178, 54.043365>,  <35.792507, 33.955334, 54.050610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917454, 34.732178, 54.043365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.309036, 34.753498, 54.122169>,  <36.543983, 34.766289, 54.169453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.309036, 34.753498, 54.122169>,  <35.917454, 34.732178, 54.043365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309036, 34.753498, 54.122169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203944, -0.218847, -0.954208,
		-0.007746, 0.974302, -0.225111,
		0.978952, 0.053301, 0.197008,
		36.602722, 34.769489, 54.181271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217159, 35.164299, 53.416637>,  <35.917454, 34.732178, 54.043365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217159, 35.164299, 53.416637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.553818, 35.030319, 53.586075>,  <36.755814, 34.949932, 53.687737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.553818, 35.030319, 53.586075>,  <36.217159, 35.164299, 53.416637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553818, 35.030319, 53.586075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418640, -0.090802, -0.903602,
		0.341124, 0.937851, 0.063799,
		0.841650, -0.334949, 0.423596,
		36.806313, 34.929836, 53.713154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757786, 35.429863, 52.994324>,  <36.217159, 35.164299, 53.416637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757786, 35.429863, 52.994324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.909985, 35.124153, 53.202595>,  <37.001305, 34.940727, 53.327557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.909985, 35.124153, 53.202595>,  <36.757786, 35.429863, 52.994324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909985, 35.124153, 53.202595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668210, -0.162013, -0.726118,
		0.639310, 0.624209, 0.449050,
		0.380497, -0.764275, 0.520679,
		37.024132, 34.894871, 53.358799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403103, 35.556412, 53.178936>,  <36.757786, 35.429863, 52.994324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403103, 35.556412, 53.178936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364559, 35.158470, 53.166458>,  <37.341431, 34.919704, 53.158970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364559, 35.158470, 53.166458>,  <37.403103, 35.556412, 53.178936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364559, 35.158470, 53.166458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778989, -0.055868, -0.624544,
		0.619589, -0.084485, 0.780366,
		-0.096362, -0.994857, -0.031197,
		37.335651, 34.860012, 53.157101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095314, 35.347748, 53.217342>,  <37.403103, 35.556412, 53.178936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095314, 35.347748, 53.217342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.861523, 35.060856, 53.065571>,  <37.721249, 34.888721, 52.974506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.861523, 35.060856, 53.065571>,  <38.095314, 35.347748, 53.217342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861523, 35.060856, 53.065571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699952, -0.209142, -0.682881,
		0.410427, -0.664713, 0.624265,
		-0.584480, -0.717228, -0.379429,
		37.686180, 34.845688, 52.951740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583767, 34.823853, 53.075439>,  <38.095314, 35.347748, 53.217342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583767, 34.823853, 53.075439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.259968, 34.752769, 52.851608>,  <38.065689, 34.710121, 52.717308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.259968, 34.752769, 52.851608>,  <38.583767, 34.823853, 53.075439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259968, 34.752769, 52.851608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584243, -0.338029, -0.737833,
		-0.058035, -0.924206, 0.377459,
		-0.809502, -0.177708, -0.559578,
		38.017117, 34.699459, 52.683735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751587, 34.255394, 52.772938>,  <38.583767, 34.823853, 53.075439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751587, 34.255394, 52.772938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.473064, 34.421810, 52.538990>,  <38.305950, 34.521660, 52.398621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.473064, 34.421810, 52.538990>,  <38.751587, 34.255394, 52.772938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473064, 34.421810, 52.538990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474810, -0.344089, -0.810036,
		-0.538252, -0.841734, 0.042052,
		-0.696305, 0.416037, -0.584870,
		38.264172, 34.546623, 52.363529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658764, 33.722572, 52.296993>,  <38.751587, 34.255394, 52.772938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658764, 33.722572, 52.296993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.497845, 34.048847, 52.130711>,  <38.401295, 34.244614, 52.030941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.497845, 34.048847, 52.130711>,  <38.658764, 33.722572, 52.296993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497845, 34.048847, 52.130711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354832, -0.279657, -0.892125,
		-0.843949, -0.506406, -0.176927,
		-0.402298, 0.815687, -0.415705,
		38.377155, 34.293552, 52.006001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321430, 33.557091, 51.629257>,  <38.658764, 33.722572, 52.296993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321430, 33.557091, 51.629257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371098, 33.953007, 51.601273>,  <38.400898, 34.190556, 51.584480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371098, 33.953007, 51.601273>,  <38.321430, 33.557091, 51.629257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371098, 33.953007, 51.601273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417443, -0.116074, -0.901259,
		-0.900180, 0.082701, -0.427594,
		0.124167, 0.989792, -0.069965,
		38.408348, 34.249943, 51.580284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206696, 33.708805, 50.923344>,  <38.321430, 33.557091, 51.629257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206696, 33.708805, 50.923344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423122, 34.007072, 51.078892>,  <38.552979, 34.186035, 51.172218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423122, 34.007072, 51.078892>,  <38.206696, 33.708805, 50.923344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423122, 34.007072, 51.078892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486159, 0.099966, -0.868134,
		-0.686215, 0.658774, -0.308426,
		0.541072, 0.745670, 0.388867,
		38.585445, 34.230774, 51.195553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226063, 34.162918, 50.321949>,  <38.206696, 33.708805, 50.923344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226063, 34.162918, 50.321949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.526825, 34.262852, 50.565990>,  <38.707283, 34.322811, 50.712414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.526825, 34.262852, 50.565990>,  <38.226063, 34.162918, 50.321949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526825, 34.262852, 50.565990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575977, 0.201324, -0.792288,
		-0.320771, 0.947127, 0.007476,
		0.751902, 0.249837, 0.610102,
		38.752396, 34.337803, 50.749020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505196, 34.827370, 50.190586>,  <38.226063, 34.162918, 50.321949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505196, 34.827370, 50.190586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.807575, 34.620106, 50.350613>,  <38.989002, 34.495747, 50.446629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.807575, 34.620106, 50.350613>,  <38.505196, 34.827370, 50.190586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807575, 34.620106, 50.350613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584587, 0.259303, -0.768778,
		0.294611, 0.815031, 0.498929,
		0.755951, -0.518158, 0.400063,
		39.034359, 34.464657, 50.470631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052013, 35.225655, 50.056973>,  <38.505196, 34.827370, 50.190586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052013, 35.225655, 50.056973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.224434, 34.876770, 50.149448>,  <39.327885, 34.667439, 50.204933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.224434, 34.876770, 50.149448>,  <39.052013, 35.225655, 50.056973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224434, 34.876770, 50.149448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707059, 0.167314, -0.687076,
		0.560592, 0.459629, 0.688823,
		0.431050, -0.872208, 0.231190,
		39.353748, 34.615108, 50.218803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219837, 35.693264, 49.480572>,  <39.052013, 35.225655, 50.056973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219837, 35.693264, 49.480572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.249859, 36.069359, 49.347717>,  <39.267872, 36.295017, 49.268005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.249859, 36.069359, 49.347717>,  <39.219837, 35.693264, 49.480572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249859, 36.069359, 49.347717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512256, 0.322121, 0.796135,
		0.855547, 0.110383, 0.505822,
		0.075056, 0.940242, -0.332134,
		39.272377, 36.351433, 49.248077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993404, 35.925087, 48.677769>,  <39.219837, 35.693264, 49.480572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993404, 35.925087, 48.677769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.243816, 36.226280, 48.596676>,  <39.394066, 36.406994, 48.548019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.243816, 36.226280, 48.596676>,  <38.993404, 35.925087, 48.677769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243816, 36.226280, 48.596676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428853, -0.549589, -0.716964,
		-0.651281, 0.361900, -0.666979,
		0.626034, 0.752981, -0.202735,
		39.431625, 36.452175, 48.535854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913467, 36.175682, 48.041416>,  <38.993404, 35.925087, 48.677769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913467, 36.175682, 48.041416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.294312, 36.255909, 48.133724>,  <39.522820, 36.304043, 48.189110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.294312, 36.255909, 48.133724>,  <38.913467, 36.175682, 48.041416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294312, 36.255909, 48.133724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304204, -0.545717, -0.780802,
		-0.030666, 0.813613, -0.580597,
		0.952113, 0.200565, 0.230769,
		39.579945, 36.316078, 48.202953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112160, 36.987083, 48.343449>,  <38.913467, 36.175682, 48.041416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112160, 36.987083, 48.343449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.934116, 37.145493, 48.022190>,  <38.827290, 37.240540, 47.829433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.934116, 37.145493, 48.022190>,  <39.112160, 36.987083, 48.343449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934116, 37.145493, 48.022190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850417, 0.093980, 0.517647,
		0.280481, 0.913417, 0.294956,
		-0.445108, 0.396026, -0.803145,
		38.800583, 37.264301, 47.781246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742161, 37.467876, 48.654411>,  <39.112160, 36.987083, 48.343449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742161, 37.467876, 48.654411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.577984, 37.385647, 48.299046>,  <38.479477, 37.336311, 48.085827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.577984, 37.385647, 48.299046>,  <38.742161, 37.467876, 48.654411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577984, 37.385647, 48.299046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908514, 0.175920, 0.379018,
		0.078375, 0.962701, -0.258967,
		-0.410439, -0.205570, -0.888415,
		38.454853, 37.323975, 48.032520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403954, 38.113987, 48.342323>,  <38.742161, 37.467876, 48.654411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403954, 38.113987, 48.342323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.198166, 37.775188, 48.288776>,  <38.074696, 37.571911, 48.256649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.198166, 37.775188, 48.288776>,  <38.403954, 38.113987, 48.342323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198166, 37.775188, 48.288776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815335, 0.434808, 0.382324,
		-0.265622, 0.305838, -0.914280,
		-0.514465, -0.846998, -0.133866,
		38.043827, 37.521088, 48.248615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796154, 38.432320, 47.993706>,  <38.403954, 38.113987, 48.342323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796154, 38.432320, 47.993706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754745, 38.079166, 48.176926>,  <37.729900, 37.867275, 48.286858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754745, 38.079166, 48.176926>,  <37.796154, 38.432320, 47.993706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754745, 38.079166, 48.176926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752973, 0.370456, 0.543870,
		-0.649858, -0.288596, -0.703133,
		-0.103521, -0.882878, 0.458049,
		37.723690, 37.814304, 48.314339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092251, 38.253483, 47.984177>,  <37.796154, 38.432320, 47.993706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092251, 38.253483, 47.984177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246460, 38.023907, 48.273163>,  <37.338985, 37.886162, 48.446556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246460, 38.023907, 48.273163>,  <37.092251, 38.253483, 47.984177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246460, 38.023907, 48.273163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784340, 0.208553, 0.584223,
		-0.485983, -0.791894, -0.369763,
		0.385528, -0.573942, 0.722467,
		37.362118, 37.851723, 48.489902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545391, 38.033813, 48.368835>,  <37.092251, 38.253483, 47.984177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545391, 38.033813, 48.368835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.820709, 37.920597, 48.636009>,  <36.985901, 37.852669, 48.796314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.820709, 37.920597, 48.636009>,  <36.545391, 38.033813, 48.368835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820709, 37.920597, 48.636009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612034, 0.267712, 0.744140,
		-0.389434, -0.920988, 0.011037,
		0.688298, -0.283039, 0.667933,
		37.027199, 37.835686, 48.836388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213955, 37.698063, 48.877003>,  <36.545391, 38.033813, 48.368835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213955, 37.698063, 48.877003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537704, 37.849983, 49.056187>,  <36.731953, 37.941135, 49.163696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537704, 37.849983, 49.056187>,  <36.213955, 37.698063, 48.877003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537704, 37.849983, 49.056187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555786, 0.248851, 0.793205,
		0.189786, -0.890968, 0.412502,
		0.809372, 0.379803, 0.447959,
		36.780518, 37.963924, 49.190575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045380, 37.564831, 49.540207>,  <36.213955, 37.698063, 48.877003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045380, 37.564831, 49.540207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340164, 37.835129, 49.546566>,  <36.517036, 37.997307, 49.550381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340164, 37.835129, 49.546566>,  <36.045380, 37.564831, 49.540207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340164, 37.835129, 49.546566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331903, 0.341277, 0.879415,
		0.588835, -0.653373, 0.475791,
		0.736963, 0.675747, 0.015900,
		36.561253, 38.037853, 49.551334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401951, 37.629677, 50.229153>,  <36.045380, 37.564831, 49.540207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401951, 37.629677, 50.229153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464096, 37.985638, 50.057598>,  <36.501385, 38.199215, 49.954666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464096, 37.985638, 50.057598>,  <36.401951, 37.629677, 50.229153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464096, 37.985638, 50.057598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296416, 0.456148, 0.839087,
		0.942338, -0.003234, 0.334648,
		0.155362, 0.889898, -0.428887,
		36.510704, 38.252605, 49.928932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516819, 38.053993, 50.743690>,  <36.401951, 37.629677, 50.229153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516819, 38.053993, 50.743690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464928, 38.334888, 50.463684>,  <36.433792, 38.503426, 50.295681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464928, 38.334888, 50.463684>,  <36.516819, 38.053993, 50.743690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464928, 38.334888, 50.463684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266952, 0.655182, 0.706734,
		0.954938, 0.278556, 0.102467,
		-0.129730, 0.702241, -0.700019,
		36.426010, 38.545563, 50.253677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727699, 38.738247, 51.092789>,  <36.516819, 38.053993, 50.743690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727699, 38.738247, 51.092789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.515629, 38.785286, 50.756912>,  <36.388386, 38.813507, 50.555386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.515629, 38.785286, 50.756912>,  <36.727699, 38.738247, 51.092789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515629, 38.785286, 50.756912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499782, 0.756659, 0.421528,
		0.684929, 0.643148, -0.342394,
		-0.530180, 0.117594, -0.839691,
		36.356575, 38.820564, 50.505005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830399, 39.477829, 50.878529>,  <36.727699, 38.738247, 51.092789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830399, 39.477829, 50.878529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483467, 39.319717, 50.757534>,  <36.275307, 39.224850, 50.684937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483467, 39.319717, 50.757534>,  <36.830399, 39.477829, 50.878529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483467, 39.319717, 50.757534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458710, 0.870678, 0.177496,
		0.193205, 0.292699, -0.936482,
		-0.867328, -0.395280, -0.302483,
		36.223270, 39.201134, 50.666790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500412, 40.039921, 50.601612>,  <36.830399, 39.477829, 50.878529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500412, 40.039921, 50.601612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218464, 39.769382, 50.687138>,  <36.049297, 39.607059, 50.738453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.218464, 39.769382, 50.687138>,  <36.500412, 40.039921, 50.601612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218464, 39.769382, 50.687138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618691, 0.733632, 0.281079,
		-0.346965, 0.065842, -0.935564,
		-0.704867, -0.676350, 0.213809,
		36.007004, 39.566479, 50.751282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923809, 40.462383, 50.566799>,  <36.500412, 40.039921, 50.601612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923809, 40.462383, 50.566799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.743839, 40.143250, 50.727310>,  <35.635857, 39.951771, 50.823616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.743839, 40.143250, 50.727310>,  <35.923809, 40.462383, 50.566799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743839, 40.143250, 50.727310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764149, 0.576481, 0.289388,
		-0.462212, -0.176430, -0.869041,
		-0.449929, -0.797836, 0.401276,
		35.608860, 39.903900, 50.847694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258900, 40.517624, 50.399723>,  <35.923809, 40.462383, 50.566799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258900, 40.517624, 50.399723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.263988, 40.279568, 50.721130>,  <35.267040, 40.136734, 50.913975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.263988, 40.279568, 50.721130>,  <35.258900, 40.517624, 50.399723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263988, 40.279568, 50.721130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782647, 0.494216, 0.378436,
		-0.622336, -0.633687, -0.459499,
		0.012718, -0.595139, 0.803522,
		35.267803, 40.101025, 50.962189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601551, 40.155888, 50.478531>,  <35.258900, 40.517624, 50.399723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601551, 40.155888, 50.478531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.758865, 40.141380, 50.846012>,  <34.853252, 40.132675, 51.066502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.758865, 40.141380, 50.846012>,  <34.601551, 40.155888, 50.478531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758865, 40.141380, 50.846012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895416, 0.211706, 0.391676,
		-0.208700, -0.976660, 0.050787,
		0.393286, -0.036268, 0.918700,
		34.876850, 40.130501, 51.121624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996605, 39.937294, 50.882244>,  <34.601551, 40.155888, 50.478531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996605, 39.937294, 50.882244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.239819, 40.054977, 51.177200>,  <34.385746, 40.125587, 51.354172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.239819, 40.054977, 51.177200>,  <33.996605, 39.937294, 50.882244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239819, 40.054977, 51.177200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789833, 0.130133, 0.599357,
		0.080374, -0.946842, 0.311497,
		0.608033, 0.294204, 0.737388,
		34.422230, 40.143238, 51.398415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657635, 39.634144, 51.494137>,  <33.996605, 39.937294, 50.882244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657635, 39.634144, 51.494137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.921978, 39.909569, 51.613564>,  <34.080585, 40.074825, 51.685219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.921978, 39.909569, 51.613564>,  <33.657635, 39.634144, 51.494137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921978, 39.909569, 51.613564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678039, 0.377220, 0.630847,
		0.321752, -0.619344, 0.716163,
		0.660862, 0.688563, 0.298568,
		34.120235, 40.116138, 51.703133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826633, 39.567566, 52.279892>,  <33.657635, 39.634144, 51.494137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826633, 39.567566, 52.279892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.875336, 39.937798, 52.136517>,  <33.904556, 40.159935, 52.050491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.875336, 39.937798, 52.136517>,  <33.826633, 39.567566, 52.279892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875336, 39.937798, 52.136517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537978, 0.365019, 0.759830,
		0.834120, 0.100324, 0.542383,
		0.121751, 0.925579, -0.358441,
		33.911861, 40.215469, 52.028984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075729, 39.993099, 52.851292>,  <33.826633, 39.567566, 52.279892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075729, 39.993099, 52.851292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.923378, 40.255749, 52.590900>,  <33.831966, 40.413338, 52.434666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.923378, 40.255749, 52.590900>,  <34.075729, 39.993099, 52.851292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923378, 40.255749, 52.590900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485101, 0.457461, 0.745255,
		0.787151, 0.599644, 0.144292,
		-0.380880, 0.656625, -0.650979,
		33.809113, 40.452736, 52.395607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074261, 40.465134, 53.269894>,  <34.075729, 39.993099, 52.851292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074261, 40.465134, 53.269894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.846779, 40.614361, 52.976665>,  <33.710289, 40.703896, 52.800728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.846779, 40.614361, 52.976665>,  <34.074261, 40.465134, 53.269894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846779, 40.614361, 52.976665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622508, 0.387327, 0.680045,
		0.537641, 0.843089, 0.011962,
		-0.568705, 0.373066, -0.733073,
		33.676167, 40.726280, 52.756744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060131, 41.249134, 53.528889>,  <34.074261, 40.465134, 53.269894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060131, 41.249134, 53.528889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.775200, 41.160992, 53.262344>,  <33.604240, 41.108105, 53.102417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.775200, 41.160992, 53.262344>,  <34.060131, 41.249134, 53.528889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775200, 41.160992, 53.262344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661577, 0.527794, 0.532682,
		0.234319, 0.820291, -0.521745,
		-0.712328, -0.220357, -0.666357,
		33.561501, 41.094883, 53.062439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682789, 41.856426, 53.388138>,  <34.060131, 41.249134, 53.528889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682789, 41.856426, 53.388138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.423016, 41.580463, 53.260223>,  <33.267151, 41.414886, 53.183475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.423016, 41.580463, 53.260223>,  <33.682789, 41.856426, 53.388138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423016, 41.580463, 53.260223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744316, 0.490662, 0.453039,
		-0.155650, 0.532239, -0.832162,
		-0.649436, -0.689907, -0.319783,
		33.228184, 41.373489, 53.164288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115906, 42.266140, 53.231480>,  <33.682789, 41.856426, 53.388138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115906, 42.266140, 53.231480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.955254, 41.900101, 53.245876>,  <32.858864, 41.680477, 53.254513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.955254, 41.900101, 53.245876>,  <33.115906, 42.266140, 53.231480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955254, 41.900101, 53.245876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832113, 0.381056, 0.402970,
		-0.382470, 0.131898, -0.914505,
		-0.401629, -0.915095, 0.035988,
		32.834766, 41.625572, 53.256672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485550, 42.214684, 52.976978>,  <33.115906, 42.266140, 53.231480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485550, 42.214684, 52.976978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.475666, 41.898613, 53.221931>,  <32.469734, 41.708973, 53.368904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.475666, 41.898613, 53.221931>,  <32.485550, 42.214684, 52.976978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475666, 41.898613, 53.221931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833015, 0.354948, 0.424381,
		-0.552699, -0.499638, -0.666998,
		-0.024713, -0.790174, 0.612384,
		32.468250, 41.661560, 53.405647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730764, 42.001644, 53.056633>,  <32.485550, 42.214684, 52.976978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730764, 42.001644, 53.056633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.922609, 41.848747, 53.372574>,  <32.037716, 41.757008, 53.562138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.922609, 41.848747, 53.372574>,  <31.730764, 42.001644, 53.056633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922609, 41.848747, 53.372574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761168, 0.266614, 0.591220,
		-0.436575, -0.884764, -0.163080,
		0.479610, -0.382243, 0.789851,
		32.066494, 41.734074, 53.609528>
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
