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
	<24.577984, 35.452400, 34.675285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291105, 35.268414, 34.884686>,  <24.118979, 35.158020, 35.010326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291105, 35.268414, 34.884686>,  <24.577984, 35.452400, 34.675285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.291105, 35.268414, 34.884686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654457, -0.186503, 0.732736,
		-0.239403, 0.868126, 0.434791,
		-0.717197, -0.459971, 0.523502,
		24.075947, 35.130421, 35.041737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.490376, 35.756199, 35.248672>,  <24.577984, 35.452400, 34.675285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.490376, 35.756199, 35.248672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.391720, 35.376026, 35.324402>,  <24.332527, 35.147923, 35.369839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.391720, 35.376026, 35.324402>,  <24.490376, 35.756199, 35.248672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.391720, 35.376026, 35.324402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765023, -0.071020, 0.640075,
		-0.594903, 0.302706, 0.744620,
		-0.246638, -0.950434, 0.189327,
		24.317728, 35.090897, 35.381199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.554029, 35.679958, 36.033016>,  <24.490376, 35.756199, 35.248672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.554029, 35.679958, 36.033016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609869, 35.340317, 35.829235>,  <24.643372, 35.136532, 35.706966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609869, 35.340317, 35.829235>,  <24.554029, 35.679958, 36.033016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.609869, 35.340317, 35.829235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912395, -0.089619, 0.399380,
		-0.384771, -0.520570, 0.762206,
		0.139597, -0.849103, -0.509448,
		24.651749, 35.085587, 35.676399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.832443, 35.049061, 36.495007>,  <24.554029, 35.679958, 36.033016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.832443, 35.049061, 36.495007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.949701, 35.014000, 36.114189>,  <25.020056, 34.992962, 35.885700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.949701, 35.014000, 36.114189>,  <24.832443, 35.049061, 36.495007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.949701, 35.014000, 36.114189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929763, -0.205841, 0.305238,
		-0.222725, -0.974652, 0.021157,
		0.293145, -0.087655, -0.952041,
		25.037645, 34.987705, 35.828575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.353134, 34.486782, 36.426769>,  <24.832443, 35.049061, 36.495007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.353134, 34.486782, 36.426769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391241, 34.725819, 36.108322>,  <25.414106, 34.869240, 35.917255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391241, 34.725819, 36.108322>,  <25.353134, 34.486782, 36.426769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.391241, 34.725819, 36.108322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988528, -0.150952, 0.004983,
		-0.117198, -0.787461, -0.605120,
		0.095268, 0.597595, -0.796118,
		25.419821, 34.905098, 35.869488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039869, 34.317375, 36.198303>,  <25.353134, 34.486782, 36.426769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.039869, 34.317375, 36.198303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957150, 34.684387, 36.062435>,  <25.907518, 34.904594, 35.980915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957150, 34.684387, 36.062435>,  <26.039869, 34.317375, 36.198303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957150, 34.684387, 36.062435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944269, 0.278053, 0.176189,
		0.256104, -0.284304, -0.923895,
		-0.206800, 0.917528, -0.339670,
		25.895109, 34.959644, 35.960533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.488890, 34.563221, 35.587547>,  <26.039869, 34.317375, 36.198303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.488890, 34.563221, 35.587547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369707, 34.853451, 35.835667>,  <26.298199, 35.027588, 35.984539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369707, 34.853451, 35.835667>,  <26.488890, 34.563221, 35.587547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369707, 34.853451, 35.835667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943543, 0.125328, 0.306625,
		0.144739, 0.676636, -0.721952,
		-0.297954, 0.725574, 0.620295,
		26.280321, 35.071121, 36.021755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207891, 34.636856, 35.750153>,  <26.488890, 34.563221, 35.587547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207891, 34.636856, 35.750153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591047, 34.630932, 35.635452>,  <27.820942, 34.627377, 35.566631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591047, 34.630932, 35.635452>,  <27.207891, 34.636856, 35.750153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591047, 34.630932, 35.635452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250770, 0.529565, 0.810354,
		0.139855, -0.848140, 0.510979,
		0.957890, -0.014807, -0.286751,
		27.878414, 34.626492, 35.549427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617006, 34.454838, 36.380856>,  <27.207891, 34.636856, 35.750153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617006, 34.454838, 36.380856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868750, 34.658932, 36.146397>,  <28.019794, 34.781387, 36.005722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868750, 34.658932, 36.146397>,  <27.617006, 34.454838, 36.380856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868750, 34.658932, 36.146397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316833, 0.520251, 0.793067,
		0.709597, -0.684832, 0.165763,
		0.629356, 0.510239, -0.586146,
		28.057556, 34.812004, 35.970554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150614, 34.468349, 36.766068>,  <27.617006, 34.454838, 36.380856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150614, 34.468349, 36.766068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181202, 34.769196, 36.504238>,  <28.199554, 34.949703, 36.347141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181202, 34.769196, 36.504238>,  <28.150614, 34.468349, 36.766068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181202, 34.769196, 36.504238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369187, 0.588478, 0.719302,
		0.926204, -0.296665, -0.232673,
		0.076469, 0.752120, -0.654575,
		28.204144, 34.994831, 36.307865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776802, 34.723507, 36.963013>,  <28.150614, 34.468349, 36.766068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776802, 34.723507, 36.963013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565041, 35.005527, 36.774273>,  <28.437984, 35.174740, 36.661030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565041, 35.005527, 36.774273>,  <28.776802, 34.723507, 36.963013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565041, 35.005527, 36.774273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242440, 0.658714, 0.712264,
		0.812992, 0.262681, -0.519657,
		-0.529403, 0.705050, -0.471845,
		28.406219, 35.217041, 36.632721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204401, 35.412464, 36.876698>,  <28.776802, 34.723507, 36.963013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204401, 35.412464, 36.876698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813927, 35.496063, 36.853432>,  <28.579641, 35.546223, 36.839470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813927, 35.496063, 36.853432>,  <29.204401, 35.412464, 36.876698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813927, 35.496063, 36.853432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088345, 0.627873, 0.773286,
		0.198133, 0.749732, -0.631384,
		-0.976186, 0.208993, -0.058168,
		28.521070, 35.558762, 36.835983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011906, 36.217575, 36.733898>,  <29.204401, 35.412464, 36.876698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011906, 36.217575, 36.733898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726498, 36.023998, 36.936554>,  <28.555252, 35.907852, 37.058147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726498, 36.023998, 36.936554>,  <29.011906, 36.217575, 36.733898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726498, 36.023998, 36.936554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020193, 0.737023, 0.675566,
		-0.700344, 0.471799, -0.535653,
		-0.713520, -0.483946, 0.506642,
		28.512442, 35.878815, 37.088547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699932, 36.751659, 36.778339>,  <29.011906, 36.217575, 36.733898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699932, 36.751659, 36.778339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606716, 36.481548, 37.058250>,  <28.550787, 36.319481, 37.226196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606716, 36.481548, 37.058250>,  <28.699932, 36.751659, 36.778339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606716, 36.481548, 37.058250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233355, 0.737396, 0.633871,
		-0.944054, -0.015579, -0.329422,
		-0.233039, -0.675281, 0.699777,
		28.536804, 36.278965, 37.268185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921410, 36.684391, 37.102940>,  <28.699932, 36.751659, 36.778339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921410, 36.684391, 37.102940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241388, 36.633278, 37.337460>,  <28.433376, 36.602608, 37.478172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241388, 36.633278, 37.337460>,  <27.921410, 36.684391, 37.102940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241388, 36.633278, 37.337460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245309, 0.822049, 0.513866,
		-0.547636, -0.554892, 0.626250,
		0.799949, -0.127787, 0.586304,
		28.481373, 36.594940, 37.513351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581167, 36.296005, 36.483231>,  <27.921410, 36.684391, 37.102940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581167, 36.296005, 36.483231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873472, 36.060921, 36.622131>,  <28.048855, 35.919868, 36.705471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873472, 36.060921, 36.622131>,  <27.581167, 36.296005, 36.483231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873472, 36.060921, 36.622131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077535, -0.576859, -0.813155,
		0.678216, 0.567298, -0.467115,
		0.730761, -0.587713, 0.347249,
		28.092701, 35.884605, 36.726307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754650, 36.153484, 35.898434>,  <27.581167, 36.296005, 36.483231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754650, 36.153484, 35.898434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931376, 35.879955, 36.130707>,  <28.037411, 35.715839, 36.270069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931376, 35.879955, 36.130707>,  <27.754650, 36.153484, 35.898434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931376, 35.879955, 36.130707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079426, -0.614923, -0.784577,
		0.893584, 0.392757, -0.217368,
		0.441813, -0.683821, 0.580680,
		28.063919, 35.674809, 36.304913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368793, 36.057030, 35.545029>,  <27.754650, 36.153484, 35.898434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368793, 36.057030, 35.545029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287363, 35.747070, 35.784389>,  <28.238504, 35.561096, 35.928005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287363, 35.747070, 35.784389>,  <28.368793, 36.057030, 35.545029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287363, 35.747070, 35.784389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070345, -0.621201, -0.780488,
		0.976529, -0.116792, 0.180971,
		-0.203574, -0.774899, 0.598405,
		28.226292, 35.514599, 35.963909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694414, 35.538013, 35.144459>,  <28.368793, 36.057030, 35.545029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694414, 35.538013, 35.144459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499596, 35.311047, 35.410038>,  <28.382706, 35.174866, 35.569386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499596, 35.311047, 35.410038>,  <28.694414, 35.538013, 35.144459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499596, 35.311047, 35.410038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053646, -0.739339, -0.671193,
		0.871728, -0.362520, 0.329651,
		-0.487045, -0.567413, 0.663950,
		28.353481, 35.140823, 35.609222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140451, 34.926094, 35.279083>,  <28.694414, 35.538013, 35.144459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140451, 34.926094, 35.279083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755621, 34.838085, 35.343582>,  <28.524723, 34.785278, 35.382282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755621, 34.838085, 35.343582>,  <29.140451, 34.926094, 35.279083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755621, 34.838085, 35.343582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077005, -0.786126, -0.613250,
		0.261691, -0.577576, 0.773255,
		-0.962075, -0.220026, 0.161246,
		28.466999, 34.772076, 35.391956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138691, 34.300060, 35.557705>,  <29.140451, 34.926094, 35.279083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138691, 34.300060, 35.557705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815632, 34.383743, 35.337181>,  <28.621798, 34.433952, 35.204868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815632, 34.383743, 35.337181>,  <29.138691, 34.300060, 35.557705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815632, 34.383743, 35.337181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248108, -0.727589, -0.639576,
		-0.534930, -0.653334, 0.535727,
		-0.807646, 0.209210, -0.551307,
		28.573338, 34.446507, 35.171787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616171, 33.817986, 35.655937>,  <29.138691, 34.300060, 35.557705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616171, 33.817986, 35.655937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557875, 33.949020, 35.282532>,  <28.522896, 34.027641, 35.058491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557875, 33.949020, 35.282532>,  <28.616171, 33.817986, 35.655937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557875, 33.949020, 35.282532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172042, -0.920817, -0.349996,
		-0.974249, -0.211612, 0.077843,
		-0.145743, 0.327591, -0.933511,
		28.514153, 34.047298, 35.002480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149889, 33.351124, 35.375988>,  <28.616171, 33.817986, 35.655937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149889, 33.351124, 35.375988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295643, 33.563660, 35.070072>,  <28.383095, 33.691181, 34.886524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295643, 33.563660, 35.070072>,  <28.149889, 33.351124, 35.375988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295643, 33.563660, 35.070072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351466, -0.838980, -0.415432,
		-0.862377, -0.117418, -0.492462,
		0.364387, 0.531343, -0.764786,
		28.404959, 33.723061, 34.840637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861530, 33.055260, 34.734676>,  <28.149889, 33.351124, 35.375988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861530, 33.055260, 34.734676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195391, 33.257275, 34.646774>,  <28.395706, 33.378483, 34.594032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195391, 33.257275, 34.646774>,  <27.861530, 33.055260, 34.734676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195391, 33.257275, 34.646774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379770, -0.816692, -0.434499,
		-0.398914, 0.279197, -0.873451,
		0.834651, 0.505038, -0.219759,
		28.445786, 33.408787, 34.580845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113895, 33.099258, 33.948528>,  <27.861530, 33.055260, 34.734676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113895, 33.099258, 33.948528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439714, 33.125092, 34.179123>,  <28.635206, 33.140591, 34.317478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439714, 33.125092, 34.179123>,  <28.113895, 33.099258, 33.948528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439714, 33.125092, 34.179123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427930, -0.737839, -0.521987,
		0.391644, 0.671881, -0.628642,
		0.814550, 0.064581, 0.576488,
		28.684080, 33.144466, 34.352070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910202, 33.262817, 33.637829>,  <28.113895, 33.099258, 33.948528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910202, 33.262817, 33.637829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970327, 33.096889, 33.996788>,  <29.006403, 32.997334, 34.212166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970327, 33.096889, 33.996788>,  <28.910202, 33.262817, 33.637829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970327, 33.096889, 33.996788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777817, -0.510677, -0.366346,
		0.610250, 0.753081, 0.245894,
		0.150316, -0.414824, 0.897400,
		29.015423, 32.972443, 34.266006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457281, 32.736641, 33.884361>,  <28.910202, 33.262817, 33.637829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457281, 32.736641, 33.884361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504572, 33.017780, 33.603783>,  <29.532946, 33.186462, 33.435436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504572, 33.017780, 33.603783>,  <29.457281, 32.736641, 33.884361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504572, 33.017780, 33.603783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919652, -0.343930, -0.189614,
		-0.374518, -0.622670, -0.687035,
		0.118225, 0.702847, -0.701448,
		29.540039, 33.228634, 33.393349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677267, 32.431747, 33.167118>,  <29.457281, 32.736641, 33.884361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677267, 32.431747, 33.167118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809196, 32.802952, 33.236404>,  <29.888355, 33.025677, 33.277977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809196, 32.802952, 33.236404>,  <29.677267, 32.431747, 33.167118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809196, 32.802952, 33.236404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943721, -0.319326, -0.086152,
		-0.024637, 0.191886, -0.981108,
		0.329825, 0.928014, 0.173219,
		29.908144, 33.081356, 33.288372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086241, 32.598473, 32.606422>,  <29.677267, 32.431747, 33.167118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086241, 32.598473, 32.606422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170368, 32.758717, 32.963135>,  <30.220844, 32.854862, 33.177162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170368, 32.758717, 32.963135>,  <30.086241, 32.598473, 32.606422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170368, 32.758717, 32.963135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934115, -0.351474, -0.062409,
		0.288436, 0.846153, -0.448140,
		0.210317, 0.400613, 0.891782,
		30.233463, 32.878902, 33.230671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776379, 32.828762, 32.671185>,  <30.086241, 32.598473, 32.606422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776379, 32.828762, 32.671185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693539, 32.816719, 33.062328>,  <30.643835, 32.809494, 33.297012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693539, 32.816719, 33.062328>,  <30.776379, 32.828762, 32.671185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693539, 32.816719, 33.062328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918430, -0.350327, 0.183731,
		0.337038, 0.936144, 0.100202,
		-0.207102, -0.030105, 0.977856,
		30.631409, 32.807686, 33.355686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325378, 33.099098, 33.054672>,  <30.776379, 32.828762, 32.671185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325378, 33.099098, 33.054672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131584, 32.872746, 33.321522>,  <31.015308, 32.736935, 33.481632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131584, 32.872746, 33.321522>,  <31.325378, 33.099098, 33.054672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131584, 32.872746, 33.321522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873408, -0.269909, 0.405348,
		-0.049316, 0.779055, 0.625012,
		-0.484485, -0.565881, 0.667122,
		30.986238, 32.702980, 33.521660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507536, 33.392857, 33.694057>,  <31.325378, 33.099098, 33.054672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507536, 33.392857, 33.694057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382874, 33.015545, 33.739822>,  <31.308075, 32.789158, 33.767281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382874, 33.015545, 33.739822>,  <31.507536, 33.392857, 33.694057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382874, 33.015545, 33.739822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826962, -0.209961, 0.521585,
		-0.467979, 0.257172, 0.845493,
		-0.311658, -0.943281, 0.114414,
		31.289375, 32.732559, 33.774147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752451, 33.215168, 34.402325>,  <31.507536, 33.392857, 33.694057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752451, 33.215168, 34.402325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693075, 32.900021, 34.163250>,  <31.657450, 32.710934, 34.019806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693075, 32.900021, 34.163250>,  <31.752451, 33.215168, 34.402325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693075, 32.900021, 34.163250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848646, -0.411774, 0.332029,
		-0.507707, -0.457939, 0.729744,
		-0.148440, -0.787867, -0.597688,
		31.648542, 32.663662, 33.983944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112980, 32.617577, 34.375290>,  <31.752451, 33.215168, 34.402325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112980, 32.617577, 34.375290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477089, 32.475117, 34.459724>,  <32.695557, 32.389641, 34.510384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477089, 32.475117, 34.459724>,  <32.112980, 32.617577, 34.375290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477089, 32.475117, 34.459724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325167, -0.299455, 0.896991,
		-0.256253, -0.885147, -0.388395,
		0.910275, -0.356149, 0.211084,
		32.750172, 32.368271, 34.523048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924839, 32.560097, 35.151745>,  <32.112980, 32.617577, 34.375290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924839, 32.560097, 35.151745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293919, 32.411205, 35.111610>,  <32.515366, 32.321869, 35.087528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293919, 32.411205, 35.111610>,  <31.924839, 32.560097, 35.151745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293919, 32.411205, 35.111610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060320, -0.396449, 0.916073,
		-0.380753, -0.839216, -0.388258,
		0.922707, -0.372217, -0.100328,
		32.570728, 32.299534, 35.081509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971642, 31.744991, 35.184750>,  <31.924839, 32.560097, 35.151745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971642, 31.744991, 35.184750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274963, 31.965582, 35.323799>,  <32.456955, 32.097935, 35.407230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274963, 31.965582, 35.323799>,  <31.971642, 31.744991, 35.184750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274963, 31.965582, 35.323799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242833, -0.255918, 0.935702,
		0.604983, -0.793963, -0.060148,
		0.758306, 0.551478, 0.347626,
		32.502457, 32.131023, 35.428085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431408, 31.296318, 35.502460>,  <31.971642, 31.744991, 35.184750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431408, 31.296318, 35.502460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404793, 31.671915, 35.637436>,  <32.388824, 31.897274, 35.718422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404793, 31.671915, 35.637436>,  <32.431408, 31.296318, 35.502460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404793, 31.671915, 35.637436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446544, -0.330454, 0.831504,
		0.892284, -0.095359, 0.441288,
		-0.066534, 0.938993, 0.337441,
		32.384834, 31.953613, 35.738667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859528, 31.368858, 36.195324>,  <32.431408, 31.296318, 35.502460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859528, 31.368858, 36.195324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549324, 31.620045, 36.169281>,  <32.363201, 31.770756, 36.153656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549324, 31.620045, 36.169281>,  <32.859528, 31.368858, 36.195324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549324, 31.620045, 36.169281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458454, -0.489243, 0.741930,
		0.434052, 0.605227, 0.667308,
		-0.775512, 0.627966, -0.065112,
		32.316669, 31.808435, 36.149746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686436, 31.588781, 36.832233>,  <32.859528, 31.368858, 36.195324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686436, 31.588781, 36.832233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358471, 31.619450, 36.605301>,  <32.161690, 31.637852, 36.469143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358471, 31.619450, 36.605301>,  <32.686436, 31.588781, 36.832233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358471, 31.619450, 36.605301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541928, -0.423390, 0.725985,
		-0.184539, 0.902697, 0.388694,
		-0.819914, 0.076672, -0.567329,
		32.112495, 31.642450, 36.435101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182346, 31.927885, 37.255325>,  <32.686436, 31.588781, 36.832233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182346, 31.927885, 37.255325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013924, 31.690788, 36.980701>,  <31.912870, 31.548531, 36.815926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013924, 31.690788, 36.980701>,  <32.182346, 31.927885, 37.255325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013924, 31.690788, 36.980701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607746, -0.377524, 0.698656,
		-0.673317, 0.711429, -0.201279,
		-0.421056, -0.592744, -0.686561,
		31.887608, 31.512964, 36.774734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484213, 32.085236, 37.162697>,  <32.182346, 31.927885, 37.255325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484213, 32.085236, 37.162697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596783, 31.703711, 37.120670>,  <31.664324, 31.474794, 37.095455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596783, 31.703711, 37.120670>,  <31.484213, 32.085236, 37.162697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596783, 31.703711, 37.120670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687604, -0.276816, 0.671248,
		-0.669329, -0.116664, -0.733749,
		0.281424, -0.953815, -0.105063,
		31.681210, 31.417566, 37.089153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981024, 31.647581, 37.144600>,  <31.484213, 32.085236, 37.162697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981024, 31.647581, 37.144600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257143, 31.390820, 37.278133>,  <31.422815, 31.236763, 37.358253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257143, 31.390820, 37.278133>,  <30.981024, 31.647581, 37.144600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257143, 31.390820, 37.278133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471688, -0.049399, 0.880381,
		-0.548631, -0.765190, -0.336879,
		0.690300, -0.641906, 0.333830,
		31.464233, 31.198248, 37.378281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180309, 31.896126, 36.520428>,  <30.981024, 31.647581, 37.144600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180309, 31.896126, 36.520428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899204, 31.883865, 36.236122>,  <30.730541, 31.876509, 36.065540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899204, 31.883865, 36.236122>,  <31.180309, 31.896126, 36.520428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899204, 31.883865, 36.236122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252339, 0.923375, -0.289317,
		0.665169, -0.382674, -0.641179,
		-0.702762, -0.030651, -0.710764,
		30.688375, 31.874670, 36.022892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191051, 32.142067, 35.851048>,  <31.180309, 31.896126, 36.520428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191051, 32.142067, 35.851048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465115, 32.071243, 36.133667>,  <31.629553, 32.028748, 36.303238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465115, 32.071243, 36.133667>,  <31.191051, 32.142067, 35.851048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465115, 32.071243, 36.133667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691763, 0.461909, -0.555071,
		-0.228080, 0.869074, 0.438964,
		0.685159, -0.177059, 0.706546,
		31.670662, 32.018127, 36.345631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450689, 32.775620, 36.228539>,  <31.191051, 32.142067, 35.851048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450689, 32.775620, 36.228539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721340, 32.482689, 36.197887>,  <31.883730, 32.306931, 36.179497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721340, 32.482689, 36.197887>,  <31.450689, 32.775620, 36.228539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721340, 32.482689, 36.197887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508158, 0.539739, -0.671161,
		0.532872, 0.415184, 0.737340,
		0.676627, -0.732328, -0.076632,
		31.924328, 32.262989, 36.174896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065849, 33.149837, 36.198914>,  <31.450689, 32.775620, 36.228539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065849, 33.149837, 36.198914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177048, 32.787483, 36.071110>,  <32.243767, 32.570068, 35.994427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177048, 32.787483, 36.071110>,  <32.065849, 33.149837, 36.198914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177048, 32.787483, 36.071110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462415, 0.417748, -0.782086,
		0.841957, 0.069669, 0.535027,
		0.277994, -0.905888, -0.319510,
		32.260445, 32.515717, 35.975258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852188, 33.059082, 36.195560>,  <32.065849, 33.149837, 36.198914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852188, 33.059082, 36.195560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663895, 32.853546, 35.908680>,  <32.550919, 32.730225, 35.736549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663895, 32.853546, 35.908680>,  <32.852188, 33.059082, 36.195560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663895, 32.853546, 35.908680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434338, 0.572610, -0.695319,
		0.767958, -0.638820, -0.046368,
		-0.470734, -0.513836, -0.717204,
		32.522675, 32.699394, 35.693520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642197, 33.038330, 35.850605>,  <32.852188, 33.059082, 36.195560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642197, 33.038330, 35.850605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385910, 33.279289, 36.041012>,  <33.232140, 33.423866, 36.155258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385910, 33.279289, 36.041012>,  <33.642197, 33.038330, 35.850605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385910, 33.279289, 36.041012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453601, -0.797226, 0.398343,
		0.619459, 0.039301, 0.784045,
		-0.640716, 0.602401, 0.476022,
		33.193695, 33.460011, 36.183819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213425, 32.748451, 35.493317>,  <33.642197, 33.038330, 35.850605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213425, 32.748451, 35.493317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610397, 32.715069, 35.457302>,  <34.848583, 32.695038, 35.435692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610397, 32.715069, 35.457302>,  <34.213425, 32.748451, 35.493317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610397, 32.715069, 35.457302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085873, -0.052244, 0.994935,
		-0.087739, -0.995141, -0.044682,
		0.992435, -0.083458, -0.090039,
		34.908127, 32.690029, 35.430290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448334, 32.090286, 35.825245>,  <34.213425, 32.748451, 35.493317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448334, 32.090286, 35.825245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714432, 32.388775, 35.835129>,  <34.874088, 32.567867, 35.841061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714432, 32.388775, 35.835129>,  <34.448334, 32.090286, 35.825245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714432, 32.388775, 35.835129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070154, -0.095426, 0.992961,
		0.743324, -0.658826, -0.115831,
		0.665243, 0.746218, 0.024713,
		34.914005, 32.612640, 35.842545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990776, 31.878920, 36.360451>,  <34.448334, 32.090286, 35.825245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990776, 31.878920, 36.360451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062290, 32.270164, 36.317871>,  <35.105198, 32.504913, 36.292324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062290, 32.270164, 36.317871>,  <34.990776, 31.878920, 36.360451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062290, 32.270164, 36.317871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097488, 0.090048, 0.991154,
		0.979047, -0.187577, -0.079256,
		0.178781, 0.978113, -0.106448,
		35.115925, 32.563599, 36.285938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489372, 32.023834, 36.814014>,  <34.990776, 31.878920, 36.360451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489372, 32.023834, 36.814014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296288, 32.360291, 36.716476>,  <35.180435, 32.562164, 36.657951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296288, 32.360291, 36.716476>,  <35.489372, 32.023834, 36.814014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296288, 32.360291, 36.716476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306385, 0.098645, 0.946783,
		0.820436, 0.531737, 0.210097,
		-0.482714, 0.841145, -0.243849,
		35.151474, 32.612633, 36.643322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774540, 32.646412, 37.242268>,  <35.489372, 32.023834, 36.814014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774540, 32.646412, 37.242268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397305, 32.663456, 37.110348>,  <35.170963, 32.673683, 37.031197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397305, 32.663456, 37.110348>,  <35.774540, 32.646412, 37.242268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397305, 32.663456, 37.110348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332410, -0.148166, 0.931424,
		-0.009178, 0.988044, 0.153898,
		-0.943090, 0.042608, -0.329796,
		35.114376, 32.676239, 37.011410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561462, 33.017342, 37.857407>,  <35.774540, 32.646412, 37.242268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561462, 33.017342, 37.857407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292194, 33.131821, 37.584663>,  <35.130634, 33.200508, 37.421017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292194, 33.131821, 37.584663>,  <35.561462, 33.017342, 37.857407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292194, 33.131821, 37.584663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318553, 0.719900, 0.616658,
		0.667360, 0.632323, -0.393443,
		-0.673167, 0.286201, -0.681861,
		35.090244, 33.217682, 37.380104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470821, 33.746750, 38.003380>,  <35.561462, 33.017342, 37.857407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470821, 33.746750, 38.003380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171341, 33.638630, 37.761261>,  <34.991653, 33.573757, 37.615990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171341, 33.638630, 37.761261>,  <35.470821, 33.746750, 38.003380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171341, 33.638630, 37.761261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623158, 0.598412, 0.503564,
		0.226106, 0.754216, -0.616469,
		-0.748699, -0.270299, -0.605300,
		34.946732, 33.557541, 37.579670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203129, 34.345253, 37.670944>,  <35.470821, 33.746750, 38.003380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203129, 34.345253, 37.670944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929882, 34.060108, 37.734417>,  <34.765934, 33.889023, 37.772499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929882, 34.060108, 37.734417>,  <35.203129, 34.345253, 37.670944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929882, 34.060108, 37.734417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543910, 0.641605, 0.540837,
		-0.487349, 0.283151, -0.826025,
		-0.683120, -0.712859, 0.158677,
		34.724945, 33.846249, 37.782021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534103, 34.586178, 37.441368>,  <35.203129, 34.345253, 37.670944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534103, 34.586178, 37.441368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504177, 34.295879, 37.714920>,  <34.486221, 34.121700, 37.879051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504177, 34.295879, 37.714920>,  <34.534103, 34.586178, 37.441368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504177, 34.295879, 37.714920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593318, 0.583598, 0.554426,
		-0.801484, -0.364279, -0.474261,
		-0.074811, -0.725751, 0.683878,
		34.481735, 34.078156, 37.920082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853107, 34.344578, 37.562973>,  <34.534103, 34.586178, 37.441368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853107, 34.344578, 37.562973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045387, 34.256229, 37.902416>,  <34.160755, 34.203220, 38.106083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045387, 34.256229, 37.902416>,  <33.853107, 34.344578, 37.562973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045387, 34.256229, 37.902416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667520, 0.535392, 0.517467,
		-0.568633, -0.815213, 0.109929,
		0.480701, -0.220870, 0.848613,
		34.189598, 34.189968, 38.157001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830547, 33.657364, 37.746441>,  <33.853107, 34.344578, 37.562973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830547, 33.657364, 37.746441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850170, 33.470329, 38.099476>,  <33.861946, 33.358109, 38.311298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850170, 33.470329, 38.099476>,  <33.830547, 33.657364, 37.746441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850170, 33.470329, 38.099476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008968, 0.883408, 0.468518,
		-0.998756, -0.030901, 0.039147,
		0.049060, -0.467584, 0.882586,
		33.864887, 33.330055, 38.364250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849373, 32.901928, 37.823238>,  <33.830547, 33.657364, 37.746441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849373, 32.901928, 37.823238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111649, 33.202774, 37.796692>,  <34.269012, 33.383282, 37.780762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111649, 33.202774, 37.796692>,  <33.849373, 32.901928, 37.823238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111649, 33.202774, 37.796692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476299, -0.480233, -0.736556,
		-0.585845, 0.451338, -0.673112,
		0.655686, 0.752111, -0.066370,
		34.308353, 33.428406, 37.776779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911278, 32.977951, 37.146732>,  <33.849373, 32.901928, 37.823238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911278, 32.977951, 37.146732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237965, 33.174057, 37.268459>,  <34.433979, 33.291721, 37.341496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237965, 33.174057, 37.268459>,  <33.911278, 32.977951, 37.146732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237965, 33.174057, 37.268459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461176, -0.237609, -0.854903,
		-0.346822, 0.838559, -0.420159,
		0.816720, 0.490266, 0.304315,
		34.482979, 33.321136, 37.359753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083351, 33.350796, 36.560505>,  <33.911278, 32.977951, 37.146732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083351, 33.350796, 36.560505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393696, 33.324474, 36.811489>,  <34.579903, 33.308681, 36.962078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393696, 33.324474, 36.811489>,  <34.083351, 33.350796, 36.560505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393696, 33.324474, 36.811489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586837, -0.289898, -0.756030,
		0.231646, 0.954793, -0.186308,
		0.775862, -0.065799, 0.627462,
		34.626453, 33.304733, 36.999729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576401, 33.742905, 36.160374>,  <34.083351, 33.350796, 36.560505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576401, 33.742905, 36.160374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771175, 33.487865, 36.399155>,  <34.888042, 33.334843, 36.542423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771175, 33.487865, 36.399155>,  <34.576401, 33.742905, 36.160374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771175, 33.487865, 36.399155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586776, -0.267454, -0.764305,
		0.646980, 0.722448, 0.243896,
		0.486940, -0.637602, 0.596953,
		34.917259, 33.296585, 36.578239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340439, 33.834629, 36.298626>,  <34.576401, 33.742905, 36.160374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340439, 33.834629, 36.298626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263458, 33.442440, 36.282429>,  <35.217270, 33.207127, 36.272709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263458, 33.442440, 36.282429>,  <35.340439, 33.834629, 36.298626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263458, 33.442440, 36.282429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409082, -0.042654, -0.911501,
		0.891972, -0.191988, 0.409301,
		-0.192455, -0.980470, -0.040492,
		35.205723, 33.148300, 36.270283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879913, 33.480122, 35.949532>,  <35.340439, 33.834629, 36.298626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879913, 33.480122, 35.949532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574829, 33.223927, 35.913654>,  <35.391777, 33.070210, 35.892128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574829, 33.223927, 35.913654>,  <35.879913, 33.480122, 35.949532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574829, 33.223927, 35.913654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144569, -0.033668, -0.988922,
		0.630375, -0.767228, 0.118274,
		-0.762711, -0.640490, -0.089694,
		35.346016, 33.031780, 35.886745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025837, 33.177811, 35.347095>,  <35.879913, 33.480122, 35.949532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025837, 33.177811, 35.347095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637413, 33.112198, 35.416538>,  <35.404358, 33.072830, 35.458206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637413, 33.112198, 35.416538>,  <36.025837, 33.177811, 35.347095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637413, 33.112198, 35.416538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160168, -0.091996, -0.982794,
		0.177178, -0.982156, 0.063062,
		-0.971058, -0.164029, 0.173609,
		35.346096, 33.062988, 35.468620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111988, 32.845688, 34.652645>,  <36.025837, 33.177811, 35.347095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111988, 32.845688, 34.652645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735775, 32.833561, 34.787987>,  <35.510048, 32.826283, 34.869190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735775, 32.833561, 34.787987>,  <36.111988, 32.845688, 34.652645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735775, 32.833561, 34.787987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338213, -0.009789, -0.941018,
		0.031852, -0.999492, -0.001050,
		-0.940530, -0.030328, 0.338353,
		35.453617, 32.824463, 34.889492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763515, 32.315872, 34.285656>,  <36.111988, 32.845688, 34.652645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763515, 32.315872, 34.285656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503124, 32.600285, 34.391983>,  <35.346889, 32.770931, 34.455780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503124, 32.600285, 34.391983>,  <35.763515, 32.315872, 34.285656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503124, 32.600285, 34.391983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357997, 0.021217, -0.933482,
		-0.669378, -0.702836, 0.240736,
		-0.650977, 0.711035, 0.265815,
		35.307831, 32.813595, 34.471729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095554, 32.058098, 34.106575>,  <35.763515, 32.315872, 34.285656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095554, 32.058098, 34.106575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036678, 32.451252, 34.150879>,  <35.001350, 32.687145, 34.177460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036678, 32.451252, 34.150879>,  <35.095554, 32.058098, 34.106575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036678, 32.451252, 34.150879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536606, 0.014713, -0.843705,
		-0.830896, -0.183622, 0.525257,
		-0.147195, 0.982887, 0.110757,
		34.992519, 32.746117, 34.184105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388966, 32.213871, 33.820103>,  <35.095554, 32.058098, 34.106575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388966, 32.213871, 33.820103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596371, 32.555447, 33.837692>,  <34.720814, 32.760391, 33.848248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596371, 32.555447, 33.837692>,  <34.388966, 32.213871, 33.820103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596371, 32.555447, 33.837692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304824, 0.232655, -0.923555,
		-0.798889, 0.465472, 0.380935,
		0.518515, 0.853937, 0.043979,
		34.751926, 32.811626, 33.850887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926991, 32.721573, 33.664406>,  <34.388966, 32.213871, 33.820103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926991, 32.721573, 33.664406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272671, 32.909710, 33.592915>,  <34.480080, 33.022591, 33.550018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272671, 32.909710, 33.592915>,  <33.926991, 32.721573, 33.664406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272671, 32.909710, 33.592915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360161, 0.330201, -0.872497,
		-0.351352, 0.818382, 0.454756,
		0.864197, 0.470339, -0.178732,
		34.531929, 33.050812, 33.539295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737968, 33.432438, 33.367134>,  <33.926991, 32.721573, 33.664406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737968, 33.432438, 33.367134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103207, 33.314831, 33.254128>,  <34.322350, 33.244267, 33.186325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103207, 33.314831, 33.254128>,  <33.737968, 33.432438, 33.367134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103207, 33.314831, 33.254128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169029, 0.357588, -0.918455,
		0.371063, 0.886389, 0.276815,
		0.913094, -0.294015, -0.282513,
		34.377136, 33.226627, 33.169373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921013, 34.049171, 33.049461>,  <33.737968, 33.432438, 33.367134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921013, 34.049171, 33.049461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139866, 33.731438, 32.943867>,  <34.271179, 33.540798, 32.880512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139866, 33.731438, 32.943867>,  <33.921013, 34.049171, 33.049461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139866, 33.731438, 32.943867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003611, 0.313130, -0.949703,
		0.837039, 0.520566, 0.168455,
		0.547131, -0.794330, -0.263982,
		34.304005, 33.493137, 32.864674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412231, 34.362110, 32.735813>,  <33.921013, 34.049171, 33.049461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412231, 34.362110, 32.735813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449669, 33.996353, 32.578266>,  <34.472130, 33.776901, 32.483738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449669, 33.996353, 32.578266>,  <34.412231, 34.362110, 32.735813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449669, 33.996353, 32.578266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108808, 0.383840, -0.916966,
		0.989647, 0.128677, -0.063568,
		0.093592, -0.914390, -0.393868,
		34.477745, 33.722034, 32.460106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810940, 34.465908, 32.137684>,  <34.412231, 34.362110, 32.735813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810940, 34.465908, 32.137684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631546, 34.110680, 32.097317>,  <34.523911, 33.897541, 32.073097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631546, 34.110680, 32.097317>,  <34.810940, 34.465908, 32.137684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631546, 34.110680, 32.097317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047270, 0.089183, -0.994893,
		0.892538, -0.450968, 0.001982,
		-0.448488, -0.888073, -0.100916,
		34.496998, 33.844257, 32.067043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182911, 34.042725, 31.604895>,  <34.810940, 34.465908, 32.137684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182911, 34.042725, 31.604895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824245, 33.868435, 31.636232>,  <34.609047, 33.763863, 31.655035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824245, 33.868435, 31.636232>,  <35.182911, 34.042725, 31.604895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824245, 33.868435, 31.636232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039959, -0.096590, -0.994522,
		0.440902, -0.894884, 0.069198,
		-0.896665, -0.435721, 0.078346,
		34.555244, 33.737720, 31.659737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199593, 33.309380, 31.218784>,  <35.182911, 34.042725, 31.604895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199593, 33.309380, 31.218784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839054, 33.480446, 31.246136>,  <34.622730, 33.583084, 31.262547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839054, 33.480446, 31.246136>,  <35.199593, 33.309380, 31.218784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839054, 33.480446, 31.246136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105056, -0.062731, -0.992486,
		-0.420159, -0.901759, 0.101471,
		-0.901348, 0.427662, 0.068379,
		34.568649, 33.608746, 31.266649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888145, 32.970039, 30.696037>,  <35.199593, 33.309380, 31.218784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888145, 32.970039, 30.696037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670029, 33.295887, 30.775082>,  <34.539158, 33.491398, 30.822508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670029, 33.295887, 30.775082>,  <34.888145, 32.970039, 30.696037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670029, 33.295887, 30.775082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065753, 0.193451, -0.978904,
		-0.835665, -0.546780, -0.051922,
		-0.545289, 0.814622, 0.197613,
		34.506443, 33.540272, 30.834366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246815, 32.941929, 30.349787>,  <34.888145, 32.970039, 30.696037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246815, 32.941929, 30.349787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323566, 33.331310, 30.399696>,  <34.369617, 33.564938, 30.429642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323566, 33.331310, 30.399696>,  <34.246815, 32.941929, 30.349787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323566, 33.331310, 30.399696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045038, 0.135739, -0.989721,
		-0.980384, 0.184292, 0.069888,
		0.191884, 0.973453, 0.124776,
		34.381130, 33.623344, 30.437130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009865, 33.230373, 29.707384>,  <34.246815, 32.941929, 30.349787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009865, 33.230373, 29.707384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195572, 33.558704, 29.840473>,  <34.306995, 33.755703, 29.920326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195572, 33.558704, 29.840473>,  <34.009865, 33.230373, 29.707384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195572, 33.558704, 29.840473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050109, 0.350717, -0.935140,
		-0.884278, 0.450824, 0.121694,
		0.464264, 0.820826, 0.332722,
		34.334850, 33.804951, 29.940290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652470, 33.723507, 29.275803>,  <34.009865, 33.230373, 29.707384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652470, 33.723507, 29.275803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973171, 33.895451, 29.441891>,  <34.165592, 33.998615, 29.541544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973171, 33.895451, 29.441891>,  <33.652470, 33.723507, 29.275803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973171, 33.895451, 29.441891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180462, 0.488200, -0.853870,
		-0.569752, 0.759528, 0.313846,
		0.801758, 0.429857, 0.415219,
		34.213699, 34.024406, 29.566456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537109, 34.565140, 29.298393>,  <33.652470, 33.723507, 29.275803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537109, 34.565140, 29.298393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927792, 34.480274, 29.285532>,  <34.162201, 34.429356, 29.277815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927792, 34.480274, 29.285532>,  <33.537109, 34.565140, 29.298393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927792, 34.480274, 29.285532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126949, 0.692103, -0.710547,
		0.173001, 0.689914, 0.702915,
		0.976706, -0.212160, -0.032151,
		34.220802, 34.416626, 29.275887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850143, 35.172245, 29.260220>,  <33.537109, 34.565140, 29.298393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850143, 35.172245, 29.260220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119068, 34.907722, 29.127148>,  <34.280422, 34.749008, 29.047304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119068, 34.907722, 29.127148>,  <33.850143, 35.172245, 29.260220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119068, 34.907722, 29.127148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180865, 0.582522, -0.792437,
		0.717833, 0.472595, 0.511243,
		0.672312, -0.661303, -0.332678,
		34.320763, 34.709332, 29.027344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247509, 35.642193, 28.980396>,  <33.850143, 35.172245, 29.260220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247509, 35.642193, 28.980396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405533, 35.301033, 28.843874>,  <34.500347, 35.096336, 28.761961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405533, 35.301033, 28.843874>,  <34.247509, 35.642193, 28.980396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405533, 35.301033, 28.843874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187380, 0.438532, -0.878965,
		0.899342, 0.283291, 0.333063,
		0.395061, -0.852899, -0.341307,
		34.524052, 35.045162, 28.741482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910206, 35.843399, 28.703518>,  <34.247509, 35.642193, 28.980396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910206, 35.843399, 28.703518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799679, 35.507038, 28.517384>,  <34.733360, 35.305222, 28.405703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799679, 35.507038, 28.517384>,  <34.910206, 35.843399, 28.703518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799679, 35.507038, 28.517384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020234, 0.489169, -0.871954,
		0.960853, -0.231523, -0.152182,
		-0.276320, -0.840899, -0.465334,
		34.716782, 35.254768, 28.377783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365376, 35.691444, 28.162966>,  <34.910206, 35.843399, 28.703518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365376, 35.691444, 28.162966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035141, 35.486958, 28.067421>,  <34.836998, 35.364265, 28.010094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035141, 35.486958, 28.067421>,  <35.365376, 35.691444, 28.162966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035141, 35.486958, 28.067421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117600, 0.258130, -0.958926,
		0.551879, -0.819770, -0.152990,
		-0.825590, -0.511219, -0.238862,
		34.787464, 35.333591, 27.995762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565659, 35.146957, 27.546988>,  <35.365376, 35.691444, 28.162966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565659, 35.146957, 27.546988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167362, 35.183613, 27.542856>,  <34.928387, 35.205605, 27.540377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167362, 35.183613, 27.542856>,  <35.565659, 35.146957, 27.546988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167362, 35.183613, 27.542856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035431, 0.276757, -0.960287,
		-0.085143, -0.956560, -0.278824,
		-0.995739, 0.091641, -0.010328,
		34.868641, 35.211105, 27.539759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195370, 34.753609, 26.921124>,  <35.565659, 35.146957, 27.546988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195370, 34.753609, 26.921124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952923, 35.050049, 27.036636>,  <34.807457, 35.227913, 27.105944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952923, 35.050049, 27.036636>,  <35.195370, 34.753609, 26.921124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952923, 35.050049, 27.036636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088182, 0.298221, -0.950415,
		-0.790474, -0.601525, -0.115404,
		-0.606115, 0.741102, 0.288780,
		34.771088, 35.272381, 27.123270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641174, 34.716202, 26.411598>,  <35.195370, 34.753609, 26.921124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641174, 34.716202, 26.411598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617420, 35.084812, 26.565102>,  <34.603168, 35.305977, 26.657204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617420, 35.084812, 26.565102>,  <34.641174, 34.716202, 26.411598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617420, 35.084812, 26.565102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070555, 0.379601, -0.922456,
		-0.995739, -0.081858, 0.042475,
		-0.059387, 0.921522, 0.383758,
		34.599606, 35.361267, 26.680229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299793, 35.075863, 25.971088>,  <34.641174, 34.716202, 26.411598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299793, 35.075863, 25.971088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394646, 35.392410, 26.196478>,  <34.451557, 35.582340, 26.331711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394646, 35.392410, 26.196478>,  <34.299793, 35.075863, 25.971088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394646, 35.392410, 26.196478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186462, 0.606308, -0.773061,
		-0.953416, 0.078249, 0.291334,
		0.237130, 0.791371, 0.563473,
		34.465786, 35.629822, 26.365520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738022, 35.606606, 25.799219>,  <34.299793, 35.075863, 25.971088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738022, 35.606606, 25.799219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066406, 35.782875, 25.944448>,  <34.263439, 35.888638, 26.031586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066406, 35.782875, 25.944448>,  <33.738022, 35.606606, 25.799219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066406, 35.782875, 25.944448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035969, 0.674528, -0.737372,
		-0.569847, 0.592296, 0.569614,
		0.820963, 0.440678, 0.363073,
		34.312695, 35.915077, 26.053370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508408, 36.268002, 25.717974>,  <33.738022, 35.606606, 25.799219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508408, 36.268002, 25.717974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906933, 36.254745, 25.749641>,  <34.146046, 36.246792, 25.768642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906933, 36.254745, 25.749641>,  <33.508408, 36.268002, 25.717974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906933, 36.254745, 25.749641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084144, 0.559015, -0.824877,
		-0.016920, 0.828495, 0.559741,
		0.996310, -0.033142, 0.079171,
		34.205826, 36.244804, 25.773392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770855, 36.918316, 25.686066>,  <33.508408, 36.268002, 25.717974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770855, 36.918316, 25.686066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071480, 36.678333, 25.576374>,  <34.251854, 36.534344, 25.510559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071480, 36.678333, 25.576374>,  <33.770855, 36.918316, 25.686066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071480, 36.678333, 25.576374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183240, 0.589231, -0.786911,
		0.633696, 0.541166, 0.552782,
		0.751567, -0.599954, -0.274230,
		34.296951, 36.498348, 25.494104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355236, 37.361046, 25.561563>,  <33.770855, 36.918316, 25.686066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355236, 37.361046, 25.561563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449291, 37.014919, 25.384502>,  <34.505726, 36.807243, 25.278265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449291, 37.014919, 25.384502>,  <34.355236, 37.361046, 25.561563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449291, 37.014919, 25.384502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174445, 0.485599, -0.856599,
		0.956179, 0.124200, 0.265133,
		0.235138, -0.865314, -0.442654,
		34.519833, 36.755325, 25.251707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028240, 37.422112, 25.132841>,  <34.355236, 37.361046, 25.561563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028240, 37.422112, 25.132841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839828, 37.099293, 24.990396>,  <34.726784, 36.905602, 24.904930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839828, 37.099293, 24.990396>,  <35.028240, 37.422112, 25.132841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839828, 37.099293, 24.990396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242331, 0.269785, -0.931929,
		0.848181, -0.525259, 0.068496,
		-0.471025, -0.807043, -0.356113,
		34.698521, 36.857182, 24.883562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475460, 37.134602, 24.667471>,  <35.028240, 37.422112, 25.132841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475460, 37.134602, 24.667471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106827, 37.025120, 24.557360>,  <34.885647, 36.959431, 24.491293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106827, 37.025120, 24.557360>,  <35.475460, 37.134602, 24.667471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106827, 37.025120, 24.557360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146675, 0.411042, -0.899739,
		0.359406, -0.869560, -0.338664,
		-0.921582, -0.273698, -0.275274,
		34.830353, 36.943008, 24.474777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681026, 36.980179, 24.036484>,  <35.475460, 37.134602, 24.667471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681026, 36.980179, 24.036484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284077, 37.028675, 24.045424>,  <35.045906, 37.057774, 24.050787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284077, 37.028675, 24.045424>,  <35.681026, 36.980179, 24.036484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284077, 37.028675, 24.045424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032350, 0.431025, -0.901760,
		-0.118959, -0.894158, -0.431659,
		-0.992372, 0.121236, 0.022348,
		34.986366, 37.065044, 24.052128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456573, 37.021729, 23.346193>,  <35.681026, 36.980179, 24.036484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456573, 37.021729, 23.346193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137749, 37.200306, 23.508865>,  <34.946453, 37.307453, 23.606468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137749, 37.200306, 23.508865>,  <35.456573, 37.021729, 23.346193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137749, 37.200306, 23.508865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069911, 0.600678, -0.796429,
		-0.599841, -0.663232, -0.447564,
		-0.797059, 0.446441, 0.406679,
		34.898632, 37.334240, 23.630869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036110, 37.227753, 22.792683>,  <35.456573, 37.021729, 23.346193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036110, 37.227753, 22.792683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904903, 37.489559, 23.065155>,  <34.826180, 37.646645, 23.228638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904903, 37.489559, 23.065155>,  <35.036110, 37.227753, 22.792683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904903, 37.489559, 23.065155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221379, 0.647736, -0.728992,
		-0.918365, -0.389923, -0.067573,
		-0.328021, 0.654521, 0.681179,
		34.806496, 37.685917, 23.269508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397011, 37.551067, 22.491325>,  <35.036110, 37.227753, 22.792683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397011, 37.551067, 22.491325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526096, 37.780060, 22.792820>,  <34.603546, 37.917454, 22.973717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526096, 37.780060, 22.792820>,  <34.397011, 37.551067, 22.491325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526096, 37.780060, 22.792820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049423, 0.805450, -0.590600,
		-0.945205, 0.153343, 0.288224,
		0.322715, 0.572482, 0.753737,
		34.622910, 37.951805, 23.018942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973354, 38.121925, 22.522530>,  <34.397011, 37.551067, 22.491325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973354, 38.121925, 22.522530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311264, 38.235004, 22.704269>,  <34.514011, 38.302853, 22.813313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311264, 38.235004, 22.704269>,  <33.973354, 38.121925, 22.522530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311264, 38.235004, 22.704269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081444, 0.907097, -0.412967,
		-0.528884, 0.311861, 0.789319,
		0.844777, 0.282697, 0.454350,
		34.564697, 38.319813, 22.840574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814754, 38.771107, 22.687782>,  <33.973354, 38.121925, 22.522530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814754, 38.771107, 22.687782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213966, 38.747257, 22.680050>,  <34.453495, 38.732948, 22.675409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213966, 38.747257, 22.680050>,  <33.814754, 38.771107, 22.687782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213966, 38.747257, 22.680050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037354, 0.813427, -0.580467,
		0.050337, 0.578603, 0.814054,
		0.998034, -0.059628, -0.019332,
		34.513378, 38.729370, 22.674250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031467, 39.321869, 22.975000>,  <33.814754, 38.771107, 22.687782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031467, 39.321869, 22.975000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350269, 39.217941, 22.756907>,  <34.541550, 39.155586, 22.626051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350269, 39.217941, 22.756907>,  <34.031467, 39.321869, 22.975000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350269, 39.217941, 22.756907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013061, 0.909948, -0.414518,
		0.603832, 0.323251, 0.728626,
		0.797004, -0.259816, -0.545234,
		34.589371, 39.139996, 22.593336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412701, 39.927376, 22.951223>,  <34.031467, 39.321869, 22.975000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412701, 39.927376, 22.951223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563087, 39.705467, 22.654341>,  <34.653320, 39.572323, 22.476212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563087, 39.705467, 22.654341>,  <34.412701, 39.927376, 22.951223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563087, 39.705467, 22.654341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142321, 0.826042, -0.545343,
		0.915637, 0.099400, 0.389522,
		0.375969, -0.554773, -0.742209,
		34.675877, 39.539036, 22.431679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041107, 40.225445, 22.665674>,  <34.412701, 39.927376, 22.951223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041107, 40.225445, 22.665674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911720, 39.979820, 22.377705>,  <34.834087, 39.832443, 22.204924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911720, 39.979820, 22.377705>,  <35.041107, 40.225445, 22.665674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911720, 39.979820, 22.377705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368274, 0.619139, -0.693571,
		0.871631, -0.489480, 0.025870,
		-0.323472, -0.614065, -0.719924,
		34.814678, 39.795601, 22.161728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646011, 40.112095, 22.176146>,  <35.041107, 40.225445, 22.665674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646011, 40.112095, 22.176146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320755, 40.004734, 21.969551>,  <35.125599, 39.940319, 21.845594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320755, 40.004734, 21.969551>,  <35.646011, 40.112095, 22.176146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320755, 40.004734, 21.969551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273903, 0.606507, -0.746409,
		0.513589, -0.748405, -0.419662,
		-0.813144, -0.268401, -0.516486,
		35.076813, 39.924213, 21.814606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834808, 40.140976, 21.427620>,  <35.646011, 40.112095, 22.176146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834808, 40.140976, 21.427620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434834, 40.143608, 21.431326>,  <35.194847, 40.145187, 21.433550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434834, 40.143608, 21.431326>,  <35.834808, 40.140976, 21.427620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434834, 40.143608, 21.431326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001902, 0.707021, -0.707190,
		-0.011201, -0.707162, -0.706963,
		-0.999935, 0.006576, 0.009264,
		35.134853, 40.145580, 21.434105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709915, 40.118572, 20.694962>,  <35.834808, 40.140976, 21.427620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709915, 40.118572, 20.694962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395596, 40.260563, 20.897551>,  <35.207005, 40.345757, 21.019104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395596, 40.260563, 20.897551>,  <35.709915, 40.118572, 20.694962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395596, 40.260563, 20.897551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122975, 0.712864, -0.690436,
		-0.606137, -0.604825, -0.516512,
		-0.785796, 0.354981, 0.506471,
		35.159855, 40.367058, 21.049492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213100, 40.297829, 20.131823>,  <35.709915, 40.118572, 20.694962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213100, 40.297829, 20.131823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083939, 40.507458, 20.447058>,  <35.006443, 40.633236, 20.636198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083939, 40.507458, 20.447058>,  <35.213100, 40.297829, 20.131823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083939, 40.507458, 20.447058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100321, 0.809048, -0.579117,
		-0.941100, -0.266061, -0.208669,
		-0.322904, 0.524073, 0.788087,
		34.987068, 40.664680, 20.683483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591274, 40.708767, 19.891466>,  <35.213100, 40.297829, 20.131823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591274, 40.708767, 19.891466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758171, 40.885880, 20.208920>,  <34.858311, 40.992146, 20.399391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758171, 40.885880, 20.208920>,  <34.591274, 40.708767, 19.891466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758171, 40.885880, 20.208920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001499, 0.872944, -0.487817,
		-0.908794, 0.204728, 0.363566,
		0.417243, 0.442780, 0.793633,
		34.883343, 41.018715, 20.447010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306011, 41.443409, 19.982302>,  <34.591274, 40.708767, 19.891466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306011, 41.443409, 19.982302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656635, 41.420940, 20.173502>,  <34.867008, 41.407459, 20.288223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656635, 41.420940, 20.173502>,  <34.306011, 41.443409, 19.982302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656635, 41.420940, 20.173502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248754, 0.903104, -0.350035,
		-0.412024, 0.425732, 0.805598,
		0.876560, -0.056173, 0.478003,
		34.919605, 41.404087, 20.316902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547661, 42.019775, 20.419954>,  <34.306011, 41.443409, 19.982302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547661, 42.019775, 20.419954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806660, 41.794140, 20.214996>,  <34.962059, 41.658756, 20.092022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806660, 41.794140, 20.214996>,  <34.547661, 42.019775, 20.419954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806660, 41.794140, 20.214996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178436, 0.765905, -0.617698,
		0.740884, 0.308527, 0.596575,
		0.647496, -0.564093, -0.512395,
		35.000908, 41.624912, 20.061277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112263, 42.453175, 20.344576>,  <34.547661, 42.019775, 20.419954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112263, 42.453175, 20.344576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218185, 42.184727, 20.067598>,  <35.281738, 42.023659, 19.901411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218185, 42.184727, 20.067598>,  <35.112263, 42.453175, 20.344576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218185, 42.184727, 20.067598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283889, 0.631998, -0.721100,
		0.921566, 0.387530, -0.023165,
		0.264807, -0.671118, -0.692443,
		35.297626, 41.983391, 19.859865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955753, 42.966129, 19.844093>,  <35.112263, 42.453175, 20.344576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955753, 42.966129, 19.844093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746441, 43.286892, 19.728764>,  <34.620853, 43.479347, 19.659567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746441, 43.286892, 19.728764>,  <34.955753, 42.966129, 19.844093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746441, 43.286892, 19.728764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547905, 0.575740, 0.606897,
		0.652672, 0.159603, -0.740639,
		-0.523278, 0.801904, -0.288322,
		34.589458, 43.527462, 19.642267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408546, 43.423023, 19.520960>,  <34.955753, 42.966129, 19.844093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408546, 43.423023, 19.520960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087669, 43.590450, 19.691273>,  <34.895142, 43.690907, 19.793461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087669, 43.590450, 19.691273>,  <35.408546, 43.423023, 19.520960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087669, 43.590450, 19.691273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593104, 0.476614, 0.648897,
		0.068674, 0.773072, -0.630590,
		-0.802192, 0.418568, 0.425781,
		34.847012, 43.716022, 19.819008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916782, 43.356384, 19.966709>,  <35.408546, 43.423023, 19.520960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916782, 43.356384, 19.966709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676205, 43.231350, 20.260798>,  <35.531857, 43.156330, 20.437250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676205, 43.231350, 20.260798>,  <35.916782, 43.356384, 19.966709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676205, 43.231350, 20.260798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773185, 0.003908, 0.634169,
		-0.201108, 0.949880, 0.239339,
		-0.601449, -0.312589, 0.735219,
		35.495770, 43.137573, 20.481363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798981, 43.812279, 20.486361>,  <35.916782, 43.356384, 19.966709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798981, 43.812279, 20.486361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763714, 43.440796, 20.630432>,  <35.742554, 43.217907, 20.716875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763714, 43.440796, 20.630432>,  <35.798981, 43.812279, 20.486361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763714, 43.440796, 20.630432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859707, 0.111692, 0.498427,
		-0.503122, 0.353591, 0.788569,
		-0.088163, -0.928708, 0.360179,
		35.737267, 43.162182, 20.738485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681477, 43.740601, 21.290810>,  <35.798981, 43.812279, 20.486361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681477, 43.740601, 21.290810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836464, 43.384998, 21.193209>,  <35.929455, 43.171638, 21.134647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836464, 43.384998, 21.193209>,  <35.681477, 43.740601, 21.290810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836464, 43.384998, 21.193209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711250, 0.119883, 0.692641,
		-0.586511, -0.441921, 0.678756,
		0.387464, -0.889007, -0.244004,
		35.952702, 43.118298, 21.120007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116528, 43.973019, 21.603687>,  <35.681477, 43.740601, 21.290810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116528, 43.973019, 21.603687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001156, 43.684029, 21.352341>,  <34.931931, 43.510635, 21.201532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001156, 43.684029, 21.352341>,  <35.116528, 43.973019, 21.603687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001156, 43.684029, 21.352341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596747, -0.377579, 0.708045,
		-0.748799, 0.579198, -0.322226,
		-0.288433, -0.722470, -0.628366,
		34.914627, 43.467289, 21.163832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392986, 43.926289, 21.679554>,  <35.116528, 43.973019, 21.603687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392986, 43.926289, 21.679554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538521, 43.573002, 21.561197>,  <34.625843, 43.361031, 21.490183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538521, 43.573002, 21.561197>,  <34.392986, 43.926289, 21.679554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538521, 43.573002, 21.561197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619271, -0.466657, 0.631455,
		-0.695790, -0.046512, -0.716738,
		0.363841, -0.883214, -0.295891,
		34.647675, 43.308037, 21.472429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864513, 43.514877, 21.766939>,  <34.392986, 43.926289, 21.679554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864513, 43.514877, 21.766939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160984, 43.249973, 21.722988>,  <34.338867, 43.091030, 21.696617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160984, 43.249973, 21.722988>,  <33.864513, 43.514877, 21.766939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160984, 43.249973, 21.722988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331490, -0.503378, 0.797951,
		-0.583761, -0.554996, -0.592623,
		0.741173, -0.662261, -0.109877,
		34.383335, 43.051296, 21.690025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534515, 42.848373, 21.796318>,  <33.864513, 43.514877, 21.766939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534515, 42.848373, 21.796318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925838, 42.793922, 21.858768>,  <34.160633, 42.761253, 21.896238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925838, 42.793922, 21.858768>,  <33.534515, 42.848373, 21.796318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925838, 42.793922, 21.858768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201766, -0.455760, 0.866933,
		-0.046856, -0.879632, -0.473341,
		0.978312, -0.136126, 0.156125,
		34.219334, 42.753086, 21.905605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602203, 42.091541, 21.992289>,  <33.534515, 42.848373, 21.796318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602203, 42.091541, 21.992289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955654, 42.239635, 22.106916>,  <34.167725, 42.328491, 22.175694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955654, 42.239635, 22.106916>,  <33.602203, 42.091541, 21.992289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955654, 42.239635, 22.106916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095765, -0.456212, 0.884703,
		0.458286, -0.809194, -0.367667,
		0.883631, 0.370238, 0.286568,
		34.220745, 42.350708, 22.192886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910381, 41.563725, 22.307192>,  <33.602203, 42.091541, 21.992289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910381, 41.563725, 22.307192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100994, 41.889359, 22.439972>,  <34.215363, 42.084740, 22.519640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100994, 41.889359, 22.439972>,  <33.910381, 41.563725, 22.307192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100994, 41.889359, 22.439972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025017, -0.389978, 0.920484,
		0.878804, -0.430331, -0.206201,
		0.476527, 0.814083, 0.331949,
		34.243954, 42.133583, 22.539557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486801, 41.296532, 22.703716>,  <33.910381, 41.563725, 22.307192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486801, 41.296532, 22.703716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363956, 41.656063, 22.828806>,  <34.290249, 41.871780, 22.903860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363956, 41.656063, 22.828806>,  <34.486801, 41.296532, 22.703716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363956, 41.656063, 22.828806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163005, -0.373428, 0.913225,
		0.937610, 0.229486, 0.261197,
		-0.307111, 0.898825, 0.312722,
		34.271824, 41.925713, 22.922623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920723, 41.485909, 23.365595>,  <34.486801, 41.296532, 22.703716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920723, 41.485909, 23.365595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600163, 41.724899, 23.376749>,  <34.407825, 41.868294, 23.383442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600163, 41.724899, 23.376749>,  <34.920723, 41.485909, 23.365595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600163, 41.724899, 23.376749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170771, -0.273244, 0.946665,
		0.573226, 0.753899, 0.321010,
		-0.801404, 0.597472, 0.027886,
		34.359741, 41.904140, 23.385115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940437, 41.942268, 23.960224>,  <34.920723, 41.485909, 23.365595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940437, 41.942268, 23.960224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551201, 41.935268, 23.868322>,  <34.317657, 41.931068, 23.813181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551201, 41.935268, 23.868322>,  <34.940437, 41.942268, 23.960224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551201, 41.935268, 23.868322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222103, -0.194274, 0.955473,
		-0.061359, 0.980791, 0.185158,
		-0.973091, -0.017502, -0.229757,
		34.259274, 41.930019, 23.799395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686562, 42.319359, 24.548401>,  <34.940437, 41.942268, 23.960224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686562, 42.319359, 24.548401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370613, 42.123501, 24.400694>,  <34.181046, 42.005985, 24.312069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370613, 42.123501, 24.400694>,  <34.686562, 42.319359, 24.548401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370613, 42.123501, 24.400694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325658, -0.175344, 0.929086,
		-0.519669, 0.854111, -0.020957,
		-0.789868, -0.489642, -0.369269,
		34.133652, 41.976608, 24.289913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063671, 42.509903, 24.972101>,  <34.686562, 42.319359, 24.548401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063671, 42.509903, 24.972101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986763, 42.160736, 24.792746>,  <33.940620, 41.951237, 24.685133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986763, 42.160736, 24.792746>,  <34.063671, 42.509903, 24.972101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986763, 42.160736, 24.792746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033849, -0.462541, 0.885951,
		-0.980759, 0.155160, 0.118478,
		-0.192266, -0.872915, -0.448389,
		33.929085, 41.898861, 24.658228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516243, 42.130104, 25.274090>,  <34.063671, 42.509903, 24.972101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516243, 42.130104, 25.274090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713631, 41.836071, 25.088127>,  <33.832062, 41.659653, 24.976549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713631, 41.836071, 25.088127>,  <33.516243, 42.130104, 25.274090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713631, 41.836071, 25.088127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064322, -0.502217, 0.862346,
		-0.867381, -0.455445, -0.200547,
		0.493470, -0.735083, -0.464908,
		33.861671, 41.615547, 24.948654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237106, 41.447765, 25.692400>,  <33.516243, 42.130104, 25.274090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237106, 41.447765, 25.692400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559345, 41.333382, 25.484850>,  <33.752689, 41.264751, 25.360319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559345, 41.333382, 25.484850>,  <33.237106, 41.447765, 25.692400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559345, 41.333382, 25.484850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131352, -0.767798, 0.627083,
		-0.577713, -0.573334, -0.580979,
		0.805602, -0.285961, -0.518875,
		33.801025, 41.247593, 25.329187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176357, 40.734001, 25.618324>,  <33.237106, 41.447765, 25.692400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176357, 40.734001, 25.618324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567204, 40.785484, 25.550589>,  <33.801712, 40.816376, 25.509947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567204, 40.785484, 25.550589>,  <33.176357, 40.734001, 25.618324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567204, 40.785484, 25.550589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206982, -0.758785, 0.617579,
		-0.049003, -0.638497, -0.768063,
		0.977117, 0.128712, -0.169340,
		33.860340, 40.824097, 25.499786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482990, 40.046261, 25.547424>,  <33.176357, 40.734001, 25.618324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482990, 40.046261, 25.547424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757942, 40.318108, 25.649897>,  <33.922913, 40.481216, 25.711380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757942, 40.318108, 25.649897>,  <33.482990, 40.046261, 25.547424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757942, 40.318108, 25.649897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386269, -0.640774, 0.663480,
		0.615068, -0.357106, -0.702969,
		0.687377, 0.679621, 0.256181,
		33.964157, 40.521996, 25.726751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083729, 39.633572, 25.564703>,  <33.482990, 40.046261, 25.547424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083729, 39.633572, 25.564703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157764, 39.958714, 25.785614>,  <34.202187, 40.153797, 25.918161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157764, 39.958714, 25.785614>,  <34.083729, 39.633572, 25.564703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157764, 39.958714, 25.785614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322922, -0.581089, 0.747032,
		0.928150, 0.040073, -0.370043,
		0.185092, 0.812853, 0.552278,
		34.213291, 40.202568, 25.951298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812958, 39.550236, 25.890894>,  <34.083729, 39.633572, 25.564703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812958, 39.550236, 25.890894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587799, 39.796055, 26.111973>,  <34.452702, 39.943546, 26.244621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587799, 39.796055, 26.111973>,  <34.812958, 39.550236, 25.890894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587799, 39.796055, 26.111973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341250, -0.436246, 0.832609,
		0.752791, 0.657283, 0.035848,
		-0.562898, 0.614548, 0.552699,
		34.418930, 39.980419, 26.277782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979809, 39.422478, 26.523170>,  <34.812958, 39.550236, 25.890894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979809, 39.422478, 26.523170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685608, 39.671173, 26.630856>,  <34.509087, 39.820389, 26.695467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685608, 39.671173, 26.630856>,  <34.979809, 39.422478, 26.523170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685608, 39.671173, 26.630856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046826, -0.443045, 0.895276,
		0.675900, 0.645873, 0.354975,
		-0.735504, 0.621739, 0.269211,
		34.464958, 39.857697, 26.711618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227688, 39.528690, 27.238527>,  <34.979809, 39.422478, 26.523170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227688, 39.528690, 27.238527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835659, 39.607079, 27.225534>,  <34.600441, 39.654114, 27.217739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835659, 39.607079, 27.225534>,  <35.227688, 39.528690, 27.238527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835659, 39.607079, 27.225534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114501, -0.423701, 0.898536,
		0.162328, 0.884348, 0.437696,
		-0.980071, 0.195975, -0.032480,
		34.541637, 39.665871, 27.215790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926933, 39.843609, 27.805441>,  <35.227688, 39.528690, 27.238527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926933, 39.843609, 27.805441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588696, 39.692383, 27.654686>,  <34.385754, 39.601646, 27.564232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588696, 39.692383, 27.654686>,  <34.926933, 39.843609, 27.805441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588696, 39.692383, 27.654686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235169, -0.369996, 0.898776,
		-0.479242, 0.848629, 0.223956,
		-0.845590, -0.378063, -0.376889,
		34.335018, 39.578964, 27.541618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407227, 40.010178, 28.273012>,  <34.926933, 39.843609, 27.805441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407227, 40.010178, 28.273012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230953, 39.716656, 28.066198>,  <34.125191, 39.540543, 27.942110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230953, 39.716656, 28.066198>,  <34.407227, 40.010178, 28.273012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230953, 39.716656, 28.066198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239345, -0.459075, 0.855549,
		-0.865166, 0.500775, 0.026673,
		-0.440683, -0.733808, -0.517035,
		34.098747, 39.496513, 27.911087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743130, 39.959888, 28.516718>,  <34.407227, 40.010178, 28.273012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743130, 39.959888, 28.516718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775463, 39.598480, 28.348373>,  <33.794865, 39.381638, 28.247368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775463, 39.598480, 28.348373>,  <33.743130, 39.959888, 28.516718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775463, 39.598480, 28.348373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563260, -0.389766, 0.728574,
		-0.822316, 0.178158, -0.540422,
		0.080836, -0.903516, -0.420861,
		33.799713, 39.327427, 28.222115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097534, 39.691322, 28.477541>,  <33.743130, 39.959888, 28.516718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097534, 39.691322, 28.477541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361008, 39.391350, 28.453098>,  <33.519093, 39.211365, 28.438433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361008, 39.391350, 28.453098>,  <33.097534, 39.691322, 28.477541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361008, 39.391350, 28.453098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451971, -0.459285, 0.764709,
		-0.601545, -0.476085, -0.641473,
		0.658685, -0.749933, -0.061105,
		33.558613, 39.166370, 28.434767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731327, 38.984135, 28.534645>,  <33.097534, 39.691322, 28.477541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731327, 38.984135, 28.534645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112881, 38.919998, 28.636154>,  <33.341812, 38.881516, 28.697060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112881, 38.919998, 28.636154>,  <32.731327, 38.984135, 28.534645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112881, 38.919998, 28.636154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298827, -0.587400, 0.752106,
		0.028475, -0.793254, -0.608224,
		0.953882, -0.160338, 0.253772,
		33.399044, 38.871899, 28.712286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808121, 38.195583, 28.675928>,  <32.731327, 38.984135, 28.534645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808121, 38.195583, 28.675928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113583, 38.385723, 28.850687>,  <33.296860, 38.499805, 28.955544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113583, 38.385723, 28.850687>,  <32.808121, 38.195583, 28.675928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113583, 38.385723, 28.850687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271529, -0.377486, 0.885311,
		0.585754, -0.794700, -0.159197,
		0.763652, 0.475348, 0.436899,
		33.342678, 38.528328, 28.981756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074821, 37.648380, 29.034775>,  <32.808121, 38.195583, 28.675928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074821, 37.648380, 29.034775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266953, 37.963943, 29.188086>,  <33.382233, 38.153282, 29.280071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266953, 37.963943, 29.188086>,  <33.074821, 37.648380, 29.034775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266953, 37.963943, 29.188086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025435, -0.424274, 0.905177,
		0.876718, -0.444534, -0.183726,
		0.480332, 0.788912, 0.383275,
		33.411053, 38.200619, 29.303068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698154, 37.418194, 29.380497>,  <33.074821, 37.648380, 29.034775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698154, 37.418194, 29.380497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599007, 37.766312, 29.550743>,  <33.539516, 37.975182, 29.652891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599007, 37.766312, 29.550743>,  <33.698154, 37.418194, 29.380497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599007, 37.766312, 29.550743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030078, -0.432202, 0.901275,
		0.968325, 0.236204, 0.080955,
		-0.247874, 0.870293, 0.425617,
		33.524643, 38.027401, 29.678429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158756, 37.566406, 30.022203>,  <33.698154, 37.418194, 29.380497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158756, 37.566406, 30.022203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826107, 37.781048, 30.079432>,  <33.626518, 37.909832, 30.113768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826107, 37.781048, 30.079432>,  <34.158756, 37.566406, 30.022203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826107, 37.781048, 30.079432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057523, -0.339469, 0.938856,
		0.552358, 0.772542, 0.313177,
		-0.831620, 0.536599, 0.143069,
		33.576622, 37.942028, 30.122353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315281, 37.852703, 30.666264>,  <34.158756, 37.566406, 30.022203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315281, 37.852703, 30.666264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917301, 37.858990, 30.626604>,  <33.678513, 37.862762, 30.602808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917301, 37.858990, 30.626604>,  <34.315281, 37.852703, 30.666264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917301, 37.858990, 30.626604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100275, -0.202614, 0.974111,
		-0.004777, 0.979132, 0.203166,
		-0.994948, 0.015719, -0.099151,
		33.618816, 37.863705, 30.596859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024338, 38.229507, 31.269566>,  <34.315281, 37.852703, 30.666264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024338, 38.229507, 31.269566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746246, 37.981022, 31.124928>,  <33.579391, 37.831932, 31.038145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746246, 37.981022, 31.124928>,  <34.024338, 38.229507, 31.269566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746246, 37.981022, 31.124928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281053, -0.228069, 0.932198,
		-0.661559, 0.749722, -0.016032,
		-0.695233, -0.621209, -0.361593,
		33.537678, 37.794659, 31.016449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492950, 38.200802, 31.755487>,  <34.024338, 38.229507, 31.269566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492950, 38.200802, 31.755487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390213, 37.890766, 31.524570>,  <33.328571, 37.704746, 31.386021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390213, 37.890766, 31.524570>,  <33.492950, 38.200802, 31.755487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390213, 37.890766, 31.524570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260043, -0.519878, 0.813698,
		-0.930810, 0.359117, -0.068027,
		-0.256847, -0.775088, -0.577293,
		33.313160, 37.658241, 31.351383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707882, 37.979057, 31.914530>,  <33.492950, 38.200802, 31.755487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707882, 37.979057, 31.914530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894302, 37.664585, 31.752192>,  <33.006157, 37.475903, 31.654789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894302, 37.664585, 31.752192>,  <32.707882, 37.979057, 31.914530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894302, 37.664585, 31.752192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333994, -0.581103, 0.742137,
		-0.819294, -0.210325, -0.533405,
		0.466053, -0.786183, -0.405846,
		33.034119, 37.428730, 31.630438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149948, 37.524902, 32.074406>,  <32.707882, 37.979057, 31.914530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149948, 37.524902, 32.074406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484402, 37.318050, 32.001240>,  <32.685074, 37.193939, 31.957340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484402, 37.318050, 32.001240>,  <32.149948, 37.524902, 32.074406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484402, 37.318050, 32.001240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198546, -0.596183, 0.777911,
		-0.511332, -0.614120, -0.601163,
		0.836134, -0.517129, -0.182916,
		32.735241, 37.162910, 31.946365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024677, 36.802593, 32.140862>,  <32.149948, 37.524902, 32.074406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024677, 36.802593, 32.140862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423183, 36.828079, 32.164154>,  <32.662289, 36.843372, 32.178131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423183, 36.828079, 32.164154>,  <32.024677, 36.802593, 32.140862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423183, 36.828079, 32.164154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003294, -0.702226, 0.711946,
		0.086257, -0.709097, -0.699815,
		0.996268, 0.063715, 0.058236,
		32.722065, 36.847195, 32.181625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181538, 36.097866, 32.228970>,  <32.024677, 36.802593, 32.140862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181538, 36.097866, 32.228970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524574, 36.264400, 32.349766>,  <32.730396, 36.364323, 32.422245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524574, 36.264400, 32.349766>,  <32.181538, 36.097866, 32.228970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524574, 36.264400, 32.349766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134336, -0.748088, 0.649860,
		0.496476, -0.516747, -0.697484,
		0.857593, 0.416337, 0.301990,
		32.781853, 36.389301, 32.440361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653061, 35.567936, 32.240089>,  <32.181538, 36.097866, 32.228970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653061, 35.567936, 32.240089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804398, 35.848591, 32.481606>,  <32.895199, 36.016983, 32.626514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804398, 35.848591, 32.481606>,  <32.653061, 35.567936, 32.240089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804398, 35.848591, 32.481606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172810, -0.694349, 0.698582,
		0.909394, -0.159958, -0.383949,
		0.378338, 0.701636, 0.603794,
		32.917900, 36.059082, 32.662743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222584, 35.298458, 32.550175>,  <32.653061, 35.567936, 32.240089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222584, 35.298458, 32.550175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149693, 35.601227, 32.801208>,  <33.105957, 35.782887, 32.951828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149693, 35.601227, 32.801208>,  <33.222584, 35.298458, 32.550175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149693, 35.601227, 32.801208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226905, -0.588671, 0.775874,
		0.956716, 0.283791, -0.064474,
		-0.182232, 0.756921, 0.627584,
		33.095024, 35.828304, 32.989483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754318, 35.114151, 32.974110>,  <33.222584, 35.298458, 32.550175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754318, 35.114151, 32.974110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508533, 35.364052, 33.166824>,  <33.361065, 35.513992, 33.282452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508533, 35.364052, 33.166824>,  <33.754318, 35.114151, 32.974110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508533, 35.364052, 33.166824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228548, -0.443530, 0.866629,
		0.755120, 0.642620, 0.129744,
		-0.614458, 0.624757, 0.481788,
		33.324196, 35.551479, 33.311359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209892, 35.363270, 33.586246>,  <33.754318, 35.114151, 32.974110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209892, 35.363270, 33.586246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823631, 35.433929, 33.662472>,  <33.591873, 35.476326, 33.708206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823631, 35.433929, 33.662472>,  <34.209892, 35.363270, 33.586246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823631, 35.433929, 33.662472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064497, -0.547463, 0.834340,
		0.251709, 0.817973, 0.517265,
		-0.965651, 0.176649, 0.190559,
		33.533936, 35.486923, 33.719639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156044, 35.636871, 34.290932>,  <34.209892, 35.363270, 33.586246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156044, 35.636871, 34.290932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786549, 35.496304, 34.229992>,  <33.564850, 35.411961, 34.193428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786549, 35.496304, 34.229992>,  <34.156044, 35.636871, 34.290932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786549, 35.496304, 34.229992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072394, -0.550762, 0.831517,
		-0.376120, 0.757075, 0.534201,
		-0.923738, -0.351424, -0.152345,
		33.509426, 35.390877, 34.184288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902935, 35.500961, 34.932449>,  <34.156044, 35.636871, 34.290932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902935, 35.500961, 34.932449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650089, 35.276394, 34.718815>,  <33.498383, 35.141655, 34.590633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650089, 35.276394, 34.718815>,  <33.902935, 35.500961, 34.932449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650089, 35.276394, 34.718815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124457, -0.606743, 0.785095,
		-0.764816, 0.562739, 0.313658,
		-0.632113, -0.561416, -0.534083,
		33.460457, 35.107967, 34.558590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540726, 35.830196, 34.993259>,  <33.902935, 35.500961, 34.932449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540726, 35.830196, 34.993259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909878, 35.900257, 35.130432>,  <35.131371, 35.942295, 35.212738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909878, 35.900257, 35.130432>,  <34.540726, 35.830196, 34.993259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909878, 35.900257, 35.130432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114946, 0.724657, -0.679456,
		-0.367521, 0.666478, 0.648641,
		0.922884, 0.175155, 0.342936,
		35.186745, 35.952805, 35.233315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627289, 36.509510, 35.231949>,  <34.540726, 35.830196, 34.993259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627289, 36.509510, 35.231949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998539, 36.402248, 35.128662>,  <35.221291, 36.337891, 35.066689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998539, 36.402248, 35.128662>,  <34.627289, 36.509510, 35.231949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998539, 36.402248, 35.128662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100374, 0.848206, -0.520068,
		0.358481, 0.456770, 0.814158,
		0.928125, -0.268155, -0.258218,
		35.276978, 36.321800, 35.051197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959190, 37.059956, 35.243511>,  <34.627289, 36.509510, 35.231949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959190, 37.059956, 35.243511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216824, 36.846756, 35.024036>,  <35.371403, 36.718834, 34.892349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216824, 36.846756, 35.024036>,  <34.959190, 37.059956, 35.243511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216824, 36.846756, 35.024036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136631, 0.785910, -0.603056,
		0.752651, 0.313452, 0.579019,
		0.644087, -0.533003, -0.548689,
		35.410049, 36.686855, 34.859428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536156, 37.482178, 35.151653>,  <34.959190, 37.059956, 35.243511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536156, 37.482178, 35.151653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536255, 37.223598, 34.846470>,  <35.536316, 37.068451, 34.663361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536255, 37.223598, 34.846470>,  <35.536156, 37.482178, 35.151653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536255, 37.223598, 34.846470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009143, 0.762925, -0.646423,
		0.999958, 0.007136, -0.005721,
		0.000248, -0.646448, -0.762958,
		35.536327, 37.029663, 34.617584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053707, 37.770206, 34.728344>,  <35.536156, 37.482178, 35.151653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053707, 37.770206, 34.728344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852215, 37.516163, 34.494118>,  <35.731319, 37.363739, 34.353580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852215, 37.516163, 34.494118>,  <36.053707, 37.770206, 34.728344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852215, 37.516163, 34.494118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231005, 0.554132, -0.799734,
		0.832399, -0.538123, -0.132422,
		-0.503735, -0.635108, -0.585568,
		35.701096, 37.325630, 34.318447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482231, 37.582718, 34.246559>,  <36.053707, 37.770206, 34.728344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482231, 37.582718, 34.246559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122810, 37.505669, 34.088829>,  <35.907158, 37.459438, 33.994190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122810, 37.505669, 34.088829>,  <36.482231, 37.582718, 34.246559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122810, 37.505669, 34.088829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111906, 0.768252, -0.630290,
		0.424354, -0.610478, -0.668760,
		-0.898555, -0.192628, -0.394327,
		35.853245, 37.447880, 33.970531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662403, 37.399590, 33.479294>,  <36.482231, 37.582718, 34.246559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662403, 37.399590, 33.479294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270916, 37.478516, 33.456745>,  <36.036022, 37.525871, 33.443214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270916, 37.478516, 33.456745>,  <36.662403, 37.399590, 33.479294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270916, 37.478516, 33.456745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114448, 0.296828, -0.948048,
		-0.170333, -0.934323, -0.313093,
		-0.978717, 0.197317, -0.056372,
		35.977303, 37.537712, 33.439835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418163, 37.172813, 32.781685>,  <36.662403, 37.399590, 33.479294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418163, 37.172813, 32.781685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144424, 37.434273, 32.910938>,  <35.980183, 37.591148, 32.988491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144424, 37.434273, 32.910938>,  <36.418163, 37.172813, 32.781685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144424, 37.434273, 32.910938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021761, 0.461274, -0.886991,
		-0.728834, -0.599975, -0.329894,
		-0.684344, 0.653649, 0.323136,
		35.939121, 37.630367, 33.007877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030788, 37.254868, 32.198128>,  <36.418163, 37.172813, 32.781685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030788, 37.254868, 32.198128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953106, 37.582699, 32.413746>,  <35.906498, 37.779396, 32.543118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953106, 37.582699, 32.413746>,  <36.030788, 37.254868, 32.198128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953106, 37.582699, 32.413746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006521, 0.548420, -0.836177,
		-0.980939, -0.165907, -0.101163,
		-0.194207, 0.819579, 0.539048,
		35.894844, 37.828571, 32.575459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568893, 37.690605, 31.802740>,  <36.030788, 37.254868, 32.198128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568893, 37.690605, 31.802740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725746, 37.936600, 32.076389>,  <35.819859, 38.084198, 32.240578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725746, 37.936600, 32.076389>,  <35.568893, 37.690605, 31.802740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725746, 37.936600, 32.076389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141874, 0.694355, -0.705509,
		-0.908905, 0.373708, 0.185025,
		0.392128, 0.614990, 0.684122,
		35.843384, 38.121098, 32.281628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238815, 38.348877, 31.669147>,  <35.568893, 37.690605, 31.802740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238815, 38.348877, 31.669147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562950, 38.467537, 31.871275>,  <35.757431, 38.538734, 31.992552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562950, 38.467537, 31.871275>,  <35.238815, 38.348877, 31.669147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562950, 38.467537, 31.871275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157815, 0.720017, -0.675774,
		-0.564306, 0.627354, 0.536643,
		0.810341, 0.296653, 0.505316,
		35.806053, 38.556534, 32.022869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182934, 39.115940, 31.800592>,  <35.238815, 38.348877, 31.669147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182934, 39.115940, 31.800592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563198, 38.992748, 31.815519>,  <35.791355, 38.918831, 31.824476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563198, 38.992748, 31.815519>,  <35.182934, 39.115940, 31.800592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563198, 38.992748, 31.815519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238910, 0.650042, -0.721365,
		0.197909, 0.694688, 0.691549,
		0.950660, -0.307983, 0.037319,
		35.848396, 38.900352, 31.826715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523060, 39.731541, 31.832512>,  <35.182934, 39.115940, 31.800592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523060, 39.731541, 31.832512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818310, 39.491409, 31.709366>,  <35.995461, 39.347332, 31.635477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818310, 39.491409, 31.709366>,  <35.523060, 39.731541, 31.832512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818310, 39.491409, 31.709366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301958, 0.702029, -0.644962,
		0.603317, 0.383101, 0.699458,
		0.738126, -0.600324, -0.307866,
		36.039749, 39.311314, 31.617006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984093, 40.118923, 31.627274>,  <35.523060, 39.731541, 31.832512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984093, 40.118923, 31.627274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126373, 39.792953, 31.444242>,  <36.211742, 39.597374, 31.334423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126373, 39.792953, 31.444242>,  <35.984093, 40.118923, 31.627274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126373, 39.792953, 31.444242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436142, 0.577757, -0.689911,
		0.826592, 0.045834, 0.560932,
		0.355704, -0.814921, -0.457579,
		36.233086, 39.548477, 31.306969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557800, 40.404736, 31.329882>,  <35.984093, 40.118923, 31.627274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557800, 40.404736, 31.329882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470757, 40.065681, 31.136324>,  <36.418530, 39.862247, 31.020189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470757, 40.065681, 31.136324>,  <36.557800, 40.404736, 31.329882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470757, 40.065681, 31.136324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169278, 0.455487, -0.874000,
		0.961244, -0.272106, 0.044366,
		-0.217613, -0.847638, -0.483896,
		36.405472, 39.811390, 30.991156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013859, 40.331814, 30.872997>,  <36.557800, 40.404736, 31.329882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013859, 40.331814, 30.872997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705437, 40.118053, 30.734501>,  <36.520382, 39.989796, 30.651403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705437, 40.118053, 30.734501>,  <37.013859, 40.331814, 30.872997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705437, 40.118053, 30.734501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112241, 0.421174, -0.900008,
		0.626794, -0.732822, -0.264768,
		-0.771059, -0.534402, -0.346242,
		36.474117, 39.957733, 30.630629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227837, 40.065536, 30.280357>,  <37.013859, 40.331814, 30.872997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227837, 40.065536, 30.280357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828552, 40.049465, 30.262657>,  <36.588982, 40.039822, 30.252037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828552, 40.049465, 30.262657>,  <37.227837, 40.065536, 30.280357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828552, 40.049465, 30.262657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017827, 0.506514, -0.862047,
		0.057050, -0.861295, -0.504892,
		-0.998212, -0.040179, -0.044251,
		36.529087, 40.037411, 30.249382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127399, 39.810921, 29.710260>,  <37.227837, 40.065536, 30.280357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127399, 39.810921, 29.710260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776276, 39.986244, 29.787542>,  <36.565601, 40.091438, 29.833912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776276, 39.986244, 29.787542>,  <37.127399, 39.810921, 29.710260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776276, 39.986244, 29.787542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028733, 0.354436, -0.934639,
		-0.478142, -0.825989, -0.298534,
		-0.877813, 0.438312, 0.193204,
		36.512932, 40.117737, 29.845503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637138, 39.633476, 29.126814>,  <37.127399, 39.810921, 29.710260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637138, 39.633476, 29.126814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448132, 39.944912, 29.291994>,  <36.334728, 40.131775, 29.391102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448132, 39.944912, 29.291994>,  <36.637138, 39.633476, 29.126814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448132, 39.944912, 29.291994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311968, 0.290457, -0.904605,
		-0.824261, -0.556266, 0.105651,
		-0.472514, 0.778590, 0.412950,
		36.306377, 40.178490, 29.415878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989517, 39.761333, 28.771893>,  <36.637138, 39.633476, 29.126814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989517, 39.761333, 28.771893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013489, 40.115162, 28.956911>,  <36.027874, 40.327457, 29.067923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013489, 40.115162, 28.956911>,  <35.989517, 39.761333, 28.771893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013489, 40.115162, 28.956911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227220, 0.463304, -0.856575,
		-0.971998, -0.053764, 0.228758,
		0.059932, 0.884567, 0.462547,
		36.031467, 40.380531, 29.095675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359844, 40.133747, 28.646917>,  <35.989517, 39.761333, 28.771893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359844, 40.133747, 28.646917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641827, 40.395950, 28.755247>,  <35.811016, 40.553272, 28.820246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641827, 40.395950, 28.755247>,  <35.359844, 40.133747, 28.646917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641827, 40.395950, 28.755247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142340, 0.504832, -0.851401,
		-0.694824, 0.561649, 0.449189,
		0.704954, 0.655511, 0.270824,
		35.853313, 40.592602, 28.836494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060535, 40.783333, 28.559410>,  <35.359844, 40.133747, 28.646917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060535, 40.783333, 28.559410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455330, 40.847553, 28.563135>,  <35.692207, 40.886086, 28.565371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455330, 40.847553, 28.563135>,  <35.060535, 40.783333, 28.559410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455330, 40.847553, 28.563135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099034, 0.652397, -0.751379,
		-0.126711, 0.740677, 0.659805,
		0.986984, 0.160551, 0.009314,
		35.751427, 40.895718, 28.565929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184433, 41.503456, 28.649656>,  <35.060535, 40.783333, 28.559410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184433, 41.503456, 28.649656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493122, 41.345417, 28.450317>,  <35.678333, 41.250595, 28.330713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493122, 41.345417, 28.450317>,  <35.184433, 41.503456, 28.649656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493122, 41.345417, 28.450317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152660, 0.645611, -0.748252,
		0.617370, 0.653517, 0.437914,
		0.771718, -0.395097, -0.498347,
		35.724636, 41.226887, 28.300814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462673, 42.079803, 28.283504>,  <35.184433, 41.503456, 28.649656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462673, 42.079803, 28.283504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610371, 41.754738, 28.103174>,  <35.698990, 41.559700, 27.994976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610371, 41.754738, 28.103174>,  <35.462673, 42.079803, 28.283504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610371, 41.754738, 28.103174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052627, 0.502613, -0.862908,
		0.927843, 0.294894, 0.228353,
		0.369240, -0.812661, -0.450827,
		35.721142, 41.510941, 27.967926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889088, 42.391094, 27.777422>,  <35.462673, 42.079803, 28.283504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889088, 42.391094, 27.777422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945393, 42.019108, 27.641565>,  <35.979176, 41.795918, 27.560051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945393, 42.019108, 27.641565>,  <35.889088, 42.391094, 27.777422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945393, 42.019108, 27.641565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311252, 0.367233, -0.876506,
		0.939844, 0.017668, 0.341146,
		0.140766, -0.929961, -0.339642,
		35.987621, 41.740120, 27.539673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631737, 42.326839, 27.547953>,  <35.889088, 42.391094, 27.777422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631737, 42.326839, 27.547953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382904, 42.076206, 27.360165>,  <36.233604, 41.925827, 27.247492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382904, 42.076206, 27.360165>,  <36.631737, 42.326839, 27.547953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382904, 42.076206, 27.360165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306970, 0.356422, -0.882458,
		0.720268, -0.693073, -0.029379,
		-0.622080, -0.626588, -0.469472,
		36.196281, 41.888229, 27.219322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042446, 41.941753, 27.100285>,  <36.631737, 42.326839, 27.547953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042446, 41.941753, 27.100285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663078, 41.935535, 26.973627>,  <36.435459, 41.931805, 26.897633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663078, 41.935535, 26.973627>,  <37.042446, 41.941753, 27.100285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663078, 41.935535, 26.973627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311151, 0.145750, -0.939118,
		0.060745, -0.989199, -0.133397,
		-0.948417, -0.015540, -0.316644,
		36.378551, 41.930874, 26.878633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979790, 41.406914, 26.617636>,  <37.042446, 41.941753, 27.100285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979790, 41.406914, 26.617636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663651, 41.637291, 26.534077>,  <36.473969, 41.775517, 26.483942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663651, 41.637291, 26.534077>,  <36.979790, 41.406914, 26.617636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663651, 41.637291, 26.534077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168268, -0.123791, -0.977937,
		-0.589097, -0.808062, 0.000925,
		-0.790349, 0.575944, -0.208896,
		36.426544, 41.810074, 26.471407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681637, 41.057968, 26.063049>,  <36.979790, 41.406914, 26.617636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681637, 41.057968, 26.063049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563343, 41.440075, 26.062485>,  <36.492367, 41.669338, 26.062147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563343, 41.440075, 26.062485>,  <36.681637, 41.057968, 26.063049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563343, 41.440075, 26.062485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306982, 0.093638, -0.947098,
		-0.904601, -0.280522, -0.320942,
		-0.295734, 0.955269, -0.001410,
		36.474625, 41.726654, 26.062061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194138, 41.151951, 25.554523>,  <36.681637, 41.057968, 26.063049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194138, 41.151951, 25.554523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338413, 41.521458, 25.605982>,  <36.424980, 41.743164, 25.636856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338413, 41.521458, 25.605982>,  <36.194138, 41.151951, 25.554523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338413, 41.521458, 25.605982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156036, 0.076220, -0.984807,
		-0.919540, 0.375287, -0.116649,
		0.360694, 0.923770, 0.128645,
		36.446621, 41.798588, 25.644575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916557, 41.513603, 25.002964>,  <36.194138, 41.151951, 25.554523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916557, 41.513603, 25.002964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200989, 41.774452, 25.108114>,  <36.371647, 41.930962, 25.171204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200989, 41.774452, 25.108114>,  <35.916557, 41.513603, 25.002964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200989, 41.774452, 25.108114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172505, 0.200637, -0.964358,
		-0.681623, 0.731081, 0.030174,
		0.711078, 0.652123, 0.262874,
		36.414310, 41.970089, 25.186975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761581, 42.029602, 24.535259>,  <35.916557, 41.513603, 25.002964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761581, 42.029602, 24.535259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135719, 42.051182, 24.675100>,  <36.360203, 42.064129, 24.759005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135719, 42.051182, 24.675100>,  <35.761581, 42.029602, 24.535259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135719, 42.051182, 24.675100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317490, 0.307772, -0.896926,
		-0.155984, 0.949929, 0.270745,
		0.935344, 0.053947, 0.349601,
		36.416321, 42.067368, 24.779980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220547, 42.542854, 24.193653>,  <35.761581, 42.029602, 24.535259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220547, 42.542854, 24.193653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516922, 42.315262, 24.336355>,  <36.694748, 42.178707, 24.421976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516922, 42.315262, 24.336355>,  <36.220547, 42.542854, 24.193653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516922, 42.315262, 24.336355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529393, 0.167985, -0.831579,
		0.413222, 0.805012, 0.425680,
		0.740939, -0.568979, 0.356753,
		36.739204, 42.144569, 24.443380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835133, 42.860600, 24.049217>,  <36.220547, 42.542854, 24.193653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835133, 42.860600, 24.049217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896622, 42.466282, 24.076283>,  <36.933517, 42.229691, 24.092522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896622, 42.466282, 24.076283>,  <36.835133, 42.860600, 24.049217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896622, 42.466282, 24.076283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323419, -0.014506, -0.946145,
		0.933685, 0.167332, 0.316594,
		0.153727, -0.985794, 0.067662,
		36.942741, 42.170544, 24.096581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529217, 42.799568, 23.677490>,  <36.835133, 42.860600, 24.049217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529217, 42.799568, 23.677490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395096, 42.424576, 23.714788>,  <37.314621, 42.199581, 23.737167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395096, 42.424576, 23.714788>,  <37.529217, 42.799568, 23.677490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395096, 42.424576, 23.714788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517578, -0.266007, -0.813236,
		0.787199, -0.224422, 0.574414,
		-0.335306, -0.937483, 0.093245,
		37.294502, 42.143330, 23.742762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089890, 42.365898, 23.599060>,  <37.529217, 42.799568, 23.677490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089890, 42.365898, 23.599060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767025, 42.153366, 23.496157>,  <37.573307, 42.025845, 23.434414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767025, 42.153366, 23.496157>,  <38.089890, 42.365898, 23.599060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767025, 42.153366, 23.496157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423670, -0.217907, -0.879216,
		0.411097, -0.818658, 0.400995,
		-0.807157, -0.531333, -0.257260,
		37.524879, 41.993965, 23.418980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218212, 41.605450, 23.540525>,  <38.089890, 42.365898, 23.599060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218212, 41.605450, 23.540525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931755, 41.735729, 23.293604>,  <37.759880, 41.813896, 23.145451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931755, 41.735729, 23.293604>,  <38.218212, 41.605450, 23.540525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931755, 41.735729, 23.293604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389852, -0.546950, -0.740852,
		-0.578931, -0.771209, 0.264717,
		-0.716139, 0.325702, -0.617304,
		37.716911, 41.833439, 23.108414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230305, 41.689728, 22.758625>,  <38.218212, 41.605450, 23.540525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230305, 41.689728, 22.758625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516380, 41.967808, 22.787439>,  <38.688026, 42.134655, 22.804728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516380, 41.967808, 22.787439>,  <38.230305, 41.689728, 22.758625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516380, 41.967808, 22.787439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456064, -0.542293, 0.705637,
		0.529626, -0.471814, -0.704903,
		0.715193, 0.695204, 0.072035,
		38.730938, 42.176369, 22.809050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754520, 41.310841, 23.002159>,  <38.230305, 41.689728, 22.758625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754520, 41.310841, 23.002159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886543, 41.677734, 23.091372>,  <38.965759, 41.897869, 23.144899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886543, 41.677734, 23.091372>,  <38.754520, 41.310841, 23.002159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886543, 41.677734, 23.091372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516016, -0.373165, 0.771022,
		0.790435, -0.139396, -0.596474,
		0.330061, 0.917233, 0.223032,
		38.985561, 41.952904, 23.158281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489605, 41.244186, 23.194998>,  <38.754520, 41.310841, 23.002159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489605, 41.244186, 23.194998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380978, 41.596657, 23.349802>,  <39.315800, 41.808140, 23.442684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380978, 41.596657, 23.349802>,  <39.489605, 41.244186, 23.194998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380978, 41.596657, 23.349802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439722, -0.244093, 0.864328,
		0.856092, 0.404906, -0.321183,
		-0.271573, 0.881175, 0.387012,
		39.299507, 41.861008, 23.465906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134174, 41.639553, 23.440809>,  <39.489605, 41.244186, 23.194998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134174, 41.639553, 23.440809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821129, 41.785316, 23.642693>,  <39.633301, 41.872772, 23.763823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821129, 41.785316, 23.642693>,  <40.134174, 41.639553, 23.440809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821129, 41.785316, 23.642693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528929, -0.038268, 0.847803,
		0.328259, 0.930454, -0.162796,
		-0.782611, 0.364406, 0.504706,
		39.586346, 41.894638, 23.794104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472569, 41.994850, 23.928846>,  <40.134174, 41.639553, 23.440809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472569, 41.994850, 23.928846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100784, 41.981255, 24.075787>,  <39.877712, 41.973099, 24.163950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100784, 41.981255, 24.075787>,  <40.472569, 41.994850, 23.928846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100784, 41.981255, 24.075787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367106, 0.013391, 0.930083,
		-0.036532, 0.999333, 0.000032,
		-0.929461, -0.033990, 0.367350,
		39.821945, 41.971058, 24.185991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355610, 42.515854, 24.435503>,  <40.472569, 41.994850, 23.928846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355610, 42.515854, 24.435503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066113, 42.264618, 24.549837>,  <39.892414, 42.113876, 24.618439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066113, 42.264618, 24.549837>,  <40.355610, 42.515854, 24.435503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066113, 42.264618, 24.549837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310506, 0.073506, 0.947725,
		-0.616267, 0.774661, 0.141827,
		-0.723741, -0.628090, 0.285837,
		39.848991, 42.076191, 24.635588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884777, 42.935265, 24.755089>,  <40.355610, 42.515854, 24.435503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884777, 42.935265, 24.755089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830452, 42.568806, 24.905937>,  <39.797855, 42.348930, 24.996447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830452, 42.568806, 24.905937>,  <39.884777, 42.935265, 24.755089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830452, 42.568806, 24.905937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083525, 0.368704, 0.925787,
		-0.987207, 0.157237, 0.026445,
		-0.135817, -0.916152, 0.377120,
		39.789707, 42.293961, 25.019073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551483, 42.991379, 25.515127>,  <39.884777, 42.935265, 24.755089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551483, 42.991379, 25.515127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637623, 42.601490, 25.538918>,  <39.689304, 42.367558, 25.553192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637623, 42.601490, 25.538918>,  <39.551483, 42.991379, 25.515127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637623, 42.601490, 25.538918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021405, 0.056178, 0.998191,
		-0.976304, -0.216228, -0.008767,
		0.215345, -0.974725, 0.059475,
		39.702225, 42.309071, 25.556761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109791, 42.755959, 25.903053>,  <39.551483, 42.991379, 25.515127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109791, 42.755959, 25.903053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415913, 42.499771, 25.928684>,  <39.599586, 42.346058, 25.944063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415913, 42.499771, 25.928684>,  <39.109791, 42.755959, 25.903053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415913, 42.499771, 25.928684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094805, -0.013695, 0.995402,
		-0.636643, -0.767864, -0.071200,
		0.765308, -0.640466, 0.064078,
		39.645504, 42.307632, 25.947908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876671, 42.332371, 26.492910>,  <39.109791, 42.755959, 25.903053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876671, 42.332371, 26.492910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264297, 42.244339, 26.448242>,  <39.496876, 42.191521, 26.421442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264297, 42.244339, 26.448242>,  <38.876671, 42.332371, 26.492910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264297, 42.244339, 26.448242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105470, -0.039755, 0.993627,
		-0.223121, -0.974670, -0.015313,
		0.969068, -0.220084, -0.111669,
		39.555019, 42.178314, 26.414742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978127, 41.584770, 26.713678>,  <38.876671, 42.332371, 26.492910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978127, 41.584770, 26.713678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341927, 41.750343, 26.729012>,  <39.560207, 41.849686, 26.738213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341927, 41.750343, 26.729012>,  <38.978127, 41.584770, 26.713678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341927, 41.750343, 26.729012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118069, -0.345636, 0.930911,
		0.398583, -0.842138, -0.363229,
		0.909500, 0.413932, 0.038334,
		39.614777, 41.874523, 26.740511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531876, 41.057674, 26.803627>,  <38.978127, 41.584770, 26.713678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531876, 41.057674, 26.803627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693008, 41.402027, 26.927958>,  <39.789688, 41.608639, 27.002556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693008, 41.402027, 26.927958>,  <39.531876, 41.057674, 26.803627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693008, 41.402027, 26.927958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130973, -0.390321, 0.911315,
		0.905855, -0.326396, -0.269985,
		0.402830, 0.860881, 0.310825,
		39.813858, 41.660290, 27.021206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123840, 40.892071, 27.248066>,  <39.531876, 41.057674, 26.803627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123840, 40.892071, 27.248066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018147, 41.265587, 27.344578>,  <39.954731, 41.489697, 27.402485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018147, 41.265587, 27.344578>,  <40.123840, 40.892071, 27.248066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018147, 41.265587, 27.344578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045416, -0.261942, 0.964015,
		0.963389, 0.243768, 0.111623,
		-0.264235, 0.933790, 0.241281,
		39.938877, 41.545723, 27.416962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401688, 41.043392, 27.890249>,  <40.123840, 40.892071, 27.248066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401688, 41.043392, 27.890249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157303, 41.359863, 27.901371>,  <40.010674, 41.549744, 27.908045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157303, 41.359863, 27.901371>,  <40.401688, 41.043392, 27.890249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157303, 41.359863, 27.901371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047921, -0.072016, 0.996252,
		0.790210, 0.607337, 0.081913,
		-0.610959, 0.791174, 0.027804,
		39.974014, 41.597214, 27.909712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700405, 41.505844, 28.225752>,  <40.401688, 41.043392, 27.890249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700405, 41.505844, 28.225752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310841, 41.593262, 28.250217>,  <40.077103, 41.645714, 28.264896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310841, 41.593262, 28.250217>,  <40.700405, 41.505844, 28.225752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310841, 41.593262, 28.250217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066023, 0.014990, 0.997705,
		0.217127, 0.975712, -0.029028,
		-0.973908, 0.218546, 0.061165,
		40.018669, 41.658825, 28.268566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655708, 41.869591, 28.832245>,  <40.700405, 41.505844, 28.225752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655708, 41.869591, 28.832245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271343, 41.793667, 28.751627>,  <40.040726, 41.748112, 28.703257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271343, 41.793667, 28.751627>,  <40.655708, 41.869591, 28.832245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271343, 41.793667, 28.751627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216748, 0.062861, 0.974201,
		-0.172243, 0.979806, -0.101544,
		-0.960912, -0.189809, -0.201544,
		39.983070, 41.736725, 28.691164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223415, 42.343266, 29.225388>,  <40.655708, 41.869591, 28.832245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223415, 42.343266, 29.225388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990925, 42.027981, 29.144485>,  <39.851433, 41.838810, 29.095943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990925, 42.027981, 29.144485>,  <40.223415, 42.343266, 29.225388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990925, 42.027981, 29.144485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253354, -0.060916, 0.965454,
		-0.773299, 0.612387, -0.164290,
		-0.581223, -0.788208, -0.202257,
		39.816559, 41.791519, 29.083809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654678, 42.351421, 29.740084>,  <40.223415, 42.343266, 29.225388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654678, 42.351421, 29.740084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633900, 41.975910, 29.603848>,  <39.621433, 41.750603, 29.522106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633900, 41.975910, 29.603848>,  <39.654678, 42.351421, 29.740084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633900, 41.975910, 29.603848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412036, -0.290520, 0.863611,
		-0.909685, 0.185201, -0.371717,
		-0.051951, -0.938775, -0.340591,
		39.618313, 41.694279, 29.501671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023033, 42.002121, 29.959538>,  <39.654678, 42.351421, 29.740084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023033, 42.002121, 29.959538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200184, 41.665741, 29.835176>,  <39.306473, 41.463913, 29.760561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200184, 41.665741, 29.835176>,  <39.023033, 42.002121, 29.959538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200184, 41.665741, 29.835176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414694, -0.499572, 0.760563,
		-0.794916, -0.207905, -0.569986,
		0.442874, -0.840954, -0.310901,
		39.333046, 41.413456, 29.741907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603279, 41.525723, 30.013638>,  <39.023033, 42.002121, 29.959538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603279, 41.525723, 30.013638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949821, 41.328281, 30.044054>,  <39.157745, 41.209816, 30.062304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949821, 41.328281, 30.044054>,  <38.603279, 41.525723, 30.013638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949821, 41.328281, 30.044054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415048, -0.626905, 0.659337,
		-0.277778, -0.602783, -0.747992,
		0.866357, -0.493602, 0.076044,
		39.209728, 41.180202, 30.066868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460438, 40.844646, 29.967375>,  <38.603279, 41.525723, 30.013638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460438, 40.844646, 29.967375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824890, 40.861813, 30.131327>,  <39.043560, 40.872112, 30.229698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824890, 40.861813, 30.131327>,  <38.460438, 40.844646, 29.967375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824890, 40.861813, 30.131327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310601, -0.582174, 0.751399,
		0.270867, -0.811931, -0.517106,
		0.911130, 0.042915, 0.409878,
		39.098228, 40.874687, 30.254290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610760, 40.145027, 29.998501>,  <38.460438, 40.844646, 29.967375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610760, 40.145027, 29.998501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839752, 40.327339, 30.271126>,  <38.977150, 40.436726, 30.434700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839752, 40.327339, 30.271126>,  <38.610760, 40.145027, 29.998501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839752, 40.327339, 30.271126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214355, -0.719151, 0.660964,
		0.791399, -0.524488, -0.314006,
		0.572486, 0.455778, 0.681562,
		39.011497, 40.464073, 30.475594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941914, 39.629025, 30.266035>,  <38.610760, 40.145027, 29.998501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941914, 39.629025, 30.266035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953869, 39.917942, 30.542414>,  <38.961044, 40.091293, 30.708241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953869, 39.917942, 30.542414>,  <38.941914, 39.629025, 30.266035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953869, 39.917942, 30.542414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137922, -0.681661, 0.718551,
		0.989992, -0.116775, 0.079244,
		0.029892, 0.722289, 0.690945,
		38.962837, 40.134628, 30.749697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399261, 39.399426, 30.841942>,  <38.941914, 39.629025, 30.266035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399261, 39.399426, 30.841942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173637, 39.683323, 31.010754>,  <39.038265, 39.853661, 31.112041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173637, 39.683323, 31.010754>,  <39.399261, 39.399426, 30.841942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173637, 39.683323, 31.010754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071364, -0.551084, 0.831392,
		0.822647, 0.438834, 0.361493,
		-0.564056, 0.709740, 0.422030,
		39.004421, 39.896244, 31.137363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505211, 39.334885, 31.459972>,  <39.399261, 39.399426, 30.841942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505211, 39.334885, 31.459972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167080, 39.547417, 31.482269>,  <38.964203, 39.674934, 31.495647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167080, 39.547417, 31.482269>,  <39.505211, 39.334885, 31.459972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167080, 39.547417, 31.482269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251107, -0.487247, 0.836382,
		0.471556, 0.693021, 0.545304,
		-0.845328, 0.531331, 0.055742,
		38.913483, 39.706818, 31.498991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445076, 39.566124, 32.097095>,  <39.505211, 39.334885, 31.459972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445076, 39.566124, 32.097095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068321, 39.593174, 31.965473>,  <38.842270, 39.609406, 31.886499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068321, 39.593174, 31.965473>,  <39.445076, 39.566124, 32.097095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068321, 39.593174, 31.965473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315464, -0.514770, 0.797179,
		-0.115481, 0.854657, 0.506187,
		-0.941885, 0.067624, -0.329059,
		38.785755, 39.613461, 31.866755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211437, 39.909966, 32.610332>,  <39.445076, 39.566124, 32.097095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211437, 39.909966, 32.610332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896053, 39.721802, 32.451813>,  <38.706825, 39.608906, 32.356701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896053, 39.721802, 32.451813>,  <39.211437, 39.909966, 32.610332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896053, 39.721802, 32.451813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143844, -0.485418, 0.862368,
		-0.598034, 0.736945, 0.315066,
		-0.788457, -0.470405, -0.396302,
		38.659515, 39.580681, 32.332924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636417, 40.052387, 32.965393>,  <39.211437, 39.909966, 32.610332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636417, 40.052387, 32.965393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489223, 39.743500, 32.758217>,  <38.400906, 39.558167, 32.633911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489223, 39.743500, 32.758217>,  <38.636417, 40.052387, 32.965393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489223, 39.743500, 32.758217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389591, -0.377728, 0.839964,
		-0.844278, 0.510880, -0.161852,
		-0.367985, -0.772220, -0.517942,
		38.378826, 39.511833, 32.602833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048668, 39.861374, 33.333172>,  <38.636417, 40.052387, 32.965393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048668, 39.861374, 33.333172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116943, 39.513863, 33.147232>,  <38.157909, 39.305355, 33.035667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116943, 39.513863, 33.147232>,  <38.048668, 39.861374, 33.333172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116943, 39.513863, 33.147232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179548, -0.491297, 0.852285,
		-0.968829, -0.062010, -0.239845,
		0.170685, -0.868782, -0.464849,
		38.168148, 39.253227, 33.007778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483994, 39.427940, 33.495266>,  <38.048668, 39.861374, 33.333172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483994, 39.427940, 33.495266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773293, 39.176811, 33.380199>,  <37.946873, 39.026134, 33.311157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773293, 39.176811, 33.380199>,  <37.483994, 39.427940, 33.495266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773293, 39.176811, 33.380199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151993, -0.551055, 0.820510,
		-0.673655, -0.549708, -0.493974,
		0.723248, -0.627821, -0.287669,
		37.990269, 38.988464, 33.293900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261871, 38.735123, 33.776047>,  <37.483994, 39.427940, 33.495266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261871, 38.735123, 33.776047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642353, 38.680889, 33.665169>,  <37.870640, 38.648350, 33.598644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642353, 38.680889, 33.665169>,  <37.261871, 38.735123, 33.776047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642353, 38.680889, 33.665169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047607, -0.823063, 0.565951,
		-0.304881, -0.551529, -0.776443,
		0.951200, -0.135583, -0.277193,
		37.927711, 38.640213, 33.582012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263653, 38.054390, 33.563595>,  <37.261871, 38.735123, 33.776047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263653, 38.054390, 33.563595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637001, 38.163654, 33.656723>,  <37.861008, 38.229214, 33.712601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637001, 38.163654, 33.656723>,  <37.263653, 38.054390, 33.563595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637001, 38.163654, 33.656723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148175, -0.884073, 0.443237,
		0.326911, -0.379204, -0.865641,
		0.933367, 0.273165, 0.232824,
		37.917011, 38.245605, 33.726570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648453, 37.396290, 33.369041>,  <37.263653, 38.054390, 33.563595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648453, 37.396290, 33.369041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859245, 37.629581, 33.616306>,  <37.985722, 37.769558, 33.764668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859245, 37.629581, 33.616306>,  <37.648453, 37.396290, 33.369041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859245, 37.629581, 33.616306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237447, -0.799436, 0.551834,
		0.816031, -0.144026, -0.559776,
		0.526984, 0.583231, 0.618166,
		38.017342, 37.804550, 33.801758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188103, 36.953960, 33.584679>,  <37.648453, 37.396290, 33.369041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188103, 36.953960, 33.584679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220928, 37.253166, 33.848114>,  <38.240623, 37.432690, 34.006176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220928, 37.253166, 33.848114>,  <38.188103, 36.953960, 33.584679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220928, 37.253166, 33.848114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371250, -0.636205, 0.676326,
		0.924900, 0.189000, -0.329909,
		0.082064, 0.748012, 0.658592,
		38.245548, 37.477570, 34.045692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919041, 36.891197, 33.885590>,  <38.188103, 36.953960, 33.584679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919041, 36.891197, 33.885590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692135, 37.111626, 34.130383>,  <38.555992, 37.243881, 34.277260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692135, 37.111626, 34.130383>,  <38.919041, 36.891197, 33.885590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692135, 37.111626, 34.130383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428590, -0.437006, 0.790782,
		0.703219, 0.710877, 0.011716,
		-0.567268, 0.551072, 0.611986,
		38.521954, 37.276947, 34.313980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386497, 37.221329, 34.252567>,  <38.919041, 36.891197, 33.885590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386497, 37.221329, 34.252567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050720, 37.229187, 34.469803>,  <38.849255, 37.233902, 34.600143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050720, 37.229187, 34.469803>,  <39.386497, 37.221329, 34.252567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050720, 37.229187, 34.469803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486731, -0.417321, 0.767422,
		0.241716, 0.908547, 0.340757,
		-0.839444, 0.019641, 0.543091,
		38.798885, 37.235081, 34.632729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576576, 37.462254, 34.884689>,  <39.386497, 37.221329, 34.252567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576576, 37.462254, 34.884689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229599, 37.270500, 34.937954>,  <39.021412, 37.155449, 34.969913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229599, 37.270500, 34.937954>,  <39.576576, 37.462254, 34.884689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229599, 37.270500, 34.937954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373936, -0.451630, 0.810063,
		-0.328189, 0.752479, 0.571023,
		-0.867447, -0.479380, 0.133159,
		38.969364, 37.126686, 34.977901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463196, 37.395638, 35.632969>,  <39.576576, 37.462254, 34.884689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463196, 37.395638, 35.632969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191601, 37.123062, 35.523697>,  <39.028645, 36.959518, 35.458134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191601, 37.123062, 35.523697>,  <39.463196, 37.395638, 35.632969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191601, 37.123062, 35.523697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271090, -0.578520, 0.769302,
		-0.682269, 0.448287, 0.577536,
		-0.678984, -0.681435, -0.273180,
		38.987907, 36.918633, 35.441742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041058, 37.194824, 36.270306>,  <39.463196, 37.395638, 35.632969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041058, 37.194824, 36.270306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018440, 36.898922, 36.002110>,  <39.004871, 36.721378, 35.841190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018440, 36.898922, 36.002110>,  <39.041058, 37.194824, 36.270306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018440, 36.898922, 36.002110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151990, -0.670118, 0.726527,
		-0.986763, -0.060829, 0.150325,
		-0.056542, -0.739758, -0.670493,
		39.001476, 36.676994, 35.800961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605904, 36.749218, 36.547314>,  <39.041058, 37.194824, 36.270306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605904, 36.749218, 36.547314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771080, 36.503410, 36.278435>,  <38.870186, 36.355927, 36.117107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771080, 36.503410, 36.278435>,  <38.605904, 36.749218, 36.547314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771080, 36.503410, 36.278435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055853, -0.719590, 0.692149,
		-0.909044, -0.323360, -0.262825,
		0.412939, -0.614514, -0.672200,
		38.894962, 36.319057, 36.076775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167530, 36.134773, 36.619572>,  <38.605904, 36.749218, 36.547314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167530, 36.134773, 36.619572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519741, 36.040451, 36.455101>,  <38.731068, 35.983856, 36.356419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519741, 36.040451, 36.455101>,  <38.167530, 36.134773, 36.619572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519741, 36.040451, 36.455101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061163, -0.803696, 0.591888,
		-0.470036, -0.546321, -0.693252,
		0.880525, -0.235808, -0.411181,
		38.783897, 35.969707, 36.331745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178612, 35.456718, 36.371731>,  <38.167530, 36.134773, 36.619572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178612, 35.456718, 36.371731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565308, 35.543739, 36.425526>,  <38.797325, 35.595951, 36.457802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565308, 35.543739, 36.425526>,  <38.178612, 35.456718, 36.371731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565308, 35.543739, 36.425526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104422, -0.815731, 0.568929,
		0.233481, -0.535961, -0.811315,
		0.966738, 0.217553, 0.134491,
		38.855328, 35.609005, 36.465874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539433, 34.837234, 36.270828>,  <38.178612, 35.456718, 36.371731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539433, 34.837234, 36.270828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789867, 35.073212, 36.474785>,  <38.940128, 35.214798, 36.597157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789867, 35.073212, 36.474785>,  <38.539433, 34.837234, 36.270828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789867, 35.073212, 36.474785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127848, -0.722725, 0.679208,
		0.769201, -0.360055, -0.527911,
		0.626087, 0.589940, 0.509888,
		38.977692, 35.250195, 36.627750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179577, 34.424431, 36.577023>,  <38.539433, 34.837234, 36.270828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179577, 34.424431, 36.577023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184509, 34.759193, 36.795906>,  <39.187469, 34.960052, 36.927235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184509, 34.759193, 36.795906>,  <39.179577, 34.424431, 36.577023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184509, 34.759193, 36.795906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359709, -0.514326, 0.778510,
		0.932983, 0.187239, -0.307383,
		0.012328, 0.836905, 0.547209,
		39.188206, 35.010265, 36.960068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804688, 34.529602, 36.934746>,  <39.179577, 34.424431, 36.577023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804688, 34.529602, 36.934746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516281, 34.683395, 37.165333>,  <39.343239, 34.775669, 37.303684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516281, 34.683395, 37.165333>,  <39.804688, 34.529602, 36.934746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516281, 34.683395, 37.165333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348435, -0.517928, 0.781245,
		0.598941, 0.764150, 0.239468,
		-0.721015, 0.384481, 0.576465,
		39.299976, 34.798740, 37.338272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096684, 34.419033, 37.583763>,  <39.804688, 34.529602, 36.934746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096684, 34.419033, 37.583763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733696, 34.575829, 37.644222>,  <39.515903, 34.669907, 37.680500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733696, 34.575829, 37.644222>,  <40.096684, 34.419033, 37.583763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733696, 34.575829, 37.644222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061858, -0.480525, 0.874797,
		0.415542, 0.784500, 0.460308,
		-0.907468, 0.391989, 0.151151,
		39.461456, 34.693424, 37.689568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064011, 34.728489, 38.290516>,  <40.096684, 34.419033, 37.583763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064011, 34.728489, 38.290516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704590, 34.607613, 38.163216>,  <39.488937, 34.535088, 38.086838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704590, 34.607613, 38.163216>,  <40.064011, 34.728489, 38.290516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704590, 34.607613, 38.163216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126668, -0.515721, 0.847341,
		-0.420183, 0.801695, 0.425126,
		-0.898555, -0.302188, -0.318246,
		39.435024, 34.516956, 38.067741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758049, 34.685165, 39.013065>,  <40.064011, 34.728489, 38.290516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758049, 34.685165, 39.013065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529213, 34.478600, 38.758183>,  <39.391911, 34.354660, 38.605255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529213, 34.478600, 38.758183>,  <39.758049, 34.685165, 39.013065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529213, 34.478600, 38.758183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319098, -0.575551, 0.752939,
		-0.755571, 0.634080, 0.164482,
		-0.572092, -0.516414, -0.637203,
		39.357586, 34.323677, 38.567020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146904, 34.595230, 39.386086>,  <39.758049, 34.685165, 39.013065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146904, 34.595230, 39.386086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143364, 34.321499, 39.094437>,  <39.141239, 34.157261, 38.919449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143364, 34.321499, 39.094437>,  <39.146904, 34.595230, 39.386086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143364, 34.321499, 39.094437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477493, -0.637755, 0.604375,
		-0.878591, 0.353500, -0.321115,
		-0.008854, -0.684329, -0.729120,
		39.140709, 34.116199, 38.875702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477940, 34.230221, 39.376755>,  <39.146904, 34.595230, 39.386086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477940, 34.230221, 39.376755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743324, 33.967033, 39.234268>,  <38.902557, 33.809120, 39.148777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743324, 33.967033, 39.234268>,  <38.477940, 34.230221, 39.376755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743324, 33.967033, 39.234268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385240, -0.708546, 0.591230,
		-0.641407, -0.255032, -0.723572,
		0.663466, -0.657968, -0.356218,
		38.942364, 33.769642, 39.127403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072777, 33.702908, 39.044044>,  <38.477940, 34.230221, 39.376755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072777, 33.702908, 39.044044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419773, 33.551598, 39.173264>,  <38.627972, 33.460812, 39.250793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419773, 33.551598, 39.173264>,  <38.072777, 33.702908, 39.044044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419773, 33.551598, 39.173264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496971, -0.687418, 0.529600,
		0.021730, -0.619969, -0.784325,
		0.867495, -0.378279, 0.323044,
		38.680023, 33.438114, 39.270176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013596, 33.019474, 39.011658>,  <38.072777, 33.702908, 39.044044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013596, 33.019474, 39.011658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336761, 32.984947, 39.244839>,  <38.530659, 32.964230, 39.384747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336761, 32.984947, 39.244839>,  <38.013596, 33.019474, 39.011658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336761, 32.984947, 39.244839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448720, -0.731354, 0.513588,
		0.382008, -0.676514, -0.629602,
		0.807911, -0.086320, 0.582948,
		38.579136, 32.959053, 39.419724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853283, 32.401295, 39.423561>,  <38.013596, 33.019474, 39.011658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853283, 32.401295, 39.423561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219776, 32.518124, 39.533257>,  <38.439674, 32.588219, 39.599075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219776, 32.518124, 39.533257>,  <37.853283, 32.401295, 39.423561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219776, 32.518124, 39.533257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094792, -0.823111, 0.559913,
		0.389265, -0.487016, -0.781849,
		0.916236, 0.292068, 0.274243,
		38.494648, 32.605743, 39.615528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246967, 31.808428, 39.308533>,  <37.853283, 32.401295, 39.423561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246967, 31.808428, 39.308533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392490, 32.013592, 39.619549>,  <38.479805, 32.136692, 39.806160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392490, 32.013592, 39.619549>,  <38.246967, 31.808428, 39.308533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392490, 32.013592, 39.619549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149326, -0.856059, 0.494838,
		0.919427, -0.063919, -0.388031,
		0.363807, 0.512910, 0.777540,
		38.501633, 32.167465, 39.852810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830048, 31.496624, 39.578506>,  <38.246967, 31.808428, 39.308533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830048, 31.496624, 39.578506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668396, 31.708597, 39.876728>,  <38.571407, 31.835781, 40.055660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668396, 31.708597, 39.876728>,  <38.830048, 31.496624, 39.578506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668396, 31.708597, 39.876728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053405, -0.827358, 0.559131,
		0.913142, 0.186144, 0.362659,
		-0.404127, 0.529934, 0.745555,
		38.547157, 31.867577, 40.100395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138775, 31.241087, 40.117462>,  <38.830048, 31.496624, 39.578506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138775, 31.241087, 40.117462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813351, 31.433180, 40.248604>,  <38.618095, 31.548435, 40.327290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813351, 31.433180, 40.248604>,  <39.138775, 31.241087, 40.117462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813351, 31.433180, 40.248604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160867, -0.727714, 0.666749,
		0.558781, 0.489702, 0.669295,
		-0.813564, 0.480234, 0.327856,
		38.569283, 31.577250, 40.346962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151493, 31.092775, 40.817471>,  <39.138775, 31.241087, 40.117462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151493, 31.092775, 40.817471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780163, 31.224533, 40.748524>,  <38.557365, 31.303589, 40.707157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780163, 31.224533, 40.748524>,  <39.151493, 31.092775, 40.817471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780163, 31.224533, 40.748524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368508, -0.754023, 0.543738,
		0.049136, 0.568284, 0.821364,
		-0.928325, 0.329396, -0.172368,
		38.501667, 31.323353, 40.696812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933750, 31.300249, 41.513569>,  <39.151493, 31.092775, 40.817471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933750, 31.300249, 41.513569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605331, 31.197874, 41.309460>,  <38.408279, 31.136448, 41.186993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605331, 31.197874, 41.309460>,  <38.933750, 31.300249, 41.513569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605331, 31.197874, 41.309460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040851, -0.865231, 0.499706,
		-0.569400, 0.431126, 0.699938,
		-0.821045, -0.255939, -0.510275,
		38.359016, 31.121092, 41.156376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633522, 30.909079, 41.930054>,  <38.933750, 31.300249, 41.513569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633522, 30.909079, 41.930054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439194, 30.807615, 41.595478>,  <38.322598, 30.746737, 41.394733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439194, 30.807615, 41.595478>,  <38.633522, 30.909079, 41.930054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439194, 30.807615, 41.595478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025747, -0.952395, 0.303777,
		-0.873679, 0.169117, 0.456162,
		-0.485821, -0.253659, -0.836442,
		38.293449, 30.731518, 41.344543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030739, 30.618340, 42.131599>,  <38.633522, 30.909079, 41.930054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030739, 30.618340, 42.131599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086285, 30.474590, 41.762478>,  <38.119610, 30.388340, 41.541004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086285, 30.474590, 41.762478>,  <38.030739, 30.618340, 42.131599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086285, 30.474590, 41.762478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013316, -0.932426, 0.361116,
		-0.990222, -0.037858, -0.134264,
		0.138862, -0.359373, -0.922804,
		38.127945, 30.366777, 41.485638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611210, 29.989412, 42.045639>,  <38.030739, 30.618340, 42.131599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611210, 29.989412, 42.045639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932632, 29.974693, 41.808002>,  <38.125484, 29.965862, 41.665421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932632, 29.974693, 41.808002>,  <37.611210, 29.989412, 42.045639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932632, 29.974693, 41.808002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283783, -0.853668, 0.436713,
		-0.523229, -0.519516, -0.675526,
		0.803554, -0.036798, -0.594093,
		38.173698, 29.963654, 41.629776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539318, 29.315895, 41.660603>,  <37.611210, 29.989412, 42.045639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539318, 29.315895, 41.660603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910034, 29.455755, 41.715454>,  <38.132465, 29.539671, 41.748367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910034, 29.455755, 41.715454>,  <37.539318, 29.315895, 41.660603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910034, 29.455755, 41.715454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316671, -0.923793, 0.215234,
		0.201938, -0.156051, -0.966886,
		0.926791, 0.349649, 0.137132,
		38.188072, 29.560650, 41.756592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061840, 29.022318, 41.177605>,  <37.539318, 29.315895, 41.660603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061840, 29.022318, 41.177605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272602, 29.142620, 41.495579>,  <38.399059, 29.214802, 41.686363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272602, 29.142620, 41.495579>,  <38.061840, 29.022318, 41.177605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272602, 29.142620, 41.495579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484664, -0.874647, 0.009667,
		0.698193, 0.380181, -0.606621,
		0.526904, 0.300757, 0.794932,
		38.430672, 29.232847, 41.734058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850433, 28.907625, 41.117313>,  <38.061840, 29.022318, 41.177605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850433, 28.907625, 41.117313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785118, 28.919609, 41.511761>,  <38.745930, 28.926800, 41.748428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785118, 28.919609, 41.511761>,  <38.850433, 28.907625, 41.117313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785118, 28.919609, 41.511761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455372, -0.884407, 0.102274,
		0.875198, 0.465754, 0.130774,
		-0.163292, 0.029959, 0.986123,
		38.736130, 28.928596, 41.807598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390354, 28.731230, 40.626839>,  <38.850433, 28.907625, 41.117313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390354, 28.731230, 40.626839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104057, 28.458414, 40.686893>,  <38.932281, 28.294725, 40.722927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104057, 28.458414, 40.686893>,  <39.390354, 28.731230, 40.626839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104057, 28.458414, 40.686893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650180, 0.729246, 0.213226,
		-0.254918, 0.054996, -0.965397,
		-0.715739, -0.682038, 0.150141,
		38.889336, 28.253803, 40.731937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846165, 28.981873, 40.178555>,  <39.390354, 28.731230, 40.626839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846165, 28.981873, 40.178555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702232, 28.762140, 40.480221>,  <38.615871, 28.630301, 40.661221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702232, 28.762140, 40.480221>,  <38.846165, 28.981873, 40.178555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702232, 28.762140, 40.480221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805716, 0.590535, 0.045716,
		-0.470472, -0.591190, -0.655095,
		-0.359830, -0.549329, 0.754162,
		38.594284, 28.597342, 40.706470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794258, 29.570459, 40.724644>,  <38.846165, 28.981873, 40.178555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794258, 29.570459, 40.724644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487869, 29.676640, 40.958851>,  <38.304035, 29.740349, 41.099373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487869, 29.676640, 40.958851>,  <38.794258, 29.570459, 40.724644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487869, 29.676640, 40.958851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001352, 0.910104, -0.414378,
		-0.642875, -0.318193, -0.696753,
		-0.765970, 0.265452, 0.585513,
		38.258080, 29.756275, 41.134506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292107, 29.936415, 40.289253>,  <38.794258, 29.570459, 40.724644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292107, 29.936415, 40.289253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223068, 30.074732, 40.658173>,  <38.181644, 30.157722, 40.879524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223068, 30.074732, 40.658173>,  <38.292107, 29.936415, 40.289253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223068, 30.074732, 40.658173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034205, 0.933683, -0.356462,
		-0.984399, -0.093071, -0.149321,
		-0.172594, 0.345793, 0.922300,
		38.171291, 30.178471, 40.934864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889057, 30.384903, 40.135674>,  <38.292107, 29.936415, 40.289253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889057, 30.384903, 40.135674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999447, 30.491236, 40.505142>,  <38.065681, 30.555037, 40.726822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999447, 30.491236, 40.505142>,  <37.889057, 30.384903, 40.135674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999447, 30.491236, 40.505142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152208, 0.960953, -0.231087,
		-0.949037, -0.076816, 0.305659,
		0.275972, 0.265834, 0.923673,
		38.082237, 30.570986, 40.782246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358688, 30.708176, 40.431629>,  <37.889057, 30.384903, 40.135674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358688, 30.708176, 40.431629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675079, 30.830563, 40.643566>,  <37.864914, 30.903996, 40.770729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675079, 30.830563, 40.643566>,  <37.358688, 30.708176, 40.431629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675079, 30.830563, 40.643566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076302, 0.908550, -0.410749,
		-0.607067, 0.284466, 0.741990,
		0.790979, 0.305968, 0.529845,
		37.912373, 30.922354, 40.802521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297653, 31.484674, 40.376190>,  <37.358688, 30.708176, 40.431629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297653, 31.484674, 40.376190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666817, 31.429205, 40.519855>,  <37.888317, 31.395924, 40.606056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666817, 31.429205, 40.519855>,  <37.297653, 31.484674, 40.376190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666817, 31.429205, 40.519855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293335, 0.857497, -0.422674,
		-0.249371, 0.495448, 0.832073,
		0.922913, -0.138673, 0.359168,
		37.943691, 31.387604, 40.627605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471203, 32.087929, 40.729858>,  <37.297653, 31.484674, 40.376190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471203, 32.087929, 40.729858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813992, 31.923378, 40.605686>,  <38.019665, 31.824646, 40.531185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813992, 31.923378, 40.605686>,  <37.471203, 32.087929, 40.729858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813992, 31.923378, 40.605686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370518, 0.910477, -0.183707,
		0.358212, 0.042412, 0.932677,
		0.856972, -0.411380, -0.310429,
		38.071083, 31.799965, 40.512558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936264, 32.526035, 41.049786>,  <37.471203, 32.087929, 40.729858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936264, 32.526035, 41.049786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111843, 32.337650, 40.743710>,  <38.217190, 32.224621, 40.560062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111843, 32.337650, 40.743710>,  <37.936264, 32.526035, 41.049786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111843, 32.337650, 40.743710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266819, 0.881529, -0.389505,
		0.857983, -0.033197, 0.512604,
		0.438945, -0.470961, -0.765194,
		38.243526, 32.196362, 40.514153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413322, 33.069626, 40.865974>,  <37.936264, 32.526035, 41.049786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413322, 33.069626, 40.865974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512600, 32.805000, 40.582924>,  <38.572166, 32.646225, 40.413094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512600, 32.805000, 40.582924>,  <38.413322, 33.069626, 40.865974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512600, 32.805000, 40.582924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219662, 0.749887, -0.624034,
		0.943476, -0.000556, 0.331439,
		0.248195, -0.661565, -0.707623,
		38.587059, 32.606529, 40.370636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965885, 33.410061, 40.598858>,  <38.413322, 33.069626, 40.865974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965885, 33.410061, 40.598858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894455, 33.133640, 40.318699>,  <38.851597, 32.967789, 40.150604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894455, 33.133640, 40.318699>,  <38.965885, 33.410061, 40.598858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894455, 33.133640, 40.318699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341950, 0.623882, -0.702739,
		0.922595, -0.364994, 0.124895,
		-0.178575, -0.691051, -0.700400,
		38.840881, 32.926327, 40.108578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507324, 33.263783, 40.244740>,  <38.965885, 33.410061, 40.598858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507324, 33.263783, 40.244740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211372, 33.158779, 39.996979>,  <39.033802, 33.095776, 39.848320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211372, 33.158779, 39.996979>,  <39.507324, 33.263783, 40.244740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211372, 33.158779, 39.996979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482843, 0.433907, -0.760650,
		0.468441, -0.861867, -0.194290,
		-0.739883, -0.262508, -0.619406,
		38.989407, 33.080029, 39.811157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849648, 33.127953, 39.638760>,  <39.507324, 33.263783, 40.244740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849648, 33.127953, 39.638760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483036, 33.179634, 39.487347>,  <39.263069, 33.210644, 39.396500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483036, 33.179634, 39.487347>,  <39.849648, 33.127953, 39.638760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483036, 33.179634, 39.487347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381164, 0.568956, -0.728700,
		0.121216, -0.812155, -0.570711,
		-0.916527, 0.129204, -0.378530,
		39.208076, 33.218395, 39.373787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869617, 32.932682, 38.917732>,  <39.849648, 33.127953, 39.638760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869617, 32.932682, 38.917732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582249, 33.204060, 38.979156>,  <39.409828, 33.366886, 39.016010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582249, 33.204060, 38.979156>,  <39.869617, 32.932682, 38.917732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582249, 33.204060, 38.979156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371762, 0.561073, -0.739588,
		-0.587927, -0.474250, -0.655308,
		-0.718425, 0.678443, 0.153562,
		39.366722, 33.407593, 39.025227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683788, 33.174221, 38.304173>,  <39.869617, 32.932682, 38.917732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683788, 33.174221, 38.304173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621319, 33.460125, 38.576855>,  <39.583836, 33.631668, 38.740463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621319, 33.460125, 38.576855>,  <39.683788, 33.174221, 38.304173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621319, 33.460125, 38.576855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327659, 0.688585, -0.646909,
		-0.931799, 0.122337, -0.341737,
		-0.156174, 0.714762, 0.681707,
		39.574467, 33.674553, 38.781368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999474, 33.287086, 37.863815>,  <39.683788, 33.174221, 38.304173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999474, 33.287086, 37.863815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028194, 33.537560, 38.174362>,  <39.045425, 33.687843, 38.360691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028194, 33.537560, 38.174362>,  <38.999474, 33.287086, 37.863815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028194, 33.537560, 38.174362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017227, 0.777481, -0.628670,
		-0.997270, 0.058511, 0.045034,
		0.071798, 0.626178, 0.776367,
		39.049732, 33.725414, 38.407272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465134, 33.802212, 37.738316>,  <38.999474, 33.287086, 37.863815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465134, 33.802212, 37.738316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719780, 33.959991, 38.003384>,  <38.872566, 34.054661, 38.162422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719780, 33.959991, 38.003384>,  <38.465134, 33.802212, 37.738316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719780, 33.959991, 38.003384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003425, 0.857834, -0.513915,
		-0.771175, 0.329435, 0.544759,
		0.636614, 0.394452, 0.662668,
		38.910763, 34.078327, 38.202183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396828, 34.495522, 37.590603>,  <38.465134, 33.802212, 37.738316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396828, 34.495522, 37.590603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687519, 34.509327, 37.865028>,  <38.861935, 34.517612, 38.029682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687519, 34.509327, 37.865028>,  <38.396828, 34.495522, 37.590603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687519, 34.509327, 37.865028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176210, 0.955951, -0.234751,
		-0.663942, 0.291490, 0.688632,
		0.726726, 0.034517, 0.686059,
		38.905537, 34.519684, 38.070847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313530, 35.143478, 38.061176>,  <38.396828, 34.495522, 37.590603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313530, 35.143478, 38.061176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682499, 35.015598, 37.974522>,  <38.903881, 34.938869, 37.922531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682499, 35.015598, 37.974522>,  <38.313530, 35.143478, 38.061176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682499, 35.015598, 37.974522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169655, 0.839399, -0.516359,
		0.346923, 0.439548, 0.828518,
		0.922422, -0.319699, -0.216635,
		38.959225, 34.919689, 37.909531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614902, 35.711952, 37.847214>,  <38.313530, 35.143478, 38.061176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614902, 35.711952, 37.847214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867573, 35.438152, 37.701641>,  <39.019176, 35.273872, 37.614296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867573, 35.438152, 37.701641>,  <38.614902, 35.711952, 37.847214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867573, 35.438152, 37.701641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140009, 0.562462, -0.814883,
		0.762486, 0.463787, 0.451128,
		0.631674, -0.684499, -0.363935,
		39.057076, 35.232803, 37.592461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335754, 36.021378, 37.718376>,  <38.614902, 35.711952, 37.847214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335754, 36.021378, 37.718376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277859, 35.708263, 37.476284>,  <39.243122, 35.520393, 37.331028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277859, 35.708263, 37.476284>,  <39.335754, 36.021378, 37.718376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277859, 35.708263, 37.476284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344267, 0.533612, -0.772488,
		0.927649, -0.320166, 0.192255,
		-0.144735, -0.782785, -0.605227,
		39.234440, 35.473427, 37.294716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812313, 36.043007, 37.202576>,  <39.335754, 36.021378, 37.718376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812313, 36.043007, 37.202576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544937, 35.800426, 37.030342>,  <39.384510, 35.654881, 36.927002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544937, 35.800426, 37.030342>,  <39.812313, 36.043007, 37.202576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544937, 35.800426, 37.030342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004692, 0.575476, -0.817806,
		0.743749, -0.548677, -0.381827,
		-0.668443, -0.606450, -0.430584,
		39.344402, 35.618492, 36.901169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045330, 36.001438, 36.493446>,  <39.812313, 36.043007, 37.202576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045330, 36.001438, 36.493446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663857, 35.883698, 36.518211>,  <39.434971, 35.813053, 36.533070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663857, 35.883698, 36.518211>,  <40.045330, 36.001438, 36.493446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663857, 35.883698, 36.518211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220087, 0.542552, -0.810678,
		0.205037, -0.786761, -0.582209,
		-0.953689, -0.294355, 0.061913,
		39.377750, 35.795391, 36.536785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733078, 35.822319, 36.414791>,  <40.045330, 36.001438, 36.493446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733078, 35.822319, 36.414791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683651, 36.035065, 36.749897>,  <40.653996, 36.162712, 36.950962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683651, 36.035065, 36.749897>,  <40.733078, 35.822319, 36.414791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683651, 36.035065, 36.749897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991573, 0.099294, 0.083211,
		-0.038929, 0.840990, -0.539648,
		-0.123563, 0.531861, 0.837769,
		40.646584, 36.194622, 37.001228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044239, 36.523911, 36.386082>,  <40.733078, 35.822319, 36.414791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044239, 36.523911, 36.386082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032333, 36.381924, 36.759846>,  <41.025188, 36.296734, 36.984104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032333, 36.381924, 36.759846>,  <41.044239, 36.523911, 36.386082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032333, 36.381924, 36.759846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974760, 0.196624, 0.105746,
		-0.221262, 0.913969, 0.340151,
		-0.029766, -0.354963, 0.934406,
		41.023403, 36.275436, 37.040169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354900, 36.928574, 37.153496>,  <41.044239, 36.523911, 36.386082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354900, 36.928574, 37.153496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369045, 36.528835, 37.156368>,  <41.377533, 36.288990, 37.158092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369045, 36.528835, 37.156368>,  <41.354900, 36.928574, 37.153496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369045, 36.528835, 37.156368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943131, 0.035750, 0.330494,
		-0.330535, -0.004915, 0.943781,
		0.035364, -0.999349, 0.007181,
		41.379654, 36.229031, 37.158524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323277, 36.402912, 37.778820>,  <41.354900, 36.928574, 37.153496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323277, 36.402912, 37.778820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566402, 36.329090, 37.469887>,  <41.712280, 36.284798, 37.284527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566402, 36.329090, 37.469887>,  <41.323277, 36.402912, 37.778820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566402, 36.329090, 37.469887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793134, 0.188481, 0.579149,
		0.038684, -0.964579, 0.260941,
		0.607817, -0.184558, -0.772332,
		41.748749, 36.273724, 37.238186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727238, 35.733936, 37.737953>,  <41.323277, 36.402912, 37.778820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727238, 35.733936, 37.737953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917957, 36.029041, 37.546803>,  <42.032391, 36.206104, 37.432114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917957, 36.029041, 37.546803>,  <41.727238, 35.733936, 37.737953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917957, 36.029041, 37.546803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728573, -0.027546, 0.684414,
		0.491773, -0.674495, -0.550649,
		0.476802, 0.737765, -0.477873,
		42.060997, 36.250370, 37.403442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475368, 35.740772, 37.493675>,  <41.727238, 35.733936, 37.737953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475368, 35.740772, 37.493675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385197, 36.113514, 37.607391>,  <42.331093, 36.337158, 37.675621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385197, 36.113514, 37.607391>,  <42.475368, 35.740772, 37.493675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385197, 36.113514, 37.607391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654346, -0.071372, 0.752819,
		0.721811, 0.355735, -0.593668,
		-0.225433, 0.931858, 0.284291,
		42.317566, 36.393070, 37.692680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980537, 36.333725, 37.422413>,  <42.475368, 35.740772, 37.493675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980537, 36.333725, 37.422413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752979, 36.394775, 37.745663>,  <42.616444, 36.431404, 37.939613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752979, 36.394775, 37.745663>,  <42.980537, 36.333725, 37.422413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752979, 36.394775, 37.745663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762715, -0.269617, 0.587854,
		0.307606, 0.950795, 0.036973,
		-0.568897, 0.152627, 0.808122,
		42.582310, 36.440563, 37.988098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371788, 36.679504, 37.883873>,  <42.980537, 36.333725, 37.422413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371788, 36.679504, 37.883873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084221, 36.527016, 38.116364>,  <42.911682, 36.435520, 38.255859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084221, 36.527016, 38.116364>,  <43.371788, 36.679504, 37.883873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084221, 36.527016, 38.116364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674739, -0.181847, 0.715303,
		-0.166995, 0.906422, 0.387959,
		-0.718916, -0.381223, 0.581231,
		42.868546, 36.412647, 38.290733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918915, 36.608307, 38.501995>,  <43.371788, 36.679504, 37.883873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918915, 36.608307, 38.501995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879185, 36.986935, 38.624729>,  <43.855347, 37.214111, 38.698368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879185, 36.986935, 38.624729>,  <43.918915, 36.608307, 38.501995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879185, 36.986935, 38.624729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317507, 0.322390, -0.891770,
		-0.943039, 0.008846, -0.332563,
		-0.099327, 0.946565, 0.306835,
		43.849388, 37.270905, 38.716782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224854, 35.972095, 38.208874>,  <43.918915, 36.608307, 38.501995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224854, 35.972095, 38.208874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567020, 35.937275, 38.413105>,  <44.772320, 35.916382, 38.535645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567020, 35.937275, 38.413105>,  <44.224854, 35.972095, 38.208874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567020, 35.937275, 38.413105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022387, -0.978639, -0.204361,
		0.517459, 0.186244, -0.835194,
		0.855415, -0.087051, 0.510575,
		44.823647, 35.911160, 38.566277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621792, 35.509212, 37.799324>,  <44.224854, 35.972095, 38.208874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621792, 35.509212, 37.799324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771519, 35.513527, 38.170219>,  <44.861355, 35.516117, 38.392757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771519, 35.513527, 38.170219>,  <44.621792, 35.509212, 37.799324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771519, 35.513527, 38.170219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154398, -0.986700, -0.050847,
		0.914357, 0.162197, -0.371003,
		0.374315, 0.010790, 0.927239,
		44.883812, 35.516766, 38.448391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.295536, 35.141186, 37.882683>,  <44.621792, 35.509212, 37.799324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.295536, 35.141186, 37.882683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108707, 35.112892, 38.235237>,  <44.996609, 35.095917, 38.446770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108707, 35.112892, 38.235237>,  <45.295536, 35.141186, 37.882683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108707, 35.112892, 38.235237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208308, -0.977542, 0.031934,
		0.859332, 0.198515, 0.471317,
		-0.467071, -0.070737, 0.881386,
		44.968586, 35.091671, 38.499653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.729767, 34.843552, 38.375572>,  <45.295536, 35.141186, 37.882683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.729767, 34.843552, 38.375572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.357113, 34.734547, 38.471737>,  <45.133522, 34.669144, 38.529434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.357113, 34.734547, 38.471737>,  <45.729767, 34.843552, 38.375572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.357113, 34.734547, 38.471737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241697, -0.958678, -0.150062,
		0.271366, -0.081697, 0.959002,
		-0.931634, -0.272510, 0.240407,
		45.077621, 34.652794, 38.543858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.326153, 34.997833, 37.900623>,  <45.729767, 34.843552, 38.375572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.326153, 34.997833, 37.900623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.230347, 35.377323, 37.983147>,  <46.172863, 35.605015, 38.032661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.230347, 35.377323, 37.983147>,  <46.326153, 34.997833, 37.900623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.230347, 35.377323, 37.983147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943384, 0.277638, -0.181505,
		-0.229476, 0.151151, -0.961506,
		-0.239516, 0.948721, 0.206305,
		46.158493, 35.661938, 38.045036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.446598, 35.502445, 37.283222>,  <46.326153, 34.997833, 37.900623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.446598, 35.502445, 37.283222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.507221, 35.645794, 37.651699>,  <46.543594, 35.731804, 37.872787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.507221, 35.645794, 37.651699>,  <46.446598, 35.502445, 37.283222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.507221, 35.645794, 37.651699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935857, 0.247916, -0.250419,
		-0.318121, 0.900061, -0.297806,
		0.151561, 0.358368, 0.921196,
		46.552689, 35.753304, 37.928059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.692188, 36.223999, 37.104740>,  <46.446598, 35.502445, 37.283222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.692188, 36.223999, 37.104740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.891884, 36.213573, 37.451168>,  <47.011703, 36.207317, 37.659023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.891884, 36.213573, 37.451168>,  <46.692188, 36.223999, 37.104740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.891884, 36.213573, 37.451168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029009, 0.998484, 0.046770,
		-0.865976, -0.048474, 0.497731,
		0.499243, -0.026063, 0.866070,
		47.041656, 36.205753, 37.710991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.436974, 35.721325, 36.538879>,  <46.692188, 36.223999, 37.104740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.436974, 35.721325, 36.538879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.826138, 35.642109, 36.586586>,  <47.059635, 35.594582, 36.615211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.826138, 35.642109, 36.586586>,  <46.436974, 35.721325, 36.538879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.826138, 35.642109, 36.586586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035273, -0.637029, -0.770032,
		0.228470, 0.744967, -0.626758,
		0.972912, -0.198037, 0.119265,
		47.118011, 35.582699, 36.622364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.722122, 35.978550, 35.901909>,  <46.436974, 35.721325, 36.538879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.722122, 35.978550, 35.901909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.907612, 35.679317, 36.091785>,  <47.018906, 35.499779, 36.205711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.907612, 35.679317, 36.091785>,  <46.722122, 35.978550, 35.901909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.907612, 35.679317, 36.091785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200556, -0.433240, -0.878681,
		0.862982, 0.502667, -0.050871,
		0.463723, -0.748083, 0.474691,
		47.046730, 35.454891, 36.234192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.456108, 35.974140, 35.730736>,  <46.722122, 35.978550, 35.901909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.456108, 35.974140, 35.730736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.302303, 35.613354, 35.809330>,  <47.210022, 35.396881, 35.856487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.302303, 35.613354, 35.809330>,  <47.456108, 35.974140, 35.730736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.302303, 35.613354, 35.809330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032906, -0.199326, -0.979381,
		0.922535, -0.383046, 0.046962,
		-0.384508, -0.901967, 0.196490,
		47.186951, 35.342762, 35.868279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.896935, 35.453060, 35.445526>,  <47.456108, 35.974140, 35.730736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.896935, 35.453060, 35.445526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.518726, 35.328171, 35.482418>,  <47.291801, 35.253235, 35.504551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.518726, 35.328171, 35.482418>,  <47.896935, 35.453060, 35.445526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.518726, 35.328171, 35.482418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042359, -0.162891, -0.985734,
		0.322795, -0.935939, 0.140791,
		-0.945520, -0.312226, 0.092226,
		47.235069, 35.234505, 35.510086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.799885, 34.787445, 35.232395>,  <47.896935, 35.453060, 35.445526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.799885, 34.787445, 35.232395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.466793, 35.001026, 35.173794>,  <47.266937, 35.129173, 35.138634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.466793, 35.001026, 35.173794>,  <47.799885, 34.787445, 35.232395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.466793, 35.001026, 35.173794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102568, -0.111253, -0.988485,
		-0.544104, -0.838162, 0.037877,
		-0.832725, 0.533954, -0.146502,
		47.216976, 35.161213, 35.129845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.024899, 37.035000, 27.073565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.785309, 36.809315, 26.846270>,  <37.641556, 36.673904, 26.709892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.785309, 36.809315, 26.846270>,  <38.024899, 37.035000, 27.073565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785309, 36.809315, 26.846270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298506, -0.501149, 0.812246,
		-0.743049, 0.656139, 0.131757,
		-0.598976, -0.564208, -0.568240,
		37.605618, 36.640053, 26.675798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347828, 37.049408, 27.298395>,  <38.024899, 37.035000, 27.073565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347828, 37.049408, 27.298395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.388237, 36.696217, 27.115030>,  <37.412483, 36.484303, 27.005011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.388237, 36.696217, 27.115030>,  <37.347828, 37.049408, 27.298395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388237, 36.696217, 27.115030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453324, -0.451014, 0.768820,
		-0.885602, 0.130138, -0.445840,
		0.101027, -0.882978, -0.458414,
		37.418545, 36.431324, 26.977507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797619, 36.750229, 27.570923>,  <37.347828, 37.049408, 27.298395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797619, 36.750229, 27.570923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.995331, 36.441250, 27.411417>,  <37.113960, 36.255863, 27.315714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.995331, 36.441250, 27.411417>,  <36.797619, 36.750229, 27.570923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995331, 36.441250, 27.411417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207666, -0.550358, 0.808690,
		-0.844132, -0.316913, -0.432444,
		0.494284, -0.772445, -0.398763,
		37.143616, 36.209515, 27.291788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406780, 36.104794, 27.479788>,  <36.797619, 36.750229, 27.570923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406780, 36.104794, 27.479788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.772152, 35.942101, 27.485777>,  <36.991375, 35.844486, 27.489370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.772152, 35.942101, 27.485777>,  <36.406780, 36.104794, 27.479788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772152, 35.942101, 27.485777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280627, -0.602724, 0.746976,
		-0.294794, -0.686508, -0.664683,
		0.913425, -0.406732, 0.014974,
		37.046181, 35.820080, 27.490269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353848, 35.330063, 27.401463>,  <36.406780, 36.104794, 27.479788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353848, 35.330063, 27.401463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.694214, 35.433662, 27.584267>,  <36.898434, 35.495823, 27.693949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.694214, 35.433662, 27.584267>,  <36.353848, 35.330063, 27.401463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694214, 35.433662, 27.584267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220650, -0.613295, 0.758408,
		0.476710, -0.746182, -0.464716,
		0.850918, 0.259001, 0.457008,
		36.949490, 35.511364, 27.721369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729595, 34.742546, 27.620863>,  <36.353848, 35.330063, 27.401463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729595, 34.742546, 27.620863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899982, 35.014423, 27.859715>,  <37.002216, 35.177551, 28.003025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899982, 35.014423, 27.859715>,  <36.729595, 34.742546, 27.620863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899982, 35.014423, 27.859715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045706, -0.642992, 0.764508,
		0.903583, -0.352948, -0.242828,
		0.425968, 0.679698, 0.597128,
		37.027771, 35.218334, 28.038853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023556, 34.257168, 28.030006>,  <36.729595, 34.742546, 27.620863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023556, 34.257168, 28.030006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.097984, 34.592503, 28.234974>,  <37.142643, 34.793701, 28.357954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.097984, 34.592503, 28.234974>,  <37.023556, 34.257168, 28.030006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097984, 34.592503, 28.234974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151544, -0.490801, 0.857991,
		0.970779, -0.237302, 0.035720,
		0.186072, 0.838333, 0.512421,
		37.153805, 34.844002, 28.388700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537090, 34.082844, 28.559378>,  <37.023556, 34.257168, 28.030006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537090, 34.082844, 28.559378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343472, 34.415665, 28.667744>,  <37.227303, 34.615356, 28.732763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343472, 34.415665, 28.667744>,  <37.537090, 34.082844, 28.559378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343472, 34.415665, 28.667744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031478, -0.325960, 0.944860,
		0.874477, 0.448826, 0.183971,
		-0.484045, 0.832049, 0.270916,
		37.198257, 34.665279, 28.749018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831291, 34.299374, 29.176157>,  <37.537090, 34.082844, 28.559378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831291, 34.299374, 29.176157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482548, 34.494030, 29.198233>,  <37.273300, 34.610825, 29.211477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482548, 34.494030, 29.198233>,  <37.831291, 34.299374, 29.176157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482548, 34.494030, 29.198233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106786, -0.298859, 0.948304,
		0.477976, 0.820893, 0.312529,
		-0.871858, 0.486640, 0.055188,
		37.220989, 34.640022, 29.214788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827148, 34.858212, 29.667717>,  <37.831291, 34.299374, 29.176157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827148, 34.858212, 29.667717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.439198, 34.765518, 29.637665>,  <37.206429, 34.709904, 29.619635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.439198, 34.765518, 29.637665>,  <37.827148, 34.858212, 29.667717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439198, 34.765518, 29.637665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044112, -0.136244, 0.989693,
		-0.239579, 0.963192, 0.121917,
		-0.969874, -0.231732, -0.075130,
		37.148235, 34.695999, 29.615126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683830, 35.054600, 30.207567>,  <37.827148, 34.858212, 29.667717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683830, 35.054600, 30.207567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.344643, 34.858360, 30.127302>,  <37.141132, 34.740616, 30.079144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.344643, 34.858360, 30.127302>,  <37.683830, 35.054600, 30.207567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344643, 34.858360, 30.127302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004459, -0.371955, 0.928240,
		-0.530033, 0.788010, 0.313217,
		-0.847965, -0.490601, -0.200663,
		37.090252, 34.711182, 30.067102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292534, 35.260845, 30.716080>,  <37.683830, 35.054600, 30.207567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292534, 35.260845, 30.716080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.148327, 34.909718, 30.589926>,  <37.061802, 34.699043, 30.514235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.148327, 34.909718, 30.589926>,  <37.292534, 35.260845, 30.716080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148327, 34.909718, 30.589926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182224, -0.397889, 0.899154,
		-0.914779, 0.266691, 0.303405,
		-0.360518, -0.877816, -0.315383,
		37.040173, 34.646374, 30.495312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715607, 35.163525, 31.135410>,  <37.292534, 35.260845, 30.716080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715607, 35.163525, 31.135410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.815441, 34.802944, 30.993937>,  <36.875343, 34.586597, 30.909052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.815441, 34.802944, 30.993937>,  <36.715607, 35.163525, 31.135410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815441, 34.802944, 30.993937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046744, -0.376034, 0.925426,
		-0.967223, -0.214442, -0.135991,
		0.249588, -0.901450, -0.353684,
		36.890316, 34.532509, 30.887831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318245, 34.764259, 31.546280>,  <36.715607, 35.163525, 31.135410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318245, 34.764259, 31.546280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.589893, 34.499912, 31.418499>,  <36.752880, 34.341305, 31.341831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.589893, 34.499912, 31.418499>,  <36.318245, 34.764259, 31.546280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589893, 34.499912, 31.418499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028050, -0.411518, 0.910970,
		-0.733494, -0.627616, -0.260931,
		0.679117, -0.660872, -0.319450,
		36.793629, 34.301651, 31.322664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200191, 34.028355, 31.733700>,  <36.318245, 34.764259, 31.546280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200191, 34.028355, 31.733700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590740, 34.009018, 31.649450>,  <36.825069, 33.997417, 31.598900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590740, 34.009018, 31.649450>,  <36.200191, 34.028355, 31.733700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590740, 34.009018, 31.649450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152946, -0.533971, 0.831554,
		-0.152665, -0.844120, -0.513960,
		0.976371, -0.048342, -0.210623,
		36.883652, 33.994514, 31.586264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368969, 33.388943, 31.870655>,  <36.200191, 34.028355, 31.733700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368969, 33.388943, 31.870655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.723034, 33.573097, 31.897581>,  <36.935474, 33.683590, 31.913736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.723034, 33.573097, 31.897581>,  <36.368969, 33.388943, 31.870655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723034, 33.573097, 31.897581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140590, -0.402559, 0.904533,
		0.443530, -0.791197, -0.421056,
		0.885164, 0.460384, 0.067313,
		36.988583, 33.711212, 31.917774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869495, 32.875679, 32.157616>,  <36.368969, 33.388943, 31.870655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869495, 32.875679, 32.157616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033054, 33.232937, 32.232555>,  <37.131191, 33.447292, 32.277519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033054, 33.232937, 32.232555>,  <36.869495, 32.875679, 32.157616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033054, 33.232937, 32.232555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308075, -0.328338, 0.892907,
		0.859007, -0.307390, -0.409412,
		0.408897, 0.893144, 0.187346,
		37.155724, 33.500881, 32.288757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588543, 32.687679, 32.448631>,  <36.869495, 32.875679, 32.157616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588543, 32.687679, 32.448631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495796, 33.066307, 32.538300>,  <37.440147, 33.293484, 32.592098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495796, 33.066307, 32.538300>,  <37.588543, 32.687679, 32.448631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495796, 33.066307, 32.538300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412122, -0.113154, 0.904075,
		0.881133, 0.302005, -0.363865,
		-0.231862, 0.946567, 0.224167,
		37.426239, 33.350277, 32.605549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303734, 32.952457, 32.621292>,  <37.588543, 32.687679, 32.448631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303734, 32.952457, 32.621292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.026924, 33.167236, 32.814285>,  <37.860840, 33.296104, 32.930080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.026924, 33.167236, 32.814285>,  <38.303734, 32.952457, 32.621292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026924, 33.167236, 32.814285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538154, -0.061733, 0.840583,
		0.481135, 0.841353, -0.246240,
		-0.692026, 0.536949, 0.482480,
		37.819317, 33.328320, 32.959030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683708, 33.254932, 33.134003>,  <38.303734, 32.952457, 32.621292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683708, 33.254932, 33.134003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.308796, 33.280632, 33.271046>,  <38.083847, 33.296051, 33.353271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.308796, 33.280632, 33.271046>,  <38.683708, 33.254932, 33.134003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308796, 33.280632, 33.271046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338364, -0.068453, 0.938522,
		0.083752, 0.995583, 0.042420,
		-0.937281, 0.064250, 0.342603,
		38.027611, 33.299908, 33.373825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695457, 33.754932, 33.597786>,  <38.683708, 33.254932, 33.134003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695457, 33.754932, 33.597786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.375282, 33.536133, 33.695839>,  <38.183178, 33.404854, 33.754673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.375282, 33.536133, 33.695839>,  <38.695457, 33.754932, 33.597786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375282, 33.536133, 33.695839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266099, 0.042185, 0.963022,
		-0.537117, 0.836067, 0.111790,
		-0.800436, -0.547003, 0.245135,
		38.135151, 33.372032, 33.769379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327965, 34.045204, 34.136108>,  <38.695457, 33.754932, 33.597786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327965, 34.045204, 34.136108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.247997, 33.653519, 34.149822>,  <38.200016, 33.418507, 34.158051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.247997, 33.653519, 34.149822>,  <38.327965, 34.045204, 34.136108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247997, 33.653519, 34.149822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068322, 0.048841, 0.996467,
		-0.977427, 0.196872, -0.076666,
		-0.199920, -0.979212, 0.034288,
		38.188023, 33.359756, 34.160107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081806, 33.890976, 34.235279>,  <38.327965, 34.045204, 34.136108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081806, 33.890976, 34.235279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369484, 34.124054, 34.386658>,  <39.542091, 34.263901, 34.477486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369484, 34.124054, 34.386658>,  <39.081806, 33.890976, 34.235279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369484, 34.124054, 34.386658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169885, 0.675618, -0.717412,
		-0.673715, 0.451671, 0.584895,
		0.719199, 0.582696, 0.378442,
		39.585243, 34.298862, 34.500191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760082, 34.582233, 34.384613>,  <39.081806, 33.890976, 34.235279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760082, 34.582233, 34.384613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.149002, 34.584393, 34.291138>,  <39.382355, 34.585690, 34.235054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.149002, 34.584393, 34.291138>,  <38.760082, 34.582233, 34.384613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149002, 34.584393, 34.291138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197652, 0.552694, -0.809606,
		0.124787, 0.833367, 0.538450,
		0.972297, 0.005397, -0.233685,
		39.440693, 34.586010, 34.221031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083462, 35.248428, 34.420769>,  <38.760082, 34.582233, 34.384613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083462, 35.248428, 34.420769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.261696, 35.014286, 34.149826>,  <39.368637, 34.873802, 33.987259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.261696, 35.014286, 34.149826>,  <39.083462, 35.248428, 34.420769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261696, 35.014286, 34.149826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047055, 0.740265, -0.670666,
		0.894002, 0.330712, 0.302307,
		0.445585, -0.585352, -0.677360,
		39.395370, 34.838680, 33.946617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350456, 35.784485, 33.916813>,  <39.083462, 35.248428, 34.420769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350456, 35.784485, 33.916813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.428513, 35.433720, 33.741112>,  <39.475346, 35.223259, 33.635693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.428513, 35.433720, 33.741112>,  <39.350456, 35.784485, 33.916813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428513, 35.433720, 33.741112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216978, 0.475362, -0.852614,
		0.956473, 0.071074, 0.283034,
		0.195142, -0.876915, -0.439249,
		39.487057, 35.170647, 33.609337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989208, 35.885689, 33.666565>,  <39.350456, 35.784485, 33.916813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989208, 35.885689, 33.666565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.787697, 35.618053, 33.448013>,  <39.666790, 35.457470, 33.316883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.787697, 35.618053, 33.448013>,  <39.989208, 35.885689, 33.666565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787697, 35.618053, 33.448013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249859, 0.492600, -0.833616,
		0.826911, -0.556471, -0.080980,
		-0.503774, -0.669093, -0.546376,
		39.636566, 35.417324, 33.284100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436058, 35.758762, 33.163109>,  <39.989208, 35.885689, 33.666565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436058, 35.758762, 33.163109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.082237, 35.635345, 33.023182>,  <39.869946, 35.561295, 32.939224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.082237, 35.635345, 33.023182>,  <40.436058, 35.758762, 33.163109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082237, 35.635345, 33.023182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249338, 0.321051, -0.913650,
		0.394215, -0.895390, -0.207052,
		-0.884548, -0.308549, -0.349817,
		39.816872, 35.542782, 32.918236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624962, 35.495026, 32.467812>,  <40.436058, 35.758762, 33.163109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624962, 35.495026, 32.467812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.228046, 35.543205, 32.456059>,  <39.989899, 35.572113, 32.449005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.228046, 35.543205, 32.456059>,  <40.624962, 35.495026, 32.467812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228046, 35.543205, 32.456059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070671, 0.354773, -0.932278,
		-0.101873, -0.927161, -0.360548,
		-0.992284, 0.120454, -0.029382,
		39.930363, 35.579342, 32.447243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514950, 35.297615, 31.779839>,  <40.624962, 35.495026, 32.467812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514950, 35.297615, 31.779839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.192020, 35.491837, 31.913982>,  <39.998260, 35.608368, 31.994469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.192020, 35.491837, 31.913982>,  <40.514950, 35.297615, 31.779839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192020, 35.491837, 31.913982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092845, 0.456708, -0.884758,
		-0.582755, -0.745425, -0.323632,
		-0.807327, 0.485550, 0.335358,
		39.949821, 35.637501, 32.014591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002823, 35.155190, 31.302265>,  <40.514950, 35.297615, 31.779839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002823, 35.155190, 31.302265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.915970, 35.493965, 31.496403>,  <39.863857, 35.697231, 31.612885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.915970, 35.493965, 31.496403>,  <40.002823, 35.155190, 31.302265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915970, 35.493965, 31.496403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020670, 0.501082, -0.865153,
		-0.975924, -0.177818, -0.126305,
		-0.217129, 0.846934, 0.485342,
		39.850830, 35.748047, 31.642006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580776, 35.480152, 30.772186>,  <40.002823, 35.155190, 31.302265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580776, 35.480152, 30.772186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.687077, 35.760658, 31.036793>,  <39.750858, 35.928963, 31.195557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.687077, 35.760658, 31.036793>,  <39.580776, 35.480152, 30.772186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687077, 35.760658, 31.036793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200508, 0.630978, -0.749442,
		-0.942958, 0.331807, 0.027077,
		0.265756, 0.701263, 0.661516,
		39.766804, 35.971039, 31.235249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122402, 35.999050, 30.733677>,  <39.580776, 35.480152, 30.772186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122402, 35.999050, 30.733677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.473171, 36.133915, 30.870691>,  <39.683632, 36.214832, 30.952900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.473171, 36.133915, 30.870691>,  <39.122402, 35.999050, 30.733677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473171, 36.133915, 30.870691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108894, 0.554773, -0.824845,
		-0.468131, 0.760625, 0.449780,
		0.876924, 0.337158, 0.342534,
		39.736248, 36.235062, 30.973452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989693, 36.654919, 30.691622>,  <39.122402, 35.999050, 30.733677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989693, 36.654919, 30.691622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.385864, 36.617531, 30.732239>,  <39.623566, 36.595097, 30.756609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.385864, 36.617531, 30.732239>,  <38.989693, 36.654919, 30.691622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385864, 36.617531, 30.732239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136883, 0.571187, -0.809326,
		0.017649, 0.815480, 0.578516,
		0.990430, -0.093473, 0.101545,
		39.682995, 36.589489, 30.762703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265598, 37.290440, 30.596558>,  <38.989693, 36.654919, 30.691622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265598, 37.290440, 30.596558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.538189, 37.013210, 30.502544>,  <39.701744, 36.846874, 30.446136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.538189, 37.013210, 30.502544>,  <39.265598, 37.290440, 30.596558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538189, 37.013210, 30.502544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242293, 0.516710, -0.821161,
		0.690567, 0.502656, 0.520053,
		0.681478, -0.693071, -0.235033,
		39.742634, 36.805290, 30.432034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749992, 37.648682, 30.300779>,  <39.265598, 37.290440, 30.596558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749992, 37.648682, 30.300779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.830406, 37.270683, 30.197577>,  <39.878654, 37.043884, 30.135654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.830406, 37.270683, 30.197577>,  <39.749992, 37.648682, 30.300779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830406, 37.270683, 30.197577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341160, 0.314437, -0.885855,
		0.918257, 0.090065, 0.385607,
		0.201034, -0.944996, -0.258007,
		39.890717, 36.987183, 30.120174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423653, 37.585442, 30.074007>,  <39.749992, 37.648682, 30.300779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423653, 37.585442, 30.074007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.220871, 37.287228, 29.900951>,  <40.099201, 37.108299, 29.797119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.220871, 37.287228, 29.900951>,  <40.423653, 37.585442, 30.074007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220871, 37.287228, 29.900951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133912, 0.427703, -0.893945,
		0.851509, -0.511122, -0.116989,
		-0.506951, -0.745536, -0.432638,
		40.068787, 37.063568, 29.771160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664272, 37.420605, 29.457552>,  <40.423653, 37.585442, 30.074007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664272, 37.420605, 29.457552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.296986, 37.274525, 29.396233>,  <40.076614, 37.186878, 29.359442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.296986, 37.274525, 29.396233>,  <40.664272, 37.420605, 29.457552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296986, 37.274525, 29.396233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015805, 0.352952, -0.935508,
		0.395755, -0.861425, -0.318316,
		-0.918220, -0.365200, -0.153298,
		40.021519, 37.164967, 29.350243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686176, 37.043449, 28.811361>,  <40.664272, 37.420605, 29.457552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686176, 37.043449, 28.811361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.302021, 37.124313, 28.888086>,  <40.071529, 37.172832, 28.934122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.302021, 37.124313, 28.888086>,  <40.686176, 37.043449, 28.811361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302021, 37.124313, 28.888086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128530, 0.289405, -0.948538,
		-0.247268, -0.935616, -0.251957,
		-0.960385, 0.202159, 0.191815,
		40.013905, 37.184959, 28.945631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386086, 36.641617, 28.452940>,  <40.686176, 37.043449, 28.811361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386086, 36.641617, 28.452940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.091667, 36.906651, 28.508400>,  <39.915016, 37.065670, 28.541676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.091667, 36.906651, 28.508400>,  <40.386086, 36.641617, 28.452940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091667, 36.906651, 28.508400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126475, 0.066611, -0.989731,
		-0.665013, -0.746022, 0.034771,
		-0.736045, 0.662581, 0.138650,
		39.870853, 37.105423, 28.549995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.838608, 36.440727, 27.925385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.744881, 36.806099, 28.058495>,  <39.688644, 37.025322, 28.138361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.744881, 36.806099, 28.058495>,  <39.838608, 36.440727, 27.925385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744881, 36.806099, 28.058495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354346, 0.238506, -0.904187,
		-0.905280, -0.329787, 0.267783,
		-0.234321, 0.913431, 0.332774,
		39.674583, 37.080128, 28.158327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194355, 36.621841, 27.610916>,  <39.838608, 36.440727, 27.925385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194355, 36.621841, 27.610916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.350445, 36.971725, 27.725883>,  <39.444099, 37.181656, 27.794863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.350445, 36.971725, 27.725883>,  <39.194355, 36.621841, 27.610916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350445, 36.971725, 27.725883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433289, 0.449899, -0.780930,
		-0.812396, 0.180202, 0.554563,
		0.390222, 0.874711, 0.287416,
		39.467510, 37.234138, 27.812109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629219, 37.169712, 27.661343>,  <39.194355, 36.621841, 27.610916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629219, 37.169712, 27.661343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.975227, 37.366970, 27.624371>,  <39.182835, 37.485325, 27.602188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.975227, 37.366970, 27.624371>,  <38.629219, 37.169712, 27.661343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975227, 37.366970, 27.624371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396548, 0.559123, -0.728101,
		-0.307377, 0.666479, 0.679209,
		0.865025, 0.493141, -0.092430,
		39.234734, 37.514912, 27.596642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499199, 37.901501, 27.741657>,  <38.629219, 37.169712, 27.661343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499199, 37.901501, 27.741657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.835030, 37.852463, 27.529964>,  <39.036526, 37.823040, 27.402948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.835030, 37.852463, 27.529964>,  <38.499199, 37.901501, 27.741657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835030, 37.852463, 27.529964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337631, 0.645442, -0.685135,
		0.425585, 0.753906, 0.500502,
		0.839573, -0.122598, -0.529232,
		39.086903, 37.815681, 27.371195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577412, 38.542400, 27.392035>,  <38.499199, 37.901501, 27.741657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577412, 38.542400, 27.392035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834888, 38.310863, 27.191792>,  <38.989372, 38.171940, 27.071646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834888, 38.310863, 27.191792>,  <38.577412, 38.542400, 27.392035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834888, 38.310863, 27.191792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338391, 0.371437, -0.864596,
		0.686408, 0.725932, 0.043216,
		0.643689, -0.578842, -0.500606,
		39.027996, 38.137211, 27.041609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007637, 38.930920, 27.120308>,  <38.577412, 38.542400, 27.392035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007637, 38.930920, 27.120308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.069229, 38.610039, 26.889565>,  <39.106186, 38.417511, 26.751118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.069229, 38.610039, 26.889565>,  <39.007637, 38.930920, 27.120308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069229, 38.610039, 26.889565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103580, 0.567500, -0.816833,
		0.982629, 0.185530, 0.004293,
		0.153983, -0.802199, -0.576859,
		39.115425, 38.369381, 26.716507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316238, 39.232143, 26.570858>,  <39.007637, 38.930920, 27.120308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316238, 39.232143, 26.570858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.197861, 38.874908, 26.435318>,  <39.126835, 38.660568, 26.353994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.197861, 38.874908, 26.435318>,  <39.316238, 39.232143, 26.570858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197861, 38.874908, 26.435318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041642, 0.342339, -0.938653,
		0.954298, -0.291895, -0.064122,
		-0.295940, -0.893085, -0.338849,
		39.109077, 38.606983, 26.333664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624092, 39.097492, 25.943516>,  <39.316238, 39.232143, 26.570858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624092, 39.097492, 25.943516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.290668, 38.876709, 25.934387>,  <39.090614, 38.744240, 25.928909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.290668, 38.876709, 25.934387>,  <39.624092, 39.097492, 25.943516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290668, 38.876709, 25.934387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139804, 0.250737, -0.957907,
		0.534445, -0.795283, -0.286170,
		-0.833561, -0.551957, -0.022821,
		39.040600, 38.711121, 25.927542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805698, 38.546230, 25.460825>,  <39.624092, 39.097492, 25.943516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805698, 38.546230, 25.460825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.412048, 38.617016, 25.466179>,  <39.175858, 38.659489, 25.469391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.412048, 38.617016, 25.466179>,  <39.805698, 38.546230, 25.460825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412048, 38.617016, 25.466179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031410, 0.247918, -0.968272,
		-0.174670, -0.952481, -0.249541,
		-0.984126, 0.176966, 0.013386,
		39.116810, 38.670105, 25.470194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557133, 38.157791, 24.885244>,  <39.805698, 38.546230, 25.460825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557133, 38.157791, 24.885244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.286285, 38.424347, 25.010107>,  <39.123779, 38.584282, 25.085024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.286285, 38.424347, 25.010107>,  <39.557133, 38.157791, 24.885244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286285, 38.424347, 25.010107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179127, 0.262178, -0.948249,
		-0.713744, -0.697988, -0.058156,
		-0.677114, 0.666389, 0.312157,
		39.083153, 38.624264, 25.103754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041916, 38.057396, 24.402794>,  <39.557133, 38.157791, 24.885244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041916, 38.057396, 24.402794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.019245, 38.420876, 24.568230>,  <39.005642, 38.638962, 24.667492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.019245, 38.420876, 24.568230>,  <39.041916, 38.057396, 24.402794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019245, 38.420876, 24.568230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140445, 0.402881, -0.904413,
		-0.988465, -0.109348, 0.104787,
		-0.056679, 0.908697, 0.413591,
		39.002243, 38.693485, 24.692307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561417, 38.402328, 23.942221>,  <39.041916, 38.057396, 24.402794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561417, 38.402328, 23.942221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763340, 38.679718, 24.147848>,  <38.884495, 38.846149, 24.271225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763340, 38.679718, 24.147848>,  <38.561417, 38.402328, 23.942221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763340, 38.679718, 24.147848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138318, 0.522843, -0.841133,
		-0.852078, 0.495715, 0.168016,
		0.504807, 0.693471, 0.514069,
		38.914783, 38.887760, 24.302069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426968, 38.974293, 23.614765>,  <38.561417, 38.402328, 23.942221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426968, 38.974293, 23.614765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731785, 39.086433, 23.848242>,  <38.914673, 39.153717, 23.988327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731785, 39.086433, 23.848242>,  <38.426968, 38.974293, 23.614765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731785, 39.086433, 23.848242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313069, 0.629539, -0.711104,
		-0.566817, 0.724626, 0.391964,
		0.762041, 0.280354, 0.583691,
		38.960396, 39.170540, 24.023350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330387, 39.738129, 23.721916>,  <38.426968, 38.974293, 23.614765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330387, 39.738129, 23.721916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.716923, 39.647621, 23.770876>,  <38.948845, 39.593315, 23.800253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.716923, 39.647621, 23.770876>,  <38.330387, 39.738129, 23.721916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716923, 39.647621, 23.770876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232200, 0.562354, -0.793625,
		0.110741, 0.795336, 0.595967,
		0.966343, -0.226271, 0.122401,
		39.006824, 39.579739, 23.807596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601173, 40.284355, 23.626392>,  <38.330387, 39.738129, 23.721916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601173, 40.284355, 23.626392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.932167, 40.060013, 23.636984>,  <39.130764, 39.925407, 23.643339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.932167, 40.060013, 23.636984>,  <38.601173, 40.284355, 23.626392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932167, 40.060013, 23.636984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402786, 0.560094, -0.723919,
		0.391187, 0.609698, 0.689377,
		0.827488, -0.560859, 0.026477,
		39.180412, 39.891754, 23.644926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236702, 40.778896, 23.692472>,  <38.601173, 40.284355, 23.626392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236702, 40.778896, 23.692472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.347000, 40.431717, 23.527246>,  <39.413181, 40.223408, 23.428112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.347000, 40.431717, 23.527246>,  <39.236702, 40.778896, 23.692472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347000, 40.431717, 23.527246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460426, 0.496484, -0.735875,
		0.843784, 0.012731, 0.536532,
		0.275748, -0.867952, -0.413064,
		39.429726, 40.171329, 23.403328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010098, 40.883305, 23.521271>,  <39.236702, 40.778896, 23.692472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010098, 40.883305, 23.521271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.845921, 40.579117, 23.319988>,  <39.747414, 40.396603, 23.199219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.845921, 40.579117, 23.319988>,  <40.010098, 40.883305, 23.521271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845921, 40.579117, 23.319988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358598, 0.372764, -0.855835,
		0.838416, -0.531723, 0.119703,
		-0.410447, -0.760471, -0.503207,
		39.722786, 40.350975, 23.169025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529026, 40.604786, 23.009771>,  <40.010098, 40.883305, 23.521271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529026, 40.604786, 23.009771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.181416, 40.487217, 22.850574>,  <39.972851, 40.416676, 22.755056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.181416, 40.487217, 22.850574>,  <40.529026, 40.604786, 23.009771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181416, 40.487217, 22.850574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219614, 0.491663, -0.842637,
		0.443350, -0.819680, -0.362719,
		-0.869029, -0.293925, -0.397992,
		39.920708, 40.399040, 22.731176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702263, 40.464787, 22.388914>,  <40.529026, 40.604786, 23.009771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702263, 40.464787, 22.388914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.309078, 40.530426, 22.355801>,  <40.073166, 40.569809, 22.335932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.309078, 40.530426, 22.355801>,  <40.702263, 40.464787, 22.388914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309078, 40.530426, 22.355801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133700, 0.329313, -0.934707,
		-0.126126, -0.929851, -0.345643,
		-0.982963, 0.164104, -0.082786,
		40.014191, 40.579659, 22.330965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538944, 40.251820, 21.831442>,  <40.702263, 40.464787, 22.388914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538944, 40.251820, 21.831442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.250557, 40.520111, 21.901114>,  <40.077526, 40.681084, 21.942917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.250557, 40.520111, 21.901114>,  <40.538944, 40.251820, 21.831442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250557, 40.520111, 21.901114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118867, 0.367326, -0.922465,
		-0.682701, -0.644360, -0.344556,
		-0.720965, 0.670724, 0.174181,
		40.034267, 40.721329, 21.953367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146763, 40.251732, 21.204123>,  <40.538944, 40.251820, 21.831442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146763, 40.251732, 21.204123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.028645, 40.583195, 21.394333>,  <39.957775, 40.782074, 21.508459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.028645, 40.583195, 21.394333>,  <40.146763, 40.251732, 21.204123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028645, 40.583195, 21.394333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057384, 0.512206, -0.856944,
		-0.953682, -0.225762, -0.198802,
		-0.295293, 0.828660, 0.475526,
		39.940056, 40.831791, 21.536991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659817, 40.522888, 20.849724>,  <40.146763, 40.251732, 21.204123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659817, 40.522888, 20.849724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.833694, 40.819172, 21.054621>,  <39.938019, 40.996941, 21.177559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.833694, 40.819172, 21.054621>,  <39.659817, 40.522888, 20.849724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833694, 40.819172, 21.054621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168265, 0.491974, -0.854194,
		-0.884720, 0.457504, 0.089221,
		0.434692, 0.740710, 0.512242,
		39.964104, 41.041386, 21.208294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601662, 40.388210, 20.066544>,  <39.659817, 40.522888, 20.849724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601662, 40.388210, 20.066544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.599297, 39.997704, 19.979954>,  <39.597878, 39.763397, 19.927999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.599297, 39.997704, 19.979954>,  <39.601662, 40.388210, 20.066544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599297, 39.997704, 19.979954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914769, 0.082165, -0.395534,
		0.403935, -0.200361, 0.892576,
		-0.005911, -0.976271, -0.216473,
		39.597523, 39.704823, 19.915012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101463, 40.144859, 19.681332>,  <39.601662, 40.388210, 20.066544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101463, 40.144859, 19.681332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.806782, 40.075413, 19.419912>,  <38.629974, 40.033745, 19.263062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.806782, 40.075413, 19.419912>,  <39.101463, 40.144859, 19.681332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806782, 40.075413, 19.419912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665256, 0.012789, 0.746506,
		-0.121247, 0.984730, -0.124920,
		-0.736705, -0.173615, -0.653547,
		38.585770, 40.023327, 19.223848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537735, 40.615570, 19.788378>,  <39.101463, 40.144859, 19.681332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537735, 40.615570, 19.788378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.355125, 40.313522, 19.600174>,  <38.245560, 40.132294, 19.487251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.355125, 40.313522, 19.600174>,  <38.537735, 40.615570, 19.788378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355125, 40.313522, 19.600174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662918, -0.064013, 0.745950,
		-0.593399, 0.652457, -0.471357,
		-0.456527, -0.755118, -0.470511,
		38.218166, 40.086987, 19.459021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743221, 40.763077, 19.788065>,  <38.537735, 40.615570, 19.788378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743221, 40.763077, 19.788065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.780338, 40.368904, 19.731041>,  <37.802608, 40.132401, 19.696827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.780338, 40.368904, 19.731041>,  <37.743221, 40.763077, 19.788065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780338, 40.368904, 19.731041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701772, -0.166294, 0.692721,
		-0.706333, 0.035765, -0.706976,
		0.092791, -0.985427, -0.142558,
		37.808174, 40.073277, 19.688274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144279, 40.403622, 20.017475>,  <37.743221, 40.763077, 19.788065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144279, 40.403622, 20.017475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.362175, 40.069374, 19.989206>,  <37.492912, 39.868824, 19.972244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.362175, 40.069374, 19.989206>,  <37.144279, 40.403622, 20.017475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362175, 40.069374, 19.989206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548477, -0.418763, 0.723748,
		-0.634374, -0.355493, -0.686436,
		0.544741, -0.835621, -0.070673,
		37.525597, 39.818687, 19.968004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622017, 39.905949, 20.126856>,  <37.144279, 40.403622, 20.017475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622017, 39.905949, 20.126856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.976143, 39.737465, 20.205641>,  <37.188618, 39.636375, 20.252913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.976143, 39.737465, 20.205641>,  <36.622017, 39.905949, 20.126856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976143, 39.737465, 20.205641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369856, -0.381179, 0.847295,
		-0.281808, -0.822975, -0.493251,
		0.885320, -0.421206, 0.196963,
		37.241737, 39.611103, 20.264729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395798, 39.197533, 20.332520>,  <36.622017, 39.905949, 20.126856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395798, 39.197533, 20.332520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.756504, 39.281250, 20.483788>,  <36.972927, 39.331482, 20.574549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.756504, 39.281250, 20.483788>,  <36.395798, 39.197533, 20.332520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756504, 39.281250, 20.483788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242777, -0.478615, 0.843793,
		0.357599, -0.852716, -0.380787,
		0.901766, 0.209294, 0.378172,
		37.027035, 39.344036, 20.597239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682438, 38.508896, 20.641930>,  <36.395798, 39.197533, 20.332520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682438, 38.508896, 20.641930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.859264, 38.821407, 20.818197>,  <36.965359, 39.008915, 20.923958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.859264, 38.821407, 20.818197>,  <36.682438, 38.508896, 20.641930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859264, 38.821407, 20.818197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148761, -0.420616, 0.894959,
		0.884563, -0.461182, -0.069715,
		0.442062, 0.781277, 0.440667,
		36.991882, 39.055790, 20.950397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106045, 38.214989, 21.098148>,  <36.682438, 38.508896, 20.641930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106045, 38.214989, 21.098148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.118511, 38.589928, 21.236946>,  <37.125992, 38.814892, 21.320225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.118511, 38.589928, 21.236946>,  <37.106045, 38.214989, 21.098148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118511, 38.589928, 21.236946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150200, -0.338830, 0.928781,
		0.988164, -0.081067, 0.130229,
		0.031168, 0.937349, 0.346996,
		37.127861, 38.871132, 21.341045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598194, 38.254711, 21.611628>,  <37.106045, 38.214989, 21.098148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598194, 38.254711, 21.611628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.363369, 38.569954, 21.685656>,  <37.222473, 38.759098, 21.730072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.363369, 38.569954, 21.685656>,  <37.598194, 38.254711, 21.611628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363369, 38.569954, 21.685656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090271, -0.290911, 0.952482,
		0.804496, 0.542457, 0.241925,
		-0.587058, 0.788107, 0.185068,
		37.187252, 38.806385, 21.741177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981934, 38.673611, 22.142456>,  <37.598194, 38.254711, 21.611628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981934, 38.673611, 22.142456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.587242, 38.738544, 22.143923>,  <37.350426, 38.777504, 22.144802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.587242, 38.738544, 22.143923>,  <37.981934, 38.673611, 22.142456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587242, 38.738544, 22.143923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031240, -0.211946, 0.976782,
		0.159343, 0.963705, 0.214204,
		-0.986729, 0.162336, 0.003666,
		37.291222, 38.787247, 22.145023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930668, 39.000957, 22.702372>,  <37.981934, 38.673611, 22.142456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930668, 39.000957, 22.702372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.568459, 38.841068, 22.645460>,  <37.351131, 38.745136, 22.611313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.568459, 38.841068, 22.645460>,  <37.930668, 39.000957, 22.702372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568459, 38.841068, 22.645460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051689, -0.228906, 0.972075,
		-0.421130, 0.887594, 0.186619,
		-0.905526, -0.399724, -0.142278,
		37.296799, 38.721149, 22.602777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622623, 39.151825, 23.305872>,  <37.930668, 39.000957, 22.702372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622623, 39.151825, 23.305872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375122, 38.873959, 23.159134>,  <37.226620, 38.707237, 23.071091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375122, 38.873959, 23.159134>,  <37.622623, 39.151825, 23.305872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375122, 38.873959, 23.159134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092323, -0.399434, 0.912101,
		-0.780138, 0.598238, 0.183020,
		-0.618758, -0.694668, -0.366845,
		37.189495, 38.665558, 23.049080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978767, 39.158646, 23.728315>,  <37.622623, 39.151825, 23.305872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978767, 39.158646, 23.728315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.030800, 38.803410, 23.551960>,  <37.062019, 38.590267, 23.446148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.030800, 38.803410, 23.551960>,  <36.978767, 39.158646, 23.728315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030800, 38.803410, 23.551960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014963, -0.446372, 0.894722,
		-0.991391, -0.109785, -0.071351,
		0.130077, -0.888088, -0.440886,
		37.069824, 38.536983, 23.419695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386616, 38.741219, 23.984550>,  <36.978767, 39.158646, 23.728315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386616, 38.741219, 23.984550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.669403, 38.491993, 23.850689>,  <36.839073, 38.342457, 23.770372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.669403, 38.491993, 23.850689>,  <36.386616, 38.741219, 23.984550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669403, 38.491993, 23.850689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123110, -0.574369, 0.809286,
		-0.696451, -0.530938, -0.482764,
		0.706965, -0.623061, -0.334656,
		36.881493, 38.305077, 23.750292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242317, 38.128113, 24.296221>,  <36.386616, 38.741219, 23.984550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242317, 38.128113, 24.296221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599556, 38.014080, 24.157019>,  <36.813900, 37.945660, 24.073498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599556, 38.014080, 24.157019>,  <36.242317, 38.128113, 24.296221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599556, 38.014080, 24.157019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081462, -0.658297, 0.748337,
		-0.442428, -0.696686, -0.564699,
		0.893096, -0.285084, -0.348003,
		36.867485, 37.928555, 24.052618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272812, 37.344650, 24.197487>,  <36.242317, 38.128113, 24.296221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272812, 37.344650, 24.197487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647861, 37.468159, 24.261379>,  <36.872890, 37.542263, 24.299715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647861, 37.468159, 24.261379>,  <36.272812, 37.344650, 24.197487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647861, 37.468159, 24.261379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058048, -0.592079, 0.803786,
		0.342762, -0.744380, -0.573073,
		0.937627, 0.308773, 0.159732,
		36.929150, 37.560791, 24.309299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652122, 36.790752, 24.233187>,  <36.272812, 37.344650, 24.197487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652122, 36.790752, 24.233187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.884884, 37.060898, 24.414412>,  <37.024540, 37.222984, 24.523148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.884884, 37.060898, 24.414412>,  <36.652122, 36.790752, 24.233187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884884, 37.060898, 24.414412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113089, -0.618882, 0.777300,
		0.805357, -0.401077, -0.436506,
		0.581903, 0.675368, 0.453063,
		37.059456, 37.263508, 24.550331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263859, 36.505878, 24.453247>,  <36.652122, 36.790752, 24.233187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263859, 36.505878, 24.453247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.245350, 36.808426, 24.714249>,  <37.234245, 36.989956, 24.870850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.245350, 36.808426, 24.714249>,  <37.263859, 36.505878, 24.453247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245350, 36.808426, 24.714249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373612, -0.592692, 0.713534,
		0.926430, 0.276802, -0.255162,
		-0.046275, 0.756371, 0.652504,
		37.231468, 37.035336, 24.910000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782993, 36.341930, 24.870897>,  <37.263859, 36.505878, 24.453247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782993, 36.341930, 24.870897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618462, 36.628563, 25.096222>,  <37.519741, 36.800541, 25.231417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618462, 36.628563, 25.096222>,  <37.782993, 36.341930, 24.870897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618462, 36.628563, 25.096222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390983, -0.419560, 0.819208,
		0.823370, 0.557213, -0.107591,
		-0.411333, 0.716577, 0.563313,
		37.495060, 36.843536, 25.265217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189651, 36.480709, 25.338886>,  <37.782993, 36.341930, 24.870897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189651, 36.480709, 25.338886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.869255, 36.639141, 25.518454>,  <37.677017, 36.734200, 25.626194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.869255, 36.639141, 25.518454>,  <38.189651, 36.480709, 25.338886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869255, 36.639141, 25.518454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275113, -0.422468, 0.863617,
		0.531719, 0.815254, 0.229426,
		-0.800992, 0.396083, 0.448921,
		37.628956, 36.757965, 25.653130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361355, 36.714916, 25.943689>,  <38.189651, 36.480709, 25.338886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361355, 36.714916, 25.943689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969536, 36.669834, 26.010376>,  <37.734444, 36.642784, 26.050388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969536, 36.669834, 26.010376>,  <38.361355, 36.714916, 25.943689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969536, 36.669834, 26.010376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195862, -0.343770, 0.918401,
		-0.046195, 0.932266, 0.358811,
		-0.979543, -0.112703, 0.166715,
		37.675674, 36.636024, 26.060390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.970871, 36.290825, 30.867470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.579292, 36.359005, 30.822557>,  <40.344345, 36.399914, 30.795610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.579292, 36.359005, 30.822557>,  <40.970871, 36.290825, 30.867470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579292, 36.359005, 30.822557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128502, -0.087282, 0.987861,
		0.158581, 0.981493, 0.107348,
		-0.978948, 0.170450, -0.112282,
		40.285606, 36.410141, 30.788874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794994, 36.822136, 31.388830>,  <40.970871, 36.290825, 30.867470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794994, 36.822136, 31.388830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.473003, 36.620018, 31.264446>,  <40.279808, 36.498749, 31.189816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.473003, 36.620018, 31.264446>,  <40.794994, 36.822136, 31.388830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473003, 36.620018, 31.264446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349081, -0.020441, 0.936870,
		-0.479749, 0.862706, -0.159933,
		-0.804974, -0.505292, -0.310961,
		40.231510, 36.468430, 31.171158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306427, 36.911457, 31.928202>,  <40.794994, 36.822136, 31.388830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306427, 36.911457, 31.928202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.130566, 36.618626, 31.720060>,  <40.025047, 36.442928, 31.595175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.130566, 36.618626, 31.720060>,  <40.306427, 36.911457, 31.928202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130566, 36.618626, 31.720060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467652, -0.308039, 0.828501,
		-0.766816, 0.607597, -0.206928,
		-0.439653, -0.732078, -0.520353,
		39.998669, 36.399002, 31.563955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628380, 36.885380, 32.234924>,  <40.306427, 36.911457, 31.928202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628380, 36.885380, 32.234924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.687515, 36.533031, 32.055058>,  <39.722996, 36.321621, 31.947136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.687515, 36.533031, 32.055058>,  <39.628380, 36.885380, 32.234924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687515, 36.533031, 32.055058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445761, -0.465213, 0.764771,
		-0.882860, 0.087384, -0.461435,
		0.147837, -0.880875, -0.449670,
		39.731865, 36.268768, 31.920156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033878, 36.446953, 32.405746>,  <39.628380, 36.885380, 32.234924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033878, 36.446953, 32.405746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.294727, 36.174358, 32.272896>,  <39.451237, 36.010799, 32.193188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.294727, 36.174358, 32.272896>,  <39.033878, 36.446953, 32.405746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294727, 36.174358, 32.272896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190115, -0.571103, 0.798559,
		-0.733886, -0.457618, -0.501992,
		0.652125, -0.681488, -0.332125,
		39.490364, 35.969913, 32.173260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707897, 35.854321, 32.364365>,  <39.033878, 36.446953, 32.405746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707897, 35.854321, 32.364365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.096653, 35.769783, 32.405880>,  <39.329906, 35.719063, 32.430790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.096653, 35.769783, 32.405880>,  <38.707897, 35.854321, 32.364365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096653, 35.769783, 32.405880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214654, -0.614168, 0.759422,
		-0.096752, -0.760351, -0.642266,
		0.971886, -0.211341, 0.103790,
		39.388218, 35.706379, 32.437016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653423, 35.084240, 32.542030>,  <38.707897, 35.854321, 32.364365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653423, 35.084240, 32.542030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.008694, 35.228981, 32.655315>,  <39.221855, 35.315826, 32.723286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.008694, 35.228981, 32.655315>,  <38.653423, 35.084240, 32.542030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008694, 35.228981, 32.655315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014637, -0.638307, 0.769643,
		0.459278, -0.679430, -0.572222,
		0.888172, 0.361855, 0.283215,
		39.275146, 35.337536, 32.740280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162251, 34.498016, 32.544483>,  <38.653423, 35.084240, 32.542030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162251, 34.498016, 32.544483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.292973, 34.793976, 32.779686>,  <39.371407, 34.971550, 32.920807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.292973, 34.793976, 32.779686>,  <39.162251, 34.498016, 32.544483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292973, 34.793976, 32.779686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254169, -0.668054, 0.699358,
		0.910272, -0.079101, -0.406383,
		0.326806, 0.739896, 0.588006,
		39.391014, 35.015945, 32.956089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642223, 34.073738, 32.901176>,  <39.162251, 34.498016, 32.544483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642223, 34.073738, 32.901176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.618896, 34.406830, 33.121418>,  <39.604900, 34.606686, 33.253563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.618896, 34.406830, 33.121418>,  <39.642223, 34.073738, 32.901176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618896, 34.406830, 33.121418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366181, -0.495258, 0.787801,
		0.928715, 0.247562, -0.276047,
		-0.058315, 0.832726, 0.550606,
		39.601402, 34.656647, 33.286598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237915, 34.128494, 33.260212>,  <39.642223, 34.073738, 32.901176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237915, 34.128494, 33.260212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.966919, 34.337765, 33.467014>,  <39.804321, 34.463329, 33.591095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.966919, 34.337765, 33.467014>,  <40.237915, 34.128494, 33.260212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966919, 34.337765, 33.467014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314393, -0.429474, 0.846587,
		0.664955, 0.736096, 0.126480,
		-0.677489, 0.523178, 0.517004,
		39.763672, 34.494717, 33.622116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626587, 34.298622, 33.828712>,  <40.237915, 34.128494, 33.260212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626587, 34.298622, 33.828712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.261467, 34.391125, 33.963360>,  <40.042393, 34.446625, 34.044147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.261467, 34.391125, 33.963360>,  <40.626587, 34.298622, 33.828712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261467, 34.391125, 33.963360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252847, -0.327259, 0.910478,
		0.320713, 0.916200, 0.240251,
		-0.912804, 0.231256, 0.336614,
		39.987625, 34.460503, 34.064342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734768, 34.730759, 34.484863>,  <40.626587, 34.298622, 33.828712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734768, 34.730759, 34.484863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.367363, 34.572987, 34.495872>,  <40.146919, 34.478325, 34.502480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.367363, 34.572987, 34.495872>,  <40.734768, 34.730759, 34.484863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367363, 34.572987, 34.495872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147817, -0.277991, 0.949142,
		-0.366715, 0.875871, 0.313642,
		-0.918515, -0.394426, 0.027525,
		40.091808, 34.454659, 34.504131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401485, 35.022083, 35.147572>,  <40.734768, 34.730759, 34.484863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401485, 35.022083, 35.147572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.290180, 34.665989, 35.003326>,  <40.223396, 34.452332, 34.916779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.290180, 34.665989, 35.003326>,  <40.401485, 35.022083, 35.147572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290180, 34.665989, 35.003326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011960, -0.378627, 0.925472,
		-0.960432, 0.253208, 0.116004,
		-0.278260, -0.890240, -0.360617,
		40.206703, 34.398918, 34.895142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321075, 34.883171, 35.857090>,  <40.401485, 35.022083, 35.147572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321075, 34.883171, 35.857090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.220116, 34.932095, 36.241035>,  <40.159542, 34.961449, 36.471401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.220116, 34.932095, 36.241035>,  <40.321075, 34.883171, 35.857090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220116, 34.932095, 36.241035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352665, 0.912120, -0.208961,
		-0.901068, -0.391251, -0.187081,
		-0.252397, 0.122312, 0.959863,
		40.144398, 34.968788, 36.528996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951515, 35.579620, 35.844845>,  <40.321075, 34.883171, 35.857090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951515, 35.579620, 35.844845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.596676, 35.704777, 35.980587>,  <39.383774, 35.779869, 36.062035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.596676, 35.704777, 35.980587>,  <39.951515, 35.579620, 35.844845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596676, 35.704777, 35.980587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194000, 0.414388, -0.889183,
		-0.418843, -0.854624, -0.306900,
		-0.887094, 0.312889, 0.339360,
		39.330547, 35.798645, 36.082394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578869, 35.692268, 35.197289>,  <39.951515, 35.579620, 35.844845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578869, 35.692268, 35.197289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.343819, 35.861042, 35.473454>,  <39.202789, 35.962307, 35.639153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.343819, 35.861042, 35.473454>,  <39.578869, 35.692268, 35.197289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343819, 35.861042, 35.473454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445629, 0.543444, -0.711395,
		-0.675362, -0.725702, -0.131315,
		-0.587623, 0.421931, 0.690415,
		39.167530, 35.987621, 35.680576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848881, 35.700718, 34.943184>,  <39.578869, 35.692268, 35.197289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848881, 35.700718, 34.943184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.888893, 35.986275, 35.220413>,  <38.912899, 36.157608, 35.386749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.888893, 35.986275, 35.220413>,  <38.848881, 35.700718, 34.943184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888893, 35.986275, 35.220413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389301, 0.669116, -0.633031,
		-0.915663, -0.206491, 0.344852,
		0.100031, 0.713895, 0.693071,
		38.918903, 36.200443, 35.428333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219913, 36.036259, 34.915462>,  <38.848881, 35.700718, 34.943184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219913, 36.036259, 34.915462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.459316, 36.313950, 35.075382>,  <38.602959, 36.480564, 35.171333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.459316, 36.313950, 35.075382>,  <38.219913, 36.036259, 34.915462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459316, 36.313950, 35.075382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441673, 0.702300, -0.558301,
		-0.668363, 0.157570, 0.726955,
		0.598512, 0.694224, 0.399797,
		38.638870, 36.522217, 35.195320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836525, 36.539730, 35.330444>,  <38.219913, 36.036259, 34.915462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836525, 36.539730, 35.330444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.174385, 36.711632, 35.202774>,  <38.377102, 36.814774, 35.126171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.174385, 36.711632, 35.202774>,  <37.836525, 36.539730, 35.330444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174385, 36.711632, 35.202774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535249, 0.668660, -0.516141,
		-0.008392, 0.606800, 0.794811,
		0.844653, 0.429753, -0.319177,
		38.427780, 36.840557, 35.107021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730618, 37.293282, 35.377060>,  <37.836525, 36.539730, 35.330444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730618, 37.293282, 35.377060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.050446, 37.255829, 35.139771>,  <38.242344, 37.233356, 34.997395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.050446, 37.255829, 35.139771>,  <37.730618, 37.293282, 35.377060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050446, 37.255829, 35.139771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398110, 0.656934, -0.640270,
		0.449661, 0.748111, 0.487990,
		0.799571, -0.093631, -0.593228,
		38.290318, 37.227741, 34.961803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756599, 37.930126, 35.146679>,  <37.730618, 37.293282, 35.377060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756599, 37.930126, 35.146679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.002361, 37.737206, 34.896915>,  <38.149818, 37.621452, 34.747059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.002361, 37.737206, 34.896915>,  <37.756599, 37.930126, 35.146679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002361, 37.737206, 34.896915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321300, 0.569860, -0.756324,
		0.720604, 0.665314, 0.195162,
		0.614408, -0.482304, -0.624408,
		38.186684, 37.592514, 34.709595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228516, 38.402435, 34.960209>,  <37.756599, 37.930126, 35.146679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228516, 38.402435, 34.960209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.257088, 38.120701, 34.677704>,  <38.274231, 37.951660, 34.508202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.257088, 38.120701, 34.677704>,  <38.228516, 38.402435, 34.960209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257088, 38.120701, 34.677704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067042, 0.703080, -0.707943,
		0.995190, 0.097919, 0.003003,
		0.071432, -0.704337, -0.706263,
		38.278519, 37.909401, 34.465824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743275, 38.665924, 34.445103>,  <38.228516, 38.402435, 34.960209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743275, 38.665924, 34.445103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.523815, 38.383640, 34.265793>,  <38.392139, 38.214268, 34.158207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.523815, 38.383640, 34.265793>,  <38.743275, 38.665924, 34.445103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523815, 38.383640, 34.265793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145955, 0.447095, -0.882499,
		0.823212, -0.549612, -0.142297,
		-0.548653, -0.705714, -0.448272,
		38.359219, 38.171925, 34.131310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183193, 38.472404, 33.947071>,  <38.743275, 38.665924, 34.445103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183193, 38.472404, 33.947071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.804707, 38.376713, 33.859940>,  <38.577614, 38.319298, 33.807659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.804707, 38.376713, 33.859940>,  <39.183193, 38.472404, 33.947071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804707, 38.376713, 33.859940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069958, 0.506066, -0.859653,
		0.315886, -0.828655, -0.462111,
		-0.946214, -0.239224, -0.217830,
		38.520844, 38.304947, 33.794590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104870, 38.243706, 33.303280>,  <39.183193, 38.472404, 33.947071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104870, 38.243706, 33.303280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.740242, 38.394554, 33.368797>,  <38.521465, 38.485062, 33.408108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.740242, 38.394554, 33.368797>,  <39.104870, 38.243706, 33.303280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740242, 38.394554, 33.368797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009554, 0.417702, -0.908534,
		-0.411041, -0.826625, -0.384366,
		-0.911567, 0.377117, 0.163795,
		38.466770, 38.507690, 33.417934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929546, 38.189049, 32.717587>,  <39.104870, 38.243706, 33.303280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929546, 38.189049, 32.717587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.645859, 38.412930, 32.889046>,  <38.475647, 38.547256, 32.991920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.645859, 38.412930, 32.889046>,  <38.929546, 38.189049, 32.717587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645859, 38.412930, 32.889046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134126, 0.489792, -0.861460,
		-0.692109, -0.668459, -0.272301,
		-0.709221, 0.559702, 0.428647,
		38.433094, 38.580841, 33.017639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336113, 38.140038, 32.320450>,  <38.929546, 38.189049, 32.717587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336113, 38.140038, 32.320450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.288570, 38.478058, 32.528976>,  <38.260044, 38.680870, 32.654091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.288570, 38.478058, 32.528976>,  <38.336113, 38.140038, 32.320450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288570, 38.478058, 32.528976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018199, 0.523094, -0.852081,
		-0.992745, -0.110762, -0.046794,
		-0.118856, 0.845047, 0.521315,
		38.252914, 38.731571, 32.685371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827431, 38.465088, 31.970114>,  <38.336113, 38.140038, 32.320450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827431, 38.465088, 31.970114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.035252, 38.759697, 32.143364>,  <38.159943, 38.936462, 32.247314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.035252, 38.759697, 32.143364>,  <37.827431, 38.465088, 31.970114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035252, 38.759697, 32.143364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063650, 0.538863, -0.839986,
		-0.852066, 0.408847, 0.326846,
		0.519550, 0.736527, 0.433123,
		38.191116, 38.980656, 32.273300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122314, 38.721390, 32.122639>,  <37.827431, 38.465088, 31.970114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122314, 38.721390, 32.122639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.739693, 38.783710, 32.024067>,  <36.510120, 38.821102, 31.964924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.739693, 38.783710, 32.024067>,  <37.122314, 38.721390, 32.122639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739693, 38.783710, 32.024067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291549, -0.514815, 0.806204,
		-0.001256, 0.843025, 0.537873,
		-0.956555, 0.155804, -0.246429,
		36.452724, 38.830452, 31.950138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801815, 38.938740, 32.755890>,  <37.122314, 38.721390, 32.122639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801815, 38.938740, 32.755890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.483021, 38.828346, 32.540985>,  <36.291744, 38.762112, 32.412041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.483021, 38.828346, 32.540985>,  <36.801815, 38.938740, 32.755890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483021, 38.828346, 32.540985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378955, -0.464180, 0.800581,
		-0.470335, 0.841647, 0.265358,
		-0.796981, -0.275982, -0.537266,
		36.243927, 38.745552, 32.379807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290943, 38.921093, 33.228767>,  <36.801815, 38.938740, 32.755890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290943, 38.921093, 33.228767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.151375, 38.680267, 32.941498>,  <36.067635, 38.535770, 32.769135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.151375, 38.680267, 32.941498>,  <36.290943, 38.921093, 33.228767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151375, 38.680267, 32.941498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376477, -0.611729, 0.695739,
		-0.858208, 0.513132, -0.013221,
		-0.348918, -0.602066, -0.718173,
		36.046700, 38.499649, 32.726048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552708, 38.772301, 33.375755>,  <36.290943, 38.921093, 33.228767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552708, 38.772301, 33.375755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.690971, 38.483574, 33.135921>,  <35.773930, 38.310337, 32.992023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.690971, 38.483574, 33.135921>,  <35.552708, 38.772301, 33.375755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690971, 38.483574, 33.135921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308232, -0.690852, 0.654001,
		-0.886293, -0.041249, -0.461285,
		0.345656, -0.721819, -0.599582,
		35.794670, 38.267029, 32.956047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009392, 38.453526, 33.415897>,  <35.552708, 38.772301, 33.375755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009392, 38.453526, 33.415897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.305237, 38.210964, 33.299103>,  <35.482742, 38.065430, 33.229027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.305237, 38.210964, 33.299103>,  <35.009392, 38.453526, 33.415897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305237, 38.210964, 33.299103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211977, -0.621632, 0.754082,
		-0.638789, -0.495827, -0.588306,
		0.739604, -0.606406, -0.291988,
		35.527119, 38.029045, 33.211510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729733, 37.868382, 33.361412>,  <35.009392, 38.453526, 33.415897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729733, 37.868382, 33.361412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.113171, 37.768414, 33.416019>,  <35.343235, 37.708431, 33.448784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.113171, 37.768414, 33.416019>,  <34.729733, 37.868382, 33.361412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113171, 37.768414, 33.416019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278316, -0.720694, 0.634933,
		-0.060296, -0.646638, -0.760410,
		0.958595, -0.249918, 0.136515,
		35.400749, 37.693439, 33.456974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787643, 37.178768, 33.307461>,  <34.729733, 37.868382, 33.361412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787643, 37.178768, 33.307461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.109097, 37.265663, 33.529087>,  <35.301968, 37.317799, 33.662064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.109097, 37.265663, 33.529087>,  <34.787643, 37.178768, 33.307461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109097, 37.265663, 33.529087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181422, -0.797259, 0.575729,
		0.566799, -0.563194, -0.601291,
		0.803632, 0.217235, 0.554062,
		35.350185, 37.330833, 33.695305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169357, 36.452511, 33.379543>,  <34.787643, 37.178768, 33.307461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169357, 36.452511, 33.379543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.336361, 36.698616, 33.647015>,  <35.436565, 36.846279, 33.807499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.336361, 36.698616, 33.647015>,  <35.169357, 36.452511, 33.379543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336361, 36.698616, 33.647015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028253, -0.726744, 0.686327,
		0.908231, -0.305443, -0.286042,
		0.417514, 0.615262, 0.668682,
		35.461617, 36.883194, 33.847618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649216, 36.097210, 33.720833>,  <35.169357, 36.452511, 33.379543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649216, 36.097210, 33.720833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.647793, 36.388954, 33.994480>,  <35.646938, 36.563999, 34.158669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.647793, 36.388954, 33.994480>,  <35.649216, 36.097210, 33.720833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647793, 36.388954, 33.994480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052754, -0.683310, 0.728220,
		0.998601, -0.033500, 0.040907,
		-0.003557, 0.729360, 0.684121,
		35.646725, 36.607761, 34.199715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242905, 36.023918, 34.160511>,  <35.649216, 36.097210, 33.720833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242905, 36.023918, 34.160511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.975658, 36.230949, 34.374325>,  <35.815311, 36.355167, 34.502613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.975658, 36.230949, 34.374325>,  <36.242905, 36.023918, 34.160511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975658, 36.230949, 34.374325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092018, -0.655417, 0.749641,
		0.738343, 0.550036, 0.390270,
		-0.668119, 0.517580, 0.534535,
		35.775223, 36.386223, 34.534687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573154, 36.251640, 34.795574>,  <36.242905, 36.023918, 34.160511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573154, 36.251640, 34.795574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.177429, 36.243958, 34.853386>,  <35.939995, 36.239349, 34.888073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.177429, 36.243958, 34.853386>,  <36.573154, 36.251640, 34.795574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177429, 36.243958, 34.853386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130034, -0.564556, 0.815088,
		0.065940, 0.825172, 0.561020,
		-0.989314, -0.019205, 0.144527,
		35.880634, 36.238197, 34.896744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634224, 36.250610, 35.508926>,  <36.573154, 36.251640, 34.795574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634224, 36.250610, 35.508926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.270016, 36.160107, 35.370495>,  <36.051491, 36.105804, 35.287437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.270016, 36.160107, 35.370495>,  <36.634224, 36.250610, 35.508926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270016, 36.160107, 35.370495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118957, -0.658257, 0.743335,
		-0.395993, 0.717986, 0.572438,
		-0.910516, -0.226260, -0.346074,
		35.996861, 36.092228, 35.266674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.822132, 41.415161, 29.243177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549248, 41.148052, 29.124073>,  <36.385517, 40.987785, 29.052610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549248, 41.148052, 29.124073>,  <36.822132, 41.415161, 29.243177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549248, 41.148052, 29.124073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089080, -0.328305, 0.940362,
		-0.725709, 0.668050, 0.164487,
		-0.682211, -0.667776, -0.297763,
		36.344585, 40.947720, 29.034744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176216, 41.507599, 29.617352>,  <36.822132, 41.415161, 29.243177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176216, 41.507599, 29.617352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156746, 41.139286, 29.462542>,  <36.145065, 40.918297, 29.369656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156746, 41.139286, 29.462542>,  <36.176216, 41.507599, 29.617352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156746, 41.139286, 29.462542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152951, -0.376041, 0.913893,
		-0.987035, 0.103677, -0.122532,
		-0.048673, -0.920785, -0.387023,
		36.142143, 40.863052, 29.346436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797421, 41.106155, 30.177105>,  <36.176216, 41.507599, 29.617352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797421, 41.106155, 30.177105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966316, 40.837894, 29.933155>,  <36.067654, 40.676937, 29.786785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966316, 40.837894, 29.933155>,  <35.797421, 41.106155, 30.177105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966316, 40.837894, 29.933155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137615, -0.712414, 0.688134,
		-0.895980, -0.206627, -0.393097,
		0.422235, -0.670650, -0.609874,
		36.092987, 40.636700, 29.750193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328903, 40.586262, 30.020708>,  <35.797421, 41.106155, 30.177105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328903, 40.586262, 30.020708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698681, 40.435379, 29.998343>,  <35.920547, 40.344849, 29.984924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698681, 40.435379, 29.998343>,  <35.328903, 40.586262, 30.020708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698681, 40.435379, 29.998343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221211, -0.649912, 0.727104,
		-0.310605, -0.659796, -0.684247,
		0.924441, -0.377205, -0.055912,
		35.976013, 40.322216, 29.981569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304607, 39.868134, 29.985481>,  <35.328903, 40.586262, 30.020708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304607, 39.868134, 29.985481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687168, 39.917011, 30.091587>,  <35.916706, 39.946339, 30.155251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687168, 39.917011, 30.091587>,  <35.304607, 39.868134, 29.985481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687168, 39.917011, 30.091587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074829, -0.775421, 0.626995,
		0.282309, -0.619508, -0.732469,
		0.956401, 0.122197, 0.265266,
		35.974087, 39.953671, 30.171167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631332, 39.225315, 30.015583>,  <35.304607, 39.868134, 29.985481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631332, 39.225315, 30.015583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876778, 39.453667, 30.233782>,  <36.024044, 39.590679, 30.364702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876778, 39.453667, 30.233782>,  <35.631332, 39.225315, 30.015583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876778, 39.453667, 30.233782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191226, -0.777726, 0.598811,
		0.766100, -0.263126, -0.586392,
		0.613616, 0.570882, 0.545499,
		36.060863, 39.624931, 30.397432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084934, 38.782822, 30.320284>,  <35.631332, 39.225315, 30.015583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084934, 38.782822, 30.320284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198460, 39.099693, 30.536392>,  <36.266575, 39.289818, 30.666058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198460, 39.099693, 30.536392>,  <36.084934, 38.782822, 30.320284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198460, 39.099693, 30.536392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086092, -0.582218, 0.808462,
		0.955007, -0.182940, -0.233443,
		0.283814, 0.792184, 0.540272,
		36.283604, 39.337349, 30.698473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655079, 38.520351, 30.708996>,  <36.084934, 38.782822, 30.320284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655079, 38.520351, 30.708996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524284, 38.851532, 30.891239>,  <36.445808, 39.050240, 31.000586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524284, 38.851532, 30.891239>,  <36.655079, 38.520351, 30.708996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524284, 38.851532, 30.891239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056881, -0.463992, 0.884012,
		0.943315, 0.314977, 0.104625,
		-0.326988, 0.827950, 0.455607,
		36.426189, 39.099918, 31.027922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056538, 38.539143, 31.272886>,  <36.655079, 38.520351, 30.708996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056538, 38.539143, 31.272886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718891, 38.735241, 31.359730>,  <36.516304, 38.852901, 31.411835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718891, 38.735241, 31.359730>,  <37.056538, 38.539143, 31.272886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718891, 38.735241, 31.359730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051171, -0.329414, 0.942798,
		0.533720, 0.806936, 0.252975,
		-0.844112, 0.490245, 0.217106,
		36.465656, 38.882313, 31.424862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578991, 39.069180, 31.642414>,  <37.056538, 38.539143, 31.272886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578991, 39.069180, 31.642414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891636, 39.210407, 31.848104>,  <38.079224, 39.295143, 31.971518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891636, 39.210407, 31.848104>,  <37.578991, 39.069180, 31.642414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891636, 39.210407, 31.848104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142024, 0.702003, -0.697869,
		-0.607382, 0.618495, 0.498550,
		0.781611, 0.353067, 0.514225,
		38.126118, 39.316326, 32.002373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564041, 39.707581, 31.388409>,  <37.578991, 39.069180, 31.642414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564041, 39.707581, 31.388409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936794, 39.658852, 31.525089>,  <38.160446, 39.629616, 31.607098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936794, 39.658852, 31.525089>,  <37.564041, 39.707581, 31.388409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936794, 39.658852, 31.525089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330122, 0.675273, -0.659565,
		-0.150395, 0.727439, 0.669488,
		0.931880, -0.121818, 0.341701,
		38.216358, 39.622307, 31.627600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834629, 40.406158, 31.403297>,  <37.564041, 39.707581, 31.388409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834629, 40.406158, 31.403297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156590, 40.174259, 31.453928>,  <38.349766, 40.035118, 31.484306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156590, 40.174259, 31.453928>,  <37.834629, 40.406158, 31.403297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156590, 40.174259, 31.453928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499191, 0.546198, -0.672664,
		0.320842, 0.604614, 0.729042,
		0.804903, -0.579750, 0.126575,
		38.398060, 40.000336, 31.491899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301636, 40.879105, 31.613716>,  <37.834629, 40.406158, 31.403297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301636, 40.879105, 31.613716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507431, 40.574024, 31.456949>,  <38.630909, 40.390976, 31.362888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507431, 40.574024, 31.456949>,  <38.301636, 40.879105, 31.613716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507431, 40.574024, 31.456949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429958, 0.624889, -0.651652,
		0.741918, 0.166756, 0.649422,
		0.514484, -0.762697, -0.391919,
		38.661777, 40.345215, 31.339375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078072, 41.096401, 31.676813>,  <38.301636, 40.879105, 31.613716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078072, 41.096401, 31.676813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053116, 40.811234, 31.397429>,  <39.038143, 40.640133, 31.229797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053116, 40.811234, 31.397429>,  <39.078072, 41.096401, 31.676813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053116, 40.811234, 31.397429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461303, 0.599990, -0.653615,
		0.885047, -0.362979, 0.291442,
		-0.062386, -0.712922, -0.698462,
		39.034401, 40.597359, 31.187889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792542, 41.034538, 31.308964>,  <39.078072, 41.096401, 31.676813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792542, 41.034538, 31.308964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531776, 40.862370, 31.059246>,  <39.375317, 40.759068, 30.909416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531776, 40.862370, 31.059246>,  <39.792542, 41.034538, 31.308964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531776, 40.862370, 31.059246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482379, 0.399828, -0.779389,
		0.585078, -0.809242, -0.053026,
		-0.651916, -0.430424, -0.624292,
		39.336201, 40.733242, 30.871958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295471, 40.810215, 30.765482>,  <39.792542, 41.034538, 31.308964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295471, 40.810215, 30.765482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922569, 40.795166, 30.621544>,  <39.698830, 40.786137, 30.535181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922569, 40.795166, 30.621544>,  <40.295471, 40.810215, 30.765482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922569, 40.795166, 30.621544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332671, 0.301883, -0.893419,
		0.142239, -0.952602, -0.268917,
		-0.932254, -0.037618, -0.359843,
		39.642895, 40.783882, 30.513592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352646, 40.552147, 30.066029>,  <40.295471, 40.810215, 30.765482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352646, 40.552147, 30.066029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996998, 40.735119, 30.072104>,  <39.783611, 40.844902, 30.075748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996998, 40.735119, 30.072104>,  <40.352646, 40.552147, 30.066029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996998, 40.735119, 30.072104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191472, 0.401902, -0.895440,
		-0.415701, -0.793245, -0.444922,
		-0.889118, 0.457425, 0.015187,
		39.730263, 40.872345, 30.076660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056438, 40.371166, 29.470325>,  <40.352646, 40.552147, 30.066029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056438, 40.371166, 29.470325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846527, 40.696388, 29.571163>,  <39.720581, 40.891521, 29.631666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846527, 40.696388, 29.571163>,  <40.056438, 40.371166, 29.470325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846527, 40.696388, 29.571163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010742, 0.289800, -0.957027,
		-0.851171, -0.504936, -0.143348,
		-0.524779, 0.813054, 0.252093,
		39.689095, 40.940304, 29.646791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545284, 40.565033, 28.895798>,  <40.056438, 40.371166, 29.470325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545284, 40.565033, 28.895798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557823, 40.912605, 29.093374>,  <39.565346, 41.121147, 29.211920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557823, 40.912605, 29.093374>,  <39.545284, 40.565033, 28.895798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557823, 40.912605, 29.093374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159786, 0.492186, -0.855699,
		-0.986654, -0.052101, 0.154271,
		0.031347, 0.868929, 0.493942,
		39.567226, 41.173283, 29.241556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944805, 40.922722, 28.763742>,  <39.545284, 40.565033, 28.895798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944805, 40.922722, 28.763742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211273, 41.199890, 28.874073>,  <39.371155, 41.366192, 28.940271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211273, 41.199890, 28.874073>,  <38.944805, 40.922722, 28.763742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211273, 41.199890, 28.874073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050411, 0.327156, -0.943625,
		-0.744091, 0.642523, 0.183012,
		0.666174, 0.692917, 0.275824,
		39.411125, 41.407764, 28.956820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718849, 41.470966, 28.514313>,  <38.944805, 40.922722, 28.763742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718849, 41.470966, 28.514313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106995, 41.545406, 28.575983>,  <39.339882, 41.590069, 28.612986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106995, 41.545406, 28.575983>,  <38.718849, 41.470966, 28.514313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106995, 41.545406, 28.575983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060086, 0.432135, -0.899805,
		-0.234079, 0.882398, 0.408144,
		0.970359, 0.186101, 0.154174,
		39.398102, 41.601238, 28.622234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776043, 42.074814, 28.289434>,  <38.718849, 41.470966, 28.514313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776043, 42.074814, 28.289434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151882, 41.938065, 28.282864>,  <39.377388, 41.856014, 28.278921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151882, 41.938065, 28.282864>,  <38.776043, 42.074814, 28.289434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151882, 41.938065, 28.282864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074308, 0.250606, -0.965233,
		0.334108, 0.905713, 0.260874,
		0.939601, -0.341877, -0.016427,
		39.433762, 41.835503, 28.277935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014278, 42.521511, 27.870773>,  <38.776043, 42.074814, 28.289434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014278, 42.521511, 27.870773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307613, 42.250095, 27.887764>,  <39.483612, 42.087246, 27.897959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307613, 42.250095, 27.887764>,  <39.014278, 42.521511, 27.870773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307613, 42.250095, 27.887764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178587, 0.131971, -0.975034,
		0.655995, 0.722610, 0.217957,
		0.733333, -0.678541, 0.042477,
		39.527615, 42.046532, 27.900507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.122532, 35.861671, 24.316534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.308708, 36.171093, 24.488569>,  <34.420414, 36.356747, 24.591791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.308708, 36.171093, 24.488569>,  <34.122532, 35.861671, 24.316534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308708, 36.171093, 24.488569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067833, -0.515680, 0.854092,
		0.882478, -0.368352, -0.292490,
		0.465438, 0.773557, 0.430090,
		34.448341, 36.403160, 24.617596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665852, 35.556717, 24.680393>,  <34.122532, 35.861671, 24.316534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665852, 35.556717, 24.680393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.648449, 35.921993, 24.842476>,  <34.638008, 36.141159, 24.939726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.648449, 35.921993, 24.842476>,  <34.665852, 35.556717, 24.680393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648449, 35.921993, 24.842476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009706, -0.405185, 0.914183,
		0.999006, 0.043702, 0.008763,
		-0.043503, 0.913190, 0.405206,
		34.635399, 36.195950, 24.964037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310169, 35.769611, 25.131128>,  <34.665852, 35.556717, 24.680393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310169, 35.769611, 25.131128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.990181, 35.976780, 25.252327>,  <34.798187, 36.101082, 25.325047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.990181, 35.976780, 25.252327>,  <35.310169, 35.769611, 25.131128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990181, 35.976780, 25.252327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123765, -0.351678, 0.927903,
		0.587136, 0.779796, 0.217232,
		-0.799971, 0.517920, 0.302995,
		34.750191, 36.132156, 25.343225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495358, 36.200447, 25.738386>,  <35.310169, 35.769611, 25.131128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495358, 36.200447, 25.738386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.095764, 36.210510, 25.753353>,  <34.856007, 36.216549, 25.762333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.095764, 36.210510, 25.753353>,  <35.495358, 36.200447, 25.738386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095764, 36.210510, 25.753353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029313, -0.268226, 0.962910,
		0.034257, 0.963028, 0.267216,
		-0.998983, 0.025153, 0.037417,
		34.796070, 36.218056, 25.764578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457111, 36.443230, 26.339304>,  <35.495358, 36.200447, 25.738386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457111, 36.443230, 26.339304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.096962, 36.286575, 26.263468>,  <34.880871, 36.192581, 26.217966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.096962, 36.286575, 26.263468>,  <35.457111, 36.443230, 26.339304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096962, 36.286575, 26.263468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104609, -0.228109, 0.968000,
		-0.422350, 0.891397, 0.164416,
		-0.900376, -0.391635, -0.189590,
		34.826851, 36.169086, 26.206591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067406, 36.627045, 26.853960>,  <35.457111, 36.443230, 26.339304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067406, 36.627045, 26.853960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.844643, 36.324089, 26.717604>,  <34.710983, 36.142315, 26.635790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.844643, 36.324089, 26.717604>,  <35.067406, 36.627045, 26.853960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844643, 36.324089, 26.717604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209859, -0.268797, 0.940057,
		-0.803622, 0.595068, -0.009249,
		-0.556912, -0.757392, -0.340892,
		34.677570, 36.096870, 26.615335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437454, 36.551048, 27.220053>,  <35.067406, 36.627045, 26.853960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437454, 36.551048, 27.220053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.510597, 36.186100, 27.073549>,  <34.554482, 35.967133, 26.985647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.510597, 36.186100, 27.073549>,  <34.437454, 36.551048, 27.220053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510597, 36.186100, 27.073549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294943, -0.406288, 0.864834,
		-0.937856, -0.050113, -0.343388,
		0.182854, -0.912370, -0.366259,
		34.565453, 35.912388, 26.963671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999321, 36.132801, 27.589365>,  <34.437454, 36.551048, 27.220053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999321, 36.132801, 27.589365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.218380, 35.850712, 27.409258>,  <34.349815, 35.681458, 27.301193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.218380, 35.850712, 27.409258>,  <33.999321, 36.132801, 27.589365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218380, 35.850712, 27.409258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164824, -0.618522, 0.768286,
		-0.820316, -0.346533, -0.454969,
		0.547645, -0.705227, -0.450266,
		34.382675, 35.639145, 27.274178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640388, 35.510845, 27.573462>,  <33.999321, 36.132801, 27.589365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640388, 35.510845, 27.573462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.026154, 35.406239, 27.557877>,  <34.257614, 35.343475, 27.548525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.026154, 35.406239, 27.557877>,  <33.640388, 35.510845, 27.573462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026154, 35.406239, 27.557877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151548, -0.667493, 0.729031,
		-0.216661, -0.697182, -0.683371,
		0.964412, -0.261516, -0.038963,
		34.315475, 35.327785, 27.546188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729103, 34.755402, 27.557995>,  <33.640388, 35.510845, 27.573462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729103, 34.755402, 27.557995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.073254, 34.903870, 27.697697>,  <34.279743, 34.992950, 27.781517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.073254, 34.903870, 27.697697>,  <33.729103, 34.755402, 27.557995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073254, 34.903870, 27.697697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084907, -0.571310, 0.816331,
		0.502532, -0.732008, -0.460028,
		0.860380, 0.371172, 0.349254,
		34.331367, 35.015221, 27.802473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240437, 34.200397, 27.846310>,  <33.729103, 34.755402, 27.557995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240437, 34.200397, 27.846310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.422020, 34.516010, 28.011883>,  <34.530972, 34.705379, 28.111227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.422020, 34.516010, 28.011883>,  <34.240437, 34.200397, 27.846310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422020, 34.516010, 28.011883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045132, -0.443603, 0.895086,
		0.889878, -0.425015, -0.165768,
		0.453960, 0.789036, 0.413934,
		34.558208, 34.752720, 28.136063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898048, 33.958080, 28.118494>,  <34.240437, 34.200397, 27.846310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898048, 33.958080, 28.118494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.781727, 34.285233, 28.317091>,  <34.711933, 34.481522, 28.436249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.781727, 34.285233, 28.317091>,  <34.898048, 33.958080, 28.118494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781727, 34.285233, 28.317091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138579, -0.477443, 0.867666,
		0.946693, 0.321126, 0.025502,
		-0.290806, 0.817879, 0.496494,
		34.694485, 34.530598, 28.466040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348274, 34.039383, 28.647652>,  <34.898048, 33.958080, 28.118494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348274, 34.039383, 28.647652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.025635, 34.250713, 28.753689>,  <34.832050, 34.377510, 28.817312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.025635, 34.250713, 28.753689>,  <35.348274, 34.039383, 28.647652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025635, 34.250713, 28.753689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158761, -0.238366, 0.958111,
		0.569382, 0.814896, 0.108388,
		-0.806597, 0.528323, 0.265095,
		34.783657, 34.409210, 28.833218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460861, 34.046822, 29.341736>,  <35.348274, 34.039383, 28.647652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460861, 34.046822, 29.341736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084915, 34.181210, 29.317137>,  <34.859348, 34.261841, 29.302378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084915, 34.181210, 29.317137>,  <35.460861, 34.046822, 29.341736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084915, 34.181210, 29.317137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160502, -0.275503, 0.947807,
		0.301493, 0.900678, 0.312859,
		-0.939862, 0.335972, -0.061499,
		34.802956, 34.282001, 29.298687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911938, 34.576485, 29.526739>,  <35.460861, 34.046822, 29.341736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911938, 34.576485, 29.526739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.305649, 34.631397, 29.571199>,  <36.541874, 34.664345, 29.597876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.305649, 34.631397, 29.571199>,  <35.911938, 34.576485, 29.526739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305649, 34.631397, 29.571199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035950, 0.460398, -0.886985,
		-0.172940, 0.877033, 0.448223,
		0.984276, 0.137282, 0.111151,
		36.600933, 34.672581, 29.604544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059544, 35.258327, 29.184769>,  <35.911938, 34.576485, 29.526739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059544, 35.258327, 29.184769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.409336, 35.064480, 29.193090>,  <36.619209, 34.948170, 29.198084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.409336, 35.064480, 29.193090>,  <36.059544, 35.258327, 29.184769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409336, 35.064480, 29.193090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328749, 0.560588, -0.760043,
		0.356670, 0.671479, 0.649539,
		0.874477, -0.484620, 0.020803,
		36.671680, 34.919094, 29.199331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601639, 35.757786, 29.066095>,  <36.059544, 35.258327, 29.184769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601639, 35.757786, 29.066095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.790012, 35.423412, 28.953354>,  <36.903034, 35.222790, 28.885708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.790012, 35.423412, 28.953354>,  <36.601639, 35.757786, 29.066095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790012, 35.423412, 28.953354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481884, 0.511383, -0.711531,
		0.738927, 0.199260, 0.643648,
		0.470930, -0.835933, -0.281854,
		36.931290, 35.172634, 28.868797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335384, 35.960445, 28.983227>,  <36.601639, 35.757786, 29.066095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335384, 35.960445, 28.983227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307190, 35.601860, 28.808233>,  <37.290272, 35.386711, 28.703238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307190, 35.601860, 28.808233>,  <37.335384, 35.960445, 28.983227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307190, 35.601860, 28.808233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505940, 0.345846, -0.790199,
		0.859684, -0.277038, 0.429178,
		-0.070486, -0.896460, -0.437483,
		37.286045, 35.332924, 28.676989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873528, 35.925076, 28.586407>,  <37.335384, 35.960445, 28.983227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873528, 35.925076, 28.586407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.600548, 35.679729, 28.427385>,  <37.436760, 35.532520, 28.331972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.600548, 35.679729, 28.427385>,  <37.873528, 35.925076, 28.586407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600548, 35.679729, 28.427385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369917, 0.179275, -0.911604,
		0.630421, -0.769180, 0.104551,
		-0.682444, -0.613370, -0.397552,
		37.395813, 35.495720, 28.308119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225418, 35.480396, 28.126717>,  <37.873528, 35.925076, 28.586407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225418, 35.480396, 28.126717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.842552, 35.466518, 28.011738>,  <37.612831, 35.458191, 27.942751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.842552, 35.466518, 28.011738>,  <38.225418, 35.480396, 28.126717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842552, 35.466518, 28.011738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277742, 0.170421, -0.945418,
		0.081789, -0.984760, -0.153485,
		-0.957168, -0.034695, -0.287448,
		37.555401, 35.456108, 27.925503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189823, 35.186901, 27.345249>,  <38.225418, 35.480396, 28.126717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189823, 35.186901, 27.345249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.846668, 35.383961, 27.403664>,  <37.640774, 35.502197, 27.438711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.846668, 35.383961, 27.403664>,  <38.189823, 35.186901, 27.345249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846668, 35.383961, 27.403664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007617, 0.296366, -0.955044,
		-0.513780, -0.818208, -0.258001,
		-0.857888, 0.492648, 0.146035,
		37.589302, 35.531754, 27.447474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926228, 35.295261, 26.751638>,  <38.189823, 35.186901, 27.345249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926228, 35.295261, 26.751638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.673794, 35.556629, 26.918863>,  <37.522335, 35.713451, 27.019197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.673794, 35.556629, 26.918863>,  <37.926228, 35.295261, 26.751638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673794, 35.556629, 26.918863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037850, 0.564233, -0.824748,
		-0.774790, -0.504662, -0.380811,
		-0.631084, 0.653420, 0.418060,
		37.484467, 35.752655, 27.044281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329079, 35.345421, 26.416531>,  <37.926228, 35.295261, 26.751638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329079, 35.345421, 26.416531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.338940, 35.709370, 26.582190>,  <37.344856, 35.927738, 26.681585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.338940, 35.709370, 26.582190>,  <37.329079, 35.345421, 26.416531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338940, 35.709370, 26.582190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130251, 0.407820, -0.903725,
		-0.991175, 0.076221, -0.108459,
		0.024651, 0.909876, 0.414148,
		37.346336, 35.982334, 26.706434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802654, 35.783287, 26.043848>,  <37.329079, 35.345421, 26.416531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802654, 35.783287, 26.043848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.054947, 36.032845, 26.228424>,  <37.206322, 36.182579, 26.339170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.054947, 36.032845, 26.228424>,  <36.802654, 35.783287, 26.043848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054947, 36.032845, 26.228424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101443, 0.655830, -0.748061,
		-0.769339, 0.425018, 0.476945,
		0.630735, 0.623896, 0.461441,
		37.244167, 36.220013, 26.366856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464867, 36.346283, 26.317680>,  <36.802654, 35.783287, 26.043848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464867, 36.346283, 26.317680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.843884, 36.446918, 26.238829>,  <37.071293, 36.507301, 26.191517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.843884, 36.446918, 26.238829>,  <36.464867, 36.346283, 26.317680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843884, 36.446918, 26.238829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310248, 0.575732, -0.756491,
		-0.076831, 0.777969, 0.623587,
		0.947546, 0.251588, -0.197130,
		37.128147, 36.522396, 26.179689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551434, 37.154530, 26.138723>,  <36.464867, 36.346283, 26.317680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551434, 37.154530, 26.138723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.917679, 37.044025, 26.021877>,  <37.137424, 36.977722, 25.951769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.917679, 37.044025, 26.021877>,  <36.551434, 37.154530, 26.138723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917679, 37.044025, 26.021877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030419, 0.676870, -0.735474,
		0.400905, 0.682296, 0.611349,
		0.915615, -0.276258, -0.292115,
		37.192364, 36.961147, 25.934242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841095, 37.715557, 26.038778>,  <36.551434, 37.154530, 26.138723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841095, 37.715557, 26.038778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.032539, 37.458584, 25.799377>,  <37.147408, 37.304398, 25.655737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.032539, 37.458584, 25.799377>,  <36.841095, 37.715557, 26.038778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032539, 37.458584, 25.799377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104625, 0.635061, -0.765343,
		0.871770, 0.428921, 0.236733,
		0.478612, -0.642436, -0.598504,
		37.176125, 37.265854, 25.619827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336449, 38.014900, 25.722557>,  <36.841095, 37.715557, 26.038778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336449, 38.014900, 25.722557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.287155, 37.706127, 25.473097>,  <37.257580, 37.520863, 25.323421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.287155, 37.706127, 25.473097>,  <37.336449, 38.014900, 25.722557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287155, 37.706127, 25.473097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115505, 0.613011, -0.781586,
		0.985632, -0.168354, 0.013617,
		-0.123236, -0.771929, -0.623649,
		37.250183, 37.474548, 25.286003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075630, 37.895111, 25.866674>,  <37.336449, 38.014900, 25.722557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075630, 37.895111, 25.866674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.375153, 38.160217, 25.869032>,  <38.554867, 38.319283, 25.870447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.375153, 38.160217, 25.869032>,  <38.075630, 37.895111, 25.866674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375153, 38.160217, 25.869032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492572, -0.562420, 0.664121,
		0.443472, -0.494392, -0.747602,
		0.748803, 0.662767, 0.005893,
		38.599792, 38.359047, 25.870800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565178, 37.465294, 25.858118>,  <38.075630, 37.895111, 25.866674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565178, 37.465294, 25.858118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.723309, 37.804089, 26.000290>,  <38.818188, 38.007366, 26.085594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.723309, 37.804089, 26.000290>,  <38.565178, 37.465294, 25.858118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723309, 37.804089, 26.000290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505547, -0.523705, 0.685679,
		0.766900, -0.091382, -0.635227,
		0.395330, 0.846984, 0.355431,
		38.841908, 38.058186, 26.106918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243408, 37.254799, 26.031759>,  <38.565178, 37.465294, 25.858118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243408, 37.254799, 26.031759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.189362, 37.602985, 26.221087>,  <39.156933, 37.811897, 26.334682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.189362, 37.602985, 26.221087>,  <39.243408, 37.254799, 26.031759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189362, 37.602985, 26.221087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518003, -0.345160, 0.782647,
		0.844640, 0.350925, -0.404270,
		-0.135112, 0.870469, 0.473316,
		39.148827, 37.864124, 26.363081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953163, 37.483086, 26.377100>,  <39.243408, 37.254799, 26.031759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953163, 37.483086, 26.377100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670391, 37.659306, 26.598429>,  <39.500729, 37.765038, 26.731226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670391, 37.659306, 26.598429>,  <39.953163, 37.483086, 26.377100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670391, 37.659306, 26.598429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429276, -0.354499, 0.830694,
		0.562115, 0.824771, 0.061489,
		-0.706929, 0.440549, 0.553324,
		39.458313, 37.791470, 26.764425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228622, 37.714794, 26.867260>,  <39.953163, 37.483086, 26.377100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228622, 37.714794, 26.867260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.867516, 37.734203, 27.038214>,  <39.650852, 37.745850, 27.140787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.867516, 37.734203, 27.038214>,  <40.228622, 37.714794, 26.867260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867516, 37.734203, 27.038214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418715, -0.128263, 0.899014,
		0.098443, 0.990552, 0.095472,
		-0.902766, 0.048526, 0.427386,
		39.596687, 37.748760, 27.166430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377018, 38.099155, 27.523247>,  <40.228622, 37.714794, 26.867260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377018, 38.099155, 27.523247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.010426, 37.943268, 27.559412>,  <39.790470, 37.849735, 27.581112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.010426, 37.943268, 27.559412>,  <40.377018, 38.099155, 27.523247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010426, 37.943268, 27.559412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209721, -0.275545, 0.938132,
		-0.340697, 0.878745, 0.334266,
		-0.916484, -0.389721, 0.090414,
		39.735481, 37.826351, 27.586536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054447, 38.317501, 28.222036>,  <40.377018, 38.099155, 27.523247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054447, 38.317501, 28.222036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.874706, 37.981609, 28.100100>,  <39.766861, 37.780075, 28.026937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.874706, 37.981609, 28.100100>,  <40.054447, 38.317501, 28.222036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874706, 37.981609, 28.100100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052283, -0.365371, 0.929392,
		-0.891821, 0.401690, 0.208085,
		-0.449356, -0.839731, -0.304844,
		39.739899, 37.729691, 28.008646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219673, 38.292995, 28.426680>,  <40.054447, 38.317501, 28.222036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219673, 38.292995, 28.426680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.378681, 37.931168, 28.365057>,  <39.474087, 37.714069, 28.328083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.378681, 37.931168, 28.365057>,  <39.219673, 38.292995, 28.426680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378681, 37.931168, 28.365057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225165, -0.258920, 0.939288,
		-0.889539, -0.338696, -0.306602,
		0.397518, -0.904569, -0.154057,
		39.497936, 37.659798, 28.318840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855217, 37.853344, 28.849836>,  <39.219673, 38.292995, 28.426680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855217, 37.853344, 28.849836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.176342, 37.630898, 28.763832>,  <39.369015, 37.497429, 28.712229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.176342, 37.630898, 28.763832>,  <38.855217, 37.853344, 28.849836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176342, 37.630898, 28.763832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030441, -0.321913, 0.946280,
		-0.595457, -0.766228, -0.241506,
		0.802810, -0.556118, -0.215010,
		39.417187, 37.464062, 28.699329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742352, 37.142654, 29.174934>,  <38.855217, 37.853344, 28.849836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742352, 37.142654, 29.174934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.135590, 37.160492, 29.103895>,  <39.371532, 37.171196, 29.061272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.135590, 37.160492, 29.103895>,  <38.742352, 37.142654, 29.174934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135590, 37.160492, 29.103895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173710, -0.533927, 0.827495,
		-0.057922, -0.844354, -0.532646,
		0.983092, 0.044595, -0.177599,
		39.430519, 37.173870, 29.050615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978119, 36.440918, 29.180231>,  <38.742352, 37.142654, 29.174934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978119, 36.440918, 29.180231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.299797, 36.668610, 29.248652>,  <39.492802, 36.805225, 29.289703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.299797, 36.668610, 29.248652>,  <38.978119, 36.440918, 29.180231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299797, 36.668610, 29.248652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247034, -0.581853, 0.774869,
		0.540602, -0.580887, -0.608539,
		0.804191, 0.569226, 0.171052,
		39.541054, 36.839378, 29.299967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500973, 35.989178, 29.344093>,  <38.978119, 36.440918, 29.180231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500973, 35.989178, 29.344093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.646259, 36.334621, 29.483953>,  <39.733429, 36.541889, 29.567869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.646259, 36.334621, 29.483953>,  <39.500973, 35.989178, 29.344093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646259, 36.334621, 29.483953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300668, -0.463846, 0.833334,
		0.881859, -0.197548, -0.428135,
		0.363212, 0.863610, 0.349650,
		39.755222, 36.593704, 29.588848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194172, 35.754112, 29.678810>,  <39.500973, 35.989178, 29.344093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194172, 35.754112, 29.678810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.107143, 36.121178, 29.811815>,  <40.054924, 36.341415, 29.891619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.107143, 36.121178, 29.811815>,  <40.194172, 35.754112, 29.678810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107143, 36.121178, 29.811815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230879, -0.282617, 0.931033,
		0.948344, 0.279339, -0.150378,
		-0.217574, 0.917659, 0.332511,
		40.041870, 36.396477, 29.911568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694107, 35.985050, 30.158693>,  <40.194172, 35.754112, 29.678810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694107, 35.985050, 30.158693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.385445, 36.223751, 30.246727>,  <40.200249, 36.366970, 30.299547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.385445, 36.223751, 30.246727>,  <40.694107, 35.985050, 30.158693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385445, 36.223751, 30.246727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084414, -0.246877, 0.965363,
		0.630417, 0.763504, 0.140129,
		-0.771653, 0.596753, 0.220086,
		40.153950, 36.402779, 30.312752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.671913, 42.804348, 27.693886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.757469, 42.420609, 27.620243>,  <39.808804, 42.190365, 27.576057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.757469, 42.420609, 27.620243>,  <39.671913, 42.804348, 27.693886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757469, 42.420609, 27.620243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129138, 0.214585, -0.968130,
		0.968283, 0.183301, 0.169787,
		0.213893, -0.959351, -0.184107,
		39.821636, 42.132805, 27.565010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236828, 42.821495, 27.346869>,  <39.671913, 42.804348, 27.693886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236828, 42.821495, 27.346869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.117683, 42.451389, 27.252924>,  <40.046196, 42.229324, 27.196556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.117683, 42.451389, 27.252924>,  <40.236828, 42.821495, 27.346869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117683, 42.451389, 27.252924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152775, 0.196655, -0.968497,
		0.942304, -0.324362, 0.082781,
		-0.297865, -0.925266, -0.234863,
		40.028324, 42.173809, 27.182465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757397, 42.494694, 26.758568>,  <40.236828, 42.821495, 27.346869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757397, 42.494694, 26.758568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.415573, 42.287773, 26.740158>,  <40.210480, 42.163620, 26.729113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.415573, 42.287773, 26.740158>,  <40.757397, 42.494694, 26.758568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415573, 42.287773, 26.740158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094030, -0.066954, -0.993315,
		0.510764, -0.853179, 0.105859,
		-0.854563, -0.517304, -0.046027,
		40.159203, 42.132584, 26.726351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858955, 41.930683, 26.267994>,  <40.757397, 42.494694, 26.758568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858955, 41.930683, 26.267994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.464420, 41.986927, 26.302319>,  <40.227699, 42.020672, 26.322912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.464420, 41.986927, 26.302319>,  <40.858955, 41.930683, 26.267994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464420, 41.986927, 26.302319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085207, 0.010315, -0.996310,
		-0.140973, -0.990012, 0.001807,
		-0.986340, 0.140607, 0.085810,
		40.168518, 42.029110, 26.328062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636391, 41.409935, 25.791859>,  <40.858955, 41.930683, 26.267994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636391, 41.409935, 25.791859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.311878, 41.637325, 25.846495>,  <40.117168, 41.773758, 25.879276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.311878, 41.637325, 25.846495>,  <40.636391, 41.409935, 25.791859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311878, 41.637325, 25.846495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185007, -0.027996, -0.982338,
		-0.554610, -0.822225, 0.127884,
		-0.811283, 0.568474, 0.136590,
		40.068493, 41.807869, 25.887472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141796, 41.135567, 25.396208>,  <40.636391, 41.409935, 25.791859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141796, 41.135567, 25.396208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.000015, 41.501247, 25.474800>,  <39.914948, 41.720654, 25.521955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.000015, 41.501247, 25.474800>,  <40.141796, 41.135567, 25.396208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000015, 41.501247, 25.474800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362087, 0.059541, -0.930241,
		-0.862124, -0.400868, 0.309915,
		-0.354451, 0.914199, 0.196481,
		39.893681, 41.775509, 25.533745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502594, 41.011612, 25.319204>,  <40.141796, 41.135567, 25.396208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502594, 41.011612, 25.319204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.596519, 41.396358, 25.263107>,  <39.652874, 41.627209, 25.229448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.596519, 41.396358, 25.263107>,  <39.502594, 41.011612, 25.319204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596519, 41.396358, 25.263107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448546, -0.020779, -0.893518,
		-0.862364, 0.272713, 0.426564,
		0.234810, 0.961871, -0.140243,
		39.666962, 41.684921, 25.221035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983723, 41.261066, 25.034510>,  <39.502594, 41.011612, 25.319204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983723, 41.261066, 25.034510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.247284, 41.538925, 24.919056>,  <39.405422, 41.705639, 24.849783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.247284, 41.538925, 24.919056>,  <38.983723, 41.261066, 25.034510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247284, 41.538925, 24.919056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406589, 0.006058, -0.913591,
		-0.632876, 0.719324, 0.286428,
		0.658903, 0.694648, -0.288635,
		39.444954, 41.747318, 24.832466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660812, 41.873047, 24.703779>,  <38.983723, 41.261066, 25.034510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660812, 41.873047, 24.703779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.023033, 41.916332, 24.539696>,  <39.240364, 41.942303, 24.441246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.023033, 41.916332, 24.539696>,  <38.660812, 41.873047, 24.703779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023033, 41.916332, 24.539696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412638, 0.449263, -0.792397,
		0.098544, 0.886822, 0.451482,
		0.905549, 0.108213, -0.410209,
		39.294697, 41.948795, 24.416634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682774, 42.536694, 24.455082>,  <38.660812, 41.873047, 24.703779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682774, 42.536694, 24.455082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.930107, 42.314434, 24.232759>,  <39.078506, 42.181076, 24.099367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.930107, 42.314434, 24.232759>,  <38.682774, 42.536694, 24.455082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930107, 42.314434, 24.232759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400503, 0.385709, -0.831159,
		0.676214, 0.736533, 0.015955,
		0.618330, -0.555651, -0.555805,
		39.115604, 42.147739, 24.066017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859303, 42.976776, 23.926641>,  <38.682774, 42.536694, 24.455082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859303, 42.976776, 23.926641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.008671, 42.636925, 23.777679>,  <39.098293, 42.433014, 23.688303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.008671, 42.636925, 23.777679>,  <38.859303, 42.976776, 23.926641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008671, 42.636925, 23.777679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292397, 0.273181, -0.916448,
		0.880374, 0.451114, -0.146416,
		0.373424, -0.849628, -0.372406,
		39.120697, 42.382034, 23.665958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366287, 43.168224, 23.381462>,  <38.859303, 42.976776, 23.926641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366287, 43.168224, 23.381462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.255207, 42.788113, 23.325090>,  <39.188560, 42.560047, 23.291267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.255207, 42.788113, 23.325090>,  <39.366287, 43.168224, 23.381462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255207, 42.788113, 23.325090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224446, 0.206820, -0.952287,
		0.934081, -0.232817, -0.270719,
		-0.277699, -0.950275, -0.140931,
		39.171898, 42.503029, 23.282810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761158, 43.023262, 22.840935>,  <39.366287, 43.168224, 23.381462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761158, 43.023262, 22.840935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.444290, 42.779366, 22.830473>,  <39.254169, 42.633026, 22.824196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.444290, 42.779366, 22.830473>,  <39.761158, 43.023262, 22.840935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444290, 42.779366, 22.830473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069409, 0.132584, -0.988738,
		0.606343, -0.781432, -0.147351,
		-0.792168, -0.609742, -0.026153,
		39.206638, 42.596443, 22.822628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983585, 42.436172, 22.500114>,  <39.761158, 43.023262, 22.840935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983585, 42.436172, 22.500114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.610458, 42.578358, 22.476454>,  <39.386581, 42.663670, 22.462257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.610458, 42.578358, 22.476454>,  <39.983585, 42.436172, 22.500114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610458, 42.578358, 22.476454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166264, 0.278922, -0.945811,
		-0.319702, -0.892103, -0.319284,
		-0.932817, 0.355463, -0.059153,
		39.330612, 42.684998, 22.458708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352051, 42.074665, 21.788445>,  <39.983585, 42.436172, 22.500114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352051, 42.074665, 21.788445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.194210, 41.753387, 21.609932>,  <40.099506, 41.560619, 21.502825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.194210, 41.753387, 21.609932>,  <40.352051, 42.074665, 21.788445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194210, 41.753387, 21.609932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394008, -0.290867, 0.871868,
		-0.830090, 0.519877, -0.201689,
		-0.394600, -0.803196, -0.446282,
		40.075829, 41.512428, 21.476048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621899, 41.960789, 22.123575>,  <40.352051, 42.074665, 21.788445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621899, 41.960789, 22.123575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.709641, 41.616570, 21.939686>,  <39.762287, 41.410038, 21.829351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.709641, 41.616570, 21.939686>,  <39.621899, 41.960789, 22.123575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709641, 41.616570, 21.939686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467111, -0.506317, 0.724880,
		-0.856557, 0.055737, -0.513033,
		0.219355, -0.860545, -0.459724,
		39.775448, 41.358406, 21.801769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060520, 41.546917, 22.291504>,  <39.621899, 41.960789, 22.123575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060520, 41.546917, 22.291504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.358883, 41.297642, 22.197477>,  <39.537903, 41.148079, 22.141062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.358883, 41.297642, 22.197477>,  <39.060520, 41.546917, 22.291504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358883, 41.297642, 22.197477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259315, -0.596804, 0.759329,
		-0.613502, -0.505426, -0.606761,
		0.745902, -0.623192, -0.235076,
		39.582657, 41.110687, 22.126957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717182, 40.867622, 22.319584>,  <39.060520, 41.546917, 22.291504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717182, 40.867622, 22.319584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.104603, 40.768127, 22.322016>,  <39.337055, 40.708431, 22.323475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.104603, 40.768127, 22.322016>,  <38.717182, 40.867622, 22.319584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104603, 40.768127, 22.322016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172256, -0.652705, 0.737770,
		-0.179542, -0.715616, -0.675025,
		0.968552, -0.248738, 0.006081,
		39.395168, 40.693504, 22.323839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720211, 40.227070, 22.359907>,  <38.717182, 40.867622, 22.319584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720211, 40.227070, 22.359907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.103172, 40.283821, 22.460508>,  <39.332947, 40.317871, 22.520870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.103172, 40.283821, 22.460508>,  <38.720211, 40.227070, 22.359907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103172, 40.283821, 22.460508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110566, -0.624481, 0.773175,
		0.266759, -0.768045, -0.582191,
		0.957400, 0.141881, 0.251505,
		39.390392, 40.326385, 22.535959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062538, 39.561661, 22.360031>,  <38.720211, 40.227070, 22.359907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062538, 39.561661, 22.360031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.267323, 39.799641, 22.607882>,  <39.390194, 39.942429, 22.756592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.267323, 39.799641, 22.607882>,  <39.062538, 39.561661, 22.360031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267323, 39.799641, 22.607882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108613, -0.670705, 0.733729,
		0.852115, -0.442939, -0.278755,
		0.511959, 0.594945, 0.619627,
		39.420910, 39.978123, 22.793770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511272, 39.080109, 22.742514>,  <39.062538, 39.561661, 22.360031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511272, 39.080109, 22.742514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.479298, 39.426044, 22.940769>,  <39.460114, 39.633606, 23.059723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.479298, 39.426044, 22.940769>,  <39.511272, 39.080109, 22.742514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479298, 39.426044, 22.940769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109272, -0.501838, 0.858032,
		0.990793, 0.014425, 0.134616,
		-0.079933, 0.864842, 0.495641,
		39.455318, 39.685497, 23.089462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073364, 39.104469, 23.318378>,  <39.511272, 39.080109, 22.742514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073364, 39.104469, 23.318378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.779404, 39.352962, 23.427191>,  <39.603027, 39.502056, 23.492477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.779404, 39.352962, 23.427191>,  <40.073364, 39.104469, 23.318378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779404, 39.352962, 23.427191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005054, -0.396091, 0.918198,
		0.678159, 0.676156, 0.287946,
		-0.734897, 0.621229, 0.272030,
		39.558933, 39.539330, 23.508801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211578, 39.259441, 24.005754>,  <40.073364, 39.104469, 23.318378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211578, 39.259441, 24.005754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.826820, 39.348209, 23.941858>,  <39.595966, 39.401470, 23.903521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.826820, 39.348209, 23.941858>,  <40.211578, 39.259441, 24.005754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826820, 39.348209, 23.941858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225246, -0.311889, 0.923033,
		0.155018, 0.923838, 0.349990,
		-0.961891, 0.221921, -0.159743,
		39.538254, 39.414787, 23.893936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051704, 39.524117, 24.590940>,  <40.211578, 39.259441, 24.005754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051704, 39.524117, 24.590940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.702545, 39.425076, 24.422775>,  <39.493050, 39.365650, 24.321877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.702545, 39.425076, 24.422775>,  <40.051704, 39.524117, 24.590940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702545, 39.425076, 24.422775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362694, -0.247064, 0.898561,
		-0.326356, 0.936831, 0.125857,
		-0.872895, -0.247603, -0.420414,
		39.440678, 39.350796, 24.296652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434505, 39.868057, 24.987383>,  <40.051704, 39.524117, 24.590940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434505, 39.868057, 24.987383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.309654, 39.555012, 24.771940>,  <39.234741, 39.367184, 24.642675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.309654, 39.555012, 24.771940>,  <39.434505, 39.868057, 24.987383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309654, 39.555012, 24.771940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562121, -0.304907, 0.768799,
		-0.765894, 0.542729, -0.344750,
		-0.312133, -0.782610, -0.538606,
		39.216015, 39.320229, 24.610359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673492, 39.901615, 25.088860>,  <39.434505, 39.868057, 24.987383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673492, 39.901615, 25.088860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.795185, 39.532608, 24.993864>,  <38.868198, 39.311203, 24.936867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.795185, 39.532608, 24.993864>,  <38.673492, 39.901615, 25.088860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795185, 39.532608, 24.993864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464478, -0.361317, 0.808523,
		-0.831688, -0.135668, -0.538414,
		0.304229, -0.922520, -0.237488,
		38.886456, 39.255852, 24.922617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202721, 39.550282, 25.448074>,  <38.673492, 39.901615, 25.088860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202721, 39.550282, 25.448074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.453472, 39.258438, 25.338755>,  <38.603924, 39.083332, 25.273163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.453472, 39.258438, 25.338755>,  <38.202721, 39.550282, 25.448074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453472, 39.258438, 25.338755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212975, -0.497892, 0.840681,
		-0.749445, -0.468796, -0.467506,
		0.626875, -0.729611, -0.273301,
		38.641537, 39.039555, 25.256763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793575, 38.820690, 25.431190>,  <38.202721, 39.550282, 25.448074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793575, 38.820690, 25.431190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.187950, 38.780796, 25.484821>,  <38.424576, 38.756859, 25.517000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.187950, 38.780796, 25.484821>,  <37.793575, 38.820690, 25.431190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187950, 38.780796, 25.484821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166339, -0.662324, 0.730520,
		0.015945, -0.742550, -0.669601,
		0.985940, -0.099732, 0.134076,
		38.483730, 38.750877, 25.525043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832638, 38.107826, 25.172607>,  <37.793575, 38.820690, 25.431190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832638, 38.107826, 25.172607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.597900, 37.844990, 24.983355>,  <37.457058, 37.687290, 24.869802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.597900, 37.844990, 24.983355>,  <37.832638, 38.107826, 25.172607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597900, 37.844990, 24.983355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133008, 0.498159, -0.856824,
		0.798703, -0.565750, -0.204942,
		-0.586841, -0.657088, -0.473130,
		37.421848, 37.647861, 24.841415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121582, 37.993252, 24.494007>,  <37.832638, 38.107826, 25.172607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121582, 37.993252, 24.494007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.743317, 37.878666, 24.432497>,  <37.516357, 37.809914, 24.395590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.743317, 37.878666, 24.432497>,  <38.121582, 37.993252, 24.494007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743317, 37.878666, 24.432497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018486, 0.519575, -0.854225,
		0.324607, -0.804971, -0.496641,
		-0.945668, -0.286469, -0.153777,
		37.459618, 37.792725, 24.386364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060295, 37.755299, 23.767281>,  <38.121582, 37.993252, 24.494007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060295, 37.755299, 23.767281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.682446, 37.821362, 23.880701>,  <37.455734, 37.861000, 23.948753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.682446, 37.821362, 23.880701>,  <38.060295, 37.755299, 23.767281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682446, 37.821362, 23.880701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190832, 0.426462, -0.884146,
		-0.266947, -0.889299, -0.371331,
		-0.944628, 0.165159, 0.283549,
		37.399055, 37.870911, 23.965765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709476, 37.396519, 23.256084>,  <38.060295, 37.755299, 23.767281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709476, 37.396519, 23.256084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.489807, 37.697407, 23.401726>,  <37.358006, 37.877941, 23.489111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.489807, 37.697407, 23.401726>,  <37.709476, 37.396519, 23.256084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489807, 37.697407, 23.401726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177816, 0.320529, -0.930399,
		-0.816570, -0.575696, -0.042270,
		-0.549176, 0.752220, 0.364103,
		37.325054, 37.923073, 23.510956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106327, 37.378208, 22.886179>,  <37.709476, 37.396519, 23.256084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106327, 37.378208, 22.886179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.101490, 37.738510, 23.059841>,  <37.098587, 37.954693, 23.164038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.101490, 37.738510, 23.059841>,  <37.106327, 37.378208, 22.886179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101490, 37.738510, 23.059841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415644, 0.390372, -0.821493,
		-0.909447, -0.190386, 0.369674,
		-0.012090, 0.900757, 0.434155,
		37.097862, 38.008736, 23.190088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561909, 37.690739, 22.531054>,  <37.106327, 37.378208, 22.886179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561909, 37.690739, 22.531054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.742142, 38.006763, 22.697321>,  <36.850281, 38.196377, 22.797081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.742142, 38.006763, 22.697321>,  <36.561909, 37.690739, 22.531054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742142, 38.006763, 22.697321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116896, 0.513817, -0.849899,
		-0.885047, 0.334362, 0.323872,
		0.450585, 0.790060, 0.415667,
		36.877316, 38.243782, 22.822021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082005, 38.256966, 22.342966>,  <36.561909, 37.690739, 22.531054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082005, 38.256966, 22.342966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.429382, 38.424908, 22.448439>,  <36.637810, 38.525673, 22.511723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.429382, 38.424908, 22.448439>,  <36.082005, 38.256966, 22.342966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429382, 38.424908, 22.448439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068291, 0.425476, -0.902389,
		-0.491063, 0.801681, 0.340830,
		0.868443, 0.419854, 0.263683,
		36.689915, 38.550865, 22.527544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855732, 38.734360, 22.871361>,  <36.082005, 38.256966, 22.342966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855732, 38.734360, 22.871361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.463455, 38.726101, 22.793583>,  <35.228088, 38.721146, 22.746916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.463455, 38.726101, 22.793583>,  <35.855732, 38.734360, 22.871361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463455, 38.726101, 22.793583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113402, -0.750049, 0.651587,
		-0.159296, 0.661060, 0.733229,
		-0.980696, -0.020645, -0.194445,
		35.169247, 38.719906, 22.735249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532631, 38.746521, 23.555145>,  <35.855732, 38.734360, 22.871361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532631, 38.746521, 23.555145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250248, 38.601429, 23.311819>,  <35.080818, 38.514374, 23.165823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250248, 38.601429, 23.311819>,  <35.532631, 38.746521, 23.555145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250248, 38.601429, 23.311819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246288, -0.679567, 0.691036,
		-0.664050, 0.637664, 0.390412,
		-0.705960, -0.362729, -0.608316,
		35.038460, 38.492611, 23.129324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841850, 38.687740, 23.997383>,  <35.532631, 38.746521, 23.555145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841850, 38.687740, 23.997383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.770168, 38.451393, 23.682737>,  <34.727158, 38.309586, 23.493950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.770168, 38.451393, 23.682737>,  <34.841850, 38.687740, 23.997383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770168, 38.451393, 23.682737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289551, -0.732465, 0.616161,
		-0.940237, 0.338183, -0.039827,
		-0.179204, -0.590870, -0.786612,
		34.716408, 38.274132, 23.446754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239796, 38.341484, 24.176271>,  <34.841850, 38.687740, 23.997383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239796, 38.341484, 24.176271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424416, 38.133129, 23.889036>,  <34.535187, 38.008118, 23.716696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424416, 38.133129, 23.889036>,  <34.239796, 38.341484, 24.176271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424416, 38.133129, 23.889036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077311, -0.830004, 0.552373,
		-0.883739, -0.199432, -0.423358,
		0.461549, -0.520884, -0.718090,
		34.562881, 37.976864, 23.673609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867149, 37.787998, 24.274725>,  <34.239796, 38.341484, 24.176271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867149, 37.787998, 24.274725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.180931, 37.658264, 24.063274>,  <34.369198, 37.580421, 23.936405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.180931, 37.658264, 24.063274>,  <33.867149, 37.787998, 24.274725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180931, 37.658264, 24.063274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080995, -0.791481, 0.605804,
		-0.614880, -0.518039, -0.594608,
		0.784451, -0.324336, -0.528624,
		34.416267, 37.560963, 23.904688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692928, 37.182934, 24.016359>,  <33.867149, 37.787998, 24.274725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692928, 37.182934, 24.016359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.090893, 37.143974, 24.026733>,  <34.329670, 37.120598, 24.032957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.090893, 37.143974, 24.026733>,  <33.692928, 37.182934, 24.016359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090893, 37.143974, 24.026733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087534, -0.707362, 0.701411,
		-0.049974, -0.700108, -0.712286,
		0.994907, -0.097401, 0.025933,
		34.389366, 37.114754, 24.034513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699589, 36.500652, 24.124252>,  <33.692928, 37.182934, 24.016359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699589, 36.500652, 24.124252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067207, 36.622154, 24.224720>,  <34.287777, 36.695057, 24.285000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067207, 36.622154, 24.224720>,  <33.699589, 36.500652, 24.124252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067207, 36.622154, 24.224720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010734, -0.617722, 0.786323,
		0.394002, -0.725364, -0.564455,
		0.919047, 0.303754, 0.251170,
		34.342922, 36.713280, 24.300072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.749268, 40.973469, 22.774084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.366241, 40.941944, 22.884983>,  <35.136425, 40.923027, 22.951523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.366241, 40.941944, 22.884983>,  <35.749268, 40.973469, 22.774084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366241, 40.941944, 22.884983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149170, 0.687540, 0.710660,
		-0.246629, 0.721857, -0.646604,
		-0.957561, -0.078816, 0.277247,
		35.078972, 40.918301, 22.968157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403965, 41.514835, 22.711990>,  <35.749268, 40.973469, 22.774084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403965, 41.514835, 22.711990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.784313, 41.571800, 22.821945>,  <37.012524, 41.605980, 22.887918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.784313, 41.571800, 22.821945>,  <36.403965, 41.514835, 22.711990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784313, 41.571800, 22.821945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301674, 0.226776, 0.926048,
		0.069539, -0.963479, 0.258596,
		0.950872, 0.142408, 0.274887,
		37.069576, 41.614525, 22.904411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472275, 41.142822, 23.317364>,  <36.403965, 41.514835, 22.711990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472275, 41.142822, 23.317364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.798149, 41.370605, 23.361183>,  <36.993675, 41.507275, 23.387474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.798149, 41.370605, 23.361183>,  <36.472275, 41.142822, 23.317364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798149, 41.370605, 23.361183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176249, 0.063179, 0.982316,
		0.552468, -0.819588, 0.151838,
		0.814687, 0.569459, 0.109547,
		37.042557, 41.541443, 23.394047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879932, 40.897236, 23.819183>,  <36.472275, 41.142822, 23.317364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879932, 40.897236, 23.819183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.980797, 41.284035, 23.804594>,  <37.041317, 41.516113, 23.795841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.980797, 41.284035, 23.804594>,  <36.879932, 40.897236, 23.819183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980797, 41.284035, 23.804594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006051, 0.036114, 0.999329,
		0.967666, -0.252215, 0.003255,
		0.252163, 0.966997, -0.036473,
		37.056446, 41.574135, 23.793652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392464, 41.040974, 24.400732>,  <36.879932, 40.897236, 23.819183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392464, 41.040974, 24.400732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.247391, 41.396072, 24.287336>,  <37.160347, 41.609131, 24.219299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.247391, 41.396072, 24.287336>,  <37.392464, 41.040974, 24.400732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247391, 41.396072, 24.287336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088958, 0.335793, 0.937726,
		0.927656, 0.314881, -0.200759,
		-0.362685, 0.887746, -0.283489,
		37.138584, 41.662395, 24.202290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769672, 41.552807, 24.828169>,  <37.392464, 41.040974, 24.400732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769672, 41.552807, 24.828169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.433990, 41.734016, 24.707832>,  <37.232582, 41.842743, 24.635632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.433990, 41.734016, 24.707832>,  <37.769672, 41.552807, 24.828169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433990, 41.734016, 24.707832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228471, 0.208304, 0.951005,
		0.493494, 0.866821, -0.071307,
		-0.839205, 0.453024, -0.300840,
		37.182228, 41.869923, 24.617580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654835, 42.006474, 25.320740>,  <37.769672, 41.552807, 24.828169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654835, 42.006474, 25.320740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.300888, 42.049454, 25.139429>,  <37.088520, 42.075241, 25.030642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.300888, 42.049454, 25.139429>,  <37.654835, 42.006474, 25.320740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300888, 42.049454, 25.139429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409316, 0.285229, 0.866663,
		0.222413, 0.952417, -0.208408,
		-0.884869, 0.107452, -0.453278,
		37.035427, 42.081688, 25.003445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411243, 42.714005, 25.503059>,  <37.654835, 42.006474, 25.320740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411243, 42.714005, 25.503059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.109665, 42.467312, 25.412544>,  <36.928719, 42.319298, 25.358236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.109665, 42.467312, 25.412544>,  <37.411243, 42.714005, 25.503059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109665, 42.467312, 25.412544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374425, 0.120389, 0.919409,
		-0.539783, 0.777915, -0.321686,
		-0.753950, -0.616729, -0.226286,
		36.883480, 42.282291, 25.344658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735859, 43.028637, 25.661243>,  <37.411243, 42.714005, 25.503059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735859, 43.028637, 25.661243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.662548, 42.635422, 25.663874>,  <36.618561, 42.399494, 25.665451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.662548, 42.635422, 25.663874>,  <36.735859, 43.028637, 25.661243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662548, 42.635422, 25.663874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519083, 0.102455, 0.848561,
		-0.834842, 0.152112, -0.529057,
		-0.183281, -0.983038, 0.006575,
		36.607563, 42.340511, 25.665846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986931, 42.949821, 25.986332>,  <36.735859, 43.028637, 25.661243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986931, 42.949821, 25.986332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.145351, 42.584351, 26.022869>,  <36.240406, 42.365070, 26.044790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.145351, 42.584351, 26.022869>,  <35.986931, 42.949821, 25.986332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145351, 42.584351, 26.022869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553636, -0.158252, 0.817584,
		-0.732549, -0.374377, -0.568519,
		0.396054, -0.913673, 0.091341,
		36.264168, 42.310249, 26.050272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404152, 42.555897, 26.212528>,  <35.986931, 42.949821, 25.986332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404152, 42.555897, 26.212528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.724731, 42.329376, 26.289454>,  <35.917080, 42.193462, 26.335608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.724731, 42.329376, 26.289454>,  <35.404152, 42.555897, 26.212528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724731, 42.329376, 26.289454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426820, -0.316345, 0.847202,
		-0.418937, -0.761069, -0.495243,
		0.801446, -0.566304, 0.192311,
		35.965164, 42.159485, 26.347147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114079, 41.962841, 26.489573>,  <35.404152, 42.555897, 26.212528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114079, 41.962841, 26.489573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.497871, 41.959270, 26.602222>,  <35.728146, 41.957130, 26.669813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.497871, 41.959270, 26.602222>,  <35.114079, 41.962841, 26.489573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497871, 41.959270, 26.602222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245923, -0.514371, 0.821550,
		0.137529, -0.857521, -0.495725,
		0.959483, -0.008923, 0.281625,
		35.785717, 41.956593, 26.686710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968449, 41.337463, 25.981291>,  <35.114079, 41.962841, 26.489573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968449, 41.337463, 25.981291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.666271, 41.086491, 25.905783>,  <34.484966, 40.935905, 25.860477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.666271, 41.086491, 25.905783>,  <34.968449, 41.337463, 25.981291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666271, 41.086491, 25.905783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211455, 0.506152, -0.836120,
		0.620160, -0.591721, -0.515042,
		-0.755439, -0.627437, -0.188773,
		34.439640, 40.898258, 25.849152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110764, 41.186558, 25.384962>,  <34.968449, 41.337463, 25.981291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110764, 41.186558, 25.384962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.732506, 41.059628, 25.413427>,  <34.505550, 40.983471, 25.430506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.732506, 41.059628, 25.413427>,  <35.110764, 41.186558, 25.384962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732506, 41.059628, 25.413427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182134, 0.335493, -0.924268,
		0.269414, -0.886991, -0.375052,
		-0.945644, -0.317321, 0.071164,
		34.448814, 40.964432, 25.434776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979259, 40.935181, 24.759115>,  <35.110764, 41.186558, 25.384962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979259, 40.935181, 24.759115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.624126, 41.034878, 24.913845>,  <34.411045, 41.094696, 25.006683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.624126, 41.034878, 24.913845>,  <34.979259, 40.935181, 24.759115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624126, 41.034878, 24.913845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197635, 0.552611, -0.809667,
		-0.415563, -0.795299, -0.441368,
		-0.887833, 0.249238, 0.386824,
		34.357777, 41.109650, 25.029892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419910, 40.696766, 24.277075>,  <34.979259, 40.935181, 24.759115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419910, 40.696766, 24.277075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.230949, 40.971272, 24.498297>,  <34.117573, 41.135975, 24.631031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.230949, 40.971272, 24.498297>,  <34.419910, 40.696766, 24.277075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230949, 40.971272, 24.498297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321421, 0.450137, -0.833106,
		-0.820684, -0.571328, 0.007934,
		-0.472405, 0.686267, 0.553057,
		34.089230, 41.177151, 24.664213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585148, 40.779278, 24.076769>,  <34.419910, 40.696766, 24.277075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585148, 40.779278, 24.076769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.716782, 41.114655, 24.250532>,  <33.795761, 41.315880, 24.354790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.716782, 41.114655, 24.250532>,  <33.585148, 40.779278, 24.076769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716782, 41.114655, 24.250532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255442, 0.521923, -0.813847,
		-0.909094, 0.156860, 0.385932,
		0.329087, 0.838446, 0.434408,
		33.815506, 41.366188, 24.380854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096924, 41.334751, 23.908724>,  <33.585148, 40.779278, 24.076769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096924, 41.334751, 23.908724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.427906, 41.531898, 24.016350>,  <33.626495, 41.650188, 24.080925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.427906, 41.531898, 24.016350>,  <33.096924, 41.334751, 23.908724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427906, 41.531898, 24.016350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000665, 0.480026, -0.877254,
		-0.561529, 0.725711, 0.397529,
		0.827457, 0.492867, 0.269066,
		33.676144, 41.679760, 24.097069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031097, 42.072575, 23.581938>,  <33.096924, 41.334751, 23.908724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031097, 42.072575, 23.581938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.415195, 42.040833, 23.688992>,  <33.645657, 42.021786, 23.753223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.415195, 42.040833, 23.688992>,  <33.031097, 42.072575, 23.581938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415195, 42.040833, 23.688992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278505, 0.337475, -0.899192,
		-0.018962, 0.937984, 0.346161,
		0.960248, -0.079357, 0.267632,
		33.703270, 42.017025, 23.769281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413181, 42.741982, 23.506632>,  <33.031097, 42.072575, 23.581938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413181, 42.741982, 23.506632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.699482, 42.467583, 23.454296>,  <33.871262, 42.302944, 23.422895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.699482, 42.467583, 23.454296>,  <33.413181, 42.741982, 23.506632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699482, 42.467583, 23.454296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300058, 0.471259, -0.829385,
		0.630612, 0.554371, 0.543141,
		0.715747, -0.685994, -0.130838,
		33.914207, 42.261784, 23.415045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981155, 43.158512, 23.356100>,  <33.413181, 42.741982, 23.506632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981155, 43.158512, 23.356100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.065056, 42.788563, 23.229223>,  <34.115395, 42.566593, 23.153097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.065056, 42.788563, 23.229223>,  <33.981155, 43.158512, 23.356100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065056, 42.788563, 23.229223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306521, 0.370254, -0.876902,
		0.928466, 0.086704, 0.361155,
		0.209750, -0.924875, -0.317192,
		34.127979, 42.511101, 23.134066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668743, 43.183556, 23.122396>,  <33.981155, 43.158512, 23.356100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668743, 43.183556, 23.122396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.560127, 42.853767, 22.923794>,  <34.494957, 42.655895, 22.804632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.560127, 42.853767, 22.923794>,  <34.668743, 43.183556, 23.122396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560127, 42.853767, 22.923794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441193, 0.351858, -0.825557,
		0.855345, -0.443227, 0.268206,
		-0.271539, -0.824467, -0.496508,
		34.478664, 42.606426, 22.774841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254726, 42.970917, 22.745516>,  <34.668743, 43.183556, 23.122396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254726, 42.970917, 22.745516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.958645, 42.761669, 22.576542>,  <34.780998, 42.636120, 22.475157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.958645, 42.761669, 22.576542>,  <35.254726, 42.970917, 22.745516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958645, 42.761669, 22.576542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322638, 0.274881, -0.905729,
		0.589922, -0.806715, -0.034690,
		-0.740201, -0.523117, -0.422435,
		34.736584, 42.604733, 22.449812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528767, 42.667904, 22.177109>,  <35.254726, 42.970917, 22.745516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528767, 42.667904, 22.177109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.138508, 42.678463, 22.090010>,  <34.904354, 42.684799, 22.037750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.138508, 42.678463, 22.090010>,  <35.528767, 42.667904, 22.177109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138508, 42.678463, 22.090010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217061, 0.258961, -0.941182,
		0.031541, -0.965527, -0.258385,
		-0.975648, 0.026399, -0.217746,
		34.845814, 42.686382, 22.024687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421150, 42.219196, 21.520256>,  <35.528767, 42.667904, 22.177109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421150, 42.219196, 21.520256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.128094, 42.484283, 21.582285>,  <34.952259, 42.643333, 21.619503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.128094, 42.484283, 21.582285>,  <35.421150, 42.219196, 21.520256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128094, 42.484283, 21.582285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024343, 0.253210, -0.967105,
		-0.680180, -0.704766, -0.201644,
		-0.732641, 0.662714, 0.155073,
		34.908302, 42.683098, 21.628807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327976, 41.468109, 21.584339>,  <35.421150, 42.219196, 21.520256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327976, 41.468109, 21.584339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.163059, 41.353367, 21.238453>,  <35.064110, 41.284523, 21.030922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.163059, 41.353367, 21.238453>,  <35.327976, 41.468109, 21.584339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163059, 41.353367, 21.238453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270138, -0.867964, 0.416729,
		-0.870083, 0.405405, 0.280362,
		-0.412288, -0.286853, -0.864716,
		35.039371, 41.267311, 20.979038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579464, 41.485687, 21.630617>,  <35.327976, 41.468109, 21.584339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579464, 41.485687, 21.630617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.713676, 41.217491, 21.365932>,  <34.794205, 41.056572, 21.207123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.713676, 41.217491, 21.365932>,  <34.579464, 41.485687, 21.630617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713676, 41.217491, 21.365932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325305, -0.741686, 0.586582,
		-0.884081, 0.018444, -0.466970,
		0.335526, -0.670494, -0.661710,
		34.814335, 41.016342, 21.167419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147163, 40.880512, 21.688032>,  <34.579464, 41.485687, 21.630617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147163, 40.880512, 21.688032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.460304, 40.726871, 21.492231>,  <34.648190, 40.634686, 21.374752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.460304, 40.726871, 21.492231>,  <34.147163, 40.880512, 21.688032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460304, 40.726871, 21.492231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173225, -0.890150, 0.421457,
		-0.597613, -0.245143, -0.763389,
		0.782849, -0.384106, -0.489500,
		34.695160, 40.611641, 21.345381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865582, 40.223930, 21.509821>,  <34.147163, 40.880512, 21.688032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865582, 40.223930, 21.509821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.261566, 40.190533, 21.464214>,  <34.499157, 40.170494, 21.436850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.261566, 40.190533, 21.464214>,  <33.865582, 40.223930, 21.509821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261566, 40.190533, 21.464214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019779, -0.880724, 0.473217,
		-0.139928, -0.466213, -0.873537,
		0.989964, -0.083494, -0.114016,
		34.558556, 40.165485, 21.430010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014339, 39.553200, 21.229885>,  <33.865582, 40.223930, 21.509821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014339, 39.553200, 21.229885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.352436, 39.675667, 21.405079>,  <34.555294, 39.749149, 21.510195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.352436, 39.675667, 21.405079>,  <34.014339, 39.553200, 21.229885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352436, 39.675667, 21.405079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015767, -0.833529, 0.552251,
		0.534155, -0.459879, -0.709358,
		0.845239, 0.306172, 0.437983,
		34.606007, 39.767517, 21.536474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475563, 38.991192, 21.199982>,  <34.014339, 39.553200, 21.229885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475563, 38.991192, 21.199982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.598568, 39.235214, 21.492083>,  <34.672371, 39.381626, 21.667343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.598568, 39.235214, 21.492083>,  <34.475563, 38.991192, 21.199982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598568, 39.235214, 21.492083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269812, -0.791844, 0.547891,
		0.912491, 0.028551, -0.408099,
		0.307508, 0.610056, 0.730254,
		34.690819, 39.418232, 21.711159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105820, 38.722580, 21.514698>,  <34.475563, 38.991192, 21.199982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105820, 38.722580, 21.514698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.989437, 38.988819, 21.789598>,  <34.919605, 39.148563, 21.954538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.989437, 38.988819, 21.789598>,  <35.105820, 38.722580, 21.514698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989437, 38.988819, 21.789598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201243, -0.659683, 0.724099,
		0.935330, 0.348990, 0.057995,
		-0.290961, 0.665601, 0.687253,
		34.902149, 39.188499, 21.995775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638668, 38.680275, 21.982471>,  <35.105820, 38.722580, 21.514698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638668, 38.680275, 21.982471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.305298, 38.814095, 22.158417>,  <35.105274, 38.894386, 22.263985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.305298, 38.814095, 22.158417>,  <35.638668, 38.680275, 21.982471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305298, 38.814095, 22.158417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059953, -0.736514, 0.673760,
		0.549369, 0.587901, 0.593773,
		-0.833426, 0.334544, 0.439865,
		35.055271, 38.914459, 22.290377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088886, 39.218224, 22.184685>,  <35.638668, 38.680275, 21.982471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088886, 39.218224, 22.184685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.472408, 39.104855, 22.192394>,  <36.702522, 39.036835, 22.197020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.472408, 39.104855, 22.192394>,  <36.088886, 39.218224, 22.184685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472408, 39.104855, 22.192394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136683, 0.400783, -0.905920,
		0.249033, 0.871232, 0.423010,
		0.958802, -0.283422, 0.019275,
		36.760048, 39.019829, 22.198177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553543, 39.838940, 22.061907>,  <36.088886, 39.218224, 22.184685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553543, 39.838940, 22.061907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.729759, 39.495445, 21.957226>,  <36.835491, 39.289349, 21.894417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.729759, 39.495445, 21.957226>,  <36.553543, 39.838940, 22.061907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729759, 39.495445, 21.957226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165411, 0.364169, -0.916526,
		0.882361, 0.360480, 0.302477,
		0.440543, -0.858740, -0.261701,
		36.861923, 39.237823, 21.878716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090866, 40.132225, 21.656107>,  <36.553543, 39.838940, 22.061907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090866, 40.132225, 21.656107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.113186, 39.738621, 21.588442>,  <37.126579, 39.502460, 21.547842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.113186, 39.738621, 21.588442>,  <37.090866, 40.132225, 21.656107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113186, 39.738621, 21.588442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524381, 0.173060, -0.833712,
		0.849654, -0.042184, 0.525651,
		0.055800, -0.984007, -0.169162,
		37.129925, 39.443420, 21.537693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677940, 39.973778, 21.455824>,  <37.090866, 40.132225, 21.656107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677940, 39.973778, 21.455824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.455162, 39.683254, 21.294685>,  <37.321495, 39.508942, 21.198002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.455162, 39.683254, 21.294685>,  <37.677940, 39.973778, 21.455824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455162, 39.683254, 21.294685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501784, 0.092253, -0.860059,
		0.661832, -0.681151, 0.313069,
		-0.556948, -0.726308, -0.402847,
		37.288078, 39.465363, 21.173832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139767, 39.467129, 21.143427>,  <37.677940, 39.973778, 21.455824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139767, 39.467129, 21.143427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.801556, 39.416264, 20.935999>,  <37.598629, 39.385746, 20.811543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.801556, 39.416264, 20.935999>,  <38.139767, 39.467129, 21.143427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801556, 39.416264, 20.935999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523867, -0.009854, -0.851743,
		0.103197, -0.991833, 0.074947,
		-0.845525, -0.127159, -0.518572,
		37.547897, 39.378117, 20.780428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403637, 39.099949, 20.607229>,  <38.139767, 39.467129, 21.143427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403637, 39.099949, 20.607229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.053127, 39.261650, 20.502369>,  <37.842823, 39.358673, 20.439453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.053127, 39.261650, 20.502369>,  <38.403637, 39.099949, 20.607229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053127, 39.261650, 20.502369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368365, 0.211396, -0.905328,
		-0.310567, -0.889881, -0.334155,
		-0.876273, 0.404256, -0.262149,
		37.790245, 39.382927, 20.423725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201679, 38.758770, 19.985994>,  <38.403637, 39.099949, 20.607229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201679, 38.758770, 19.985994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.987427, 39.096493, 19.979666>,  <37.858875, 39.299126, 19.975868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.987427, 39.096493, 19.979666>,  <38.201679, 38.758770, 19.985994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987427, 39.096493, 19.979666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222357, 0.122939, -0.967183,
		-0.814650, -0.521574, -0.253587,
		-0.535633, 0.844303, -0.015824,
		37.826736, 39.349785, 19.974918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002026, 38.807007, 19.338404>,  <38.201679, 38.758770, 19.985994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002026, 38.807007, 19.338404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.954781, 39.184452, 19.462111>,  <37.926434, 39.410919, 19.536335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.954781, 39.184452, 19.462111>,  <38.002026, 38.807007, 19.338404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954781, 39.184452, 19.462111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261841, 0.330020, -0.906932,
		-0.957856, -0.026142, -0.286056,
		-0.118113, 0.943612, 0.309267,
		37.919346, 39.467537, 19.554890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592270, 39.187618, 18.779562>,  <38.002026, 38.807007, 19.338404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592270, 39.187618, 18.779562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.818436, 39.455536, 18.972097>,  <37.954136, 39.616287, 19.087620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.818436, 39.455536, 18.972097>,  <37.592270, 39.187618, 18.779562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818436, 39.455536, 18.972097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434510, 0.254155, -0.864064,
		-0.701077, 0.697699, -0.147329,
		0.565413, 0.669792, 0.481339,
		37.988060, 39.656475, 19.116499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.663433, 32.369259, 34.268570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.720421, 32.765022, 34.257477>,  <37.754612, 33.002480, 34.250820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.720421, 32.765022, 34.257477>,  <37.663433, 32.369259, 34.268570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720421, 32.765022, 34.257477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239206, 0.007228, -0.970942,
		-0.960460, 0.144962, 0.237702,
		0.142467, 0.989411, -0.027734,
		37.763161, 33.061844, 34.249157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027824, 32.694706, 34.035206>,  <37.663433, 32.369259, 34.268570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027824, 32.694706, 34.035206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.358379, 32.910313, 33.970043>,  <37.556713, 33.039677, 33.930946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.358379, 32.910313, 33.970043>,  <37.027824, 32.694706, 34.035206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358379, 32.910313, 33.970043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190461, -0.004695, -0.981683,
		-0.529907, 0.842283, 0.098781,
		0.826392, 0.539015, -0.162910,
		37.606297, 33.072018, 33.921169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830650, 33.395416, 33.788002>,  <37.027824, 32.694706, 34.035206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830650, 33.395416, 33.788002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.208130, 33.366268, 33.658932>,  <37.434616, 33.348778, 33.581490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.208130, 33.366268, 33.658932>,  <36.830650, 33.395416, 33.788002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208130, 33.366268, 33.658932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278046, 0.353741, -0.893061,
		0.179223, 0.932500, 0.313563,
		0.943700, -0.072872, -0.322676,
		37.491241, 33.344406, 33.562130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033386, 34.125050, 33.567913>,  <36.830650, 33.395416, 33.788002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033386, 34.125050, 33.567913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.262348, 33.856613, 33.379452>,  <37.399727, 33.695549, 33.266376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.262348, 33.856613, 33.379452>,  <37.033386, 34.125050, 33.567913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262348, 33.856613, 33.379452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249150, 0.405080, -0.879678,
		0.781203, 0.620919, 0.064666,
		0.572404, -0.671096, -0.471152,
		37.434071, 33.655285, 33.238106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301964, 34.511559, 33.133705>,  <37.033386, 34.125050, 33.567913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301964, 34.511559, 33.133705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.357037, 34.147217, 32.978073>,  <37.390079, 33.928612, 32.884693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.357037, 34.147217, 32.978073>,  <37.301964, 34.511559, 33.133705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357037, 34.147217, 32.978073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209597, 0.357132, -0.910234,
		0.968046, 0.206874, -0.141742,
		0.137684, -0.910857, -0.389080,
		37.398342, 33.873959, 32.861347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725224, 34.645069, 32.489273>,  <37.301964, 34.511559, 33.133705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725224, 34.645069, 32.489273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.541691, 34.292179, 32.447018>,  <37.431572, 34.080444, 32.421665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.541691, 34.292179, 32.447018>,  <37.725224, 34.645069, 32.489273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541691, 34.292179, 32.447018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054571, 0.146643, -0.987683,
		0.886848, -0.447412, -0.115428,
		-0.458829, -0.882224, -0.105634,
		37.404041, 34.027512, 32.415329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137085, 34.344776, 31.948040>,  <37.725224, 34.645069, 32.489273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137085, 34.344776, 31.948040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.784859, 34.155430, 31.938782>,  <37.573524, 34.041821, 31.933226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.784859, 34.155430, 31.938782>,  <38.137085, 34.344776, 31.948040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784859, 34.155430, 31.938782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066986, 0.172663, -0.982701,
		0.469174, -0.863778, -0.183749,
		-0.880562, -0.473366, -0.023148,
		37.520691, 34.013420, 31.931837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157059, 34.010136, 31.310610>,  <38.137085, 34.344776, 31.948040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157059, 34.010136, 31.310610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.764919, 33.997391, 31.388477>,  <37.529636, 33.989742, 31.435198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.764919, 33.997391, 31.388477>,  <38.157059, 34.010136, 31.310610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764919, 33.997391, 31.388477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197089, 0.117017, -0.973377,
		0.008234, -0.992619, -0.120998,
		-0.980351, -0.031862, 0.194671,
		37.470814, 33.987831, 31.446878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838337, 33.460964, 30.922089>,  <38.157059, 34.010136, 31.310610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838337, 33.460964, 30.922089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.533325, 33.693310, 31.036034>,  <37.350319, 33.832718, 31.104401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.533325, 33.693310, 31.036034>,  <37.838337, 33.460964, 30.922089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533325, 33.693310, 31.036034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255252, 0.134475, -0.957477,
		-0.594470, -0.802817, 0.045726,
		-0.762530, 0.580863, 0.284862,
		37.304565, 33.867569, 31.121492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328957, 33.382572, 30.369564>,  <37.838337, 33.460964, 30.922089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328957, 33.382572, 30.369564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192486, 33.714630, 30.545956>,  <37.110603, 33.913864, 30.651791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192486, 33.714630, 30.545956>,  <37.328957, 33.382572, 30.369564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192486, 33.714630, 30.545956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389216, 0.302265, -0.870142,
		-0.855635, -0.468506, 0.219980,
		-0.341174, 0.830144, 0.440978,
		37.090134, 33.963673, 30.678249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546188, 33.472805, 30.153059>,  <37.328957, 33.382572, 30.369564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546188, 33.472805, 30.153059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.701256, 33.831848, 30.236979>,  <36.794296, 34.047272, 30.287331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.701256, 33.831848, 30.236979>,  <36.546188, 33.472805, 30.153059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701256, 33.831848, 30.236979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409247, 0.371532, -0.833355,
		-0.825971, 0.237209, 0.511374,
		0.387671, 0.897606, 0.209798,
		36.817558, 34.101131, 30.299917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086090, 33.948059, 29.922312>,  <36.546188, 33.472805, 30.153059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086090, 33.948059, 29.922312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415070, 34.174187, 29.947567>,  <36.612457, 34.309864, 29.962721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415070, 34.174187, 29.947567>,  <36.086090, 33.948059, 29.922312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415070, 34.174187, 29.947567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254761, 0.465314, -0.847691,
		-0.508594, 0.681101, 0.526719,
		0.822453, 0.565318, 0.063138,
		36.661804, 34.343781, 29.966509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426704, 34.414188, 30.037764>,  <36.086090, 33.948059, 29.922312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426704, 34.414188, 30.037764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.055412, 34.339314, 29.909172>,  <34.832638, 34.294388, 29.832018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.055412, 34.339314, 29.909172>,  <35.426704, 34.414188, 30.037764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055412, 34.339314, 29.909172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288580, -0.183009, 0.939803,
		-0.234749, 0.965127, 0.115857,
		-0.928232, -0.187183, -0.321477,
		34.776943, 34.283157, 29.812729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957523, 34.891933, 30.299576>,  <35.426704, 34.414188, 30.037764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957523, 34.891933, 30.299576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756653, 34.555485, 30.219250>,  <34.636131, 34.353615, 30.171055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756653, 34.555485, 30.219250>,  <34.957523, 34.891933, 30.299576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756653, 34.555485, 30.219250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225347, -0.096913, 0.969447,
		-0.834887, 0.532087, -0.140877,
		-0.502177, -0.841125, -0.200816,
		34.605999, 34.303146, 30.159004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257668, 34.923855, 30.688158>,  <34.957523, 34.891933, 30.299576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257668, 34.923855, 30.688158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.333233, 34.540379, 30.603096>,  <34.378574, 34.310291, 30.552059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.333233, 34.540379, 30.603096>,  <34.257668, 34.923855, 30.688158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333233, 34.540379, 30.603096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253386, -0.256813, 0.932654,
		-0.948739, -0.122310, -0.291435,
		0.188917, -0.958690, -0.212657,
		34.389908, 34.252773, 30.539299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668682, 34.511227, 30.976286>,  <34.257668, 34.923855, 30.688158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668682, 34.511227, 30.976286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.946468, 34.225784, 30.939451>,  <34.113140, 34.054520, 30.917351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.946468, 34.225784, 30.939451>,  <33.668682, 34.511227, 30.976286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946468, 34.225784, 30.939451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228378, -0.339978, 0.912282,
		-0.682321, -0.612517, -0.399075,
		0.694465, -0.713609, -0.092089,
		34.154808, 34.011700, 30.911825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282974, 33.982899, 31.390854>,  <33.668682, 34.511227, 30.976286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282974, 33.982899, 31.390854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.665421, 33.874493, 31.346321>,  <33.894890, 33.809448, 31.319601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.665421, 33.874493, 31.346321>,  <33.282974, 33.982899, 31.390854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665421, 33.874493, 31.346321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042367, -0.503871, 0.862739,
		-0.289914, -0.820161, -0.493241,
		0.956115, -0.271017, -0.111331,
		33.952255, 33.793186, 31.312922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361015, 33.259647, 31.692652>,  <33.282974, 33.982899, 31.390854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361015, 33.259647, 31.692652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.730228, 33.413445, 31.687433>,  <33.951756, 33.505722, 31.684301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.730228, 33.413445, 31.687433>,  <33.361015, 33.259647, 31.692652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730228, 33.413445, 31.687433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165166, -0.365419, 0.916072,
		0.347457, -0.847722, -0.400800,
		0.923035, 0.384495, -0.013047,
		34.007137, 33.528793, 31.683519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815853, 32.792290, 32.033489>,  <33.361015, 33.259647, 31.692652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815853, 32.792290, 32.033489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.064098, 33.104271, 32.001221>,  <34.213047, 33.291458, 31.981859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.064098, 33.104271, 32.001221>,  <33.815853, 32.792290, 32.033489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064098, 33.104271, 32.001221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593984, -0.400475, 0.697712,
		0.511878, -0.480927, -0.711822,
		0.620615, 0.779955, -0.080669,
		34.250282, 33.338257, 31.977020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482971, 32.465271, 32.089333>,  <33.815853, 32.792290, 32.033489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482971, 32.465271, 32.089333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.487030, 32.848949, 32.202351>,  <34.489468, 33.079159, 32.270161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.487030, 32.848949, 32.202351>,  <34.482971, 32.465271, 32.089333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487030, 32.848949, 32.202351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547586, -0.241762, 0.801062,
		0.836688, 0.146588, -0.527699,
		0.010152, 0.959199, 0.282549,
		34.490074, 33.136711, 32.287117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123276, 32.552586, 32.434986>,  <34.482971, 32.465271, 32.089333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123276, 32.552586, 32.434986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.927994, 32.882103, 32.550236>,  <34.810825, 33.079815, 32.619385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.927994, 32.882103, 32.550236>,  <35.123276, 32.552586, 32.434986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927994, 32.882103, 32.550236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503325, -0.003932, 0.864088,
		0.712964, 0.566876, -0.412717,
		-0.488208, 0.823794, 0.288126,
		34.781532, 33.129242, 32.636673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595325, 32.954132, 32.808350>,  <35.123276, 32.552586, 32.434986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595325, 32.954132, 32.808350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.226692, 33.060238, 32.921711>,  <35.005512, 33.123901, 32.989727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.226692, 33.060238, 32.921711>,  <35.595325, 32.954132, 32.808350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226692, 33.060238, 32.921711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280534, -0.049463, 0.958569,
		0.268289, 0.962907, -0.028830,
		-0.921586, 0.265261, 0.283399,
		34.950214, 33.139816, 33.006729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619572, 33.614452, 33.293430>,  <35.595325, 32.954132, 32.808350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619572, 33.614452, 33.293430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.259937, 33.458199, 33.372471>,  <35.044155, 33.364445, 33.419895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.259937, 33.458199, 33.372471>,  <35.619572, 33.614452, 33.293430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259937, 33.458199, 33.372471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261203, -0.116477, 0.958231,
		-0.351306, 0.913145, 0.206759,
		-0.899087, -0.390638, 0.197597,
		34.990211, 33.341007, 33.431751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459679, 33.842812, 33.876476>,  <35.619572, 33.614452, 33.293430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459679, 33.842812, 33.876476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.231834, 33.514236, 33.865265>,  <35.095127, 33.317089, 33.858540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.231834, 33.514236, 33.865265>,  <35.459679, 33.842812, 33.876476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231834, 33.514236, 33.865265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160935, -0.144905, 0.976270,
		-0.806008, 0.551579, 0.214737,
		-0.569607, -0.821440, -0.028026,
		35.060951, 33.267803, 33.856857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830524, 34.013092, 34.323574>,  <35.459679, 33.842812, 33.876476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830524, 34.013092, 34.323574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.890957, 33.620308, 34.278084>,  <34.927216, 33.384640, 34.250790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.890957, 33.620308, 34.278084>,  <34.830524, 34.013092, 34.323574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890957, 33.620308, 34.278084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124181, -0.095281, 0.987675,
		-0.980690, -0.163346, 0.107545,
		0.151086, -0.981957, -0.113725,
		34.936283, 33.325722, 34.243965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554657, 33.835697, 34.855511>,  <34.830524, 34.013092, 34.323574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554657, 33.835697, 34.855511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784737, 33.534492, 34.727684>,  <34.922783, 33.353771, 34.650990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.784737, 33.534492, 34.727684>,  <34.554657, 33.835697, 34.855511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784737, 33.534492, 34.727684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356847, -0.120543, 0.926353,
		-0.736074, -0.646873, 0.199373,
		0.575199, -0.753010, -0.319564,
		34.957298, 33.308590, 34.631813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015404, 34.144070, 34.453987>,  <34.554657, 33.835697, 34.855511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015404, 34.144070, 34.453987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645653, 34.169510, 34.604439>,  <33.423801, 34.184772, 34.694710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645653, 34.169510, 34.604439>,  <34.015404, 34.144070, 34.453987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645653, 34.169510, 34.604439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187656, 0.782629, -0.593529,
		-0.332119, -0.619230, -0.711513,
		-0.924382, 0.063602, 0.376129,
		33.368340, 34.188591, 34.717278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449986, 34.096352, 33.947098>,  <34.015404, 34.144070, 34.453987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449986, 34.096352, 33.947098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.311172, 34.328571, 34.241726>,  <33.227886, 34.467903, 34.418503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.311172, 34.328571, 34.241726>,  <33.449986, 34.096352, 33.947098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311172, 34.328571, 34.241726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160144, 0.737162, -0.656465,
		-0.924080, -0.345770, -0.162847,
		-0.347031, 0.580547, 0.736570,
		33.207062, 34.502735, 34.462696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772190, 34.371807, 33.756153>,  <33.449986, 34.096352, 33.947098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772190, 34.371807, 33.756153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967728, 34.602612, 34.017868>,  <33.085049, 34.741093, 34.174896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967728, 34.602612, 34.017868>,  <32.772190, 34.371807, 33.756153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967728, 34.602612, 34.017868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019411, 0.757017, -0.653107,
		-0.872156, 0.306566, 0.381262,
		0.488842, 0.577012, 0.654287,
		33.114380, 34.775715, 34.214153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336338, 34.945225, 33.895996>,  <32.772190, 34.371807, 33.756153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336338, 34.945225, 33.895996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.701168, 35.080902, 33.988136>,  <32.920067, 35.162308, 34.043419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.701168, 35.080902, 33.988136>,  <32.336338, 34.945225, 33.895996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701168, 35.080902, 33.988136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086099, 0.707726, -0.701221,
		-0.400873, 0.619736, 0.674706,
		0.912079, 0.339192, 0.230350,
		32.974792, 35.182659, 34.057240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281616, 35.595924, 34.041431>,  <32.336338, 34.945225, 33.895996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281616, 35.595924, 34.041431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.667114, 35.567238, 33.938625>,  <32.898411, 35.550026, 33.876942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.667114, 35.567238, 33.938625>,  <32.281616, 35.595924, 34.041431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667114, 35.567238, 33.938625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130192, 0.714381, -0.687539,
		0.232915, 0.696072, 0.679142,
		0.963743, -0.071719, -0.257013,
		32.956238, 35.545723, 33.861523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465023, 36.285347, 34.065907>,  <32.281616, 35.595924, 34.041431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465023, 36.285347, 34.065907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712002, 36.076042, 33.830975>,  <32.860191, 35.950459, 33.690018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712002, 36.076042, 33.830975>,  <32.465023, 36.285347, 34.065907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712002, 36.076042, 33.830975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054870, 0.716185, -0.695751,
		0.784694, 0.461818, 0.413497,
		0.617450, -0.523263, -0.587326,
		32.897236, 35.919064, 33.654778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832645, 36.873482, 33.754173>,  <32.465023, 36.285347, 34.065907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832645, 36.873482, 33.754173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917282, 36.557152, 33.524452>,  <32.968063, 36.367355, 33.386620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917282, 36.557152, 33.524452>,  <32.832645, 36.873482, 33.754173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917282, 36.557152, 33.524452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013199, 0.585241, -0.810753,
		0.977268, 0.179132, 0.113396,
		0.211596, -0.790826, -0.574301,
		32.980762, 36.319904, 33.352161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305634, 37.151703, 33.372261>,  <32.832645, 36.873482, 33.754173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305634, 37.151703, 33.372261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.174686, 36.827061, 33.178715>,  <33.096119, 36.632275, 33.062588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.174686, 36.827061, 33.178715>,  <33.305634, 37.151703, 33.372261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174686, 36.827061, 33.178715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001404, 0.512497, -0.858688,
		0.944896, -0.280427, -0.168914,
		-0.327367, -0.811608, -0.483863,
		33.076477, 36.583580, 33.033554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837669, 36.974327, 32.938221>,  <33.305634, 37.151703, 33.372261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837669, 36.974327, 32.938221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.515896, 36.798180, 32.778740>,  <33.322830, 36.692490, 32.683052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.515896, 36.798180, 32.778740>,  <33.837669, 36.974327, 32.938221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515896, 36.798180, 32.778740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118035, 0.539290, -0.833807,
		0.582201, -0.717801, -0.381842,
		-0.804431, -0.440373, -0.398701,
		33.274567, 36.666069, 32.659130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060497, 36.927731, 32.252563>,  <33.837669, 36.974327, 32.938221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060497, 36.927731, 32.252563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.665756, 36.869694, 32.224110>,  <33.428909, 36.834869, 32.207035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.665756, 36.869694, 32.224110>,  <34.060497, 36.927731, 32.252563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665756, 36.869694, 32.224110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003414, 0.421396, -0.906870,
		0.161557, -0.895195, -0.415362,
		-0.986858, -0.145093, -0.071136,
		33.369698, 36.826164, 32.202770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889431, 36.584858, 31.652000>,  <34.060497, 36.927731, 32.252563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889431, 36.584858, 31.652000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.531399, 36.747215, 31.725853>,  <33.316582, 36.844627, 31.770164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.531399, 36.747215, 31.725853>,  <33.889431, 36.584858, 31.652000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531399, 36.747215, 31.725853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052843, 0.314590, -0.947756,
		-0.442768, -0.858072, -0.260135,
		-0.895078, 0.405889, 0.184633,
		33.262875, 36.868980, 31.781242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427975, 36.340282, 31.181593>,  <33.889431, 36.584858, 31.652000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427975, 36.340282, 31.181593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.304203, 36.690067, 31.331028>,  <33.229939, 36.899937, 31.420689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.304203, 36.690067, 31.331028>,  <33.427975, 36.340282, 31.181593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304203, 36.690067, 31.331028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048820, 0.377742, -0.924623,
		-0.949668, -0.304345, -0.074194,
		-0.309431, 0.874463, 0.373588,
		33.211372, 36.952408, 31.443104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965572, 36.562222, 30.634846>,  <33.427975, 36.340282, 31.181593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965572, 36.562222, 30.634846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063847, 36.887417, 30.846010>,  <33.122810, 37.082535, 30.972710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063847, 36.887417, 30.846010>,  <32.965572, 36.562222, 30.634846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063847, 36.887417, 30.846010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099790, 0.562924, -0.820462,
		-0.964198, 0.148899, 0.219432,
		0.245690, 0.812986, 0.527912,
		33.137554, 37.131313, 31.004383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531292, 37.077797, 30.507872>,  <32.965572, 36.562222, 30.634846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531292, 37.077797, 30.507872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.830826, 37.286327, 30.671562>,  <33.010544, 37.411446, 30.769777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.830826, 37.286327, 30.671562>,  <32.531292, 37.077797, 30.507872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830826, 37.286327, 30.671562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080606, 0.684518, -0.724526,
		-0.657839, 0.509562, 0.554612,
		0.748833, 0.521327, 0.409229,
		33.055477, 37.442726, 30.794331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369724, 37.859352, 30.343077>,  <32.531292, 37.077797, 30.507872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369724, 37.859352, 30.343077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758450, 37.871395, 30.436605>,  <32.991684, 37.878620, 30.492722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758450, 37.871395, 30.436605>,  <32.369724, 37.859352, 30.343077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758450, 37.871395, 30.436605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165176, 0.620705, -0.766448,
		-0.168212, 0.783466, 0.598236,
		0.971814, 0.030112, 0.233820,
		33.049995, 37.880428, 30.506752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556023, 38.658787, 30.378361>,  <32.369724, 37.859352, 30.343077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556023, 38.658787, 30.378361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893879, 38.457069, 30.306507>,  <33.096592, 38.336040, 30.263395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893879, 38.457069, 30.306507>,  <32.556023, 38.658787, 30.378361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893879, 38.457069, 30.306507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168391, 0.568805, -0.805050,
		0.508159, 0.649730, 0.565355,
		0.844641, -0.504294, -0.179634,
		33.147270, 38.305782, 30.252617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115181, 39.124149, 30.185995>,  <32.556023, 38.658787, 30.378361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115181, 39.124149, 30.185995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281887, 38.788364, 30.046507>,  <33.381908, 38.586891, 29.962814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281887, 38.788364, 30.046507>,  <33.115181, 39.124149, 30.185995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281887, 38.788364, 30.046507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151775, 0.442503, -0.883830,
		0.896255, 0.315420, 0.311829,
		0.416763, -0.839465, -0.348723,
		33.406918, 38.536526, 29.941891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839367, 39.199028, 29.935301>,  <33.115181, 39.124149, 30.185995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839367, 39.199028, 29.935301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698414, 38.884880, 29.731724>,  <33.613842, 38.696392, 29.609577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698414, 38.884880, 29.731724>,  <33.839367, 39.199028, 29.935301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698414, 38.884880, 29.731724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269379, 0.435690, -0.858842,
		0.896249, -0.439739, 0.058033,
		-0.352382, -0.785369, -0.508943,
		33.592701, 38.649269, 29.579041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348717, 39.051491, 29.564816>,  <33.839367, 39.199028, 29.935301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348717, 39.051491, 29.564816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033260, 38.902836, 29.368881>,  <33.843987, 38.813644, 29.251322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033260, 38.902836, 29.368881>,  <34.348717, 39.051491, 29.564816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033260, 38.902836, 29.368881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419205, 0.257806, -0.870519,
		0.449797, -0.891865, -0.047524,
		-0.788638, -0.371635, -0.489834,
		33.796669, 38.791344, 29.221931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710339, 38.735138, 28.972813>,  <34.348717, 39.051491, 29.564816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710339, 38.735138, 28.972813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.318966, 38.768810, 28.897362>,  <34.084141, 38.789013, 28.852091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.318966, 38.768810, 28.897362>,  <34.710339, 38.735138, 28.972813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318966, 38.768810, 28.897362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197951, 0.121260, -0.972682,
		-0.059010, -0.989045, -0.135309,
		-0.978434, 0.084183, -0.188627,
		34.025436, 38.794064, 28.840773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503948, 38.332493, 28.308023>,  <34.710339, 38.735138, 28.972813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503948, 38.332493, 28.308023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.195976, 38.583488, 28.354439>,  <34.011192, 38.734085, 28.382288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.195976, 38.583488, 28.354439>,  <34.503948, 38.332493, 28.308023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195976, 38.583488, 28.354439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016660, 0.162014, -0.986648,
		-0.637914, -0.761581, -0.114285,
		-0.769928, 0.627492, 0.116038,
		33.964996, 38.771736, 28.389250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050934, 38.172226, 27.771469>,  <34.503948, 38.332493, 28.308023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050934, 38.172226, 27.771469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.973358, 38.546162, 27.890444>,  <33.926815, 38.770523, 27.961828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.973358, 38.546162, 27.890444>,  <34.050934, 38.172226, 27.771469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973358, 38.546162, 27.890444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041530, 0.310746, -0.949585,
		-0.980135, -0.171805, -0.099088,
		-0.193935, 0.934837, 0.297438,
		33.915176, 38.826614, 27.979675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524822, 38.565350, 27.272720>,  <34.050934, 38.172226, 27.771469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524822, 38.565350, 27.272720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.694489, 38.867668, 27.472263>,  <33.796288, 39.049057, 27.591990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.694489, 38.867668, 27.472263>,  <33.524822, 38.565350, 27.272720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694489, 38.867668, 27.472263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001098, 0.551295, -0.834310,
		-0.905582, 0.353341, 0.234672,
		0.424169, 0.755794, 0.498855,
		33.821739, 39.094406, 27.621920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159626, 39.245461, 27.100321>,  <33.524822, 38.565350, 27.272720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159626, 39.245461, 27.100321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.520401, 39.334019, 27.248642>,  <33.736866, 39.387154, 27.337635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.520401, 39.334019, 27.248642>,  <33.159626, 39.245461, 27.100321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520401, 39.334019, 27.248642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206576, 0.532836, -0.820617,
		-0.379260, 0.816743, 0.434848,
		0.901936, 0.221398, 0.370803,
		33.790981, 39.400436, 27.359882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235992, 39.936951, 27.003489>,  <33.159626, 39.245461, 27.100321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235992, 39.936951, 27.003489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.617790, 39.827381, 27.050671>,  <33.846867, 39.761639, 27.078979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.617790, 39.827381, 27.050671>,  <33.235992, 39.936951, 27.003489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617790, 39.827381, 27.050671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260554, 0.573453, -0.776700,
		0.145115, 0.772087, 0.618728,
		0.954491, -0.273922, 0.117954,
		33.904137, 39.745205, 27.086058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378357, 40.611370, 26.862715>,  <33.235992, 39.936951, 27.003489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378357, 40.611370, 26.862715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720528, 40.405819, 26.836843>,  <33.925831, 40.282490, 26.821320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720528, 40.405819, 26.836843>,  <33.378357, 40.611370, 26.862715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720528, 40.405819, 26.836843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286357, 0.573308, -0.767670,
		0.431570, 0.638160, 0.637572,
		0.855422, -0.513877, -0.064680,
		33.977154, 40.251656, 26.817440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920372, 41.112137, 26.858664>,  <33.378357, 40.611370, 26.862715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920372, 41.112137, 26.858664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.050945, 40.768517, 26.700939>,  <34.129288, 40.562344, 26.606304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.050945, 40.768517, 26.700939>,  <33.920372, 41.112137, 26.858664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050945, 40.768517, 26.700939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102354, 0.446835, -0.888742,
		0.939664, 0.249752, 0.233787,
		0.326429, -0.859047, -0.394311,
		34.148872, 40.510803, 26.582645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637825, 41.240421, 26.622141>,  <33.920372, 41.112137, 26.858664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637825, 41.240421, 26.622141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483006, 40.931595, 26.420504>,  <34.390114, 40.746300, 26.299520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483006, 40.931595, 26.420504>,  <34.637825, 41.240421, 26.622141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483006, 40.931595, 26.420504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203107, 0.461888, -0.863369,
		0.899411, -0.436551, -0.021961,
		-0.387048, -0.772064, -0.504094,
		34.366890, 40.699974, 26.269276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288677, 41.073086, 26.813658>,  <34.637825, 41.240421, 26.622141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288677, 41.073086, 26.813658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.590515, 41.319294, 26.904623>,  <35.771618, 41.467018, 26.959202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.590515, 41.319294, 26.904623>,  <35.288677, 41.073086, 26.813658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590515, 41.319294, 26.904623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002278, -0.349022, 0.937112,
		0.656183, -0.706625, -0.264774,
		0.754598, 0.615520, 0.227413,
		35.816895, 41.503948, 26.972847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873577, 40.638950, 26.896673>,  <35.288677, 41.073086, 26.813658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873577, 40.638950, 26.896673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880882, 40.977814, 27.109083>,  <35.885265, 41.181133, 27.236528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880882, 40.977814, 27.109083>,  <35.873577, 40.638950, 26.896673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880882, 40.977814, 27.109083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070844, -0.528680, 0.845859,
		0.997320, -0.053071, 0.050359,
		0.018267, 0.847160, 0.531023,
		35.886364, 41.231960, 27.268391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352722, 40.502632, 27.420963>,  <35.873577, 40.638950, 26.896673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352722, 40.502632, 27.420963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200741, 40.839207, 27.574652>,  <36.109554, 41.041153, 27.666864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200741, 40.839207, 27.574652>,  <36.352722, 40.502632, 27.420963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200741, 40.839207, 27.574652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212224, -0.324995, 0.921596,
		0.900333, 0.431701, -0.055091,
		-0.379950, 0.841435, 0.384221,
		36.086758, 41.091637, 27.689919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877266, 40.733055, 27.849503>,  <36.352722, 40.502632, 27.420963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877266, 40.733055, 27.849503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515869, 40.859566, 27.965210>,  <36.299030, 40.935471, 28.034634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515869, 40.859566, 27.965210>,  <36.877266, 40.733055, 27.849503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515869, 40.859566, 27.965210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109191, -0.482787, 0.868904,
		0.414469, 0.816631, 0.401658,
		-0.903489, 0.316276, 0.289269,
		36.244823, 40.954449, 28.051991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012299, 41.185040, 28.510876>,  <36.877266, 40.733055, 27.849503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012299, 41.185040, 28.510876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633965, 41.055595, 28.521315>,  <36.406963, 40.977928, 28.527578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633965, 41.055595, 28.521315>,  <37.012299, 41.185040, 28.510876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633965, 41.055595, 28.521315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117654, -0.266740, 0.956560,
		-0.302589, 0.907815, 0.290365,
		-0.945832, -0.323607, 0.026096,
		36.350216, 40.958511, 28.529142>
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
