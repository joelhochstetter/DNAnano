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
	<24.188805, 35.064804, 35.744663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.055593, 34.931133, 35.391979>,  <23.975666, 34.850933, 35.180367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.055593, 34.931133, 35.391979>,  <24.188805, 35.064804, 35.744663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.055593, 34.931133, 35.391979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204884, 0.938397, -0.278270,
		0.920387, 0.087976, -0.380983,
		-0.333032, -0.334173, -0.881713,
		23.955685, 34.830883, 35.127464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.495501, 35.487907, 35.159695>,  <24.188805, 35.064804, 35.744663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.495501, 35.487907, 35.159695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.154316, 35.337166, 35.015232>,  <23.949606, 35.246719, 34.928555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.154316, 35.337166, 35.015232>,  <24.495501, 35.487907, 35.159695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.154316, 35.337166, 35.015232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223489, 0.888956, -0.399763,
		0.471707, -0.260267, -0.842468,
		-0.852962, -0.376853, -0.361160,
		23.898428, 35.224110, 34.906883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067287, 35.197811, 34.794582>,  <24.495501, 35.487907, 35.159695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.067287, 35.197811, 34.794582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279968, 35.535690, 34.769989>,  <25.407576, 35.738419, 34.755234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279968, 35.535690, 34.769989>,  <25.067287, 35.197811, 34.794582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.279968, 35.535690, 34.769989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474045, -0.236660, 0.848100,
		0.701838, -0.480080, -0.526257,
		0.531700, 0.844698, -0.061483,
		25.439478, 35.789101, 34.751545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780151, 35.031380, 34.688007>,  <25.067287, 35.197811, 34.794582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.780151, 35.031380, 34.688007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724318, 35.367496, 34.897549>,  <25.690817, 35.569168, 35.023273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724318, 35.367496, 34.897549>,  <25.780151, 35.031380, 34.688007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724318, 35.367496, 34.897549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638462, -0.328003, 0.696262,
		0.756890, 0.431649, -0.490711,
		-0.139586, 0.840294, 0.523853,
		25.682442, 35.619583, 35.054703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373268, 35.275452, 34.901981>,  <25.780151, 35.031380, 34.688007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373268, 35.275452, 34.901981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143463, 35.452076, 35.177650>,  <26.005581, 35.558048, 35.343052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143463, 35.452076, 35.177650>,  <26.373268, 35.275452, 34.901981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143463, 35.452076, 35.177650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579179, -0.375644, 0.723494,
		0.578349, 0.814812, -0.039929,
		-0.574512, 0.441558, 0.689175,
		25.971109, 35.584545, 35.384403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.748669, 35.744743, 35.315170>,  <26.373268, 35.275452, 34.901981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.748669, 35.744743, 35.315170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437824, 35.590572, 35.514183>,  <26.251318, 35.498070, 35.633591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437824, 35.590572, 35.514183>,  <26.748669, 35.744743, 35.315170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.437824, 35.590572, 35.514183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627150, -0.407998, 0.663491,
		-0.052737, 0.827636, 0.558783,
		-0.777111, -0.385431, 0.497535,
		26.204691, 35.474941, 35.663445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984499, 35.683403, 35.938953>,  <26.748669, 35.744743, 35.315170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984499, 35.683403, 35.938953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666273, 35.442127, 35.961731>,  <26.475338, 35.297363, 35.975399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666273, 35.442127, 35.961731>,  <26.984499, 35.683403, 35.938953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666273, 35.442127, 35.961731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447582, -0.521775, 0.726237,
		-0.408344, 0.603256, 0.685081,
		-0.795566, -0.603185, 0.056942,
		26.427603, 35.261173, 35.978813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623640, 35.611755, 36.567795>,  <26.984499, 35.683403, 35.938953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623640, 35.611755, 36.567795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583023, 35.261581, 36.378777>,  <26.558653, 35.051476, 36.265366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583023, 35.261581, 36.378777>,  <26.623640, 35.611755, 36.567795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583023, 35.261581, 36.378777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218195, -0.483029, 0.847982,
		-0.970608, -0.017000, 0.240064,
		-0.101543, -0.875439, -0.472541,
		26.552561, 34.998951, 36.237015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.185137, 35.188637, 36.990730>,  <26.623640, 35.611755, 36.567795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.185137, 35.188637, 36.990730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376053, 34.926331, 36.756752>,  <26.490602, 34.768948, 36.616364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376053, 34.926331, 36.756752>,  <26.185137, 35.188637, 36.990730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376053, 34.926331, 36.756752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170739, -0.583772, 0.793762,
		-0.862000, -0.478727, -0.166663,
		0.477289, -0.655767, -0.584949,
		26.519239, 34.729599, 36.581268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982527, 34.388058, 37.075703>,  <26.185137, 35.188637, 36.990730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982527, 34.388058, 37.075703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362587, 34.412109, 36.953327>,  <26.590624, 34.426540, 36.879902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362587, 34.412109, 36.953327>,  <25.982527, 34.388058, 37.075703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362587, 34.412109, 36.953327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295219, -0.489151, 0.820717,
		-0.100298, -0.870124, -0.482519,
		0.950151, 0.060133, -0.305938,
		26.647633, 34.430149, 36.861546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263437, 33.678062, 36.889637>,  <25.982527, 34.388058, 37.075703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263437, 33.678062, 36.889637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512005, 33.960281, 37.025898>,  <26.661146, 34.129612, 37.107655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512005, 33.960281, 37.025898>,  <26.263437, 33.678062, 36.889637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512005, 33.960281, 37.025898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101678, -0.503741, 0.857850,
		0.776852, -0.498449, -0.384773,
		0.621420, 0.705545, 0.340650,
		26.698431, 34.171944, 37.128094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824821, 33.359905, 37.240715>,  <26.263437, 33.678062, 36.889637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824821, 33.359905, 37.240715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811546, 33.727760, 37.397259>,  <26.803581, 33.948475, 37.491184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811546, 33.727760, 37.397259>,  <26.824821, 33.359905, 37.240715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811546, 33.727760, 37.397259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230686, -0.373949, 0.898302,
		0.972462, 0.120091, -0.199739,
		-0.033186, 0.919641, 0.391355,
		26.801590, 34.003654, 37.514664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552580, 33.794312, 37.529819>,  <26.824821, 33.359905, 37.240715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552580, 33.794312, 37.529819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202974, 33.879929, 37.704308>,  <26.993212, 33.931297, 37.809002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202974, 33.879929, 37.704308>,  <27.552580, 33.794312, 37.529819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202974, 33.879929, 37.704308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411858, -0.150028, 0.898813,
		0.257828, 0.965235, 0.042971,
		-0.874012, 0.214041, 0.436221,
		26.940771, 33.944141, 37.835175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553465, 34.452934, 38.022579>,  <27.552580, 33.794312, 37.529819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553465, 34.452934, 38.022579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288195, 34.163918, 38.100685>,  <27.129032, 33.990505, 38.147549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288195, 34.163918, 38.100685>,  <27.553465, 34.452934, 38.022579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288195, 34.163918, 38.100685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461762, -0.189653, 0.866492,
		-0.589045, 0.664803, 0.459416,
		-0.663176, -0.722543, 0.195267,
		27.089243, 33.947155, 38.159264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125057, 35.091076, 37.876186>,  <27.553465, 34.452934, 38.022579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125057, 35.091076, 37.876186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108643, 34.711838, 37.750050>,  <27.098793, 34.484295, 37.674370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108643, 34.711838, 37.750050>,  <27.125057, 35.091076, 37.876186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108643, 34.711838, 37.750050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066216, 0.312329, -0.947663,
		0.996961, -0.059769, 0.049962,
		-0.041036, -0.948092, -0.315338,
		27.096333, 34.427410, 37.655449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750193, 34.851456, 37.450409>,  <27.125057, 35.091076, 37.876186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750193, 34.851456, 37.450409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417395, 34.654610, 37.347958>,  <27.217716, 34.536503, 37.286488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417395, 34.654610, 37.347958>,  <27.750193, 34.851456, 37.450409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417395, 34.654610, 37.347958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127882, 0.279129, -0.951700,
		0.539844, -0.824564, -0.169300,
		-0.831994, -0.492119, -0.256133,
		27.167797, 34.506973, 37.271118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876692, 34.484715, 36.865280>,  <27.750193, 34.851456, 37.450409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876692, 34.484715, 36.865280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514446, 34.315933, 36.882313>,  <27.297098, 34.214664, 36.892532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514446, 34.315933, 36.882313>,  <27.876692, 34.484715, 36.865280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514446, 34.315933, 36.882313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226713, 0.396811, -0.889462,
		0.358409, -0.815168, -0.455021,
		-0.905618, -0.421950, 0.042588,
		27.242762, 34.189346, 36.895088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759506, 34.365845, 36.215900>,  <27.876692, 34.484715, 36.865280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759506, 34.365845, 36.215900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412760, 34.390125, 36.413834>,  <27.204712, 34.404694, 36.532593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412760, 34.390125, 36.413834>,  <27.759506, 34.365845, 36.215900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412760, 34.390125, 36.413834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450344, 0.330433, -0.829460,
		-0.213858, -0.941876, -0.259104,
		-0.866865, 0.060701, 0.494834,
		27.152700, 34.408337, 36.562283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260281, 34.034882, 35.778355>,  <27.759506, 34.365845, 36.215900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260281, 34.034882, 35.778355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029137, 34.243561, 36.029404>,  <26.890450, 34.368767, 36.180035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029137, 34.243561, 36.029404>,  <27.260281, 34.034882, 35.778355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029137, 34.243561, 36.029404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537221, 0.335770, -0.773726,
		-0.614386, -0.784278, 0.086238,
		-0.577860, 0.521695, 0.627623,
		26.855778, 34.400070, 36.217690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616419, 33.950554, 35.552353>,  <27.260281, 34.034882, 35.778355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616419, 33.950554, 35.552353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593445, 34.286285, 35.768585>,  <26.579660, 34.487724, 35.898323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593445, 34.286285, 35.768585>,  <26.616419, 33.950554, 35.552353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593445, 34.286285, 35.768585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601972, 0.402854, -0.689448,
		-0.796449, -0.365014, 0.482114,
		-0.057437, 0.839329, 0.540581,
		26.576214, 34.538086, 35.930759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970896, 33.954395, 35.860546>,  <26.616419, 33.950554, 35.552353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.970896, 33.954395, 35.860546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127359, 34.316147, 35.792324>,  <26.221237, 34.533199, 35.751389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127359, 34.316147, 35.792324>,  <25.970896, 33.954395, 35.860546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.127359, 34.316147, 35.792324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708185, 0.177424, -0.683370,
		-0.587765, 0.388095, 0.709869,
		0.391161, 0.904380, -0.170560,
		26.244707, 34.587460, 35.741158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364872, 34.393948, 35.922153>,  <25.970896, 33.954395, 35.860546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.364872, 34.393948, 35.922153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675045, 34.646473, 35.917206>,  <25.861149, 34.797989, 35.914238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675045, 34.646473, 35.917206>,  <25.364872, 34.393948, 35.922153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675045, 34.646473, 35.917206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617438, 0.753998, -0.224182,
		-0.132200, 0.181477, 0.974469,
		0.775431, 0.631311, -0.012373,
		25.907675, 34.835865, 35.913494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.163359, 35.011078, 36.281166>,  <25.364872, 34.393948, 35.922153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.163359, 35.011078, 36.281166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.475159, 35.133797, 36.062714>,  <25.662239, 35.207428, 35.931644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.475159, 35.133797, 36.062714>,  <25.163359, 35.011078, 36.281166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.475159, 35.133797, 36.062714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508459, 0.819102, -0.265597,
		0.365852, 0.484717, 0.794482,
		0.779501, 0.306792, -0.546128,
		25.709009, 35.225834, 35.898876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101307, 35.672173, 36.376083>,  <25.163359, 35.011078, 36.281166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101307, 35.672173, 36.376083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466566, 35.713741, 36.218418>,  <25.685722, 35.738682, 36.123821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466566, 35.713741, 36.218418>,  <25.101307, 35.672173, 36.376083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.466566, 35.713741, 36.218418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407346, 0.268624, -0.872875,
		0.015174, 0.957623, 0.287624,
		0.913148, 0.103917, -0.394160,
		25.740511, 35.744915, 36.100170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309120, 36.416504, 36.105274>,  <25.101307, 35.672173, 36.376083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309120, 36.416504, 36.105274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504375, 36.150124, 35.879627>,  <25.621529, 35.990295, 35.744240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504375, 36.150124, 35.879627>,  <25.309120, 36.416504, 36.105274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504375, 36.150124, 35.879627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389570, 0.412140, -0.823636,
		0.780998, 0.621811, -0.058254,
		0.488137, -0.665952, -0.564119,
		25.650816, 35.950336, 35.710392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679850, 36.787853, 35.588249>,  <25.309120, 36.416504, 36.105274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679850, 36.787853, 35.588249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648796, 36.428936, 35.414429>,  <25.630165, 36.213585, 35.310135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648796, 36.428936, 35.414429>,  <25.679850, 36.787853, 35.588249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648796, 36.428936, 35.414429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177942, 0.441339, -0.879521,
		0.980974, 0.009046, -0.193928,
		-0.077632, -0.897295, -0.434552,
		25.625505, 36.159748, 35.284061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298115, 36.744576, 35.073265>,  <25.679850, 36.787853, 35.588249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298115, 36.744576, 35.073265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007490, 36.497757, 34.952362>,  <25.833115, 36.349667, 34.879822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007490, 36.497757, 34.952362>,  <26.298115, 36.744576, 35.073265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007490, 36.497757, 34.952362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021250, 0.419507, -0.907503,
		0.686773, -0.665780, -0.291685,
		-0.726561, -0.617051, -0.302254,
		25.789522, 36.312641, 34.861687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600142, 36.585518, 34.422855>,  <26.298115, 36.744576, 35.073265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600142, 36.585518, 34.422855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204432, 36.533680, 34.449806>,  <25.967005, 36.502579, 34.465977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204432, 36.533680, 34.449806>,  <26.600142, 36.585518, 34.422855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204432, 36.533680, 34.449806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100752, 0.271499, -0.957151,
		0.105744, -0.953674, -0.281644,
		-0.989276, -0.129589, 0.067375,
		25.907648, 36.494804, 34.470020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414255, 36.117798, 33.904598>,  <26.600142, 36.585518, 34.422855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414255, 36.117798, 33.904598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116814, 36.370949, 33.990868>,  <25.938349, 36.522839, 34.042629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116814, 36.370949, 33.990868>,  <26.414255, 36.117798, 33.904598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.116814, 36.370949, 33.990868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110674, 0.201611, -0.973193,
		-0.659395, -0.747541, -0.079876,
		-0.743606, 0.632878, 0.215674,
		25.893732, 36.560814, 34.055569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633322, 35.855911, 33.702076>,  <26.414255, 36.117798, 33.904598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633322, 35.855911, 33.702076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768837, 36.232037, 33.689213>,  <25.850145, 36.457710, 33.681496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768837, 36.232037, 33.689213>,  <25.633322, 35.855911, 33.702076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768837, 36.232037, 33.689213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182583, 0.032180, -0.982664,
		-0.922977, 0.338784, 0.182588,
		0.338787, 0.940314, -0.032155,
		25.870474, 36.514130, 33.679565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.144159, 36.209385, 33.360680>,  <25.633322, 35.855911, 33.702076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.144159, 36.209385, 33.360680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504677, 36.376938, 33.316479>,  <25.720987, 36.477470, 33.289959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504677, 36.376938, 33.316479>,  <25.144159, 36.209385, 33.360680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504677, 36.376938, 33.316479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094566, -0.058695, -0.993787,
		-0.422765, 0.906142, -0.013289,
		0.901292, 0.418881, -0.110505,
		25.775064, 36.502602, 33.283329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139893, 36.691959, 32.707790>,  <25.144159, 36.209385, 33.360680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.139893, 36.691959, 32.707790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509686, 36.563522, 32.789989>,  <25.731562, 36.486462, 32.839310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509686, 36.563522, 32.789989>,  <25.139893, 36.691959, 32.707790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509686, 36.563522, 32.789989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159468, -0.163896, -0.973503,
		0.346265, 0.932758, -0.100315,
		0.924484, -0.321093, 0.205497,
		25.787031, 36.467194, 32.851639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.440832, 36.903984, 32.154106>,  <25.139893, 36.691959, 32.707790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.440832, 36.903984, 32.154106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691124, 36.614239, 32.269871>,  <25.841299, 36.440392, 32.339329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691124, 36.614239, 32.269871>,  <25.440832, 36.903984, 32.154106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691124, 36.614239, 32.269871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279994, -0.137726, -0.950071,
		0.728055, 0.675523, 0.116638,
		0.625731, -0.724362, 0.289414,
		25.878843, 36.396931, 32.356693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153578, 37.014362, 31.739323>,  <25.440832, 36.903984, 32.154106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153578, 37.014362, 31.739323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.108320, 36.641033, 31.875616>,  <26.081165, 36.417034, 31.957392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.108320, 36.641033, 31.875616>,  <26.153578, 37.014362, 31.739323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108320, 36.641033, 31.875616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094356, -0.351478, -0.931429,
		0.989088, -0.073235, 0.127832,
		-0.113143, -0.933327, 0.340732,
		26.074377, 36.361034, 31.977837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629850, 36.684986, 31.399019>,  <26.153578, 37.014362, 31.739323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629850, 36.684986, 31.399019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345272, 36.424587, 31.504887>,  <26.174524, 36.268349, 31.568407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345272, 36.424587, 31.504887>,  <26.629850, 36.684986, 31.399019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.345272, 36.424587, 31.504887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168862, -0.523955, -0.834839,
		0.682152, -0.549250, 0.482694,
		-0.711445, -0.650996, 0.264669,
		26.131838, 36.229290, 31.584288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088902, 36.195816, 31.616461>,  <26.629850, 36.684986, 31.399019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088902, 36.195816, 31.616461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797737, 35.965343, 31.765141>,  <26.623039, 35.827061, 31.854349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797737, 35.965343, 31.765141>,  <27.088902, 36.195816, 31.616461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797737, 35.965343, 31.765141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289005, -0.233776, -0.928345,
		0.621791, -0.783175, 0.003648,
		-0.727910, -0.576182, 0.371701,
		26.579365, 35.792488, 31.876650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.937822, 35.699074, 31.094452>,  <27.088902, 36.195816, 31.616461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.937822, 35.699074, 31.094452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634928, 35.672874, 31.354391>,  <26.453190, 35.657154, 31.510355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634928, 35.672874, 31.354391>,  <26.937822, 35.699074, 31.094452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634928, 35.672874, 31.354391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441821, -0.681402, -0.583511,
		0.481024, -0.728973, 0.487047,
		-0.757238, -0.065495, 0.649847,
		26.407757, 35.653225, 31.549345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877787, 35.018486, 31.266483>,  <26.937822, 35.699074, 31.094452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877787, 35.018486, 31.266483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515778, 35.174629, 31.334072>,  <26.298573, 35.268314, 31.374626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515778, 35.174629, 31.334072>,  <26.877787, 35.018486, 31.266483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515778, 35.174629, 31.334072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399105, -0.641870, -0.654765,
		-0.147135, -0.660016, 0.736702,
		-0.905023, 0.390360, 0.168975,
		26.244270, 35.291737, 31.384764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372236, 34.404617, 31.232050>,  <26.877787, 35.018486, 31.266483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372236, 34.404617, 31.232050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151175, 34.736237, 31.197977>,  <26.018538, 34.935207, 31.177532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151175, 34.736237, 31.197977>,  <26.372236, 34.404617, 31.232050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151175, 34.736237, 31.197977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666131, -0.500840, -0.552656,
		-0.500840, -0.248685, 0.829045,
		0.552656, -0.829045, 0.085184,
		25.985378, 34.984951, 31.172422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717255, 34.206802, 31.072533>,  <26.372236, 34.404617, 31.232050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717255, 34.206802, 31.072533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779675, 34.566673, 30.909445>,  <25.817125, 34.782597, 30.811592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779675, 34.566673, 30.909445>,  <25.717255, 34.206802, 31.072533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779675, 34.566673, 30.909445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478745, -0.292160, -0.827916,
		-0.863974, 0.324388, 0.385124,
		0.156048, 0.899675, -0.407718,
		25.826488, 34.836575, 30.787130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.023697, 34.582905, 30.847691>,  <25.717255, 34.206802, 31.072533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.023697, 34.582905, 30.847691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316460, 34.727409, 30.616589>,  <25.492117, 34.814114, 30.477926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316460, 34.727409, 30.616589>,  <25.023697, 34.582905, 30.847691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.316460, 34.727409, 30.616589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582346, -0.108636, -0.805649,
		-0.353817, 0.926114, 0.130869,
		0.731906, 0.361263, -0.577756,
		25.536032, 34.835789, 30.443262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.794090, 35.078926, 30.323187>,  <25.023697, 34.582905, 30.847691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.794090, 35.078926, 30.323187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.110842, 34.882244, 30.178324>,  <25.300892, 34.764236, 30.091406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.110842, 34.882244, 30.178324>,  <24.794090, 35.078926, 30.323187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.110842, 34.882244, 30.178324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560655, -0.350301, -0.750303,
		0.242061, 0.797194, -0.553071,
		0.791879, -0.491702, -0.362157,
		25.348406, 34.734734, 30.069677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.179998, 35.698578, 30.413164>,  <24.794090, 35.078926, 30.323187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.179998, 35.698578, 30.413164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365379, 35.406849, 30.614479>,  <25.476608, 35.231812, 30.735268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365379, 35.406849, 30.614479>,  <25.179998, 35.698578, 30.413164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.365379, 35.406849, 30.614479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237782, 0.649494, 0.722231,
		-0.853622, -0.215048, 0.474430,
		0.463454, -0.729323, 0.503288,
		25.504416, 35.188053, 30.765465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.092922, 35.929581, 31.073643>,  <25.179998, 35.698578, 30.413164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.092922, 35.929581, 31.073643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.360268, 35.634190, 31.109285>,  <25.520674, 35.456955, 31.130671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.360268, 35.634190, 31.109285>,  <25.092922, 35.929581, 31.073643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.360268, 35.634190, 31.109285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367990, 0.432377, 0.823185,
		-0.646433, -0.517395, 0.560738,
		0.668362, -0.738480, 0.089107,
		25.560776, 35.412647, 31.136017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.014339, 35.710827, 31.771252>,  <25.092922, 35.929581, 31.073643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.014339, 35.710827, 31.771252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.375401, 35.581856, 31.657228>,  <25.592037, 35.504475, 31.588814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.375401, 35.581856, 31.657228>,  <25.014339, 35.710827, 31.771252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.375401, 35.581856, 31.657228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419282, 0.509436, 0.751450,
		-0.097070, -0.797818, 0.595032,
		0.902652, -0.322429, -0.285060,
		25.646196, 35.485126, 31.571711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.332846, 35.309418, 32.262810>,  <25.014339, 35.710827, 31.771252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.332846, 35.309418, 32.262810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636515, 35.467396, 32.055859>,  <25.818716, 35.562183, 31.931688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636515, 35.467396, 32.055859>,  <25.332846, 35.309418, 32.262810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636515, 35.467396, 32.055859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333542, 0.446528, 0.830278,
		0.558936, -0.802890, 0.207261,
		0.759171, 0.394942, -0.517378,
		25.864265, 35.585880, 31.900644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982004, 35.131695, 32.504204>,  <25.332846, 35.309418, 32.262810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982004, 35.131695, 32.504204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020679, 35.491978, 32.334789>,  <26.043884, 35.708145, 32.233139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020679, 35.491978, 32.334789>,  <25.982004, 35.131695, 32.504204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020679, 35.491978, 32.334789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250851, 0.389741, 0.886102,
		0.963185, -0.191920, -0.188259,
		0.096688, 0.900704, -0.423536,
		26.049686, 35.762188, 32.207729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598083, 35.378708, 32.761120>,  <25.982004, 35.131695, 32.504204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598083, 35.378708, 32.761120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381113, 35.692112, 32.639874>,  <26.250931, 35.880154, 32.567127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381113, 35.692112, 32.639874>,  <26.598083, 35.378708, 32.761120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381113, 35.692112, 32.639874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048635, 0.389488, 0.919747,
		0.838694, 0.484154, -0.249375,
		-0.542427, 0.783514, -0.303115,
		26.218386, 35.927166, 32.548939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970364, 35.891472, 33.046974>,  <26.598083, 35.378708, 32.761120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970364, 35.891472, 33.046974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608685, 36.047001, 32.976273>,  <26.391676, 36.140316, 32.933849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608685, 36.047001, 32.976273>,  <26.970364, 35.891472, 33.046974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608685, 36.047001, 32.976273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097613, 0.214769, 0.971775,
		0.415807, 0.895932, -0.156240,
		-0.904199, 0.388819, -0.176757,
		26.337425, 36.163647, 32.923244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740427, 35.537258, 33.052250>,  <26.970364, 35.891472, 33.046974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740427, 35.537258, 33.052250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796625, 35.334637, 32.711975>,  <27.830345, 35.213066, 32.507809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796625, 35.334637, 32.711975>,  <27.740427, 35.537258, 33.052250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796625, 35.334637, 32.711975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940251, -0.200882, 0.274906,
		-0.310141, -0.838483, 0.448060,
		0.140497, -0.506549, -0.850687,
		27.838774, 35.182671, 32.456768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930813, 34.771217, 33.145557>,  <27.740427, 35.537258, 33.052250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930813, 34.771217, 33.145557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071913, 34.929890, 32.806568>,  <28.156572, 35.025093, 32.603172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071913, 34.929890, 32.806568>,  <27.930813, 34.771217, 33.145557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071913, 34.929890, 32.806568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927773, -0.266039, 0.261649,
		-0.121671, -0.878561, -0.461873,
		0.352751, 0.396678, -0.847475,
		28.177738, 35.048893, 32.552326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329767, 34.571480, 33.720432>,  <27.930813, 34.771217, 33.145557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329767, 34.571480, 33.720432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437426, 34.385277, 34.057682>,  <28.502020, 34.273556, 34.260033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437426, 34.385277, 34.057682>,  <28.329767, 34.571480, 33.720432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437426, 34.385277, 34.057682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828716, -0.334100, -0.449007,
		0.490705, 0.819561, 0.295851,
		0.269145, -0.465507, 0.843128,
		28.518169, 34.245625, 34.310619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959360, 34.790127, 33.974171>,  <28.329767, 34.571480, 33.720432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959360, 34.790127, 33.974171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.878941, 34.415161, 34.087891>,  <28.830688, 34.190182, 34.156124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.878941, 34.415161, 34.087891>,  <28.959360, 34.790127, 33.974171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878941, 34.415161, 34.087891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732281, -0.336594, -0.592004,
		0.650649, 0.089165, 0.754125,
		-0.201048, -0.937419, 0.284299,
		28.818626, 34.133934, 34.173180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649084, 34.500431, 34.199268>,  <28.959360, 34.790127, 33.974171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649084, 34.500431, 34.199268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362614, 34.253258, 34.069496>,  <29.190731, 34.104954, 33.991634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362614, 34.253258, 34.069496>,  <29.649084, 34.500431, 34.199268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362614, 34.253258, 34.069496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622736, -0.355904, -0.696801,
		0.315111, -0.701064, 0.639698,
		-0.716174, -0.617933, -0.324428,
		29.147762, 34.067879, 33.972168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826612, 33.814594, 34.194763>,  <29.649084, 34.500431, 34.199268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826612, 33.814594, 34.194763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601349, 33.893166, 33.873699>,  <29.466190, 33.940308, 33.681061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601349, 33.893166, 33.873699>,  <29.826612, 33.814594, 34.194763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601349, 33.893166, 33.873699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629942, -0.526597, -0.570849,
		-0.534815, -0.827108, 0.172815,
		-0.563157, 0.196435, -0.802662,
		29.432402, 33.952095, 33.632900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510284, 33.208775, 33.880451>,  <29.826612, 33.814594, 34.194763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510284, 33.208775, 33.880451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610449, 33.513206, 33.641102>,  <29.670547, 33.695866, 33.497494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610449, 33.513206, 33.641102>,  <29.510284, 33.208775, 33.880451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610449, 33.513206, 33.641102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511769, -0.628712, -0.585504,
		-0.821819, -0.159611, -0.546935,
		0.250412, 0.761082, -0.598371,
		29.685572, 33.741531, 33.461590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466854, 32.968563, 33.220165>,  <29.510284, 33.208775, 33.880451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466854, 32.968563, 33.220165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736954, 33.263401, 33.230999>,  <29.899014, 33.440304, 33.237499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736954, 33.263401, 33.230999>,  <29.466854, 32.968563, 33.220165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736954, 33.263401, 33.230999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560571, -0.488980, -0.668325,
		-0.479373, 0.466470, -0.743376,
		0.675250, 0.737092, 0.027086,
		29.939529, 33.484528, 33.239124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588198, 33.181366, 32.427555>,  <29.466854, 32.968563, 33.220165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588198, 33.181366, 32.427555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904701, 33.204609, 32.671040>,  <30.094604, 33.218555, 32.817131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904701, 33.204609, 32.671040>,  <29.588198, 33.181366, 32.427555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904701, 33.204609, 32.671040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534645, -0.548848, -0.642589,
		0.296754, 0.833900, -0.465346,
		0.791260, 0.058104, 0.608713,
		30.142078, 33.222038, 32.853653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407028, 33.487183, 31.917429>,  <29.588198, 33.181366, 32.427555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407028, 33.487183, 31.917429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714678, 33.354469, 31.698936>,  <29.899267, 33.274841, 31.567841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714678, 33.354469, 31.698936>,  <29.407028, 33.487183, 31.917429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714678, 33.354469, 31.698936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560788, 0.760301, 0.327809,
		0.306537, -0.558445, 0.770827,
		0.769124, -0.331785, -0.546229,
		29.945415, 33.254932, 31.535067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020033, 33.870934, 32.254536>,  <29.407028, 33.487183, 31.917429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020033, 33.870934, 32.254536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166828, 33.701607, 31.923204>,  <30.254906, 33.600010, 31.724405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166828, 33.701607, 31.923204>,  <30.020033, 33.870934, 32.254536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166828, 33.701607, 31.923204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675419, 0.733545, -0.075632,
		0.639631, -0.531711, 0.555118,
		0.366989, -0.423314, -0.828326,
		30.276924, 33.574612, 31.674707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760170, 33.937828, 32.332108>,  <30.020033, 33.870934, 32.254536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760170, 33.937828, 32.332108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692707, 33.897713, 31.939884>,  <30.652229, 33.873642, 31.704550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692707, 33.897713, 31.939884>,  <30.760170, 33.937828, 32.332108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692707, 33.897713, 31.939884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811604, 0.550386, -0.195891,
		0.559333, -0.828864, -0.011429,
		-0.168657, -0.100293, -0.980559,
		30.642109, 33.867626, 31.645716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209639, 33.594387, 32.026318>,  <30.760170, 33.937828, 32.332108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209639, 33.594387, 32.026318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072020, 33.861954, 31.762749>,  <30.989449, 34.022495, 31.604607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072020, 33.861954, 31.762749>,  <31.209639, 33.594387, 32.026318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072020, 33.861954, 31.762749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862271, 0.502851, 0.060252,
		0.371644, -0.547441, -0.749792,
		-0.344049, 0.668916, -0.658924,
		30.968805, 34.062630, 31.565071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690910, 34.000401, 32.501659>,  <31.209639, 33.594387, 32.026318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690910, 34.000401, 32.501659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983416, 33.735119, 32.437889>,  <32.158920, 33.575951, 32.399628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983416, 33.735119, 32.437889>,  <31.690910, 34.000401, 32.501659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983416, 33.735119, 32.437889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041104, 0.190453, -0.980836,
		0.680854, 0.723803, 0.112012,
		0.731265, -0.663202, -0.159422,
		32.202797, 33.536160, 32.390064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411095, 34.218426, 32.321560>,  <31.690910, 34.000401, 32.501659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411095, 34.218426, 32.321560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266132, 33.881504, 32.161964>,  <32.179157, 33.679352, 32.066208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266132, 33.881504, 32.161964>,  <32.411095, 34.218426, 32.321560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266132, 33.881504, 32.161964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156613, 0.366972, -0.916954,
		0.918769, -0.394795, -0.001077,
		-0.362404, -0.842300, -0.398992,
		32.157410, 33.628815, 32.042267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878304, 33.903160, 31.903547>,  <32.411095, 34.218426, 32.321560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878304, 33.903160, 31.903547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510281, 33.828423, 31.765800>,  <32.289467, 33.783581, 31.683153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510281, 33.828423, 31.765800>,  <32.878304, 33.903160, 31.903547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510281, 33.828423, 31.765800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248242, 0.401998, -0.881348,
		0.303104, -0.896376, -0.323479,
		-0.920056, -0.186839, -0.344366,
		32.234264, 33.772369, 31.662491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833408, 33.431187, 31.348289>,  <32.878304, 33.903160, 31.903547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833408, 33.431187, 31.348289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574886, 33.736313, 31.340275>,  <32.419773, 33.919388, 31.335466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574886, 33.736313, 31.340275>,  <32.833408, 33.431187, 31.348289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574886, 33.736313, 31.340275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284104, 0.216179, -0.934105,
		-0.708215, -0.609413, -0.356436,
		-0.646309, 0.762812, -0.020035,
		32.380993, 33.965157, 31.334265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631252, 33.440075, 30.702206>,  <32.833408, 33.431187, 31.348289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631252, 33.440075, 30.702206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503254, 33.799816, 30.821383>,  <32.426456, 34.015659, 30.892889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503254, 33.799816, 30.821383>,  <32.631252, 33.440075, 30.702206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503254, 33.799816, 30.821383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251196, 0.383763, -0.888609,
		-0.913511, -0.209509, -0.348716,
		-0.319996, 0.899351, 0.297944,
		32.407253, 34.069622, 30.910767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133434, 33.702091, 30.159039>,  <32.631252, 33.440075, 30.702206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133434, 33.702091, 30.159039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243668, 34.048748, 30.325409>,  <32.309807, 34.256741, 30.425230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243668, 34.048748, 30.325409>,  <32.133434, 33.702091, 30.159039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243668, 34.048748, 30.325409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265894, 0.347074, -0.899355,
		-0.923772, 0.358438, -0.134786,
		0.275582, 0.866638, 0.415924,
		32.326344, 34.308739, 30.450186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779535, 34.161854, 29.807827>,  <32.133434, 33.702091, 30.159039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779535, 34.161854, 29.807827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095512, 34.361507, 29.950294>,  <32.285099, 34.481300, 30.035776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095512, 34.361507, 29.950294>,  <31.779535, 34.161854, 29.807827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095512, 34.361507, 29.950294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208798, 0.327185, -0.921603,
		-0.576535, 0.802382, 0.154240,
		0.789943, 0.499132, 0.356170,
		32.332497, 34.511246, 30.057146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768555, 34.888985, 29.661921>,  <31.779535, 34.161854, 29.807827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768555, 34.888985, 29.661921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152828, 34.782738, 29.694248>,  <32.383392, 34.718990, 29.713644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152828, 34.782738, 29.694248>,  <31.768555, 34.888985, 29.661921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152828, 34.782738, 29.694248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192678, 0.428259, -0.882876,
		0.199894, 0.863738, 0.462600,
		0.960686, -0.265614, 0.080817,
		32.441032, 34.703053, 29.718493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121120, 35.432362, 29.346933>,  <31.768555, 34.888985, 29.661921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121120, 35.432362, 29.346933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425556, 35.173290, 29.361082>,  <32.608219, 35.017849, 29.369572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425556, 35.173290, 29.361082>,  <32.121120, 35.432362, 29.346933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425556, 35.173290, 29.361082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375985, 0.396077, -0.837710,
		0.528557, 0.650875, 0.544968,
		0.761094, -0.647677, 0.035370,
		32.653885, 34.978989, 29.371693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753048, 35.845688, 29.078384>,  <32.121120, 35.432362, 29.346933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753048, 35.845688, 29.078384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836678, 35.455482, 29.051065>,  <32.886856, 35.221359, 29.034674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836678, 35.455482, 29.051065>,  <32.753048, 35.845688, 29.078384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836678, 35.455482, 29.051065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534506, 0.172484, -0.827377,
		0.818896, 0.136476, 0.557479,
		0.209073, -0.975512, -0.068299,
		32.899399, 35.162830, 29.030575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492538, 35.861946, 28.947884>,  <32.753048, 35.845688, 29.078384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492538, 35.861946, 28.947884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374149, 35.493092, 28.848230>,  <33.303116, 35.271778, 28.788439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374149, 35.493092, 28.848230>,  <33.492538, 35.861946, 28.947884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374149, 35.493092, 28.848230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617544, 0.014254, -0.786407,
		0.728724, -0.386608, 0.565240,
		-0.295974, -0.922134, -0.249135,
		33.285358, 35.216450, 28.773489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144409, 35.396191, 28.826820>,  <33.492538, 35.861946, 28.947884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144409, 35.396191, 28.826820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835541, 35.230480, 28.634102>,  <33.650219, 35.131054, 28.518471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835541, 35.230480, 28.634102>,  <34.144409, 35.396191, 28.826820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835541, 35.230480, 28.634102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575468, -0.134436, -0.806699,
		0.269427, -0.900167, 0.342211,
		-0.772170, -0.414278, -0.481797,
		33.603889, 35.106197, 28.489563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411381, 34.878380, 28.447620>,  <34.144409, 35.396191, 28.826820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411381, 34.878380, 28.447620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047207, 34.945953, 28.296589>,  <33.828701, 34.986496, 28.205971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047207, 34.945953, 28.296589>,  <34.411381, 34.878380, 28.447620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047207, 34.945953, 28.296589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354872, -0.150001, -0.922803,
		-0.212532, -0.974146, 0.076615,
		-0.910437, 0.168936, -0.377577,
		33.774075, 34.996635, 28.183315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235039, 34.341156, 28.092350>,  <34.411381, 34.878380, 28.447620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235039, 34.341156, 28.092350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004498, 34.626232, 27.932407>,  <33.866173, 34.797279, 27.836443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004498, 34.626232, 27.932407>,  <34.235039, 34.341156, 28.092350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004498, 34.626232, 27.932407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211979, -0.342164, -0.915417,
		-0.789229, -0.612364, 0.046131,
		-0.576353, 0.712695, -0.399855,
		33.831593, 34.840042, 27.812450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809143, 33.963516, 27.547384>,  <34.235039, 34.341156, 28.092350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809143, 33.963516, 27.547384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825359, 34.349545, 27.443851>,  <33.835091, 34.581161, 27.381733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825359, 34.349545, 27.443851>,  <33.809143, 33.963516, 27.547384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825359, 34.349545, 27.443851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362552, -0.255597, -0.896229,
		-0.931081, -0.057506, -0.360251,
		0.040541, 0.965071, -0.258831,
		33.837521, 34.639065, 27.366201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776501, 33.901318, 26.822330>,  <33.809143, 33.963516, 27.547384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776501, 33.901318, 26.822330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894642, 34.279736, 26.875650>,  <33.965527, 34.506786, 26.907642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894642, 34.279736, 26.875650>,  <33.776501, 33.901318, 26.822330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894642, 34.279736, 26.875650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505410, -0.036315, -0.862115,
		-0.810757, 0.322001, -0.488865,
		0.295355, 0.946043, 0.133300,
		33.983250, 34.563549, 26.915640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616928, 34.136074, 26.172075>,  <33.776501, 33.901318, 26.822330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616928, 34.136074, 26.172075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885571, 34.397823, 26.311068>,  <34.046757, 34.554871, 26.394463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885571, 34.397823, 26.311068>,  <33.616928, 34.136074, 26.172075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885571, 34.397823, 26.311068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415878, 0.055196, -0.907744,
		-0.613181, 0.754156, -0.235069,
		0.671606, 0.654371, 0.347482,
		34.087051, 34.594135, 26.415312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647068, 34.749798, 25.725149>,  <33.616928, 34.136074, 26.172075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647068, 34.749798, 25.725149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990902, 34.795124, 25.924461>,  <34.197201, 34.822319, 26.044048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990902, 34.795124, 25.924461>,  <33.647068, 34.749798, 25.725149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990902, 34.795124, 25.924461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469182, 0.211328, -0.857443,
		-0.202460, 0.970825, 0.128488,
		0.859580, 0.113314, 0.498279,
		34.248775, 34.829117, 26.073944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929638, 35.307106, 25.409863>,  <33.647068, 34.749798, 25.725149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929638, 35.307106, 25.409863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242691, 35.155296, 25.607220>,  <34.430523, 35.064209, 25.725634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242691, 35.155296, 25.607220>,  <33.929638, 35.307106, 25.409863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242691, 35.155296, 25.607220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589846, 0.198897, -0.782637,
		0.198897, 0.903548, 0.379527,
		0.782637, -0.379527, 0.493394,
		34.477482, 35.041439, 25.755238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484070, 35.852070, 25.330402>,  <33.929638, 35.307106, 25.409863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484070, 35.852070, 25.330402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678940, 35.511806, 25.409441>,  <34.795860, 35.307648, 25.456865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678940, 35.511806, 25.409441>,  <34.484070, 35.852070, 25.330402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678940, 35.511806, 25.409441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541006, 0.116354, -0.832931,
		0.685548, 0.512683, 0.516895,
		0.487172, -0.850657, 0.197598,
		34.825092, 35.256611, 25.468721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133327, 36.053814, 25.363367>,  <34.484070, 35.852070, 25.330402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133327, 36.053814, 25.363367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137058, 35.662361, 25.281200>,  <35.139297, 35.427490, 25.231899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137058, 35.662361, 25.281200>,  <35.133327, 36.053814, 25.363367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137058, 35.662361, 25.281200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655546, 0.161110, -0.737769,
		0.755098, -0.127779, 0.643040,
		0.009329, -0.978630, -0.205419,
		35.139858, 35.368771, 25.219574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793846, 35.896095, 25.329916>,  <35.133327, 36.053814, 25.363367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793846, 35.896095, 25.329916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602901, 35.607098, 25.129866>,  <35.488335, 35.433701, 25.009834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602901, 35.607098, 25.129866>,  <35.793846, 35.896095, 25.329916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602901, 35.607098, 25.129866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593057, 0.155075, -0.790086,
		0.648390, -0.673760, 0.354454,
		-0.477362, -0.722495, -0.500127,
		35.459694, 35.390350, 24.979828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324860, 35.544823, 25.014215>,  <35.793846, 35.896095, 25.329916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324860, 35.544823, 25.014215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997692, 35.446571, 24.806112>,  <35.801392, 35.387619, 24.681250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997692, 35.446571, 24.806112>,  <36.324860, 35.544823, 25.014215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997692, 35.446571, 24.806112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507735, 0.117097, -0.853518,
		0.270571, -0.962265, 0.028939,
		-0.817922, -0.245631, -0.520259,
		35.752316, 35.372883, 24.650034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546722, 35.068005, 24.524958>,  <36.324860, 35.544823, 25.014215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546722, 35.068005, 24.524958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203159, 35.199707, 24.368050>,  <35.997021, 35.278728, 24.273905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203159, 35.199707, 24.368050>,  <36.546722, 35.068005, 24.524958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203159, 35.199707, 24.368050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393692, -0.065398, -0.916913,
		-0.327555, -0.941972, -0.073456,
		-0.858903, 0.329258, -0.392269,
		35.945488, 35.298485, 24.250368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606926, 34.803192, 23.878647>,  <36.546722, 35.068005, 24.524958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606926, 34.803192, 23.878647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313522, 35.072334, 23.840223>,  <36.137478, 35.233818, 23.817169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313522, 35.072334, 23.840223>,  <36.606926, 34.803192, 23.878647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313522, 35.072334, 23.840223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242723, 0.127309, -0.961706,
		-0.634860, -0.728737, -0.256700,
		-0.733511, 0.672856, -0.096058,
		36.093468, 35.274193, 23.811405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237350, 34.570518, 23.316580>,  <36.606926, 34.803192, 23.878647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237350, 34.570518, 23.316580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170246, 34.962128, 23.362831>,  <36.129982, 35.197094, 23.390583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170246, 34.962128, 23.362831>,  <36.237350, 34.570518, 23.316580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170246, 34.962128, 23.362831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118973, 0.136541, -0.983464,
		-0.978622, -0.151234, -0.139384,
		-0.167765, 0.979022, 0.115629,
		36.119915, 35.255833, 23.397520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872536, 34.741688, 22.684896>,  <36.237350, 34.570518, 23.316580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872536, 34.741688, 22.684896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970108, 35.102646, 22.826981>,  <36.028652, 35.319221, 22.912231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970108, 35.102646, 22.826981>,  <35.872536, 34.741688, 22.684896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970108, 35.102646, 22.826981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348415, 0.260272, -0.900481,
		-0.905043, 0.343420, -0.250919,
		0.243936, 0.902398, 0.355209,
		36.043289, 35.373363, 22.933544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512993, 35.213287, 22.267834>,  <35.872536, 34.741688, 22.684896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512993, 35.213287, 22.267834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819366, 35.407169, 22.436783>,  <36.003193, 35.523499, 22.538153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819366, 35.407169, 22.436783>,  <35.512993, 35.213287, 22.267834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819366, 35.407169, 22.436783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268349, 0.355975, -0.895137,
		-0.584235, 0.798961, 0.142583,
		0.765936, 0.484709, 0.422373,
		36.049149, 35.552582, 22.563496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678669, 35.757317, 21.866800>,  <35.512993, 35.213287, 22.267834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678669, 35.757317, 21.866800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018036, 35.762154, 22.078478>,  <36.221657, 35.765057, 22.205484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018036, 35.762154, 22.078478>,  <35.678669, 35.757317, 21.866800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018036, 35.762154, 22.078478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493816, 0.341944, -0.799512,
		-0.190623, 0.939643, 0.284138,
		0.848415, 0.012093, 0.529193,
		36.272560, 35.765781, 22.237236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037548, 36.409973, 21.629530>,  <35.678669, 35.757317, 21.866800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037548, 36.409973, 21.629530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328835, 36.181847, 21.781551>,  <36.503605, 36.044971, 21.872765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328835, 36.181847, 21.781551>,  <36.037548, 36.409973, 21.629530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328835, 36.181847, 21.781551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602624, 0.268728, -0.751418,
		0.326419, 0.776222, 0.539380,
		0.728213, -0.570321, 0.380052,
		36.547298, 36.010750, 21.895567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656387, 36.875134, 21.614899>,  <36.037548, 36.409973, 21.629530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656387, 36.875134, 21.614899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747021, 36.487000, 21.581167>,  <36.801399, 36.254120, 21.560928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747021, 36.487000, 21.581167>,  <36.656387, 36.875134, 21.614899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747021, 36.487000, 21.581167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621736, 0.210739, -0.754343,
		0.749737, 0.118487, 0.651042,
		0.226579, -0.970335, -0.084331,
		36.814995, 36.195900, 21.555868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398582, 36.929035, 21.521948>,  <36.656387, 36.875134, 21.614899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398582, 36.929035, 21.521948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315228, 36.554089, 21.410297>,  <37.265213, 36.329121, 21.343307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315228, 36.554089, 21.410297>,  <37.398582, 36.929035, 21.521948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315228, 36.554089, 21.410297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775807, 0.015364, -0.630783,
		0.595566, -0.347996, 0.724017,
		-0.208386, -0.937370, -0.279128,
		37.252712, 36.272877, 21.326559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054981, 36.565006, 21.575022>,  <37.398582, 36.929035, 21.521948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054981, 36.565006, 21.575022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825024, 36.360653, 21.319365>,  <37.687050, 36.238041, 21.165970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825024, 36.360653, 21.319365>,  <38.054981, 36.565006, 21.575022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825024, 36.360653, 21.319365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789266, -0.140240, -0.597823,
		0.215782, -0.848137, 0.483841,
		-0.574890, -0.510879, -0.639144,
		37.652557, 36.207390, 21.127621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454967, 36.055580, 21.404711>,  <38.054981, 36.565006, 21.575022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454967, 36.055580, 21.404711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196602, 36.085724, 21.100836>,  <38.041584, 36.103809, 20.918510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196602, 36.085724, 21.100836>,  <38.454967, 36.055580, 21.404711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196602, 36.085724, 21.100836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736054, -0.202546, -0.645910,
		-0.202546, -0.976369, 0.075359,
		0.645910, -0.075359, 0.759685,
		38.002831, 36.108330, 20.872931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752567, 35.585361, 20.954195>,  <38.454967, 36.055580, 21.404711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752567, 35.585361, 20.954195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512257, 35.829292, 20.747435>,  <38.368073, 35.975651, 20.623379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512257, 35.829292, 20.747435>,  <38.752567, 35.585361, 20.954195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512257, 35.829292, 20.747435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724795, 0.142724, -0.674019,
		-0.337261, -0.779578, -0.527744,
		-0.600772, 0.609826, -0.516899,
		38.332024, 36.012241, 20.592365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021488, 35.430737, 20.355665>,  <38.752567, 35.585361, 20.954195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021488, 35.430737, 20.355665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825768, 35.776043, 20.306107>,  <38.708336, 35.983227, 20.276371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825768, 35.776043, 20.306107>,  <39.021488, 35.430737, 20.355665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825768, 35.776043, 20.306107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681451, 0.289799, -0.672042,
		-0.544249, -0.413260, -0.730075,
		-0.489303, 0.863268, -0.123894,
		38.678978, 36.035023, 20.268938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125187, 35.616585, 19.646242>,  <39.021488, 35.430737, 20.355665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125187, 35.616585, 19.646242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013588, 35.959930, 19.818459>,  <38.946629, 36.165939, 19.921789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013588, 35.959930, 19.818459>,  <39.125187, 35.616585, 19.646242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013588, 35.959930, 19.818459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617797, 0.503681, -0.603847,
		-0.735179, 0.097517, -0.670822,
		-0.278995, 0.858368, 0.430542,
		38.929890, 36.217442, 19.947620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941063, 36.024738, 19.121208>,  <39.125187, 35.616585, 19.646242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941063, 36.024738, 19.121208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050076, 36.252850, 19.431177>,  <39.115482, 36.389717, 19.617159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050076, 36.252850, 19.431177>,  <38.941063, 36.024738, 19.121208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050076, 36.252850, 19.431177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765853, 0.358951, -0.533502,
		-0.582405, 0.738874, -0.338925,
		0.272533, 0.570281, 0.774923,
		39.131836, 36.423935, 19.663654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037170, 36.773056, 18.876106>,  <38.941063, 36.024738, 19.121208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037170, 36.773056, 18.876106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261623, 36.765041, 19.207100>,  <39.396294, 36.760231, 19.405697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261623, 36.765041, 19.207100>,  <39.037170, 36.773056, 18.876106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261623, 36.765041, 19.207100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705740, 0.533953, -0.465645,
		-0.432508, 0.845277, 0.313758,
		0.561131, -0.020036, 0.827484,
		39.429962, 36.759029, 19.455345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354866, 37.418381, 18.823389>,  <39.037170, 36.773056, 18.876106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354866, 37.418381, 18.823389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563324, 37.222427, 19.102940>,  <39.688396, 37.104855, 19.270670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563324, 37.222427, 19.102940>,  <39.354866, 37.418381, 18.823389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563324, 37.222427, 19.102940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829069, 0.484985, -0.278269,
		-0.202627, 0.724435, 0.658890,
		0.521140, -0.489881, 0.698878,
		39.719666, 37.075462, 19.312603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624275, 38.004921, 19.278362>,  <39.354866, 37.418381, 18.823389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624275, 38.004921, 19.278362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880486, 37.699368, 19.309864>,  <40.034210, 37.516033, 19.328766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880486, 37.699368, 19.309864>,  <39.624275, 38.004921, 19.278362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880486, 37.699368, 19.309864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758672, 0.645345, 0.089140,
		-0.118918, 0.002654, 0.992900,
		0.640527, -0.763886, 0.078757,
		40.072643, 37.470203, 19.333490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022800, 38.135231, 19.816864>,  <39.624275, 38.004921, 19.278362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022800, 38.135231, 19.816864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248363, 37.862789, 19.630056>,  <40.383701, 37.699322, 19.517971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248363, 37.862789, 19.630056>,  <40.022800, 38.135231, 19.816864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248363, 37.862789, 19.630056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809830, 0.566874, 0.151094,
		0.161830, -0.463408, 0.871243,
		0.563903, -0.681107, -0.467019,
		40.417534, 37.658459, 19.489950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553310, 38.147400, 20.204769>,  <40.022800, 38.135231, 19.816864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553310, 38.147400, 20.204769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663624, 37.985699, 19.855936>,  <40.729813, 37.888680, 19.646637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663624, 37.985699, 19.855936>,  <40.553310, 38.147400, 20.204769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663624, 37.985699, 19.855936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838339, 0.545006, 0.012476,
		0.470247, -0.734541, 0.489200,
		0.275781, -0.404249, -0.872082,
		40.746357, 37.864426, 19.594311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248943, 37.997650, 20.285179>,  <40.553310, 38.147400, 20.204769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248943, 37.997650, 20.285179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186661, 37.980759, 19.890419>,  <41.149292, 37.970623, 19.653563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186661, 37.980759, 19.890419>,  <41.248943, 37.997650, 20.285179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186661, 37.980759, 19.890419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884766, 0.438307, -0.158353,
		0.439253, -0.897833, -0.030882,
		-0.155710, -0.042234, -0.986900,
		41.139946, 37.968090, 19.594349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797928, 37.777142, 19.894135>,  <41.248943, 37.997650, 20.285179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797928, 37.777142, 19.894135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599724, 37.992081, 19.621159>,  <41.480801, 38.121044, 19.457373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599724, 37.992081, 19.621159>,  <41.797928, 37.777142, 19.894135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599724, 37.992081, 19.621159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824692, 0.537691, -0.175418,
		0.272681, -0.649724, -0.709580,
		-0.495508, 0.537352, -0.682440,
		41.451073, 38.153286, 19.416426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348316, 37.830608, 19.368629>,  <41.797928, 37.777142, 19.894135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348316, 37.830608, 19.368629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068508, 38.104122, 19.285582>,  <41.900623, 38.268230, 19.235752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068508, 38.104122, 19.285582>,  <42.348316, 37.830608, 19.368629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068508, 38.104122, 19.285582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706685, 0.705077, -0.058840,
		0.106155, -0.187882, -0.976438,
		-0.699519, 0.683788, -0.207621,
		41.858654, 38.309258, 19.223295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715588, 38.251717, 18.886454>,  <42.348316, 37.830608, 19.368629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715588, 38.251717, 18.886454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415882, 38.480244, 19.020437>,  <42.236057, 38.617359, 19.100826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415882, 38.480244, 19.020437>,  <42.715588, 38.251717, 18.886454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415882, 38.480244, 19.020437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606492, 0.795090, 0.000524,
		-0.266022, 0.203542, -0.942233,
		-0.749267, 0.571317, 0.334958,
		42.191101, 38.651638, 19.120924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684147, 38.878090, 18.457159>,  <42.715588, 38.251717, 18.886454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684147, 38.878090, 18.457159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517670, 38.951637, 18.813354>,  <42.417782, 38.995766, 19.027073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517670, 38.951637, 18.813354>,  <42.684147, 38.878090, 18.457159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517670, 38.951637, 18.813354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703951, 0.685034, 0.187567,
		-0.575529, 0.704927, -0.414541,
		-0.416196, 0.183867, 0.890491,
		42.392811, 39.006798, 19.080502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420959, 39.566231, 18.660357>,  <42.684147, 38.878090, 18.457159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420959, 39.566231, 18.660357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552116, 39.399849, 18.999641>,  <42.630810, 39.300018, 19.203213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552116, 39.399849, 18.999641>,  <42.420959, 39.566231, 18.660357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552116, 39.399849, 18.999641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771413, 0.636185, 0.013780,
		-0.545353, 0.649805, 0.529474,
		0.327889, -0.415959, 0.848214,
		42.650482, 39.275063, 19.254107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445122, 40.071732, 19.138868>,  <42.420959, 39.566231, 18.660357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445122, 40.071732, 19.138868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714218, 39.810040, 19.277084>,  <42.875675, 39.653023, 19.360014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714218, 39.810040, 19.277084>,  <42.445122, 40.071732, 19.138868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714218, 39.810040, 19.277084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621960, 0.753010, 0.214805,
		-0.400729, 0.070405, 0.913487,
		0.672742, -0.654231, 0.345542,
		42.916042, 39.613770, 19.380747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758339, 40.210663, 19.862654>,  <42.445122, 40.071732, 19.138868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758339, 40.210663, 19.862654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039082, 40.046612, 19.629694>,  <43.207527, 39.948181, 19.489918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039082, 40.046612, 19.629694>,  <42.758339, 40.210663, 19.862654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039082, 40.046612, 19.629694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620842, 0.753045, 0.217895,
		0.349209, -0.514510, 0.783156,
		0.701860, -0.410125, -0.582399,
		43.249641, 39.923573, 19.454975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459118, 39.889004, 20.170679>,  <42.758339, 40.210663, 19.862654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459118, 39.889004, 20.170679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461994, 40.091312, 19.825624>,  <43.463718, 40.212696, 19.618591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461994, 40.091312, 19.825624>,  <43.459118, 39.889004, 20.170679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461994, 40.091312, 19.825624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505177, 0.742645, 0.439631,
		0.862986, -0.438945, -0.250164,
		0.007191, 0.505772, -0.862637,
		43.464153, 40.243046, 19.566833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228176, 40.180103, 20.007038>,  <43.459118, 39.889004, 20.170679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228176, 40.180103, 20.007038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.960251, 40.423775, 19.837214>,  <43.799496, 40.569977, 19.735319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.960251, 40.423775, 19.837214>,  <44.228176, 40.180103, 20.007038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960251, 40.423775, 19.837214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490286, 0.792251, 0.363261,
		0.557652, 0.035158, -0.829330,
		-0.669809, 0.609182, -0.424563,
		43.759308, 40.606529, 19.709845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529320, 40.639805, 19.429808>,  <44.228176, 40.180103, 20.007038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529320, 40.639805, 19.429808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229111, 40.804031, 19.636940>,  <44.048985, 40.902565, 19.761219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229111, 40.804031, 19.636940>,  <44.529320, 40.639805, 19.429808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229111, 40.804031, 19.636940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576033, 0.790483, 0.208143,
		-0.323881, 0.454504, -0.829775,
		-0.750525, 0.410564, 0.517832,
		44.003952, 40.927200, 19.792290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510460, 41.287666, 19.261908>,  <44.529320, 40.639805, 19.429808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510460, 41.287666, 19.261908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313038, 41.287460, 19.609793>,  <44.194584, 41.287334, 19.818523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313038, 41.287460, 19.609793>,  <44.510460, 41.287666, 19.261908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313038, 41.287460, 19.609793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417792, 0.876920, 0.237617,
		-0.762792, 0.480637, -0.432593,
		-0.493557, -0.000519, 0.869713,
		44.164970, 41.287304, 19.870707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858139, 41.730843, 19.515646>,  <44.510460, 41.287666, 19.261908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858139, 41.730843, 19.515646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136726, 41.644974, 19.789537>,  <44.303879, 41.593452, 19.953873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136726, 41.644974, 19.789537>,  <43.858139, 41.730843, 19.515646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136726, 41.644974, 19.789537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017798, 0.959078, 0.282583,
		-0.717369, -0.184622, 0.671786,
		0.696466, -0.214673, 0.684726,
		44.345665, 41.580570, 19.994955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520683, 41.840229, 20.252708>,  <43.858139, 41.730843, 19.515646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520683, 41.840229, 20.252708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906570, 41.912373, 20.175980>,  <44.138103, 41.955658, 20.129942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906570, 41.912373, 20.175980>,  <43.520683, 41.840229, 20.252708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906570, 41.912373, 20.175980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158792, 0.979678, 0.122541,
		0.210028, -0.087757, 0.973749,
		0.964714, 0.180360, -0.191824,
		44.195984, 41.966480, 20.118433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091599, 41.577847, 20.882940>,  <43.520683, 41.840229, 20.252708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091599, 41.577847, 20.882940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978638, 41.725422, 21.237146>,  <42.910862, 41.813965, 21.449671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978638, 41.725422, 21.237146>,  <43.091599, 41.577847, 20.882940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978638, 41.725422, 21.237146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254497, -0.861198, 0.439965,
		0.924923, 0.349607, 0.149309,
		-0.282400, 0.368935, 0.885515,
		42.893917, 41.836102, 21.502802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373272, 41.334385, 20.821455>,  <43.091599, 41.577847, 20.882940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373272, 41.334385, 20.821455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429485, 40.938671, 20.805580>,  <42.463215, 40.701244, 20.796055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429485, 40.938671, 20.805580>,  <42.373272, 41.334385, 20.821455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429485, 40.938671, 20.805580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675000, -0.125060, 0.727142,
		-0.724310, -0.075399, -0.685339,
		0.140534, -0.989280, -0.039688,
		42.471645, 40.641888, 20.793674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618656, 41.039825, 20.858217>,  <42.373272, 41.334385, 20.821455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618656, 41.039825, 20.858217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857468, 40.732689, 20.951153>,  <42.000755, 40.548409, 21.006914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857468, 40.732689, 20.951153>,  <41.618656, 41.039825, 20.858217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857468, 40.732689, 20.951153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555897, -0.187171, 0.809905,
		-0.578389, -0.612693, -0.538585,
		0.597030, -0.767838, 0.232336,
		42.036575, 40.502338, 21.020853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173012, 40.538086, 20.983040>,  <41.618656, 41.039825, 20.858217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173012, 40.538086, 20.983040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510895, 40.440674, 21.173689>,  <41.713623, 40.382225, 21.288078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510895, 40.440674, 21.173689>,  <41.173012, 40.538086, 20.983040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510895, 40.440674, 21.173689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534952, -0.355196, 0.766591,
		-0.017397, -0.902511, -0.430314,
		0.844703, -0.243534, 0.476621,
		41.764305, 40.367615, 21.316675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131031, 39.850830, 21.122555>,  <41.173012, 40.538086, 20.983040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131031, 39.850830, 21.122555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397488, 39.995453, 21.383486>,  <41.557362, 40.082226, 21.540045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397488, 39.995453, 21.383486>,  <41.131031, 39.850830, 21.122555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397488, 39.995453, 21.383486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508753, -0.419280, 0.751914,
		0.545371, -0.832753, -0.095353,
		0.666139, 0.361561, 0.652329,
		41.597328, 40.103920, 21.579184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168377, 39.287918, 21.566484>,  <41.131031, 39.850830, 21.122555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168377, 39.287918, 21.566484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360947, 39.558273, 21.789698>,  <41.476486, 39.720486, 21.923626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360947, 39.558273, 21.789698>,  <41.168377, 39.287918, 21.566484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360947, 39.558273, 21.789698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322710, -0.455261, 0.829817,
		0.814918, -0.579575, -0.001056,
		0.481422, 0.675892, 0.558035,
		41.505375, 39.761040, 21.957108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517475, 38.955128, 22.084328>,  <41.168377, 39.287918, 21.566484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517475, 38.955128, 22.084328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454807, 39.318176, 22.240112>,  <41.417206, 39.536007, 22.333584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454807, 39.318176, 22.240112>,  <41.517475, 38.955128, 22.084328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454807, 39.318176, 22.240112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496622, -0.413248, 0.763278,
		0.853711, -0.073834, 0.515487,
		-0.156668, 0.907621, 0.389462,
		41.407806, 39.590462, 22.356951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523434, 38.810066, 22.805138>,  <41.517475, 38.955128, 22.084328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523434, 38.810066, 22.805138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360859, 39.175278, 22.791327>,  <41.263313, 39.394405, 22.783039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360859, 39.175278, 22.791327>,  <41.523434, 38.810066, 22.805138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360859, 39.175278, 22.791327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554051, -0.216238, 0.803908,
		0.726523, 0.345870, 0.593750,
		-0.406439, 0.913025, -0.034527,
		41.238926, 39.449184, 22.780968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518120, 38.962440, 23.495008>,  <41.523434, 38.810066, 22.805138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518120, 38.962440, 23.495008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256325, 39.205292, 23.314766>,  <41.099247, 39.351002, 23.206621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256325, 39.205292, 23.314766>,  <41.518120, 38.962440, 23.495008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256325, 39.205292, 23.314766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632807, -0.113711, 0.765915,
		0.413767, 0.786428, 0.458616,
		-0.654486, 0.607125, -0.450607,
		41.059978, 39.387428, 23.179585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299465, 39.352760, 24.011875>,  <41.518120, 38.962440, 23.495008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299465, 39.352760, 24.011875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993053, 39.397770, 23.758722>,  <40.809208, 39.424778, 23.606831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993053, 39.397770, 23.758722>,  <41.299465, 39.352760, 24.011875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993053, 39.397770, 23.758722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640024, -0.041940, 0.767210,
		0.059788, 0.992763, 0.104147,
		-0.766026, 0.112527, -0.632884,
		40.763245, 39.431526, 23.568857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908714, 39.763268, 24.337141>,  <41.299465, 39.352760, 24.011875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908714, 39.763268, 24.337141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666691, 39.567894, 24.085638>,  <40.521477, 39.450668, 23.934736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666691, 39.567894, 24.085638>,  <40.908714, 39.763268, 24.337141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666691, 39.567894, 24.085638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676051, -0.101952, 0.729767,
		-0.420546, 0.866624, -0.268520,
		-0.605058, -0.488434, -0.628758,
		40.485172, 39.421364, 23.897011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287643, 40.161957, 24.364506>,  <40.908714, 39.763268, 24.337141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287643, 40.161957, 24.364506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197350, 39.794922, 24.233610>,  <40.143173, 39.574703, 24.155073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197350, 39.794922, 24.233610>,  <40.287643, 40.161957, 24.364506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197350, 39.794922, 24.233610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717769, -0.070465, 0.692706,
		-0.658675, 0.391249, -0.642707,
		-0.225732, -0.917583, -0.327240,
		40.129631, 39.519646, 24.135439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521908, 40.137703, 24.465128>,  <40.287643, 40.161957, 24.364506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521908, 40.137703, 24.465128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619705, 39.753815, 24.409763>,  <39.678383, 39.523483, 24.376545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619705, 39.753815, 24.409763>,  <39.521908, 40.137703, 24.465128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619705, 39.753815, 24.409763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837017, -0.280952, 0.469541,
		-0.489515, 0.001052, -0.871994,
		0.244495, -0.959721, -0.138411,
		39.693054, 39.465897, 24.368240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938545, 39.818249, 24.219975>,  <39.521908, 40.137703, 24.465128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938545, 39.818249, 24.219975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150097, 39.510582, 24.363459>,  <39.277027, 39.325981, 24.449549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150097, 39.510582, 24.363459>,  <38.938545, 39.818249, 24.219975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150097, 39.510582, 24.363459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732613, -0.200387, 0.650479,
		-0.428445, -0.606819, -0.669481,
		0.528879, -0.769166, 0.358709,
		39.308762, 39.279831, 24.471071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523861, 39.202217, 24.277231>,  <38.938545, 39.818249, 24.219975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523861, 39.202217, 24.277231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820324, 39.155514, 24.541672>,  <38.998203, 39.127491, 24.700336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820324, 39.155514, 24.541672>,  <38.523861, 39.202217, 24.277231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820324, 39.155514, 24.541672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656037, -0.334981, 0.676316,
		0.142488, -0.934962, -0.324873,
		0.741156, -0.116762, 0.661101,
		39.042671, 39.120483, 24.740002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328781, 38.635963, 24.532139>,  <38.523861, 39.202217, 24.277231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328781, 38.635963, 24.532139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593555, 38.767986, 24.801332>,  <38.752419, 38.847198, 24.962849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593555, 38.767986, 24.801332>,  <38.328781, 38.635963, 24.532139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593555, 38.767986, 24.801332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514432, -0.452963, 0.728137,
		0.545163, -0.828183, -0.130040,
		0.661934, 0.330056, 0.672982,
		38.792137, 38.867004, 25.003227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568676, 38.030560, 25.006142>,  <38.328781, 38.635963, 24.532139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568676, 38.030560, 25.006142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618599, 38.378159, 25.197670>,  <38.648552, 38.586716, 25.312588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618599, 38.378159, 25.197670>,  <38.568676, 38.030560, 25.006142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618599, 38.378159, 25.197670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528702, -0.350123, 0.773232,
		0.839581, -0.349660, 0.415741,
		0.124808, 0.868995, 0.478823,
		38.656040, 38.638859, 25.341316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817757, 37.859680, 25.717987>,  <38.568676, 38.030560, 25.006142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817757, 37.859680, 25.717987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655872, 38.225128, 25.733532>,  <38.558743, 38.444397, 25.742859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655872, 38.225128, 25.733532>,  <38.817757, 37.859680, 25.717987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655872, 38.225128, 25.733532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499818, -0.256598, 0.827248,
		0.765759, 0.315376, 0.560492,
		-0.404715, 0.913617, 0.038862,
		38.534458, 38.499214, 25.745190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945908, 37.999420, 26.429770>,  <38.817757, 37.859680, 25.717987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945908, 37.999420, 26.429770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658382, 38.238510, 26.287767>,  <38.485867, 38.381966, 26.202566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658382, 38.238510, 26.287767>,  <38.945908, 37.999420, 26.429770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658382, 38.238510, 26.287767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533263, -0.146448, 0.833177,
		0.446024, 0.788209, 0.424015,
		-0.718814, 0.597728, -0.355003,
		38.442738, 38.417828, 26.181267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985153, 38.650764, 26.839132>,  <38.945908, 37.999420, 26.429770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985153, 38.650764, 26.839132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604176, 38.677673, 26.720261>,  <38.375587, 38.693817, 26.648937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604176, 38.677673, 26.720261>,  <38.985153, 38.650764, 26.839132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604176, 38.677673, 26.720261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289578, 0.103588, 0.951533,
		0.094795, 0.992343, -0.079182,
		-0.952449, 0.067271, -0.297180,
		38.318439, 38.697853, 26.631107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711735, 39.194767, 27.216948>,  <38.985153, 38.650764, 26.839132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711735, 39.194767, 27.216948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387215, 38.985519, 27.112534>,  <38.192501, 38.859970, 27.049885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387215, 38.985519, 27.112534>,  <38.711735, 39.194767, 27.216948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387215, 38.985519, 27.112534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380884, 0.134216, 0.914830,
		-0.443527, 0.841627, -0.308136,
		-0.811302, -0.523116, -0.261034,
		38.143826, 38.828587, 27.034224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177620, 39.589226, 27.523914>,  <38.711735, 39.194767, 27.216948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177620, 39.589226, 27.523914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014435, 39.227589, 27.473040>,  <37.916523, 39.010605, 27.442514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014435, 39.227589, 27.473040>,  <38.177620, 39.589226, 27.523914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014435, 39.227589, 27.473040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298667, 0.000512, 0.954357,
		-0.862764, 0.427331, -0.270233,
		-0.407965, -0.904095, -0.127188,
		37.892044, 38.956360, 27.434883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354469, 39.624187, 27.743713>,  <38.177620, 39.589226, 27.523914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354469, 39.624187, 27.743713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482250, 39.245293, 27.754229>,  <37.558918, 39.017956, 27.760538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482250, 39.245293, 27.754229>,  <37.354469, 39.624187, 27.743713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482250, 39.245293, 27.754229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402654, -0.110578, 0.908649,
		-0.857799, -0.300854, -0.416734,
		0.319452, -0.947238, 0.026287,
		37.578087, 38.961121, 27.762115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830162, 39.412113, 28.075752>,  <37.354469, 39.624187, 27.743713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830162, 39.412113, 28.075752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057533, 39.083149, 28.084957>,  <37.193954, 38.885769, 28.090481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057533, 39.083149, 28.084957>,  <36.830162, 39.412113, 28.075752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057533, 39.083149, 28.084957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525270, -0.341235, 0.779519,
		-0.633233, -0.455187, -0.625956,
		0.568425, -0.822413, 0.023014,
		37.228062, 38.836426, 28.091862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380943, 38.829739, 28.149000>,  <36.830162, 39.412113, 28.075752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380943, 38.829739, 28.149000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741421, 38.716251, 28.280056>,  <36.957706, 38.648159, 28.358688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741421, 38.716251, 28.280056>,  <36.380943, 38.829739, 28.149000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741421, 38.716251, 28.280056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406622, -0.291837, 0.865731,
		-0.150007, -0.913419, -0.378369,
		0.901197, -0.283719, 0.327639,
		37.011780, 38.631134, 28.378347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389786, 38.193623, 28.278294>,  <36.380943, 38.829739, 28.149000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389786, 38.193623, 28.278294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704479, 38.284451, 28.507898>,  <36.893295, 38.338947, 28.645660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704479, 38.284451, 28.507898>,  <36.389786, 38.193623, 28.278294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704479, 38.284451, 28.507898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440066, -0.445786, 0.779497,
		0.432883, -0.865861, -0.250792,
		0.786736, 0.227066, 0.574010,
		36.940498, 38.352570, 28.680101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534313, 37.597607, 28.687078>,  <36.389786, 38.193623, 28.278294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534313, 37.597607, 28.687078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697865, 37.910332, 28.875372>,  <36.795994, 38.097965, 28.988348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697865, 37.910332, 28.875372>,  <36.534313, 37.597607, 28.687078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697865, 37.910332, 28.875372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359176, -0.336329, 0.870561,
		0.838937, -0.525026, 0.143292,
		0.408874, 0.781812, 0.470735,
		36.820526, 38.144875, 29.016592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693176, 37.346050, 29.279564>,  <36.534313, 37.597607, 28.687078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693176, 37.346050, 29.279564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731136, 37.734451, 29.367344>,  <36.753910, 37.967491, 29.420012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731136, 37.734451, 29.367344>,  <36.693176, 37.346050, 29.279564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731136, 37.734451, 29.367344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427796, -0.159273, 0.889732,
		0.898880, -0.178311, 0.400275,
		0.094896, 0.970998, 0.219448,
		36.759605, 38.025749, 29.433178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843208, 37.261086, 29.931227>,  <36.693176, 37.346050, 29.279564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843208, 37.261086, 29.931227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708607, 37.633202, 29.872814>,  <36.627846, 37.856472, 29.837767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708607, 37.633202, 29.872814>,  <36.843208, 37.261086, 29.931227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708607, 37.633202, 29.872814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496204, -0.043370, 0.867122,
		0.800343, 0.364249, 0.476208,
		-0.336501, 0.930291, -0.146031,
		36.607655, 37.912289, 29.829004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037975, 37.678276, 30.519255>,  <36.843208, 37.261086, 29.931227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037975, 37.678276, 30.519255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718613, 37.847897, 30.348270>,  <36.526997, 37.949669, 30.245680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718613, 37.847897, 30.348270>,  <37.037975, 37.678276, 30.519255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718613, 37.847897, 30.348270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509719, -0.098103, 0.854730,
		0.320517, 0.900307, 0.294475,
		-0.798408, 0.424055, -0.427460,
		36.479092, 37.975113, 30.220032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702404, 38.084641, 31.079641>,  <37.037975, 37.678276, 30.519255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702404, 38.084641, 31.079641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407955, 38.083191, 30.808905>,  <36.231285, 38.082321, 30.646463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407955, 38.083191, 30.808905>,  <36.702404, 38.084641, 31.079641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407955, 38.083191, 30.808905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666391, -0.171229, 0.725674,
		-0.118526, 0.985225, 0.123629,
		-0.736121, -0.003626, -0.676840,
		36.187119, 38.082104, 30.605852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189205, 38.426197, 31.422544>,  <36.702404, 38.084641, 31.079641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189205, 38.426197, 31.422544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994118, 38.235123, 31.130257>,  <35.877064, 38.120480, 30.954884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994118, 38.235123, 31.130257>,  <36.189205, 38.426197, 31.422544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994118, 38.235123, 31.130257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709384, -0.271006, 0.650638,
		-0.508828, 0.835688, -0.206687,
		-0.487717, -0.477683, -0.730719,
		35.847801, 38.091816, 30.911041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517200, 38.550072, 31.570185>,  <36.189205, 38.426197, 31.422544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517200, 38.550072, 31.570185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511429, 38.234497, 31.324461>,  <35.507965, 38.045155, 31.177027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511429, 38.234497, 31.324461>,  <35.517200, 38.550072, 31.570185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511429, 38.234497, 31.324461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752538, -0.395972, 0.526207,
		-0.658391, 0.469886, -0.587987,
		-0.014431, -0.788932, -0.614311,
		35.507099, 37.997818, 31.140167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884163, 38.476463, 31.341061>,  <35.517200, 38.550072, 31.570185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884163, 38.476463, 31.341061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993938, 38.101318, 31.256109>,  <35.059803, 37.876232, 31.205139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993938, 38.101318, 31.256109>,  <34.884163, 38.476463, 31.341061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993938, 38.101318, 31.256109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892772, -0.330558, 0.306087,
		-0.357270, 0.105606, -0.928011,
		0.274437, -0.937859, -0.212380,
		35.076271, 37.819962, 31.192396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328636, 38.111732, 30.852726>,  <34.884163, 38.476463, 31.341061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328636, 38.111732, 30.852726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546654, 37.846024, 31.057343>,  <34.677464, 37.686600, 31.180113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546654, 37.846024, 31.057343>,  <34.328636, 38.111732, 30.852726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546654, 37.846024, 31.057343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838368, -0.437872, 0.324664,
		0.008325, -0.605816, -0.795561,
		0.545041, -0.664270, 0.511542,
		34.710167, 37.646744, 31.210806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112312, 37.503746, 30.575064>,  <34.328636, 38.111732, 30.852726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112312, 37.503746, 30.575064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274315, 37.405579, 30.927366>,  <34.371517, 37.346676, 31.138748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274315, 37.405579, 30.927366>,  <34.112312, 37.503746, 30.575064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274315, 37.405579, 30.927366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783484, -0.589705, 0.195960,
		0.471295, -0.769426, -0.431120,
		0.405010, -0.245420, 0.880758,
		34.395817, 37.331951, 31.191593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091972, 36.712860, 30.626484>,  <34.112312, 37.503746, 30.575064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091972, 36.712860, 30.626484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163414, 36.847786, 30.996202>,  <34.206280, 36.928741, 31.218033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163414, 36.847786, 30.996202>,  <34.091972, 36.712860, 30.626484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163414, 36.847786, 30.996202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577017, -0.724994, 0.376078,
		0.796964, -0.600504, 0.065146,
		0.178606, 0.337310, 0.924295,
		34.216995, 36.948978, 31.273491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125103, 36.166012, 30.989079>,  <34.091972, 36.712860, 30.626484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125103, 36.166012, 30.989079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075253, 36.420719, 31.293446>,  <34.045341, 36.573544, 31.476067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075253, 36.420719, 31.293446>,  <34.125103, 36.166012, 30.989079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075253, 36.420719, 31.293446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533208, -0.689728, 0.489861,
		0.836754, -0.344677, 0.425489,
		-0.124628, 0.636767, 0.760917,
		34.037865, 36.611748, 31.521721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441658, 35.889870, 31.649723>,  <34.125103, 36.166012, 30.989079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441658, 35.889870, 31.649723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147579, 36.143448, 31.745729>,  <33.971134, 36.295593, 31.803333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147579, 36.143448, 31.745729>,  <34.441658, 35.889870, 31.649723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147579, 36.143448, 31.745729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386291, -0.682783, 0.620150,
		0.557017, 0.363216, 0.746864,
		-0.735195, 0.633941, 0.240015,
		33.927021, 36.333630, 31.817734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378468, 35.950058, 32.474289>,  <34.441658, 35.889870, 31.649723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378468, 35.950058, 32.474289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022526, 36.042240, 32.316784>,  <33.808960, 36.097549, 32.222279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022526, 36.042240, 32.316784>,  <34.378468, 35.950058, 32.474289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022526, 36.042240, 32.316784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452927, -0.550186, 0.701536,
		-0.054969, 0.802611, 0.593965,
		-0.889852, 0.230459, -0.393767,
		33.755569, 36.111378, 32.198654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070702, 36.331619, 32.559444>,  <34.378468, 35.950058, 32.474289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070702, 36.331619, 32.559444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329361, 36.186012, 32.827576>,  <35.484554, 36.098648, 32.988453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329361, 36.186012, 32.827576>,  <35.070702, 36.331619, 32.559444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329361, 36.186012, 32.827576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640789, 0.735972, -0.218485,
		-0.413811, 0.570821, 0.709171,
		0.646646, -0.364017, 0.670329,
		35.523354, 36.076809, 33.028675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293053, 36.867821, 33.035683>,  <35.070702, 36.331619, 32.559444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293053, 36.867821, 33.035683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584080, 36.593781, 33.049980>,  <35.758698, 36.429356, 33.058559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584080, 36.593781, 33.049980>,  <35.293053, 36.867821, 33.035683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584080, 36.593781, 33.049980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636944, 0.655238, -0.406159,
		0.254836, 0.318279, 0.913103,
		0.727572, -0.685100, 0.035747,
		35.802353, 36.388252, 33.060703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777393, 37.052212, 33.587502>,  <35.293053, 36.867821, 33.035683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777393, 37.052212, 33.587502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989471, 36.811562, 33.348522>,  <36.116718, 36.667171, 33.205135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989471, 36.811562, 33.348522>,  <35.777393, 37.052212, 33.587502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989471, 36.811562, 33.348522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700232, 0.708021, -0.091555,
		0.478086, -0.369809, 0.796665,
		0.530198, -0.601621, -0.597446,
		36.148529, 36.631077, 33.169289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490051, 37.260654, 33.638493>,  <35.777393, 37.052212, 33.587502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490051, 37.260654, 33.638493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516129, 37.013100, 33.325386>,  <36.531776, 36.864567, 33.137524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516129, 37.013100, 33.325386>,  <36.490051, 37.260654, 33.638493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516129, 37.013100, 33.325386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794245, 0.507062, -0.334758,
		0.604090, -0.599885, 0.524608,
		0.065192, -0.618891, -0.782767,
		36.535686, 36.827431, 33.090557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212135, 37.050438, 33.599384>,  <36.490051, 37.260654, 33.638493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212135, 37.050438, 33.599384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042908, 37.019672, 33.238255>,  <36.941372, 37.001213, 33.021576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042908, 37.019672, 33.238255>,  <37.212135, 37.050438, 33.599384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042908, 37.019672, 33.238255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755722, 0.519763, -0.398410,
		0.499899, -0.850841, -0.161771,
		-0.423066, -0.076911, -0.902828,
		36.915989, 36.996597, 32.967407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600216, 36.643887, 33.244164>,  <37.212135, 37.050438, 33.599384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600216, 36.643887, 33.244164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396816, 36.845970, 32.965256>,  <37.274776, 36.967220, 32.797909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396816, 36.845970, 32.965256>,  <37.600216, 36.643887, 33.244164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396816, 36.845970, 32.965256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860772, 0.277256, -0.426850,
		-0.022326, -0.817246, -0.575856,
		-0.508501, 0.505211, -0.697272,
		37.244267, 36.997532, 32.756073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912224, 36.534760, 32.732494>,  <37.600216, 36.643887, 33.244164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912224, 36.534760, 32.732494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712898, 36.839550, 32.567047>,  <37.593304, 37.022423, 32.467781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712898, 36.839550, 32.567047>,  <37.912224, 36.534760, 32.732494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712898, 36.839550, 32.567047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719265, 0.096959, -0.687937,
		-0.484086, -0.640309, -0.596377,
		-0.498316, 0.761974, -0.413615,
		37.563404, 37.068142, 32.442963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087257, 36.578091, 31.958887>,  <37.912224, 36.534760, 32.732494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087257, 36.578091, 31.958887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950916, 36.948273, 32.025047>,  <37.869110, 37.170380, 32.064743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950916, 36.948273, 32.025047>,  <38.087257, 36.578091, 31.958887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950916, 36.948273, 32.025047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576920, 0.344820, -0.740447,
		-0.742282, -0.156962, -0.651445,
		-0.340853, 0.925452, 0.165399,
		37.848660, 37.225910, 32.074669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848469, 36.845459, 31.314093>,  <38.087257, 36.578091, 31.958887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848469, 36.845459, 31.314093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930126, 37.161499, 31.545288>,  <37.979122, 37.351124, 31.684006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930126, 37.161499, 31.545288>,  <37.848469, 36.845459, 31.314093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930126, 37.161499, 31.545288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338855, 0.496891, -0.798922,
		-0.918423, 0.358952, -0.166289,
		0.204147, 0.790097, 0.577989,
		37.991371, 37.398529, 31.718685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762138, 37.341152, 30.804663>,  <37.848469, 36.845459, 31.314093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762138, 37.341152, 30.804663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933556, 37.541786, 31.105265>,  <38.036407, 37.662167, 31.285625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933556, 37.541786, 31.105265>,  <37.762138, 37.341152, 30.804663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933556, 37.541786, 31.105265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547027, 0.517950, -0.657640,
		-0.719106, 0.692921, -0.052418,
		0.428542, 0.501587, 0.751507,
		38.062119, 37.692261, 31.330717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706932, 38.099617, 30.754646>,  <37.762138, 37.341152, 30.804663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706932, 38.099617, 30.754646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033642, 38.057148, 30.981489>,  <38.229668, 38.031666, 31.117596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033642, 38.057148, 30.981489>,  <37.706932, 38.099617, 30.754646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033642, 38.057148, 30.981489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494611, 0.634926, -0.593489,
		-0.297058, 0.765243, 0.571104,
		0.816772, -0.106173, 0.567107,
		38.278675, 38.025295, 31.151621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970371, 38.741276, 30.754612>,  <37.706932, 38.099617, 30.754646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970371, 38.741276, 30.754612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276684, 38.496464, 30.833603>,  <38.460472, 38.349579, 30.880997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276684, 38.496464, 30.833603>,  <37.970371, 38.741276, 30.754612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276684, 38.496464, 30.833603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583161, 0.531418, -0.614426,
		0.271103, 0.585678, 0.763861,
		0.765785, -0.612026, 0.197476,
		38.506420, 38.312855, 30.892845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481228, 39.137169, 30.777557>,  <37.970371, 38.741276, 30.754612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481228, 39.137169, 30.777557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665501, 38.789078, 30.707722>,  <38.776066, 38.580223, 30.665819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665501, 38.789078, 30.707722>,  <38.481228, 39.137169, 30.777557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665501, 38.789078, 30.707722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548323, 0.433723, -0.715001,
		0.697935, 0.233657, 0.676973,
		0.460683, -0.870224, -0.174591,
		38.803707, 38.528011, 30.655344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141636, 39.329266, 30.689539>,  <38.481228, 39.137169, 30.777557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141636, 39.329266, 30.689539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188332, 38.952961, 30.562202>,  <39.216351, 38.727180, 30.485800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188332, 38.952961, 30.562202>,  <39.141636, 39.329266, 30.689539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188332, 38.952961, 30.562202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754106, 0.292549, -0.587996,
		0.646295, -0.171422, 0.743584,
		0.116740, -0.940760, -0.318343,
		39.223354, 38.670734, 30.466700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788860, 39.164261, 30.756788>,  <39.141636, 39.329266, 30.689539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788860, 39.164261, 30.756788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647572, 38.940704, 30.456688>,  <39.562798, 38.806572, 30.276627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647572, 38.940704, 30.456688>,  <39.788860, 39.164261, 30.756788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647572, 38.940704, 30.456688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781794, 0.264130, -0.564830,
		0.513841, -0.786054, 0.343638,
		-0.353222, -0.558887, -0.750253,
		39.541603, 38.773037, 30.231611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391396, 38.869755, 30.360720>,  <39.788860, 39.164261, 30.756788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391396, 38.869755, 30.360720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109615, 38.763355, 30.097511>,  <39.940548, 38.699516, 29.939587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109615, 38.763355, 30.097511>,  <40.391396, 38.869755, 30.360720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109615, 38.763355, 30.097511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665486, 0.074748, -0.742658,
		0.246732, -0.961071, 0.124362,
		-0.704451, -0.265999, -0.658022,
		39.898281, 38.683556, 29.900105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750710, 38.418762, 29.813545>,  <40.391396, 38.869755, 30.360720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750710, 38.418762, 29.813545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404465, 38.507515, 29.633995>,  <40.196716, 38.560764, 29.526266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404465, 38.507515, 29.633995>,  <40.750710, 38.418762, 29.813545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404465, 38.507515, 29.633995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445750, -0.066897, -0.892654,
		-0.228090, -0.972777, -0.040996,
		-0.865611, 0.221879, -0.448873,
		40.144783, 38.574078, 29.499332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579144, 37.992344, 29.176918>,  <40.750710, 38.418762, 29.813545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579144, 37.992344, 29.176918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341274, 38.311089, 29.134237>,  <40.198555, 38.502335, 29.108629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341274, 38.311089, 29.134237>,  <40.579144, 37.992344, 29.176918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341274, 38.311089, 29.134237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249804, 0.056987, -0.966618,
		-0.764177, -0.601472, -0.232947,
		-0.594669, 0.796859, -0.106702,
		40.162872, 38.550148, 29.102226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199589, 37.946388, 28.547510>,  <40.579144, 37.992344, 29.176918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199589, 37.946388, 28.547510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202484, 38.336456, 28.636051>,  <40.204224, 38.570496, 28.689175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202484, 38.336456, 28.636051>,  <40.199589, 37.946388, 28.547510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202484, 38.336456, 28.636051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128084, 0.218629, -0.967365,
		-0.991737, 0.035358, -0.123320,
		0.007242, 0.975167, 0.221351,
		40.204659, 38.629005, 28.702457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637665, 38.283546, 28.173365>,  <40.199589, 37.946388, 28.547510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637665, 38.283546, 28.173365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926727, 38.541195, 28.273674>,  <40.100163, 38.695782, 28.333860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926727, 38.541195, 28.273674>,  <39.637665, 38.283546, 28.173365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926727, 38.541195, 28.273674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135215, 0.224059, -0.965150,
		-0.677857, 0.731376, 0.074823,
		0.722653, 0.644116, 0.250774,
		40.143524, 38.734428, 28.348906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536037, 38.902660, 27.714151>,  <39.637665, 38.283546, 28.173365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536037, 38.902660, 27.714151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916771, 38.929638, 27.833788>,  <40.145210, 38.945824, 27.905571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916771, 38.929638, 27.833788>,  <39.536037, 38.902660, 27.714151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916771, 38.929638, 27.833788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296781, 0.042271, -0.954010,
		-0.076984, 0.996827, 0.020220,
		0.951838, 0.067442, 0.299093,
		40.202324, 38.949871, 27.923515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821274, 39.302040, 27.180571>,  <39.536037, 38.902660, 27.714151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821274, 39.302040, 27.180571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158730, 39.151859, 27.334095>,  <40.361202, 39.061749, 27.426208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158730, 39.151859, 27.334095>,  <39.821274, 39.302040, 27.180571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158730, 39.151859, 27.334095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456714, 0.125977, -0.880649,
		0.282294, 0.918239, 0.277755,
		0.843636, -0.375457, 0.383810,
		40.411819, 39.039223, 27.449238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314816, 39.596329, 26.825678>,  <39.821274, 39.302040, 27.180571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314816, 39.596329, 26.825678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521534, 39.294746, 26.987896>,  <40.645565, 39.113796, 27.085226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521534, 39.294746, 26.987896>,  <40.314816, 39.596329, 26.825678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521534, 39.294746, 26.987896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475451, -0.141173, -0.868341,
		0.711946, 0.641572, 0.285513,
		0.516797, -0.753959, 0.405544,
		40.676575, 39.068558, 27.109560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023697, 39.784424, 26.677750>,  <40.314816, 39.596329, 26.825678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023697, 39.784424, 26.677750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977745, 39.392551, 26.743511>,  <40.950172, 39.157429, 26.782969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977745, 39.392551, 26.743511>,  <41.023697, 39.784424, 26.677750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977745, 39.392551, 26.743511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338061, -0.194177, -0.920875,
		0.934086, -0.050213, 0.353499,
		-0.114881, -0.979680, 0.164403,
		40.943279, 39.098648, 26.792831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657978, 39.503048, 26.724060>,  <41.023697, 39.784424, 26.677750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657978, 39.503048, 26.724060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463673, 39.162678, 26.644096>,  <41.347092, 38.958454, 26.596119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463673, 39.162678, 26.644096>,  <41.657978, 39.503048, 26.724060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463673, 39.162678, 26.644096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571774, -0.136344, -0.809002,
		0.661144, -0.507284, 0.552768,
		-0.485760, -0.850925, -0.199909,
		41.317944, 38.907402, 26.584124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143291, 38.995766, 26.471664>,  <41.657978, 39.503048, 26.724060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143291, 38.995766, 26.471664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795315, 38.844151, 26.345469>,  <41.586529, 38.753181, 26.269751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795315, 38.844151, 26.345469>,  <42.143291, 38.995766, 26.471664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795315, 38.844151, 26.345469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442913, -0.319182, -0.837825,
		0.216868, -0.868593, 0.445550,
		-0.869940, -0.379037, -0.315491,
		41.534332, 38.730438, 26.250820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291286, 38.342754, 26.270790>,  <42.143291, 38.995766, 26.471664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291286, 38.342754, 26.270790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947975, 38.413109, 26.077946>,  <41.741989, 38.455322, 25.962240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947975, 38.413109, 26.077946>,  <42.291286, 38.342754, 26.270790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947975, 38.413109, 26.077946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385244, -0.399832, -0.831698,
		-0.339044, -0.899555, 0.275408,
		-0.858275, 0.175883, -0.482108,
		41.690495, 38.465874, 25.933313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101383, 37.691406, 26.062443>,  <42.291286, 38.342754, 26.270790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101383, 37.691406, 26.062443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923183, 37.954475, 25.819464>,  <41.816265, 38.112316, 25.673677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923183, 37.954475, 25.819464>,  <42.101383, 37.691406, 26.062443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923183, 37.954475, 25.819464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364886, -0.486205, -0.794017,
		-0.817550, -0.575383, -0.023372,
		-0.445500, 0.657677, -0.607446,
		41.789532, 38.151779, 25.637230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844078, 37.312115, 25.395670>,  <42.101383, 37.691406, 26.062443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844078, 37.312115, 25.395670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881527, 37.700474, 25.307487>,  <41.903996, 37.933487, 25.254578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881527, 37.700474, 25.307487>,  <41.844078, 37.312115, 25.395670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881527, 37.700474, 25.307487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510507, -0.236917, -0.826591,
		-0.854762, -0.035162, -0.517828,
		0.093618, 0.970893, -0.220458,
		41.909611, 37.991741, 25.241350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728355, 37.289562, 24.620825>,  <41.844078, 37.312115, 25.395670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728355, 37.289562, 24.620825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889572, 37.646328, 24.702845>,  <41.986301, 37.860386, 24.752056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889572, 37.646328, 24.702845>,  <41.728355, 37.289562, 24.620825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889572, 37.646328, 24.702845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480881, -0.015763, -0.876644,
		-0.778660, 0.451928, -0.435258,
		0.403041, 0.891915, 0.205050,
		42.010483, 37.913902, 24.764360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673920, 37.654839, 23.959175>,  <41.728355, 37.289562, 24.620825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673920, 37.654839, 23.959175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947056, 37.866123, 24.161055>,  <42.110939, 37.992893, 24.282183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947056, 37.866123, 24.161055>,  <41.673920, 37.654839, 23.959175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947056, 37.866123, 24.161055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609803, -0.031649, -0.791921,
		-0.402326, 0.848525, -0.343714,
		0.682843, 0.528208, 0.504700,
		42.151909, 38.024586, 24.312464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823708, 38.219040, 23.482098>,  <41.673920, 37.654839, 23.959175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823708, 38.219040, 23.482098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120682, 38.156151, 23.742579>,  <42.298866, 38.118416, 23.898867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120682, 38.156151, 23.742579>,  <41.823708, 38.219040, 23.482098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120682, 38.156151, 23.742579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640916, -0.116197, -0.758765,
		0.194962, 0.980704, 0.014496,
		0.742439, -0.157221, 0.651203,
		42.343414, 38.108986, 23.937939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430504, 38.692535, 23.284765>,  <41.823708, 38.219040, 23.482098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430504, 38.692535, 23.284765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538738, 38.367443, 23.491167>,  <42.603680, 38.172390, 23.615007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538738, 38.367443, 23.491167>,  <42.430504, 38.692535, 23.284765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538738, 38.367443, 23.491167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728469, -0.177564, -0.661667,
		0.629379, 0.554928, 0.544001,
		0.270582, -0.812728, 0.516003,
		42.619911, 38.123627, 23.645967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166611, 38.728840, 23.405462>,  <42.430504, 38.692535, 23.284765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166611, 38.728840, 23.405462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104343, 38.339863, 23.474874>,  <43.066982, 38.106476, 23.516521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104343, 38.339863, 23.474874>,  <43.166611, 38.728840, 23.405462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104343, 38.339863, 23.474874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803339, -0.226857, -0.550621,
		0.574816, 0.053686, 0.816520,
		-0.155673, -0.972447, 0.173529,
		43.057640, 38.048130, 23.526934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.813866, 38.453773, 23.514244>,  <43.166611, 38.728840, 23.405462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.813866, 38.453773, 23.514244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587631, 38.131748, 23.442698>,  <43.451893, 37.938534, 23.399769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587631, 38.131748, 23.442698>,  <43.813866, 38.453773, 23.514244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587631, 38.131748, 23.442698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756131, -0.419640, -0.502162,
		0.329212, -0.419261, 0.846073,
		-0.565583, -0.805060, -0.178866,
		43.417957, 37.890228, 23.389038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306679, 37.847038, 23.595806>,  <43.813866, 38.453773, 23.514244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306679, 37.847038, 23.595806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988350, 37.718914, 23.390253>,  <43.797352, 37.642040, 23.266922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.988350, 37.718914, 23.390253>,  <44.306679, 37.847038, 23.595806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988350, 37.718914, 23.390253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572120, -0.675748, -0.464805,
		-0.198371, -0.663902, 0.721029,
		-0.795819, -0.320311, -0.513881,
		43.749603, 37.622822, 23.236088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300312, 37.148895, 23.673338>,  <44.306679, 37.847038, 23.595806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300312, 37.148895, 23.673338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087158, 37.223751, 23.343245>,  <43.959267, 37.268665, 23.145187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087158, 37.223751, 23.343245>,  <44.300312, 37.148895, 23.673338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087158, 37.223751, 23.343245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359081, -0.833066, -0.420787,
		-0.766220, -0.520558, 0.376732,
		-0.532887, 0.187138, -0.825234,
		43.927292, 37.279892, 23.095675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771484, 36.597065, 23.426468>,  <44.300312, 37.148895, 23.673338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771484, 36.597065, 23.426468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953144, 36.807232, 23.138668>,  <44.062141, 36.933334, 22.965988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953144, 36.807232, 23.138668>,  <43.771484, 36.597065, 23.426468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953144, 36.807232, 23.138668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229406, -0.849321, -0.475422,
		-0.860883, 0.050855, -0.506255,
		0.454150, 0.525421, -0.719500,
		44.089390, 36.964859, 22.922817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572735, 36.202316, 22.874151>,  <43.771484, 36.597065, 23.426468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572735, 36.202316, 22.874151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900555, 36.407974, 22.772964>,  <44.097248, 36.531368, 22.712252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900555, 36.407974, 22.772964>,  <43.572735, 36.202316, 22.874151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900555, 36.407974, 22.772964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367238, -0.810182, -0.456883,
		-0.439853, 0.281540, -0.852799,
		0.819552, 0.514141, -0.252969,
		44.146420, 36.562218, 22.697073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691093, 35.744930, 22.283686>,  <43.572735, 36.202316, 22.874151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691093, 35.744930, 22.283686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.794128, 35.399265, 22.456600>,  <43.855949, 35.191868, 22.560349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.794128, 35.399265, 22.456600>,  <43.691093, 35.744930, 22.283686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.794128, 35.399265, 22.456600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778856, 0.079086, 0.622197,
		-0.571867, -0.496959, -0.652687,
		0.257588, -0.864163, 0.432286,
		43.871407, 35.140015, 22.586287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077618, 35.449825, 22.334061>,  <43.691093, 35.744930, 22.283686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077618, 35.449825, 22.334061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320316, 35.251968, 22.582956>,  <43.465935, 35.133255, 22.732294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320316, 35.251968, 22.582956>,  <43.077618, 35.449825, 22.334061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320316, 35.251968, 22.582956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728782, -0.033615, 0.683920,
		-0.317382, -0.868444, -0.380885,
		0.606750, -0.494646, 0.622237,
		43.502342, 35.103573, 22.769627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.696880, 34.900238, 22.638725>,  <43.077618, 35.449825, 22.334061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.696880, 34.900238, 22.638725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000343, 34.969681, 22.889898>,  <43.182423, 35.011345, 23.040602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000343, 34.969681, 22.889898>,  <42.696880, 34.900238, 22.638725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000343, 34.969681, 22.889898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630566, -0.046643, 0.774733,
		0.163785, -0.983711, 0.074082,
		0.758658, 0.173604, 0.627933,
		43.227940, 35.021763, 23.078278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631710, 34.313805, 23.089184>,  <42.696880, 34.900238, 22.638725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631710, 34.313805, 23.089184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812901, 34.634174, 23.245817>,  <42.921616, 34.826397, 23.339798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812901, 34.634174, 23.245817>,  <42.631710, 34.313805, 23.089184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812901, 34.634174, 23.245817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662328, 0.008306, 0.749168,
		0.596773, -0.598710, 0.534236,
		0.452972, 0.800923, 0.391586,
		42.948792, 34.874451, 23.363293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802349, 34.185383, 23.876534>,  <42.631710, 34.313805, 23.089184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802349, 34.185383, 23.876534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797268, 34.582954, 23.832808>,  <42.794220, 34.821495, 23.806572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797268, 34.582954, 23.832808>,  <42.802349, 34.185383, 23.876534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797268, 34.582954, 23.832808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401077, 0.095077, 0.911097,
		0.915956, 0.055421, 0.397433,
		-0.012707, 0.993926, -0.109315,
		42.793457, 34.881134, 23.800013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937824, 34.375191, 24.557020>,  <42.802349, 34.185383, 23.876534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937824, 34.375191, 24.557020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819290, 34.713490, 24.379530>,  <42.748169, 34.916470, 24.273035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819290, 34.713490, 24.379530>,  <42.937824, 34.375191, 24.557020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819290, 34.713490, 24.379530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450248, 0.286022, 0.845853,
		0.842297, 0.450440, 0.296041,
		-0.296332, 0.845751, -0.443725,
		42.730392, 34.967216, 24.246412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063385, 34.879974, 25.038706>,  <42.937824, 34.375191, 24.557020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063385, 34.879974, 25.038706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774448, 35.044701, 24.816486>,  <42.601086, 35.143536, 24.683155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774448, 35.044701, 24.816486>,  <43.063385, 34.879974, 25.038706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774448, 35.044701, 24.816486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569790, 0.100804, 0.815584,
		0.391873, 0.905674, 0.161835,
		-0.722339, 0.411818, -0.555547,
		42.557747, 35.168247, 24.649822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956890, 35.594337, 25.235016>,  <43.063385, 34.879974, 25.038706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956890, 35.594337, 25.235016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617126, 35.495968, 25.048244>,  <42.413269, 35.436947, 24.936182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617126, 35.495968, 25.048244>,  <42.956890, 35.594337, 25.235016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617126, 35.495968, 25.048244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513832, 0.183663, 0.838001,
		-0.120324, 0.951730, -0.282367,
		-0.849411, -0.245921, -0.466930,
		42.362305, 35.422192, 24.908165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417500, 36.142239, 25.266010>,  <42.956890, 35.594337, 25.235016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417500, 36.142239, 25.266010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223480, 35.801632, 25.186363>,  <42.107067, 35.597267, 25.138575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223480, 35.801632, 25.186363>,  <42.417500, 36.142239, 25.266010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223480, 35.801632, 25.186363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775953, 0.314087, 0.547034,
		-0.403267, 0.419845, -0.813084,
		-0.485048, -0.851516, -0.199119,
		42.077965, 35.546177, 25.126627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794830, 36.381153, 25.336060>,  <42.417500, 36.142239, 25.266010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794830, 36.381153, 25.336060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738342, 35.985489, 25.319942>,  <41.704449, 35.748093, 25.310272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738342, 35.985489, 25.319942>,  <41.794830, 36.381153, 25.336060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738342, 35.985489, 25.319942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831301, 0.096384, 0.547402,
		-0.537584, 0.110798, -0.835899,
		-0.141219, -0.989158, -0.040291,
		41.695976, 35.688740, 25.307856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068909, 36.256889, 25.075287>,  <41.794830, 36.381153, 25.336060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068909, 36.256889, 25.075287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213612, 35.947552, 25.283546>,  <41.300434, 35.761951, 25.408503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213612, 35.947552, 25.283546>,  <41.068909, 36.256889, 25.075287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213612, 35.947552, 25.283546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735786, 0.106112, 0.668849,
		-0.572494, -0.625049, -0.530626,
		0.361758, -0.773340, 0.520651,
		41.322140, 35.715549, 25.439741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498249, 35.910610, 25.390858>,  <41.068909, 36.256889, 25.075287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498249, 35.910610, 25.390858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813725, 35.792027, 25.606297>,  <41.003010, 35.720879, 25.735559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813725, 35.792027, 25.606297>,  <40.498249, 35.910610, 25.390858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813725, 35.792027, 25.606297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551034, 0.047648, 0.833121,
		-0.272649, -0.953857, -0.125779,
		0.788685, -0.296458, 0.538599,
		41.050331, 35.703091, 25.767876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178947, 35.553677, 25.959461>,  <40.498249, 35.910610, 25.390858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178947, 35.553677, 25.959461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557533, 35.624680, 26.067316>,  <40.784683, 35.667282, 26.132029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557533, 35.624680, 26.067316>,  <40.178947, 35.553677, 25.959461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557533, 35.624680, 26.067316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292997, 0.121708, 0.948335,
		0.135534, -0.976562, 0.167205,
		0.946458, 0.177522, 0.269634,
		40.841473, 35.677933, 26.148207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231373, 35.192699, 26.525337>,  <40.178947, 35.553677, 25.959461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231373, 35.192699, 26.525337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526283, 35.461769, 26.550409>,  <40.703228, 35.623211, 26.565453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526283, 35.461769, 26.550409>,  <40.231373, 35.192699, 26.525337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526283, 35.461769, 26.550409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156641, 0.079952, 0.984414,
		0.657183, -0.735602, 0.164315,
		0.737275, 0.672679, 0.062682,
		40.747467, 35.663574, 26.569214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696758, 35.019150, 27.099703>,  <40.231373, 35.192699, 26.525337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696758, 35.019150, 27.099703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726139, 35.414421, 27.045881>,  <40.743767, 35.651585, 27.013588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726139, 35.414421, 27.045881>,  <40.696758, 35.019150, 27.099703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726139, 35.414421, 27.045881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144922, 0.144064, 0.978899,
		0.986713, -0.052406, 0.153791,
		0.073456, 0.988180, -0.134555,
		40.748177, 35.710876, 27.005514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140587, 35.247959, 27.684258>,  <40.696758, 35.019150, 27.099703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140587, 35.247959, 27.684258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948467, 35.569717, 27.544394>,  <40.833195, 35.762772, 27.460476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948467, 35.569717, 27.544394>,  <41.140587, 35.247959, 27.684258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948467, 35.569717, 27.544394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222317, 0.273985, 0.935686,
		0.848464, 0.527141, 0.047238,
		-0.480295, 0.804397, -0.349659,
		40.804379, 35.811035, 27.439495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567028, 35.869579, 28.013144>,  <41.140587, 35.247959, 27.684258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567028, 35.869579, 28.013144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202415, 35.993362, 27.904819>,  <40.983646, 36.067635, 27.839825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202415, 35.993362, 27.904819>,  <41.567028, 35.869579, 28.013144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202415, 35.993362, 27.904819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185718, 0.277759, 0.942528,
		0.366894, 0.909442, -0.195715,
		-0.911536, 0.309460, -0.270808,
		40.928955, 36.086201, 27.823578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374104, 36.397324, 28.555958>,  <41.567028, 35.869579, 28.013144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374104, 36.397324, 28.555958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023266, 36.308949, 28.385363>,  <40.812763, 36.255924, 28.283005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023266, 36.308949, 28.385363>,  <41.374104, 36.397324, 28.555958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023266, 36.308949, 28.385363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474532, 0.261182, 0.840597,
		-0.074328, 0.939665, -0.333923,
		-0.877094, -0.220937, -0.426489,
		40.760139, 36.242668, 28.257416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990486, 37.049992, 28.563705>,  <41.374104, 36.397324, 28.555958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990486, 37.049992, 28.563705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755993, 36.726543, 28.543833>,  <40.615299, 36.532475, 28.531908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755993, 36.726543, 28.543833>,  <40.990486, 37.049992, 28.563705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755993, 36.726543, 28.543833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439074, 0.265581, 0.858301,
		-0.680845, 0.524975, -0.510735,
		-0.586229, -0.808621, -0.049683,
		40.580124, 36.483955, 28.528929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369228, 37.195560, 28.862600>,  <40.990486, 37.049992, 28.563705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369228, 37.195560, 28.862600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374435, 36.795601, 28.864859>,  <40.377560, 36.555626, 28.866213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374435, 36.795601, 28.864859>,  <40.369228, 37.195560, 28.862600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374435, 36.795601, 28.864859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256412, 0.002118, 0.966565,
		-0.966480, -0.014026, -0.256359,
		0.013014, -0.999899, 0.005644,
		40.378338, 36.495632, 28.866552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911930, 37.057896, 29.345469>,  <40.369228, 37.195560, 28.862600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911930, 37.057896, 29.345469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104458, 36.711765, 29.289549>,  <40.219975, 36.504089, 29.255997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104458, 36.711765, 29.289549>,  <39.911930, 37.057896, 29.345469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104458, 36.711765, 29.289549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054928, -0.188953, 0.980449,
		-0.874821, -0.464233, -0.138478,
		0.481322, -0.865323, -0.139800,
		40.248856, 36.452168, 29.247608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417080, 36.512157, 29.475374>,  <39.911930, 37.057896, 29.345469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417080, 36.512157, 29.475374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798317, 36.405190, 29.532093>,  <40.027058, 36.341007, 29.566124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798317, 36.405190, 29.532093>,  <39.417080, 36.512157, 29.475374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798317, 36.405190, 29.532093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197058, -0.192602, 0.961287,
		-0.229769, -0.944131, -0.236267,
		0.953087, -0.267433, 0.141795,
		40.084244, 36.324963, 29.574633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298500, 35.892326, 29.848881>,  <39.417080, 36.512157, 29.475374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298500, 35.892326, 29.848881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681862, 35.983864, 29.917107>,  <39.911880, 36.038788, 29.958042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681862, 35.983864, 29.917107>,  <39.298500, 35.892326, 29.848881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681862, 35.983864, 29.917107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102919, -0.280295, 0.954381,
		0.266211, -0.932237, -0.245084,
		0.958405, 0.228843, 0.170563,
		39.969383, 36.052517, 29.968275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684258, 35.328194, 30.200729>,  <39.298500, 35.892326, 29.848881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684258, 35.328194, 30.200729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892345, 35.655582, 30.298273>,  <40.017197, 35.852016, 30.356798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892345, 35.655582, 30.298273>,  <39.684258, 35.328194, 30.200729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892345, 35.655582, 30.298273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111021, -0.218303, 0.969545,
		0.846785, -0.531451, -0.022697,
		0.520221, 0.818477, 0.243857,
		40.048412, 35.901127, 30.371429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083588, 35.030907, 30.749166>,  <39.684258, 35.328194, 30.200729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083588, 35.030907, 30.749166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077934, 35.430866, 30.748823>,  <40.074543, 35.670841, 30.748617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077934, 35.430866, 30.748823>,  <40.083588, 35.030907, 30.749166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077934, 35.430866, 30.748823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117946, -0.000817, 0.993020,
		0.992919, 0.014140, 0.117946,
		-0.014138, 0.999900, -0.000857,
		40.073692, 35.730835, 30.748566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527225, 35.212769, 31.316349>,  <40.083588, 35.030907, 30.749166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527225, 35.212769, 31.316349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263248, 35.504150, 31.242771>,  <40.104862, 35.678978, 31.198624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263248, 35.504150, 31.242771>,  <40.527225, 35.212769, 31.316349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263248, 35.504150, 31.242771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189710, 0.075332, 0.978946,
		0.726973, 0.680941, 0.088480,
		-0.659939, 0.728453, -0.183945,
		40.065266, 35.722687, 31.187588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734421, 35.818058, 31.698235>,  <40.527225, 35.212769, 31.316349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734421, 35.818058, 31.698235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340736, 35.819954, 31.627460>,  <40.104527, 35.821091, 31.584995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340736, 35.819954, 31.627460>,  <40.734421, 35.818058, 31.698235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340736, 35.819954, 31.627460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171070, 0.231066, 0.957781,
		0.045424, 0.972927, -0.226607,
		-0.984211, 0.004740, -0.176934,
		40.045471, 35.821377, 31.574381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450268, 36.212112, 32.237812>,  <40.734421, 35.818058, 31.698235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450268, 36.212112, 32.237812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107975, 36.083031, 32.076031>,  <39.902599, 36.005581, 31.978962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107975, 36.083031, 32.076031>,  <40.450268, 36.212112, 32.237812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107975, 36.083031, 32.076031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413218, -0.044229, 0.909557,
		-0.311404, 0.945467, -0.095498,
		-0.855733, -0.322701, -0.404457,
		39.851254, 35.986221, 31.954693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935417, 36.637020, 32.374260>,  <40.450268, 36.212112, 32.237812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935417, 36.637020, 32.374260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783226, 36.272980, 32.308590>,  <39.691910, 36.054554, 32.269188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783226, 36.272980, 32.308590>,  <39.935417, 36.637020, 32.374260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783226, 36.272980, 32.308590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529709, 0.068951, 0.845372,
		-0.758053, 0.408610, -0.508323,
		-0.380477, -0.910101, -0.164176,
		39.669083, 35.999950, 32.259338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188553, 36.666187, 32.600796>,  <39.935417, 36.637020, 32.374260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188553, 36.666187, 32.600796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284569, 36.279552, 32.564831>,  <39.342178, 36.047569, 32.543251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284569, 36.279552, 32.564831>,  <39.188553, 36.666187, 32.600796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284569, 36.279552, 32.564831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355738, -0.173764, 0.918290,
		-0.903234, -0.188440, -0.385563,
		0.240039, -0.966590, -0.089915,
		39.356579, 35.989574, 32.537857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639736, 36.379524, 32.854061>,  <39.188553, 36.666187, 32.600796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639736, 36.379524, 32.854061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929699, 36.106377, 32.890282>,  <39.103676, 35.942490, 32.912014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929699, 36.106377, 32.890282>,  <38.639736, 36.379524, 32.854061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929699, 36.106377, 32.890282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303310, -0.198391, 0.932011,
		-0.618474, -0.703090, -0.350935,
		0.724910, -0.682866, 0.090554,
		39.147171, 35.901516, 32.917446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295502, 35.688896, 33.118248>,  <38.639736, 36.379524, 32.854061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295502, 35.688896, 33.118248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682396, 35.618008, 33.190956>,  <38.914532, 35.575474, 33.234581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682396, 35.618008, 33.190956>,  <38.295502, 35.688896, 33.118248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682396, 35.618008, 33.190956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233562, -0.340593, 0.910739,
		-0.099493, -0.923357, -0.370828,
		0.967239, -0.177223, 0.181775,
		38.972569, 35.564842, 33.245487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359142, 34.984180, 33.392929>,  <38.295502, 35.688896, 33.118248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359142, 34.984180, 33.392929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700512, 35.167912, 33.491467>,  <38.905334, 35.278152, 33.550591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700512, 35.167912, 33.491467>,  <38.359142, 34.984180, 33.392929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700512, 35.167912, 33.491467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005432, -0.480444, 0.877009,
		0.521193, -0.747120, -0.412516,
		0.853422, 0.459331, 0.246346,
		38.956539, 35.305710, 33.565369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656193, 34.498402, 33.627731>,  <38.359142, 34.984180, 33.392929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656193, 34.498402, 33.627731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860027, 34.800282, 33.793022>,  <38.982327, 34.981407, 33.892197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860027, 34.800282, 33.793022>,  <38.656193, 34.498402, 33.627731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860027, 34.800282, 33.793022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062862, -0.511635, 0.856900,
		0.858120, -0.410688, -0.308164,
		0.509586, 0.754696, 0.413227,
		39.012901, 35.026691, 33.916992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308128, 34.249886, 33.943439>,  <38.656193, 34.498402, 33.627731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308128, 34.249886, 33.943439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257301, 34.598057, 34.133686>,  <39.226807, 34.806961, 34.247833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257301, 34.598057, 34.133686>,  <39.308128, 34.249886, 33.943439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257301, 34.598057, 34.133686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130137, -0.460724, 0.877951,
		0.983320, 0.173451, -0.054734,
		-0.127064, 0.870430, 0.475612,
		39.219181, 34.859184, 34.276371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912991, 34.368851, 34.435265>,  <39.308128, 34.249886, 33.943439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912991, 34.368851, 34.435265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617393, 34.605408, 34.564354>,  <39.440037, 34.747341, 34.641808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617393, 34.605408, 34.564354>,  <39.912991, 34.368851, 34.435265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617393, 34.605408, 34.564354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047706, -0.431883, 0.900667,
		0.672024, 0.680981, 0.290945,
		-0.738991, 0.591390, 0.322723,
		39.395695, 34.782825, 34.661171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139084, 34.462173, 35.061409>,  <39.912991, 34.368851, 34.435265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139084, 34.462173, 35.061409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756153, 34.577774, 35.061085>,  <39.526394, 34.647133, 35.060890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756153, 34.577774, 35.061085>,  <40.139084, 34.462173, 35.061409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756153, 34.577774, 35.061085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115628, -0.380461, 0.917540,
		0.264859, 0.878482, 0.397642,
		-0.957329, 0.288998, -0.000809,
		39.468956, 34.664474, 35.060841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029537, 34.855762, 35.682308>,  <40.139084, 34.462173, 35.061409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029537, 34.855762, 35.682308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697933, 34.679661, 35.544369>,  <39.498970, 34.574001, 35.461605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697933, 34.679661, 35.544369>,  <40.029537, 34.855762, 35.682308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697933, 34.679661, 35.544369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140939, -0.432258, 0.890668,
		-0.541182, 0.786975, 0.296298,
		-0.829011, -0.440253, -0.344846,
		39.449230, 34.547585, 35.440914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331699, 35.045353, 36.049530>,  <40.029537, 34.855762, 35.682308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331699, 35.045353, 36.049530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320423, 34.676769, 35.894550>,  <39.313656, 34.455620, 35.801563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320423, 34.676769, 35.894550>,  <39.331699, 35.045353, 36.049530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320423, 34.676769, 35.894550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109447, -0.382430, 0.917480,
		-0.993593, 0.068271, -0.090069,
		-0.028192, -0.921459, -0.387452,
		39.311966, 34.400333, 35.778316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649723, 35.626808, 36.374702>,  <39.331699, 35.045353, 36.049530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649723, 35.626808, 36.374702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782753, 35.966488, 36.538776>,  <39.862572, 36.170296, 36.637222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782753, 35.966488, 36.538776>,  <39.649723, 35.626808, 36.374702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782753, 35.966488, 36.538776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935666, 0.242692, 0.256183,
		0.118003, -0.468995, 0.875282,
		0.332572, 0.849202, 0.410185,
		39.882526, 36.221249, 36.661831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411762, 35.665764, 37.048912>,  <39.649723, 35.626808, 36.374702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411762, 35.665764, 37.048912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471684, 36.035923, 36.909660>,  <39.507637, 36.258018, 36.826107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471684, 36.035923, 36.909660>,  <39.411762, 35.665764, 37.048912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471684, 36.035923, 36.909660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950759, 0.231454, 0.206123,
		0.271323, 0.300112, 0.914503,
		0.149806, 0.925398, -0.348133,
		39.516624, 36.313541, 36.805222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332741, 36.168224, 37.569946>,  <39.411762, 35.665764, 37.048912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332741, 36.168224, 37.569946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273876, 36.361229, 37.224571>,  <39.238560, 36.477032, 37.017345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273876, 36.361229, 37.224571>,  <39.332741, 36.168224, 37.569946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273876, 36.361229, 37.224571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933229, 0.221536, 0.282853,
		0.327762, 0.847412, 0.417690,
		-0.147159, 0.482508, -0.863441,
		39.229729, 36.505981, 36.965538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149944, 36.889656, 37.756119>,  <39.332741, 36.168224, 37.569946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149944, 36.889656, 37.756119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030144, 36.910885, 37.375072>,  <38.958263, 36.923622, 37.146442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030144, 36.910885, 37.375072>,  <39.149944, 36.889656, 37.756119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030144, 36.910885, 37.375072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861167, 0.414778, 0.293855,
		0.410721, 0.908374, -0.078522,
		-0.299499, 0.053071, -0.952619,
		38.940292, 36.926807, 37.089287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976322, 37.602680, 37.588215>,  <39.149944, 36.889656, 37.756119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976322, 37.602680, 37.588215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784985, 37.355610, 37.338520>,  <38.670181, 37.207367, 37.188705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784985, 37.355610, 37.338520>,  <38.976322, 37.602680, 37.588215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784985, 37.355610, 37.338520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878167, 0.339047, 0.337446,
		0.003213, 0.709596, -0.704602,
		-0.478343, -0.617674, -0.624233,
		38.641483, 37.170307, 37.151249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549408, 37.978809, 37.176147>,  <38.976322, 37.602680, 37.588215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549408, 37.978809, 37.176147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399433, 37.609821, 37.212959>,  <38.309448, 37.388428, 37.235046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399433, 37.609821, 37.212959>,  <38.549408, 37.978809, 37.176147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399433, 37.609821, 37.212959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746623, 0.359315, 0.559863,
		-0.549526, 0.141201, -0.823458,
		-0.374934, -0.922472, 0.092029,
		38.286953, 37.333080, 37.240566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853123, 38.151573, 37.068157>,  <38.549408, 37.978809, 37.176147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853123, 38.151573, 37.068157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856731, 37.787762, 37.234375>,  <37.858898, 37.569473, 37.334106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856731, 37.787762, 37.234375>,  <37.853123, 38.151573, 37.068157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856731, 37.787762, 37.234375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744076, 0.271515, 0.610435,
		-0.668034, -0.314702, -0.674309,
		0.009020, -0.909529, 0.415543,
		37.859436, 37.514904, 37.359039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248089, 38.019138, 37.149818>,  <37.853123, 38.151573, 37.068157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248089, 38.019138, 37.149818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392422, 37.755493, 37.413746>,  <37.479023, 37.597305, 37.572102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392422, 37.755493, 37.413746>,  <37.248089, 38.019138, 37.149818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392422, 37.755493, 37.413746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616645, 0.362155, 0.698994,
		-0.699676, -0.659096, -0.275763,
		0.360835, -0.659117, 0.659820,
		37.500671, 37.557758, 37.611691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675900, 38.206608, 37.580940>,  <37.248089, 38.019138, 37.149818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675900, 38.206608, 37.580940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935017, 37.933460, 37.716022>,  <37.090488, 37.769573, 37.797073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935017, 37.933460, 37.716022>,  <36.675900, 38.206608, 37.580940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935017, 37.933460, 37.716022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478454, -0.019724, 0.877891,
		-0.592824, -0.730274, -0.339499,
		0.647797, -0.682869, 0.337710,
		37.129356, 37.728600, 37.817337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235535, 37.624046, 37.880859>,  <36.675900, 38.206608, 37.580940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235535, 37.624046, 37.880859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599300, 37.646194, 38.045734>,  <36.817558, 37.659481, 38.144661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599300, 37.646194, 38.045734>,  <36.235535, 37.624046, 37.880859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599300, 37.646194, 38.045734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414594, 0.042406, 0.909018,
		0.032845, -0.997566, 0.061517,
		0.909413, 0.055361, 0.412191,
		36.872124, 37.662804, 38.169392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327290, 37.091427, 38.367462>,  <36.235535, 37.624046, 37.880859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327290, 37.091427, 38.367462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532997, 37.424625, 38.449097>,  <36.656422, 37.624542, 38.498077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532997, 37.424625, 38.449097>,  <36.327290, 37.091427, 38.367462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532997, 37.424625, 38.449097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361095, -0.005537, 0.932512,
		0.777907, -0.553255, 0.297943,
		0.514267, 0.832993, 0.204085,
		36.687279, 37.674522, 38.510323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908665, 36.965778, 38.902878>,  <36.327290, 37.091427, 38.367462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908665, 36.965778, 38.902878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757668, 37.335896, 38.888336>,  <36.667068, 37.557968, 38.879612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757668, 37.335896, 38.888336>,  <36.908665, 36.965778, 38.902878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757668, 37.335896, 38.888336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297397, -0.083967, 0.951054,
		0.876956, 0.369830, 0.306878,
		-0.377496, 0.925297, -0.036351,
		36.644417, 37.613483, 38.877430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138176, 37.252571, 39.618660>,  <36.908665, 36.965778, 38.902878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138176, 37.252571, 39.618660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949471, 37.595486, 39.536201>,  <36.836246, 37.801235, 39.486725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949471, 37.595486, 39.536201>,  <37.138176, 37.252571, 39.618660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949471, 37.595486, 39.536201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426872, -0.017494, 0.904143,
		0.771504, 0.514540, 0.374205,
		-0.471764, 0.857288, -0.206146,
		36.807941, 37.852673, 39.474358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224251, 37.642902, 40.198429>,  <37.138176, 37.252571, 39.618660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224251, 37.642902, 40.198429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920860, 37.833549, 40.020641>,  <36.738827, 37.947937, 39.913967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920860, 37.833549, 40.020641>,  <37.224251, 37.642902, 40.198429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920860, 37.833549, 40.020641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343256, 0.287580, 0.894133,
		0.553976, 0.830745, -0.054523,
		-0.758476, 0.476613, -0.444471,
		36.693317, 37.976532, 39.887299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080826, 38.198421, 40.637413>,  <37.224251, 37.642902, 40.198429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080826, 38.198421, 40.637413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748489, 38.126312, 40.426811>,  <36.549088, 38.083046, 40.300449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748489, 38.126312, 40.426811>,  <37.080826, 38.198421, 40.637413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748489, 38.126312, 40.426811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537277, 0.013268, 0.843301,
		-0.145037, 0.983527, -0.107879,
		-0.830841, -0.180271, -0.526502,
		36.499237, 38.072231, 40.268860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521027, 38.616657, 40.848354>,  <37.080826, 38.198421, 40.637413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521027, 38.616657, 40.848354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407948, 38.266121, 40.692348>,  <36.340099, 38.055801, 40.598743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407948, 38.266121, 40.692348>,  <36.521027, 38.616657, 40.848354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407948, 38.266121, 40.692348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393058, -0.265066, 0.880480,
		-0.874979, 0.402208, -0.269519,
		-0.282696, -0.876338, -0.390018,
		36.323139, 38.003220, 40.575344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786240, 38.532898, 40.862907>,  <36.521027, 38.616657, 40.848354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786240, 38.532898, 40.862907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942383, 38.164673, 40.857441>,  <36.036068, 37.943737, 40.854160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942383, 38.164673, 40.857441>,  <35.786240, 38.532898, 40.862907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942383, 38.164673, 40.857441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717733, -0.313577, 0.621715,
		-0.576613, -0.232882, -0.783125,
		0.390356, -0.920563, -0.013665,
		36.059490, 37.888504, 40.853340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244179, 38.136162, 40.812397>,  <35.786240, 38.532898, 40.862907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244179, 38.136162, 40.812397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509342, 37.865345, 40.940247>,  <35.668442, 37.702854, 41.016956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509342, 37.865345, 40.940247>,  <35.244179, 38.136162, 40.812397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509342, 37.865345, 40.940247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629352, -0.272660, 0.727717,
		-0.405549, -0.683567, -0.606849,
		0.662907, -0.677047, 0.319627,
		35.708214, 37.662231, 41.036137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844353, 37.540440, 40.870724>,  <35.244179, 38.136162, 40.812397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844353, 37.540440, 40.870724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145618, 37.501457, 41.130955>,  <35.326378, 37.478065, 41.287094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145618, 37.501457, 41.130955>,  <34.844353, 37.540440, 40.870724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145618, 37.501457, 41.130955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629527, -0.393783, 0.669799,
		0.190908, -0.914022, -0.357935,
		0.753160, -0.097459, 0.650578,
		35.371567, 37.472218, 41.326130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927792, 36.902565, 41.054138>,  <34.844353, 37.540440, 40.870724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927792, 36.902565, 41.054138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106804, 37.070255, 41.370106>,  <35.214211, 37.170868, 41.559685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106804, 37.070255, 41.370106>,  <34.927792, 36.902565, 41.054138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106804, 37.070255, 41.370106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720318, -0.354480, 0.596227,
		0.529962, -0.835820, 0.143335,
		0.447529, 0.419224, 0.789917,
		35.241062, 37.196022, 41.607082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118549, 36.419643, 41.624241>,  <34.927792, 36.902565, 41.054138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118549, 36.419643, 41.624241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044544, 36.788395, 41.760422>,  <35.000141, 37.009647, 41.842129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044544, 36.788395, 41.760422>,  <35.118549, 36.419643, 41.624241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044544, 36.788395, 41.760422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770527, -0.351103, 0.531991,
		0.609965, -0.163898, 0.775294,
		-0.185016, 0.921881, 0.340448,
		34.989040, 37.064960, 41.862556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043060, 36.395485, 42.387119>,  <35.118549, 36.419643, 41.624241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043060, 36.395485, 42.387119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866432, 36.727104, 42.249889>,  <34.760456, 36.926075, 42.167553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866432, 36.727104, 42.249889>,  <35.043060, 36.395485, 42.387119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866432, 36.727104, 42.249889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863722, -0.289263, 0.412688,
		0.242899, 0.478551, 0.843794,
		-0.441571, 0.829045, -0.343073,
		34.733959, 36.975819, 42.146969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544701, 36.962654, 42.724876>,  <35.043060, 36.395485, 42.387119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544701, 36.962654, 42.724876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931122, 36.964153, 42.621548>,  <35.162975, 36.965054, 42.559551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931122, 36.964153, 42.621548>,  <34.544701, 36.962654, 42.724876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931122, 36.964153, 42.621548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146811, 0.830714, -0.536992,
		0.212581, 0.556687, 0.803063,
		0.966052, 0.003744, -0.258322,
		35.220936, 36.965275, 42.544052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957535, 37.587353, 42.753910>,  <34.544701, 36.962654, 42.724876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957535, 37.587353, 42.753910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171463, 37.376537, 42.489727>,  <35.299820, 37.250050, 42.331219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171463, 37.376537, 42.489727>,  <34.957535, 37.587353, 42.753910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171463, 37.376537, 42.489727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169925, 0.832749, -0.526929,
		0.827706, 0.169583, 0.534925,
		0.534817, -0.527039, -0.660455,
		35.331909, 37.218426, 42.291592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687275, 37.867290, 42.658993>,  <34.957535, 37.587353, 42.753910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687275, 37.867290, 42.658993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567001, 37.666309, 42.334740>,  <35.494835, 37.545723, 42.140186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567001, 37.666309, 42.334740>,  <35.687275, 37.867290, 42.658993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567001, 37.666309, 42.334740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431728, 0.686189, -0.585453,
		0.850411, -0.526012, 0.010595,
		-0.300686, -0.502450, -0.810637,
		35.476795, 37.515575, 42.091549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330269, 37.691463, 42.369541>,  <35.687275, 37.867290, 42.658993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330269, 37.691463, 42.369541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023212, 37.721508, 42.114956>,  <35.838978, 37.739536, 41.962204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023212, 37.721508, 42.114956>,  <36.330269, 37.691463, 42.369541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023212, 37.721508, 42.114956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512493, 0.668245, -0.539257,
		0.384810, -0.740139, -0.551467,
		-0.767641, 0.075111, -0.636464,
		35.792919, 37.744041, 41.924015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539925, 37.159733, 41.922901>,  <36.330269, 37.691463, 42.369541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539925, 37.159733, 41.922901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180988, 37.245724, 41.768723>,  <35.965626, 37.297318, 41.676216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180988, 37.245724, 41.768723>,  <36.539925, 37.159733, 41.922901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180988, 37.245724, 41.768723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363737, -0.134398, -0.921755,
		-0.249960, -0.967327, 0.042405,
		-0.897338, 0.214978, -0.385447,
		35.911785, 37.310219, 41.653088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343033, 36.581886, 41.379425>,  <36.539925, 37.159733, 41.922901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343033, 36.581886, 41.379425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150799, 36.917271, 41.276646>,  <36.035458, 37.118500, 41.214977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150799, 36.917271, 41.276646>,  <36.343033, 36.581886, 41.379425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150799, 36.917271, 41.276646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580048, 0.084176, -0.810221,
		-0.657709, -0.538423, -0.526801,
		-0.480586, 0.838460, -0.256948,
		36.006622, 37.168808, 41.199562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256664, 36.574665, 40.601616>,  <36.343033, 36.581886, 41.379425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256664, 36.574665, 40.601616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251717, 36.961018, 40.705093>,  <36.248749, 37.192829, 40.767178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251717, 36.961018, 40.705093>,  <36.256664, 36.574665, 40.601616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251717, 36.961018, 40.705093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520067, 0.227179, -0.823359,
		-0.854036, 0.124352, -0.505133,
		-0.012370, 0.965881, 0.258691,
		36.248005, 37.250782, 40.782700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281170, 36.848942, 39.951389>,  <36.256664, 36.574665, 40.601616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281170, 36.848942, 39.951389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378258, 37.113899, 40.234886>,  <36.436512, 37.272873, 40.404984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378258, 37.113899, 40.234886>,  <36.281170, 36.848942, 39.951389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378258, 37.113899, 40.234886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655641, 0.426466, -0.623107,
		-0.714998, 0.615922, -0.330782,
		0.242718, 0.662395, 0.708746,
		36.451073, 37.312618, 40.447510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961117, 37.458332, 40.276249>,  <36.281170, 36.848942, 39.951389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961117, 37.458332, 40.276249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899754, 37.852917, 40.299438>,  <35.862938, 38.089668, 40.313354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899754, 37.852917, 40.299438>,  <35.961117, 37.458332, 40.276249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899754, 37.852917, 40.299438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760293, 0.155304, -0.630742,
		-0.631207, -0.052678, -0.773824,
		-0.153404, 0.986461, 0.057978,
		35.853733, 38.148853, 40.316833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613708, 37.772961, 39.688995>,  <35.961117, 37.458332, 40.276249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613708, 37.772961, 39.688995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870548, 38.004612, 39.889919>,  <36.024654, 38.143604, 40.010475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870548, 38.004612, 39.889919>,  <35.613708, 37.772961, 39.688995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870548, 38.004612, 39.889919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610551, 0.009930, -0.791915,
		-0.463609, 0.815176, -0.347211,
		0.642102, 0.579129, 0.502310,
		36.063179, 38.178352, 40.040611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684032, 38.629150, 39.404835>,  <35.613708, 37.772961, 39.688995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684032, 38.629150, 39.404835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992851, 38.427788, 39.560024>,  <36.178143, 38.306969, 39.653137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992851, 38.427788, 39.560024>,  <35.684032, 38.629150, 39.404835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992851, 38.427788, 39.560024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497450, 0.098667, -0.861864,
		0.395586, 0.858398, 0.326595,
		0.772046, -0.503406, 0.387978,
		36.224464, 38.276768, 39.676418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245037, 38.959141, 39.132206>,  <35.684032, 38.629150, 39.404835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245037, 38.959141, 39.132206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406338, 38.620956, 39.272255>,  <36.503117, 38.418045, 39.356285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406338, 38.620956, 39.272255>,  <36.245037, 38.959141, 39.132206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406338, 38.620956, 39.272255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482786, -0.128469, -0.866264,
		0.777373, 0.518354, 0.356372,
		0.403248, -0.845461, 0.350123,
		36.527313, 38.367317, 39.377293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856884, 38.934948, 38.813515>,  <36.245037, 38.959141, 39.132206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856884, 38.934948, 38.813515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828819, 38.545712, 38.901310>,  <36.811981, 38.312172, 38.953987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828819, 38.545712, 38.901310>,  <36.856884, 38.934948, 38.813515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828819, 38.545712, 38.901310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586886, -0.218191, -0.779716,
		0.806624, 0.074111, 0.586400,
		-0.070162, -0.973088, 0.219493,
		36.807770, 38.253784, 38.967159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489098, 38.575657, 38.975262>,  <36.856884, 38.934948, 38.813515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489098, 38.575657, 38.975262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251663, 38.291599, 38.823814>,  <37.109203, 38.121166, 38.732944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251663, 38.291599, 38.823814>,  <37.489098, 38.575657, 38.975262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251663, 38.291599, 38.823814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633499, -0.122173, -0.764037,
		0.496318, -0.693378, 0.522395,
		-0.593589, -0.710142, -0.378617,
		37.073586, 38.078556, 38.710228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903252, 37.909882, 38.837040>,  <37.489098, 38.575657, 38.975262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903252, 37.909882, 38.837040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582928, 37.933136, 38.598606>,  <37.390732, 37.947090, 38.455544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582928, 37.933136, 38.598606>,  <37.903252, 37.909882, 38.837040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582928, 37.933136, 38.598606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590392, -0.090682, -0.802006,
		-0.100667, -0.994183, 0.038305,
		-0.800814, 0.058121, -0.596086,
		37.342686, 37.950577, 38.419781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847141, 37.210438, 38.832035>,  <37.903252, 37.909882, 38.837040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847141, 37.210438, 38.832035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609974, 37.177265, 38.511642>,  <37.467674, 37.157360, 38.319408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609974, 37.177265, 38.511642>,  <37.847141, 37.210438, 38.832035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609974, 37.177265, 38.511642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796642, -0.205564, -0.568423,
		-0.117511, -0.975123, 0.187952,
		-0.592918, -0.082935, -0.800981,
		37.432098, 37.152386, 38.271347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009438, 36.623322, 38.410919>,  <37.847141, 37.210438, 38.832035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009438, 36.623322, 38.410919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830101, 36.890991, 38.173874>,  <37.722500, 37.051594, 38.031647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830101, 36.890991, 38.173874>,  <38.009438, 36.623322, 38.410919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830101, 36.890991, 38.173874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548219, -0.317796, -0.773603,
		-0.706008, -0.671721, -0.224375,
		-0.448340, 0.669176, -0.592617,
		37.695599, 37.091743, 37.996090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736080, 36.245720, 37.887936>,  <38.009438, 36.623322, 38.410919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736080, 36.245720, 37.887936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765396, 36.611248, 37.728153>,  <37.782986, 36.830563, 37.632282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765396, 36.611248, 37.728153>,  <37.736080, 36.245720, 37.887936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765396, 36.611248, 37.728153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501402, -0.379996, -0.777303,
		-0.862105, -0.143322, -0.486039,
		0.073288, 0.913817, -0.399458,
		37.787384, 36.885395, 37.608315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894928, 36.182011, 37.144127>,  <37.736080, 36.245720, 37.887936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894928, 36.182011, 37.144127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929932, 36.578346, 37.102966>,  <37.950932, 36.816147, 37.078270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929932, 36.578346, 37.102966>,  <37.894928, 36.182011, 37.144127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929932, 36.578346, 37.102966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742173, -0.133747, -0.656727,
		-0.664471, -0.018902, -0.747075,
		0.087505, 0.990835, -0.102900,
		37.956184, 36.875595, 37.072098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029350, 36.368404, 36.414150>,  <37.894928, 36.182011, 37.144127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029350, 36.368404, 36.414150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238930, 36.626209, 36.636890>,  <38.364677, 36.780891, 36.770535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238930, 36.626209, 36.636890>,  <38.029350, 36.368404, 36.414150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238930, 36.626209, 36.636890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746835, -0.033287, -0.664176,
		-0.409536, 0.763866, -0.498788,
		0.523944, 0.644516, 0.556850,
		38.396114, 36.819565, 36.803944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329510, 36.962601, 36.026138>,  <38.029350, 36.368404, 36.414150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329510, 36.962601, 36.026138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556023, 36.916176, 36.352539>,  <38.691933, 36.888321, 36.548378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556023, 36.916176, 36.352539>,  <38.329510, 36.962601, 36.026138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556023, 36.916176, 36.352539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816540, -0.055750, -0.574591,
		0.112180, 0.991676, 0.063200,
		0.566284, -0.116062, 0.815997,
		38.725906, 36.881355, 36.597340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992054, 37.194122, 35.890408>,  <38.329510, 36.962601, 36.026138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992054, 37.194122, 35.890408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098572, 36.992050, 36.218769>,  <39.162483, 36.870808, 36.415787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098572, 36.992050, 36.218769>,  <38.992054, 37.194122, 35.890408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098572, 36.992050, 36.218769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921457, -0.116498, -0.370601,
		0.282854, 0.855116, 0.434478,
		0.266291, -0.505178, 0.820904,
		39.178459, 36.840496, 36.465042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603539, 37.433292, 36.026314>,  <38.992054, 37.194122, 35.890408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603539, 37.433292, 36.026314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591618, 37.097065, 36.242668>,  <39.584465, 36.895329, 36.372478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591618, 37.097065, 36.242668>,  <39.603539, 37.433292, 36.026314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591618, 37.097065, 36.242668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952093, -0.188639, -0.240696,
		0.304353, 0.507796, 0.805924,
		-0.029804, -0.840571, 0.540881,
		39.582676, 36.844894, 36.404934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928936, 37.375175, 36.685547>,  <39.603539, 37.433292, 36.026314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928936, 37.375175, 36.685547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915081, 37.041096, 36.466003>,  <39.906769, 36.840649, 36.334278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915081, 37.041096, 36.466003>,  <39.928936, 37.375175, 36.685547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915081, 37.041096, 36.466003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989611, 0.048017, -0.135516,
		0.139537, -0.547851, 0.824857,
		-0.034635, -0.835197, -0.548859,
		39.904690, 36.790535, 36.301346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478973, 37.600418, 37.185326>,  <39.928936, 37.375175, 36.685547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478973, 37.600418, 37.185326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765579, 37.640995, 37.461388>,  <40.937542, 37.665340, 37.627026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765579, 37.640995, 37.461388>,  <40.478973, 37.600418, 37.185326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765579, 37.640995, 37.461388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066450, -0.994797, 0.077225,
		0.694397, -0.009473, -0.719529,
		0.716517, 0.101438, 0.690155,
		40.980534, 37.671425, 37.668434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887108, 37.074905, 37.058624>,  <40.478973, 37.600418, 37.185326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887108, 37.074905, 37.058624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037476, 37.201920, 37.406845>,  <41.127697, 37.278130, 37.615776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037476, 37.201920, 37.406845>,  <40.887108, 37.074905, 37.058624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037476, 37.201920, 37.406845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382206, -0.908953, 0.166504,
		0.844159, 0.270137, -0.463057,
		0.375918, 0.317539, 0.870548,
		41.150249, 37.297180, 37.668011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676113, 36.986294, 37.069508>,  <40.887108, 37.074905, 37.058624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676113, 36.986294, 37.069508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451138, 36.949726, 37.398216>,  <41.316151, 36.927784, 37.595440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451138, 36.949726, 37.398216>,  <41.676113, 36.986294, 37.069508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451138, 36.949726, 37.398216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242264, -0.968471, 0.058070,
		0.790552, 0.231746, 0.566852,
		-0.562437, -0.091421, 0.821770,
		41.282406, 36.922298, 37.644749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847614, 36.384670, 36.519135>,  <41.676113, 36.986294, 37.069508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847614, 36.384670, 36.519135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035576, 36.477608, 36.859772>,  <42.148354, 36.533371, 37.064152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035576, 36.477608, 36.859772>,  <41.847614, 36.384670, 36.519135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035576, 36.477608, 36.859772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867592, -0.299400, -0.397043,
		0.162714, 0.925405, -0.342271,
		0.469902, 0.232347, 0.851591,
		42.176548, 36.547310, 37.115250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390263, 36.962601, 36.421883>,  <41.847614, 36.384670, 36.519135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390263, 36.962601, 36.421883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489544, 36.713860, 36.718987>,  <42.549114, 36.564613, 36.897247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489544, 36.713860, 36.718987>,  <42.390263, 36.962601, 36.421883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489544, 36.713860, 36.718987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809771, -0.287631, -0.511409,
		0.531663, 0.728399, 0.432169,
		0.248204, -0.621855, 0.742759,
		42.564007, 36.527302, 36.941814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059509, 37.216328, 36.522038>,  <42.390263, 36.962601, 36.421883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059509, 37.216328, 36.522038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955654, 36.840717, 36.612213>,  <42.893341, 36.615353, 36.666317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955654, 36.840717, 36.612213>,  <43.059509, 37.216328, 36.522038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955654, 36.840717, 36.612213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926283, -0.308175, -0.216860,
		0.273111, 0.152515, 0.949816,
		-0.259635, -0.939025, 0.225438,
		42.877762, 36.559010, 36.679844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619179, 36.966373, 36.877098>,  <43.059509, 37.216328, 36.522038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.619179, 36.966373, 36.877098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410488, 36.647381, 36.755894>,  <43.285275, 36.455986, 36.683170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410488, 36.647381, 36.755894>,  <43.619179, 36.966373, 36.877098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410488, 36.647381, 36.755894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852504, -0.500777, -0.149863,
		-0.032229, -0.336508, 0.941129,
		-0.521726, -0.797486, -0.303014,
		43.253971, 36.408134, 36.664989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833492, 36.384365, 37.231281>,  <43.619179, 36.966373, 36.877098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833492, 36.384365, 37.231281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702759, 36.294353, 36.864120>,  <43.624317, 36.240345, 36.643826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702759, 36.294353, 36.864120>,  <43.833492, 36.384365, 37.231281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702759, 36.294353, 36.864120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837581, -0.518849, -0.171035,
		-0.437764, -0.824716, 0.358060,
		-0.326834, -0.225032, -0.917900,
		43.604710, 36.226845, 36.588749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923450, 35.718262, 37.307812>,  <43.833492, 36.384365, 37.231281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923450, 35.718262, 37.307812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965710, 35.883678, 36.946079>,  <43.991066, 35.982929, 36.729038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965710, 35.883678, 36.946079>,  <43.923450, 35.718262, 37.307812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965710, 35.883678, 36.946079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857640, -0.498166, -0.127611,
		-0.503280, -0.762110, -0.407304,
		0.105652, 0.413545, -0.904333,
		43.997406, 36.007740, 36.674778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962902, 35.094048, 36.902966>,  <43.923450, 35.718262, 37.307812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962902, 35.094048, 36.902966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160454, 35.380905, 36.706276>,  <44.278984, 35.553020, 36.588261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160454, 35.380905, 36.706276>,  <43.962902, 35.094048, 36.902966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.160454, 35.380905, 36.706276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687410, -0.668321, -0.284278,
		-0.532498, -0.197618, -0.823039,
		0.493876, 0.717143, -0.491724,
		44.308617, 35.596046, 36.558758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.153175, 34.983589, 36.257153>,  <43.962902, 35.094048, 36.902966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.153175, 34.983589, 36.257153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435055, 35.237019, 36.384895>,  <44.604183, 35.389076, 36.461540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435055, 35.237019, 36.384895>,  <44.153175, 34.983589, 36.257153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435055, 35.237019, 36.384895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708458, -0.603832, -0.365340,
		-0.038633, 0.483703, -0.874379,
		0.704694, 0.633575, 0.319356,
		44.646461, 35.427090, 36.480701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550922, 35.043411, 35.677845>,  <44.153175, 34.983589, 36.257153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550922, 35.043411, 35.677845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750790, 35.174477, 35.998585>,  <44.870712, 35.253117, 36.191029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750790, 35.174477, 35.998585>,  <44.550922, 35.043411, 35.677845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750790, 35.174477, 35.998585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844934, -0.388299, -0.367846,
		0.190827, 0.861312, -0.470878,
		0.499672, 0.327666, 0.801850,
		44.900692, 35.272778, 36.239140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.047897, 35.551128, 35.535660>,  <44.550922, 35.043411, 35.677845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.047897, 35.551128, 35.535660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212063, 35.347397, 35.838219>,  <45.310562, 35.225159, 36.019753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212063, 35.347397, 35.838219>,  <45.047897, 35.551128, 35.535660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212063, 35.347397, 35.838219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776460, -0.239781, -0.582765,
		0.478191, 0.826490, 0.297066,
		0.410419, -0.509333, 0.756397,
		45.335190, 35.194595, 36.065140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.728321, 35.609310, 35.304043>,  <45.047897, 35.551128, 35.535660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.728321, 35.609310, 35.304043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721527, 35.336296, 35.596306>,  <45.717453, 35.172489, 35.771664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.721527, 35.336296, 35.596306>,  <45.728321, 35.609310, 35.304043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.721527, 35.336296, 35.596306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920616, -0.295784, -0.254907,
		0.390100, 0.668327, 0.633373,
		-0.016980, -0.682533, 0.730658,
		45.716434, 35.131535, 35.815502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.457256, 35.255211, 35.391300>,  <45.728321, 35.609310, 35.304043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.457256, 35.255211, 35.391300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.201115, 34.996529, 35.225544>,  <46.047428, 34.841320, 35.126091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.201115, 34.996529, 35.225544>,  <46.457256, 35.255211, 35.391300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.201115, 34.996529, 35.225544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733699, -0.674637, -0.080932,
		-0.227221, -0.355860, 0.906496,
		-0.640356, -0.646706, -0.414386,
		46.009007, 34.802517, 35.101227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.586178, 34.677013, 35.898319>,  <46.457256, 35.255211, 35.391300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.586178, 34.677013, 35.898319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430756, 34.607605, 35.536343>,  <46.337502, 34.565960, 35.319157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430756, 34.607605, 35.536343>,  <46.586178, 34.677013, 35.898319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.430756, 34.607605, 35.536343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698347, -0.696158, -0.166359,
		-0.601114, -0.696601, 0.391674,
		-0.388553, -0.173524, -0.904940,
		46.314190, 34.555550, 35.264862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.419632, 33.948944, 35.767815>,  <46.586178, 34.677013, 35.898319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.419632, 33.948944, 35.767815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.492138, 34.089176, 35.400284>,  <46.535641, 34.173317, 35.179768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.492138, 34.089176, 35.400284>,  <46.419632, 33.948944, 35.767815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.492138, 34.089176, 35.400284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644218, -0.748258, -0.158411,
		-0.743052, -0.563208, -0.361484,
		0.181265, 0.350582, -0.918823,
		46.546516, 34.194351, 35.124638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.947227, 33.729946, 35.209412>,  <46.419632, 33.948944, 35.767815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.947227, 33.729946, 35.209412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.308571, 33.577415, 35.287926>,  <47.525379, 33.485897, 35.335033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.308571, 33.577415, 35.287926>,  <46.947227, 33.729946, 35.209412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.308571, 33.577415, 35.287926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270628, 0.151789, -0.950642,
		0.332716, 0.911892, 0.240319,
		0.903361, -0.381331, 0.196281,
		47.579578, 33.463017, 35.346809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.216373, 34.330009, 35.037468>,  <46.947227, 33.729946, 35.209412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.216373, 34.330009, 35.037468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.504894, 34.053051, 35.030506>,  <47.678009, 33.886875, 35.026329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.504894, 34.053051, 35.030506>,  <47.216373, 34.330009, 35.037468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.504894, 34.053051, 35.030506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401256, 0.438230, -0.804331,
		0.564545, 0.573184, 0.593927,
		0.721306, -0.692397, -0.017407,
		47.721287, 33.845333, 35.025284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.545197, 34.503860, 35.659554>,  <47.216373, 34.330009, 35.037468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.545197, 34.503860, 35.659554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.388031, 34.782803, 35.419785>,  <47.293732, 34.950169, 35.275921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.388031, 34.782803, 35.419785>,  <47.545197, 34.503860, 35.659554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.388031, 34.782803, 35.419785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850885, 0.522909, 0.050600,
		0.348732, -0.490162, -0.798829,
		-0.392912, 0.697357, -0.599427,
		47.270157, 34.992008, 35.239956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.062515, 34.754055, 35.339134>,  <47.545197, 34.503860, 35.659554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.062515, 34.754055, 35.339134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.800678, 35.035275, 35.227966>,  <47.643578, 35.204006, 35.161266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.800678, 35.035275, 35.227966>,  <48.062515, 34.754055, 35.339134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.800678, 35.035275, 35.227966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753472, 0.576785, -0.315594,
		-0.061576, -0.415991, -0.907282,
		-0.654590, 0.703044, -0.277921,
		47.604301, 35.246189, 35.144588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.028217, 32.640865, 23.793861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.787376, 32.897762, 23.604122>,  <38.642872, 33.051899, 23.490278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.787376, 32.897762, 23.604122>,  <39.028217, 32.640865, 23.793861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787376, 32.897762, 23.604122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540725, 0.109117, 0.834092,
		0.587445, 0.758699, 0.281575,
		-0.602100, 0.642238, -0.474347,
		38.606747, 33.090435, 23.461819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924999, 33.295536, 24.220215>,  <39.028217, 32.640865, 23.793861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924999, 33.295536, 24.220215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.616463, 33.271290, 23.966801>,  <38.431343, 33.256741, 23.814753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.616463, 33.271290, 23.966801>,  <38.924999, 33.295536, 24.220215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616463, 33.271290, 23.966801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636264, 0.050894, 0.769791,
		-0.014418, 0.996863, -0.077825,
		-0.771337, -0.060616, -0.633534,
		38.385063, 33.253105, 23.776741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470192, 33.836334, 24.355684>,  <38.924999, 33.295536, 24.220215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470192, 33.836334, 24.355684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.254463, 33.549828, 24.178558>,  <38.125027, 33.377922, 24.072283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.254463, 33.549828, 24.178558>,  <38.470192, 33.836334, 24.355684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254463, 33.549828, 24.178558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668288, 0.044108, 0.742594,
		-0.512367, 0.696427, -0.502464,
		-0.539326, -0.716271, -0.442814,
		38.092667, 33.334946, 24.045713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660355, 34.058105, 24.380842>,  <38.470192, 33.836334, 24.355684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660355, 34.058105, 24.380842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670601, 33.664299, 24.311483>,  <37.676750, 33.428013, 24.269869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670601, 33.664299, 24.311483>,  <37.660355, 34.058105, 24.380842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670601, 33.664299, 24.311483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738005, -0.135625, 0.661025,
		-0.674308, 0.111033, -0.730055,
		0.025618, -0.984519, -0.173396,
		37.678288, 33.368942, 24.259464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930687, 33.795052, 24.391819>,  <37.660355, 34.058105, 24.380842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930687, 33.795052, 24.391819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175995, 33.482323, 24.436810>,  <37.323181, 33.294685, 24.463804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175995, 33.482323, 24.436810>,  <36.930687, 33.795052, 24.391819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175995, 33.482323, 24.436810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596990, -0.365547, 0.714128,
		-0.517209, -0.505099, -0.690920,
		0.613268, -0.781825, 0.112475,
		37.359974, 33.247776, 24.470552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548927, 33.232635, 24.306543>,  <36.930687, 33.795052, 24.391819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548927, 33.232635, 24.306543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854294, 33.119617, 24.538877>,  <37.037514, 33.051807, 24.678278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854294, 33.119617, 24.538877>,  <36.548927, 33.232635, 24.306543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854294, 33.119617, 24.538877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632832, -0.147136, 0.760181,
		-0.129320, -0.947904, -0.291126,
		0.763414, -0.282540, 0.580836,
		37.083317, 33.034855, 24.713127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267414, 32.726536, 24.647285>,  <36.548927, 33.232635, 24.306543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267414, 32.726536, 24.647285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.595280, 32.825100, 24.854139>,  <36.792000, 32.884239, 24.978252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.595280, 32.825100, 24.854139>,  <36.267414, 32.726536, 24.647285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595280, 32.825100, 24.854139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510934, -0.093729, 0.854495,
		0.259029, -0.964622, 0.049074,
		0.819665, 0.246413, 0.517137,
		36.841179, 32.899025, 25.009281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294521, 32.198650, 25.201498>,  <36.267414, 32.726536, 24.647285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294521, 32.198650, 25.201498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516586, 32.515808, 25.301981>,  <36.649826, 32.706104, 25.362270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516586, 32.515808, 25.301981>,  <36.294521, 32.198650, 25.201498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516586, 32.515808, 25.301981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550806, 0.124172, 0.825345,
		0.623221, -0.596569, 0.505669,
		0.555165, 0.792897, 0.251207,
		36.683136, 32.753677, 25.377344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471050, 32.050137, 25.898560>,  <36.294521, 32.198650, 25.201498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471050, 32.050137, 25.898560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497604, 32.448483, 25.873758>,  <36.513538, 32.687489, 25.858877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497604, 32.448483, 25.873758>,  <36.471050, 32.050137, 25.898560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497604, 32.448483, 25.873758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616109, 0.089794, 0.782526,
		0.784858, -0.013748, 0.619523,
		0.066388, 0.995866, -0.062006,
		36.517521, 32.747242, 25.855156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718842, 32.259789, 26.532061>,  <36.471050, 32.050137, 25.898560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718842, 32.259789, 26.532061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.603661, 32.619209, 26.399584>,  <36.534550, 32.834862, 26.320097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.603661, 32.619209, 26.399584>,  <36.718842, 32.259789, 26.532061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603661, 32.619209, 26.399584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315342, 0.237582, 0.918757,
		0.904235, 0.369000, 0.214938,
		-0.287955, 0.898551, -0.331191,
		36.517273, 32.888775, 26.300226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119064, 32.709404, 26.964739>,  <36.718842, 32.259789, 26.532061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119064, 32.709404, 26.964739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.807049, 32.907513, 26.811773>,  <36.619839, 33.026379, 26.719994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.807049, 32.907513, 26.811773>,  <37.119064, 32.709404, 26.964739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807049, 32.907513, 26.811773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277504, 0.273944, 0.920840,
		0.560828, 0.824414, -0.076247,
		-0.780041, 0.495275, -0.382413,
		36.573036, 33.056095, 26.697050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201576, 33.377022, 27.206894>,  <37.119064, 32.709404, 26.964739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201576, 33.377022, 27.206894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816803, 33.385319, 27.097897>,  <36.585938, 33.390297, 27.032497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816803, 33.385319, 27.097897>,  <37.201576, 33.377022, 27.206894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816803, 33.385319, 27.097897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231317, 0.469154, 0.852283,
		0.145517, 0.882873, -0.446498,
		-0.961934, 0.020739, -0.272493,
		36.528221, 33.391541, 27.016150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000439, 34.082790, 27.291466>,  <37.201576, 33.377022, 27.206894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000439, 34.082790, 27.291466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.661903, 33.869946, 27.300974>,  <36.458782, 33.742241, 27.306679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.661903, 33.869946, 27.300974>,  <37.000439, 34.082790, 27.291466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661903, 33.869946, 27.300974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248614, 0.434115, 0.865872,
		-0.471057, 0.726915, -0.499700,
		-0.846343, -0.532108, 0.023772,
		36.408001, 33.710312, 27.308105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432934, 34.597015, 27.534515>,  <37.000439, 34.082790, 27.291466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432934, 34.597015, 27.534515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.271275, 34.237633, 27.603144>,  <36.174278, 34.022003, 27.644321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.271275, 34.237633, 27.603144>,  <36.432934, 34.597015, 27.534515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271275, 34.237633, 27.603144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260319, 0.292795, 0.920057,
		-0.876869, 0.327175, -0.352218,
		-0.404147, -0.898458, 0.171572,
		36.150032, 33.968094, 27.654615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726528, 34.705349, 27.860910>,  <36.432934, 34.597015, 27.534515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726528, 34.705349, 27.860910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.861610, 34.341404, 27.957333>,  <35.942661, 34.123039, 28.015186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.861610, 34.341404, 27.957333>,  <35.726528, 34.705349, 27.860910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861610, 34.341404, 27.957333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229672, 0.168704, 0.958535,
		-0.912800, -0.379068, -0.151997,
		0.337707, -0.909861, 0.241054,
		35.962921, 34.068447, 28.029650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156532, 34.374142, 28.205896>,  <35.726528, 34.705349, 27.860910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156532, 34.374142, 28.205896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.478836, 34.159985, 28.307177>,  <35.672218, 34.031490, 28.367945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.478836, 34.159985, 28.307177>,  <35.156532, 34.374142, 28.205896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478836, 34.159985, 28.307177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244726, 0.088329, 0.965561,
		-0.539317, -0.839973, -0.059852,
		0.805758, -0.535390, 0.253201,
		35.720562, 33.999367, 28.383137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919331, 33.886604, 28.639877>,  <35.156532, 34.374142, 28.205896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919331, 33.886604, 28.639877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.308609, 33.920589, 28.725355>,  <35.542175, 33.940983, 28.776642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.308609, 33.920589, 28.725355>,  <34.919331, 33.886604, 28.639877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308609, 33.920589, 28.725355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222653, 0.115657, 0.968013,
		0.057528, -0.989649, 0.131474,
		0.973199, 0.084961, 0.213695,
		35.600567, 33.946079, 28.789463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996117, 33.538143, 29.327726>,  <34.919331, 33.886604, 28.639877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996117, 33.538143, 29.327726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.346313, 33.728378, 29.293474>,  <35.556431, 33.842518, 29.272923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.346313, 33.728378, 29.293474>,  <34.996117, 33.538143, 29.327726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346313, 33.728378, 29.293474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057744, 0.072976, 0.995661,
		0.479772, -0.876637, 0.036427,
		0.875491, 0.475586, -0.085632,
		35.608959, 33.871056, 29.267784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342564, 33.216656, 29.840881>,  <34.996117, 33.538143, 29.327726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342564, 33.216656, 29.840881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496651, 33.571217, 29.738195>,  <35.589104, 33.783951, 29.676584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496651, 33.571217, 29.738195>,  <35.342564, 33.216656, 29.840881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496651, 33.571217, 29.738195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007655, 0.275105, 0.961384,
		0.922792, -0.372311, 0.099191,
		0.385222, 0.886398, -0.256715,
		35.612217, 33.837135, 29.661180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981949, 33.207451, 30.132477>,  <35.342564, 33.216656, 29.840881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981949, 33.207451, 30.132477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875759, 33.591354, 30.095846>,  <35.812046, 33.821697, 30.073868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875759, 33.591354, 30.095846>,  <35.981949, 33.207451, 30.132477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875759, 33.591354, 30.095846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078165, 0.116099, 0.990157,
		0.960945, 0.255701, -0.105841,
		-0.265472, 0.959759, -0.091578,
		35.796116, 33.879284, 30.068373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593876, 33.625050, 30.430367>,  <35.981949, 33.207451, 30.132477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593876, 33.625050, 30.430367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.260201, 33.845551, 30.436783>,  <36.059998, 33.977852, 30.440634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.260201, 33.845551, 30.436783>,  <36.593876, 33.625050, 30.430367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260201, 33.845551, 30.436783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201662, 0.277833, 0.939224,
		0.513291, 0.786721, -0.342931,
		-0.834185, 0.551252, 0.016043,
		36.009945, 34.010925, 30.441595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835381, 34.251369, 30.827820>,  <36.593876, 33.625050, 30.430367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835381, 34.251369, 30.827820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.435871, 34.258301, 30.846411>,  <36.196167, 34.262459, 30.857565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.435871, 34.258301, 30.846411>,  <36.835381, 34.251369, 30.827820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435871, 34.258301, 30.846411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049481, 0.282111, 0.958105,
		0.003488, 0.959226, -0.282621,
		-0.998769, 0.017326, 0.046479,
		36.136242, 34.263500, 30.860355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069256, 34.179222, 31.563036>,  <36.835381, 34.251369, 30.827820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069256, 34.179222, 31.563036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292595, 33.952446, 31.805300>,  <37.426598, 33.816380, 31.950659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292595, 33.952446, 31.805300>,  <37.069256, 34.179222, 31.563036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292595, 33.952446, 31.805300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440134, -0.416411, -0.795540,
		0.703226, 0.710762, 0.017025,
		0.558351, -0.566938, 0.605662,
		37.460098, 33.782364, 31.986998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715466, 34.194305, 31.204576>,  <37.069256, 34.179222, 31.563036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715466, 34.194305, 31.204576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775131, 33.890160, 31.457432>,  <37.810932, 33.707672, 31.609144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775131, 33.890160, 31.457432>,  <37.715466, 34.194305, 31.204576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775131, 33.890160, 31.457432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477859, -0.504250, -0.719293,
		0.865679, 0.409367, 0.288129,
		0.149166, -0.760362, 0.632139,
		37.819881, 33.662052, 31.647074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426304, 34.062443, 31.227966>,  <37.715466, 34.194305, 31.204576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426304, 34.062443, 31.227966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.261356, 33.717010, 31.344023>,  <38.162388, 33.509750, 31.413656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.261356, 33.717010, 31.344023>,  <38.426304, 34.062443, 31.227966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261356, 33.717010, 31.344023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619301, -0.499304, -0.605938,
		0.668145, -0.070184, 0.740713,
		-0.412368, -0.863580, 0.290143,
		38.137646, 33.457935, 31.431067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976128, 33.528629, 31.395674>,  <38.426304, 34.062443, 31.227966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976128, 33.528629, 31.395674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635921, 33.325092, 31.342457>,  <38.431797, 33.202969, 31.310526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635921, 33.325092, 31.342457>,  <38.976128, 33.528629, 31.395674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635921, 33.325092, 31.342457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475837, -0.636690, -0.606798,
		0.224058, -0.579398, 0.783642,
		-0.850515, -0.508844, -0.133044,
		38.380768, 33.172440, 31.302544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165371, 32.786274, 31.428825>,  <38.976128, 33.528629, 31.395674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165371, 32.786274, 31.428825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.808525, 32.825924, 31.252502>,  <38.594418, 32.849716, 31.146708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.808525, 32.825924, 31.252502>,  <39.165371, 32.786274, 31.428825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808525, 32.825924, 31.252502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321574, -0.546030, -0.773590,
		-0.317378, -0.831881, 0.455243,
		-0.892111, 0.099126, -0.440809,
		38.540894, 32.855663, 31.120260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969177, 32.095982, 31.166597>,  <39.165371, 32.786274, 31.428825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969177, 32.095982, 31.166597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.755310, 32.354122, 30.948368>,  <38.626987, 32.509007, 30.817430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.755310, 32.354122, 30.948368>,  <38.969177, 32.095982, 31.166597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755310, 32.354122, 30.948368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095663, -0.595232, -0.797839,
		-0.839628, -0.478773, 0.256518,
		-0.534671, 0.645349, -0.545574,
		38.594910, 32.547726, 30.784697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426083, 31.697998, 30.841278>,  <38.969177, 32.095982, 31.166597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426083, 31.697998, 30.841278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.445599, 32.028553, 30.616884>,  <38.457310, 32.226887, 30.482248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.445599, 32.028553, 30.616884>,  <38.426083, 31.697998, 30.841278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445599, 32.028553, 30.616884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183020, -0.559543, -0.808341,
		-0.981898, -0.063230, -0.178547,
		0.048794, 0.826386, -0.560986,
		38.460236, 32.276470, 30.448589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971149, 31.624571, 30.237040>,  <38.426083, 31.697998, 30.841278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971149, 31.624571, 30.237040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216709, 31.921621, 30.129976>,  <38.364044, 32.099850, 30.065739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216709, 31.921621, 30.129976>,  <37.971149, 31.624571, 30.237040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216709, 31.921621, 30.129976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111119, -0.416993, -0.902091,
		-0.781527, 0.524048, -0.338511,
		0.613896, 0.742624, -0.267660,
		38.400879, 32.144409, 30.049679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709053, 31.859888, 29.577017>,  <37.971149, 31.624571, 30.237040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709053, 31.859888, 29.577017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.085613, 31.991764, 29.605478>,  <38.311550, 32.070889, 29.622555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.085613, 31.991764, 29.605478>,  <37.709053, 31.859888, 29.577017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085613, 31.991764, 29.605478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152321, -0.227364, -0.961823,
		-0.300923, 0.916303, -0.264260,
		0.941405, 0.329688, 0.071153,
		38.368034, 32.090672, 29.626823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844624, 32.331802, 28.904655>,  <37.709053, 31.859888, 29.577017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844624, 32.331802, 28.904655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206676, 32.234509, 29.044130>,  <38.423908, 32.176132, 29.127815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206676, 32.234509, 29.044130>,  <37.844624, 32.331802, 28.904655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206676, 32.234509, 29.044130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336123, -0.092779, -0.937237,
		0.260317, 0.965521, -0.002221,
		0.905128, -0.243232, 0.348685,
		38.478214, 32.161537, 29.148735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387604, 32.626591, 28.356150>,  <37.844624, 32.331802, 28.904655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387604, 32.626591, 28.356150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576153, 32.335724, 28.555767>,  <38.689281, 32.161205, 28.675537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576153, 32.335724, 28.555767>,  <38.387604, 32.626591, 28.356150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576153, 32.335724, 28.555767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437269, -0.298710, -0.848274,
		0.765902, 0.618067, 0.177163,
		0.471370, -0.727162, 0.499044,
		38.717564, 32.117577, 28.705481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072338, 32.735558, 28.110626>,  <38.387604, 32.626591, 28.356150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072338, 32.735558, 28.110626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.107841, 32.369884, 28.268812>,  <39.129143, 32.150482, 28.363724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.107841, 32.369884, 28.268812>,  <39.072338, 32.735558, 28.110626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107841, 32.369884, 28.268812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454951, -0.315988, -0.832569,
		0.886082, 0.253816, 0.387861,
		0.088760, -0.914182, 0.395465,
		39.134468, 32.095631, 28.387451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800858, 32.690826, 28.247387>,  <39.072338, 32.735558, 28.110626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800858, 32.690826, 28.247387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.610641, 32.343147, 28.193197>,  <39.496510, 32.134541, 28.160683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.610641, 32.343147, 28.193197>,  <39.800858, 32.690826, 28.247387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610641, 32.343147, 28.193197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556519, -0.177988, -0.811546,
		0.681281, -0.461319, 0.568366,
		-0.475544, -0.869198, -0.135473,
		39.467979, 32.082386, 28.152555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308327, 32.258076, 27.971283>,  <39.800858, 32.690826, 28.247387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308327, 32.258076, 27.971283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.977730, 32.047199, 27.892309>,  <39.779373, 31.920673, 27.844925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.977730, 32.047199, 27.892309>,  <40.308327, 32.258076, 27.971283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977730, 32.047199, 27.892309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341134, -0.190038, -0.920605,
		0.447814, -0.828224, 0.336908,
		-0.826493, -0.527190, -0.197433,
		39.729782, 31.889042, 27.833078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511497, 31.643671, 27.718164>,  <40.308327, 32.258076, 27.971283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511497, 31.643671, 27.718164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.139587, 31.692017, 27.579077>,  <39.916443, 31.721024, 27.495625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.139587, 31.692017, 27.579077>,  <40.511497, 31.643671, 27.718164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139587, 31.692017, 27.579077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322600, -0.187481, -0.927782,
		-0.177315, -0.974805, 0.135329,
		-0.929778, 0.120852, -0.347716,
		39.860653, 31.728275, 27.474762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465614, 31.066328, 27.269417>,  <40.511497, 31.643671, 27.718164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465614, 31.066328, 27.269417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.189117, 31.332062, 27.155685>,  <40.023220, 31.491503, 27.087446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.189117, 31.332062, 27.155685>,  <40.465614, 31.066328, 27.269417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189117, 31.332062, 27.155685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293971, -0.100911, -0.950473,
		-0.660123, -0.740592, -0.125541,
		-0.691244, 0.664335, -0.284326,
		39.981743, 31.531363, 27.070387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003925, 30.779194, 26.623871>,  <40.465614, 31.066328, 27.269417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003925, 30.779194, 26.623871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.976368, 31.178165, 26.631765>,  <39.959835, 31.417549, 26.636503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.976368, 31.178165, 26.631765>,  <40.003925, 30.779194, 26.623871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976368, 31.178165, 26.631765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258230, 0.036939, -0.965377,
		-0.963624, -0.061410, -0.260111,
		-0.068892, 0.997429, 0.019737,
		39.955700, 31.477394, 26.637686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676865, 30.954958, 25.960567>,  <40.003925, 30.779194, 26.623871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676865, 30.954958, 25.960567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.844616, 31.287319, 26.106838>,  <39.945267, 31.486736, 26.194601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.844616, 31.287319, 26.106838>,  <39.676865, 30.954958, 25.960567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844616, 31.287319, 26.106838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236324, 0.288998, -0.927702,
		-0.876512, 0.475475, -0.075164,
		0.419377, 0.830905, 0.365677,
		39.970428, 31.536591, 26.216541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.465031, 31.660772, 25.348528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.760780, 31.779972, 25.590033>,  <39.938229, 31.851492, 25.734936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.760780, 31.779972, 25.590033>,  <39.465031, 31.660772, 25.348528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760780, 31.779972, 25.590033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493682, 0.369811, -0.787094,
		-0.457832, 0.880020, 0.126310,
		0.739370, 0.298001, 0.603762,
		39.982590, 31.869371, 25.771162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669716, 32.355007, 25.093866>,  <39.465031, 31.660772, 25.348528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669716, 32.355007, 25.093866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.989582, 32.269936, 25.318472>,  <40.181503, 32.218891, 25.453236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.989582, 32.269936, 25.318472>,  <39.669716, 32.355007, 25.093866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989582, 32.269936, 25.318472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585860, 0.481204, -0.652082,
		-0.131518, 0.850418, 0.509404,
		0.799670, -0.212679, 0.561513,
		40.229485, 32.206131, 25.486925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058113, 32.892265, 25.071026>,  <39.669716, 32.355007, 25.093866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058113, 32.892265, 25.071026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.320679, 32.602818, 25.156345>,  <40.478218, 32.429150, 25.207537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.320679, 32.602818, 25.156345>,  <40.058113, 32.892265, 25.071026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320679, 32.602818, 25.156345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644866, 0.391490, -0.656417,
		0.391490, 0.568433, 0.723616,
		0.656417, -0.723616, 0.213299,
		40.517605, 32.385735, 25.220335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628407, 33.208740, 25.120310>,  <40.058113, 32.892265, 25.071026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628407, 33.208740, 25.120310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.719250, 32.833504, 25.015694>,  <40.773758, 32.608360, 24.952925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.719250, 32.833504, 25.015694>,  <40.628407, 33.208740, 25.120310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719250, 32.833504, 25.015694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515825, 0.343665, -0.784742,
		0.826042, 0.043316, 0.561942,
		0.227112, -0.938093, -0.261538,
		40.787384, 32.552074, 24.937233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253689, 33.267620, 24.805748>,  <40.628407, 33.208740, 25.120310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253689, 33.267620, 24.805748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.113602, 32.910824, 24.691418>,  <41.029549, 32.696747, 24.622820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.113602, 32.910824, 24.691418>,  <41.253689, 33.267620, 24.805748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113602, 32.910824, 24.691418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463815, 0.099968, -0.880274,
		0.813771, -0.440857, 0.378710,
		-0.350216, -0.891993, -0.285827,
		41.008537, 32.643227, 24.605669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867863, 32.916111, 24.401237>,  <41.253689, 33.267620, 24.805748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867863, 32.916111, 24.401237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516426, 32.749851, 24.307171>,  <41.305565, 32.650093, 24.250731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516426, 32.749851, 24.307171>,  <41.867863, 32.916111, 24.401237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516426, 32.749851, 24.307171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180865, 0.166138, -0.969374,
		0.441993, -0.894221, -0.070791,
		-0.878596, -0.415653, -0.235165,
		41.252846, 32.625156, 24.236622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095837, 32.509377, 23.900028>,  <41.867863, 32.916111, 24.401237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095837, 32.509377, 23.900028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.701969, 32.559875, 23.851868>,  <41.465649, 32.590176, 23.822971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.701969, 32.559875, 23.851868>,  <42.095837, 32.509377, 23.900028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701969, 32.559875, 23.851868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127738, 0.051710, -0.990459,
		-0.118818, -0.990650, -0.067044,
		-0.984665, 0.126249, -0.120399,
		41.406570, 32.597752, 23.815748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952675, 32.069332, 23.313345>,  <42.095837, 32.509377, 23.900028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952675, 32.069332, 23.313345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.638905, 32.315376, 23.345154>,  <41.450642, 32.463001, 23.364239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.638905, 32.315376, 23.345154>,  <41.952675, 32.069332, 23.313345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638905, 32.315376, 23.345154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037208, 0.081318, -0.995993,
		-0.619108, -0.784240, -0.040901,
		-0.784424, 0.615106, 0.079524,
		41.403576, 32.499908, 23.369011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451450, 31.713762, 22.852570>,  <41.952675, 32.069332, 23.313345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451450, 31.713762, 22.852570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.343311, 32.096897, 22.891485>,  <41.278427, 32.326778, 22.914835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.343311, 32.096897, 22.891485>,  <41.451450, 31.713762, 22.852570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343311, 32.096897, 22.891485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099805, 0.128391, -0.986689,
		-0.957576, -0.257036, -0.130307,
		-0.270345, 0.957835, 0.097291,
		41.262207, 32.384247, 22.920671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034126, 31.834850, 22.206373>,  <41.451450, 31.713762, 22.852570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034126, 31.834850, 22.206373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.142773, 32.190872, 22.352812>,  <41.207958, 32.404484, 22.440676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.142773, 32.190872, 22.352812>,  <41.034126, 31.834850, 22.206373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142773, 32.190872, 22.352812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300807, 0.282828, -0.910782,
		-0.914189, 0.357504, -0.190916,
		0.271612, 0.890056, 0.366098,
		41.224255, 32.457890, 22.462641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750492, 32.277988, 21.738813>,  <41.034126, 31.834850, 22.206373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750492, 32.277988, 21.738813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.050892, 32.476727, 21.912773>,  <41.231133, 32.595970, 22.017149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.050892, 32.476727, 21.912773>,  <40.750492, 32.277988, 21.738813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050892, 32.476727, 21.912773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298339, 0.332254, -0.894763,
		-0.589059, 0.801716, 0.101293,
		0.751001, 0.496849, 0.434900,
		41.276192, 32.625782, 22.043243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013294, 32.679398, 21.245300>,  <40.750492, 32.277988, 21.738813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013294, 32.679398, 21.245300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.301239, 32.725227, 21.519140>,  <41.474007, 32.752724, 21.683445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.301239, 32.725227, 21.519140>,  <41.013294, 32.679398, 21.245300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301239, 32.725227, 21.519140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609872, 0.366566, -0.702628,
		-0.331454, 0.923311, 0.194000,
		0.719858, 0.114573, 0.684601,
		41.517197, 32.759598, 21.724520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367626, 33.359127, 21.054779>,  <41.013294, 32.679398, 21.245300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367626, 33.359127, 21.054779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.648808, 33.160976, 21.258919>,  <41.817516, 33.042084, 21.381403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.648808, 33.160976, 21.258919>,  <41.367626, 33.359127, 21.054779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648808, 33.160976, 21.258919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693311, 0.317188, -0.647080,
		0.158675, 0.808696, 0.566421,
		0.702953, -0.495381, 0.510348,
		41.859692, 33.012363, 21.412024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891457, 33.856583, 21.229925>,  <41.367626, 33.359127, 21.054779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891457, 33.856583, 21.229925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.025944, 33.481781, 21.192019>,  <42.106636, 33.256901, 21.169273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.025944, 33.481781, 21.192019>,  <41.891457, 33.856583, 21.229925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025944, 33.481781, 21.192019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705580, 0.317260, -0.633643,
		0.623793, 0.146173, 0.767799,
		0.336214, -0.937006, -0.094768,
		42.126808, 33.200680, 21.163588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611092, 33.850323, 21.394781>,  <41.891457, 33.856583, 21.229925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611092, 33.850323, 21.394781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.565674, 33.511574, 21.186970>,  <42.538425, 33.308323, 21.062283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.565674, 33.511574, 21.186970>,  <42.611092, 33.850323, 21.394781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565674, 33.511574, 21.186970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883802, 0.152787, -0.442211,
		0.453875, -0.509368, 0.731124,
		-0.113542, -0.846877, -0.519526,
		42.531612, 33.257511, 21.031113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285770, 33.549969, 21.454176>,  <42.611092, 33.850323, 21.394781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285770, 33.549969, 21.454176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.149666, 33.304001, 21.169615>,  <43.068001, 33.156422, 20.998878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.149666, 33.304001, 21.169615>,  <43.285770, 33.549969, 21.454176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149666, 33.304001, 21.169615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852521, 0.117490, -0.509317,
		0.396771, -0.779790, 0.484253,
		-0.340266, -0.614918, -0.711404,
		43.047585, 33.119526, 20.956194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869835, 33.054527, 21.236536>,  <43.285770, 33.549969, 21.454176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869835, 33.054527, 21.236536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.605331, 33.049675, 20.936512>,  <43.446629, 33.046764, 20.756496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.605331, 33.049675, 20.936512>,  <43.869835, 33.054527, 21.236536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605331, 33.049675, 20.936512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748036, 0.064536, -0.660513,
		0.056413, -0.997842, -0.033607,
		-0.661256, -0.012122, -0.750062,
		43.406956, 33.046036, 20.711493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.144600, 32.612362, 20.764383>,  <43.869835, 33.054527, 21.236536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.144600, 32.612362, 20.764383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.882107, 32.850067, 20.578386>,  <43.724613, 32.992691, 20.466787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.882107, 32.850067, 20.578386>,  <44.144600, 32.612362, 20.764383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882107, 32.850067, 20.578386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693019, 0.230903, -0.682942,
		-0.298478, -0.770414, -0.563359,
		-0.656229, 0.594261, -0.464992,
		43.685238, 33.028347, 20.438889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387638, 32.568573, 20.071648>,  <44.144600, 32.612362, 20.764383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387638, 32.568573, 20.071648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.177105, 32.906788, 20.107513>,  <44.050785, 33.109715, 20.129032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.177105, 32.906788, 20.107513>,  <44.387638, 32.568573, 20.071648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.177105, 32.906788, 20.107513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704133, 0.492552, -0.511458,
		-0.476620, -0.206063, -0.854618,
		-0.526336, 0.845535, 0.089664,
		44.019203, 33.160450, 20.134413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.471878, 32.911671, 19.422075>,  <44.387638, 32.568573, 20.071648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.471878, 32.911671, 19.422075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.335514, 33.197239, 19.666729>,  <44.253696, 33.368580, 19.813520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.335514, 33.197239, 19.666729>,  <44.471878, 32.911671, 19.422075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335514, 33.197239, 19.666729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562539, 0.676190, -0.475729,
		-0.753213, 0.181885, -0.632130,
		-0.340911, 0.713923, 0.611632,
		44.233242, 33.411415, 19.850218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454082, 33.465534, 19.014292>,  <44.471878, 32.911671, 19.422075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454082, 33.465534, 19.014292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.435291, 33.631283, 19.377850>,  <44.424015, 33.730732, 19.595984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.435291, 33.631283, 19.377850>,  <44.454082, 33.465534, 19.014292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435291, 33.631283, 19.377850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553468, 0.768255, -0.321648,
		-0.831545, 0.487933, -0.265433,
		-0.046978, 0.414374, 0.908893,
		44.421200, 33.755596, 19.650518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289635, 34.228859, 18.894272>,  <44.454082, 33.465534, 19.014292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289635, 34.228859, 18.894272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.483589, 34.179668, 19.240625>,  <44.599964, 34.150154, 19.448439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.483589, 34.179668, 19.240625>,  <44.289635, 34.228859, 18.894272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483589, 34.179668, 19.240625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549944, 0.812706, -0.192540,
		-0.680032, 0.569549, 0.461703,
		0.484890, -0.122977, 0.865886,
		44.629055, 34.142776, 19.500391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108505, 34.812756, 19.290377>,  <44.289635, 34.228859, 18.894272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108505, 34.812756, 19.290377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.475990, 34.664066, 19.343733>,  <44.696480, 34.574852, 19.375746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.475990, 34.664066, 19.343733>,  <44.108505, 34.812756, 19.290377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475990, 34.664066, 19.343733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389881, 0.907505, -0.156292,
		-0.062956, 0.195594, 0.978662,
		0.918711, -0.371723, 0.133391,
		44.751602, 34.552551, 19.383751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.447872, 35.264984, 19.724167>,  <44.108505, 34.812756, 19.290377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.447872, 35.264984, 19.724167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.717484, 35.065083, 19.506567>,  <44.879250, 34.945141, 19.376007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.717484, 35.065083, 19.506567>,  <44.447872, 35.264984, 19.724167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.717484, 35.065083, 19.506567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373380, 0.865910, -0.332848,
		0.637394, 0.021232, 0.770246,
		0.674030, -0.499750, -0.543998,
		44.919693, 34.915157, 19.343367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628746, 35.627777, 19.091631>,  <44.447872, 35.264984, 19.724167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628746, 35.627777, 19.091631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.376617, 35.682079, 18.785881>,  <44.225342, 35.714661, 18.602430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.376617, 35.682079, 18.785881>,  <44.628746, 35.627777, 19.091631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376617, 35.682079, 18.785881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771490, 0.000332, 0.636242,
		0.086626, 0.990742, 0.104523,
		-0.630317, 0.135754, -0.764376,
		44.187523, 35.722805, 18.556568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191715, 36.189743, 19.226568>,  <44.628746, 35.627777, 19.091631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191715, 36.189743, 19.226568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.977585, 35.978046, 18.963255>,  <43.849106, 35.851028, 18.805267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.977585, 35.978046, 18.963255>,  <44.191715, 36.189743, 19.226568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.977585, 35.978046, 18.963255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795696, 0.054518, 0.603237,
		-0.283370, 0.846718, -0.450301,
		-0.535321, -0.529242, -0.658281,
		43.816990, 35.819275, 18.765770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580669, 36.501896, 19.214111>,  <44.191715, 36.189743, 19.226568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580669, 36.501896, 19.214111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.487133, 36.143154, 19.063925>,  <43.431011, 35.927910, 18.973812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.487133, 36.143154, 19.063925>,  <43.580669, 36.501896, 19.214111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487133, 36.143154, 19.063925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874036, 0.024750, 0.485231,
		-0.425887, 0.441640, -0.789668,
		-0.233842, -0.896851, -0.375468,
		43.416981, 35.874100, 18.951284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853584, 36.498623, 19.213572>,  <43.580669, 36.501896, 19.214111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853584, 36.498623, 19.213572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.917122, 36.112396, 19.131153>,  <42.955242, 35.880661, 19.081701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.917122, 36.112396, 19.131153>,  <42.853584, 36.498623, 19.213572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917122, 36.112396, 19.131153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851393, -0.239627, 0.466593,
		-0.499900, 0.101312, -0.860137,
		0.158841, -0.965564, -0.206046,
		42.964775, 35.822727, 19.069340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291203, 36.181156, 18.732155>,  <42.853584, 36.498623, 19.213572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291203, 36.181156, 18.732155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.461552, 35.893387, 18.951633>,  <42.563759, 35.720726, 19.083321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.461552, 35.893387, 18.951633>,  <42.291203, 36.181156, 18.732155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461552, 35.893387, 18.951633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890222, -0.224807, 0.396189,
		-0.161676, -0.657186, -0.736184,
		0.425870, -0.719422, 0.548696,
		42.589314, 35.677559, 19.116241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775608, 35.600193, 18.647879>,  <42.291203, 36.181156, 18.732155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775608, 35.600193, 18.647879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.992943, 35.517200, 18.973269>,  <42.123344, 35.467403, 19.168503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.992943, 35.517200, 18.973269>,  <41.775608, 35.600193, 18.647879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992943, 35.517200, 18.973269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799760, -0.422575, 0.426396,
		0.255284, -0.882260, -0.395534,
		0.543335, -0.207480, 0.813473,
		42.155945, 35.454956, 19.217310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702457, 34.807068, 18.825808>,  <41.775608, 35.600193, 18.647879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702457, 34.807068, 18.825808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.800976, 35.011932, 19.154936>,  <41.860088, 35.134850, 19.352413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.800976, 35.011932, 19.154936>,  <41.702457, 34.807068, 18.825808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800976, 35.011932, 19.154936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553367, -0.622680, 0.553222,
		0.795690, -0.591578, 0.130048,
		0.246295, 0.512157, 0.822820,
		41.874863, 35.165581, 19.401781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664692, 34.297752, 19.275602>,  <41.702457, 34.807068, 18.825808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664692, 34.297752, 19.275602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.647045, 34.623363, 19.507263>,  <41.636456, 34.818729, 19.646259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.647045, 34.623363, 19.507263>,  <41.664692, 34.297752, 19.275602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647045, 34.623363, 19.507263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576777, -0.494097, 0.650535,
		0.815709, -0.305340, 0.491310,
		-0.044120, 0.814024, 0.579153,
		41.633808, 34.867569, 19.681009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646919, 34.072659, 19.975258>,  <41.664692, 34.297752, 19.275602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646919, 34.072659, 19.975258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.524384, 34.451992, 20.008280>,  <41.450863, 34.679592, 20.028093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.524384, 34.451992, 20.008280>,  <41.646919, 34.072659, 19.975258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524384, 34.451992, 20.008280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622454, -0.265173, 0.736366,
		0.720214, 0.174190, 0.671528,
		-0.306339, 0.948336, 0.082556,
		41.432484, 34.736492, 20.033047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769352, 34.320171, 20.594156>,  <41.646919, 34.072659, 19.975258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769352, 34.320171, 20.594156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.469414, 34.551224, 20.465113>,  <41.289452, 34.689854, 20.387686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.469414, 34.551224, 20.465113>,  <41.769352, 34.320171, 20.594156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469414, 34.551224, 20.465113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541496, -0.255638, 0.800894,
		0.380147, 0.775240, 0.504472,
		-0.749847, 0.577627, -0.322610,
		41.244461, 34.724510, 20.368330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642708, 34.867844, 21.021605>,  <41.769352, 34.320171, 20.594156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642708, 34.867844, 21.021605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.300426, 34.804268, 20.824625>,  <41.095058, 34.766125, 20.706436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.300426, 34.804268, 20.824625>,  <41.642708, 34.867844, 21.021605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300426, 34.804268, 20.824625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423464, -0.331862, 0.842939,
		-0.297398, 0.929842, 0.216673,
		-0.855706, -0.158935, -0.492450,
		41.043716, 34.756588, 20.676889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158661, 35.021160, 21.452797>,  <41.642708, 34.867844, 21.021605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158661, 35.021160, 21.452797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.924484, 34.863873, 21.169210>,  <40.783978, 34.769501, 20.999058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.924484, 34.863873, 21.169210>,  <41.158661, 35.021160, 21.452797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924484, 34.863873, 21.169210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642534, -0.308218, 0.701535,
		-0.494371, 0.866246, -0.072210,
		-0.585446, -0.393216, -0.708967,
		40.748852, 34.745907, 20.956520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494003, 35.239376, 21.632917>,  <41.158661, 35.021160, 21.452797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494003, 35.239376, 21.632917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.443390, 34.913971, 21.405874>,  <40.413021, 34.718727, 21.269648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.443390, 34.913971, 21.405874>,  <40.494003, 35.239376, 21.632917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443390, 34.913971, 21.405874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682074, -0.344120, 0.645257,
		-0.720253, 0.468798, -0.511335,
		-0.126535, -0.813517, -0.567609,
		40.405430, 34.669914, 21.235592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807114, 35.162868, 21.541384>,  <40.494003, 35.239376, 21.632917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807114, 35.162868, 21.541384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.948273, 34.794346, 21.476078>,  <40.032967, 34.573231, 21.436895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.948273, 34.794346, 21.476078>,  <39.807114, 35.162868, 21.541384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948273, 34.794346, 21.476078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662748, -0.369298, 0.651448,
		-0.660477, -0.121691, -0.740919,
		0.352896, -0.921309, -0.163262,
		40.054142, 34.517952, 21.427099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187637, 34.753471, 21.549871>,  <39.807114, 35.162868, 21.541384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187637, 34.753471, 21.549871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.476181, 34.478336, 21.582161>,  <39.649307, 34.313255, 21.601534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.476181, 34.478336, 21.582161>,  <39.187637, 34.753471, 21.549871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476181, 34.478336, 21.582161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489023, -0.423349, 0.762648,
		-0.490409, -0.589616, -0.641757,
		0.721357, -0.687843, 0.080722,
		39.692589, 34.271984, 21.606379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882057, 34.124638, 21.420580>,  <39.187637, 34.753471, 21.549871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882057, 34.124638, 21.420580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.220131, 34.017918, 21.605829>,  <39.422974, 33.953888, 21.716978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.220131, 34.017918, 21.605829>,  <38.882057, 34.124638, 21.420580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220131, 34.017918, 21.605829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524259, -0.582441, 0.621221,
		0.104001, -0.767843, -0.632141,
		0.845184, -0.266797, 0.463123,
		39.473686, 33.937878, 21.744766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737782, 33.517265, 21.572382>,  <38.882057, 34.124638, 21.420580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737782, 33.517265, 21.572382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051453, 33.557323, 21.817341>,  <39.239655, 33.581356, 21.964317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051453, 33.557323, 21.817341>,  <38.737782, 33.517265, 21.572382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051453, 33.557323, 21.817341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468334, -0.551926, 0.689957,
		0.407092, -0.827858, -0.385911,
		0.784181, 0.100141, 0.612399,
		39.286709, 33.587364, 22.001060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936184, 32.892365, 21.829842>,  <38.737782, 33.517265, 21.572382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936184, 32.892365, 21.829842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084000, 33.154198, 22.093647>,  <39.172688, 33.311298, 22.251930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084000, 33.154198, 22.093647>,  <38.936184, 32.892365, 21.829842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084000, 33.154198, 22.093647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579898, -0.392120, 0.714115,
		0.726060, -0.646341, 0.234692,
		0.369534, 0.654588, 0.659514,
		39.194859, 33.350574, 22.291502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985764, 32.450241, 22.308334>,  <38.936184, 32.892365, 21.829842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985764, 32.450241, 22.308334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.010517, 32.809280, 22.482918>,  <39.025372, 33.024704, 22.587667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.010517, 32.809280, 22.482918>,  <38.985764, 32.450241, 22.308334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010517, 32.809280, 22.482918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584629, -0.321825, 0.744740,
		0.808937, -0.301255, 0.504843,
		0.061886, 0.897594, 0.436458,
		39.029083, 33.078560, 22.613855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122185, 32.330952, 23.032106>,  <38.985764, 32.450241, 22.308334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122185, 32.330952, 23.032106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.952862, 32.693203, 23.021957>,  <38.851269, 32.910553, 23.015867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.952862, 32.693203, 23.021957>,  <39.122185, 32.330952, 23.032106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952862, 32.693203, 23.021957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572117, -0.245490, 0.782570,
		0.702491, 0.345783, 0.622045,
		-0.423305, 0.905632, -0.025373,
		38.825871, 32.964893, 23.014345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.991756, 30.827223, 28.767056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.064369, 31.203362, 28.651958>,  <39.107937, 31.429045, 28.582901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.064369, 31.203362, 28.651958>,  <38.991756, 30.827223, 28.767056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064369, 31.203362, 28.651958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170824, 0.318310, 0.932469,
		0.968434, -0.120121, 0.218417,
		0.181534, 0.940345, -0.287743,
		39.118828, 31.485466, 28.565636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294613, 31.155558, 29.346727>,  <38.991756, 30.827223, 28.767056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294613, 31.155558, 29.346727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.130684, 31.457840, 29.142393>,  <39.032326, 31.639210, 29.019793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.130684, 31.457840, 29.142393>,  <39.294613, 31.155558, 29.346727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130684, 31.457840, 29.142393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200634, 0.471631, 0.858668,
		0.889827, 0.454392, -0.041664,
		-0.409822, 0.755707, -0.510837,
		39.007736, 31.684551, 28.989141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630344, 31.777138, 29.693104>,  <39.294613, 31.155558, 29.346727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630344, 31.777138, 29.693104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.299549, 31.895479, 29.501869>,  <39.101074, 31.966484, 29.387129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.299549, 31.895479, 29.501869>,  <39.630344, 31.777138, 29.693104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299549, 31.895479, 29.501869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263016, 0.547981, 0.794065,
		0.496910, 0.782424, -0.375358,
		-0.826984, 0.295854, -0.478087,
		39.051453, 31.984236, 29.358442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617977, 32.515446, 29.685066>,  <39.630344, 31.777138, 29.693104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617977, 32.515446, 29.685066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.243908, 32.374748, 29.668449>,  <39.019466, 32.290329, 29.658480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.243908, 32.374748, 29.668449>,  <39.617977, 32.515446, 29.685066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243908, 32.374748, 29.668449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271489, 0.636544, 0.721876,
		-0.227475, 0.686357, -0.690774,
		-0.935173, -0.351747, -0.041541,
		38.963356, 32.269226, 29.655987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209126, 33.088600, 29.651943>,  <39.617977, 32.515446, 29.685066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209126, 33.088600, 29.651943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.968922, 32.799301, 29.788355>,  <38.824799, 32.625721, 29.870201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.968922, 32.799301, 29.788355>,  <39.209126, 33.088600, 29.651943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968922, 32.799301, 29.788355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292046, 0.595406, 0.748466,
		-0.744375, 0.349866, -0.568770,
		-0.600512, -0.723246, 0.341029,
		38.788769, 32.582329, 29.890663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554783, 33.401115, 29.802940>,  <39.209126, 33.088600, 29.651943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554783, 33.401115, 29.802940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.514603, 33.047508, 29.985550>,  <38.490494, 32.835342, 30.095116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.514603, 33.047508, 29.985550>,  <38.554783, 33.401115, 29.802940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514603, 33.047508, 29.985550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343483, 0.461447, 0.817977,
		-0.933771, -0.074640, -0.350000,
		-0.100452, -0.884023, 0.456523,
		38.484467, 32.782303, 30.122507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842316, 33.247593, 30.031919>,  <38.554783, 33.401115, 29.802940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842316, 33.247593, 30.031919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.077480, 33.039829, 30.279976>,  <38.218578, 32.915173, 30.428810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.077480, 33.039829, 30.279976>,  <37.842316, 33.247593, 30.031919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077480, 33.039829, 30.279976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552649, 0.301921, 0.776803,
		-0.590713, -0.799411, -0.109549,
		0.587909, -0.519410, 0.620142,
		38.253853, 32.884007, 30.466019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374954, 33.030350, 30.575144>,  <37.842316, 33.247593, 30.031919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374954, 33.030350, 30.575144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.731167, 32.943981, 30.735312>,  <37.944893, 32.892159, 30.831413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.731167, 32.943981, 30.735312>,  <37.374954, 33.030350, 30.575144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731167, 32.943981, 30.735312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327421, 0.306873, 0.893658,
		-0.315840, -0.926934, 0.202581,
		0.890528, -0.215923, 0.400420,
		37.998325, 32.879204, 30.855438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243156, 32.558540, 31.164152>,  <37.374954, 33.030350, 30.575144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243156, 32.558540, 31.164152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.595695, 32.744587, 31.197351>,  <37.807220, 32.856216, 31.217272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.595695, 32.744587, 31.197351>,  <37.243156, 32.558540, 31.164152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595695, 32.744587, 31.197351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307000, 0.430248, 0.848904,
		0.359126, -0.773663, 0.521990,
		0.881351, 0.465114, 0.083001,
		37.860100, 32.884121, 31.222252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633453, 32.324146, 31.890331>,  <37.243156, 32.558540, 31.164152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633453, 32.324146, 31.890331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.773136, 32.671902, 31.750492>,  <37.856945, 32.880554, 31.666588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.773136, 32.671902, 31.750492>,  <37.633453, 32.324146, 31.890331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773136, 32.671902, 31.750492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208146, 0.435734, 0.875678,
		0.913635, -0.233027, 0.333122,
		0.349208, 0.869388, -0.349598,
		37.877899, 32.932716, 31.645613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859905, 32.669899, 32.469521>,  <37.633453, 32.324146, 31.890331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859905, 32.669899, 32.469521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.847343, 32.972675, 32.208431>,  <37.839806, 33.154343, 32.051777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.847343, 32.972675, 32.208431>,  <37.859905, 32.669899, 32.469521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847343, 32.972675, 32.208431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309521, 0.613582, 0.726439,
		0.950374, 0.224844, 0.215023,
		-0.031401, 0.756943, -0.652727,
		37.837925, 33.199757, 32.012611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309460, 33.124756, 32.698746>,  <37.859905, 32.669899, 32.469521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309460, 33.124756, 32.698746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.027893, 33.317432, 32.489948>,  <37.858952, 33.433037, 32.364670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.027893, 33.317432, 32.489948>,  <38.309460, 33.124756, 32.698746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027893, 33.317432, 32.489948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347467, 0.407439, 0.844547,
		0.619491, 0.775866, -0.119431,
		-0.703916, 0.481690, -0.521993,
		37.816719, 33.461941, 32.333351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170879, 33.930660, 33.005188>,  <38.309460, 33.124756, 32.698746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170879, 33.930660, 33.005188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.855812, 33.774586, 32.814468>,  <37.666771, 33.680943, 32.700035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.855812, 33.774586, 32.814468>,  <38.170879, 33.930660, 33.005188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855812, 33.774586, 32.814468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601859, 0.321867, 0.730867,
		-0.131708, 0.862646, -0.488360,
		-0.787666, -0.390185, -0.476799,
		37.619511, 33.657532, 32.671429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865456, 33.464638, 33.495007>,  <38.170879, 33.930660, 33.005188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865456, 33.464638, 33.495007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.016876, 33.095592, 33.465401>,  <38.107727, 32.874165, 33.447636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.016876, 33.095592, 33.465401>,  <37.865456, 33.464638, 33.495007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016876, 33.095592, 33.465401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704729, 0.235457, 0.669266,
		-0.600048, -0.305512, 0.739327,
		0.378548, -0.922618, -0.074017,
		38.130440, 32.818806, 33.443195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145859, 33.776234, 34.214195>,  <37.865456, 33.464638, 33.495007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145859, 33.776234, 34.214195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.539238, 33.808933, 34.278866>,  <38.775265, 33.828552, 34.317669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.539238, 33.808933, 34.278866>,  <38.145859, 33.776234, 34.214195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539238, 33.808933, 34.278866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164277, -0.026081, -0.986069,
		-0.076391, 0.996312, -0.039078,
		0.983452, 0.081747, 0.161679,
		38.834274, 33.833458, 34.327370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341320, 34.046448, 34.863194>,  <38.145859, 33.776234, 34.214195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341320, 34.046448, 34.863194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.593952, 34.266426, 35.081795>,  <38.745533, 34.398411, 35.212955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.593952, 34.266426, 35.081795>,  <38.341320, 34.046448, 34.863194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593952, 34.266426, 35.081795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228450, 0.541585, -0.809009,
		-0.740888, 0.635805, 0.216420,
		0.631582, 0.549944, 0.546503,
		38.783428, 34.431408, 35.245747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176773, 34.833843, 34.899948>,  <38.341320, 34.046448, 34.863194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176773, 34.833843, 34.899948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.568943, 34.791767, 34.966534>,  <38.804245, 34.766521, 35.006485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.568943, 34.791767, 34.966534>,  <38.176773, 34.833843, 34.899948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568943, 34.791767, 34.966534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181063, 0.813867, -0.552120,
		-0.077403, 0.571451, 0.816978,
		0.980421, -0.105189, 0.166464,
		38.863068, 34.760212, 35.016472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383465, 35.554241, 35.020481>,  <38.176773, 34.833843, 34.899948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383465, 35.554241, 35.020481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.686634, 35.311085, 34.925808>,  <38.868538, 35.165192, 34.869003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.686634, 35.311085, 34.925808>,  <38.383465, 35.554241, 35.020481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686634, 35.311085, 34.925808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266904, 0.620031, -0.737783,
		0.595241, 0.496013, 0.632186,
		0.757925, -0.607892, -0.236681,
		38.914013, 35.128716, 34.854805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902042, 36.027122, 34.675892>,  <38.383465, 35.554241, 35.020481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902042, 36.027122, 34.675892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001453, 35.654667, 34.569145>,  <39.061100, 35.431194, 34.505096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001453, 35.654667, 34.569145>,  <38.902042, 36.027122, 34.675892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001453, 35.654667, 34.569145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303204, 0.336447, -0.891555,
		0.919946, 0.140661, 0.365942,
		0.248527, -0.931138, -0.266864,
		39.076012, 35.375324, 34.489086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610855, 36.045025, 34.521435>,  <38.902042, 36.027122, 34.675892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610855, 36.045025, 34.521435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.423763, 35.758621, 34.314140>,  <39.311508, 35.586781, 34.189766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.423763, 35.758621, 34.314140>,  <39.610855, 36.045025, 34.521435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423763, 35.758621, 34.314140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208399, 0.480454, -0.851900,
		0.858954, -0.506456, -0.075507,
		-0.467727, -0.716007, -0.518232,
		39.283443, 35.543819, 34.158672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060688, 35.789883, 34.023994>,  <39.610855, 36.045025, 34.521435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060688, 35.789883, 34.023994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.712963, 35.658836, 33.875954>,  <39.504330, 35.580208, 33.787128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.712963, 35.658836, 33.875954>,  <40.060688, 35.789883, 34.023994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712963, 35.658836, 33.875954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301547, 0.241754, -0.922293,
		0.391629, -0.913359, -0.111368,
		-0.869308, -0.327614, -0.370098,
		39.452171, 35.560551, 33.764923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347538, 35.445324, 33.432236>,  <40.060688, 35.789883, 34.023994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347538, 35.445324, 33.432236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.953079, 35.486118, 33.379913>,  <39.716404, 35.510593, 33.348518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.953079, 35.486118, 33.379913>,  <40.347538, 35.445324, 33.432236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953079, 35.486118, 33.379913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146857, 0.170294, -0.974389,
		-0.077100, -0.980101, -0.182913,
		-0.986149, 0.101987, -0.130805,
		39.657234, 35.516716, 33.340672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073627, 34.999508, 32.899712>,  <40.347538, 35.445324, 33.432236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073627, 34.999508, 32.899712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.760529, 35.248409, 32.903606>,  <39.572670, 35.397751, 32.905941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.760529, 35.248409, 32.903606>,  <40.073627, 34.999508, 32.899712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760529, 35.248409, 32.903606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019391, 0.040019, -0.999011,
		-0.622032, -0.781789, -0.043391,
		-0.782752, 0.622258, 0.009734,
		39.525703, 35.435085, 32.906525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503876, 34.705173, 32.528294>,  <40.073627, 34.999508, 32.899712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503876, 34.705173, 32.528294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.457848, 35.102146, 32.511112>,  <39.430233, 35.340328, 32.500805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.457848, 35.102146, 32.511112>,  <39.503876, 34.705173, 32.528294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457848, 35.102146, 32.511112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100176, -0.031424, -0.994473,
		-0.988294, -0.118734, -0.095802,
		-0.115067, 0.992429, -0.042951,
		39.423328, 35.399876, 32.498226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065678, 34.848373, 31.958315>,  <39.503876, 34.705173, 32.528294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065678, 34.848373, 31.958315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.249313, 35.190239, 32.055305>,  <39.359493, 35.395359, 32.113499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.249313, 35.190239, 32.055305>,  <39.065678, 34.848373, 31.958315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249313, 35.190239, 32.055305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082660, 0.230661, -0.969517,
		-0.884537, 0.465137, 0.035248,
		0.459088, 0.854660, 0.242476,
		39.387039, 35.446636, 32.128048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785118, 35.359406, 31.465443>,  <39.065678, 34.848373, 31.958315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785118, 35.359406, 31.465443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.115116, 35.527859, 31.616190>,  <39.313114, 35.628929, 31.706638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.115116, 35.527859, 31.616190>,  <38.785118, 35.359406, 31.465443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115116, 35.527859, 31.616190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194005, 0.415289, -0.888762,
		-0.530796, 0.806339, 0.260910,
		0.824996, 0.421133, 0.376867,
		39.362614, 35.654198, 31.729250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805157, 36.077179, 31.252169>,  <38.785118, 35.359406, 31.465443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805157, 36.077179, 31.252169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.177784, 35.970615, 31.351130>,  <39.401360, 35.906677, 31.410505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.177784, 35.970615, 31.351130>,  <38.805157, 36.077179, 31.252169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177784, 35.970615, 31.351130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291809, 0.141992, -0.945878,
		0.216864, 0.953343, 0.210017,
		0.931567, -0.266412, 0.247401,
		39.457253, 35.890694, 31.425350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277569, 36.684345, 30.961380>,  <38.805157, 36.077179, 31.252169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277569, 36.684345, 30.961380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.485023, 36.346844, 31.016661>,  <39.609497, 36.144344, 31.049829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.485023, 36.346844, 31.016661>,  <39.277569, 36.684345, 30.961380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485023, 36.346844, 31.016661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610663, 0.252418, -0.750583,
		0.598423, 0.473671, 0.646162,
		0.518633, -0.843754, 0.138200,
		39.640614, 36.093716, 31.058121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396187, 37.442554, 31.349224>,  <39.277569, 36.684345, 30.961380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396187, 37.442554, 31.349224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.142776, 37.715874, 31.204039>,  <38.990730, 37.879868, 31.116926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.142776, 37.715874, 31.204039>,  <39.396187, 37.442554, 31.349224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142776, 37.715874, 31.204039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585966, -0.117377, 0.801790,
		0.505259, 0.720641, 0.474752,
		-0.633528, 0.683300, -0.362965,
		38.952717, 37.920864, 31.095150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308918, 37.813976, 31.885063>,  <39.396187, 37.442554, 31.349224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308918, 37.813976, 31.885063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.989269, 37.883999, 31.655018>,  <38.797478, 37.926014, 31.516991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.989269, 37.883999, 31.655018>,  <39.308918, 37.813976, 31.885063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989269, 37.883999, 31.655018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600773, -0.197916, 0.774533,
		0.021763, 0.964460, 0.263329,
		-0.799123, 0.175057, -0.575114,
		38.749531, 37.936516, 31.482483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842857, 38.204571, 32.316715>,  <39.308918, 37.813976, 31.885063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842857, 38.204571, 32.316715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.596653, 38.070755, 32.031277>,  <38.448929, 37.990463, 31.860012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.596653, 38.070755, 32.031277>,  <38.842857, 38.204571, 32.316715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596653, 38.070755, 32.031277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629975, -0.335223, 0.700541,
		-0.473576, 0.880742, -0.004419,
		-0.615514, -0.334543, -0.713599,
		38.411999, 37.970390, 31.817198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220406, 38.351646, 32.579750>,  <38.842857, 38.204571, 32.316715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220406, 38.351646, 32.579750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.129951, 38.083538, 32.297020>,  <38.075680, 37.922672, 32.127380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.129951, 38.083538, 32.297020>,  <38.220406, 38.351646, 32.579750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129951, 38.083538, 32.297020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798369, -0.288203, 0.528721,
		-0.558095, 0.683870, -0.469950,
		-0.226135, -0.670270, -0.706825,
		38.062111, 37.882458, 32.084972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442348, 38.306652, 32.567551>,  <38.220406, 38.351646, 32.579750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442348, 38.306652, 32.567551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.577110, 37.967705, 32.403370>,  <37.657967, 37.764336, 32.304859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.577110, 37.967705, 32.403370>,  <37.442348, 38.306652, 32.567551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577110, 37.967705, 32.403370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784190, -0.493802, 0.375773,
		-0.521099, 0.195276, -0.830857,
		0.336900, -0.847364, -0.410454,
		37.678181, 37.713497, 32.280235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973663, 38.167377, 32.116802>,  <37.442348, 38.306652, 32.567551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973663, 38.167377, 32.116802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.175087, 37.844223, 32.239277>,  <37.295940, 37.650330, 32.312759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.175087, 37.844223, 32.239277>,  <36.973663, 38.167377, 32.116802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175087, 37.844223, 32.239277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854851, -0.414584, 0.312010,
		-0.125130, -0.418857, -0.899390,
		0.503560, -0.807886, 0.306184,
		37.326157, 37.601856, 32.331131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567413, 37.615795, 31.828140>,  <36.973663, 38.167377, 32.116802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567413, 37.615795, 31.828140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.767876, 37.451687, 32.132908>,  <36.888153, 37.353222, 32.315769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.767876, 37.451687, 32.132908>,  <36.567413, 37.615795, 31.828140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767876, 37.451687, 32.132908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729211, -0.674288, 0.116559,
		0.465933, -0.614015, -0.637097,
		0.501156, -0.410269, 0.761920,
		36.918224, 37.328606, 32.361485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393162, 36.846931, 31.754253>,  <36.567413, 37.615795, 31.828140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393162, 36.846931, 31.754253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.554474, 36.856323, 32.120163>,  <36.651260, 36.861958, 32.339710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.554474, 36.856323, 32.120163>,  <36.393162, 36.846931, 31.754253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554474, 36.856323, 32.120163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546860, -0.795339, 0.261495,
		0.733696, -0.605709, -0.307906,
		0.403280, 0.023477, 0.914775,
		36.675457, 36.863365, 32.394596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599522, 36.143002, 31.996748>,  <36.393162, 36.846931, 31.754253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599522, 36.143002, 31.996748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.570942, 36.355175, 32.334633>,  <36.553795, 36.482479, 32.537365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.570942, 36.355175, 32.334633>,  <36.599522, 36.143002, 31.996748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570942, 36.355175, 32.334633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589417, -0.705651, 0.393249,
		0.804663, -0.469789, 0.363065,
		-0.071453, 0.530429, 0.844713,
		36.549507, 36.514305, 32.588047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813332, 35.734661, 32.467747>,  <36.599522, 36.143002, 31.996748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813332, 35.734661, 32.467747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.602226, 36.001225, 32.678410>,  <36.475563, 36.161163, 32.804806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.602226, 36.001225, 32.678410>,  <36.813332, 35.734661, 32.467747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602226, 36.001225, 32.678410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581832, -0.735361, 0.347442,
		0.618819, -0.123055, 0.775836,
		-0.527765, 0.666409, 0.526653,
		36.443897, 36.201149, 32.836407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621727, 35.409073, 33.060791>,  <36.813332, 35.734661, 32.467747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621727, 35.409073, 33.060791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.364288, 35.715107, 33.052593>,  <36.209824, 35.898727, 33.047672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.364288, 35.715107, 33.052593>,  <36.621727, 35.409073, 33.060791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364288, 35.715107, 33.052593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725176, -0.601024, 0.335992,
		0.244743, 0.231110, 0.941642,
		-0.643600, 0.765087, -0.020499,
		36.171207, 35.944633, 33.046444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322563, 35.420658, 33.715107>,  <36.621727, 35.409073, 33.060791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322563, 35.420658, 33.715107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.094379, 35.604149, 33.442596>,  <35.957470, 35.714245, 33.279091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.094379, 35.604149, 33.442596>,  <36.322563, 35.420658, 33.715107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094379, 35.604149, 33.442596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754244, -0.620926, 0.213466,
		-0.325101, 0.635624, 0.700208,
		-0.570462, 0.458729, -0.681279,
		35.923241, 35.741768, 33.238213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.360538, 39.353233, 28.285269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007229, 39.198658, 28.179068>,  <40.795242, 39.105915, 28.115347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007229, 39.198658, 28.179068>,  <41.360538, 39.353233, 28.285269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007229, 39.198658, 28.179068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276242, -0.028618, 0.960662,
		-0.378831, 0.921873, -0.081472,
		-0.883277, -0.386434, -0.265501,
		40.742245, 39.082729, 28.099417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900913, 39.709454, 28.738447>,  <41.360538, 39.353233, 28.285269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900913, 39.709454, 28.738447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672318, 39.414097, 28.595238>,  <40.535160, 39.236885, 28.509312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672318, 39.414097, 28.595238>,  <40.900913, 39.709454, 28.738447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672318, 39.414097, 28.595238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460882, -0.072170, 0.884522,
		-0.678961, 0.670501, -0.299066,
		-0.571490, -0.738390, -0.358023,
		40.500870, 39.192581, 28.487831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279533, 39.880375, 28.959276>,  <40.900913, 39.709454, 28.738447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279533, 39.880375, 28.959276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236584, 39.488216, 28.893188>,  <40.210815, 39.252922, 28.853535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236584, 39.488216, 28.893188>,  <40.279533, 39.880375, 28.959276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236584, 39.488216, 28.893188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515302, -0.087239, 0.852557,
		-0.850255, 0.176682, -0.495832,
		-0.107375, -0.980395, -0.165220,
		40.204372, 39.194099, 28.843622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566776, 39.682419, 29.022123>,  <40.279533, 39.880375, 28.959276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566776, 39.682419, 29.022123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752914, 39.330551, 29.061386>,  <39.864597, 39.119431, 29.084944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752914, 39.330551, 29.061386>,  <39.566776, 39.682419, 29.022123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752914, 39.330551, 29.061386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576800, -0.217265, 0.787463,
		-0.671380, -0.423061, -0.608497,
		0.465350, -0.879668, 0.098155,
		39.892521, 39.066650, 29.090832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098156, 39.287903, 29.082571>,  <39.566776, 39.682419, 29.022123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098156, 39.287903, 29.082571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397396, 39.056210, 29.212086>,  <39.576939, 38.917194, 29.289795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397396, 39.056210, 29.212086>,  <39.098156, 39.287903, 29.082571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397396, 39.056210, 29.212086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611246, -0.411557, 0.676017,
		-0.258314, -0.703642, -0.661938,
		0.748099, -0.579232, 0.323787,
		39.621826, 38.882439, 29.309221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857445, 38.600121, 29.123432>,  <39.098156, 39.287903, 29.082571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857445, 38.600121, 29.123432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180782, 38.603275, 29.358896>,  <39.374783, 38.605167, 29.500175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180782, 38.603275, 29.358896>,  <38.857445, 38.600121, 29.123432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180782, 38.603275, 29.358896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486477, -0.554170, 0.675452,
		0.331548, -0.832366, -0.444120,
		0.808342, 0.007891, 0.588661,
		39.423286, 38.605644, 29.535494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082767, 37.888668, 29.401264>,  <38.857445, 38.600121, 29.123432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082767, 37.888668, 29.401264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241257, 38.150475, 29.658827>,  <39.336349, 38.307556, 29.813364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241257, 38.150475, 29.658827>,  <39.082767, 37.888668, 29.401264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241257, 38.150475, 29.658827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452863, -0.470750, 0.757172,
		0.798699, -0.591613, 0.109882,
		0.396226, 0.654514, 0.643907,
		39.360126, 38.346828, 29.851999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430443, 37.532646, 29.944374>,  <39.082767, 37.888668, 29.401264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430443, 37.532646, 29.944374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367638, 37.889278, 30.114281>,  <39.329952, 38.103260, 30.216225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367638, 37.889278, 30.114281>,  <39.430443, 37.532646, 29.944374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367638, 37.889278, 30.114281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578585, -0.431607, 0.692065,
		0.800366, -0.137099, 0.583625,
		-0.157016, 0.891582, 0.424767,
		39.320534, 38.156754, 30.241711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424786, 37.336025, 30.640577>,  <39.430443, 37.532646, 29.944374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424786, 37.336025, 30.640577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252342, 37.696842, 30.649273>,  <39.148876, 37.913330, 30.654490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252342, 37.696842, 30.649273>,  <39.424786, 37.336025, 30.640577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252342, 37.696842, 30.649273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611264, -0.309691, 0.728318,
		0.663702, 0.300697, 0.684894,
		-0.431109, 0.902038, 0.021737,
		39.123009, 37.967453, 30.655794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099037, 36.990871, 30.923233>,  <39.424786, 37.336025, 30.640577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099037, 36.990871, 30.923233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041790, 36.608860, 30.819357>,  <40.007442, 36.379654, 30.757030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041790, 36.608860, 30.819357>,  <40.099037, 36.990871, 30.923233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041790, 36.608860, 30.819357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265706, 0.215684, -0.939617,
		0.953372, -0.203475, 0.222889,
		-0.143115, -0.955028, -0.259692,
		39.998856, 36.322353, 30.741449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792130, 36.889584, 30.575748>,  <40.099037, 36.990871, 30.923233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792130, 36.889584, 30.575748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540138, 36.583862, 30.520672>,  <40.388943, 36.400429, 30.487627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540138, 36.583862, 30.520672>,  <40.792130, 36.889584, 30.575748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540138, 36.583862, 30.520672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068385, 0.122012, -0.990170,
		0.773593, -0.633204, -0.024598,
		-0.629981, -0.764307, -0.137690,
		40.351143, 36.354568, 30.479364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208157, 36.390068, 30.170219>,  <40.792130, 36.889584, 30.575748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208157, 36.390068, 30.170219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817249, 36.319309, 30.123478>,  <40.582706, 36.276852, 30.095432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817249, 36.319309, 30.123478>,  <41.208157, 36.390068, 30.170219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817249, 36.319309, 30.123478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136748, -0.104768, -0.985050,
		0.162014, -0.978637, 0.126577,
		-0.977268, -0.176901, -0.116853,
		40.524071, 36.266239, 30.088423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217472, 35.801575, 29.669125>,  <41.208157, 36.390068, 30.170219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217472, 35.801575, 29.669125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859253, 35.978828, 29.652994>,  <40.644321, 36.085178, 29.643316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859253, 35.978828, 29.652994>,  <41.217472, 35.801575, 29.669125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859253, 35.978828, 29.652994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050384, 0.010938, -0.998670,
		-0.442103, -0.896389, -0.032122,
		-0.895548, 0.443133, -0.040328,
		40.590588, 36.111767, 29.640896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917622, 35.356812, 29.274237>,  <41.217472, 35.801575, 29.669125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917622, 35.356812, 29.274237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728046, 35.708134, 29.249054>,  <40.614304, 35.918926, 29.233944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728046, 35.708134, 29.249054>,  <40.917622, 35.356812, 29.274237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728046, 35.708134, 29.249054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085869, -0.117254, -0.989383,
		-0.876363, -0.463497, 0.130990,
		-0.473935, 0.878306, -0.062957,
		40.585865, 35.971626, 29.230167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355495, 35.203491, 28.828121>,  <40.917622, 35.356812, 29.274237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355495, 35.203491, 28.828121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361099, 35.603424, 28.832895>,  <40.364460, 35.843384, 28.835760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361099, 35.603424, 28.832895>,  <40.355495, 35.203491, 28.828121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361099, 35.603424, 28.832895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040594, 0.012496, -0.999098,
		-0.999078, 0.013513, 0.040763,
		0.014010, 0.999831, 0.011936,
		40.365303, 35.903374, 28.836475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905788, 35.348419, 28.215797>,  <40.355495, 35.203491, 28.828121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905788, 35.348419, 28.215797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094753, 35.683502, 28.325394>,  <40.208134, 35.884552, 28.391151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094753, 35.683502, 28.325394>,  <39.905788, 35.348419, 28.215797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094753, 35.683502, 28.325394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139093, 0.236109, -0.961720,
		-0.870331, 0.492442, -0.004977,
		0.472416, 0.837707, 0.273988,
		40.236477, 35.934814, 28.407591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650612, 35.921791, 27.784327>,  <39.905788, 35.348419, 28.215797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650612, 35.921791, 27.784327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014111, 36.027908, 27.913198>,  <40.232208, 36.091579, 27.990522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014111, 36.027908, 27.913198>,  <39.650612, 35.921791, 27.784327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014111, 36.027908, 27.913198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318348, 0.058573, -0.946163,
		-0.269879, 0.962388, -0.031227,
		0.908746, 0.265290, 0.322182,
		40.286736, 36.107494, 28.009853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781494, 36.479065, 27.436874>,  <39.650612, 35.921791, 27.784327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781494, 36.479065, 27.436874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133816, 36.342896, 27.568510>,  <40.345207, 36.261192, 27.647491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133816, 36.342896, 27.568510>,  <39.781494, 36.479065, 27.436874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133816, 36.342896, 27.568510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344322, -0.016569, -0.938706,
		0.325011, 0.940126, 0.102621,
		0.880801, -0.340424, 0.329091,
		40.398056, 36.240768, 27.667238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214958, 36.943111, 27.029791>,  <39.781494, 36.479065, 27.436874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214958, 36.943111, 27.029791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409115, 36.618774, 27.160591>,  <40.525608, 36.424171, 27.239071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409115, 36.618774, 27.160591>,  <40.214958, 36.943111, 27.029791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409115, 36.618774, 27.160591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488444, -0.058710, -0.870618,
		0.725130, 0.582316, 0.367552,
		0.485396, -0.810840, 0.327001,
		40.554733, 36.375523, 27.258692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904140, 36.989399, 26.836193>,  <40.214958, 36.943111, 27.029791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904140, 36.989399, 26.836193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849697, 36.594818, 26.872839>,  <40.817032, 36.358070, 26.894827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849697, 36.594818, 26.872839>,  <40.904140, 36.989399, 26.836193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849697, 36.594818, 26.872839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347573, -0.134144, -0.928008,
		0.927722, -0.094464, 0.361121,
		-0.136105, -0.986449, 0.091616,
		40.808865, 36.298882, 26.900324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591045, 36.682388, 26.538376>,  <40.904140, 36.989399, 26.836193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591045, 36.682388, 26.538376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351181, 36.362381, 26.546186>,  <41.207264, 36.170376, 26.550873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351181, 36.362381, 26.546186>,  <41.591045, 36.682388, 26.538376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351181, 36.362381, 26.546186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397256, -0.318775, -0.860564,
		0.694689, -0.508289, 0.508968,
		-0.599662, -0.800015, 0.019529,
		41.171284, 36.122375, 26.552046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054337, 36.120987, 26.390078>,  <41.591045, 36.682388, 26.538376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054337, 36.120987, 26.390078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688095, 35.971512, 26.330708>,  <41.468349, 35.881828, 26.295086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688095, 35.971512, 26.330708>,  <42.054337, 36.120987, 26.390078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688095, 35.971512, 26.330708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350182, -0.559688, -0.751081,
		0.197600, -0.739666, 0.643310,
		-0.915602, -0.373689, -0.148423,
		41.413414, 35.859406, 26.286180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121002, 35.345139, 26.451246>,  <42.054337, 36.120987, 26.390078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121002, 35.345139, 26.451246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787189, 35.442707, 26.253635>,  <41.586903, 35.501247, 26.135069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787189, 35.442707, 26.253635>,  <42.121002, 35.345139, 26.451246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787189, 35.442707, 26.253635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310675, -0.532183, -0.787567,
		-0.455012, -0.810732, 0.368345,
		-0.834533, 0.243917, -0.494024,
		41.536831, 35.515884, 26.105429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.899338, 35.498917, 20.323442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.142532, 35.677814, 20.585840>,  <37.288448, 35.785152, 20.743279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.142532, 35.677814, 20.585840>,  <36.899338, 35.498917, 20.323442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142532, 35.677814, 20.585840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594882, -0.290581, 0.749452,
		0.525807, -0.845894, 0.089388,
		0.607982, 0.447242, 0.655997,
		37.324928, 35.811989, 20.782639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932995, 35.072853, 20.910694>,  <36.899338, 35.498917, 20.323442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932995, 35.072853, 20.910694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.041321, 35.437260, 21.035086>,  <37.106316, 35.655903, 21.109720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.041321, 35.437260, 21.035086>,  <36.932995, 35.072853, 20.910694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041321, 35.437260, 21.035086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660205, -0.059329, 0.748738,
		0.700564, -0.408076, 0.585392,
		0.270812, 0.911018, 0.310977,
		37.122566, 35.710564, 21.128380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106171, 34.920883, 21.610937>,  <36.932995, 35.072853, 20.910694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106171, 34.920883, 21.610937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.028214, 35.312584, 21.588718>,  <36.981438, 35.547604, 21.575386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.028214, 35.312584, 21.588718>,  <37.106171, 34.920883, 21.610937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028214, 35.312584, 21.588718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583255, -0.070175, 0.809252,
		0.788563, 0.190116, 0.584829,
		-0.194892, 0.979251, -0.055549,
		36.969746, 35.606358, 21.572054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391369, 35.189434, 22.322937>,  <37.106171, 34.920883, 21.610937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391369, 35.189434, 22.322937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.131165, 35.450294, 22.167229>,  <36.975040, 35.606812, 22.073803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.131165, 35.450294, 22.167229>,  <37.391369, 35.189434, 22.322937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131165, 35.450294, 22.167229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377428, 0.167194, 0.910821,
		0.659078, 0.739421, 0.137379,
		-0.650511, 0.652152, -0.389272,
		36.936012, 35.645939, 22.050447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350624, 35.664421, 22.877575>,  <37.391369, 35.189434, 22.322937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350624, 35.664421, 22.877575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.019836, 35.709206, 22.657179>,  <36.821365, 35.736076, 22.524940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.019836, 35.709206, 22.657179>,  <37.350624, 35.664421, 22.877575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019836, 35.709206, 22.657179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542656, 0.097532, 0.834273,
		0.147147, 0.988914, -0.019898,
		-0.826966, 0.111963, -0.550992,
		36.771748, 35.742794, 22.491880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046314, 36.235374, 23.079521>,  <37.350624, 35.664421, 22.877575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046314, 36.235374, 23.079521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.755825, 36.004593, 22.930004>,  <36.581532, 35.866123, 22.840294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.755825, 36.004593, 22.930004>,  <37.046314, 36.235374, 23.079521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755825, 36.004593, 22.930004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537907, 0.138315, 0.831580,
		-0.428085, 0.804978, -0.410796,
		-0.726223, -0.576957, -0.373793,
		36.537960, 35.831505, 22.817865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573494, 36.436806, 23.474142>,  <37.046314, 36.235374, 23.079521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573494, 36.436806, 23.474142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413155, 36.111473, 23.305473>,  <36.316952, 35.916275, 23.204271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413155, 36.111473, 23.305473>,  <36.573494, 36.436806, 23.474142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413155, 36.111473, 23.305473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529000, -0.170301, 0.831359,
		-0.747982, 0.556316, -0.361987,
		-0.400851, -0.813332, -0.421673,
		36.292900, 35.867474, 23.178972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744473, 36.511066, 23.544561>,  <36.573494, 36.436806, 23.474142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744473, 36.511066, 23.544561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.830997, 36.124557, 23.488676>,  <35.882912, 35.892651, 23.455145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.830997, 36.124557, 23.488676>,  <35.744473, 36.511066, 23.544561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830997, 36.124557, 23.488676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554800, -0.239405, 0.796795,
		-0.803372, -0.094844, -0.587876,
		0.216312, -0.966276, -0.139711,
		35.895889, 35.834675, 23.446762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170040, 36.206280, 23.632536>,  <35.744473, 36.511066, 23.544561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170040, 36.206280, 23.632536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.445465, 35.921516, 23.687780>,  <35.610722, 35.750660, 23.720926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.445465, 35.921516, 23.687780>,  <35.170040, 36.206280, 23.632536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445465, 35.921516, 23.687780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488035, -0.314042, 0.814370,
		-0.536381, -0.628147, -0.563672,
		0.688561, -0.711905, 0.138112,
		35.652035, 35.707947, 23.729214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762295, 35.583462, 23.827402>,  <35.170040, 36.206280, 23.632536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762295, 35.583462, 23.827402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.137272, 35.510681, 23.946121>,  <35.362259, 35.467014, 24.017353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.137272, 35.510681, 23.946121>,  <34.762295, 35.583462, 23.827402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137272, 35.510681, 23.946121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348112, -0.498670, 0.793818,
		0.003569, -0.847480, -0.530815,
		0.937446, -0.181950, 0.296798,
		35.418507, 35.456097, 24.035160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701038, 34.880211, 23.973410>,  <34.762295, 35.583462, 23.827402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701038, 34.880211, 23.973410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.015438, 35.035534, 24.165833>,  <35.204079, 35.128727, 24.281286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.015438, 35.035534, 24.165833>,  <34.701038, 34.880211, 23.973410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015438, 35.035534, 24.165833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334458, -0.387339, 0.859131,
		0.519943, -0.836172, -0.174575,
		0.786001, 0.388311, 0.481059,
		35.251240, 35.152027, 24.310150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875202, 34.353436, 24.399296>,  <34.701038, 34.880211, 23.973410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875202, 34.353436, 24.399296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.045841, 34.676525, 24.562073>,  <35.148224, 34.870377, 24.659739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.045841, 34.676525, 24.562073>,  <34.875202, 34.353436, 24.399296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045841, 34.676525, 24.562073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304302, -0.295524, 0.905575,
		0.851712, -0.510151, 0.119721,
		0.426599, 0.807720, 0.406941,
		35.173820, 34.918842, 24.684155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287949, 34.063953, 24.899353>,  <34.875202, 34.353436, 24.399296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287949, 34.063953, 24.899353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.215611, 34.446411, 24.991518>,  <35.172207, 34.675884, 25.046818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.215611, 34.446411, 24.991518>,  <35.287949, 34.063953, 24.899353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215611, 34.446411, 24.991518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168847, -0.260980, 0.950463,
		0.968909, 0.132986, 0.208639,
		-0.180849, 0.956140, 0.230412,
		35.161354, 34.733253, 25.060642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468063, 34.139286, 25.647007>,  <35.287949, 34.063953, 24.899353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468063, 34.139286, 25.647007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.257160, 34.472221, 25.578630>,  <35.130619, 34.671982, 25.537603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.257160, 34.472221, 25.578630>,  <35.468063, 34.139286, 25.647007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257160, 34.472221, 25.578630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544278, -0.176338, 0.820162,
		0.652506, 0.525476, 0.545996,
		-0.527255, 0.832334, -0.170944,
		35.098984, 34.721920, 25.527348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182732, 34.099327, 25.954115>,  <35.468063, 34.139286, 25.647007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182732, 34.099327, 25.954115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.279411, 33.721252, 26.041943>,  <36.337418, 33.494408, 26.094639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.279411, 33.721252, 26.041943>,  <36.182732, 34.099327, 25.954115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279411, 33.721252, 26.041943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405939, -0.107038, -0.907610,
		0.881360, 0.308500, 0.357816,
		0.241698, -0.945183, 0.219571,
		36.351921, 33.437698, 26.107815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869427, 33.965969, 25.705191>,  <36.182732, 34.099327, 25.954115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869427, 33.965969, 25.705191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.729309, 33.596100, 25.764894>,  <36.645237, 33.374180, 25.800716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.729309, 33.596100, 25.764894>,  <36.869427, 33.965969, 25.705191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729309, 33.596100, 25.764894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505737, -0.320855, -0.800801,
		0.788368, -0.205031, 0.580034,
		-0.350295, -0.924670, 0.149260,
		36.624222, 33.318699, 25.809673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536278, 33.724857, 25.650885>,  <36.869427, 33.965969, 25.705191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536278, 33.724857, 25.650885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.279297, 33.425087, 25.586861>,  <37.125111, 33.245224, 25.548447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.279297, 33.425087, 25.586861>,  <37.536278, 33.724857, 25.650885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279297, 33.425087, 25.586861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627253, -0.394267, -0.671645,
		0.440242, -0.531895, 0.723376,
		-0.642448, -0.749427, -0.160060,
		37.086563, 33.200260, 25.538843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909786, 33.141327, 25.746061>,  <37.536278, 33.724857, 25.650885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909786, 33.141327, 25.746061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.588825, 33.070709, 25.518030>,  <37.396248, 33.028339, 25.381212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.588825, 33.070709, 25.518030>,  <37.909786, 33.141327, 25.746061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588825, 33.070709, 25.518030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588409, -0.393544, -0.706327,
		-0.099653, -0.902195, 0.419659,
		-0.802399, -0.176543, -0.570077,
		37.348106, 33.017746, 25.347008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029259, 32.514782, 25.399920>,  <37.909786, 33.141327, 25.746061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029259, 32.514782, 25.399920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.753929, 32.718105, 25.192909>,  <37.588730, 32.840099, 25.068703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.753929, 32.718105, 25.192909>,  <38.029259, 32.514782, 25.399920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753929, 32.718105, 25.192909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462727, -0.241764, -0.852898,
		-0.558652, -0.826544, -0.068794,
		-0.688326, 0.508306, -0.517526,
		37.547432, 32.870598, 25.037651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075581, 32.194710, 24.709301>,  <38.029259, 32.514782, 25.399920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075581, 32.194710, 24.709301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.856140, 32.522049, 24.640783>,  <37.724476, 32.718452, 24.599672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.856140, 32.522049, 24.640783>,  <38.075581, 32.194710, 24.709301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856140, 32.522049, 24.640783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280139, -0.013116, -0.959870,
		-0.787754, -0.574573, -0.222055,
		-0.548603, 0.818348, -0.171293,
		37.691559, 32.767551, 24.589396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794731, 32.083126, 24.003210>,  <38.075581, 32.194710, 24.709301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794731, 32.083126, 24.003210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.765472, 32.474335, 24.081318>,  <37.747917, 32.709061, 24.128183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.765472, 32.474335, 24.081318>,  <37.794731, 32.083126, 24.003210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765472, 32.474335, 24.081318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303026, 0.208334, -0.929931,
		-0.950171, -0.008849, -0.311604,
		-0.073146, 0.978018, 0.195272,
		37.743530, 32.767738, 24.139900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312675, 32.444893, 23.486431>,  <37.794731, 32.083126, 24.003210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312675, 32.444893, 23.486431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.554760, 32.715885, 23.653635>,  <37.700012, 32.878483, 23.753958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.554760, 32.715885, 23.653635>,  <37.312675, 32.444893, 23.486431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554760, 32.715885, 23.653635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444036, 0.148522, -0.883614,
		-0.660717, 0.720387, -0.210939,
		0.605215, 0.677483, 0.418009,
		37.736324, 32.919128, 23.779037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403164, 33.064392, 22.937525>,  <37.312675, 32.444893, 23.486431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403164, 33.064392, 22.937525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706577, 33.095280, 23.196342>,  <37.888626, 33.113811, 23.351633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706577, 33.095280, 23.196342>,  <37.403164, 33.064392, 22.937525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706577, 33.095280, 23.196342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592527, 0.331488, -0.734184,
		-0.271183, 0.940294, 0.205688,
		0.758532, 0.077222, 0.647044,
		37.934135, 33.118446, 23.390455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761982, 33.582001, 22.641174>,  <37.403164, 33.064392, 22.937525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761982, 33.582001, 22.641174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.025566, 33.416870, 22.892679>,  <38.183716, 33.317791, 23.043583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.025566, 33.416870, 22.892679>,  <37.761982, 33.582001, 22.641174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025566, 33.416870, 22.892679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743573, 0.231457, -0.627317,
		0.113441, 0.880910, 0.459488,
		0.658961, -0.412826, 0.628764,
		38.223255, 33.293022, 23.081308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249149, 34.046215, 22.698027>,  <37.761982, 33.582001, 22.641174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249149, 34.046215, 22.698027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.431759, 33.710732, 22.816790>,  <38.541325, 33.509441, 22.888046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.431759, 33.710732, 22.816790>,  <38.249149, 34.046215, 22.698027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431759, 33.710732, 22.816790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848386, 0.309843, -0.429229,
		0.268003, 0.447845, 0.853000,
		0.456524, -0.838709, 0.296907,
		38.568718, 33.459118, 22.905861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864159, 34.297970, 23.122913>,  <38.249149, 34.046215, 22.698027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864159, 34.297970, 23.122913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906544, 33.940845, 22.947800>,  <38.931976, 33.726570, 22.842731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906544, 33.940845, 22.947800>,  <38.864159, 34.297970, 23.122913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906544, 33.940845, 22.947800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806682, 0.334607, -0.487138,
		0.581409, -0.301533, 0.755673,
		0.105965, -0.892814, -0.437784,
		38.938332, 33.673000, 22.816463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536545, 34.199074, 23.190004>,  <38.864159, 34.297970, 23.122913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536545, 34.199074, 23.190004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.418842, 33.945019, 22.904345>,  <39.348221, 33.792583, 22.732948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.418842, 33.945019, 22.904345>,  <39.536545, 34.199074, 23.190004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418842, 33.945019, 22.904345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815842, 0.222284, -0.533847,
		0.497812, -0.739720, 0.452767,
		-0.294254, -0.635141, -0.714150,
		39.330566, 33.754475, 22.690100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141151, 33.897568, 23.042233>,  <39.536545, 34.199074, 23.190004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141151, 33.897568, 23.042233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.886757, 33.840199, 22.738932>,  <39.734119, 33.805779, 22.556952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.886757, 33.840199, 22.738932>,  <40.141151, 33.897568, 23.042233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886757, 33.840199, 22.738932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760314, 0.051685, -0.647496,
		0.132058, -0.988310, 0.076177,
		-0.635990, -0.143426, -0.758252,
		39.695961, 33.797173, 22.511456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461971, 33.318172, 23.494059>,  <40.141151, 33.897568, 23.042233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461971, 33.318172, 23.494059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.744801, 33.043480, 23.426586>,  <40.914497, 32.878666, 23.386103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.744801, 33.043480, 23.426586>,  <40.461971, 33.318172, 23.494059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744801, 33.043480, 23.426586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294385, -0.502742, 0.812765,
		-0.642954, -0.525025, -0.557637,
		0.707070, -0.686731, -0.168680,
		40.956921, 32.837460, 23.375982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135323, 32.648731, 23.569147>,  <40.461971, 33.318172, 23.494059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135323, 32.648731, 23.569147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.530777, 32.626564, 23.625032>,  <40.768051, 32.613262, 23.658564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.530777, 32.626564, 23.625032>,  <40.135323, 32.648731, 23.569147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530777, 32.626564, 23.625032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150299, -0.371875, 0.916035,
		0.001192, -0.926627, -0.375979,
		0.988640, -0.055417, 0.139714,
		40.827370, 32.609940, 23.666946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161732, 31.981089, 23.869562>,  <40.135323, 32.648731, 23.569147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161732, 31.981089, 23.869562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.514507, 32.142170, 23.967554>,  <40.726173, 32.238819, 24.026350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.514507, 32.142170, 23.967554>,  <40.161732, 31.981089, 23.869562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514507, 32.142170, 23.967554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088653, -0.368741, 0.925295,
		0.462954, -0.837771, -0.289505,
		0.881938, 0.402703, 0.244981,
		40.779087, 32.262981, 24.041048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557320, 31.540901, 24.168707>,  <40.161732, 31.981089, 23.869562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557320, 31.540901, 24.168707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.725277, 31.873568, 24.314047>,  <40.826050, 32.073166, 24.401251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.725277, 31.873568, 24.314047>,  <40.557320, 31.540901, 24.168707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725277, 31.873568, 24.314047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221504, -0.294337, 0.929678,
		0.880128, -0.470849, 0.060627,
		0.419894, 0.831665, 0.363349,
		40.851246, 32.123066, 24.423052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024479, 31.288839, 24.655285>,  <40.557320, 31.540901, 24.168707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024479, 31.288839, 24.655285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.936573, 31.670565, 24.736267>,  <40.883827, 31.899599, 24.784857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.936573, 31.670565, 24.736267>,  <41.024479, 31.288839, 24.655285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936573, 31.670565, 24.736267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144186, -0.237024, 0.960744,
		0.964838, 0.181949, 0.189689,
		-0.219767, 0.954313, 0.202456,
		40.870644, 31.956860, 24.797005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295399, 31.388344, 25.352943>,  <41.024479, 31.288839, 24.655285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295399, 31.388344, 25.352943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.046661, 31.698832, 25.311373>,  <40.897419, 31.885124, 25.286430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.046661, 31.698832, 25.311373>,  <41.295399, 31.388344, 25.352943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046661, 31.698832, 25.311373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357550, -0.163326, 0.919501,
		0.696759, 0.608942, 0.379099,
		-0.621840, 0.776218, -0.103928,
		40.860111, 31.931698, 25.280195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209816, 31.609550, 26.054598>,  <41.295399, 31.388344, 25.352943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209816, 31.609550, 26.054598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.907032, 31.789553, 25.865070>,  <40.725361, 31.897554, 25.751354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.907032, 31.789553, 25.865070>,  <41.209816, 31.609550, 26.054598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907032, 31.789553, 25.865070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563104, -0.081311, 0.822376,
		0.331546, 0.889317, 0.314949,
		-0.756962, 0.450005, -0.473819,
		40.679943, 31.924555, 25.722925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033947, 32.223190, 26.409010>,  <41.209816, 31.609550, 26.054598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033947, 32.223190, 26.409010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.693237, 32.128098, 26.222263>,  <40.488811, 32.071041, 26.110216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.693237, 32.128098, 26.222263>,  <41.033947, 32.223190, 26.409010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693237, 32.128098, 26.222263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481089, 0.002072, 0.876670,
		-0.207448, 0.971328, -0.116137,
		-0.851774, -0.237736, -0.466865,
		40.437706, 32.056778, 26.082205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483376, 32.674244, 26.594334>,  <41.033947, 32.223190, 26.409010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483376, 32.674244, 26.594334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.316631, 32.327862, 26.483810>,  <40.216587, 32.120033, 26.417496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.316631, 32.327862, 26.483810>,  <40.483376, 32.674244, 26.594334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316631, 32.327862, 26.483810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589999, 0.026529, 0.806968,
		-0.691470, 0.499414, -0.521973,
		-0.416858, -0.865957, -0.276310,
		40.191574, 32.068073, 26.400917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787930, 32.767082, 26.703159>,  <40.483376, 32.674244, 26.594334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787930, 32.767082, 26.703159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.829689, 32.369541, 26.688396>,  <39.854744, 32.131016, 26.679539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.829689, 32.369541, 26.688396>,  <39.787930, 32.767082, 26.703159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829689, 32.369541, 26.688396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540445, -0.087846, 0.836781,
		-0.834877, -0.067411, -0.546293,
		0.104398, -0.993850, -0.036908,
		39.861008, 32.071384, 26.677324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115391, 32.476513, 26.769171>,  <39.787930, 32.767082, 26.703159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115391, 32.476513, 26.769171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377033, 32.185543, 26.852110>,  <39.534019, 32.010960, 26.901875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377033, 32.185543, 26.852110>,  <39.115391, 32.476513, 26.769171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377033, 32.185543, 26.852110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312027, -0.009779, 0.950023,
		-0.689044, -0.686116, -0.233373,
		0.654108, -0.727426, 0.207349,
		39.573265, 31.967316, 26.914314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733727, 31.859884, 26.906105>,  <39.115391, 32.476513, 26.769171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733727, 31.859884, 26.906105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.084881, 31.860554, 27.097654>,  <39.295574, 31.860956, 27.212584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.084881, 31.860554, 27.097654>,  <38.733727, 31.859884, 26.906105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084881, 31.860554, 27.097654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475479, -0.115901, 0.872059,
		0.056963, -0.993259, -0.100950,
		0.877881, 0.001675, 0.478876,
		39.348244, 31.861055, 27.241318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533081, 31.504522, 27.468075>,  <38.733727, 31.859884, 26.906105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533081, 31.504522, 27.468075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.903603, 31.605604, 27.579866>,  <39.125916, 31.666252, 27.646940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.903603, 31.605604, 27.579866>,  <38.533081, 31.504522, 27.468075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903603, 31.605604, 27.579866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251070, -0.139102, 0.957922,
		0.280946, -0.957492, -0.065404,
		0.926301, 0.252704, 0.279478,
		39.181492, 31.681416, 27.663710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866470, 30.934069, 27.987392>,  <38.533081, 31.504522, 27.468075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866470, 30.934069, 27.987392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.050537, 31.285175, 28.040712>,  <39.160976, 31.495840, 28.072704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.050537, 31.285175, 28.040712>,  <38.866470, 30.934069, 27.987392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050537, 31.285175, 28.040712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182617, -0.053354, 0.981735,
		0.868847, -0.476107, 0.135743,
		0.460168, 0.877767, 0.133302,
		39.188587, 31.548506, 28.080704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.848400, 34.742573, 26.119236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.704243, 35.054283, 25.914160>,  <41.617748, 35.241310, 25.791115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.704243, 35.054283, 25.914160>,  <41.848400, 34.742573, 26.119236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704243, 35.054283, 25.914160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251920, -0.447888, -0.857865,
		-0.898139, -0.438325, -0.034899,
		-0.360393, 0.779274, -0.512688,
		41.596127, 35.288067, 25.760353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834549, 34.464649, 25.451704>,  <41.848400, 34.742573, 26.119236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834549, 34.464649, 25.451704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.766869, 34.854630, 25.393955>,  <41.726261, 35.088619, 25.359306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.766869, 34.854630, 25.393955>,  <41.834549, 34.464649, 25.451704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766869, 34.854630, 25.393955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232352, -0.102894, -0.967174,
		-0.957801, -0.197196, -0.209121,
		-0.169205, 0.974949, -0.144371,
		41.716106, 35.147114, 25.350643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328159, 34.537537, 24.874596>,  <41.834549, 34.464649, 25.451704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328159, 34.537537, 24.874596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.555965, 34.859703, 24.940275>,  <41.692650, 35.053001, 24.979683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.555965, 34.859703, 24.940275>,  <41.328159, 34.537537, 24.874596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555965, 34.859703, 24.940275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368891, -0.071921, -0.926686,
		-0.734557, 0.588332, -0.338071,
		0.569513, 0.805415, 0.164200,
		41.726818, 35.101326, 24.989534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322964, 35.012482, 24.214983>,  <41.328159, 34.537537, 24.874596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322964, 35.012482, 24.214983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.639675, 35.141346, 24.422560>,  <41.829700, 35.218666, 24.547106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.639675, 35.141346, 24.422560>,  <41.322964, 35.012482, 24.214983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639675, 35.141346, 24.422560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537459, 0.036221, -0.842512,
		-0.290223, 0.945991, -0.144471,
		0.791776, 0.322164, 0.518943,
		41.877209, 35.237995, 24.578243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659653, 35.471519, 23.760098>,  <41.322964, 35.012482, 24.214983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659653, 35.471519, 23.760098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.942837, 35.381336, 24.027817>,  <42.112747, 35.327225, 24.188448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.942837, 35.381336, 24.027817>,  <41.659653, 35.471519, 23.760098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942837, 35.381336, 24.027817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702219, 0.123571, -0.701155,
		0.075376, 0.966384, 0.245806,
		0.707959, -0.225460, 0.669299,
		42.155224, 35.313698, 24.228607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230747, 36.015438, 23.716194>,  <41.659653, 35.471519, 23.760098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230747, 36.015438, 23.716194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.385433, 35.682991, 23.876041>,  <42.478245, 35.483524, 23.971949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.385433, 35.682991, 23.876041>,  <42.230747, 36.015438, 23.716194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385433, 35.682991, 23.876041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789453, 0.074371, -0.609289,
		0.476672, 0.551100, 0.684889,
		0.386715, -0.831118, 0.399617,
		42.501450, 35.433655, 23.995926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874580, 36.122444, 23.718924>,  <42.230747, 36.015438, 23.716194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874580, 36.122444, 23.718924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.856850, 35.730778, 23.798189>,  <42.846210, 35.495777, 23.845749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.856850, 35.730778, 23.798189>,  <42.874580, 36.122444, 23.718924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856850, 35.730778, 23.798189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896098, -0.126658, -0.425401,
		0.441637, 0.158717, 0.883043,
		-0.044326, -0.979166, 0.198163,
		42.843552, 35.437027, 23.857637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600037, 35.923340, 23.860703>,  <42.874580, 36.122444, 23.718924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600037, 35.923340, 23.860703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.408642, 35.591961, 23.744272>,  <43.293804, 35.393135, 23.674414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.408642, 35.591961, 23.744272>,  <43.600037, 35.923340, 23.860703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408642, 35.591961, 23.744272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767417, -0.233432, -0.597144,
		0.426757, -0.509101, 0.747459,
		-0.478487, -0.828448, -0.291074,
		43.265095, 35.343426, 23.656950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177349, 35.354660, 23.796925>,  <43.600037, 35.923340, 23.860703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177349, 35.354660, 23.796925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.868286, 35.199677, 23.595778>,  <43.682846, 35.106686, 23.475090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.868286, 35.199677, 23.595778>,  <44.177349, 35.354660, 23.796925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868286, 35.199677, 23.595778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612531, -0.246961, -0.750877,
		0.166742, -0.888194, 0.428145,
		-0.772660, -0.387454, -0.502867,
		43.636490, 35.083439, 23.444918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191803, 34.707390, 23.725918>,  <44.177349, 35.354660, 23.796925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191803, 34.707390, 23.725918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.972191, 34.801796, 23.405205>,  <43.840424, 34.858440, 23.212776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.972191, 34.801796, 23.405205>,  <44.191803, 34.707390, 23.725918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972191, 34.801796, 23.405205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774886, -0.215776, -0.594132,
		-0.313230, -0.947490, -0.064417,
		-0.549034, 0.236016, -0.801784,
		43.807480, 34.872601, 23.164669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312111, 34.192402, 23.283228>,  <44.191803, 34.707390, 23.725918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.312111, 34.192402, 23.283228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.193020, 34.511467, 23.073427>,  <44.121567, 34.702904, 22.947546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.193020, 34.511467, 23.073427>,  <44.312111, 34.192402, 23.283228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193020, 34.511467, 23.073427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775369, -0.118472, -0.620295,
		-0.556923, -0.591359, -0.583208,
		-0.297723, 0.797658, -0.524501,
		44.103703, 34.750763, 22.916077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368038, 34.057365, 22.638948>,  <44.312111, 34.192402, 23.283228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368038, 34.057365, 22.638948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.401875, 34.455875, 22.645748>,  <44.422176, 34.694981, 22.649828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.401875, 34.455875, 22.645748>,  <44.368038, 34.057365, 22.638948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401875, 34.455875, 22.645748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799083, -0.057639, -0.598452,
		-0.595240, 0.064208, -0.800978,
		0.084593, 0.996271, 0.016999,
		44.427254, 34.754757, 22.650848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340263, 34.407951, 21.991430>,  <44.368038, 34.057365, 22.638948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340263, 34.407951, 21.991430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.564030, 34.670181, 22.194319>,  <44.698288, 34.827518, 22.316051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.564030, 34.670181, 22.194319>,  <44.340263, 34.407951, 21.991430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564030, 34.670181, 22.194319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719815, -0.080805, -0.689447,
		-0.411000, 0.750792, -0.517098,
		0.559415, 0.655578, 0.507220,
		44.731853, 34.866856, 22.346485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.942520, 34.112751, 21.459812>,  <44.340263, 34.407951, 21.991430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.942520, 34.112751, 21.459812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.137432, 33.919647, 21.750879>,  <45.254379, 33.803783, 21.925520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.137432, 33.919647, 21.750879>,  <44.942520, 34.112751, 21.459812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.137432, 33.919647, 21.750879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834515, 0.012029, -0.550855,
		0.257177, 0.875671, 0.408731,
		0.487284, -0.482759, 0.727666,
		45.283619, 33.774818, 21.969179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068367, 34.203491, 20.745142>,  <44.942520, 34.112751, 21.459812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068367, 34.203491, 20.745142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.928555, 34.182304, 20.370972>,  <44.844666, 34.169594, 20.146469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.928555, 34.182304, 20.370972>,  <45.068367, 34.203491, 20.745142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.928555, 34.182304, 20.370972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723409, -0.619215, 0.305371,
		-0.595404, 0.783432, 0.178122,
		-0.349533, -0.052964, -0.935426,
		44.823696, 34.166416, 20.090343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.458496, 34.161583, 20.890194>,  <45.068367, 34.203491, 20.745142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.458496, 34.161583, 20.890194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.441116, 34.057446, 20.504379>,  <44.430687, 33.994965, 20.272890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.441116, 34.057446, 20.504379>,  <44.458496, 34.161583, 20.890194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441116, 34.057446, 20.504379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918613, -0.369140, 0.141017,
		-0.392762, 0.892165, -0.223113,
		-0.043451, -0.260341, -0.964539,
		44.428082, 33.979343, 20.215017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742332, 34.286407, 20.658382>,  <44.458496, 34.161583, 20.890194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742332, 34.286407, 20.658382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.908638, 34.013725, 20.417578>,  <44.008423, 33.850117, 20.273094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.908638, 34.013725, 20.417578>,  <43.742332, 34.286407, 20.658382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908638, 34.013725, 20.417578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869459, -0.492111, -0.043216,
		-0.266797, 0.541394, -0.797315,
		0.415765, -0.681703, -0.602014,
		44.033367, 33.809216, 20.236973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211990, 34.156284, 20.274553>,  <43.742332, 34.286407, 20.658382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211990, 34.156284, 20.274553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.449059, 33.841434, 20.206223>,  <43.591301, 33.652527, 20.165224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.449059, 33.841434, 20.206223>,  <43.211990, 34.156284, 20.274553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449059, 33.841434, 20.206223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804138, -0.566165, -0.181162,
		0.045881, 0.244737, -0.968503,
		0.592670, -0.787122, -0.170826,
		43.626858, 33.605297, 20.154974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892471, 33.793179, 19.709332>,  <43.211990, 34.156284, 20.274553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892471, 33.793179, 19.709332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.121922, 33.562656, 19.942165>,  <43.259590, 33.424343, 20.081865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.121922, 33.562656, 19.942165>,  <42.892471, 33.793179, 19.709332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121922, 33.562656, 19.942165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810383, -0.502789, 0.300804,
		0.119311, -0.644262, -0.755442,
		0.573624, -0.576308, 0.582087,
		43.294010, 33.389763, 20.116791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626122, 33.038246, 19.670237>,  <42.892471, 33.793179, 19.709332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626122, 33.038246, 19.670237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.856701, 33.056122, 19.996599>,  <42.995049, 33.066849, 20.192417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.856701, 33.056122, 19.996599>,  <42.626122, 33.038246, 19.670237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856701, 33.056122, 19.996599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673785, -0.538910, 0.505559,
		0.462294, -0.841177, -0.280545,
		0.576453, 0.044690, 0.815907,
		43.029636, 33.069530, 20.241371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556923, 32.408905, 19.927151>,  <42.626122, 33.038246, 19.670237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556923, 32.408905, 19.927151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.671146, 32.648182, 20.226650>,  <42.739681, 32.791748, 20.406349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.671146, 32.648182, 20.226650>,  <42.556923, 32.408905, 19.927151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671146, 32.648182, 20.226650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703491, -0.399719, 0.587643,
		0.650813, -0.694543, 0.306682,
		0.285557, 0.598193, 0.748747,
		42.756813, 32.827641, 20.451275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462585, 32.068462, 20.475443>,  <42.556923, 32.408905, 19.927151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462585, 32.068462, 20.475443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.494076, 32.425575, 20.652868>,  <42.512970, 32.639843, 20.759323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.494076, 32.425575, 20.652868>,  <42.462585, 32.068462, 20.475443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494076, 32.425575, 20.652868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692890, -0.270897, 0.668220,
		0.716733, -0.359946, 0.597272,
		0.078724, 0.892779, 0.443564,
		42.517693, 32.693409, 20.785938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707783, 32.058769, 21.179539>,  <42.462585, 32.068462, 20.475443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707783, 32.058769, 21.179539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.512348, 32.407639, 21.169775>,  <42.395088, 32.616959, 21.163918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.512348, 32.407639, 21.169775>,  <42.707783, 32.058769, 21.179539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512348, 32.407639, 21.169775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460692, -0.234118, 0.856126,
		0.740975, 0.429538, 0.516190,
		-0.488589, 0.872173, -0.024409,
		42.365772, 32.669289, 21.162453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745419, 32.217674, 21.857828>,  <42.707783, 32.058769, 21.179539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745419, 32.217674, 21.857828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.480278, 32.487865, 21.728609>,  <42.321194, 32.649979, 21.651077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.480278, 32.487865, 21.728609>,  <42.745419, 32.217674, 21.857828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480278, 32.487865, 21.728609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526447, -0.113648, 0.842578,
		0.532427, 0.728573, 0.430933,
		-0.662854, 0.675475, -0.323046,
		42.281422, 32.690506, 21.631695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565189, 32.569279, 22.404394>,  <42.745419, 32.217674, 21.857828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565189, 32.569279, 22.404394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.259758, 32.701950, 22.182785>,  <42.076500, 32.781551, 22.049820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.259758, 32.701950, 22.182785>,  <42.565189, 32.569279, 22.404394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259758, 32.701950, 22.182785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575443, 0.039715, 0.816877,
		0.292940, 0.942558, 0.160534,
		-0.763578, 0.331674, -0.554023,
		42.030685, 32.801453, 22.016579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293243, 33.247456, 22.682083>,  <42.565189, 32.569279, 22.404394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293243, 33.247456, 22.682083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.011292, 33.057484, 22.471338>,  <41.842121, 32.943501, 22.344893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.011292, 33.057484, 22.471338>,  <42.293243, 33.247456, 22.682083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011292, 33.057484, 22.471338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597659, -0.002375, 0.801747,
		-0.382025, 0.880020, -0.282172,
		-0.704883, -0.474930, -0.526860,
		41.799828, 32.915005, 22.313280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652271, 33.579041, 22.905146>,  <42.293243, 33.247456, 22.682083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652271, 33.579041, 22.905146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.522240, 33.220932, 22.783281>,  <41.444221, 33.006069, 22.710163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.522240, 33.220932, 22.783281>,  <41.652271, 33.579041, 22.905146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522240, 33.220932, 22.783281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581848, -0.064617, 0.810726,
		-0.745503, 0.440819, -0.499904,
		-0.325082, -0.895267, -0.304662,
		41.424717, 32.952351, 22.691883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979347, 33.655991, 23.067156>,  <41.652271, 33.579041, 22.905146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979347, 33.655991, 23.067156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.073250, 33.268669, 23.033035>,  <41.129593, 33.036278, 23.012564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.073250, 33.268669, 23.033035>,  <40.979347, 33.655991, 23.067156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073250, 33.268669, 23.033035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524006, -0.199974, 0.827906,
		-0.818723, -0.149657, -0.554342,
		0.234756, -0.968304, -0.085302,
		41.143677, 32.978176, 23.007444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540112, 33.559677, 22.412886>,  <40.979347, 33.655991, 23.067156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540112, 33.559677, 22.412886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.221455, 33.701454, 22.217033>,  <40.030262, 33.786518, 22.099522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.221455, 33.701454, 22.217033>,  <40.540112, 33.559677, 22.412886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221455, 33.701454, 22.217033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583428, 0.239080, -0.776178,
		-0.158047, -0.903999, -0.397250,
		-0.796639, 0.354440, -0.489632,
		39.982464, 33.807785, 22.070145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681244, 33.392635, 21.738567>,  <40.540112, 33.559677, 22.412886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681244, 33.392635, 21.738567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.381748, 33.653923, 21.693493>,  <40.202053, 33.810696, 21.666449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.381748, 33.653923, 21.693493>,  <40.681244, 33.392635, 21.738567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381748, 33.653923, 21.693493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437431, 0.359175, -0.824407,
		-0.498046, -0.666555, -0.554666,
		-0.748735, 0.653221, -0.112686,
		40.157127, 33.849888, 21.659687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459644, 33.315464, 21.160526>,  <40.681244, 33.392635, 21.738567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459644, 33.315464, 21.160526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.332428, 33.683968, 21.250088>,  <40.256096, 33.905067, 21.303825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.332428, 33.683968, 21.250088>,  <40.459644, 33.315464, 21.160526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332428, 33.683968, 21.250088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581233, 0.376047, -0.721635,
		-0.749010, -0.099373, -0.655064,
		-0.318045, 0.921257, 0.223904,
		40.237015, 33.960346, 21.317259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248352, 33.672649, 20.452223>,  <40.459644, 33.315464, 21.160526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248352, 33.672649, 20.452223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.298233, 33.980415, 20.702808>,  <40.328159, 34.165073, 20.853159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.298233, 33.980415, 20.702808>,  <40.248352, 33.672649, 20.452223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298233, 33.980415, 20.702808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496960, 0.498050, -0.710617,
		-0.858767, 0.399941, -0.320260,
		0.124700, 0.769411, 0.626463,
		40.335644, 34.211239, 20.890747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971733, 34.166126, 20.047268>,  <40.248352, 33.672649, 20.452223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971733, 34.166126, 20.047268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.214092, 34.314377, 20.328842>,  <40.359509, 34.403328, 20.497787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.214092, 34.314377, 20.328842>,  <39.971733, 34.166126, 20.047268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214092, 34.314377, 20.328842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472298, 0.544462, -0.693178,
		-0.640176, 0.752462, 0.154841,
		0.605895, 0.370625, 0.703938,
		40.395863, 34.425564, 20.540024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013729, 34.882397, 19.921730>,  <39.971733, 34.166126, 20.047268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013729, 34.882397, 19.921730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.322155, 34.852604, 20.174686>,  <40.507210, 34.834728, 20.326460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.322155, 34.852604, 20.174686>,  <40.013729, 34.882397, 19.921730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322155, 34.852604, 20.174686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540264, 0.602156, -0.587812,
		-0.337018, 0.794897, 0.504538,
		0.771060, -0.074480, 0.632391,
		40.553474, 34.830261, 20.364405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338417, 35.614624, 19.964613>,  <40.013729, 34.882397, 19.921730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338417, 35.614624, 19.964613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.608189, 35.346371, 20.088152>,  <40.770054, 35.185417, 20.162275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.608189, 35.346371, 20.088152>,  <40.338417, 35.614624, 19.964613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608189, 35.346371, 20.088152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733688, 0.561866, -0.382112,
		0.082727, 0.484306, 0.870979,
		0.674432, -0.670637, 0.308848,
		40.810520, 35.145180, 20.180807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368919, 36.403172, 20.142767>,  <40.338417, 35.614624, 19.964613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368919, 36.403172, 20.142767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.175705, 36.675041, 19.921961>,  <40.059776, 36.838165, 19.789478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.175705, 36.675041, 19.921961>,  <40.368919, 36.403172, 20.142767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175705, 36.675041, 19.921961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874946, -0.350271, 0.334334,
		0.033885, 0.644476, 0.763873,
		-0.483033, 0.679677, -0.552013,
		40.030796, 36.878944, 19.756357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963516, 36.869141, 20.620764>,  <40.368919, 36.403172, 20.142767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963516, 36.869141, 20.620764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.803513, 36.839893, 20.255327>,  <39.707512, 36.822346, 20.036066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.803513, 36.839893, 20.255327>,  <39.963516, 36.869141, 20.620764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803513, 36.839893, 20.255327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867398, -0.291727, 0.403132,
		-0.295994, 0.953703, 0.053273,
		-0.400010, -0.073115, -0.913590,
		39.683510, 36.817959, 19.981251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281719, 37.104424, 20.751207>,  <39.963516, 36.869141, 20.620764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281719, 37.104424, 20.751207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.248596, 36.923176, 20.396170>,  <39.228722, 36.814426, 20.183147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.248596, 36.923176, 20.396170>,  <39.281719, 37.104424, 20.751207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248596, 36.923176, 20.396170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893788, -0.360164, 0.267255,
		-0.440778, 0.815453, -0.375169,
		-0.082812, -0.453122, -0.887594,
		39.223751, 36.787239, 20.129892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645859, 37.386120, 20.501663>,  <39.281719, 37.104424, 20.751207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645859, 37.386120, 20.501663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.746227, 37.038311, 20.331497>,  <38.806446, 36.829628, 20.229397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.746227, 37.038311, 20.331497>,  <38.645859, 37.386120, 20.501663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746227, 37.038311, 20.331497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896412, -0.374590, 0.236915,
		-0.365356, 0.321893, -0.873441,
		0.250921, -0.869521, -0.425408,
		38.821503, 36.777454, 20.203873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104336, 37.211937, 20.075916>,  <38.645859, 37.386120, 20.501663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104336, 37.211937, 20.075916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.295956, 36.873917, 20.170908>,  <38.410927, 36.671104, 20.227903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.295956, 36.873917, 20.170908>,  <38.104336, 37.211937, 20.075916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295956, 36.873917, 20.170908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864884, -0.408190, 0.292159,
		-0.149954, -0.345350, -0.926416,
		0.479051, -0.845053, 0.237478,
		38.439671, 36.620399, 20.242151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538300, 36.790722, 19.884195>,  <38.104336, 37.211937, 20.075916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538300, 36.790722, 19.884195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.781960, 36.571041, 20.113043>,  <37.928154, 36.439232, 20.250351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.781960, 36.571041, 20.113043>,  <37.538300, 36.790722, 19.884195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781960, 36.571041, 20.113043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790297, -0.360249, 0.495632,
		-0.066096, -0.754056, -0.653476,
		0.609149, -0.549199, 0.572117,
		37.964703, 36.406281, 20.284678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296108, 36.048084, 19.788567>,  <37.538300, 36.790722, 19.884195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296108, 36.048084, 19.788567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.501293, 36.083733, 20.130075>,  <37.624405, 36.105122, 20.334980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.501293, 36.083733, 20.130075>,  <37.296108, 36.048084, 19.788567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501293, 36.083733, 20.130075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825907, -0.219865, 0.519170,
		0.233982, -0.971451, -0.039178,
		0.512962, 0.089119, 0.853772,
		37.655182, 36.110466, 20.386208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.747822, 37.827461, 22.006691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.873581, 37.548824, 22.264654>,  <43.949036, 37.381641, 22.419432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.873581, 37.548824, 22.264654>,  <43.747822, 37.827461, 22.006691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873581, 37.548824, 22.264654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897608, 0.002955, 0.440784,
		-0.308955, -0.717457, -0.624342,
		0.314399, -0.696597, 0.644908,
		43.967899, 37.339844, 22.458126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214100, 37.367493, 22.011656>,  <43.747822, 37.827461, 22.006691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214100, 37.367493, 22.011656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.428856, 37.363281, 22.349091>,  <43.557709, 37.360756, 22.551552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.428856, 37.363281, 22.349091>,  <43.214100, 37.367493, 22.011656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428856, 37.363281, 22.349091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814483, 0.254196, 0.521538,
		-0.219925, -0.967095, 0.127904,
		0.536889, -0.010524, 0.843587,
		43.589924, 37.360123, 22.602167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738876, 37.215038, 22.581320>,  <43.214100, 37.367493, 22.011656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738876, 37.215038, 22.581320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.047539, 37.346390, 22.799204>,  <43.232738, 37.425201, 22.929935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.047539, 37.346390, 22.799204>,  <42.738876, 37.215038, 22.581320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047539, 37.346390, 22.799204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635101, 0.351359, 0.687891,
		0.034501, -0.876763, 0.479683,
		0.771658, 0.328380, 0.544711,
		43.279037, 37.444904, 22.962618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626663, 36.912209, 23.225670>,  <42.738876, 37.215038, 22.581320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626663, 36.912209, 23.225670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.896389, 37.201675, 23.284456>,  <43.058224, 37.375355, 23.319727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.896389, 37.201675, 23.284456>,  <42.626663, 36.912209, 23.225670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896389, 37.201675, 23.284456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410989, 0.202446, 0.888878,
		0.613501, -0.659786, 0.433933,
		0.674317, 0.723669, 0.146964,
		43.098686, 37.418777, 23.328547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761833, 36.862358, 23.945833>,  <42.626663, 36.912209, 23.225670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761833, 36.862358, 23.945833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.850754, 37.221039, 23.792728>,  <42.904106, 37.436249, 23.700867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.850754, 37.221039, 23.792728>,  <42.761833, 36.862358, 23.945833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850754, 37.221039, 23.792728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523484, 0.440973, 0.729046,
		0.822525, 0.038301, 0.567438,
		0.222301, 0.896703, -0.382761,
		42.917442, 37.490051, 23.677900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060242, 37.219296, 24.518448>,  <42.761833, 36.862358, 23.945833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060242, 37.219296, 24.518448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.959850, 37.500366, 24.252136>,  <42.899616, 37.669006, 24.092350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.959850, 37.500366, 24.252136>,  <43.060242, 37.219296, 24.518448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959850, 37.500366, 24.252136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474974, 0.509907, 0.717213,
		0.843451, 0.496232, 0.205776,
		-0.250978, 0.702672, -0.665779,
		42.884556, 37.711166, 24.052402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244808, 37.787296, 24.855701>,  <43.060242, 37.219296, 24.518448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244808, 37.787296, 24.855701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.977066, 37.882969, 24.574348>,  <42.816422, 37.940372, 24.405537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.977066, 37.882969, 24.574348>,  <43.244808, 37.787296, 24.855701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977066, 37.882969, 24.574348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524428, 0.518501, 0.675376,
		0.526245, 0.820943, -0.221627,
		-0.669359, 0.239186, -0.703384,
		42.776257, 37.954723, 24.363333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099396, 38.495731, 25.058168>,  <43.244808, 37.787296, 24.855701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099396, 38.495731, 25.058168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.817268, 38.330868, 24.827465>,  <42.647991, 38.231949, 24.689043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.817268, 38.330868, 24.827465>,  <43.099396, 38.495731, 25.058168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817268, 38.330868, 24.827465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689072, 0.207597, 0.694323,
		-0.166436, 0.887148, -0.430427,
		-0.705322, -0.412155, -0.576757,
		42.605671, 38.207222, 24.654438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644764, 39.037254, 25.009411>,  <43.099396, 38.495731, 25.058168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644764, 39.037254, 25.009411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.450310, 38.694660, 24.940001>,  <42.333637, 38.489105, 24.898354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.450310, 38.694660, 24.940001>,  <42.644764, 39.037254, 25.009411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450310, 38.694660, 24.940001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663427, 0.232467, 0.711212,
		-0.568802, 0.460868, -0.681224,
		-0.486137, -0.856481, -0.173525,
		42.304470, 38.437717, 24.887943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900913, 39.178486, 24.824327>,  <42.644764, 39.037254, 25.009411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900913, 39.178486, 24.824327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.905235, 38.811150, 24.982582>,  <41.907829, 38.590748, 25.077536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.905235, 38.811150, 24.982582>,  <41.900913, 39.178486, 24.824327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905235, 38.811150, 24.982582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701758, 0.274897, 0.657243,
		-0.712334, -0.284739, -0.641486,
		0.010800, -0.918344, 0.395636,
		41.908474, 38.535648, 25.101273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201504, 38.976784, 24.820421>,  <41.900913, 39.178486, 24.824327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201504, 38.976784, 24.820421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.385883, 38.750050, 25.093542>,  <41.496510, 38.614010, 25.257414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.385883, 38.750050, 25.093542>,  <41.201504, 38.976784, 24.820421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385883, 38.750050, 25.093542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751502, 0.159891, 0.640062,
		-0.471986, -0.808164, -0.352279,
		0.460949, -0.566839, 0.682803,
		41.524166, 38.579998, 25.298384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647663, 38.709206, 25.236525>,  <41.201504, 38.976784, 24.820421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647663, 38.709206, 25.236525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.968662, 38.663643, 25.470797>,  <41.161263, 38.636307, 25.611361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.968662, 38.663643, 25.470797>,  <40.647663, 38.709206, 25.236525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968662, 38.663643, 25.470797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585086, 0.042127, 0.809877,
		-0.116926, -0.992597, -0.032840,
		0.802498, -0.113910, 0.585680,
		41.209412, 38.629471, 25.646502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022869, 38.283447, 24.918528>,  <40.647663, 38.709206, 25.236525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022869, 38.283447, 24.918528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.807217, 38.581711, 24.761898>,  <39.677826, 38.760670, 24.667919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.807217, 38.581711, 24.761898>,  <40.022869, 38.283447, 24.918528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807217, 38.581711, 24.761898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578683, -0.009846, -0.815493,
		-0.611935, -0.666256, -0.426191,
		-0.539131, 0.745658, -0.391576,
		39.645477, 38.805408, 24.644424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098068, 38.212681, 24.246210>,  <40.022869, 38.283447, 24.918528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098068, 38.212681, 24.246210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.950417, 38.584301, 24.236366>,  <39.861824, 38.807274, 24.230459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.950417, 38.584301, 24.236366>,  <40.098068, 38.212681, 24.246210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950417, 38.584301, 24.236366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586335, 0.212255, -0.781767,
		-0.721078, -0.303003, -0.623085,
		-0.369131, 0.929052, -0.024609,
		39.839676, 38.863018, 24.228983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713352, 38.408497, 23.561821>,  <40.098068, 38.212681, 24.246210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713352, 38.408497, 23.561821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.843254, 38.738411, 23.746977>,  <39.921196, 38.936359, 23.858070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.843254, 38.738411, 23.746977>,  <39.713352, 38.408497, 23.561821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843254, 38.738411, 23.746977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531146, 0.245910, -0.810810,
		-0.782571, 0.509177, -0.358219,
		0.324756, 0.824783, 0.462889,
		39.940681, 38.985847, 23.885843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712746, 38.936256, 23.024172>,  <39.713352, 38.408497, 23.561821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712746, 38.936256, 23.024172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.954491, 39.067696, 23.314487>,  <40.099537, 39.146561, 23.488676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.954491, 39.067696, 23.314487>,  <39.712746, 38.936256, 23.024172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954491, 39.067696, 23.314487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585309, 0.434922, -0.684293,
		-0.540518, 0.838372, 0.070519,
		0.604362, 0.328597, 0.725790,
		40.135799, 39.166275, 23.532225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743378, 39.658016, 22.842106>,  <39.712746, 38.936256, 23.024172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743378, 39.658016, 22.842106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.073475, 39.574574, 23.052040>,  <40.271534, 39.524509, 23.178001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.073475, 39.574574, 23.052040>,  <39.743378, 39.658016, 22.842106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073475, 39.574574, 23.052040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564727, 0.316793, -0.762054,
		-0.007296, 0.925271, 0.379237,
		0.825246, -0.208605, 0.524836,
		40.321049, 39.511993, 23.209492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205242, 40.177010, 22.597536>,  <39.743378, 39.658016, 22.842106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205242, 40.177010, 22.597536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.454990, 39.910412, 22.760481>,  <40.604839, 39.750454, 22.858248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.454990, 39.910412, 22.760481>,  <40.205242, 40.177010, 22.597536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454990, 39.910412, 22.760481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753424, 0.376199, -0.539283,
		0.206180, 0.643630, 0.737041,
		0.624373, -0.666494, 0.407362,
		40.642303, 39.710464, 22.882690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706928, 40.609463, 22.802654>,  <40.205242, 40.177010, 22.597536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706928, 40.609463, 22.802654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.864243, 40.241844, 22.792234>,  <40.958630, 40.021271, 22.785982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.864243, 40.241844, 22.792234>,  <40.706928, 40.609463, 22.802654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864243, 40.241844, 22.792234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736146, 0.331735, -0.589950,
		0.550835, 0.212840, 0.807019,
		0.393281, -0.919049, -0.026050,
		40.982227, 39.966129, 22.784420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378201, 40.862213, 22.674644>,  <40.706928, 40.609463, 22.802654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378201, 40.862213, 22.674644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.359653, 40.474834, 22.576702>,  <41.348526, 40.242405, 22.517937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.359653, 40.474834, 22.576702>,  <41.378201, 40.862213, 22.674644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359653, 40.474834, 22.576702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694212, 0.145015, -0.705010,
		0.718275, -0.202670, 0.665587,
		-0.046364, -0.968450, -0.244857,
		41.345745, 40.184299, 22.503244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084236, 40.708893, 22.601336>,  <41.378201, 40.862213, 22.674644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084236, 40.708893, 22.601336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.862385, 40.451748, 22.390011>,  <41.729275, 40.297459, 22.263216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.862385, 40.451748, 22.390011>,  <42.084236, 40.708893, 22.601336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862385, 40.451748, 22.390011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634227, 0.084408, -0.768525,
		0.538652, -0.761315, 0.360908,
		-0.554626, -0.642865, -0.528313,
		41.695995, 40.258888, 22.231516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571827, 40.380947, 22.361551>,  <42.084236, 40.708893, 22.601336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571827, 40.380947, 22.361551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.254547, 40.311245, 22.128151>,  <42.064178, 40.269424, 21.988111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.254547, 40.311245, 22.128151>,  <42.571827, 40.380947, 22.361551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254547, 40.311245, 22.128151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584384, 0.051673, -0.809830,
		0.171267, -0.983344, 0.060844,
		-0.793198, -0.174253, -0.583501,
		42.016586, 40.258968, 21.953100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837360, 39.980053, 21.885124>,  <42.571827, 40.380947, 22.361551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837360, 39.980053, 21.885124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.498245, 40.085526, 21.701071>,  <42.294777, 40.148811, 21.590639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.498245, 40.085526, 21.701071>,  <42.837360, 39.980053, 21.885124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498245, 40.085526, 21.701071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473517, -0.014336, -0.880668,
		-0.238815, -0.964502, -0.112705,
		-0.847791, 0.263684, -0.460132,
		42.243908, 40.164631, 21.563032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796562, 39.534866, 21.319628>,  <42.837360, 39.980053, 21.885124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796562, 39.534866, 21.319628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.573494, 39.852577, 21.223192>,  <42.439651, 40.043205, 21.165331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.573494, 39.852577, 21.223192>,  <42.796562, 39.534866, 21.319628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573494, 39.852577, 21.223192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437043, 0.034041, -0.898796,
		-0.705686, -0.606602, -0.366117,
		-0.557675, 0.794276, -0.241089,
		42.406193, 40.090858, 21.150866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447144, 39.360439, 20.662840>,  <42.796562, 39.534866, 21.319628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447144, 39.360439, 20.662840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.489311, 39.754040, 20.720284>,  <42.514610, 39.990200, 20.754749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.489311, 39.754040, 20.720284>,  <42.447144, 39.360439, 20.662840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489311, 39.754040, 20.720284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682019, 0.033554, -0.730564,
		-0.723696, 0.174961, -0.667572,
		0.105421, 0.984003, 0.143609,
		42.520939, 40.049240, 20.763367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836597, 39.315216, 20.187155>,  <42.447144, 39.360439, 20.662840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836597, 39.315216, 20.187155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.987125, 39.238392, 19.824608>,  <42.077442, 39.192299, 19.607080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.987125, 39.238392, 19.824608>,  <41.836597, 39.315216, 20.187155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987125, 39.238392, 19.824608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726829, -0.667861, -0.160253,
		-0.574547, 0.719079, -0.390923,
		0.376317, -0.192061, -0.906365,
		42.100021, 39.180775, 19.552698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232746, 39.366730, 19.595591>,  <41.836597, 39.315216, 20.187155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232746, 39.366730, 19.595591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.533360, 39.140591, 19.459602>,  <41.713726, 39.004910, 19.378010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.533360, 39.140591, 19.459602>,  <41.232746, 39.366730, 19.595591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533360, 39.140591, 19.459602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659221, -0.663088, -0.354600,
		-0.024959, 0.490610, -0.871022,
		0.751534, -0.565346, -0.339970,
		41.758820, 38.970985, 19.357611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044998, 39.295242, 18.920702>,  <41.232746, 39.366730, 19.595591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044998, 39.295242, 18.920702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.275707, 38.989346, 19.035599>,  <41.414131, 38.805809, 19.104536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.275707, 38.989346, 19.035599>,  <41.044998, 39.295242, 18.920702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275707, 38.989346, 19.035599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764859, -0.629039, -0.138927,
		0.286929, -0.139570, -0.947730,
		0.576769, -0.764742, 0.287241,
		41.448738, 38.759922, 19.121771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777912, 38.773762, 18.515602>,  <41.044998, 39.295242, 18.920702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777912, 38.773762, 18.515602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.983688, 38.602795, 18.812969>,  <41.107155, 38.500214, 18.991390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.983688, 38.602795, 18.812969>,  <40.777912, 38.773762, 18.515602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983688, 38.602795, 18.812969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614990, -0.788054, -0.027513,
		0.597613, -0.443041, -0.668261,
		0.514437, -0.427417, 0.743418,
		41.138020, 38.474571, 19.035994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938133, 38.061306, 18.313047>,  <40.777912, 38.773762, 18.515602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938133, 38.061306, 18.313047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.017643, 38.043758, 18.704672>,  <41.065350, 38.033230, 18.939648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.017643, 38.043758, 18.704672>,  <40.938133, 38.061306, 18.313047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017643, 38.043758, 18.704672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377315, -0.925418, 0.035145,
		0.904500, -0.376401, -0.200504,
		0.198779, -0.043865, 0.979062,
		41.077278, 38.030598, 18.998390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121944, 37.442535, 18.395683>,  <40.938133, 38.061306, 18.313047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121944, 37.442535, 18.395683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.023949, 37.556072, 18.766500>,  <40.965153, 37.624195, 18.988991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.023949, 37.556072, 18.766500>,  <41.121944, 37.442535, 18.395683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023949, 37.556072, 18.766500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487320, -0.862670, 0.135352,
		0.838152, -0.418607, 0.349669,
		-0.244990, 0.283846, 0.927044,
		40.950451, 37.641228, 19.044613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121368, 36.845642, 18.838552>,  <41.121944, 37.442535, 18.395683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121368, 36.845642, 18.838552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.884777, 37.112427, 19.019798>,  <40.742821, 37.272499, 19.128546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.884777, 37.112427, 19.019798>,  <41.121368, 36.845642, 18.838552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884777, 37.112427, 19.019798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647074, -0.727917, 0.226785,
		0.481085, -0.159058, 0.862124,
		-0.591483, 0.666961, 0.453112,
		40.707333, 37.312515, 19.155731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936340, 36.507713, 19.364067>,  <41.121368, 36.845642, 18.838552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936340, 36.507713, 19.364067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.679317, 36.812241, 19.329411>,  <40.525105, 36.994957, 19.308617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.679317, 36.812241, 19.329411>,  <40.936340, 36.507713, 19.364067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679317, 36.812241, 19.329411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727709, -0.570937, 0.380094,
		0.239907, 0.307283, 0.920881,
		-0.642561, 0.761320, -0.086641,
		40.486549, 37.040638, 19.303419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985619, 36.006611, 19.908375>,  <40.936340, 36.507713, 19.364067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985619, 36.006611, 19.908375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.121193, 35.635597, 19.971375>,  <41.202538, 35.412991, 20.009174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.121193, 35.635597, 19.971375>,  <40.985619, 36.006611, 19.908375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121193, 35.635597, 19.971375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894002, 0.265375, -0.361021,
		0.293062, 0.263168, 0.919161,
		0.338932, -0.927534, 0.157501,
		41.222874, 35.357338, 20.018625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627491, 36.006207, 20.381531>,  <40.985619, 36.006611, 19.908375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627491, 36.006207, 20.381531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.629036, 35.682175, 20.147009>,  <41.629963, 35.487755, 20.006296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.629036, 35.682175, 20.147009>,  <41.627491, 36.006207, 20.381531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629036, 35.682175, 20.147009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951712, 0.182957, -0.246518,
		0.306969, -0.557042, 0.771670,
		0.003862, -0.810081, -0.586306,
		41.630196, 35.439152, 19.971117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286774, 35.689411, 20.470869>,  <41.627491, 36.006207, 20.381531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286774, 35.689411, 20.470869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.140656, 35.530338, 20.134201>,  <42.052986, 35.434895, 19.932199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.140656, 35.530338, 20.134201>,  <42.286774, 35.689411, 20.470869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140656, 35.530338, 20.134201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906122, 0.055282, -0.419388,
		0.213313, -0.915856, 0.340156,
		-0.365294, -0.397683, -0.841670,
		42.031067, 35.411034, 19.881701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803226, 35.205143, 20.285774>,  <42.286774, 35.689411, 20.470869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803226, 35.205143, 20.285774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.595398, 35.291676, 19.955139>,  <42.470699, 35.343594, 19.756758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.595398, 35.291676, 19.955139>,  <42.803226, 35.205143, 20.285774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595398, 35.291676, 19.955139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843095, -0.027223, -0.537076,
		-0.138687, -0.975941, -0.168240,
		-0.519574, 0.216328, -0.826587,
		42.439526, 35.356575, 19.707163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992428, 34.671425, 19.766132>,  <42.803226, 35.205143, 20.285774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992428, 34.671425, 19.766132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.869556, 35.005898, 19.584389>,  <42.795834, 35.206581, 19.475342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.869556, 35.005898, 19.584389>,  <42.992428, 34.671425, 19.766132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869556, 35.005898, 19.584389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829327, 0.001043, -0.558763,
		-0.466754, -0.548452, -0.693788,
		-0.307178, 0.836182, -0.454359,
		42.777405, 35.256752, 19.448082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132324, 34.558029, 19.070522>,  <42.992428, 34.671425, 19.766132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132324, 34.558029, 19.070522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.105137, 34.956707, 19.088280>,  <43.088825, 35.195915, 19.098934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.105137, 34.956707, 19.088280>,  <43.132324, 34.558029, 19.070522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105137, 34.956707, 19.088280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725189, 0.079916, -0.683896,
		-0.685187, -0.014289, -0.728227,
		-0.067970, 0.996699, 0.044395,
		43.084747, 35.255718, 19.101599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033428, 34.743301, 18.462210>,  <43.132324, 34.558029, 19.070522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033428, 34.743301, 18.462210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.170372, 35.075127, 18.638670>,  <43.252541, 35.274223, 18.744545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.170372, 35.075127, 18.638670>,  <43.033428, 34.743301, 18.462210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170372, 35.075127, 18.638670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638282, 0.139201, -0.757112,
		-0.689481, 0.540784, -0.481839,
		0.342361, 0.829564, 0.441149,
		43.273079, 35.323997, 18.771015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.368805, 35.026218, 17.803951>,  <43.033428, 34.743301, 18.462210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.368805, 35.026218, 17.803951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.481831, 35.284149, 18.088022>,  <43.549644, 35.438908, 18.258465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.481831, 35.284149, 18.088022>,  <43.368805, 35.026218, 17.803951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481831, 35.284149, 18.088022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730522, 0.335163, -0.594982,
		-0.621687, 0.686921, -0.376357,
		0.282565, 0.644829, 0.710177,
		43.566601, 35.477596, 18.301075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418633, 35.613205, 17.524754>,  <43.368805, 35.026218, 17.803951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418633, 35.613205, 17.524754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.664745, 35.641781, 17.838778>,  <43.812412, 35.658928, 18.027191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.664745, 35.641781, 17.838778>,  <43.418633, 35.613205, 17.524754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.664745, 35.641781, 17.838778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742205, 0.283068, -0.607457,
		-0.265624, 0.956435, 0.121143,
		0.615285, 0.071442, 0.785060,
		43.849331, 35.663212, 18.074295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.847889, 34.484699, 30.814795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.236618, 34.395931, 30.846598>,  <35.469856, 34.342670, 30.865681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.236618, 34.395931, 30.846598>,  <34.847889, 34.484699, 30.814795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236618, 34.395931, 30.846598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114342, 0.148810, -0.982233,
		0.206141, 0.963644, 0.169990,
		0.971819, -0.221915, 0.079509,
		35.528164, 34.329357, 30.870451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152828, 34.986134, 30.503374>,  <34.847889, 34.484699, 30.814795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152828, 34.986134, 30.503374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.416279, 34.686684, 30.472982>,  <35.574348, 34.507015, 30.454748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.416279, 34.686684, 30.472982>,  <35.152828, 34.986134, 30.503374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416279, 34.686684, 30.472982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025937, 0.078324, -0.996590,
		0.752019, 0.658356, 0.032170,
		0.658631, -0.748620, -0.075978,
		35.613869, 34.462097, 30.450190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473061, 35.109550, 29.888456>,  <35.152828, 34.986134, 30.503374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473061, 35.109550, 29.888456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570946, 34.725670, 29.943727>,  <35.629677, 34.495342, 29.976891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570946, 34.725670, 29.943727>,  <35.473061, 35.109550, 29.888456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570946, 34.725670, 29.943727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235081, -0.079533, -0.968716,
		0.940666, 0.269538, 0.206145,
		0.244710, -0.959700, 0.138178,
		35.644360, 34.437759, 29.985180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017075, 35.049484, 29.455139>,  <35.473061, 35.109550, 29.888456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017075, 35.049484, 29.455139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917027, 34.668678, 29.525677>,  <35.856998, 34.440193, 29.567999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917027, 34.668678, 29.525677>,  <36.017075, 35.049484, 29.455139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917027, 34.668678, 29.525677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254144, -0.240303, -0.936838,
		0.934264, -0.189507, 0.302055,
		-0.250122, -0.952020, 0.176345,
		35.841991, 34.383072, 29.578581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644955, 34.646832, 29.216579>,  <36.017075, 35.049484, 29.455139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644955, 34.646832, 29.216579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.339912, 34.388294, 29.226954>,  <36.156887, 34.233173, 29.233177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.339912, 34.388294, 29.226954>,  <36.644955, 34.646832, 29.216579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339912, 34.388294, 29.226954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341924, -0.436817, -0.832033,
		0.549104, -0.625648, 0.554119,
		-0.762609, -0.646340, 0.025934,
		36.111130, 34.194393, 29.234734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888287, 33.881680, 29.050121>,  <36.644955, 34.646832, 29.216579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888287, 33.881680, 29.050121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.500191, 33.906052, 28.956373>,  <36.267334, 33.920673, 28.900124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.500191, 33.906052, 28.956373>,  <36.888287, 33.881680, 29.050121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500191, 33.906052, 28.956373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193122, -0.389241, -0.900664,
		-0.146099, -0.919119, 0.365890,
		-0.970237, 0.060924, -0.234370,
		36.209122, 33.924328, 28.886063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760975, 33.310787, 28.652414>,  <36.888287, 33.881680, 29.050121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760975, 33.310787, 28.652414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433537, 33.528271, 28.578356>,  <36.237072, 33.658760, 28.533920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433537, 33.528271, 28.578356>,  <36.760975, 33.310787, 28.652414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433537, 33.528271, 28.578356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058695, -0.399849, -0.914700,
		-0.571360, -0.737904, 0.359229,
		-0.818598, 0.543708, -0.185146,
		36.187958, 33.691383, 28.522812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255424, 32.865479, 28.375927>,  <36.760975, 33.310787, 28.652414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255424, 32.865479, 28.375927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.154560, 33.237656, 28.269569>,  <36.094044, 33.460960, 28.205755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.154560, 33.237656, 28.269569>,  <36.255424, 32.865479, 28.375927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154560, 33.237656, 28.269569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181226, -0.315319, -0.931521,
		-0.950565, -0.186704, 0.248130,
		-0.252158, 0.930438, -0.265895,
		36.078911, 33.516788, 28.189800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672184, 32.807098, 27.960737>,  <36.255424, 32.865479, 28.375927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672184, 32.807098, 27.960737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.834236, 33.160004, 27.864832>,  <35.931465, 33.371746, 27.807289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.834236, 33.160004, 27.864832>,  <35.672184, 32.807098, 27.960737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834236, 33.160004, 27.864832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104358, -0.215908, -0.970821,
		-0.908285, 0.418326, 0.004601,
		0.405126, 0.882262, -0.239762,
		35.955772, 33.424683, 27.792904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371822, 33.001205, 27.378372>,  <35.672184, 32.807098, 27.960737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371822, 33.001205, 27.378372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.697693, 33.231876, 27.353863>,  <35.893215, 33.370277, 27.339157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.697693, 33.231876, 27.353863>,  <35.371822, 33.001205, 27.378372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697693, 33.231876, 27.353863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148774, -0.309947, -0.939042,
		-0.560513, 0.755896, -0.338299,
		0.814673, 0.576675, -0.061272,
		35.942093, 33.404881, 27.335482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244484, 33.320587, 26.819832>,  <35.371822, 33.001205, 27.378372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244484, 33.320587, 26.819832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638145, 33.328243, 26.890348>,  <35.874344, 33.332836, 26.932657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638145, 33.328243, 26.890348>,  <35.244484, 33.320587, 26.819832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638145, 33.328243, 26.890348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177311, -0.119081, -0.976924,
		0.002297, 0.992700, -0.120587,
		0.984152, 0.019137, 0.176290,
		35.933392, 33.333984, 26.943235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575623, 33.808857, 26.354622>,  <35.244484, 33.320587, 26.819832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575623, 33.808857, 26.354622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875809, 33.566139, 26.459391>,  <36.055920, 33.420509, 26.522253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875809, 33.566139, 26.459391>,  <35.575623, 33.808857, 26.354622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875809, 33.566139, 26.459391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336608, 0.009865, -0.941593,
		0.568771, 0.794796, 0.211655,
		0.750463, -0.606796, 0.261924,
		36.100948, 33.384102, 26.537968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586800, 34.576855, 26.273092>,  <35.575623, 33.808857, 26.354622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586800, 34.576855, 26.273092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.241791, 34.708416, 26.119268>,  <35.034786, 34.787354, 26.026974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.241791, 34.708416, 26.119268>,  <35.586800, 34.576855, 26.273092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241791, 34.708416, 26.119268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397443, 0.030075, 0.917134,
		0.313213, 0.943885, 0.104779,
		-0.862518, 0.328902, -0.384560,
		34.983036, 34.807087, 26.003901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347137, 34.991585, 26.737949>,  <35.586800, 34.576855, 26.273092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347137, 34.991585, 26.737949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.003746, 34.924091, 26.544230>,  <34.797710, 34.883595, 26.427998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.003746, 34.924091, 26.544230>,  <35.347137, 34.991585, 26.737949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003746, 34.924091, 26.544230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501949, 0.082752, 0.860930,
		-0.105188, 0.982183, -0.155735,
		-0.858477, -0.168731, -0.484301,
		34.746204, 34.873470, 26.398939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884552, 35.430954, 27.040773>,  <35.347137, 34.991585, 26.737949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884552, 35.430954, 27.040773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641659, 35.181782, 26.843506>,  <34.495922, 35.032276, 26.725145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641659, 35.181782, 26.843506>,  <34.884552, 35.430954, 27.040773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641659, 35.181782, 26.843506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727474, 0.186357, 0.660343,
		-0.319445, 0.759753, -0.566331,
		-0.607237, -0.622934, -0.493169,
		34.459488, 34.994900, 26.695555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285496, 35.838898, 26.893280>,  <34.884552, 35.430954, 27.040773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285496, 35.838898, 26.893280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.180466, 35.453136, 26.905876>,  <34.117447, 35.221680, 26.913433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.180466, 35.453136, 26.905876>,  <34.285496, 35.838898, 26.893280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180466, 35.453136, 26.905876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748421, 0.224151, 0.624197,
		-0.609033, 0.140328, -0.780632,
		-0.262572, -0.964399, 0.031491,
		34.101696, 35.163818, 26.915323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623367, 35.817978, 26.948172>,  <34.285496, 35.838898, 26.893280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623367, 35.817978, 26.948172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721344, 35.458763, 27.094343>,  <33.780128, 35.243237, 27.182047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721344, 35.458763, 27.094343>,  <33.623367, 35.817978, 26.948172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721344, 35.458763, 27.094343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711810, 0.089345, 0.696666,
		-0.658280, -0.430757, -0.617346,
		0.244937, -0.898034, 0.365431,
		33.794827, 35.189354, 27.203972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019726, 35.721756, 27.294565>,  <33.623367, 35.817978, 26.948172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019726, 35.721756, 27.294565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.255089, 35.430611, 27.435411>,  <33.396305, 35.255924, 27.519920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.255089, 35.430611, 27.435411>,  <33.019726, 35.721756, 27.294565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255089, 35.430611, 27.435411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550560, -0.041732, 0.833752,
		-0.592166, -0.684447, -0.425290,
		0.588408, -0.727867, 0.352117,
		33.431610, 35.212250, 27.541046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644066, 35.276291, 27.575632>,  <33.019726, 35.721756, 27.294565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644066, 35.276291, 27.575632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.989014, 35.155418, 27.738115>,  <33.195984, 35.082893, 27.835606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.989014, 35.155418, 27.738115>,  <32.644066, 35.276291, 27.575632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989014, 35.155418, 27.738115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442841, -0.061348, 0.894499,
		-0.245384, -0.951273, -0.186724,
		0.862368, -0.302185, 0.406209,
		33.247723, 35.064762, 27.859978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595108, 34.563629, 27.853903>,  <32.644066, 35.276291, 27.575632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595108, 34.563629, 27.853903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.903629, 34.748619, 28.028811>,  <33.088741, 34.859612, 28.133755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.903629, 34.748619, 28.028811>,  <32.595108, 34.563629, 27.853903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903629, 34.748619, 28.028811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396284, -0.188650, 0.898538,
		0.498040, -0.866331, 0.037764,
		0.771307, 0.462473, 0.437269,
		33.135021, 34.887360, 28.159990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737694, 34.175682, 28.340731>,  <32.595108, 34.563629, 27.853903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737694, 34.175682, 28.340731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.923645, 34.502724, 28.476618>,  <33.035217, 34.698948, 28.558151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.923645, 34.502724, 28.476618>,  <32.737694, 34.175682, 28.340731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923645, 34.502724, 28.476618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253695, -0.244603, 0.935846,
		0.848248, -0.521243, 0.093710,
		0.464881, 0.817603, 0.339720,
		33.063110, 34.748005, 28.578533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241001, 33.939739, 28.879463>,  <32.737694, 34.175682, 28.340731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241001, 33.939739, 28.879463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122311, 34.316841, 28.940355>,  <33.051098, 34.543102, 28.976891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122311, 34.316841, 28.940355>,  <33.241001, 33.939739, 28.879463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122311, 34.316841, 28.940355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342436, -0.253851, 0.904598,
		0.891454, 0.216288, 0.398156,
		-0.296726, 0.942751, 0.152232,
		33.033295, 34.599667, 28.986025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566448, 34.102531, 29.538702>,  <33.241001, 33.939739, 28.879463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566448, 34.102531, 29.538702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.269470, 34.365009, 29.484753>,  <33.091282, 34.522495, 29.452383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.269470, 34.365009, 29.484753>,  <33.566448, 34.102531, 29.538702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269470, 34.365009, 29.484753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209351, -0.036018, 0.977177,
		0.636356, 0.753736, 0.164115,
		-0.742444, 0.656190, -0.134875,
		33.046738, 34.561867, 29.444290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682404, 34.656754, 29.903847>,  <33.566448, 34.102531, 29.538702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682404, 34.656754, 29.903847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.286236, 34.661221, 29.848797>,  <33.048534, 34.663902, 29.815767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.286236, 34.661221, 29.848797>,  <33.682404, 34.656754, 29.903847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286236, 34.661221, 29.848797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138040, -0.102733, 0.985084,
		-0.003133, 0.994646, 0.103291,
		-0.990422, 0.011172, -0.137623,
		32.989109, 34.664574, 29.807510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410427, 35.142567, 30.385391>,  <33.682404, 34.656754, 29.903847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410427, 35.142567, 30.385391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078529, 34.939484, 30.292650>,  <32.879391, 34.817635, 30.237005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078529, 34.939484, 30.292650>,  <33.410427, 35.142567, 30.385391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078529, 34.939484, 30.292650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195369, -0.124924, 0.972741,
		-0.522833, 0.852423, 0.004465,
		-0.829745, -0.507709, -0.231851,
		32.829605, 34.787170, 30.223095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886772, 35.473099, 30.819393>,  <33.410427, 35.142567, 30.385391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886772, 35.473099, 30.819393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.737686, 35.111397, 30.736061>,  <32.648235, 34.894375, 30.686062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.737686, 35.111397, 30.736061>,  <32.886772, 35.473099, 30.819393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737686, 35.111397, 30.736061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340534, -0.075558, 0.937191,
		-0.863204, 0.420248, -0.279768,
		-0.372714, -0.904258, -0.208331,
		32.625874, 34.840118, 30.673561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215141, 35.418076, 31.236895>,  <32.886772, 35.473099, 30.819393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215141, 35.418076, 31.236895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.343918, 35.049431, 31.150192>,  <32.421185, 34.828243, 31.098171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.343918, 35.049431, 31.150192>,  <32.215141, 35.418076, 31.236895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343918, 35.049431, 31.150192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361442, -0.331246, 0.871571,
		-0.875052, -0.202246, -0.439751,
		0.321937, -0.921614, -0.216758,
		32.440498, 34.772945, 31.085165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559631, 36.086246, 31.534050>,  <32.215141, 35.418076, 31.236895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559631, 36.086246, 31.534050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.842434, 36.042500, 31.813530>,  <33.012115, 36.016251, 31.981218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.842434, 36.042500, 31.813530>,  <32.559631, 36.086246, 31.534050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842434, 36.042500, 31.813530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262736, 0.957879, -0.115918,
		-0.656594, 0.265528, 0.705959,
		0.707003, -0.109370, 0.698702,
		33.054535, 36.009689, 32.023140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712776, 36.758228, 31.938469>,  <32.559631, 36.086246, 31.534050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712776, 36.758228, 31.938469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033463, 36.528709, 32.005405>,  <33.225876, 36.390999, 32.045567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033463, 36.528709, 32.005405>,  <32.712776, 36.758228, 31.938469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033463, 36.528709, 32.005405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594957, 0.792925, -0.131519,
		-0.057222, 0.205001, 0.977087,
		0.801718, -0.573799, 0.167340,
		33.273979, 36.356571, 32.055607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084991, 37.240314, 32.237034>,  <32.712776, 36.758228, 31.938469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084991, 37.240314, 32.237034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.340862, 36.956108, 32.119740>,  <33.494385, 36.785583, 32.049362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.340862, 36.956108, 32.119740>,  <33.084991, 37.240314, 32.237034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340862, 36.956108, 32.119740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684446, 0.700130, -0.203352,
		0.349788, -0.070625, 0.934163,
		0.639674, -0.710514, -0.293236,
		33.532764, 36.742954, 32.031769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722134, 37.384335, 32.472370>,  <33.084991, 37.240314, 32.237034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722134, 37.384335, 32.472370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.837986, 37.145920, 32.172810>,  <33.907497, 37.002869, 31.993073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.837986, 37.145920, 32.172810>,  <33.722134, 37.384335, 32.472370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837986, 37.145920, 32.172810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812397, 0.566801, -0.136923,
		0.506090, -0.568748, 0.648382,
		0.289629, -0.596039, -0.748901,
		33.924873, 36.967110, 31.948139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451332, 37.302834, 32.455193>,  <33.722134, 37.384335, 32.472370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451332, 37.302834, 32.455193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.343037, 37.224266, 32.078232>,  <34.278057, 37.177124, 31.852057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.343037, 37.224266, 32.078232>,  <34.451332, 37.302834, 32.455193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343037, 37.224266, 32.078232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761034, 0.555829, -0.334485,
		0.589513, -0.807758, -0.001004,
		-0.270741, -0.196419, -0.942400,
		34.261814, 37.165340, 31.795511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074501, 37.046310, 32.223862>,  <34.451332, 37.302834, 32.455193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074501, 37.046310, 32.223862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.856014, 37.134865, 31.900717>,  <34.724922, 37.187996, 31.706831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.856014, 37.134865, 31.900717>,  <35.074501, 37.046310, 32.223862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856014, 37.134865, 31.900717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832205, 0.253145, -0.493308,
		0.095295, -0.941757, -0.322510,
		-0.546218, 0.221384, -0.807858,
		34.692150, 37.201279, 31.658360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393826, 36.665199, 31.688814>,  <35.074501, 37.046310, 32.223862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393826, 36.665199, 31.688814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.182434, 36.964603, 31.528591>,  <35.055599, 37.144245, 31.432457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.182434, 36.964603, 31.528591>,  <35.393826, 36.665199, 31.688814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182434, 36.964603, 31.528591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824702, 0.340688, -0.451441,
		-0.201442, -0.568918, -0.797342,
		-0.528477, 0.748508, -0.400559,
		35.023891, 37.189156, 31.408424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646481, 36.670158, 31.020666>,  <35.393826, 36.665199, 31.688814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646481, 36.670158, 31.020666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.460041, 37.019238, 31.078846>,  <35.348179, 37.228683, 31.113754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.460041, 37.019238, 31.078846>,  <35.646481, 36.670158, 31.020666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460041, 37.019238, 31.078846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686474, 0.460439, -0.562805,
		-0.558127, -0.162476, -0.813693,
		-0.466098, 0.872696, 0.145449,
		35.320213, 37.281048, 31.122480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446667, 36.973824, 30.389801>,  <35.646481, 36.670158, 31.020666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446667, 36.973824, 30.389801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.471947, 37.284584, 30.640379>,  <35.487114, 37.471039, 30.790726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.471947, 37.284584, 30.640379>,  <35.446667, 36.973824, 30.389801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471947, 37.284584, 30.640379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414336, 0.550620, -0.724668,
		-0.907927, 0.305361, -0.287095,
		0.063205, 0.776899, 0.626444,
		35.490910, 37.517654, 30.828312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254490, 37.508713, 29.946129>,  <35.446667, 36.973824, 30.389801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254490, 37.508713, 29.946129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.451008, 37.689613, 30.243877>,  <35.568920, 37.798153, 30.422527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.451008, 37.689613, 30.243877>,  <35.254490, 37.508713, 29.946129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451008, 37.689613, 30.243877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592645, 0.452706, -0.666205,
		-0.638277, 0.768454, -0.045613,
		0.491299, 0.452255, 0.744372,
		35.598396, 37.825291, 30.467190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203358, 38.146870, 29.767756>,  <35.254490, 37.508713, 29.946129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203358, 38.146870, 29.767756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.515133, 38.126892, 30.017551>,  <35.702198, 38.114906, 30.167429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.515133, 38.126892, 30.017551>,  <35.203358, 38.146870, 29.767756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515133, 38.126892, 30.017551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614387, 0.255890, -0.746357,
		-0.122522, 0.965415, 0.230137,
		0.779434, -0.049948, 0.624491,
		35.748962, 38.111908, 30.204899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553612, 38.695976, 29.722883>,  <35.203358, 38.146870, 29.767756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553612, 38.695976, 29.722883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842182, 38.471554, 29.885244>,  <36.015324, 38.336899, 29.982660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842182, 38.471554, 29.885244>,  <35.553612, 38.695976, 29.722883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842182, 38.471554, 29.885244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629804, 0.287902, -0.721428,
		0.287902, 0.776098, 0.561056,
		0.721428, -0.561056, 0.405903,
		36.058609, 38.303238, 30.007015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088161, 39.090660, 29.630022>,  <35.553612, 38.695976, 29.722883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088161, 39.090660, 29.630022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.272736, 38.743675, 29.704414>,  <36.383480, 38.535484, 29.749050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.272736, 38.743675, 29.704414>,  <36.088161, 39.090660, 29.630022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272736, 38.743675, 29.704414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686596, 0.216421, -0.694080,
		0.561837, 0.447969, 0.695459,
		0.461438, -0.867460, 0.185980,
		36.411167, 38.483437, 29.760208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828407, 39.249783, 29.686573>,  <36.088161, 39.090660, 29.630022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828407, 39.249783, 29.686573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764500, 38.865330, 29.596514>,  <36.726154, 38.634659, 29.542479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764500, 38.865330, 29.596514>,  <36.828407, 39.249783, 29.686573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764500, 38.865330, 29.596514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702811, 0.049410, -0.709658,
		0.693203, -0.271618, 0.667603,
		-0.159769, -0.961136, -0.225147,
		36.716568, 38.576988, 29.528969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419598, 39.114300, 29.719131>,  <36.828407, 39.249783, 29.686573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419598, 39.114300, 29.719131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.232086, 38.844482, 29.491013>,  <37.119579, 38.682594, 29.354141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.232086, 38.844482, 29.491013>,  <37.419598, 39.114300, 29.719131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232086, 38.844482, 29.491013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698546, 0.112053, -0.706737,
		0.540627, -0.729684, 0.418670,
		-0.468781, -0.674541, -0.570297,
		37.091454, 38.642120, 29.319923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952900, 38.771633, 29.432272>,  <37.419598, 39.114300, 29.719131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952900, 38.771633, 29.432272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.645882, 38.665115, 29.199045>,  <37.461670, 38.601204, 29.059109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.645882, 38.665115, 29.199045>,  <37.952900, 38.771633, 29.432272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645882, 38.665115, 29.199045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614819, -0.048538, -0.787173,
		0.181317, -0.962669, 0.200977,
		-0.767543, -0.266292, -0.583067,
		37.415619, 38.585228, 29.024126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194614, 38.282742, 28.900480>,  <37.952900, 38.771633, 29.432272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194614, 38.282742, 28.900480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.839752, 38.376694, 28.741592>,  <37.626835, 38.433064, 28.646259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.839752, 38.376694, 28.741592>,  <38.194614, 38.282742, 28.900480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839752, 38.376694, 28.741592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416588, 0.037365, -0.908327,
		-0.198503, -0.971307, -0.130996,
		-0.887159, 0.234877, -0.397218,
		37.573605, 38.447155, 28.622427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052982, 37.863270, 28.288485>,  <38.194614, 38.282742, 28.900480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052982, 37.863270, 28.288485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.817478, 38.182728, 28.238630>,  <37.676178, 38.374401, 28.208717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.817478, 38.182728, 28.238630>,  <38.052982, 37.863270, 28.288485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817478, 38.182728, 28.238630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253271, 0.035841, -0.966731,
		-0.767606, -0.600738, -0.223375,
		-0.588758, 0.798643, -0.124637,
		37.640850, 38.422321, 28.201239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744179, 37.669762, 27.689463>,  <38.052982, 37.863270, 28.288485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744179, 37.669762, 27.689463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.704037, 38.064297, 27.741709>,  <37.679951, 38.301018, 27.773056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.704037, 38.064297, 27.741709>,  <37.744179, 37.669762, 27.689463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704037, 38.064297, 27.741709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129984, 0.143149, -0.981128,
		-0.986425, -0.081481, -0.142574,
		-0.100352, 0.986341, 0.130615,
		37.673931, 38.360199, 27.780893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264748, 37.879204, 27.281408>,  <37.744179, 37.669762, 27.689463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264748, 37.879204, 27.281408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.461414, 38.225964, 27.314276>,  <37.579414, 38.434021, 27.333996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.461414, 38.225964, 27.314276>,  <37.264748, 37.879204, 27.281408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461414, 38.225964, 27.314276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130421, 0.019989, -0.991257,
		-0.860962, 0.498084, -0.103234,
		0.491666, 0.866898, 0.082171,
		37.608913, 38.486034, 27.338926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021332, 38.287334, 26.654789>,  <37.264748, 37.879204, 27.281408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021332, 38.287334, 26.654789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372284, 38.449806, 26.756947>,  <37.582855, 38.547287, 26.818241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372284, 38.449806, 26.756947>,  <37.021332, 38.287334, 26.654789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372284, 38.449806, 26.756947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272121, 0.017150, -0.962110,
		-0.395165, 0.913634, -0.095481,
		0.877380, 0.406175, 0.255396,
		37.635498, 38.571659, 26.833565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140644, 38.711472, 26.124752>,  <37.021332, 38.287334, 26.654789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140644, 38.711472, 26.124752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.502392, 38.718987, 26.295282>,  <37.719440, 38.723495, 26.397600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.502392, 38.718987, 26.295282>,  <37.140644, 38.711472, 26.124752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502392, 38.718987, 26.295282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419756, 0.140846, -0.896642,
		-0.076894, 0.989853, 0.119491,
		0.904374, 0.018790, 0.426327,
		37.773705, 38.724625, 26.423180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470963, 39.302731, 25.915949>,  <37.140644, 38.711472, 26.124752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470963, 39.302731, 25.915949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.769039, 39.052742, 26.008987>,  <37.947884, 38.902748, 26.064810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.769039, 39.052742, 26.008987>,  <37.470963, 39.302731, 25.915949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769039, 39.052742, 26.008987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442670, 0.202746, -0.873462,
		0.498731, 0.753860, 0.427741,
		0.745191, -0.624971, 0.232596,
		37.992596, 38.865250, 26.078766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163624, 39.735958, 25.874384>,  <37.470963, 39.302731, 25.915949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163624, 39.735958, 25.874384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256947, 39.349651, 25.829014>,  <38.312943, 39.117867, 25.801792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256947, 39.349651, 25.829014>,  <38.163624, 39.735958, 25.874384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256947, 39.349651, 25.829014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651458, 0.241836, -0.719109,
		0.721920, 0.093885, 0.685578,
		0.233311, -0.965764, -0.113424,
		38.326939, 39.059921, 25.794987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908344, 39.654381, 26.078484>,  <38.163624, 39.735958, 25.874384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908344, 39.654381, 26.078484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.793903, 39.360130, 25.832882>,  <38.725239, 39.183582, 25.685520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.793903, 39.360130, 25.832882>,  <38.908344, 39.654381, 26.078484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793903, 39.360130, 25.832882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795511, 0.174851, -0.580163,
		0.534141, -0.654436, 0.535171,
		-0.286105, -0.735623, -0.614006,
		38.708073, 39.139442, 25.648680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600380, 39.339905, 25.866508>,  <38.908344, 39.654381, 26.078484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600380, 39.339905, 25.866508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.359943, 39.175488, 25.592358>,  <39.215683, 39.076839, 25.427868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.359943, 39.175488, 25.592358>,  <39.600380, 39.339905, 25.866508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359943, 39.175488, 25.592358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775797, -0.094164, -0.623917,
		0.191918, -0.906741, 0.375484,
		-0.601088, -0.411041, -0.685375,
		39.179615, 39.052174, 25.386745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008522, 38.886642, 25.512524>,  <39.600380, 39.339905, 25.866508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008522, 38.886642, 25.512524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.690491, 38.922306, 25.272558>,  <39.499672, 38.943703, 25.128580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.690491, 38.922306, 25.272558>,  <40.008522, 38.886642, 25.512524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690491, 38.922306, 25.272558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586364, -0.139767, -0.797899,
		-0.154989, -0.986162, 0.058845,
		-0.795082, 0.089161, -0.599912,
		39.451965, 38.949055, 25.092585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287220, 38.352440, 25.937309>,  <40.008522, 38.886642, 25.512524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287220, 38.352440, 25.937309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.662781, 38.455524, 26.028574>,  <40.888115, 38.517376, 26.083332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.662781, 38.455524, 26.028574>,  <40.287220, 38.352440, 25.937309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662781, 38.455524, 26.028574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237266, 0.004370, 0.971435,
		0.249350, -0.966213, 0.065248,
		0.938898, 0.257708, 0.228159,
		40.944450, 38.532837, 26.097021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480541, 37.885315, 26.456356>,  <40.287220, 38.352440, 25.937309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480541, 37.885315, 26.456356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.740913, 38.186901, 26.491753>,  <40.897137, 38.367851, 26.512991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.740913, 38.186901, 26.491753>,  <40.480541, 37.885315, 26.456356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740913, 38.186901, 26.491753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280200, 0.130286, 0.951059,
		0.705537, -0.643864, 0.296068,
		0.650927, 0.753966, 0.088489,
		40.936192, 38.413090, 26.518299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839989, 37.783798, 26.994890>,  <40.480541, 37.885315, 26.456356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839989, 37.783798, 26.994890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.879444, 38.179005, 26.947403>,  <40.903118, 38.416130, 26.918911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.879444, 38.179005, 26.947403>,  <40.839989, 37.783798, 26.994890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879444, 38.179005, 26.947403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162929, 0.133723, 0.977534,
		0.981695, -0.077081, 0.174167,
		0.098640, 0.988017, -0.118717,
		40.909035, 38.475410, 26.911787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188053, 37.967739, 27.600082>,  <40.839989, 37.783798, 26.994890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188053, 37.967739, 27.600082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.034855, 38.302616, 27.443913>,  <40.942936, 38.503540, 27.350210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.034855, 38.302616, 27.443913>,  <41.188053, 37.967739, 27.600082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034855, 38.302616, 27.443913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244578, 0.315667, 0.916807,
		0.890785, 0.446620, 0.083860,
		-0.382993, 0.837188, -0.390425,
		40.919956, 38.553772, 27.326784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520329, 38.554325, 27.932476>,  <41.188053, 37.967739, 27.600082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520329, 38.554325, 27.932476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.173008, 38.698399, 27.796053>,  <40.964615, 38.784843, 27.714199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.173008, 38.698399, 27.796053>,  <41.520329, 38.554325, 27.932476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173008, 38.698399, 27.796053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264273, 0.245951, 0.932560,
		0.419775, 0.899876, -0.118373,
		-0.868302, 0.360183, -0.341057,
		40.912518, 38.806454, 27.693735>
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
