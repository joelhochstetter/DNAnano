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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.305878, 32.484936, 22.764591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479279, 32.200577, 22.543068>,  <42.583321, 32.029961, 22.410154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479279, 32.200577, 22.543068>,  <42.305878, 32.484936, 22.764591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479279, 32.200577, 22.543068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812973, -0.573649, 0.100002,
		-0.388782, 0.406879, -0.826619,
		0.433501, -0.710898, -0.553806,
		42.609329, 31.987307, 22.376926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835522, 32.455269, 22.199183>,  <42.305878, 32.484936, 22.764591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835522, 32.455269, 22.199183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038025, 32.127865, 22.307796>,  <42.159527, 31.931421, 22.372965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038025, 32.127865, 22.307796>,  <41.835522, 32.455269, 22.199183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038025, 32.127865, 22.307796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859394, -0.452670, 0.237765,
		-0.071698, -0.353729, -0.932596,
		0.506262, -0.818514, 0.271537,
		42.189903, 31.882311, 22.389257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783962, 33.054745, 21.702217>,  <41.835522, 32.455269, 22.199183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783962, 33.054745, 21.702217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148552, 33.154491, 21.571358>,  <42.367306, 33.214340, 21.492842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148552, 33.154491, 21.571358>,  <41.783962, 33.054745, 21.702217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148552, 33.154491, 21.571358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248184, -0.300864, -0.920807,
		-0.328047, 0.920487, -0.212341,
		0.911477, 0.249368, -0.327148,
		42.421993, 33.229301, 21.473213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762096, 33.566132, 21.145481>,  <41.783962, 33.054745, 21.702217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762096, 33.566132, 21.145481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058228, 33.297276, 21.150249>,  <42.235909, 33.135963, 21.153111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058228, 33.297276, 21.150249>,  <41.762096, 33.566132, 21.145481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058228, 33.297276, 21.150249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230520, -0.270489, -0.934718,
		0.631482, 0.689253, -0.355192,
		0.740332, -0.672136, 0.011922,
		42.280327, 33.095634, 21.153826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186211, 34.032799, 21.166557>,  <41.762096, 33.566132, 21.145481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186211, 34.032799, 21.166557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043503, 34.209980, 21.495560>,  <40.957878, 34.316288, 21.692961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043503, 34.209980, 21.495560>,  <41.186211, 34.032799, 21.166557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043503, 34.209980, 21.495560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166566, 0.896495, -0.410550,
		-0.919225, -0.009469, -0.393619,
		-0.356765, 0.442952, 0.822504,
		40.936474, 34.342865, 21.742311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507023, 34.414402, 21.087206>,  <41.186211, 34.032799, 21.166557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507023, 34.414402, 21.087206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751522, 34.582726, 21.355324>,  <40.898220, 34.683720, 21.516195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751522, 34.582726, 21.355324>,  <40.507023, 34.414402, 21.087206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751522, 34.582726, 21.355324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056445, 0.867956, -0.493422,
		-0.789423, 0.263769, 0.554289,
		0.611248, 0.420806, 0.670297,
		40.934898, 34.708969, 21.556414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154186, 34.510406, 20.506908>,  <40.507023, 34.414402, 21.087206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154186, 34.510406, 20.506908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107761, 34.836853, 20.733356>,  <40.079906, 35.032719, 20.869225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107761, 34.836853, 20.733356>,  <40.154186, 34.510406, 20.506908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107761, 34.836853, 20.733356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754553, 0.443093, -0.484064,
		-0.645894, 0.370986, -0.667226,
		-0.116062, 0.816112, 0.566120,
		40.072941, 35.081688, 20.903193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433323, 35.048981, 20.119793>,  <40.154186, 34.510406, 20.506908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433323, 35.048981, 20.119793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380051, 35.244835, 20.464470>,  <40.348087, 35.362347, 20.671276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380051, 35.244835, 20.464470>,  <40.433323, 35.048981, 20.119793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380051, 35.244835, 20.464470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717536, 0.647388, -0.256965,
		-0.683670, 0.584075, -0.437551,
		-0.133179, 0.489638, 0.861695,
		40.340096, 35.391727, 20.722979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134090, 35.738205, 19.953297>,  <40.433323, 35.048981, 20.119793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134090, 35.738205, 19.953297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376320, 35.709427, 20.270309>,  <40.521656, 35.692162, 20.460518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376320, 35.709427, 20.270309>,  <40.134090, 35.738205, 19.953297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376320, 35.709427, 20.270309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596648, 0.700052, -0.392349,
		-0.526586, 0.710459, 0.466857,
		0.605572, -0.071944, 0.792532,
		40.557991, 35.687843, 20.508068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392689, 36.374332, 20.058187>,  <40.134090, 35.738205, 19.953297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392689, 36.374332, 20.058187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668846, 36.180191, 20.272770>,  <40.834541, 36.063705, 20.401520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668846, 36.180191, 20.272770>,  <40.392689, 36.374332, 20.058187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668846, 36.180191, 20.272770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702331, 0.627472, -0.336170,
		-0.173451, 0.608862, 0.774082,
		0.690395, -0.485353, 0.536458,
		40.875965, 36.034584, 20.433708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788681, 36.960484, 20.365683>,  <40.392689, 36.374332, 20.058187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788681, 36.960484, 20.365683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036846, 36.661854, 20.461777>,  <41.185745, 36.482677, 20.519434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036846, 36.661854, 20.461777>,  <40.788681, 36.960484, 20.365683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036846, 36.661854, 20.461777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718209, 0.417786, -0.556444,
		0.315059, 0.517765, 0.795397,
		0.620413, -0.746575, 0.240237,
		41.222969, 36.437881, 20.533848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368881, 37.290394, 20.662735>,  <40.788681, 36.960484, 20.365683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368881, 37.290394, 20.662735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500092, 36.929527, 20.550667>,  <41.578819, 36.713009, 20.483425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500092, 36.929527, 20.550667>,  <41.368881, 37.290394, 20.662735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500092, 36.929527, 20.550667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755199, 0.428609, -0.495952,
		0.567515, -0.048900, 0.821909,
		0.328026, -0.902166, -0.280172,
		41.598499, 36.658878, 20.466616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180298, 37.138523, 20.752508>,  <41.368881, 37.290394, 20.662735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180298, 37.138523, 20.752508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070858, 36.864166, 20.482784>,  <42.005196, 36.699551, 20.320950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070858, 36.864166, 20.482784>,  <42.180298, 37.138523, 20.752508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070858, 36.864166, 20.482784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824791, 0.193370, -0.531345,
		0.494837, -0.701540, 0.512814,
		-0.273597, -0.685894, -0.674310,
		41.988777, 36.658398, 20.280491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733398, 36.597500, 20.612663>,  <42.180298, 37.138523, 20.752508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733398, 36.597500, 20.612663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510303, 36.584911, 20.280895>,  <42.376446, 36.577358, 20.081835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510303, 36.584911, 20.280895>,  <42.733398, 36.597500, 20.612663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510303, 36.584911, 20.280895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815383, 0.166043, -0.554600,
		0.155169, -0.985616, -0.066953,
		-0.557740, -0.031464, -0.829419,
		42.342983, 36.575470, 20.032070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157146, 36.400414, 20.103725>,  <42.733398, 36.597500, 20.612663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157146, 36.400414, 20.103725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858009, 36.570240, 19.899578>,  <42.678528, 36.672138, 19.777090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858009, 36.570240, 19.899578>,  <43.157146, 36.400414, 20.103725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858009, 36.570240, 19.899578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637898, 0.246596, -0.729573,
		-0.183900, -0.871167, -0.455247,
		-0.747841, 0.424569, -0.510367,
		42.633656, 36.697609, 19.746468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991398, 36.064541, 19.313517>,  <43.157146, 36.400414, 20.103725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991398, 36.064541, 19.313517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.837482, 36.433594, 19.324059>,  <42.745132, 36.655025, 19.330383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.837482, 36.433594, 19.324059>,  <42.991398, 36.064541, 19.313517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.837482, 36.433594, 19.324059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391456, 0.188984, -0.900582,
		-0.835883, -0.336216, -0.433887,
		-0.384787, 0.922629, 0.026355,
		42.722046, 36.710381, 19.331964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875568, 36.216438, 18.663818>,  <42.991398, 36.064541, 19.313517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875568, 36.216438, 18.663818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824764, 36.587204, 18.805065>,  <42.794281, 36.809666, 18.889814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824764, 36.587204, 18.805065>,  <42.875568, 36.216438, 18.663818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824764, 36.587204, 18.805065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220129, 0.373465, -0.901148,
		-0.967167, -0.036726, -0.251476,
		-0.127013, 0.926917, 0.353119,
		42.786659, 36.865280, 18.911001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459415, 36.637947, 18.226772>,  <42.875568, 36.216438, 18.663818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459415, 36.637947, 18.226772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.660107, 36.932247, 18.408733>,  <42.780521, 37.108829, 18.517910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.660107, 36.932247, 18.408733>,  <42.459415, 36.637947, 18.226772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660107, 36.932247, 18.408733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112298, 0.466034, -0.877612,
		-0.857707, 0.491404, 0.151197,
		0.501725, 0.735755, 0.454904,
		42.810623, 37.152973, 18.545204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108364, 37.307194, 17.992172>,  <42.459415, 36.637947, 18.226772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108364, 37.307194, 17.992172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475964, 37.397648, 18.121357>,  <42.696522, 37.451920, 18.198868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475964, 37.397648, 18.121357>,  <42.108364, 37.307194, 17.992172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475964, 37.397648, 18.121357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112044, 0.635594, -0.763850,
		-0.378005, 0.738163, 0.558773,
		0.918999, 0.226132, 0.322964,
		42.751663, 37.465488, 18.218246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220257, 37.982376, 17.764061>,  <42.108364, 37.307194, 17.992172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220257, 37.982376, 17.764061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595798, 37.880207, 17.856422>,  <42.821125, 37.818905, 17.911839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595798, 37.880207, 17.856422>,  <42.220257, 37.982376, 17.764061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595798, 37.880207, 17.856422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334842, 0.521035, -0.785114,
		0.080224, 0.814422, 0.574700,
		0.938853, -0.255418, 0.230903,
		42.877453, 37.803581, 17.925694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456345, 38.641468, 17.849529>,  <42.220257, 37.982376, 17.764061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456345, 38.641468, 17.849529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744263, 38.379280, 17.758087>,  <42.917011, 38.221970, 17.703222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744263, 38.379280, 17.758087>,  <42.456345, 38.641468, 17.849529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744263, 38.379280, 17.758087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280904, 0.576166, -0.767545,
		0.634816, 0.488258, 0.598843,
		0.719793, -0.655468, -0.228606,
		42.960201, 38.182640, 17.689505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030598, 39.025394, 17.732681>,  <42.456345, 38.641468, 17.849529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030598, 39.025394, 17.732681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127205, 38.682205, 17.551327>,  <43.185169, 38.476292, 17.442514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127205, 38.682205, 17.551327>,  <43.030598, 39.025394, 17.732681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127205, 38.682205, 17.551327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181008, 0.498849, -0.847576,
		0.953366, 0.122635, 0.275779,
		0.241514, -0.857969, -0.453388,
		43.199657, 38.424816, 17.415310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707233, 39.120899, 17.364315>,  <43.030598, 39.025394, 17.732681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707233, 39.120899, 17.364315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554550, 38.789120, 17.201187>,  <43.462940, 38.590054, 17.103312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554550, 38.789120, 17.201187>,  <43.707233, 39.120899, 17.364315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554550, 38.789120, 17.201187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203999, 0.354742, -0.912438,
		0.901488, -0.431483, 0.033797,
		-0.381712, -0.829446, -0.407818,
		43.440037, 38.540287, 17.078842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219322, 38.887062, 16.936514>,  <43.707233, 39.120899, 17.364315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219322, 38.887062, 16.936514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882694, 38.725349, 16.793232>,  <43.680717, 38.628323, 16.707262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882694, 38.725349, 16.793232>,  <44.219322, 38.887062, 16.936514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882694, 38.725349, 16.793232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222461, 0.344886, -0.911902,
		0.492208, -0.847117, -0.200309,
		-0.841572, -0.404285, -0.358206,
		43.630222, 38.604065, 16.685770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.451035, 38.667320, 16.250547>,  <44.219322, 38.887062, 16.936514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.451035, 38.667320, 16.250547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051128, 38.674507, 16.245762>,  <43.811184, 38.678818, 16.242891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051128, 38.674507, 16.245762>,  <44.451035, 38.667320, 16.250547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051128, 38.674507, 16.245762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016325, 0.266824, -0.963607,
		-0.014117, -0.963578, -0.267055,
		-0.999767, 0.017963, -0.011963,
		43.751198, 38.679897, 16.242172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325451, 38.249542, 15.652412>,  <44.451035, 38.667320, 16.250547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325451, 38.249542, 15.652412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004269, 38.481159, 15.708940>,  <43.811558, 38.620129, 15.742856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004269, 38.481159, 15.708940>,  <44.325451, 38.249542, 15.652412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004269, 38.481159, 15.708940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103984, 0.097370, -0.989801,
		-0.586893, -0.809465, -0.017973,
		-0.802960, 0.579038, 0.141317,
		43.763382, 38.654869, 15.751335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641136, 38.109753, 15.262719>,  <44.325451, 38.249542, 15.652412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641136, 38.109753, 15.262719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659721, 38.500576, 15.345853>,  <43.670872, 38.735069, 15.395733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659721, 38.500576, 15.345853>,  <43.641136, 38.109753, 15.262719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659721, 38.500576, 15.345853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144795, 0.212450, -0.966385,
		-0.988370, 0.014805, 0.151344,
		0.046460, 0.977060, 0.207835,
		43.673660, 38.793694, 15.408203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114021, 38.460594, 14.890154>,  <43.641136, 38.109753, 15.262719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114021, 38.460594, 14.890154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375809, 38.754353, 14.962079>,  <43.532883, 38.930607, 15.005235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375809, 38.754353, 14.962079>,  <43.114021, 38.460594, 14.890154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375809, 38.754353, 14.962079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409809, 0.544411, -0.731897,
		-0.635394, 0.405315, 0.657262,
		0.654470, 0.734395, 0.179814,
		43.572151, 38.974670, 15.016024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817749, 39.063774, 15.263935>,  <43.114021, 38.460594, 14.890154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817749, 39.063774, 15.263935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119072, 39.163658, 15.020568>,  <43.299866, 39.223587, 14.874548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119072, 39.163658, 15.020568>,  <42.817749, 39.063774, 15.263935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119072, 39.163658, 15.020568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632711, 0.527602, -0.566845,
		0.179456, 0.811961, 0.555441,
		0.753308, 0.249710, -0.608418,
		43.345066, 39.238571, 14.838042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822430, 39.810566, 15.283590>,  <42.817749, 39.063774, 15.263935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822430, 39.810566, 15.283590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982937, 39.684155, 14.939704>,  <43.079239, 39.608307, 14.733373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982937, 39.684155, 14.939704>,  <42.822430, 39.810566, 15.283590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982937, 39.684155, 14.939704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689412, 0.513769, -0.510639,
		0.603073, 0.797601, -0.011717,
		0.401266, -0.316031, -0.859715,
		43.103317, 39.589344, 14.681789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827652, 40.234821, 14.729735>,  <42.822430, 39.810566, 15.283590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827652, 40.234821, 14.729735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725483, 39.908432, 14.522294>,  <42.664181, 39.712601, 14.397829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725483, 39.908432, 14.522294>,  <42.827652, 40.234821, 14.729735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725483, 39.908432, 14.522294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727740, 0.515401, -0.452500,
		0.636515, 0.261829, -0.725461,
		-0.255426, -0.815971, -0.518604,
		42.648853, 39.663639, 14.366714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418861, 40.361973, 14.205435>,  <42.827652, 40.234821, 14.729735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418861, 40.361973, 14.205435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313866, 39.977554, 14.170806>,  <42.250866, 39.746902, 14.150028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313866, 39.977554, 14.170806>,  <42.418861, 40.361973, 14.205435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313866, 39.977554, 14.170806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747787, 0.259303, -0.611209,
		0.609846, -0.095699, -0.786720,
		-0.262491, -0.961043, -0.086573,
		42.235119, 39.689240, 14.144835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469227, 40.080624, 13.463852>,  <42.418861, 40.361973, 14.205435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469227, 40.080624, 13.463852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197468, 39.870029, 13.668294>,  <42.034412, 39.743671, 13.790959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197468, 39.870029, 13.668294>,  <42.469227, 40.080624, 13.463852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197468, 39.870029, 13.668294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654565, 0.120075, -0.746409,
		0.331605, -0.841660, -0.426200,
		-0.679399, -0.526488, 0.511104,
		41.993649, 39.712082, 13.821626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223846, 39.627140, 12.926654>,  <42.469227, 40.080624, 13.463852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223846, 39.627140, 12.926654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956402, 39.711864, 13.211778>,  <41.795937, 39.762699, 13.382852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956402, 39.711864, 13.211778>,  <42.223846, 39.627140, 12.926654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956402, 39.711864, 13.211778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646233, 0.308732, -0.697902,
		-0.367891, -0.927265, -0.069541,
		-0.668610, 0.211812, 0.712809,
		41.755817, 39.775410, 13.425620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571030, 39.308704, 12.671341>,  <42.223846, 39.627140, 12.926654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571030, 39.308704, 12.671341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531868, 39.626598, 12.910943>,  <41.508369, 39.817337, 13.054704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531868, 39.626598, 12.910943>,  <41.571030, 39.308704, 12.671341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531868, 39.626598, 12.910943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605861, 0.429907, -0.669412,
		-0.789524, -0.428453, 0.439409,
		-0.097906, 0.794738, 0.599004,
		41.502495, 39.865021, 13.090645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958641, 39.508469, 12.968092>,  <41.571030, 39.308704, 12.671341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958641, 39.508469, 12.968092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159180, 39.839146, 12.865939>,  <41.279503, 40.037552, 12.804647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159180, 39.839146, 12.865939>,  <40.958641, 39.508469, 12.968092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159180, 39.839146, 12.865939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678682, 0.192651, -0.708714,
		-0.536693, 0.528637, 0.657650,
		0.501350, 0.826697, -0.255382,
		41.309586, 40.087154, 12.789325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032791, 38.829334, 13.188862>,  <40.958641, 39.508469, 12.968092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032791, 38.829334, 13.188862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108036, 38.999676, 13.542871>,  <41.153183, 39.101883, 13.755276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108036, 38.999676, 13.542871>,  <41.032791, 38.829334, 13.188862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108036, 38.999676, 13.542871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338550, -0.817765, 0.465451,
		0.921954, -0.387180, -0.009655,
		0.188109, 0.425855, 0.885021,
		41.164467, 39.127434, 13.808377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214230, 38.292545, 13.595939>,  <41.032791, 38.829334, 13.188862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214230, 38.292545, 13.595939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151470, 38.578636, 13.868361>,  <41.113815, 38.750290, 14.031815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151470, 38.578636, 13.868361>,  <41.214230, 38.292545, 13.595939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151470, 38.578636, 13.868361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361182, -0.683380, 0.634460,
		0.919202, -0.146443, 0.365545,
		-0.156894, 0.715225, 0.681056,
		41.104401, 38.793205, 14.072679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523819, 38.007149, 14.149062>,  <41.214230, 38.292545, 13.595939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523819, 38.007149, 14.149062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283066, 38.293400, 14.290830>,  <41.138615, 38.465149, 14.375890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283066, 38.293400, 14.290830>,  <41.523819, 38.007149, 14.149062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283066, 38.293400, 14.290830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398502, -0.653754, 0.643275,
		0.692046, 0.245942, 0.678664,
		-0.601888, 0.715625, 0.354419,
		41.102501, 38.508087, 14.397156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593685, 37.924320, 14.830056>,  <41.523819, 38.007149, 14.149062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593685, 37.924320, 14.830056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262062, 38.141888, 14.778188>,  <41.063087, 38.272430, 14.747066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262062, 38.141888, 14.778188>,  <41.593685, 37.924320, 14.830056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262062, 38.141888, 14.778188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462373, -0.536447, 0.706000,
		0.314448, 0.645270, 0.696240,
		-0.829056, 0.543923, -0.129671,
		41.013344, 38.305065, 14.739286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363842, 38.085888, 15.453351>,  <41.593685, 37.924320, 14.830056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363842, 38.085888, 15.453351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046013, 38.112488, 15.211942>,  <40.855316, 38.128448, 15.067097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046013, 38.112488, 15.211942>,  <41.363842, 38.085888, 15.453351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046013, 38.112488, 15.211942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559905, -0.464759, 0.685935,
		-0.234879, 0.882937, 0.406515,
		-0.794568, 0.066498, -0.603522,
		40.807644, 38.132439, 15.030885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857704, 38.394009, 15.849831>,  <41.363842, 38.085888, 15.453351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857704, 38.394009, 15.849831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690784, 38.180264, 15.555804>,  <40.590633, 38.052017, 15.379388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690784, 38.180264, 15.555804>,  <40.857704, 38.394009, 15.849831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690784, 38.180264, 15.555804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555482, -0.490182, 0.671686,
		-0.719238, 0.688609, -0.092276,
		-0.417297, -0.534359, -0.735067,
		40.565594, 38.019955, 15.335284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250298, 38.289047, 16.098080>,  <40.857704, 38.394009, 15.849831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250298, 38.289047, 16.098080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256023, 38.030739, 15.792720>,  <40.259460, 37.875755, 15.609505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256023, 38.030739, 15.792720>,  <40.250298, 38.289047, 16.098080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256023, 38.030739, 15.792720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465525, -0.679989, 0.566481,
		-0.884919, 0.347270, -0.310358,
		0.014318, -0.645769, -0.763398,
		40.260319, 37.837009, 15.563701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497696, 38.159000, 16.066196>,  <40.250298, 38.289047, 16.098080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497696, 38.159000, 16.066196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737442, 37.887100, 15.897107>,  <39.881290, 37.723961, 15.795653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737442, 37.887100, 15.897107>,  <39.497696, 38.159000, 16.066196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737442, 37.887100, 15.897107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218922, -0.647161, 0.730244,
		-0.769956, -0.345140, -0.536700,
		0.599368, -0.679751, -0.422726,
		39.917252, 37.683174, 15.770289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075909, 37.618473, 16.032690>,  <39.497696, 38.159000, 16.066196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075909, 37.618473, 16.032690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443478, 37.462677, 16.007774>,  <39.664021, 37.369202, 15.992826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443478, 37.462677, 16.007774>,  <39.075909, 37.618473, 16.032690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443478, 37.462677, 16.007774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241814, -0.681049, 0.691157,
		-0.311616, -0.620059, -0.720015,
		0.918924, -0.389485, -0.062287,
		39.719154, 37.345833, 15.989088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969444, 36.978069, 16.055305>,  <39.075909, 37.618473, 16.032690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969444, 36.978069, 16.055305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344891, 37.028542, 16.183723>,  <39.570160, 37.058826, 16.260775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344891, 37.028542, 16.183723>,  <38.969444, 36.978069, 16.055305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344891, 37.028542, 16.183723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155614, -0.675726, 0.720541,
		0.307858, -0.726273, -0.614614,
		0.938620, 0.126182, 0.321046,
		39.626476, 37.066395, 16.280037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317856, 36.239342, 16.025965>,  <38.969444, 36.978069, 16.055305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317856, 36.239342, 16.025965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519199, 36.469337, 16.283962>,  <39.640007, 36.607334, 16.438761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519199, 36.469337, 16.283962>,  <39.317856, 36.239342, 16.025965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519199, 36.469337, 16.283962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145964, -0.679141, 0.719348,
		0.851660, -0.456235, -0.257923,
		0.503358, 0.574993, 0.644992,
		39.670208, 36.641834, 16.477459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561390, 35.839504, 16.471148>,  <39.317856, 36.239342, 16.025965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561390, 35.839504, 16.471148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604256, 36.178299, 16.679428>,  <39.629974, 36.381577, 16.804396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604256, 36.178299, 16.679428>,  <39.561390, 35.839504, 16.471148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604256, 36.178299, 16.679428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147847, -0.504318, 0.850767,
		0.983187, -0.168157, 0.071179,
		0.107166, 0.846987, 0.520700,
		39.636406, 36.432396, 16.835638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026375, 35.672775, 16.984028>,  <39.561390, 35.839504, 16.471148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026375, 35.672775, 16.984028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878735, 35.999226, 17.161884>,  <39.790150, 36.195095, 17.268599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878735, 35.999226, 17.161884>,  <40.026375, 35.672775, 16.984028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878735, 35.999226, 17.161884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112340, -0.514092, 0.850347,
		0.922574, 0.263914, 0.281436,
		-0.369103, 0.816124, 0.444640,
		39.768005, 36.244064, 17.295277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441200, 35.705959, 17.681189>,  <40.026375, 35.672775, 16.984028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441200, 35.705959, 17.681189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097748, 35.910583, 17.694180>,  <39.891674, 36.033360, 17.701975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097748, 35.910583, 17.694180>,  <40.441200, 35.705959, 17.681189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097748, 35.910583, 17.694180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279276, -0.520002, 0.807219,
		0.429828, 0.684036, 0.589358,
		-0.858634, 0.511559, 0.032477,
		39.840157, 36.064053, 17.703922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322414, 36.011787, 18.343817>,  <40.441200, 35.705959, 17.681189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322414, 36.011787, 18.343817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959591, 35.997337, 18.176041>,  <39.741898, 35.988667, 18.075375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959591, 35.997337, 18.176041>,  <40.322414, 36.011787, 18.343817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959591, 35.997337, 18.176041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390480, -0.300194, 0.870292,
		-0.157357, 0.953194, 0.258187,
		-0.907063, -0.036130, -0.419441,
		39.687473, 35.986500, 18.050209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870636, 36.265282, 18.870506>,  <40.322414, 36.011787, 18.343817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870636, 36.265282, 18.870506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658257, 36.034790, 18.621975>,  <39.530827, 35.896496, 18.472857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658257, 36.034790, 18.621975>,  <39.870636, 36.265282, 18.870506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658257, 36.034790, 18.621975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398852, -0.476985, 0.783200,
		-0.747668, 0.663659, 0.023425,
		-0.530951, -0.576231, -0.621328,
		39.498970, 35.861919, 18.435577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041340, 36.469723, 18.829401>,  <39.870636, 36.265282, 18.870506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041340, 36.469723, 18.829401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107311, 36.084003, 18.746525>,  <39.146893, 35.852573, 18.696800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107311, 36.084003, 18.746525>,  <39.041340, 36.469723, 18.829401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107311, 36.084003, 18.746525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652321, -0.264205, 0.710404,
		-0.739782, 0.017990, -0.672606,
		0.164926, -0.964299, -0.207189,
		39.156788, 35.794712, 18.684368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427704, 36.270733, 19.122019>,  <39.041340, 36.469723, 18.829401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427704, 36.270733, 19.122019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644554, 35.937126, 19.081009>,  <38.774666, 35.736961, 19.056404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644554, 35.937126, 19.081009>,  <38.427704, 36.270733, 19.122019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644554, 35.937126, 19.081009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654860, -0.495790, 0.570396,
		-0.526549, -0.242091, -0.814947,
		0.542130, -0.834018, -0.102522,
		38.807194, 35.686920, 19.050253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880733, 35.822109, 19.280954>,  <38.427704, 36.270733, 19.122019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880733, 35.822109, 19.280954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219215, 35.611263, 19.312168>,  <38.422306, 35.484756, 19.330896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219215, 35.611263, 19.312168>,  <37.880733, 35.822109, 19.280954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219215, 35.611263, 19.312168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415725, -0.561465, 0.715493,
		-0.333334, -0.637893, -0.694248,
		0.846204, -0.527115, 0.078033,
		38.473076, 35.453129, 19.335579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663200, 35.111340, 19.245127>,  <37.880733, 35.822109, 19.280954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663200, 35.111340, 19.245127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022690, 35.139507, 19.418255>,  <38.238384, 35.156410, 19.522133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022690, 35.139507, 19.418255>,  <37.663200, 35.111340, 19.245127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022690, 35.139507, 19.418255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371433, -0.402401, 0.836727,
		0.233092, -0.912751, -0.335490,
		0.898724, 0.070423, 0.432822,
		38.292309, 35.160633, 19.548101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823471, 34.471901, 19.391403>,  <37.663200, 35.111340, 19.245127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823471, 34.471901, 19.391403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030418, 34.707851, 19.639397>,  <38.154587, 34.849422, 19.788193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030418, 34.707851, 19.639397>,  <37.823471, 34.471901, 19.391403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030418, 34.707851, 19.639397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332899, -0.528689, 0.780811,
		0.788359, -0.610357, -0.077158,
		0.517366, 0.589874, 0.619984,
		38.185627, 34.884815, 19.825392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375599, 34.094456, 19.745598>,  <37.823471, 34.471901, 19.391403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375599, 34.094456, 19.745598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218853, 34.405281, 19.942623>,  <38.124805, 34.591774, 20.060839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218853, 34.405281, 19.942623>,  <38.375599, 34.094456, 19.745598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218853, 34.405281, 19.942623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410987, -0.626843, 0.661935,
		0.823125, 0.056949, 0.564998,
		-0.391862, 0.777062, 0.492564,
		38.101295, 34.638401, 20.090393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531307, 34.097080, 20.459938>,  <38.375599, 34.094456, 19.745598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531307, 34.097080, 20.459938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176918, 34.255844, 20.364014>,  <37.964283, 34.351101, 20.306459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176918, 34.255844, 20.364014>,  <38.531307, 34.097080, 20.459938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176918, 34.255844, 20.364014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457865, -0.666752, 0.588049,
		0.073508, 0.630798, 0.772457,
		-0.885977, 0.396908, -0.239809,
		37.911125, 34.374916, 20.292070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270420, 34.392067, 21.017813>,  <38.531307, 34.097080, 20.459938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270420, 34.392067, 21.017813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975101, 34.271347, 20.776539>,  <37.797909, 34.198917, 20.631775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975101, 34.271347, 20.776539>,  <38.270420, 34.392067, 21.017813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975101, 34.271347, 20.776539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283872, -0.672199, 0.683788,
		-0.611825, 0.676068, 0.410613,
		-0.738300, -0.301797, -0.603184,
		37.753613, 34.180809, 20.595583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639030, 34.331486, 21.306364>,  <38.270420, 34.392067, 21.017813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639030, 34.331486, 21.306364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588905, 34.058041, 21.018761>,  <37.558830, 33.893974, 20.846199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588905, 34.058041, 21.018761>,  <37.639030, 34.331486, 21.306364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588905, 34.058041, 21.018761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277623, -0.671608, 0.686926,
		-0.952482, 0.285696, -0.105623,
		-0.125315, -0.683608, -0.719010,
		37.551311, 33.852959, 20.803057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025734, 34.022068, 21.517267>,  <37.639030, 34.331486, 21.306364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025734, 34.022068, 21.517267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183208, 33.748905, 21.271130>,  <37.277691, 33.585007, 21.123447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183208, 33.748905, 21.271130>,  <37.025734, 34.022068, 21.517267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183208, 33.748905, 21.271130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438971, -0.727810, 0.526874,
		-0.807662, 0.062698, -0.586303,
		0.393683, -0.682906, -0.615347,
		37.301315, 33.544033, 21.086525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440243, 33.538498, 21.222368>,  <37.025734, 34.022068, 21.517267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440243, 33.538498, 21.222368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796940, 33.357510, 21.219097>,  <37.010960, 33.248917, 21.217134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796940, 33.357510, 21.219097>,  <36.440243, 33.538498, 21.222368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796940, 33.357510, 21.219097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408593, -0.812778, 0.415264,
		-0.194538, -0.366968, -0.909664,
		0.891744, -0.452467, -0.008176,
		37.064465, 33.221771, 21.216644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503456, 32.845676, 20.811913>,  <36.440243, 33.538498, 21.222368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503456, 32.845676, 20.811913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765186, 32.890282, 21.111092>,  <36.922222, 32.917046, 21.290600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765186, 32.890282, 21.111092>,  <36.503456, 32.845676, 20.811913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765186, 32.890282, 21.111092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528572, -0.639893, 0.557807,
		0.540808, -0.760330, -0.359756,
		0.654323, 0.111510, 0.747949,
		36.961483, 32.923733, 21.335476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553726, 32.252934, 21.293764>,  <36.503456, 32.845676, 20.811913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553726, 32.252934, 21.293764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624592, 32.592896, 21.492268>,  <36.667110, 32.796875, 21.611370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624592, 32.592896, 21.492268>,  <36.553726, 32.252934, 21.293764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624592, 32.592896, 21.492268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513958, -0.350120, 0.783111,
		0.839321, -0.393794, 0.374788,
		0.177163, 0.849907, 0.496257,
		36.677742, 32.847866, 21.641144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627769, 32.119202, 21.985100>,  <36.553726, 32.252934, 21.293764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627769, 32.119202, 21.985100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555733, 32.510452, 22.026745>,  <36.512512, 32.745201, 22.051733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555733, 32.510452, 22.026745>,  <36.627769, 32.119202, 21.985100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555733, 32.510452, 22.026745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587262, -0.191824, 0.786338,
		0.789109, 0.080468, 0.608960,
		-0.180088, 0.978125, 0.104114,
		36.501705, 32.803890, 22.057980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758205, 32.289890, 22.656261>,  <36.627769, 32.119202, 21.985100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758205, 32.289890, 22.656261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510803, 32.567532, 22.508923>,  <36.362362, 32.734116, 22.420519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510803, 32.567532, 22.508923>,  <36.758205, 32.289890, 22.656261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510803, 32.567532, 22.508923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597841, -0.111461, 0.793828,
		0.509939, 0.711198, 0.483900,
		-0.618505, 0.694099, -0.368345,
		36.325253, 32.775761, 22.398418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614799, 32.729156, 23.233027>,  <36.758205, 32.289890, 22.656261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614799, 32.729156, 23.233027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318966, 32.815994, 22.978191>,  <36.141464, 32.868099, 22.825291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318966, 32.815994, 22.978191>,  <36.614799, 32.729156, 23.233027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318966, 32.815994, 22.978191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668294, -0.124393, 0.733423,
		0.079974, 0.968192, 0.237084,
		-0.739586, 0.217096, -0.637089,
		36.097092, 32.881123, 22.787066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106537, 33.091385, 23.723104>,  <36.614799, 32.729156, 23.233027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106537, 33.091385, 23.723104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925827, 32.968143, 23.388206>,  <35.817402, 32.894199, 23.187267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925827, 32.968143, 23.388206>,  <36.106537, 33.091385, 23.723104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925827, 32.968143, 23.388206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753595, -0.370499, 0.542978,
		-0.477491, 0.876244, -0.064804,
		-0.451772, -0.308102, -0.837243,
		35.790295, 32.875713, 23.137033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448761, 33.318790, 23.799339>,  <36.106537, 33.091385, 23.723104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448761, 33.318790, 23.799339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351295, 33.056244, 23.513737>,  <35.292816, 32.898716, 23.342375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351295, 33.056244, 23.513737>,  <35.448761, 33.318790, 23.799339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351295, 33.056244, 23.513737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733741, -0.356672, 0.578281,
		-0.634232, 0.664805, -0.394695,
		-0.243668, -0.656368, -0.714007,
		35.278194, 32.859333, 23.299534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773422, 33.448215, 23.714840>,  <35.448761, 33.318790, 23.799339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773422, 33.448215, 23.714840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826656, 33.082756, 23.561195>,  <34.858597, 32.863480, 23.469009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826656, 33.082756, 23.561195>,  <34.773422, 33.448215, 23.714840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826656, 33.082756, 23.561195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777421, -0.336621, 0.531323,
		-0.614740, 0.227904, -0.755085,
		0.133087, -0.913644, -0.384112,
		34.866581, 32.808662, 23.445961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117496, 33.286682, 23.443863>,  <34.773422, 33.448215, 23.714840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117496, 33.286682, 23.443863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325397, 32.950413, 23.504688>,  <34.450138, 32.748650, 23.541183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325397, 32.950413, 23.504688>,  <34.117496, 33.286682, 23.443863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325397, 32.950413, 23.504688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728215, -0.342888, 0.593407,
		-0.446720, -0.419161, -0.790408,
		0.519754, -0.840674, 0.152064,
		34.481323, 32.698212, 23.550308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586521, 32.719273, 23.446484>,  <34.117496, 33.286682, 23.443863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586521, 32.719273, 23.446484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929581, 32.600052, 23.614105>,  <34.135414, 32.528519, 23.714680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929581, 32.600052, 23.614105>,  <33.586521, 32.719273, 23.446484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929581, 32.600052, 23.614105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502259, -0.310605, 0.807007,
		-0.110372, -0.902600, -0.416090,
		0.857645, -0.298055, 0.419057,
		34.186874, 32.510635, 23.739822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424957, 32.099625, 23.700064>,  <33.586521, 32.719273, 23.446484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424957, 32.099625, 23.700064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749573, 32.172337, 23.922184>,  <33.944344, 32.215961, 24.055456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749573, 32.172337, 23.922184>,  <33.424957, 32.099625, 23.700064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749573, 32.172337, 23.922184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349944, -0.609861, 0.711062,
		0.467909, -0.771380, -0.431316,
		0.811542, 0.181775, 0.555300,
		33.993034, 32.226868, 24.088774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549019, 31.415384, 24.020718>,  <33.424957, 32.099625, 23.700064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549019, 31.415384, 24.020718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788265, 31.658886, 24.229210>,  <33.931812, 31.804987, 24.354305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788265, 31.658886, 24.229210>,  <33.549019, 31.415384, 24.020718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788265, 31.658886, 24.229210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223088, -0.498212, 0.837865,
		0.769735, -0.617418, -0.162181,
		0.598113, 0.608753, 0.521230,
		33.967701, 31.841513, 24.385578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924152, 31.034986, 24.461550>,  <33.549019, 31.415384, 24.020718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924152, 31.034986, 24.461550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939831, 31.400841, 24.622498>,  <33.949238, 31.620354, 24.719067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939831, 31.400841, 24.622498>,  <33.924152, 31.034986, 24.461550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939831, 31.400841, 24.622498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169515, -0.390757, 0.904751,
		0.984748, -0.103670, 0.139729,
		0.039196, 0.914637, 0.402371,
		33.951588, 31.675232, 24.743208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356495, 30.954771, 24.952042>,  <33.924152, 31.034986, 24.461550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356495, 30.954771, 24.952042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170334, 31.288094, 25.071369>,  <34.058636, 31.488087, 25.142965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170334, 31.288094, 25.071369>,  <34.356495, 30.954771, 24.952042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170334, 31.288094, 25.071369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111700, -0.389651, 0.914164,
		0.878021, 0.392135, 0.274426,
		-0.465406, 0.833308, 0.298320,
		34.030712, 31.538086, 25.160866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755611, 31.180822, 25.556673>,  <34.356495, 30.954771, 24.952042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755611, 31.180822, 25.556673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373840, 31.299709, 25.545906>,  <34.144775, 31.371040, 25.539446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373840, 31.299709, 25.545906>,  <34.755611, 31.180822, 25.556673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373840, 31.299709, 25.545906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124024, -0.312992, 0.941623,
		0.271440, 0.902053, 0.335591,
		-0.954431, 0.297216, -0.026918,
		34.087509, 31.388874, 25.537830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653690, 31.219131, 26.235271>,  <34.755611, 31.180822, 25.556673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653690, 31.219131, 26.235271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280788, 31.249943, 26.093868>,  <34.057049, 31.268431, 26.009026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280788, 31.249943, 26.093868>,  <34.653690, 31.219131, 26.235271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280788, 31.249943, 26.093868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358395, -0.330438, 0.873134,
		-0.049555, 0.940679, 0.335659,
		-0.932254, 0.077030, -0.353510,
		34.001114, 31.273052, 25.987816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297699, 31.590534, 26.637962>,  <34.653690, 31.219131, 26.235271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297699, 31.590534, 26.637962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033421, 31.344902, 26.465275>,  <33.874851, 31.197523, 26.361662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033421, 31.344902, 26.465275>,  <34.297699, 31.590534, 26.637962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033421, 31.344902, 26.465275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235617, -0.376407, 0.895992,
		-0.712714, 0.693701, 0.104004,
		-0.660699, -0.614081, -0.431719,
		33.835213, 31.160677, 26.335758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688843, 31.658184, 27.096596>,  <34.297699, 31.590534, 26.637962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688843, 31.658184, 27.096596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680878, 31.318134, 26.886112>,  <33.676098, 31.114105, 26.759823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680878, 31.318134, 26.886112>,  <33.688843, 31.658184, 27.096596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680878, 31.318134, 26.886112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276357, -0.501127, 0.820061,
		-0.960849, 0.161754, -0.224957,
		-0.019916, -0.850123, -0.526209,
		33.674904, 31.063097, 26.728251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051044, 31.347683, 27.194983>,  <33.688843, 31.658184, 27.096596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051044, 31.347683, 27.194983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321587, 31.068695, 27.100258>,  <33.483910, 30.901302, 27.043423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321587, 31.068695, 27.100258>,  <33.051044, 31.347683, 27.194983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321587, 31.068695, 27.100258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144274, -0.440721, 0.885974,
		-0.722310, -0.565065, -0.398710,
		0.676353, -0.697472, -0.236813,
		33.524494, 30.859453, 27.029215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913174, 30.852074, 27.735430>,  <33.051044, 31.347683, 27.194983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913174, 30.852074, 27.735430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212200, 30.666065, 27.545734>,  <33.391617, 30.554461, 27.431917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212200, 30.666065, 27.545734>,  <32.913174, 30.852074, 27.735430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212200, 30.666065, 27.545734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044400, -0.677424, 0.734252,
		-0.662698, -0.569960, -0.485775,
		0.747569, -0.465018, -0.474233,
		33.436470, 30.526558, 27.403463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830605, 30.094353, 27.784937>,  <32.913174, 30.852074, 27.735430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830605, 30.094353, 27.784937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226048, 30.119514, 27.730251>,  <33.463314, 30.134611, 27.697439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226048, 30.119514, 27.730251>,  <32.830605, 30.094353, 27.784937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226048, 30.119514, 27.730251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138247, -0.738553, 0.659869,
		-0.059461, -0.671254, -0.738839,
		0.988611, 0.062906, -0.136714,
		33.522633, 30.138386, 27.689238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181164, 29.345869, 27.708887>,  <32.830605, 30.094353, 27.784937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181164, 29.345869, 27.708887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485611, 29.575909, 27.828861>,  <33.668278, 29.713932, 27.900846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485611, 29.575909, 27.828861>,  <33.181164, 29.345869, 27.708887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485611, 29.575909, 27.828861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386556, -0.773523, 0.502232,
		0.520842, -0.266314, -0.811049,
		0.761117, 0.575099, 0.299937,
		33.713947, 29.748438, 27.918842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768970, 28.896917, 27.757908>,  <33.181164, 29.345869, 27.708887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768970, 28.896917, 27.757908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878044, 29.230877, 27.949150>,  <33.943489, 29.431253, 28.063896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878044, 29.230877, 27.949150>,  <33.768970, 28.896917, 27.757908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878044, 29.230877, 27.949150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422109, -0.550378, 0.720353,
		0.864561, 0.005384, -0.502499,
		0.272686, 0.834898, 0.478108,
		33.959850, 29.481346, 28.092583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443871, 28.795013, 27.836912>,  <33.768970, 28.896917, 27.757908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443871, 28.795013, 27.836912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326775, 29.063446, 28.109367>,  <34.256516, 29.224506, 28.272840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326775, 29.063446, 28.109367>,  <34.443871, 28.795013, 27.836912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326775, 29.063446, 28.109367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524521, -0.482899, 0.701203,
		0.799486, 0.562544, -0.210631,
		-0.292744, 0.671083, 0.681137,
		34.238953, 29.264771, 28.313709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977619, 28.650009, 28.348227>,  <34.443871, 28.795013, 27.836912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977619, 28.650009, 28.348227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697010, 28.832859, 28.566914>,  <34.528645, 28.942570, 28.698126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697010, 28.832859, 28.566914>,  <34.977619, 28.650009, 28.348227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697010, 28.832859, 28.566914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205301, -0.605007, 0.769297,
		0.682433, 0.651922, 0.330578,
		-0.701524, 0.457126, 0.546717,
		34.486553, 28.969997, 28.730928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235088, 28.776443, 28.970362>,  <34.977619, 28.650009, 28.348227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235088, 28.776443, 28.970362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842022, 28.803360, 29.039455>,  <34.606182, 28.819510, 29.080912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842022, 28.803360, 29.039455>,  <35.235088, 28.776443, 28.970362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842022, 28.803360, 29.039455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116691, -0.499484, 0.858428,
		0.144040, 0.863706, 0.482975,
		-0.982668, 0.067289, 0.172732,
		34.547222, 28.823547, 29.091274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168224, 28.842567, 29.695478>,  <35.235088, 28.776443, 28.970362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168224, 28.842567, 29.695478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806782, 28.710129, 29.586769>,  <34.589916, 28.630665, 29.521544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806782, 28.710129, 29.586769>,  <35.168224, 28.842567, 29.695478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806782, 28.710129, 29.586769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003209, -0.629215, 0.777225,
		-0.428342, 0.703181, 0.567503,
		-0.903611, -0.331097, -0.271775,
		34.535698, 28.610800, 29.505236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783134, 28.765995, 30.367863>,  <35.168224, 28.842567, 29.695478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783134, 28.765995, 30.367863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597507, 28.539757, 30.095177>,  <34.486130, 28.404013, 29.931564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597507, 28.539757, 30.095177>,  <34.783134, 28.765995, 30.367863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597507, 28.539757, 30.095177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191377, -0.687412, 0.700600,
		-0.864877, 0.455594, 0.210767,
		-0.464072, -0.565596, -0.681717,
		34.458286, 28.370077, 29.890661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054211, 28.572660, 30.680573>,  <34.783134, 28.765995, 30.367863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054211, 28.572660, 30.680573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151672, 28.303841, 30.400864>,  <34.210152, 28.142550, 30.233038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151672, 28.303841, 30.400864>,  <34.054211, 28.572660, 30.680573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151672, 28.303841, 30.400864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229163, -0.740480, 0.631802,
		-0.942399, 0.006305, -0.334431,
		0.243656, -0.672049, -0.699272,
		34.224770, 28.102226, 30.191082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502316, 28.087986, 30.745798>,  <34.054211, 28.572660, 30.680573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502316, 28.087986, 30.745798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818115, 27.905624, 30.581436>,  <34.007595, 27.796207, 30.482819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818115, 27.905624, 30.581436>,  <33.502316, 28.087986, 30.745798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818115, 27.905624, 30.581436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101842, -0.757528, 0.644809,
		-0.605241, -0.467230, -0.644499,
		0.789501, -0.455902, -0.410904,
		34.054966, 27.768854, 30.458164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249260, 27.414698, 30.470280>,  <33.502316, 28.087986, 30.745798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249260, 27.414698, 30.470280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647095, 27.386650, 30.500961>,  <33.885796, 27.369822, 30.519369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647095, 27.386650, 30.500961>,  <33.249260, 27.414698, 30.470280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647095, 27.386650, 30.500961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098613, -0.869697, 0.483635,
		0.032796, -0.488580, -0.871902,
		0.994585, -0.070120, 0.076703,
		33.945469, 27.365614, 30.523972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387081, 26.648109, 30.362131>,  <33.249260, 27.414698, 30.470280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387081, 26.648109, 30.362131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661034, 26.842678, 30.579140>,  <33.825405, 26.959419, 30.709345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661034, 26.842678, 30.579140>,  <33.387081, 26.648109, 30.362131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661034, 26.842678, 30.579140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046867, -0.713605, 0.698979,
		0.727143, -0.504145, -0.465940,
		0.684884, 0.486421, 0.542520,
		33.866497, 26.988604, 30.741896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607193, 26.059248, 30.666672>,  <33.387081, 26.648109, 30.362131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607193, 26.059248, 30.666672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770149, 26.369751, 30.859112>,  <33.867924, 26.556053, 30.974577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770149, 26.369751, 30.859112>,  <33.607193, 26.059248, 30.666672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770149, 26.369751, 30.859112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006110, -0.524469, 0.851407,
		0.913235, -0.349792, -0.208919,
		0.407387, 0.776259, 0.481101,
		33.892365, 26.602629, 31.003443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018559, 25.785549, 31.164055>,  <33.607193, 26.059248, 30.666672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018559, 25.785549, 31.164055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956947, 26.149899, 31.317200>,  <33.919979, 26.368509, 31.409086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956947, 26.149899, 31.317200>,  <34.018559, 25.785549, 31.164055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956947, 26.149899, 31.317200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066040, -0.396110, 0.915825,
		0.985857, 0.115777, 0.121166,
		-0.154027, 0.910875, 0.382862,
		33.910740, 26.423161, 31.432058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426575, 25.832687, 31.790787>,  <34.018559, 25.785549, 31.164055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426575, 25.832687, 31.790787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134922, 26.104652, 31.822006>,  <33.959930, 26.267832, 31.840738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134922, 26.104652, 31.822006>,  <34.426575, 25.832687, 31.790787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134922, 26.104652, 31.822006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253354, -0.374102, 0.892109,
		0.635754, 0.630689, 0.445027,
		-0.729129, 0.679911, 0.078049,
		33.916183, 26.308626, 31.845421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521408, 26.125385, 32.429237>,  <34.426575, 25.832687, 31.790787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521408, 26.125385, 32.429237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139477, 26.199795, 32.336555>,  <33.910316, 26.244440, 32.280945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139477, 26.199795, 32.336555>,  <34.521408, 26.125385, 32.429237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139477, 26.199795, 32.336555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285187, -0.354732, 0.890412,
		0.083444, 0.916275, 0.391761,
		-0.954833, 0.186025, -0.231709,
		33.853027, 26.255602, 32.267044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282368, 26.689579, 32.846344>,  <34.521408, 26.125385, 32.429237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282368, 26.689579, 32.846344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953438, 26.478649, 32.760834>,  <33.756081, 26.352091, 32.709526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953438, 26.478649, 32.760834>,  <34.282368, 26.689579, 32.846344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953438, 26.478649, 32.760834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161581, -0.143831, 0.976322,
		-0.545588, 0.837400, 0.033070,
		-0.822329, -0.527326, -0.213780,
		33.706738, 26.320452, 32.696701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908497, 26.886284, 33.364151>,  <34.282368, 26.689579, 32.846344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908497, 26.886284, 33.364151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709835, 26.568985, 33.223244>,  <33.590637, 26.378607, 33.138699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709835, 26.568985, 33.223244>,  <33.908497, 26.886284, 33.364151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709835, 26.568985, 33.223244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383396, -0.163619, 0.908975,
		-0.778679, 0.586507, -0.222865,
		-0.496655, -0.793245, -0.352271,
		33.560837, 26.331011, 33.117561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147381, 26.916946, 33.660435>,  <33.908497, 26.886284, 33.364151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147381, 26.916946, 33.660435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180229, 26.535370, 33.545025>,  <33.199936, 26.306423, 33.475777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180229, 26.535370, 33.545025>,  <33.147381, 26.916946, 33.660435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180229, 26.535370, 33.545025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505918, -0.289331, 0.812610,
		-0.858664, 0.079242, -0.506377,
		0.082117, -0.953944, -0.288528,
		33.204865, 26.249187, 33.458466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509037, 26.617785, 33.831638>,  <33.147381, 26.916946, 33.660435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509037, 26.617785, 33.831638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763737, 26.310387, 33.806458>,  <32.916557, 26.125948, 33.791351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763737, 26.310387, 33.806458>,  <32.509037, 26.617785, 33.831638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763737, 26.310387, 33.806458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436806, -0.426789, 0.791866,
		-0.635411, -0.476726, -0.607442,
		0.636753, -0.768494, -0.062950,
		32.954762, 26.079838, 33.787571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078381, 26.081131, 33.846870>,  <32.509037, 26.617785, 33.831638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078381, 26.081131, 33.846870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441235, 25.960419, 33.964195>,  <32.658947, 25.887991, 34.034592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441235, 25.960419, 33.964195>,  <32.078381, 26.081131, 33.846870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441235, 25.960419, 33.964195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411136, -0.486695, 0.770776,
		-0.089851, -0.819790, -0.565571,
		0.907135, -0.301782, 0.293315,
		32.713375, 25.869884, 34.052189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024349, 25.455570, 34.002121>,  <32.078381, 26.081131, 33.846870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024349, 25.455570, 34.002121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339634, 25.577770, 34.215809>,  <32.528805, 25.651091, 34.344021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339634, 25.577770, 34.215809>,  <32.024349, 25.455570, 34.002121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339634, 25.577770, 34.215809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354367, -0.484404, 0.799860,
		0.503137, -0.819769, -0.273552,
		0.788211, 0.305502, 0.534221,
		32.576096, 25.669420, 34.376076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117405, 24.915262, 34.528587>,  <32.024349, 25.455570, 34.002121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117405, 24.915262, 34.528587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360405, 25.199780, 34.670017>,  <32.506203, 25.370489, 34.754875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360405, 25.199780, 34.670017>,  <32.117405, 24.915262, 34.528587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360405, 25.199780, 34.670017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165744, -0.321817, 0.932182,
		0.776838, -0.624899, -0.077610,
		0.607496, 0.711291, 0.353573,
		32.542652, 25.413166, 34.776089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621044, 24.529039, 34.916561>,  <32.117405, 24.915262, 34.528587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621044, 24.529039, 34.916561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603249, 24.891811, 35.084133>,  <32.592571, 25.109474, 35.184677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603249, 24.891811, 35.084133>,  <32.621044, 24.529039, 34.916561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603249, 24.891811, 35.084133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083024, -0.421249, 0.903137,
		0.995554, 0.005402, 0.094040,
		-0.044493, 0.906929, 0.418928,
		32.589901, 25.163891, 35.209812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168865, 24.589403, 35.462265>,  <32.621044, 24.529039, 34.916561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168865, 24.589403, 35.462265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851265, 24.819744, 35.540199>,  <32.660706, 24.957949, 35.586960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851265, 24.819744, 35.540199>,  <33.168865, 24.589403, 35.462265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851265, 24.819744, 35.540199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164841, -0.104552, 0.980763,
		0.585143, 0.810843, -0.011909,
		-0.793999, 0.575850, 0.194838,
		32.613064, 24.992498, 35.598652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436657, 25.223314, 35.738663>,  <33.168865, 24.589403, 35.462265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436657, 25.223314, 35.738663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071697, 25.115654, 35.862007>,  <32.852722, 25.051058, 35.936016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071697, 25.115654, 35.862007>,  <33.436657, 25.223314, 35.738663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071697, 25.115654, 35.862007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366034, -0.199395, 0.908989,
		-0.183171, 0.942231, 0.280446,
		-0.912397, -0.269153, 0.308365,
		32.797977, 25.034908, 35.954517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252182, 25.536880, 36.416893>,  <33.436657, 25.223314, 35.738663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252182, 25.536880, 36.416893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014004, 25.216061, 36.398304>,  <32.871098, 25.023569, 36.387150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014004, 25.216061, 36.398304>,  <33.252182, 25.536880, 36.416893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014004, 25.216061, 36.398304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306054, -0.279936, 0.909927,
		-0.742814, 0.527592, 0.412157,
		-0.595448, -0.802049, -0.046469,
		32.835369, 24.975447, 36.384365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655426, 25.627142, 36.925056>,  <33.252182, 25.536880, 36.416893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655426, 25.627142, 36.925056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669727, 25.557095, 37.318615>,  <32.678307, 25.515066, 37.554749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669727, 25.557095, 37.318615>,  <32.655426, 25.627142, 36.925056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669727, 25.557095, 37.318615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279899, 0.943369, 0.178078,
		-0.959364, -0.281759, -0.015287,
		0.035754, -0.175120, 0.983898,
		32.680454, 25.504559, 37.613785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148716, 26.088219, 37.115753>,  <32.655426, 25.627142, 36.925056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148716, 26.088219, 37.115753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433922, 26.012001, 37.385658>,  <32.605045, 25.966270, 37.547600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433922, 26.012001, 37.385658>,  <32.148716, 26.088219, 37.115753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433922, 26.012001, 37.385658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061768, 0.975693, 0.210254,
		-0.698425, -0.108235, 0.707452,
		0.713013, -0.190544, 0.674763,
		32.647827, 25.954838, 37.588089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308517, 26.312002, 37.805206>,  <32.148716, 26.088219, 37.115753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308517, 26.312002, 37.805206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394951, 26.697426, 37.868279>,  <32.446812, 26.928680, 37.906120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394951, 26.697426, 37.868279>,  <32.308517, 26.312002, 37.805206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394951, 26.697426, 37.868279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226735, 0.107559, -0.967999,
		-0.949684, 0.244918, -0.195231,
		0.216082, 0.963559, 0.157679,
		32.459774, 26.986494, 37.915581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894268, 26.773760, 37.311710>,  <32.308517, 26.312002, 37.805206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894268, 26.773760, 37.311710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215916, 26.982864, 37.424927>,  <32.408905, 27.108328, 37.492855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215916, 26.982864, 37.424927>,  <31.894268, 26.773760, 37.311710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215916, 26.982864, 37.424927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163232, 0.263652, -0.950706,
		-0.571617, 0.810683, 0.126676,
		0.804120, 0.522762, 0.283038,
		32.457153, 27.139692, 37.509838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846951, 27.226999, 36.853077>,  <31.894268, 26.773760, 37.311710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846951, 27.226999, 36.853077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225254, 27.275120, 36.973789>,  <32.452236, 27.303991, 37.046215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225254, 27.275120, 36.973789>,  <31.846951, 27.226999, 36.853077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225254, 27.275120, 36.973789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249127, 0.327650, -0.911362,
		-0.208514, 0.937109, 0.279907,
		0.945758, 0.120299, 0.301779,
		32.508980, 27.311209, 37.064323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050373, 27.897949, 36.750042>,  <31.846951, 27.226999, 36.853077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050373, 27.897949, 36.750042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377361, 27.667686, 36.757694>,  <32.573555, 27.529528, 36.762283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377361, 27.667686, 36.757694>,  <32.050373, 27.897949, 36.750042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377361, 27.667686, 36.757694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316840, 0.421700, -0.849577,
		0.481000, 0.700562, 0.527117,
		0.817467, -0.575658, 0.019128,
		32.622601, 27.494989, 36.763432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760155, 28.271664, 36.930481>,  <32.050373, 27.897949, 36.750042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760155, 28.271664, 36.930481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758675, 27.974503, 36.662724>,  <32.757786, 27.796206, 36.502071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758675, 27.974503, 36.662724>,  <32.760155, 28.271664, 36.930481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758675, 27.974503, 36.662724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391360, 0.614927, -0.684619,
		0.920230, -0.264505, 0.288468,
		-0.003698, -0.742902, -0.669391,
		32.757565, 27.751633, 36.461906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382847, 28.229931, 36.629402>,  <32.760155, 28.271664, 36.930481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382847, 28.229931, 36.629402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161469, 28.053730, 36.346657>,  <33.028641, 27.948009, 36.177010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161469, 28.053730, 36.346657>,  <33.382847, 28.229931, 36.629402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161469, 28.053730, 36.346657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436251, 0.569643, -0.696557,
		0.709495, -0.693876, -0.123096,
		-0.553445, -0.440503, -0.706863,
		32.995434, 27.921579, 36.134598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878067, 28.087561, 36.103794>,  <33.382847, 28.229931, 36.629402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878067, 28.087561, 36.103794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530979, 28.043591, 35.909897>,  <33.322727, 28.017208, 35.793560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530979, 28.043591, 35.909897>,  <33.878067, 28.087561, 36.103794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530979, 28.043591, 35.909897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362472, 0.527364, -0.768441,
		0.340107, -0.842498, -0.417760,
		-0.867721, -0.109926, -0.484743,
		33.270664, 28.010612, 35.764473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048752, 27.931925, 35.474731>,  <33.878067, 28.087561, 36.103794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048752, 27.931925, 35.474731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671406, 28.058933, 35.436279>,  <33.445000, 28.135138, 35.413208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671406, 28.058933, 35.436279>,  <34.048752, 27.931925, 35.474731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671406, 28.058933, 35.436279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238623, 0.448123, -0.861536,
		-0.230478, -0.835683, -0.498512,
		-0.943366, 0.317522, -0.096130,
		33.388397, 28.154190, 35.407440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789391, 27.828861, 34.670841>,  <34.048752, 27.931925, 35.474731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789391, 27.828861, 34.670841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579933, 28.128529, 34.833096>,  <33.454258, 28.308331, 34.930447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579933, 28.128529, 34.833096>,  <33.789391, 27.828861, 34.670841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579933, 28.128529, 34.833096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228098, 0.582038, -0.780515,
		-0.820833, -0.316188, -0.475666,
		-0.523645, 0.749171, 0.405634,
		33.422840, 28.353279, 34.954784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188099, 28.163872, 34.147259>,  <33.789391, 27.828861, 34.670841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188099, 28.163872, 34.147259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301090, 28.428955, 34.424683>,  <33.368885, 28.588005, 34.591137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301090, 28.428955, 34.424683>,  <33.188099, 28.163872, 34.147259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301090, 28.428955, 34.424683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016915, 0.726331, -0.687137,
		-0.959124, 0.182371, 0.216384,
		0.282480, 0.662709, 0.693557,
		33.385834, 28.627768, 34.632751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725819, 28.628695, 33.995068>,  <33.188099, 28.163872, 34.147259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725819, 28.628695, 33.995068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015511, 28.804337, 34.207737>,  <33.189327, 28.909721, 34.335339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015511, 28.804337, 34.207737>,  <32.725819, 28.628695, 33.995068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015511, 28.804337, 34.207737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023036, 0.786010, -0.617785,
		-0.689173, 0.435170, 0.579367,
		0.724230, 0.439107, 0.531672,
		33.232780, 28.936069, 34.367237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482136, 29.269381, 34.054794>,  <32.725819, 28.628695, 33.995068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482136, 29.269381, 34.054794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868389, 29.326088, 34.141937>,  <33.100140, 29.360113, 34.194221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868389, 29.326088, 34.141937>,  <32.482136, 29.269381, 34.054794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868389, 29.326088, 34.141937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030246, 0.771183, -0.635895,
		-0.258159, 0.620628, 0.740388,
		0.965629, 0.141768, 0.217859,
		33.158077, 29.368618, 34.207294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596222, 29.939991, 34.171825>,  <32.482136, 29.269381, 34.054794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596222, 29.939991, 34.171825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968105, 29.823200, 34.082035>,  <33.191235, 29.753126, 34.028160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968105, 29.823200, 34.082035>,  <32.596222, 29.939991, 34.171825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968105, 29.823200, 34.082035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049517, 0.703064, -0.709401,
		0.364950, 0.648421, 0.668103,
		0.929709, -0.291979, -0.224475,
		33.247017, 29.735607, 34.014694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952950, 30.521936, 34.022366>,  <32.596222, 29.939991, 34.171825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952950, 30.521936, 34.022366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197727, 30.251270, 33.858585>,  <33.344593, 30.088871, 33.760319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197727, 30.251270, 33.858585>,  <32.952950, 30.521936, 34.022366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197727, 30.251270, 33.858585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249413, 0.656390, -0.712001,
		0.750546, 0.333581, 0.570442,
		0.611942, -0.676665, -0.409451,
		33.381310, 30.048271, 33.735748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607334, 30.877419, 34.026821>,  <32.952950, 30.521936, 34.022366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607334, 30.877419, 34.026821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612034, 30.589405, 33.749287>,  <33.614853, 30.416597, 33.582764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612034, 30.589405, 33.749287>,  <33.607334, 30.877419, 34.026821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612034, 30.589405, 33.749287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243886, 0.674995, -0.696348,
		0.969733, -0.161038, 0.183535,
		0.011747, -0.720033, -0.693840,
		33.615559, 30.373396, 33.541134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306198, 30.889534, 33.675503>,  <33.607334, 30.877419, 34.026821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306198, 30.889534, 33.675503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015770, 30.734024, 33.448635>,  <33.841515, 30.640718, 33.312515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015770, 30.734024, 33.448635>,  <34.306198, 30.889534, 33.675503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015770, 30.734024, 33.448635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180034, 0.688567, -0.702469,
		0.663626, -0.612156, -0.429961,
		-0.726078, -0.388769, -0.567160,
		33.797951, 30.617392, 33.278484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555595, 31.031015, 33.106903>,  <34.306198, 30.889534, 33.675503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555595, 31.031015, 33.106903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202003, 30.884369, 32.990856>,  <33.989849, 30.796381, 32.921230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202003, 30.884369, 32.990856>,  <34.555595, 31.031015, 33.106903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202003, 30.884369, 32.990856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062720, 0.521935, -0.850676,
		0.463288, -0.770182, -0.438389,
		-0.883986, -0.366612, -0.290112,
		33.936810, 30.774384, 32.903824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640465, 30.575312, 32.532761>,  <34.555595, 31.031015, 33.106903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640465, 30.575312, 32.532761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282211, 30.752838, 32.544552>,  <34.067261, 30.859354, 32.551628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282211, 30.752838, 32.544552>,  <34.640465, 30.575312, 32.532761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282211, 30.752838, 32.544552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196328, 0.453926, -0.869141,
		-0.399123, -0.772642, -0.493685,
		-0.895632, 0.443819, 0.029481,
		34.013523, 30.885984, 32.553394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404030, 30.454683, 31.878176>,  <34.640465, 30.575312, 32.532761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404030, 30.454683, 31.878176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177231, 30.754810, 32.014137>,  <34.041153, 30.934887, 32.095715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177231, 30.754810, 32.014137>,  <34.404030, 30.454683, 31.878176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177231, 30.754810, 32.014137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021570, 0.426026, -0.904454,
		-0.823437, -0.505492, -0.257740,
		-0.566998, 0.750320, 0.339902,
		34.007130, 30.979906, 32.116108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957764, 30.639063, 31.378801>,  <34.404030, 30.454683, 31.878176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957764, 30.639063, 31.378801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958698, 30.971043, 31.601936>,  <33.959259, 31.170231, 31.735817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958698, 30.971043, 31.601936>,  <33.957764, 30.639063, 31.378801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958698, 30.971043, 31.601936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206297, 0.545439, -0.812366,
		-0.978487, 0.116978, -0.169941,
		0.002336, 0.829947, 0.557837,
		33.959400, 31.220026, 31.769287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576401, 31.059221, 31.003937>,  <33.957764, 30.639063, 31.378801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576401, 31.059221, 31.003937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788918, 31.284973, 31.256668>,  <33.916428, 31.420425, 31.408306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788918, 31.284973, 31.256668>,  <33.576401, 31.059221, 31.003937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788918, 31.284973, 31.256668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224570, 0.625293, -0.747380,
		-0.816885, 0.538963, 0.205468,
		0.531288, 0.564382, 0.631828,
		33.948303, 31.454288, 31.446217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387917, 31.726950, 30.898365>,  <33.576401, 31.059221, 31.003937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387917, 31.726950, 30.898365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752926, 31.734390, 31.061802>,  <33.971931, 31.738855, 31.159864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752926, 31.734390, 31.061802>,  <33.387917, 31.726950, 30.898365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752926, 31.734390, 31.061802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312323, 0.613331, -0.725451,
		-0.264097, 0.789607, 0.553872,
		0.912528, 0.018603, 0.408592,
		34.026684, 31.739971, 31.184380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625999, 32.389694, 30.863848>,  <33.387917, 31.726950, 30.898365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625999, 32.389694, 30.863848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966606, 32.190014, 30.927990>,  <34.170971, 32.070206, 30.966475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966606, 32.190014, 30.927990>,  <33.625999, 32.389694, 30.863848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966606, 32.190014, 30.927990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493856, 0.660875, -0.565110,
		0.176129, 0.560394, 0.809282,
		0.851519, -0.499201, 0.160355,
		34.222061, 32.040253, 30.976097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237404, 32.863106, 30.995802>,  <33.625999, 32.389694, 30.863848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237404, 32.863106, 30.995802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410385, 32.523727, 30.873745>,  <34.514175, 32.320099, 30.800510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410385, 32.523727, 30.873745>,  <34.237404, 32.863106, 30.995802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410385, 32.523727, 30.873745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584195, 0.521447, -0.621940,
		0.686802, 0.090699, 0.721164,
		0.432458, -0.848450, -0.305145,
		34.540123, 32.269192, 30.782202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884075, 33.103767, 30.885235>,  <34.237404, 32.863106, 30.995802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884075, 33.103767, 30.885235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897957, 32.739925, 30.719624>,  <34.906284, 32.521622, 30.620256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897957, 32.739925, 30.719624>,  <34.884075, 33.103767, 30.885235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897957, 32.739925, 30.719624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779850, 0.283726, -0.557973,
		0.625004, -0.303517, 0.719199,
		0.034701, -0.909603, -0.414027,
		34.908367, 32.467045, 30.595415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589996, 32.775135, 30.913269>,  <34.884075, 33.103767, 30.885235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589996, 32.775135, 30.913269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388462, 32.626019, 30.601582>,  <35.267544, 32.536549, 30.414570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388462, 32.626019, 30.601582>,  <35.589996, 32.775135, 30.913269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388462, 32.626019, 30.601582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758703, 0.240263, -0.605511,
		0.412946, -0.896271, 0.161785,
		-0.503831, -0.372790, -0.779219,
		35.237312, 32.514183, 30.367815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085228, 32.369194, 30.566294>,  <35.589996, 32.775135, 30.913269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085228, 32.369194, 30.566294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798409, 32.466244, 30.304920>,  <35.626316, 32.524471, 30.148096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798409, 32.466244, 30.304920>,  <36.085228, 32.369194, 30.566294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798409, 32.466244, 30.304920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696428, 0.288022, -0.657291,
		0.028731, -0.926379, -0.375494,
		-0.717052, 0.242620, -0.653432,
		35.583294, 32.539028, 30.108891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422684, 32.066036, 29.959904>,  <36.085228, 32.369194, 30.566294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422684, 32.066036, 29.959904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112801, 32.290909, 29.844128>,  <35.926868, 32.425831, 29.774662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112801, 32.290909, 29.844128>,  <36.422684, 32.066036, 29.959904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112801, 32.290909, 29.844128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564398, 0.408414, -0.717393,
		-0.285092, -0.719133, -0.633696,
		-0.774711, 0.562180, -0.289442,
		35.880386, 32.459564, 29.757296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371529, 31.960491, 29.256235>,  <36.422684, 32.066036, 29.959904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371529, 31.960491, 29.256235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172703, 32.307213, 29.272087>,  <36.053406, 32.515247, 29.281599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172703, 32.307213, 29.272087>,  <36.371529, 31.960491, 29.256235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172703, 32.307213, 29.272087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408408, 0.274011, -0.870701,
		-0.765588, -0.416613, -0.490213,
		-0.497069, 0.866805, 0.039631,
		36.023582, 32.567253, 29.283976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949867, 32.097107, 28.644859>,  <36.371529, 31.960491, 29.256235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949867, 32.097107, 28.644859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044373, 32.455849, 28.794441>,  <36.101074, 32.671093, 28.884190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044373, 32.455849, 28.794441>,  <35.949867, 32.097107, 28.644859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044373, 32.455849, 28.794441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204877, 0.330220, -0.921401,
		-0.949846, 0.294304, -0.105726,
		0.236260, 0.896850, 0.373954,
		36.115250, 32.724903, 28.906628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621429, 32.466553, 28.156897>,  <35.949867, 32.097107, 28.644859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621429, 32.466553, 28.156897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859100, 32.731117, 28.339981>,  <36.001701, 32.889854, 28.449831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859100, 32.731117, 28.339981>,  <35.621429, 32.466553, 28.156897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859100, 32.731117, 28.339981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140038, 0.475296, -0.868610,
		-0.792053, 0.580202, 0.189786,
		0.594173, 0.661407, 0.457710,
		36.037354, 32.929539, 28.477295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422592, 33.174522, 27.888998>,  <35.621429, 32.466553, 28.156897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422592, 33.174522, 27.888998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787926, 33.237293, 28.039299>,  <36.007126, 33.274956, 28.129480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787926, 33.237293, 28.039299>,  <35.422592, 33.174522, 27.888998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787926, 33.237293, 28.039299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225927, 0.572424, -0.788218,
		-0.338781, 0.804801, 0.487362,
		0.913337, 0.156926, 0.375753,
		36.061928, 33.284370, 28.152025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597958, 33.912708, 27.770361>,  <35.422592, 33.174522, 27.888998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597958, 33.912708, 27.770361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949909, 33.732964, 27.832195>,  <36.161079, 33.625118, 27.869295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949909, 33.732964, 27.832195>,  <35.597958, 33.912708, 27.770361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949909, 33.732964, 27.832195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384493, 0.482028, -0.787282,
		0.279258, 0.752147, 0.596900,
		0.879875, -0.449359, 0.154585,
		36.213871, 33.598156, 27.878571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066036, 34.416264, 27.713921>,  <35.597958, 33.912708, 27.770361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066036, 34.416264, 27.713921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270428, 34.077667, 27.654106>,  <36.393063, 33.874512, 27.618217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270428, 34.077667, 27.654106>,  <36.066036, 34.416264, 27.713921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270428, 34.077667, 27.654106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508596, 0.437963, -0.741295,
		0.692989, 0.302731, 0.654309,
		0.510976, -0.846488, -0.149535,
		36.423721, 33.823719, 27.609245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749130, 34.573414, 27.681313>,  <36.066036, 34.416264, 27.713921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749130, 34.573414, 27.681313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763508, 34.221485, 27.491734>,  <36.772137, 34.010330, 27.377987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763508, 34.221485, 27.491734>,  <36.749130, 34.573414, 27.681313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763508, 34.221485, 27.491734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507806, 0.424547, -0.749595,
		0.860721, -0.213727, 0.462039,
		0.035948, -0.879819, -0.473948,
		36.774292, 33.957539, 27.349548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400528, 34.525024, 27.365721>,  <36.749130, 34.573414, 27.681313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400528, 34.525024, 27.365721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221462, 34.216225, 27.185226>,  <37.114021, 34.030945, 27.076929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221462, 34.216225, 27.185226>,  <37.400528, 34.525024, 27.365721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221462, 34.216225, 27.185226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351394, 0.312151, -0.882657,
		0.822265, -0.553695, 0.131537,
		-0.447664, -0.772000, -0.451236,
		37.087162, 33.984623, 27.049856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864010, 34.319847, 26.921946>,  <37.400528, 34.525024, 27.365721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864010, 34.319847, 26.921946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531364, 34.167919, 26.759880>,  <37.331779, 34.076763, 26.662642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531364, 34.167919, 26.759880>,  <37.864010, 34.319847, 26.921946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531364, 34.167919, 26.759880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309076, 0.289598, -0.905872,
		0.461408, -0.878559, -0.123438,
		-0.831610, -0.379825, -0.405165,
		37.281883, 34.053970, 26.638330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084541, 33.911572, 26.314196>,  <37.864010, 34.319847, 26.921946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084541, 33.911572, 26.314196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693344, 33.972420, 26.257084>,  <37.458626, 34.008930, 26.222816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693344, 33.972420, 26.257084>,  <38.084541, 33.911572, 26.314196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693344, 33.972420, 26.257084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176332, 0.236920, -0.955393,
		-0.111508, -0.959546, -0.258530,
		-0.977995, 0.152121, -0.142780,
		37.399944, 34.018055, 26.214251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896656, 33.473305, 25.717113>,  <38.084541, 33.911572, 26.314196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896656, 33.473305, 25.717113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592651, 33.733219, 25.722153>,  <37.410248, 33.889168, 25.725176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592651, 33.733219, 25.722153>,  <37.896656, 33.473305, 25.717113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592651, 33.733219, 25.722153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091666, 0.126368, -0.987739,
		-0.643415, -0.749536, -0.155604,
		-0.760010, 0.649790, 0.012600,
		37.364647, 33.928158, 25.725933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410725, 33.247284, 25.160397>,  <37.896656, 33.473305, 25.717113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410725, 33.247284, 25.160397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382694, 33.635460, 25.252773>,  <37.365875, 33.868366, 25.308199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382694, 33.635460, 25.252773>,  <37.410725, 33.247284, 25.160397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382694, 33.635460, 25.252773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008961, 0.232114, -0.972647,
		-0.997501, -0.066091, -0.024962,
		-0.070077, 0.970441, 0.230942,
		37.361671, 33.926594, 25.322056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959270, 33.569508, 24.623547>,  <37.410725, 33.247284, 25.160397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959270, 33.569508, 24.623547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139729, 33.886795, 24.787140>,  <37.248005, 34.077168, 24.885296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139729, 33.886795, 24.787140>,  <36.959270, 33.569508, 24.623547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139729, 33.886795, 24.787140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260685, 0.321156, -0.910441,
		-0.853526, 0.517361, -0.061891,
		0.451150, 0.793219, 0.408983,
		37.275074, 34.124760, 24.909836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625702, 34.118309, 24.305326>,  <36.959270, 33.569508, 24.623547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625702, 34.118309, 24.305326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967041, 34.256424, 24.461567>,  <37.171844, 34.339294, 24.555311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967041, 34.256424, 24.461567>,  <36.625702, 34.118309, 24.305326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967041, 34.256424, 24.461567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186676, 0.497178, -0.847329,
		-0.486770, 0.795985, 0.359810,
		0.853351, 0.345286, 0.390602,
		37.223045, 34.360008, 24.578747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593826, 34.987106, 24.262159>,  <36.625702, 34.118309, 24.305326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593826, 34.987106, 24.262159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963596, 34.839584, 24.300983>,  <37.185459, 34.751072, 24.324278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963596, 34.839584, 24.300983>,  <36.593826, 34.987106, 24.262159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963596, 34.839584, 24.300983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237713, 0.358225, -0.902866,
		0.298208, 0.857706, 0.418822,
		0.924427, -0.368801, 0.097062,
		37.240925, 34.728943, 24.330103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002464, 35.568783, 24.103271>,  <36.593826, 34.987106, 24.262159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002464, 35.568783, 24.103271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264725, 35.270210, 24.057728>,  <37.422081, 35.091064, 24.030401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264725, 35.270210, 24.057728>,  <37.002464, 35.568783, 24.103271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264725, 35.270210, 24.057728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215023, 0.329125, -0.919479,
		0.723803, 0.578373, 0.376290,
		0.655648, -0.746433, -0.113858,
		37.461418, 35.046280, 24.023571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937065, 35.568062, 24.822660>,  <37.002464, 35.568783, 24.103271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937065, 35.568062, 24.822660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688049, 35.861599, 24.713913>,  <36.538639, 36.037724, 24.648664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688049, 35.861599, 24.713913>,  <36.937065, 35.568062, 24.822660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688049, 35.861599, 24.713913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553569, -0.167374, 0.815811,
		0.553175, 0.658375, 0.510431,
		-0.622542, 0.733845, -0.271869,
		36.501286, 36.081753, 24.632353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788254, 36.019821, 25.434847>,  <36.937065, 35.568062, 24.822660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788254, 36.019821, 25.434847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483368, 36.072807, 25.181396>,  <36.300438, 36.104599, 25.029325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483368, 36.072807, 25.181396>,  <36.788254, 36.019821, 25.434847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483368, 36.072807, 25.181396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647103, -0.130305, 0.751184,
		0.016942, 0.982585, 0.185040,
		-0.762214, 0.132467, -0.633626,
		36.254704, 36.112549, 24.991308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441235, 36.549599, 25.863863>,  <36.788254, 36.019821, 25.434847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441235, 36.549599, 25.863863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192528, 36.411572, 25.582626>,  <36.043304, 36.328754, 25.413885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192528, 36.411572, 25.582626>,  <36.441235, 36.549599, 25.863863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192528, 36.411572, 25.582626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770379, 0.107663, 0.628430,
		-0.141151, 0.932384, -0.332771,
		-0.621765, -0.345064, -0.703092,
		36.005997, 36.308052, 25.371698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917191, 37.030308, 25.808641>,  <36.441235, 36.549599, 25.863863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917191, 37.030308, 25.808641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769974, 36.677097, 25.692154>,  <35.681644, 36.465172, 25.622261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769974, 36.677097, 25.692154>,  <35.917191, 37.030308, 25.808641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769974, 36.677097, 25.692154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724976, 0.076416, 0.684523,
		-0.582198, 0.463061, -0.668297,
		-0.368044, -0.883026, -0.291219,
		35.659561, 36.412189, 25.604788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205677, 37.177216, 25.739824>,  <35.917191, 37.030308, 25.808641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205677, 37.177216, 25.739824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252014, 36.784332, 25.798943>,  <35.279816, 36.548603, 25.834414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252014, 36.784332, 25.798943>,  <35.205677, 37.177216, 25.739824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252014, 36.784332, 25.798943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652219, 0.037003, 0.757127,
		-0.749126, -0.184103, -0.636330,
		0.115843, -0.982210, 0.147795,
		35.286766, 36.489670, 25.843281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511730, 36.962337, 25.848904>,  <35.205677, 37.177216, 25.739824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511730, 36.962337, 25.848904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731346, 36.645790, 25.956451>,  <34.863113, 36.455860, 26.020979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731346, 36.645790, 25.956451>,  <34.511730, 36.962337, 25.848904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731346, 36.645790, 25.956451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593857, -0.143007, 0.791759,
		-0.588126, -0.594374, -0.548477,
		0.549038, -0.791371, 0.268867,
		34.896057, 36.408379, 26.037111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122398, 36.310894, 25.898369>,  <34.511730, 36.962337, 25.848904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122398, 36.310894, 25.898369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436661, 36.258293, 26.140179>,  <34.625217, 36.226734, 26.285265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436661, 36.258293, 26.140179>,  <34.122398, 36.310894, 25.898369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436661, 36.258293, 26.140179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618589, -0.182144, 0.764311,
		0.009606, -0.974439, -0.224445,
		0.785656, -0.131497, 0.604527,
		34.672359, 36.218845, 26.321537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948910, 35.672943, 26.267221>,  <34.122398, 36.310894, 25.898369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948910, 35.672943, 26.267221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235439, 35.833858, 26.495270>,  <34.407356, 35.930408, 26.632099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235439, 35.833858, 26.495270>,  <33.948910, 35.672943, 26.267221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235439, 35.833858, 26.495270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430710, -0.387900, 0.814876,
		0.548967, -0.829274, -0.104593,
		0.716327, 0.402290, 0.570121,
		34.450336, 35.954544, 26.666306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201206, 35.120426, 26.659845>,  <33.948910, 35.672943, 26.267221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201206, 35.120426, 26.659845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299885, 35.461441, 26.844158>,  <34.359093, 35.666050, 26.954746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299885, 35.461441, 26.844158>,  <34.201206, 35.120426, 26.659845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299885, 35.461441, 26.844158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402413, -0.342425, 0.849005,
		0.881592, -0.394871, 0.258597,
		0.246698, 0.852538, 0.460781,
		34.373894, 35.717201, 26.982391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342545, 34.925678, 27.326483>,  <34.201206, 35.120426, 26.659845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342545, 34.925678, 27.326483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338833, 35.316353, 27.412273>,  <34.336605, 35.550758, 27.463747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338833, 35.316353, 27.412273>,  <34.342545, 34.925678, 27.326483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338833, 35.316353, 27.412273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172231, -0.212841, 0.961787,
		0.985013, -0.028011, 0.170191,
		-0.009283, 0.976685, 0.214476,
		34.336048, 35.609360, 27.476616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736137, 34.996021, 27.827219>,  <34.342545, 34.925678, 27.326483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736137, 34.996021, 27.827219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510559, 35.324856, 27.858570>,  <34.375214, 35.522156, 27.877380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510559, 35.324856, 27.858570>,  <34.736137, 34.996021, 27.827219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510559, 35.324856, 27.858570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232651, -0.249227, 0.940085,
		0.792362, 0.511923, 0.331809,
		-0.563946, 0.822084, 0.078379,
		34.341373, 35.571480, 27.882084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875595, 35.427773, 28.456245>,  <34.736137, 34.996021, 27.827219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875595, 35.427773, 28.456245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499218, 35.471802, 28.328178>,  <34.273392, 35.498219, 28.251337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499218, 35.471802, 28.328178>,  <34.875595, 35.427773, 28.456245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499218, 35.471802, 28.328178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336803, -0.208069, 0.918298,
		0.034461, 0.971901, 0.232853,
		-0.940944, 0.110071, -0.320169,
		34.216934, 35.504822, 28.232128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638927, 35.812588, 28.915159>,  <34.875595, 35.427773, 28.456245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638927, 35.812588, 28.915159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295643, 35.682728, 28.756123>,  <34.089672, 35.604813, 28.660700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295643, 35.682728, 28.756123>,  <34.638927, 35.812588, 28.915159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295643, 35.682728, 28.756123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425980, 0.018293, 0.904548,
		-0.286392, 0.945656, -0.153995,
		-0.858208, -0.324654, -0.397592,
		34.038181, 35.585331, 28.636845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024120, 36.206825, 29.156403>,  <34.638927, 35.812588, 28.915159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024120, 36.206825, 29.156403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835358, 35.873829, 29.040287>,  <33.722099, 35.674030, 28.970617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835358, 35.873829, 29.040287>,  <34.024120, 36.206825, 29.156403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835358, 35.873829, 29.040287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467274, -0.043046, 0.883064,
		-0.747636, 0.552369, -0.368686,
		-0.471907, -0.832487, -0.290291,
		33.693787, 35.624084, 28.953199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483795, 36.148724, 29.601421>,  <34.024120, 36.206825, 29.156403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483795, 36.148724, 29.601421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460251, 35.795021, 29.416111>,  <33.446125, 35.582798, 29.304926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460251, 35.795021, 29.416111>,  <33.483795, 36.148724, 29.601421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460251, 35.795021, 29.416111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644908, -0.320555, 0.693786,
		-0.761990, 0.339605, -0.551397,
		-0.058860, -0.884258, -0.463274,
		33.442593, 35.529743, 29.277128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713959, 35.875450, 29.601145>,  <33.483795, 36.148724, 29.601421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713959, 35.875450, 29.601145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973866, 35.571911, 29.583511>,  <33.129810, 35.389786, 29.572931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973866, 35.571911, 29.583511>,  <32.713959, 35.875450, 29.601145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973866, 35.571911, 29.583511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451609, -0.432043, 0.780634,
		-0.611430, -0.487325, -0.623432,
		0.649772, -0.758850, -0.044083,
		33.168797, 35.344257, 29.570286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343441, 35.375954, 29.872414>,  <32.713959, 35.875450, 29.601145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343441, 35.375954, 29.872414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706085, 35.207573, 29.884125>,  <32.923672, 35.106544, 29.891151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706085, 35.207573, 29.884125>,  <32.343441, 35.375954, 29.872414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706085, 35.207573, 29.884125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288750, -0.568299, 0.770493,
		-0.307700, -0.706992, -0.636776,
		0.906612, -0.420950, 0.029279,
		32.978069, 35.081287, 29.892908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234768, 34.629570, 29.843693>,  <32.343441, 35.375954, 29.872414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234768, 34.629570, 29.843693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580978, 34.727936, 30.018227>,  <32.788704, 34.786953, 30.122946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580978, 34.727936, 30.018227>,  <32.234768, 34.629570, 29.843693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580978, 34.727936, 30.018227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272251, -0.500237, 0.821975,
		0.420403, -0.830235, -0.366020,
		0.865529, 0.245912, 0.436334,
		32.840637, 34.801708, 30.149126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580166, 34.055653, 29.950079>,  <32.234768, 34.629570, 29.843693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580166, 34.055653, 29.950079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767540, 34.285164, 30.218807>,  <32.879963, 34.422871, 30.380045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767540, 34.285164, 30.218807>,  <32.580166, 34.055653, 29.950079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767540, 34.285164, 30.218807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234730, -0.652255, 0.720740,
		0.851746, -0.495315, -0.170855,
		0.468434, 0.573782, 0.671821,
		32.908070, 34.457298, 30.420353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899155, 33.543839, 30.297033>,  <32.580166, 34.055653, 29.950079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899155, 33.543839, 30.297033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879807, 33.864140, 30.535847>,  <32.868198, 34.056320, 30.679134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879807, 33.864140, 30.535847>,  <32.899155, 33.543839, 30.297033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879807, 33.864140, 30.535847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323946, -0.578000, 0.748983,
		0.944838, -0.157181, 0.287358,
		-0.048367, 0.800756, 0.597035,
		32.865295, 34.104366, 30.714956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346088, 33.499737, 30.905413>,  <32.899155, 33.543839, 30.297033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346088, 33.499737, 30.905413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041428, 33.746250, 30.985497>,  <32.858631, 33.894157, 31.033546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041428, 33.746250, 30.985497>,  <33.346088, 33.499737, 30.905413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041428, 33.746250, 30.985497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253286, -0.567539, 0.783419,
		0.596433, 0.545983, 0.588362,
		-0.761652, 0.616281, 0.200209,
		32.812931, 33.931133, 31.045559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386631, 33.594486, 31.624466>,  <33.346088, 33.499737, 30.905413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386631, 33.594486, 31.624466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013100, 33.647091, 31.491394>,  <32.788982, 33.678654, 31.411551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013100, 33.647091, 31.491394>,  <33.386631, 33.594486, 31.624466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013100, 33.647091, 31.491394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348501, -0.544351, 0.763039,
		-0.080742, 0.828484, 0.554162,
		-0.933824, 0.131516, -0.332680,
		32.732952, 33.686546, 31.391590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106396, 33.534443, 32.224838>,  <33.386631, 33.594486, 31.624466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106396, 33.534443, 32.224838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782440, 33.493786, 31.993755>,  <32.588066, 33.469391, 31.855106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782440, 33.493786, 31.993755>,  <33.106396, 33.534443, 32.224838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782440, 33.493786, 31.993755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453306, -0.516606, 0.726383,
		-0.372277, 0.850169, 0.372320,
		-0.809891, -0.101640, -0.577708,
		32.539474, 33.463295, 31.820442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635178, 33.796535, 32.584599>,  <33.106396, 33.534443, 32.224838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635178, 33.796535, 32.584599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492611, 33.521034, 32.332062>,  <32.407070, 33.355736, 32.180542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492611, 33.521034, 32.332062>,  <32.635178, 33.796535, 32.584599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492611, 33.521034, 32.332062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426154, -0.481498, 0.765867,
		-0.831479, 0.542019, -0.121897,
		-0.356421, -0.688749, -0.631339,
		32.385685, 33.314411, 32.142658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894878, 33.706703, 32.767029>,  <32.635178, 33.796535, 32.584599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894878, 33.706703, 32.767029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987341, 33.375973, 32.561928>,  <32.042820, 33.177532, 32.438866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987341, 33.375973, 32.561928>,  <31.894878, 33.706703, 32.767029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987341, 33.375973, 32.561928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404974, -0.560974, 0.722014,
		-0.884625, 0.040753, -0.464518,
		0.231158, -0.826830, -0.512755,
		32.056690, 33.127922, 32.408100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241112, 33.284237, 32.845879>,  <31.894878, 33.706703, 32.767029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241112, 33.284237, 32.845879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529169, 33.038715, 32.716492>,  <31.702003, 32.891403, 32.638859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529169, 33.038715, 32.716492>,  <31.241112, 33.284237, 32.845879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529169, 33.038715, 32.716492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451154, -0.768460, 0.453795,
		-0.527116, -0.180864, -0.830324,
		0.720145, -0.613806, -0.323470,
		31.745213, 32.854572, 32.619450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904263, 32.691368, 32.630291>,  <31.241112, 33.284237, 32.845879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904263, 32.691368, 32.630291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271914, 32.554188, 32.707840>,  <31.492504, 32.471878, 32.754372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271914, 32.554188, 32.707840>,  <30.904263, 32.691368, 32.630291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271914, 32.554188, 32.707840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392281, -0.842123, 0.370061,
		0.036354, -0.416187, -0.908552,
		0.919126, -0.342955, 0.193877,
		31.547651, 32.451302, 32.766003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850401, 32.035950, 32.450771>,  <30.904263, 32.691368, 32.630291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850401, 32.035950, 32.450771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173134, 32.024643, 32.686813>,  <31.366774, 32.017860, 32.828438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173134, 32.024643, 32.686813>,  <30.850401, 32.035950, 32.450771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173134, 32.024643, 32.686813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318503, -0.862074, 0.394188,
		0.497571, -0.505993, -0.704552,
		0.806833, -0.028265, 0.590103,
		31.415184, 32.016163, 32.863846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068050, 31.396179, 32.406334>,  <30.850401, 32.035950, 32.450771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068050, 31.396179, 32.406334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223986, 31.545094, 32.743244>,  <31.317547, 31.634441, 32.945389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223986, 31.545094, 32.743244>,  <31.068050, 31.396179, 32.406334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223986, 31.545094, 32.743244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255849, -0.834844, 0.487418,
		0.884628, -0.405510, -0.230205,
		0.389839, 0.372286, 0.842276,
		31.340937, 31.656780, 32.995926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392635, 30.857132, 32.662735>,  <31.068050, 31.396179, 32.406334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392635, 30.857132, 32.662735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409184, 31.095406, 32.983597>,  <31.419111, 31.238371, 33.176113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409184, 31.095406, 32.983597>,  <31.392635, 30.857132, 32.662735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409184, 31.095406, 32.983597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170058, -0.786927, 0.593149,
		0.984565, -0.160950, 0.068747,
		0.041369, 0.595685, 0.802152,
		31.421595, 31.274111, 33.224243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931780, 30.558889, 33.107567>,  <31.392635, 30.857132, 32.662735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931780, 30.558889, 33.107567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671541, 30.764759, 33.330936>,  <31.515398, 30.888281, 33.464958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671541, 30.764759, 33.330936>,  <31.931780, 30.558889, 33.107567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671541, 30.764759, 33.330936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163005, -0.812826, 0.559235,
		0.741724, 0.272810, 0.612715,
		-0.650595, 0.514674, 0.558423,
		31.476362, 30.919161, 33.498463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079514, 30.503031, 33.922455>,  <31.931780, 30.558889, 33.107567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079514, 30.503031, 33.922455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702427, 30.635506, 33.906460>,  <31.476175, 30.714991, 33.896862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702427, 30.635506, 33.906460>,  <32.079514, 30.503031, 33.922455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702427, 30.635506, 33.906460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296206, -0.775884, 0.557015,
		0.153447, 0.536954, 0.829539,
		-0.942717, 0.331187, -0.039992,
		31.419611, 30.734861, 33.894463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877132, 30.403416, 34.562828>,  <32.079514, 30.503031, 33.922455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877132, 30.403416, 34.562828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539051, 30.431911, 34.350956>,  <31.336203, 30.449009, 34.223835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539051, 30.431911, 34.350956>,  <31.877132, 30.403416, 34.562828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539051, 30.431911, 34.350956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304194, -0.879002, 0.367180,
		-0.439428, 0.471466, 0.764606,
		-0.845203, 0.071239, -0.529676,
		31.285490, 30.453283, 34.192055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354298, 30.303524, 35.017891>,  <31.877132, 30.403416, 34.562828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354298, 30.303524, 35.017891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172382, 30.224216, 34.670593>,  <31.063232, 30.176632, 34.462212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172382, 30.224216, 34.670593>,  <31.354298, 30.303524, 35.017891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172382, 30.224216, 34.670593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395248, -0.828703, 0.396271,
		-0.798089, 0.523393, 0.298519,
		-0.454789, -0.198270, -0.868249,
		31.035946, 30.164736, 34.410118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605963, 30.265678, 35.072186>,  <31.354298, 30.303524, 35.017891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605963, 30.265678, 35.072186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696117, 30.049335, 34.748043>,  <30.750210, 29.919531, 34.553558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696117, 30.049335, 34.748043>,  <30.605963, 30.265678, 35.072186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696117, 30.049335, 34.748043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420698, -0.804244, 0.419768,
		-0.878757, 0.246305, -0.408802,
		0.225386, -0.540856, -0.810355,
		30.763733, 29.887079, 34.504936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074715, 29.749722, 35.024902>,  <30.605963, 30.265678, 35.072186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074715, 29.749722, 35.024902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344036, 29.596542, 34.771915>,  <30.505629, 29.504635, 34.620125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344036, 29.596542, 34.771915>,  <30.074715, 29.749722, 35.024902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344036, 29.596542, 34.771915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259703, -0.923402, 0.282636,
		-0.692256, -0.026046, -0.721182,
		0.673302, -0.382950, -0.632466,
		30.546026, 29.481657, 34.582176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797588, 29.123226, 34.719776>,  <30.074715, 29.749722, 35.024902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797588, 29.123226, 34.719776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182652, 29.061085, 34.631096>,  <30.413691, 29.023800, 34.577888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182652, 29.061085, 34.631096>,  <29.797588, 29.123226, 34.719776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182652, 29.061085, 34.631096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121920, -0.979993, 0.157322,
		-0.241705, -0.124419, -0.962340,
		0.962660, -0.155354, -0.221700,
		30.471449, 29.014479, 34.564587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838284, 28.633709, 34.250057>,  <29.797588, 29.123226, 34.719776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838284, 28.633709, 34.250057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190975, 28.599693, 34.435669>,  <30.402590, 28.579285, 34.547035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190975, 28.599693, 34.435669>,  <29.838284, 28.633709, 34.250057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190975, 28.599693, 34.435669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104870, -0.994340, 0.017046,
		0.459954, -0.063693, -0.885655,
		0.881728, -0.085038, 0.464030,
		30.455494, 28.574183, 34.574879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531345, 27.858519, 34.055458>,  <29.838284, 28.633709, 34.250057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531345, 27.858519, 34.055458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249905, 27.649837, 33.862473>,  <29.081041, 27.524628, 33.746681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249905, 27.649837, 33.862473>,  <29.531345, 27.858519, 34.055458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249905, 27.649837, 33.862473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350615, 0.335673, -0.874296,
		0.618074, -0.784314, -0.053262,
		-0.703601, -0.521705, -0.482463,
		29.038824, 27.493326, 33.717735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834181, 27.331125, 33.680153>,  <29.531345, 27.858519, 34.055458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834181, 27.331125, 33.680153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481438, 27.440926, 33.526806>,  <29.269791, 27.506805, 33.434795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481438, 27.440926, 33.526806>,  <29.834181, 27.331125, 33.680153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481438, 27.440926, 33.526806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438482, 0.178475, -0.880841,
		-0.173370, -0.944879, -0.277754,
		-0.881859, 0.274502, -0.383370,
		29.216879, 27.523275, 33.411797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723274, 27.102957, 32.960205>,  <29.834181, 27.331125, 33.680153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723274, 27.102957, 32.960205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501421, 27.432976, 33.003429>,  <29.368309, 27.630987, 33.029362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501421, 27.432976, 33.003429>,  <29.723274, 27.102957, 32.960205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501421, 27.432976, 33.003429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406423, 0.381925, -0.830032,
		-0.726088, -0.416446, -0.547147,
		-0.554632, 0.825049, 0.108058,
		29.335032, 27.680490, 33.035847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589643, 27.228983, 32.285419>,  <29.723274, 27.102957, 32.960205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589643, 27.228983, 32.285419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486717, 27.565083, 32.476318>,  <29.424961, 27.766743, 32.590858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486717, 27.565083, 32.476318>,  <29.589643, 27.228983, 32.285419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486717, 27.565083, 32.476318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361666, 0.541726, -0.758769,
		-0.896095, -0.022639, -0.443285,
		-0.257316, 0.840250, 0.477250,
		29.409523, 27.817158, 32.619492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106596, 27.619957, 31.818979>,  <29.589643, 27.228983, 32.285419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106596, 27.619957, 31.818979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260223, 27.898712, 32.061249>,  <29.352400, 28.065966, 32.206612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260223, 27.898712, 32.061249>,  <29.106596, 27.619957, 31.818979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260223, 27.898712, 32.061249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224813, 0.565656, -0.793405,
		-0.895518, 0.440883, 0.060580,
		0.384067, 0.696890, 0.605671,
		29.375443, 28.107779, 32.242950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767242, 28.198637, 31.544199>,  <29.106596, 27.619957, 31.818979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767242, 28.198637, 31.544199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100302, 28.300522, 31.740898>,  <29.300138, 28.361652, 31.858917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100302, 28.300522, 31.740898>,  <28.767242, 28.198637, 31.544199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100302, 28.300522, 31.740898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289905, 0.556094, -0.778919,
		-0.471858, 0.791127, 0.389190,
		0.832650, 0.254711, 0.491749,
		29.350096, 28.376936, 31.888422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673706, 28.902294, 31.556805>,  <28.767242, 28.198637, 31.544199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673706, 28.902294, 31.556805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052727, 28.806755, 31.641747>,  <29.280140, 28.749432, 31.692711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052727, 28.806755, 31.641747>,  <28.673706, 28.902294, 31.556805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052727, 28.806755, 31.641747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319016, 0.666721, -0.673581,
		0.019302, 0.705998, 0.707950,
		0.947553, -0.238849, 0.212355,
		29.336992, 28.735100, 31.705454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061230, 29.563694, 31.659662>,  <28.673706, 28.902294, 31.556805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061230, 29.563694, 31.659662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314703, 29.268108, 31.568119>,  <29.466787, 29.090757, 31.513193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314703, 29.268108, 31.568119>,  <29.061230, 29.563694, 31.659662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314703, 29.268108, 31.568119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482658, 0.608863, -0.629545,
		0.604553, 0.288474, 0.742495,
		0.633685, -0.738964, -0.228856,
		29.504808, 29.046419, 31.499462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766815, 29.809746, 31.815964>,  <29.061230, 29.563694, 31.659662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766815, 29.809746, 31.815964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782612, 29.526615, 31.533852>,  <29.792089, 29.356737, 31.364584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782612, 29.526615, 31.533852>,  <29.766815, 29.809746, 31.815964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782612, 29.526615, 31.533852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595296, 0.583565, -0.552335,
		0.802535, -0.398038, 0.444414,
		0.039494, -0.707826, -0.705282,
		29.794460, 29.314268, 31.322268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473320, 29.807394, 31.570456>,  <29.766815, 29.809746, 31.815964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473320, 29.807394, 31.570456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267630, 29.621750, 31.281963>,  <30.144217, 29.510363, 31.108868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267630, 29.621750, 31.281963>,  <30.473320, 29.807394, 31.570456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267630, 29.621750, 31.281963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537495, 0.480915, -0.692691,
		0.668336, -0.743857, 0.002158,
		-0.514225, -0.464110, -0.721231,
		30.113361, 29.482517, 31.065594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995073, 29.636436, 31.125362>,  <30.473320, 29.807394, 31.570456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995073, 29.636436, 31.125362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664053, 29.614140, 30.901917>,  <30.465441, 29.600761, 30.767849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664053, 29.614140, 30.901917>,  <30.995073, 29.636436, 31.125362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664053, 29.614140, 30.901917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469681, 0.476305, -0.743326,
		0.307504, -0.877511, -0.367987,
		-0.827551, -0.055739, -0.558617,
		30.415789, 29.597418, 30.734331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217718, 29.519674, 30.405268>,  <30.995073, 29.636436, 31.125362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217718, 29.519674, 30.405268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865433, 29.708801, 30.416481>,  <30.654062, 29.822277, 30.423208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865433, 29.708801, 30.416481>,  <31.217718, 29.519674, 30.405268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865433, 29.708801, 30.416481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407153, 0.785980, -0.465254,
		-0.242013, -0.398343, -0.884733,
		-0.880713, 0.472820, 0.028031,
		30.601219, 29.850647, 30.424891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162193, 29.873617, 29.823305>,  <31.217718, 29.519674, 30.405268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162193, 29.873617, 29.823305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916092, 30.064022, 30.074661>,  <30.768431, 30.178265, 30.225475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916092, 30.064022, 30.074661>,  <31.162193, 29.873617, 29.823305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916092, 30.064022, 30.074661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028358, 0.809967, -0.585789,
		-0.787818, -0.342590, -0.511835,
		-0.615255, 0.476010, 0.628391,
		30.731516, 30.206825, 30.263178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723310, 30.170908, 29.348442>,  <31.162193, 29.873617, 29.823305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723310, 30.170908, 29.348442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705482, 30.382885, 29.687187>,  <30.694786, 30.510071, 29.890434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705482, 30.382885, 29.687187>,  <30.723310, 30.170908, 29.348442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705482, 30.382885, 29.687187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162395, 0.840272, -0.517272,
		-0.985719, 0.114472, -0.123509,
		-0.044568, 0.529942, 0.846862,
		30.692112, 30.541868, 29.941246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364738, 30.788799, 29.174706>,  <30.723310, 30.170908, 29.348442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364738, 30.788799, 29.174706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550646, 30.888721, 29.514492>,  <30.662189, 30.948675, 29.718363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550646, 30.888721, 29.514492>,  <30.364738, 30.788799, 29.174706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550646, 30.888721, 29.514492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054656, 0.949454, -0.309113,
		-0.883745, 0.190093, 0.427621,
		0.464766, 0.249805, 0.849465,
		30.690075, 30.963663, 29.769331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197929, 31.381145, 29.196226>,  <30.364738, 30.788799, 29.174706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197929, 31.381145, 29.196226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475887, 31.416161, 29.481731>,  <30.642662, 31.437170, 29.653034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475887, 31.416161, 29.481731>,  <30.197929, 31.381145, 29.196226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475887, 31.416161, 29.481731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164732, 0.946791, -0.276497,
		-0.699987, 0.309716, 0.643501,
		0.694896, 0.087539, 0.713762,
		30.684357, 31.442423, 29.695860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124283, 32.085957, 29.600994>,  <30.197929, 31.381145, 29.196226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124283, 32.085957, 29.600994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504797, 31.962669, 29.604092>,  <30.733105, 31.888697, 29.605949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504797, 31.962669, 29.604092>,  <30.124283, 32.085957, 29.600994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504797, 31.962669, 29.604092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292946, 0.895754, -0.334376,
		0.096125, 0.320355, 0.942408,
		0.951285, -0.308217, 0.007743,
		30.790182, 31.870205, 29.606415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462347, 32.555931, 29.974897>,  <30.124283, 32.085957, 29.600994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462347, 32.555931, 29.974897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729431, 32.389309, 29.728111>,  <30.889681, 32.289333, 29.580040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729431, 32.389309, 29.728111>,  <30.462347, 32.555931, 29.974897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729431, 32.389309, 29.728111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375021, 0.904157, -0.204597,
		0.643058, -0.094763, 0.759931,
		0.667709, -0.416558, -0.616964,
		30.929745, 32.264343, 29.543022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097912, 32.974354, 30.068899>,  <30.462347, 32.555931, 29.974897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097912, 32.974354, 30.068899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180944, 32.741959, 29.754101>,  <31.230764, 32.602520, 29.565222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180944, 32.741959, 29.754101>,  <31.097912, 32.974354, 30.068899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180944, 32.741959, 29.754101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476651, 0.762626, -0.437272,
		0.854233, -0.284352, 0.435235,
		0.207582, -0.580987, -0.786996,
		31.243219, 32.567661, 29.518002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803711, 33.183575, 29.943008>,  <31.097912, 32.974354, 30.068899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803711, 33.183575, 29.943008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643501, 33.023651, 29.613224>,  <31.547375, 32.927696, 29.415354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643501, 33.023651, 29.613224>,  <31.803711, 33.183575, 29.943008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643501, 33.023651, 29.613224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428433, 0.713651, -0.554208,
		0.809953, -0.575200, -0.114545,
		-0.400525, -0.399808, -0.824459,
		31.523344, 32.903709, 29.365887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356152, 33.170792, 29.455069>,  <31.803711, 33.183575, 29.943008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356152, 33.170792, 29.455069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024658, 33.160385, 29.231453>,  <31.825762, 33.154140, 29.097282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024658, 33.160385, 29.231453>,  <32.356152, 33.170792, 29.455069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024658, 33.160385, 29.231453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366646, 0.729451, -0.577470,
		0.422817, -0.683538, -0.594981,
		-0.828732, -0.026017, -0.559040,
		31.776039, 33.152580, 29.063740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550949, 33.181187, 28.809778>,  <32.356152, 33.170792, 29.455069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550949, 33.181187, 28.809778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181957, 33.331272, 28.773445>,  <31.960562, 33.421322, 28.751644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181957, 33.331272, 28.773445>,  <32.550949, 33.181187, 28.809778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181957, 33.331272, 28.773445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360125, 0.751607, -0.552628,
		-0.139079, -0.542499, -0.828463,
		-0.922479, 0.375209, -0.090835,
		31.905214, 33.443836, 28.746195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601479, 33.495201, 28.100100>,  <32.550949, 33.181187, 28.809778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601479, 33.495201, 28.100100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268246, 33.644863, 28.263065>,  <32.068306, 33.734661, 28.360846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268246, 33.644863, 28.263065>,  <32.601479, 33.495201, 28.100100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268246, 33.644863, 28.263065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128773, 0.847472, -0.514985,
		-0.537958, -0.376559, -0.754191,
		-0.833078, 0.374160, 0.407414,
		32.018322, 33.757111, 28.385290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226292, 33.795822, 27.550415>,  <32.601479, 33.495201, 28.100100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226292, 33.795822, 27.550415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044670, 33.991371, 27.848366>,  <31.935698, 34.108700, 28.027136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044670, 33.991371, 27.848366>,  <32.226292, 33.795822, 27.550415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044670, 33.991371, 27.848366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219027, 0.749127, -0.625168,
		-0.863634, -0.447008, -0.233068,
		-0.454053, 0.488868, 0.744878,
		31.908455, 34.138031, 28.071829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612658, 34.088718, 27.268364>,  <32.226292, 33.795822, 27.550415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612658, 34.088718, 27.268364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679045, 34.305561, 27.597866>,  <31.718878, 34.435669, 27.795567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679045, 34.305561, 27.597866>,  <31.612658, 34.088718, 27.268364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679045, 34.305561, 27.597866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132087, 0.840032, -0.526211,
		-0.977244, -0.021472, 0.211026,
		0.165970, 0.542111, 0.823753,
		31.728836, 34.468193, 27.844992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989616, 34.545593, 27.281916>,  <31.612658, 34.088718, 27.268364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989616, 34.545593, 27.281916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282284, 34.709827, 27.499569>,  <31.457884, 34.808369, 27.630161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282284, 34.709827, 27.499569>,  <30.989616, 34.545593, 27.281916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282284, 34.709827, 27.499569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182425, 0.887073, -0.424055,
		-0.656797, 0.211004, 0.723944,
		0.731669, 0.410583, 0.544134,
		31.501785, 34.833004, 27.662809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691641, 35.036083, 27.697771>,  <30.989616, 34.545593, 27.281916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691641, 35.036083, 27.697771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077457, 35.141659, 27.697872>,  <31.308947, 35.205006, 27.697933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077457, 35.141659, 27.697872>,  <30.691641, 35.036083, 27.697771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077457, 35.141659, 27.697872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251240, 0.918429, -0.305559,
		-0.080882, 0.294660, 0.952173,
		0.964539, 0.263939, 0.000254,
		31.366819, 35.220840, 27.697948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809174, 35.738686, 28.185598>,  <30.691641, 35.036083, 27.697771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809174, 35.738686, 28.185598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128979, 35.719612, 27.946098>,  <31.320862, 35.708168, 27.802399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128979, 35.719612, 27.946098>,  <30.809174, 35.738686, 28.185598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128979, 35.719612, 27.946098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227501, 0.898530, -0.375348,
		0.555896, 0.436313, 0.707538,
		0.799514, -0.047688, -0.598751,
		31.368834, 35.705307, 27.766474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280550, 36.227161, 28.373480>,  <30.809174, 35.738686, 28.185598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280550, 36.227161, 28.373480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345383, 36.141350, 27.988209>,  <31.384283, 36.089863, 27.757046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345383, 36.141350, 27.988209>,  <31.280550, 36.227161, 28.373480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345383, 36.141350, 27.988209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158711, 0.957707, -0.240016,
		0.973930, 0.191769, 0.121180,
		0.162082, -0.214527, -0.963176,
		31.394007, 36.076992, 27.699257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643789, 36.719311, 28.113348>,  <31.280550, 36.227161, 28.373480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643789, 36.719311, 28.113348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473614, 36.554047, 27.791279>,  <31.371510, 36.454887, 27.598038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473614, 36.554047, 27.791279>,  <31.643789, 36.719311, 28.113348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473614, 36.554047, 27.791279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301344, 0.903606, -0.304448,
		0.853342, 0.113109, -0.508934,
		-0.425440, -0.413162, -0.805170,
		31.345982, 36.430099, 27.549728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736338, 37.290798, 27.594303>,  <31.643789, 36.719311, 28.113348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736338, 37.290798, 27.594303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450535, 37.038895, 27.472397>,  <31.279053, 36.887753, 27.399254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450535, 37.038895, 27.472397>,  <31.736338, 37.290798, 27.594303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450535, 37.038895, 27.472397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550680, 0.774922, -0.310237,
		0.431544, -0.053839, -0.900484,
		-0.714508, -0.629760, -0.304765,
		31.236183, 36.849968, 27.380968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506533, 37.636993, 27.032032>,  <31.736338, 37.290798, 27.594303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506533, 37.636993, 27.032032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209867, 37.382175, 27.116039>,  <31.031868, 37.229282, 27.166443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209867, 37.382175, 27.116039>,  <31.506533, 37.636993, 27.032032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209867, 37.382175, 27.116039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628325, 0.550188, -0.550001,
		0.234827, -0.539874, -0.808327,
		-0.741663, -0.637047, 0.210017,
		30.987368, 37.191063, 27.179045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135176, 37.345860, 26.409527>,  <31.506533, 37.636993, 27.032032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135176, 37.345860, 26.409527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857000, 37.300995, 26.693439>,  <30.690096, 37.274078, 26.863787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857000, 37.300995, 26.693439>,  <31.135176, 37.345860, 26.409527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857000, 37.300995, 26.693439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672334, 0.450209, -0.587605,
		-0.253644, -0.885851, -0.388500,
		-0.695436, -0.112159, 0.709780,
		30.648369, 37.267345, 26.906374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640892, 36.908775, 26.173035>,  <31.135176, 37.345860, 26.409527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640892, 36.908775, 26.173035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468983, 37.098812, 26.480171>,  <30.365837, 37.212833, 26.664454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468983, 37.098812, 26.480171>,  <30.640892, 36.908775, 26.173035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468983, 37.098812, 26.480171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693929, 0.370306, -0.617525,
		-0.577719, -0.798222, 0.170535,
		-0.429772, 0.475095, 0.767842,
		30.340052, 37.241341, 26.710524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912613, 36.789665, 26.028107>,  <30.640892, 36.908775, 26.173035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912613, 36.789665, 26.028107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904108, 37.103527, 26.275932>,  <29.899006, 37.291843, 26.424627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904108, 37.103527, 26.275932>,  <29.912613, 36.789665, 26.028107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904108, 37.103527, 26.275932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676192, 0.445179, -0.587009,
		-0.736418, -0.431425, 0.521115,
		-0.021261, 0.784658, 0.619564,
		29.897730, 37.338924, 26.461802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292892, 37.009781, 25.929928>,  <29.912613, 36.789665, 26.028107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292892, 37.009781, 25.929928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449829, 37.324547, 26.120438>,  <29.543991, 37.513405, 26.234743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449829, 37.324547, 26.120438>,  <29.292892, 37.009781, 25.929928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449829, 37.324547, 26.120438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687131, 0.594965, -0.416975,
		-0.611488, -0.163664, 0.774142,
		0.392344, 0.786912, 0.476273,
		29.567532, 37.560619, 26.263319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754507, 37.367035, 26.200680>,  <29.292892, 37.009781, 25.929928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754507, 37.367035, 26.200680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056568, 37.623581, 26.146431>,  <29.237804, 37.777508, 26.113882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056568, 37.623581, 26.146431>,  <28.754507, 37.367035, 26.200680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056568, 37.623581, 26.146431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589418, 0.573738, -0.568693,
		-0.286928, 0.509389, 0.811292,
		0.755155, 0.641364, -0.135621,
		29.283115, 37.815990, 26.105745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399973, 38.014614, 26.291561>,  <28.754507, 37.367035, 26.200680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399973, 38.014614, 26.291561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732935, 38.103592, 26.088535>,  <28.932713, 38.156979, 25.966719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732935, 38.103592, 26.088535>,  <28.399973, 38.014614, 26.291561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732935, 38.103592, 26.088535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551175, 0.427427, -0.716597,
		0.057545, 0.876256, 0.478397,
		0.832403, 0.222444, -0.507567,
		28.982656, 38.170326, 25.936266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248341, 38.604088, 25.992704>,  <28.399973, 38.014614, 26.291561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248341, 38.604088, 25.992704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568609, 38.492363, 25.780701>,  <28.760771, 38.425327, 25.653498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568609, 38.492363, 25.780701>,  <28.248341, 38.604088, 25.992704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568609, 38.492363, 25.780701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485274, 0.216434, -0.847151,
		0.351332, 0.935490, 0.037750,
		0.800671, -0.279312, -0.530009,
		28.808811, 38.408569, 25.621698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547983, 39.185070, 25.738810>,  <28.248341, 38.604088, 25.992704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547983, 39.185070, 25.738810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635464, 38.869305, 25.509377>,  <28.687952, 38.679844, 25.371717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635464, 38.869305, 25.509377>,  <28.547983, 39.185070, 25.738810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635464, 38.869305, 25.509377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669269, 0.306412, -0.676898,
		0.710105, 0.531919, -0.461317,
		0.218702, -0.789413, -0.573581,
		28.701075, 38.632481, 25.337301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531301, 39.471218, 25.131344>,  <28.547983, 39.185070, 25.738810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531301, 39.471218, 25.131344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490295, 39.083183, 25.043324>,  <28.465691, 38.850361, 24.990511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490295, 39.083183, 25.043324>,  <28.531301, 39.471218, 25.131344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490295, 39.083183, 25.043324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677766, 0.230039, -0.698367,
		0.728097, 0.077549, -0.681074,
		-0.102516, -0.970087, -0.220051,
		28.459541, 38.792156, 24.977308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351864, 39.550438, 24.475376>,  <28.531301, 39.471218, 25.131344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351864, 39.550438, 24.475376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224627, 39.207405, 24.637054>,  <28.148283, 39.001587, 24.734062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224627, 39.207405, 24.637054>,  <28.351864, 39.550438, 24.475376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224627, 39.207405, 24.637054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881837, 0.111094, -0.458281,
		0.348108, -0.502213, -0.791583,
		-0.318095, -0.857578, 0.404198,
		28.129198, 38.950130, 24.758314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127901, 39.127583, 23.931410>,  <28.351864, 39.550438, 24.475376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127901, 39.127583, 23.931410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939358, 39.087566, 24.281910>,  <27.826231, 39.063557, 24.492210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939358, 39.087566, 24.281910>,  <28.127901, 39.127583, 23.931410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939358, 39.087566, 24.281910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865699, 0.242282, -0.438025,
		-0.168480, -0.965035, -0.200804,
		-0.471360, -0.100038, 0.876249,
		27.797949, 39.057556, 24.544785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477802, 38.727665, 23.666275>,  <28.127901, 39.127583, 23.931410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477802, 38.727665, 23.666275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442205, 38.975006, 23.978615>,  <27.420847, 39.123409, 24.166019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442205, 38.975006, 23.978615>,  <27.477802, 38.727665, 23.666275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442205, 38.975006, 23.978615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866423, 0.338648, -0.366917,
		-0.491316, -0.709198, 0.505614,
		-0.088992, 0.618349, 0.780849,
		27.415508, 39.160511, 24.212870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741436, 38.767323, 23.922802>,  <27.477802, 38.727665, 23.666275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741436, 38.767323, 23.922802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904854, 39.109146, 24.051060>,  <27.002905, 39.314240, 24.128014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904854, 39.109146, 24.051060>,  <26.741436, 38.767323, 23.922802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904854, 39.109146, 24.051060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834345, 0.492091, -0.248424,
		-0.370081, -0.166036, 0.914042,
		0.408545, 0.854563, 0.320645,
		27.027418, 39.365517, 24.147253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483444, 39.197792, 24.381432>,  <26.741436, 38.767323, 23.922802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483444, 39.197792, 24.381432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690294, 39.494503, 24.210621>,  <26.814404, 39.672527, 24.108133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690294, 39.494503, 24.210621>,  <26.483444, 39.197792, 24.381432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690294, 39.494503, 24.210621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835343, 0.546112, -0.062953,
		0.186508, 0.389270, 0.902044,
		0.517123, 0.741775, -0.427028,
		26.845430, 39.717037, 24.082512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.175570, 39.805748, 24.672777>,  <26.483444, 39.197792, 24.381432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.175570, 39.805748, 24.672777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358971, 39.891773, 24.327866>,  <26.469011, 39.943390, 24.120918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358971, 39.891773, 24.327866>,  <26.175570, 39.805748, 24.672777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358971, 39.891773, 24.327866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753167, 0.609057, -0.248576,
		0.471717, 0.763412, 0.441231,
		0.458501, 0.215063, -0.862279,
		26.496521, 39.956291, 24.069181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.505610, 39.691952, 24.464128>,  <26.175570, 39.805748, 24.672777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.505610, 39.691952, 24.464128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106037, 39.674454, 24.470108>,  <24.866293, 39.663956, 24.473696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106037, 39.674454, 24.470108>,  <25.505610, 39.691952, 24.464128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.106037, 39.674454, 24.470108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032944, 0.446806, -0.894024,
		0.032428, -0.893561, -0.447769,
		-0.998931, -0.043743, 0.014949,
		24.806358, 39.661331, 24.474592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.343725, 39.350788, 23.885431>,  <25.505610, 39.691952, 24.464128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.343725, 39.350788, 23.885431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039684, 39.592049, 23.982143>,  <24.857260, 39.736805, 24.040171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039684, 39.592049, 23.982143>,  <25.343725, 39.350788, 23.885431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.039684, 39.592049, 23.982143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023183, 0.397014, -0.917520,
		-0.649390, -0.691803, -0.315754,
		-0.760102, 0.603148, 0.241779,
		24.811653, 39.772995, 24.054678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.843674, 39.166893, 23.419909>,  <25.343725, 39.350788, 23.885431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.843674, 39.166893, 23.419909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754778, 39.523735, 23.577263>,  <24.701441, 39.737843, 23.671675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754778, 39.523735, 23.577263>,  <24.843674, 39.166893, 23.419909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754778, 39.523735, 23.577263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094442, 0.381880, -0.919374,
		-0.970407, -0.241475, -0.000617,
		-0.222241, 0.892108, 0.393384,
		24.688105, 39.791367, 23.695278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.256737, 39.394955, 23.059183>,  <24.843674, 39.166893, 23.419909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.256737, 39.394955, 23.059183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.426653, 39.723480, 23.211498>,  <24.528603, 39.920593, 23.302887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.426653, 39.723480, 23.211498>,  <24.256737, 39.394955, 23.059183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.426653, 39.723480, 23.211498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012704, 0.415177, -0.909652,
		-0.905203, 0.391248, 0.165929,
		0.424789, 0.821312, 0.380790,
		24.554089, 39.969875, 23.325735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.001169, 39.822155, 22.612556>,  <24.256737, 39.394955, 23.059183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.001169, 39.822155, 22.612556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270826, 40.051147, 22.799232>,  <24.432621, 40.188541, 22.911238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.270826, 40.051147, 22.799232>,  <24.001169, 39.822155, 22.612556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.270826, 40.051147, 22.799232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068804, 0.580433, -0.811396,
		-0.735388, 0.579108, 0.351907,
		0.674145, 0.572478, 0.466688,
		24.473070, 40.222893, 22.939240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.789427, 40.602314, 22.527895>,  <24.001169, 39.822155, 22.612556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.789427, 40.602314, 22.527895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.180506, 40.540760, 22.585060>,  <24.415154, 40.503830, 22.619360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.180506, 40.540760, 22.585060>,  <23.789427, 40.602314, 22.527895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.180506, 40.540760, 22.585060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201306, 0.492850, -0.846507,
		0.059827, 0.856399, 0.512836,
		0.977700, -0.153881, 0.142913,
		24.473816, 40.494595, 22.627934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.101727, 41.216991, 22.389284>,  <23.789427, 40.602314, 22.527895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.101727, 41.216991, 22.389284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382336, 40.940887, 22.318394>,  <24.550701, 40.775227, 22.275860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382336, 40.940887, 22.318394>,  <24.101727, 41.216991, 22.389284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.382336, 40.940887, 22.318394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214121, 0.441352, -0.871413,
		0.679721, 0.573366, 0.457417,
		0.701521, -0.690261, -0.177227,
		24.592793, 40.733810, 22.265226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.581621, 41.639999, 22.197662>,  <24.101727, 41.216991, 22.389284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.581621, 41.639999, 22.197662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732035, 41.288357, 22.080513>,  <24.822283, 41.077374, 22.010223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732035, 41.288357, 22.080513>,  <24.581621, 41.639999, 22.197662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.732035, 41.288357, 22.080513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235967, 0.396500, -0.887191,
		0.896056, 0.264507, 0.356538,
		0.376035, -0.879104, -0.292872,
		24.844845, 41.024624, 21.992651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301292, 41.721386, 21.946375>,  <24.581621, 41.639999, 22.197662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.301292, 41.721386, 21.946375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169495, 41.397545, 21.752068>,  <25.090416, 41.203239, 21.635483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169495, 41.397545, 21.752068>,  <25.301292, 41.721386, 21.946375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.169495, 41.397545, 21.752068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365716, 0.364896, -0.856214,
		0.870450, -0.459773, 0.175853,
		-0.329497, -0.809604, -0.485770,
		25.070646, 41.154663, 21.606337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906925, 41.412281, 21.666285>,  <25.301292, 41.721386, 21.946375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906925, 41.412281, 21.666285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601387, 41.265984, 21.453579>,  <25.418064, 41.178204, 21.325956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601387, 41.265984, 21.453579>,  <25.906925, 41.412281, 21.666285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601387, 41.265984, 21.453579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527554, 0.120806, -0.840888,
		0.371792, -0.922841, 0.100674,
		-0.763844, -0.365746, -0.531763,
		25.372234, 41.156261, 21.294050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182823, 40.818123, 21.293995>,  <25.906925, 41.412281, 21.666285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182823, 40.818123, 21.293995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879234, 40.963356, 21.077797>,  <25.697081, 41.050495, 20.948078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879234, 40.963356, 21.077797>,  <26.182823, 40.818123, 21.293995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879234, 40.963356, 21.077797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613996, 0.122786, -0.779700,
		-0.216733, -0.923630, -0.316124,
		-0.758970, 0.363085, -0.540493,
		25.651543, 41.072281, 20.915649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362530, 40.532505, 20.600643>,  <26.182823, 40.818123, 21.293995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362530, 40.532505, 20.600643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051937, 40.769169, 20.513916>,  <25.865582, 40.911167, 20.461880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051937, 40.769169, 20.513916>,  <26.362530, 40.532505, 20.600643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051937, 40.769169, 20.513916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368385, 0.147062, -0.917968,
		-0.511242, -0.792658, -0.332151,
		-0.776482, 0.591664, -0.216819,
		25.818993, 40.946667, 20.448870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989416, 40.227840, 20.128677>,  <26.362530, 40.532505, 20.600643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989416, 40.227840, 20.128677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901506, 40.614021, 20.072666>,  <25.848761, 40.845730, 20.039061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901506, 40.614021, 20.072666>,  <25.989416, 40.227840, 20.128677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.901506, 40.614021, 20.072666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281195, -0.074751, -0.956735,
		-0.934146, -0.249641, -0.255051,
		-0.219775, 0.965449, -0.140026,
		25.835573, 40.903656, 20.030659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495003, 40.193932, 19.551844>,  <25.989416, 40.227840, 20.128677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495003, 40.193932, 19.551844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652761, 40.557747, 19.604290>,  <25.747416, 40.776035, 19.635757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652761, 40.557747, 19.604290>,  <25.495003, 40.193932, 19.551844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652761, 40.557747, 19.604290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093870, 0.102058, -0.990340,
		-0.914134, 0.402893, -0.045127,
		0.394396, 0.909539, 0.131115,
		25.771080, 40.830608, 19.643625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.119635, 40.684914, 19.211933>,  <25.495003, 40.193932, 19.551844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.119635, 40.684914, 19.211933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482676, 40.850834, 19.237850>,  <25.700500, 40.950386, 19.253401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482676, 40.850834, 19.237850>,  <25.119635, 40.684914, 19.211933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.482676, 40.850834, 19.237850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033080, 0.083196, -0.995984,
		-0.418525, 0.906101, 0.061787,
		0.907603, 0.414800, 0.064794,
		25.754957, 40.975273, 19.257288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.180178, 41.168434, 18.648302>,  <25.119635, 40.684914, 19.211933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.180178, 41.168434, 18.648302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567818, 41.133945, 18.740746>,  <25.800402, 41.113255, 18.796211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567818, 41.133945, 18.740746>,  <25.180178, 41.168434, 18.648302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567818, 41.133945, 18.740746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240304, 0.118568, -0.963429,
		0.055664, 0.989195, 0.135624,
		0.969100, -0.086219, 0.231107,
		25.858547, 41.108078, 18.810078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.585869, 41.614037, 18.222759>,  <25.180178, 41.168434, 18.648302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.585869, 41.614037, 18.222759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859592, 41.338482, 18.318394>,  <26.023827, 41.173149, 18.375774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859592, 41.338482, 18.318394>,  <25.585869, 41.614037, 18.222759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859592, 41.338482, 18.318394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259650, -0.076191, -0.962692,
		0.681398, 0.720858, 0.126730,
		0.684309, -0.688882, 0.239088,
		26.064884, 41.131817, 18.390120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997465, 41.820671, 17.836845>,  <25.585869, 41.614037, 18.222759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997465, 41.820671, 17.836845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134985, 41.454540, 17.920719>,  <26.217497, 41.234859, 17.971045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134985, 41.454540, 17.920719>,  <25.997465, 41.820671, 17.836845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134985, 41.454540, 17.920719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185618, -0.152650, -0.970692,
		0.920514, 0.372647, 0.117421,
		0.343801, -0.915332, 0.209686,
		26.238125, 41.179939, 17.983625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633686, 41.830341, 17.441500>,  <25.997465, 41.820671, 17.836845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633686, 41.830341, 17.441500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528578, 41.450512, 17.509918>,  <26.465513, 41.222614, 17.550968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528578, 41.450512, 17.509918>,  <26.633686, 41.830341, 17.441500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528578, 41.450512, 17.509918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111658, -0.206010, -0.972159,
		0.958376, -0.236355, 0.160161,
		-0.262770, -0.949577, 0.171044,
		26.449747, 41.165638, 17.561232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168333, 41.438946, 17.142057>,  <26.633686, 41.830341, 17.441500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168333, 41.438946, 17.142057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848581, 41.198631, 17.144958>,  <26.656731, 41.054443, 17.146700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848581, 41.198631, 17.144958>,  <27.168333, 41.438946, 17.142057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848581, 41.198631, 17.144958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155288, -0.218253, -0.963458,
		0.580412, -0.769042, 0.267761,
		-0.799380, -0.600783, 0.007253,
		26.608767, 41.018398, 17.147135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356300, 40.841103, 16.733126>,  <27.168333, 41.438946, 17.142057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356300, 40.841103, 16.733126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957804, 40.814644, 16.755489>,  <26.718706, 40.798771, 16.768908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957804, 40.814644, 16.755489>,  <27.356300, 40.841103, 16.733126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957804, 40.814644, 16.755489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054041, -0.029741, -0.998096,
		0.067681, -0.997367, 0.026054,
		-0.996243, -0.066144, 0.055911,
		26.658932, 40.794800, 16.772263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030815, 40.416336, 16.136061>,  <27.356300, 40.841103, 16.733126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030815, 40.416336, 16.136061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753103, 40.664059, 16.282722>,  <26.586475, 40.812691, 16.370720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753103, 40.664059, 16.282722>,  <27.030815, 40.416336, 16.136061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753103, 40.664059, 16.282722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281653, 0.235020, -0.930289,
		-0.662303, -0.749151, 0.011259,
		-0.694281, 0.619304, 0.366655,
		26.544819, 40.849850, 16.392719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518572, 40.151157, 15.944223>,  <27.030815, 40.416336, 16.136061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518572, 40.151157, 15.944223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473452, 40.546490, 15.985160>,  <26.446379, 40.783691, 16.009722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473452, 40.546490, 15.985160>,  <26.518572, 40.151157, 15.944223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473452, 40.546490, 15.985160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263405, 0.069569, -0.962174,
		-0.958068, -0.135492, 0.252484,
		-0.112801, 0.988333, 0.102341,
		26.439611, 40.842991, 16.015862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740461, 40.446159, 15.850738>,  <26.518572, 40.151157, 15.944223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740461, 40.446159, 15.850738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043962, 40.692169, 15.764913>,  <26.226063, 40.839775, 15.713418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043962, 40.692169, 15.764913>,  <25.740461, 40.446159, 15.850738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.043962, 40.692169, 15.764913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302987, 0.041644, -0.952084,
		-0.576620, 0.787408, 0.217941,
		0.758755, 0.615024, -0.214562,
		26.271589, 40.876675, 15.700544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476191, 40.882538, 15.316220>,  <25.740461, 40.446159, 15.850738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476191, 40.882538, 15.316220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873518, 40.923782, 15.295487>,  <26.111914, 40.948528, 15.283048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873518, 40.923782, 15.295487>,  <25.476191, 40.882538, 15.316220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873518, 40.923782, 15.295487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062162, 0.099638, -0.993080,
		-0.097237, 0.989667, 0.105382,
		0.993318, 0.103115, -0.051831,
		26.171513, 40.954716, 15.279938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.966686, 40.703941, 14.710043>,  <25.476191, 40.882538, 15.316220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.966686, 40.703941, 14.710043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707668, 40.999298, 14.634717>,  <24.552258, 41.176514, 14.589521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707668, 40.999298, 14.634717>,  <24.966686, 40.703941, 14.710043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.707668, 40.999298, 14.634717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325857, -0.044925, 0.944351,
		0.688841, 0.672874, 0.269701,
		-0.647546, 0.738392, -0.188315,
		24.513405, 41.220814, 14.578222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.854763, 41.281300, 15.218582>,  <24.966686, 40.703941, 14.710043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.854763, 41.281300, 15.218582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502354, 41.211315, 15.042771>,  <24.290907, 41.169323, 14.937285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502354, 41.211315, 15.042771>,  <24.854763, 41.281300, 15.218582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.502354, 41.211315, 15.042771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446888, 0.003009, 0.894585,
		-0.155195, 0.984571, -0.080839,
		-0.881025, -0.174961, -0.439526,
		24.238047, 41.158829, 14.910913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.348047, 41.913612, 15.391955>,  <24.854763, 41.281300, 15.218582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.348047, 41.913612, 15.391955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.182810, 41.555458, 15.325454>,  <24.083668, 41.340565, 15.285553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.182810, 41.555458, 15.325454>,  <24.348047, 41.913612, 15.391955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.182810, 41.555458, 15.325454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208384, -0.084779, 0.974366,
		-0.886528, 0.437147, -0.151563,
		-0.413091, -0.895386, -0.166253,
		24.058882, 41.286842, 15.275578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.718298, 41.803925, 15.728211>,  <24.348047, 41.913612, 15.391955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.718298, 41.803925, 15.728211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.911024, 41.453812, 15.711501>,  <24.026659, 41.243744, 15.701475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.911024, 41.453812, 15.711501>,  <23.718298, 41.803925, 15.728211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.911024, 41.453812, 15.711501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066510, -0.084066, 0.994238,
		-0.873746, -0.476258, -0.098719,
		0.481813, -0.875277, -0.041776,
		24.055569, 41.191227, 15.698968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.194115, 41.324947, 15.946178>,  <23.718298, 41.803925, 15.728211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.194115, 41.324947, 15.946178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.573446, 41.220455, 16.018211>,  <23.801046, 41.157761, 16.061432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.573446, 41.220455, 16.018211>,  <23.194115, 41.324947, 15.946178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.573446, 41.220455, 16.018211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188929, -0.008938, 0.981950,
		-0.254905, -0.965235, -0.057830,
		0.948330, -0.261229, 0.180082,
		23.857944, 41.142086, 16.072237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.307365, 40.538311, 16.222328>,  <23.194115, 41.324947, 15.946178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.307365, 40.538311, 16.222328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.541227, 40.836281, 16.350864>,  <23.681545, 41.015064, 16.427986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.541227, 40.836281, 16.350864>,  <23.307365, 40.538311, 16.222328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.541227, 40.836281, 16.350864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377539, -0.100762, 0.920495,
		0.718082, -0.659490, 0.222328,
		0.584655, 0.744929, 0.321339,
		23.716623, 41.059761, 16.447266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.630619, 40.297306, 16.752159>,  <23.307365, 40.538311, 16.222328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.630619, 40.297306, 16.752159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.627872, 40.694965, 16.795288>,  <23.626225, 40.933559, 16.821165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.627872, 40.694965, 16.795288>,  <23.630619, 40.297306, 16.752159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.627872, 40.694965, 16.795288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321054, -0.104308, 0.941299,
		0.947036, -0.028151, 0.319891,
		-0.006869, 0.994146, 0.107822,
		23.625813, 40.993210, 16.827635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.985180, 40.410778, 17.435528>,  <23.630619, 40.297306, 16.752159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.985180, 40.410778, 17.435528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.769571, 40.738392, 17.356903>,  <23.640205, 40.934959, 17.309729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.769571, 40.738392, 17.356903>,  <23.985180, 40.410778, 17.435528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.769571, 40.738392, 17.356903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273009, 0.050879, 0.960665,
		0.796820, 0.571482, 0.196179,
		-0.539022, 0.819035, -0.196562,
		23.607864, 40.984104, 17.297935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.039724, 40.895809, 17.965343>,  <23.985180, 40.410778, 17.435528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.039724, 40.895809, 17.965343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.718338, 41.072994, 17.806232>,  <23.525507, 41.179306, 17.710766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.718338, 41.072994, 17.806232>,  <24.039724, 40.895809, 17.965343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.718338, 41.072994, 17.806232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404620, 0.083830, 0.910635,
		0.436721, 0.892613, 0.111876,
		-0.803466, 0.442960, -0.397779,
		23.477299, 41.205883, 17.686899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.930492, 41.469742, 18.335648>,  <24.039724, 40.895809, 17.965343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.930492, 41.469742, 18.335648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.579872, 41.361938, 18.176136>,  <23.369499, 41.297256, 18.080429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.579872, 41.361938, 18.176136>,  <23.930492, 41.469742, 18.335648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.579872, 41.361938, 18.176136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371055, -0.149319, 0.916527,
		-0.306555, 0.951352, 0.030884,
		-0.876551, -0.269506, -0.398779,
		23.316906, 41.281086, 18.056503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.599676, 41.613838, 18.869246>,  <23.930492, 41.469742, 18.335648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.599676, 41.613838, 18.869246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.340765, 41.391602, 18.660496>,  <23.185419, 41.258259, 18.535246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.340765, 41.391602, 18.660496>,  <23.599676, 41.613838, 18.869246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.340765, 41.391602, 18.660496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499803, -0.207582, 0.840897,
		-0.575524, 0.805128, -0.143322,
		-0.647278, -0.555589, -0.521873,
		23.146582, 41.224926, 18.503933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.816021, 41.844860, 18.953970>,  <23.599676, 41.613838, 18.869246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.816021, 41.844860, 18.953970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.806250, 41.458553, 18.850666>,  <22.800386, 41.226768, 18.788683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.806250, 41.458553, 18.850666>,  <22.816021, 41.844860, 18.953970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.806250, 41.458553, 18.850666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694101, -0.169536, 0.699629,
		-0.719463, 0.196350, -0.666198,
		-0.024427, -0.965766, -0.258262,
		22.798922, 41.168823, 18.773188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.119131, 41.626770, 18.964361>,  <22.816021, 41.844860, 18.953970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.119131, 41.626770, 18.964361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.334305, 41.291294, 18.998386>,  <22.463409, 41.090008, 19.018801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.334305, 41.291294, 18.998386>,  <22.119131, 41.626770, 18.964361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.334305, 41.291294, 18.998386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618735, -0.324283, 0.715547,
		-0.572534, -0.437547, -0.693366,
		0.537933, -0.838686, 0.085062,
		22.495686, 41.039688, 19.023905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.678427, 41.181194, 19.275064>,  <22.119131, 41.626770, 18.964361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.678427, 41.181194, 19.275064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.021385, 40.983452, 19.332306>,  <22.227161, 40.864807, 19.366650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.021385, 40.983452, 19.332306>,  <21.678427, 41.181194, 19.275064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.021385, 40.983452, 19.332306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386721, -0.435392, 0.812946,
		-0.339578, -0.752361, -0.564482,
		0.857399, -0.494356, 0.143104,
		22.278605, 40.835144, 19.375237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.497665, 40.540115, 19.374590>,  <21.678427, 41.181194, 19.275064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.497665, 40.540115, 19.374590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.860538, 40.584167, 19.537018>,  <22.078262, 40.610600, 19.634474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.860538, 40.584167, 19.537018>,  <21.497665, 40.540115, 19.374590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.860538, 40.584167, 19.537018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290283, -0.534806, 0.793548,
		0.304559, -0.837768, -0.453199,
		0.907182, 0.110127, 0.406070,
		22.132692, 40.617207, 19.658838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.505188, 39.968071, 19.769363>,  <21.497665, 40.540115, 19.374590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.505188, 39.968071, 19.769363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.827177, 40.173756, 19.887753>,  <22.020370, 40.297169, 19.958786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.827177, 40.173756, 19.887753>,  <21.505188, 39.968071, 19.769363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.827177, 40.173756, 19.887753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100468, -0.373505, 0.922172,
		0.584741, -0.772061, -0.249000,
		0.804975, 0.514215, 0.295971,
		22.068670, 40.328018, 19.976543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.877426, 39.503452, 20.043699>,  <21.505188, 39.968071, 19.769363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.877426, 39.503452, 20.043699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.005587, 39.852013, 20.192295>,  <22.082483, 40.061150, 20.281452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.005587, 39.852013, 20.192295>,  <21.877426, 39.503452, 20.043699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.005587, 39.852013, 20.192295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032230, -0.401967, 0.915087,
		0.946733, -0.281223, -0.156876,
		0.320403, 0.871399, 0.371492,
		22.101707, 40.113434, 20.303743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.369122, 39.313705, 20.537613>,  <21.877426, 39.503452, 20.043699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.369122, 39.313705, 20.537613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.258223, 39.682316, 20.646374>,  <22.191683, 39.903481, 20.711630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.258223, 39.682316, 20.646374>,  <22.369122, 39.313705, 20.537613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.258223, 39.682316, 20.646374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010400, -0.280101, 0.959914,
		0.960742, 0.268961, 0.068073,
		-0.277247, 0.921522, 0.271902,
		22.175049, 39.958771, 20.727945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.756447, 39.419697, 21.019268>,  <22.369122, 39.313705, 20.537613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.756447, 39.419697, 21.019268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.489227, 39.712475, 21.072872>,  <22.328896, 39.888142, 21.105034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.489227, 39.712475, 21.072872>,  <22.756447, 39.419697, 21.019268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.489227, 39.712475, 21.072872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074389, -0.244883, 0.966695,
		0.740388, 0.635832, 0.218043,
		-0.668051, 0.731949, 0.134009,
		22.288813, 39.932060, 21.113075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.020329, 39.809650, 21.596922>,  <22.756447, 39.419697, 21.019268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.020329, 39.809650, 21.596922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.624083, 39.857365, 21.570244>,  <22.386333, 39.885994, 21.554237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.624083, 39.857365, 21.570244>,  <23.020329, 39.809650, 21.596922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.624083, 39.857365, 21.570244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087298, -0.176819, 0.980364,
		0.105150, 0.976988, 0.185574,
		-0.990617, 0.119286, -0.066697,
		22.326897, 39.893150, 21.550234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.900097, 40.166878, 22.185431>,  <23.020329, 39.809650, 21.596922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.900097, 40.166878, 22.185431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.535204, 40.028152, 22.098198>,  <22.316269, 39.944920, 22.045858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.535204, 40.028152, 22.098198>,  <22.900097, 40.166878, 22.185431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.535204, 40.028152, 22.098198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207785, -0.067097, 0.975871,
		-0.353073, 0.935533, -0.010854,
		-0.912231, -0.346809, -0.218080,
		22.261536, 39.924110, 22.032774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.494394, 40.549858, 22.645210>,  <22.900097, 40.166878, 22.185431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.494394, 40.549858, 22.645210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.299564, 40.211098, 22.559864>,  <22.182667, 40.007843, 22.508656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.299564, 40.211098, 22.559864>,  <22.494394, 40.549858, 22.645210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.299564, 40.211098, 22.559864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087192, -0.195931, 0.976734,
		-0.868998, 0.494345, 0.021590,
		-0.487074, -0.846897, -0.213366,
		22.153442, 39.957027, 22.495853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.108761, 40.396965, 23.256399>,  <22.494394, 40.549858, 22.645210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.108761, 40.396965, 23.256399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.082624, 40.046871, 23.064697>,  <22.066942, 39.836815, 22.949677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.082624, 40.046871, 23.064697>,  <22.108761, 40.396965, 23.256399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.082624, 40.046871, 23.064697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014840, -0.479378, 0.877483,
		-0.997753, 0.064446, 0.018334,
		-0.065339, -0.875239, -0.479257,
		22.063023, 39.784298, 22.920919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.594984, 39.933949, 23.653683>,  <22.108761, 40.396965, 23.256399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.594984, 39.933949, 23.653683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.806988, 39.679966, 23.428856>,  <21.934191, 39.527576, 23.293961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.806988, 39.679966, 23.428856>,  <21.594984, 39.933949, 23.653683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.806988, 39.679966, 23.428856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006017, -0.659987, 0.751253,
		-0.847970, -0.401554, -0.345980,
		0.530011, -0.634958, -0.562065,
		21.965990, 39.489479, 23.260237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.305149, 39.322769, 23.837894>,  <21.594984, 39.933949, 23.653683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.305149, 39.322769, 23.837894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.642309, 39.191631, 23.667229>,  <21.844604, 39.112949, 23.564829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.642309, 39.191631, 23.667229>,  <21.305149, 39.322769, 23.837894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.642309, 39.191631, 23.667229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018389, -0.774931, 0.631778,
		-0.537758, -0.540371, -0.647160,
		0.842899, -0.327843, -0.426662,
		21.895178, 39.093277, 23.539230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.333288, 38.471077, 23.851942>,  <21.305149, 39.322769, 23.837894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.333288, 38.471077, 23.851942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.709742, 38.601616, 23.816692>,  <21.935614, 38.679939, 23.795542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.709742, 38.601616, 23.816692>,  <21.333288, 38.471077, 23.851942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.709742, 38.601616, 23.816692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322801, -0.790239, 0.520885,
		0.100351, -0.518668, -0.849066,
		0.941132, 0.326351, -0.088125,
		21.992081, 38.699520, 23.790255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.796377, 37.980785, 23.911777>,  <21.333288, 38.471077, 23.851942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.796377, 37.980785, 23.911777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.874174, 37.905422, 24.296833>,  <20.920853, 37.860203, 24.527866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.874174, 37.905422, 24.296833>,  <20.796377, 37.980785, 23.911777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.874174, 37.905422, 24.296833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972297, -0.092690, -0.214584,
		0.129658, 0.977706, 0.165164,
		0.194491, -0.188411, 0.962639,
		20.932522, 37.848900, 24.585625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.147144, 37.767090, 23.650404>,  <20.796377, 37.980785, 23.911777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.147144, 37.767090, 23.650404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.848808, 37.684170, 23.397186>,  <19.669806, 37.634418, 23.245256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.848808, 37.684170, 23.397186>,  <20.147144, 37.767090, 23.650404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.848808, 37.684170, 23.397186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666039, 0.247139, 0.703786,
		0.010552, 0.946545, -0.322399,
		-0.745842, -0.207304, -0.633044,
		19.625055, 37.621979, 23.207273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.604620, 38.417534, 23.467558>,  <20.147144, 37.767090, 23.650404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.604620, 38.417534, 23.467558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.444172, 38.053959, 23.422073>,  <19.347902, 37.835812, 23.394783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.444172, 38.053959, 23.422073>,  <19.604620, 38.417534, 23.467558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.444172, 38.053959, 23.422073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769584, 0.267061, 0.580016,
		-0.496832, 0.320166, -0.806630,
		-0.401121, -0.908940, -0.113710,
		19.323835, 37.781277, 23.387960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.900816, 38.464073, 23.259329>,  <19.604620, 38.417534, 23.467558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.900816, 38.464073, 23.259329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.952600, 38.129547, 23.472427>,  <18.983671, 37.928833, 23.600286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.952600, 38.129547, 23.472427>,  <18.900816, 38.464073, 23.259329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.952600, 38.129547, 23.472427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698692, 0.304299, 0.647481,
		-0.703611, -0.456050, -0.544930,
		0.129462, -0.836313, 0.532747,
		18.991440, 37.878654, 23.632252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.299345, 38.059498, 23.292507>,  <18.900816, 38.464073, 23.259329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.299345, 38.059498, 23.292507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.519554, 38.025219, 23.624672>,  <18.651680, 38.004650, 23.823971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.519554, 38.025219, 23.624672>,  <18.299345, 38.059498, 23.292507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.519554, 38.025219, 23.624672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823152, 0.110012, 0.557062,
		-0.139096, -0.990229, -0.009981,
		0.550521, -0.085701, 0.830411,
		18.684710, 37.999508, 23.873795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.131514, 37.447002, 23.683077>,  <18.299345, 38.059498, 23.292507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.131514, 37.447002, 23.683077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.252642, 37.747154, 23.918102>,  <18.325319, 37.927246, 24.059116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.252642, 37.747154, 23.918102>,  <18.131514, 37.447002, 23.683077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.252642, 37.747154, 23.918102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909135, 0.042461, 0.414331,
		0.285957, -0.659641, 0.695055,
		0.302822, 0.750380, 0.587561,
		18.343489, 37.972267, 24.094370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.079548, 27.828953, 27.171484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.470469, 27.764992, 27.227070>,  <30.705021, 27.726614, 27.260422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.470469, 27.764992, 27.227070>,  <30.079548, 27.828953, 27.171484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470469, 27.764992, 27.227070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210690, 0.802135, -0.558738,
		-0.022123, 0.575334, 0.817619,
		0.977303, -0.159903, 0.138962,
		30.763659, 27.717020, 27.268759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377579, 28.489231, 27.462282>,  <30.079548, 27.828953, 27.171484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377579, 28.489231, 27.462282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.669294, 28.296082, 27.268387>,  <30.844324, 28.180191, 27.152050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.669294, 28.296082, 27.268387>,  <30.377579, 28.489231, 27.462282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669294, 28.296082, 27.268387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219478, 0.836130, -0.502709,
		0.648050, 0.260230, 0.715760,
		0.729288, -0.482873, -0.484739,
		30.888081, 28.151220, 27.122965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959545, 28.917313, 27.464302>,  <30.377579, 28.489231, 27.462282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959545, 28.917313, 27.464302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.044172, 28.659168, 27.170704>,  <31.094948, 28.504282, 26.994545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.044172, 28.659168, 27.170704>,  <30.959545, 28.917313, 27.464302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044172, 28.659168, 27.170704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228717, 0.762834, -0.604792,
		0.950225, -0.039923, 0.308995,
		0.211567, -0.645361, -0.733995,
		31.107643, 28.465561, 26.950506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559502, 29.156372, 27.228430>,  <30.959545, 28.917313, 27.464302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559502, 29.156372, 27.228430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.395889, 28.943817, 26.931694>,  <31.297722, 28.816284, 26.753653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.395889, 28.943817, 26.931694>,  <31.559502, 29.156372, 27.228430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395889, 28.943817, 26.931694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193074, 0.744152, -0.639500,
		0.891862, -0.404803, -0.201783,
		-0.409029, -0.531387, -0.741838,
		31.273180, 28.784401, 26.709143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054165, 29.314142, 26.769020>,  <31.559502, 29.156372, 27.228430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054165, 29.314142, 26.769020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.746290, 29.182487, 26.550205>,  <31.561565, 29.103495, 26.418917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.746290, 29.182487, 26.550205>,  <32.054165, 29.314142, 26.769020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746290, 29.182487, 26.550205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012839, 0.848708, -0.528705,
		0.638291, -0.413961, -0.649015,
		-0.769688, -0.329135, -0.547038,
		31.515383, 29.083748, 26.386093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287731, 29.245882, 26.078220>,  <32.054165, 29.314142, 26.769020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287731, 29.245882, 26.078220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.889704, 29.281624, 26.061024>,  <31.650887, 29.303068, 26.050707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.889704, 29.281624, 26.061024>,  <32.287731, 29.245882, 26.078220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889704, 29.281624, 26.061024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096399, 0.770199, -0.630477,
		-0.023225, -0.631514, -0.775016,
		-0.995072, 0.089354, -0.042990,
		31.591183, 29.308430, 26.048126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228210, 29.648560, 25.417095>,  <32.287731, 29.245882, 26.078220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228210, 29.648560, 25.417095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.870085, 29.656918, 25.595074>,  <31.655210, 29.661932, 25.701860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.870085, 29.656918, 25.595074>,  <32.228210, 29.648560, 25.417095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870085, 29.656918, 25.595074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235640, 0.825463, -0.512917,
		-0.378006, -0.564069, -0.734124,
		-0.895313, 0.020897, 0.444947,
		31.601490, 29.663187, 25.728558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664558, 29.663805, 24.889359>,  <32.228210, 29.648560, 25.417095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664558, 29.663805, 24.889359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.533653, 29.827991, 25.229809>,  <31.455111, 29.926504, 25.434080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.533653, 29.827991, 25.229809>,  <31.664558, 29.663805, 24.889359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533653, 29.827991, 25.229809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284297, 0.816224, -0.502946,
		-0.901152, -0.406567, -0.150424,
		-0.327261, 0.410466, 0.851128,
		31.435474, 29.951132, 25.485147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115515, 29.991098, 24.672626>,  <31.664558, 29.663805, 24.889359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115515, 29.991098, 24.672626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.217623, 30.169094, 25.015980>,  <31.278887, 30.275890, 25.221992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.217623, 30.169094, 25.015980>,  <31.115515, 29.991098, 24.672626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217623, 30.169094, 25.015980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272246, 0.884957, -0.377801,
		-0.927750, -0.137250, 0.347049,
		0.255270, 0.444987, 0.858384,
		31.294203, 30.302589, 25.273495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616436, 30.444805, 24.800190>,  <31.115515, 29.991098, 24.672626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616436, 30.444805, 24.800190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.908024, 30.598373, 25.026890>,  <31.082977, 30.690514, 25.162910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.908024, 30.598373, 25.026890>,  <30.616436, 30.444805, 24.800190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908024, 30.598373, 25.026890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350997, 0.920436, -0.172046,
		-0.587709, -0.073511, 0.805726,
		0.728972, 0.383920, 0.566750,
		31.126715, 30.713549, 25.196915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303982, 30.846031, 25.247892>,  <30.616436, 30.444805, 24.800190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303982, 30.846031, 25.247892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.685190, 30.966328, 25.233448>,  <30.913916, 31.038506, 25.224781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.685190, 30.966328, 25.233448>,  <30.303982, 30.846031, 25.247892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685190, 30.966328, 25.233448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294870, 0.893857, -0.337746,
		-0.069296, 0.332527, 0.940544,
		0.953022, 0.300743, -0.036111,
		30.971096, 31.056551, 25.222614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298862, 31.564100, 25.449188>,  <30.303982, 30.846031, 25.247892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298862, 31.564100, 25.449188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.666538, 31.529270, 25.295559>,  <30.887144, 31.508373, 25.203382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.666538, 31.529270, 25.295559>,  <30.298862, 31.564100, 25.449188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666538, 31.529270, 25.295559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128047, 0.856180, -0.500559,
		0.372420, 0.509288, 0.775842,
		0.919189, -0.087074, -0.384071,
		30.942295, 31.503147, 25.180338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612364, 32.204350, 25.492044>,  <30.298862, 31.564100, 25.449188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612364, 32.204350, 25.492044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.823776, 32.019192, 25.207401>,  <30.950624, 31.908098, 25.036615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.823776, 32.019192, 25.207401>,  <30.612364, 32.204350, 25.492044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823776, 32.019192, 25.207401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097415, 0.865790, -0.490835,
		0.843306, 0.190101, 0.502690,
		0.528532, -0.462893, -0.711607,
		30.982336, 31.880323, 24.993919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193460, 32.600460, 25.358112>,  <30.612364, 32.204350, 25.492044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193460, 32.600460, 25.358112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.167715, 32.383018, 25.023365>,  <31.152267, 32.252552, 24.822515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.167715, 32.383018, 25.023365>,  <31.193460, 32.600460, 25.358112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167715, 32.383018, 25.023365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184794, 0.817612, -0.545309,
		0.980667, -0.189746, 0.047832,
		-0.064362, -0.543606, -0.836869,
		31.148407, 32.219936, 24.772305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750870, 32.847427, 24.960880>,  <31.193460, 32.600460, 25.358112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750870, 32.847427, 24.960880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.501389, 32.688969, 24.691345>,  <31.351700, 32.593895, 24.529623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.501389, 32.688969, 24.691345>,  <31.750870, 32.847427, 24.960880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501389, 32.688969, 24.691345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099679, 0.814715, -0.571230,
		0.775279, -0.423446, -0.468654,
		-0.623704, -0.396147, -0.673840,
		31.314278, 32.570126, 24.489193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020340, 32.966698, 24.341520>,  <31.750870, 32.847427, 24.960880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020340, 32.966698, 24.341520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.633625, 32.919838, 24.250660>,  <31.401596, 32.891724, 24.196144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.633625, 32.919838, 24.250660>,  <32.020340, 32.966698, 24.341520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633625, 32.919838, 24.250660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050244, 0.784305, -0.618337,
		0.250592, -0.609214, -0.752371,
		-0.966788, -0.117148, -0.227150,
		31.343588, 32.884693, 24.182514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017853, 33.084499, 23.702816>,  <32.020340, 32.966698, 24.341520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017853, 33.084499, 23.702816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.640934, 33.150341, 23.819424>,  <31.414783, 33.189846, 23.889389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.640934, 33.150341, 23.819424>,  <32.017853, 33.084499, 23.702816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640934, 33.150341, 23.819424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020847, 0.840234, -0.541823,
		-0.334131, -0.516635, -0.788318,
		-0.942296, 0.164606, 0.291518,
		31.358246, 33.199722, 23.906879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644989, 33.431343, 23.145922>,  <32.017853, 33.084499, 23.702816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644989, 33.431343, 23.145922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.390066, 33.500263, 23.446362>,  <31.237112, 33.541615, 23.626625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.390066, 33.500263, 23.446362>,  <31.644989, 33.431343, 23.145922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390066, 33.500263, 23.446362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204428, 0.901959, -0.380366,
		-0.742999, -0.395956, -0.539603,
		-0.637308, 0.172302, 0.751099,
		31.198874, 33.551952, 23.671692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254696, 33.899490, 22.855932>,  <31.644989, 33.431343, 23.145922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254696, 33.899490, 22.855932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.127895, 33.952965, 23.231514>,  <31.051815, 33.985050, 23.456863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.127895, 33.952965, 23.231514>,  <31.254696, 33.899490, 22.855932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127895, 33.952965, 23.231514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205827, 0.956724, -0.205706,
		-0.925822, -0.258472, -0.275764,
		-0.316999, 0.133688, 0.938956,
		31.032795, 33.993073, 23.513201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591711, 34.232475, 22.833294>,  <31.254696, 33.899490, 22.855932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591711, 34.232475, 22.833294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.758404, 34.294250, 23.191620>,  <30.858419, 34.331314, 23.406614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.758404, 34.294250, 23.191620>,  <30.591711, 34.232475, 22.833294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758404, 34.294250, 23.191620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043937, 0.980888, -0.189545,
		-0.907967, 0.118349, 0.401983,
		0.416733, 0.154439, 0.895814,
		30.883423, 34.340584, 23.460363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117926, 34.759300, 23.075008>,  <30.591711, 34.232475, 22.833294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117926, 34.759300, 23.075008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.445887, 34.774967, 23.303474>,  <30.642662, 34.784367, 23.440554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.445887, 34.774967, 23.303474>,  <30.117926, 34.759300, 23.075008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445887, 34.774967, 23.303474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026873, 0.999190, -0.029950,
		-0.571874, 0.009207, 0.820290,
		0.819901, 0.039172, 0.571163,
		30.691856, 34.786720, 23.474823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069647, 35.247543, 23.630823>,  <30.117926, 34.759300, 23.075008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069647, 35.247543, 23.630823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.466663, 35.217262, 23.592602>,  <30.704874, 35.199093, 23.569668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.466663, 35.217262, 23.592602>,  <30.069647, 35.247543, 23.630823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466663, 35.217262, 23.592602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072587, 0.996725, -0.035630,
		0.097939, 0.028428, 0.994786,
		0.992542, -0.075698, -0.095555,
		30.764425, 35.194553, 23.563934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831348, 36.036514, 23.491257>,  <30.069647, 35.247543, 23.630823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831348, 36.036514, 23.491257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.450840, 36.135609, 23.564701>,  <29.222536, 36.195065, 23.608768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.450840, 36.135609, 23.564701>,  <29.831348, 36.036514, 23.491257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450840, 36.135609, 23.564701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102312, -0.815288, 0.569946,
		0.290892, 0.523386, 0.800905,
		-0.951270, 0.247735, 0.183612,
		29.165459, 36.209930, 23.619785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816252, 35.886253, 24.177383>,  <29.831348, 36.036514, 23.491257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816252, 35.886253, 24.177383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.436197, 35.923065, 24.058208>,  <29.208164, 35.945152, 23.986704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.436197, 35.923065, 24.058208>,  <29.816252, 35.886253, 24.177383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436197, 35.923065, 24.058208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278257, -0.681496, 0.676858,
		-0.140750, 0.726012, 0.673124,
		-0.950138, 0.092033, -0.297938,
		29.151155, 35.950676, 23.968826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432463, 35.965790, 24.775002>,  <29.816252, 35.886253, 24.177383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432463, 35.965790, 24.775002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.192724, 35.809414, 24.495586>,  <29.048882, 35.715588, 24.327938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.192724, 35.809414, 24.495586>,  <29.432463, 35.965790, 24.775002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192724, 35.809414, 24.495586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187088, -0.780059, 0.597081,
		-0.778321, 0.488546, 0.394385,
		-0.599345, -0.390935, -0.698538,
		29.012920, 35.692135, 24.286026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898796, 35.759323, 25.107109>,  <29.432463, 35.965790, 24.775002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898796, 35.759323, 25.107109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.850817, 35.553898, 24.767258>,  <28.822029, 35.430641, 24.563347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.850817, 35.553898, 24.767258>,  <28.898796, 35.759323, 25.107109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850817, 35.553898, 24.767258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296837, -0.798103, 0.524327,
		-0.947365, 0.315093, -0.056713,
		-0.119949, -0.513564, -0.849626,
		28.814833, 35.399830, 24.512369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312304, 35.400864, 25.260168>,  <28.898796, 35.759323, 25.107109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312304, 35.400864, 25.260168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.480181, 35.184990, 24.968250>,  <28.580906, 35.055466, 24.793100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.480181, 35.184990, 24.968250>,  <28.312304, 35.400864, 25.260168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480181, 35.184990, 24.968250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126429, -0.830952, 0.541788,
		-0.898818, -0.135116, -0.416976,
		0.419692, -0.539687, -0.729792,
		28.606089, 35.023083, 24.749313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908825, 34.857132, 25.260496>,  <28.312304, 35.400864, 25.260168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908825, 34.857132, 25.260496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.229763, 34.714737, 25.068867>,  <28.422325, 34.629299, 24.953888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.229763, 34.714737, 25.068867>,  <27.908825, 34.857132, 25.260496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229763, 34.714737, 25.068867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055227, -0.843496, 0.534288,
		-0.594299, -0.402226, -0.696436,
		0.802346, -0.355989, -0.479075,
		28.470467, 34.607941, 24.925144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667879, 34.160435, 24.881462>,  <27.908825, 34.857132, 25.260496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667879, 34.160435, 24.881462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.059423, 34.181038, 24.960636>,  <28.294350, 34.193398, 25.008141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.059423, 34.181038, 24.960636>,  <27.667879, 34.160435, 24.881462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059423, 34.181038, 24.960636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021645, -0.936251, 0.350664,
		0.203380, -0.347535, -0.915345,
		0.978860, 0.051505, 0.197937,
		28.353081, 34.196491, 25.020018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834890, 33.554253, 24.590115>,  <27.667879, 34.160435, 24.881462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834890, 33.554253, 24.590115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.143175, 33.652275, 24.825386>,  <28.328146, 33.711090, 24.966549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.143175, 33.652275, 24.825386>,  <27.834890, 33.554253, 24.590115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143175, 33.652275, 24.825386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096917, -0.957430, 0.271908,
		0.629772, -0.152558, -0.761652,
		0.770710, 0.245057, 0.588177,
		28.374388, 33.725792, 25.001839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379318, 33.093212, 24.449755>,  <27.834890, 33.554253, 24.590115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379318, 33.093212, 24.449755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.409260, 33.232128, 24.823662>,  <28.427225, 33.315479, 25.048006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.409260, 33.232128, 24.823662>,  <28.379318, 33.093212, 24.449755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409260, 33.232128, 24.823662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042031, -0.937661, 0.344999,
		0.996308, 0.013464, -0.084785,
		0.074854, 0.347289, 0.934766,
		28.431717, 33.336315, 25.104092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964521, 32.804413, 24.756310>,  <28.379318, 33.093212, 24.449755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964521, 32.804413, 24.756310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.750008, 32.913307, 25.075882>,  <28.621300, 32.978645, 25.267626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.750008, 32.913307, 25.075882>,  <28.964521, 32.804413, 24.756310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750008, 32.913307, 25.075882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053623, -0.933654, 0.354141,
		0.842333, 0.232761, 0.486104,
		-0.536283, 0.272238, 0.798929,
		28.589123, 32.994980, 25.315561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299040, 32.383724, 25.337805>,  <28.964521, 32.804413, 24.756310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299040, 32.383724, 25.337805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.962889, 32.530777, 25.497108>,  <28.761198, 32.619011, 25.592691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.962889, 32.530777, 25.497108>,  <29.299040, 32.383724, 25.337805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962889, 32.530777, 25.497108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091796, -0.820721, 0.563906,
		0.534173, 0.437335, 0.723462,
		-0.840377, 0.367635, 0.398261,
		28.710775, 32.641068, 25.616587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360577, 32.319744, 26.097652>,  <29.299040, 32.383724, 25.337805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360577, 32.319744, 26.097652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.967077, 32.350582, 26.032784>,  <28.730978, 32.369083, 25.993862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.967077, 32.350582, 26.032784>,  <29.360577, 32.319744, 26.097652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967077, 32.350582, 26.032784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146046, -0.868962, 0.472839,
		-0.104466, 0.488838, 0.866097,
		-0.983747, 0.077094, -0.162170,
		28.671953, 32.373711, 25.984133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071203, 32.226673, 26.761444>,  <29.360577, 32.319744, 26.097652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071203, 32.226673, 26.761444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.816374, 32.110310, 26.475925>,  <28.663477, 32.040493, 26.304613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.816374, 32.110310, 26.475925>,  <29.071203, 32.226673, 26.761444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816374, 32.110310, 26.475925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257209, -0.792735, 0.552643,
		-0.726622, 0.535670, 0.430206,
		-0.637074, -0.290910, -0.713798,
		28.625252, 32.023037, 26.261786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562267, 32.029358, 27.118387>,  <29.071203, 32.226673, 26.761444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562267, 32.029358, 27.118387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.485439, 31.868965, 26.760098>,  <28.439342, 31.772730, 26.545124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.485439, 31.868965, 26.760098>,  <28.562267, 32.029358, 27.118387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485439, 31.868965, 26.760098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218991, -0.872194, 0.437403,
		-0.956636, 0.280168, 0.079712,
		-0.192070, -0.400979, -0.895726,
		28.427818, 31.748671, 26.491381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906599, 31.743040, 27.186998>,  <28.562267, 32.029358, 27.118387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906599, 31.743040, 27.186998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.100222, 31.558846, 26.889370>,  <28.216396, 31.448328, 26.710793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.100222, 31.558846, 26.889370>,  <27.906599, 31.743040, 27.186998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100222, 31.558846, 26.889370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147434, -0.881093, 0.449375,
		-0.862525, -0.107823, -0.494393,
		0.484059, -0.460488, -0.744069,
		28.245440, 31.420700, 26.666149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469778, 31.218542, 27.028891>,  <27.906599, 31.743040, 27.186998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469778, 31.218542, 27.028891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.822807, 31.097729, 26.884758>,  <28.034624, 31.025240, 26.798279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.822807, 31.097729, 26.884758>,  <27.469778, 31.218542, 27.028891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822807, 31.097729, 26.884758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065790, -0.838173, 0.541421,
		-0.465549, -0.454138, -0.759620,
		0.882573, -0.302033, -0.360333,
		28.087580, 31.007118, 26.776657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466795, 30.433249, 26.930077>,  <27.469778, 31.218542, 27.028891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466795, 30.433249, 26.930077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.856443, 30.515984, 26.893616>,  <28.090233, 30.565624, 26.871740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.856443, 30.515984, 26.893616>,  <27.466795, 30.433249, 26.930077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856443, 30.515984, 26.893616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226002, -0.885028, 0.407001,
		0.003512, -0.417068, -0.908869,
		0.974121, 0.206835, -0.091150,
		28.148680, 30.578033, 26.866270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751703, 29.918825, 26.612709>,  <27.466795, 30.433249, 26.930077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751703, 29.918825, 26.612709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.063578, 30.097313, 26.788425>,  <28.250702, 30.204405, 26.893854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.063578, 30.097313, 26.788425>,  <27.751703, 29.918825, 26.612709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063578, 30.097313, 26.788425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154407, -0.816898, 0.555730,
		0.606832, -0.365467, -0.705825,
		0.779688, 0.446219, 0.439289,
		28.297483, 30.231178, 26.920212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.397587, 29.547253, 26.548231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.498741, 29.745613, 26.880527>,  <28.559435, 29.864630, 27.079906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.498741, 29.745613, 26.880527>,  <28.397587, 29.547253, 26.548231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498741, 29.745613, 26.880527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156557, -0.868310, 0.470667,
		0.954745, 0.011033, -0.297221,
		0.252887, 0.495899, 0.830742,
		28.574608, 29.894382, 27.129749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096872, 29.318932, 26.728310>,  <28.397587, 29.547253, 26.548231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096872, 29.318932, 26.728310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.926872, 29.462685, 27.060627>,  <28.824873, 29.548937, 27.260017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.926872, 29.462685, 27.060627>,  <29.096872, 29.318932, 26.728310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926872, 29.462685, 27.060627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294105, -0.813191, 0.502218,
		0.856082, 0.457784, 0.239910,
		-0.425000, 0.359381, 0.830795,
		28.799372, 29.570499, 27.309866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587738, 29.077391, 27.318743>,  <29.096872, 29.318932, 26.728310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587738, 29.077391, 27.318743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.240776, 29.178646, 27.490105>,  <29.032598, 29.239399, 27.592922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.240776, 29.178646, 27.490105>,  <29.587738, 29.077391, 27.318743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240776, 29.178646, 27.490105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158341, -0.675770, 0.719905,
		0.471740, 0.692282, 0.546083,
		-0.867404, 0.253141, 0.428405,
		28.980555, 29.254589, 27.618626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722124, 29.030819, 28.113529>,  <29.587738, 29.077391, 27.318743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722124, 29.030819, 28.113529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.325386, 29.030235, 28.062561>,  <29.087343, 29.029886, 28.031981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.325386, 29.030235, 28.062561>,  <29.722124, 29.030819, 28.113529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325386, 29.030235, 28.062561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097262, -0.637399, 0.764371,
		-0.082333, 0.770532, 0.632061,
		-0.991847, -0.001458, -0.127422,
		29.027832, 29.029799, 28.024334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533361, 29.108051, 28.725971>,  <29.722124, 29.030819, 28.113529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533361, 29.108051, 28.725971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.220760, 28.945583, 28.536537>,  <29.033199, 28.848103, 28.422876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.220760, 28.945583, 28.536537>,  <29.533361, 29.108051, 28.725971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220760, 28.945583, 28.536537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160196, -0.602986, 0.781502,
		-0.602986, 0.686611, 0.406168,
		-0.781502, -0.406168, -0.473585,
		28.986309, 28.823732, 28.394463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095362, 29.123247, 29.299616>,  <29.533361, 29.108051, 28.725971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095362, 29.123247, 29.299616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.953911, 28.873466, 29.021046>,  <28.869041, 28.723598, 28.853903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.953911, 28.873466, 29.021046>,  <29.095362, 29.123247, 29.299616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953911, 28.873466, 29.021046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257298, -0.650873, 0.714256,
		-0.899304, 0.431768, 0.069494,
		-0.353625, -0.624452, -0.696425,
		28.847824, 28.686131, 28.812119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339619, 28.964046, 29.514662>,  <29.095362, 29.123247, 29.299616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339619, 28.964046, 29.514662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.470673, 28.674938, 29.271267>,  <28.549305, 28.501472, 29.125229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.470673, 28.674938, 29.271267>,  <28.339619, 28.964046, 29.514662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470673, 28.674938, 29.271267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240890, -0.686655, 0.685913,
		-0.913581, -0.078149, -0.399078,
		0.327632, -0.722771, -0.608490,
		28.568962, 28.458107, 29.088720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830173, 28.512205, 29.591927>,  <28.339619, 28.964046, 29.514662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830173, 28.512205, 29.591927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.122152, 28.292393, 29.429352>,  <28.297340, 28.160505, 29.331806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.122152, 28.292393, 29.429352>,  <27.830173, 28.512205, 29.591927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122152, 28.292393, 29.429352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302462, -0.792949, 0.528912,
		-0.612939, -0.263146, -0.745023,
		0.729947, -0.549532, -0.406438,
		28.341137, 28.127533, 29.307421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512638, 27.886265, 29.397621>,  <27.830173, 28.512205, 29.591927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512638, 27.886265, 29.397621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.901329, 27.798885, 29.433449>,  <28.134544, 27.746458, 29.454947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.901329, 27.798885, 29.433449>,  <27.512638, 27.886265, 29.397621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901329, 27.798885, 29.433449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233262, -0.829660, 0.507202,
		-0.036484, -0.513757, -0.857160,
		0.971729, -0.218448, 0.089571,
		28.192848, 27.733351, 29.460320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572540, 27.198843, 29.318151>,  <27.512638, 27.886265, 29.397621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572540, 27.198843, 29.318151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.909927, 27.294590, 29.510513>,  <28.112360, 27.352037, 29.625931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.909927, 27.294590, 29.510513>,  <27.572540, 27.198843, 29.318151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909927, 27.294590, 29.510513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199036, -0.692256, 0.693662,
		0.498948, -0.680797, -0.536251,
		0.843466, 0.239368, 0.480903,
		28.162968, 27.366400, 29.654785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822361, 26.566944, 29.454081>,  <27.572540, 27.198843, 29.318151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822361, 26.566944, 29.454081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.992437, 26.814472, 29.718285>,  <28.094482, 26.962990, 29.876808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.992437, 26.814472, 29.718285>,  <27.822361, 26.566944, 29.454081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992437, 26.814472, 29.718285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024367, -0.721672, 0.691806,
		0.904776, -0.310243, -0.291769,
		0.425190, 0.618820, 0.660511,
		28.119995, 27.000118, 29.916437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329174, 26.225235, 29.841875>,  <27.822361, 26.566944, 29.454081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329174, 26.225235, 29.841875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.269323, 26.535965, 30.086548>,  <28.233414, 26.722403, 30.233353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.269323, 26.535965, 30.086548>,  <28.329174, 26.225235, 29.841875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269323, 26.535965, 30.086548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130919, -0.597635, 0.791008,
		0.980037, 0.198436, -0.012280,
		-0.149626, 0.776824, 0.611683,
		28.224436, 26.769012, 30.270052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823223, 26.218075, 30.411983>,  <28.329174, 26.225235, 29.841875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823223, 26.218075, 30.411983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.534481, 26.457039, 30.551712>,  <28.361237, 26.600418, 30.635550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.534481, 26.457039, 30.551712>,  <28.823223, 26.218075, 30.411983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534481, 26.457039, 30.551712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070771, -0.438396, 0.895991,
		0.688417, 0.671497, 0.274179,
		-0.721854, 0.597412, 0.349322,
		28.317924, 26.636263, 30.656509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098711, 26.369238, 31.058290>,  <28.823223, 26.218075, 30.411983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098711, 26.369238, 31.058290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.704594, 26.425209, 31.097519>,  <28.468122, 26.458792, 31.121056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.704594, 26.425209, 31.097519>,  <29.098711, 26.369238, 31.058290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704594, 26.425209, 31.097519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027052, -0.438965, 0.898097,
		0.168719, 0.887541, 0.428724,
		-0.985293, 0.139928, 0.098071,
		28.409006, 26.467188, 31.126940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101164, 26.691212, 31.637489>,  <29.098711, 26.369238, 31.058290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101164, 26.691212, 31.637489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.719973, 26.587059, 31.575478>,  <28.491259, 26.524567, 31.538271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.719973, 26.587059, 31.575478>,  <29.101164, 26.691212, 31.637489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719973, 26.587059, 31.575478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064076, -0.326882, 0.942890,
		-0.296189, 0.908487, 0.294827,
		-0.952978, -0.260383, -0.155031,
		28.434080, 26.508944, 31.528969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754974, 26.875374, 32.279495>,  <29.101164, 26.691212, 31.637489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754974, 26.875374, 32.279495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.546631, 26.597553, 32.080978>,  <28.421625, 26.430861, 31.961868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.546631, 26.597553, 32.080978>,  <28.754974, 26.875374, 32.279495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546631, 26.597553, 32.080978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152856, -0.496103, 0.854703,
		-0.839847, 0.521040, 0.152232,
		-0.520857, -0.694550, -0.496294,
		28.390373, 26.389189, 31.932091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392824, 26.499987, 32.808716>,  <28.754974, 26.875374, 32.279495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392824, 26.499987, 32.808716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.301584, 26.271435, 32.493374>,  <28.246840, 26.134304, 32.304169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.301584, 26.271435, 32.493374>,  <28.392824, 26.499987, 32.808716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301584, 26.271435, 32.493374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295469, -0.730890, 0.615222,
		-0.927722, 0.373267, -0.002108,
		-0.228101, -0.571378, -0.788351,
		28.233154, 26.100021, 32.256870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662418, 26.451754, 32.894245>,  <28.392824, 26.499987, 32.808716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662418, 26.451754, 32.894245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.840231, 26.143929, 32.710869>,  <27.946918, 25.959234, 32.600842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.840231, 26.143929, 32.710869>,  <27.662418, 26.451754, 32.894245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840231, 26.143929, 32.710869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364128, -0.622837, 0.692448,
		-0.818416, -0.140883, -0.557088,
		0.444529, -0.769562, -0.458441,
		27.973591, 25.913059, 32.573338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158783, 25.966347, 32.770565>,  <27.662418, 26.451754, 32.894245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158783, 25.966347, 32.770565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.515377, 25.785229, 32.764538>,  <27.729334, 25.676558, 32.760921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.515377, 25.785229, 32.764538>,  <27.158783, 25.966347, 32.770565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515377, 25.785229, 32.764538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282571, -0.581718, 0.762731,
		-0.354125, -0.675707, -0.646541,
		0.891487, -0.452796, -0.015066,
		27.782824, 25.649389, 32.760017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007378, 25.217205, 33.010941>,  <27.158783, 25.966347, 32.770565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007378, 25.217205, 33.010941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.404835, 25.261204, 33.020496>,  <27.643309, 25.287603, 33.026230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.404835, 25.261204, 33.020496>,  <27.007378, 25.217205, 33.010941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404835, 25.261204, 33.020496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055406, -0.662690, 0.746842,
		0.097982, -0.740772, -0.664573,
		0.993645, 0.109998, 0.023889,
		27.702929, 25.294203, 33.027664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234373, 24.530697, 33.104717>,  <27.007378, 25.217205, 33.010941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234373, 24.530697, 33.104717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.532866, 24.772888, 33.215374>,  <27.711962, 24.918203, 33.281769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.532866, 24.772888, 33.215374>,  <27.234373, 24.530697, 33.104717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532866, 24.772888, 33.215374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171946, -0.576795, 0.798588,
		0.643094, -0.548365, -0.534533,
		0.746233, 0.605478, 0.276644,
		27.756735, 24.954531, 33.298367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770630, 24.073997, 33.212658>,  <27.234373, 24.530697, 33.104717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770630, 24.073997, 33.212658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.834850, 24.412296, 33.416199>,  <27.873383, 24.615276, 33.538322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.834850, 24.412296, 33.416199>,  <27.770630, 24.073997, 33.212658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834850, 24.412296, 33.416199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332838, -0.531736, 0.778765,
		0.929215, 0.044333, -0.366869,
		0.160553, 0.845749, 0.508853,
		27.883017, 24.666021, 33.568855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278227, 24.079170, 33.673435>,  <27.770630, 24.073997, 33.212658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278227, 24.079170, 33.673435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.507801, 24.287319, 33.926357>,  <28.645546, 24.412209, 34.078110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.507801, 24.287319, 33.926357>,  <28.278227, 24.079170, 33.673435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507801, 24.287319, 33.926357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780670, -0.114518, -0.614362,
		-0.247288, 0.846225, -0.471966,
		0.573937, 0.520374, 0.632303,
		28.679981, 24.443432, 34.116047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635490, 24.627007, 33.306789>,  <28.278227, 24.079170, 33.673435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635490, 24.627007, 33.306789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.816853, 24.496952, 33.638744>,  <28.925671, 24.418919, 33.837917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.816853, 24.496952, 33.638744>,  <28.635490, 24.627007, 33.306789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816853, 24.496952, 33.638744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858490, -0.091006, -0.504691,
		0.239618, 0.941278, 0.237864,
		0.453408, -0.325137, 0.829884,
		28.952875, 24.399410, 33.887711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081966, 25.054394, 33.744755>,  <28.635490, 24.627007, 33.306789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081966, 25.054394, 33.744755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.198639, 24.672932, 33.774311>,  <29.268642, 24.444054, 33.792046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.198639, 24.672932, 33.774311>,  <29.081966, 25.054394, 33.744755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198639, 24.672932, 33.774311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872309, 0.233516, -0.429589,
		0.392425, 0.189763, 0.899996,
		0.291683, -0.953656, 0.073894,
		29.286144, 24.386835, 33.796478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675867, 25.151968, 33.988724>,  <29.081966, 25.054394, 33.744755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675867, 25.151968, 33.988724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.665152, 24.800247, 33.798519>,  <29.658722, 24.589214, 33.684399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.665152, 24.800247, 33.798519>,  <29.675867, 25.151968, 33.988724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665152, 24.800247, 33.798519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882594, 0.202546, -0.424267,
		0.469372, -0.431045, 0.770643,
		-0.026787, -0.879304, -0.475507,
		29.657116, 24.536455, 33.655869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379496, 24.950367, 33.900188>,  <29.675867, 25.151968, 33.988724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379496, 24.950367, 33.900188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.206285, 24.712715, 33.629044>,  <30.102360, 24.570124, 33.466358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.206285, 24.712715, 33.629044>,  <30.379496, 24.950367, 33.900188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206285, 24.712715, 33.629044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720509, 0.223733, -0.656362,
		0.541626, -0.772626, 0.331196,
		-0.433023, -0.594132, -0.677863,
		30.076378, 24.534475, 33.425686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901653, 24.529533, 33.625183>,  <30.379496, 24.950367, 33.900188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901653, 24.529533, 33.625183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.614828, 24.541367, 33.346630>,  <30.442734, 24.548466, 33.179497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.614828, 24.541367, 33.346630>,  <30.901653, 24.529533, 33.625183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614828, 24.541367, 33.346630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688563, 0.185141, -0.701144,
		0.108187, -0.982266, -0.153127,
		-0.717061, 0.029583, -0.696383,
		30.399710, 24.550241, 33.137714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267752, 24.279236, 33.076275>,  <30.901653, 24.529533, 33.625183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267752, 24.279236, 33.076275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.934208, 24.456108, 32.944122>,  <30.734081, 24.562231, 32.864830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.934208, 24.456108, 32.944122>,  <31.267752, 24.279236, 33.076275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934208, 24.456108, 32.944122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500077, 0.351803, -0.791301,
		-0.233669, -0.825051, -0.514480,
		-0.833860, 0.442182, -0.330384,
		30.684050, 24.588762, 32.845009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330280, 24.282665, 32.287624>,  <31.267752, 24.279236, 33.076275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330280, 24.282665, 32.287624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.056797, 24.564785, 32.362560>,  <30.892706, 24.734056, 32.407520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.056797, 24.564785, 32.362560>,  <31.330280, 24.282665, 32.287624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056797, 24.564785, 32.362560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315427, 0.517115, -0.795675,
		-0.658062, -0.484920, -0.576027,
		-0.683710, 0.705298, 0.187337,
		30.851685, 24.776375, 32.418762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121420, 24.505980, 31.586338>,  <31.330280, 24.282665, 32.287624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121420, 24.505980, 31.586338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.995274, 24.791267, 31.836735>,  <30.919586, 24.962440, 31.986973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.995274, 24.791267, 31.836735>,  <31.121420, 24.505980, 31.586338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995274, 24.791267, 31.836735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144718, 0.688082, -0.711055,
		-0.937870, -0.133652, -0.320214,
		-0.315368, 0.713218, 0.625990,
		30.900663, 25.005232, 32.024532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602903, 24.892487, 31.222157>,  <31.121420, 24.505980, 31.586338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602903, 24.892487, 31.222157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.728559, 25.144722, 31.506035>,  <30.803953, 25.296064, 31.676363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.728559, 25.144722, 31.506035>,  <30.602903, 24.892487, 31.222157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728559, 25.144722, 31.506035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014682, 0.744225, -0.667768,
		-0.949263, 0.220193, 0.224532,
		0.314140, 0.630591, 0.709698,
		30.822802, 25.333899, 31.718945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275331, 25.483320, 30.991810>,  <30.602903, 24.892487, 31.222157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275331, 25.483320, 30.991810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.582121, 25.583698, 31.228039>,  <30.766195, 25.643925, 31.369776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.582121, 25.583698, 31.228039>,  <30.275331, 25.483320, 30.991810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582121, 25.583698, 31.228039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276404, 0.701395, -0.656998,
		-0.579096, 0.667137, 0.468589,
		0.766974, 0.250945, 0.590574,
		30.812214, 25.658981, 31.405210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156197, 26.130484, 31.237736>,  <30.275331, 25.483320, 30.991810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156197, 26.130484, 31.237736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.552969, 26.088764, 31.208904>,  <30.791033, 26.063732, 31.191607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.552969, 26.088764, 31.208904>,  <30.156197, 26.130484, 31.237736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552969, 26.088764, 31.208904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022740, 0.705669, -0.708176,
		0.124724, 0.700823, 0.702347,
		0.991931, -0.104298, -0.072077,
		30.850548, 26.057474, 31.187281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333075, 26.754362, 31.092459>,  <30.156197, 26.130484, 31.237736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333075, 26.754362, 31.092459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.678715, 26.566444, 31.020206>,  <30.886099, 26.453693, 30.976854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.678715, 26.566444, 31.020206>,  <30.333075, 26.754362, 31.092459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678715, 26.566444, 31.020206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186992, 0.632835, -0.751368,
		0.467299, 0.615479, 0.634679,
		0.864098, -0.469793, -0.180633,
		30.937944, 26.425507, 30.966017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835474, 27.289654, 30.911671>,  <30.333075, 26.754362, 31.092459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835474, 27.289654, 30.911671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.968473, 26.940353, 30.769192>,  <31.048273, 26.730774, 30.683704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.968473, 26.940353, 30.769192>,  <30.835474, 27.289654, 30.911671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968473, 26.940353, 30.769192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080866, 0.402694, -0.911756,
		0.939631, 0.274354, 0.204511,
		0.332499, -0.873251, -0.356198,
		31.068224, 26.678377, 30.662333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269241, 27.535530, 30.365992>,  <30.835474, 27.289654, 30.911671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269241, 27.535530, 30.365992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.228334, 27.147690, 30.277069>,  <31.203791, 26.914986, 30.223715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.228334, 27.147690, 30.277069>,  <31.269241, 27.535530, 30.365992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228334, 27.147690, 30.277069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024935, 0.220910, -0.974975,
		0.994445, -0.105249, 0.001585,
		-0.102265, -0.969599, -0.222307,
		31.197655, 26.856810, 30.210377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602013, 27.490110, 29.863371>,  <31.269241, 27.535530, 30.365992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602013, 27.490110, 29.863371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405382, 27.143780, 29.826069>,  <31.287403, 26.935982, 29.803688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405382, 27.143780, 29.826069>,  <31.602013, 27.490110, 29.863371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405382, 27.143780, 29.826069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007422, 0.102917, -0.994662,
		0.870803, -0.489644, -0.044166,
		-0.491576, -0.865827, -0.093255,
		31.257910, 26.884031, 29.798092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937124, 27.025064, 29.334879>,  <31.602013, 27.490110, 29.863371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937124, 27.025064, 29.334879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.547783, 26.935070, 29.352615>,  <31.314178, 26.881073, 29.363256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.547783, 26.935070, 29.352615>,  <31.937124, 27.025064, 29.334879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547783, 26.935070, 29.352615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083477, 0.167544, -0.982324,
		0.213587, -0.959848, -0.181860,
		-0.973351, -0.224992, 0.044340,
		31.255777, 26.867575, 29.365917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832436, 26.562635, 28.788616>,  <31.937124, 27.025064, 29.334879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832436, 26.562635, 28.788616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.457748, 26.670441, 28.877991>,  <31.232937, 26.735125, 28.931616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.457748, 26.670441, 28.877991>,  <31.832436, 26.562635, 28.788616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457748, 26.670441, 28.877991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223981, 0.029139, -0.974158,
		-0.269060, -0.962555, 0.033071,
		-0.936717, 0.269514, 0.223434,
		31.176733, 26.751295, 28.945021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460890, 26.093256, 28.415731>,  <31.832436, 26.562635, 28.788616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460890, 26.093256, 28.415731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.222616, 26.408779, 28.476311>,  <31.079651, 26.598093, 28.512659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.222616, 26.408779, 28.476311>,  <31.460890, 26.093256, 28.415731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222616, 26.408779, 28.476311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101344, 0.113236, -0.988386,
		-0.796798, -0.604116, 0.012488,
		-0.595686, 0.788810, 0.151450,
		31.043911, 26.645422, 28.521746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956865, 26.104757, 27.877369>,  <31.460890, 26.093256, 28.415731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956865, 26.104757, 27.877369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955336, 26.483810, 28.005104>,  <30.954418, 26.711243, 28.081745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955336, 26.483810, 28.005104>,  <30.956865, 26.104757, 27.877369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955336, 26.483810, 28.005104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229640, 0.309973, -0.922595,
		-0.973268, -0.076859, 0.216430,
		-0.003822, 0.947633, 0.319337,
		30.954189, 26.768101, 28.100904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554585, 26.379791, 27.348234>,  <30.956865, 26.104757, 27.877369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554585, 26.379791, 27.348234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.695005, 26.698231, 27.545410>,  <30.779259, 26.889294, 27.663715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.695005, 26.698231, 27.545410>,  <30.554585, 26.379791, 27.348234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695005, 26.698231, 27.545410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020876, 0.532969, -0.845877,
		-0.936122, 0.286658, 0.203721,
		0.351054, 0.796097, 0.492940,
		30.800322, 26.937059, 27.693293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101501, 27.069336, 27.164694>,  <30.554585, 26.379791, 27.348234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101501, 27.069336, 27.164694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.445385, 27.196827, 27.324348>,  <30.651714, 27.273321, 27.420141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.445385, 27.196827, 27.324348>,  <30.101501, 27.069336, 27.164694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445385, 27.196827, 27.324348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002614, 0.778668, -0.627431,
		-0.510777, 0.540451, 0.668595,
		0.859709, 0.318730, 0.399138,
		30.703299, 27.292446, 27.444090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.373251, 40.663612, 16.905674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.767193, 40.684151, 16.839436>,  <26.003559, 40.696472, 16.799692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.767193, 40.684151, 16.839436>,  <25.373251, 40.663612, 16.905674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767193, 40.684151, 16.839436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173346, -0.274320, 0.945886,
		0.003142, -0.960267, -0.279066,
		0.984856, 0.051347, -0.165597,
		26.062649, 40.699554, 16.789757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.637205, 40.156712, 17.245358>,  <25.373251, 40.663612, 16.905674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.637205, 40.156712, 17.245358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.945967, 40.410507, 17.229385>,  <26.131224, 40.562782, 17.219803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.945967, 40.410507, 17.229385>,  <25.637205, 40.156712, 17.245358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.945967, 40.410507, 17.229385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101345, -0.060804, 0.992992,
		0.627610, -0.770540, -0.111236,
		0.771903, 0.634485, -0.039929,
		26.177538, 40.600853, 17.217407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133255, 39.901127, 17.776516>,  <25.637205, 40.156712, 17.245358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.133255, 39.901127, 17.776516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.230858, 40.283951, 17.713917>,  <26.289419, 40.513645, 17.676357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.230858, 40.283951, 17.713917>,  <26.133255, 39.901127, 17.776516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230858, 40.283951, 17.713917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177319, 0.114623, 0.977456,
		0.953424, -0.266257, -0.141736,
		0.244008, 0.957063, -0.156497,
		26.304060, 40.571068, 17.666967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616299, 40.017803, 18.206995>,  <26.133255, 39.901127, 17.776516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616299, 40.017803, 18.206995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.546312, 40.407913, 18.152988>,  <26.504320, 40.641979, 18.120584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.546312, 40.407913, 18.152988>,  <26.616299, 40.017803, 18.206995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546312, 40.407913, 18.152988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092184, 0.152759, 0.983955,
		0.980250, 0.159710, -0.116632,
		-0.174964, 0.975273, -0.135019,
		26.493824, 40.700497, 18.112482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092539, 40.473633, 18.575722>,  <26.616299, 40.017803, 18.206995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092539, 40.473633, 18.575722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.735031, 40.649441, 18.539948>,  <26.520527, 40.754925, 18.518482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.735031, 40.649441, 18.539948>,  <27.092539, 40.473633, 18.575722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735031, 40.649441, 18.539948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021730, 0.241597, 0.970133,
		0.447998, 0.865133, -0.225483,
		-0.893770, 0.439518, -0.089436,
		26.466900, 40.781296, 18.513117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107212, 40.994350, 19.188307>,  <27.092539, 40.473633, 18.575722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107212, 40.994350, 19.188307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.733625, 41.052273, 19.057621>,  <26.509474, 41.087025, 18.979210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.733625, 41.052273, 19.057621>,  <27.107212, 40.994350, 19.188307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733625, 41.052273, 19.057621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254646, 0.371769, 0.892717,
		0.250729, 0.916963, -0.310346,
		-0.933965, 0.144802, -0.326714,
		26.453436, 41.095715, 18.959606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838894, 41.667973, 19.333511>,  <27.107212, 40.994350, 19.188307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838894, 41.667973, 19.333511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.508471, 41.442749, 19.323792>,  <26.310217, 41.307613, 19.317959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.508471, 41.442749, 19.323792>,  <26.838894, 41.667973, 19.333511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508471, 41.442749, 19.323792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181036, 0.224267, 0.957565,
		-0.533717, 0.795404, -0.287192,
		-0.826058, -0.563061, -0.024301,
		26.260653, 41.273830, 19.316502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.224434, 42.062599, 19.669836>,  <26.838894, 41.667973, 19.333511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.224434, 42.062599, 19.669836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.083179, 41.688385, 19.673294>,  <25.998426, 41.463856, 19.675369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.083179, 41.688385, 19.673294>,  <26.224434, 42.062599, 19.669836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083179, 41.688385, 19.673294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427703, 0.169648, 0.887857,
		-0.832084, 0.309838, -0.460039,
		-0.353137, -0.935532, 0.008643,
		25.977238, 41.407726, 19.675886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.537834, 42.152939, 19.997164>,  <26.224434, 42.062599, 19.669836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.537834, 42.152939, 19.997164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.631258, 41.764549, 20.017822>,  <25.687311, 41.531517, 20.030218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.631258, 41.764549, 20.017822>,  <25.537834, 42.152939, 19.997164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631258, 41.764549, 20.017822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416666, -0.051950, 0.907574,
		-0.878544, -0.233491, -0.416704,
		0.233559, -0.970970, 0.051647,
		25.701326, 41.473259, 20.033316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.985630, 41.882713, 20.150515>,  <25.537834, 42.152939, 19.997164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.985630, 41.882713, 20.150515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.241367, 41.585411, 20.229317>,  <25.394810, 41.407028, 20.276598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.241367, 41.585411, 20.229317>,  <24.985630, 41.882713, 20.150515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.241367, 41.585411, 20.229317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462849, -0.167409, 0.870485,
		-0.614012, -0.647724, -0.451047,
		0.639344, -0.743255, 0.197007,
		25.433170, 41.362434, 20.288420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.530508, 41.298473, 20.279446>,  <24.985630, 41.882713, 20.150515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.530508, 41.298473, 20.279446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.887728, 41.251373, 20.453156>,  <25.102060, 41.223114, 20.557381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.887728, 41.251373, 20.453156>,  <24.530508, 41.298473, 20.279446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.887728, 41.251373, 20.453156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449511, -0.276330, 0.849460,
		0.019981, -0.953822, -0.299707,
		0.893051, -0.117749, 0.434274,
		25.155643, 41.216049, 20.583437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.481766, 40.639290, 20.554441>,  <24.530508, 41.298473, 20.279446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.481766, 40.639290, 20.554441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.770428, 40.786713, 20.788837>,  <24.943624, 40.875164, 20.929476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.770428, 40.786713, 20.788837>,  <24.481766, 40.639290, 20.554441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.770428, 40.786713, 20.788837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440177, -0.409030, 0.799336,
		0.534286, -0.834783, -0.132950,
		0.721653, 0.368553, 0.585991,
		24.986923, 40.897278, 20.964634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.755426, 40.091393, 20.979874>,  <24.481766, 40.639290, 20.554441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.755426, 40.091393, 20.979874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.842903, 40.430607, 21.172955>,  <24.895390, 40.634136, 21.288803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.842903, 40.430607, 21.172955>,  <24.755426, 40.091393, 20.979874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.842903, 40.430607, 21.172955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165577, -0.455255, 0.874830,
		0.961643, -0.271244, 0.040855,
		0.218693, 0.848039, 0.482704,
		24.908510, 40.685017, 21.317766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124298, 39.784893, 21.517303>,  <24.755426, 40.091393, 20.979874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124298, 39.784893, 21.517303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.037642, 40.151859, 21.650822>,  <24.985647, 40.372040, 21.730932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.037642, 40.151859, 21.650822>,  <25.124298, 39.784893, 21.517303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.037642, 40.151859, 21.650822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213178, -0.378122, 0.900877,
		0.952691, 0.124010, 0.277490,
		-0.216643, 0.917412, 0.333798,
		24.972649, 40.427082, 21.750961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.517107, 39.885094, 22.150229>,  <25.124298, 39.784893, 21.517303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.517107, 39.885094, 22.150229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.212133, 40.143909, 22.152740>,  <25.029150, 40.299198, 22.154247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.212133, 40.143909, 22.152740>,  <25.517107, 39.885094, 22.150229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.212133, 40.143909, 22.152740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251247, -0.304975, 0.918621,
		0.596297, 0.698810, 0.395090,
		-0.762434, 0.647036, 0.006282,
		24.983404, 40.338020, 22.154625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.744213, 40.198284, 22.791519>,  <25.517107, 39.885094, 22.150229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.744213, 40.198284, 22.791519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.370522, 40.328850, 22.734005>,  <25.146307, 40.407188, 22.699497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.370522, 40.328850, 22.734005>,  <25.744213, 40.198284, 22.791519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.370522, 40.328850, 22.734005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156611, -0.013213, 0.987572,
		0.320458, 0.945134, 0.063464,
		-0.934227, 0.326415, -0.143784,
		25.090254, 40.426773, 22.690870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.586020, 40.781151, 23.320963>,  <25.744213, 40.198284, 22.791519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.586020, 40.781151, 23.320963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.253742, 40.594425, 23.199615>,  <25.054375, 40.482391, 23.126806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.253742, 40.594425, 23.199615>,  <25.586020, 40.781151, 23.320963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253742, 40.594425, 23.199615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236413, -0.197564, 0.951355,
		-0.504038, 0.862007, 0.053756,
		-0.830695, -0.466811, -0.303370,
		25.004534, 40.454384, 23.108604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.008663, 41.118801, 23.754845>,  <25.586020, 40.781151, 23.320963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.008663, 41.118801, 23.754845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.894234, 40.754021, 23.637199>,  <24.825575, 40.535152, 23.566612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.894234, 40.754021, 23.637199>,  <25.008663, 41.118801, 23.754845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.894234, 40.754021, 23.637199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451642, -0.142377, 0.880766,
		-0.845092, 0.384799, -0.371146,
		-0.286075, -0.911953, -0.294113,
		24.808411, 40.480434, 23.548965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.374531, 40.938183, 24.252728>,  <25.008663, 41.118801, 23.754845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.374531, 40.938183, 24.252728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.485470, 40.594604, 24.080547>,  <24.552034, 40.388458, 23.977240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.485470, 40.594604, 24.080547>,  <24.374531, 40.938183, 24.252728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.485470, 40.594604, 24.080547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359268, -0.508243, 0.782698,
		-0.891069, -0.062435, -0.449553,
		0.277349, -0.858948, -0.430449,
		24.568674, 40.336922, 23.951412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.824139, 40.520290, 24.398588>,  <24.374531, 40.938183, 24.252728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.824139, 40.520290, 24.398588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.120975, 40.275059, 24.290192>,  <24.299078, 40.127922, 24.225155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.120975, 40.275059, 24.290192>,  <23.824139, 40.520290, 24.398588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.120975, 40.275059, 24.290192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274371, -0.646691, 0.711696,
		-0.611568, -0.453796, -0.648116,
		0.742095, -0.613075, -0.270987,
		24.343603, 40.091137, 24.208895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.576208, 39.790962, 24.206062>,  <23.824139, 40.520290, 24.398588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.576208, 39.790962, 24.206062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.953236, 39.785233, 24.339546>,  <24.179451, 39.781796, 24.419636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.953236, 39.785233, 24.339546>,  <23.576208, 39.790962, 24.206062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.953236, 39.785233, 24.339546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233456, -0.742781, 0.627514,
		0.238882, -0.669381, -0.703466,
		0.942568, -0.014327, 0.333708,
		24.236006, 39.780933, 24.439659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.843098, 39.331306, 24.341307>,  <23.576208, 39.790962, 24.206062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.843098, 39.331306, 24.341307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.730024, 38.988220, 24.169533>,  <22.662180, 38.782368, 24.066467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.730024, 38.988220, 24.169533>,  <22.843098, 39.331306, 24.341307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.730024, 38.988220, 24.169533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381084, 0.511271, -0.770310,
		0.880265, -0.054102, -0.471388,
		-0.282682, -0.857715, -0.429436,
		22.645220, 38.730907, 24.040703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.179880, 39.185204, 23.665773>,  <22.843098, 39.331306, 24.341307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.179880, 39.185204, 23.665773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.827166, 38.996544, 23.665867>,  <22.615536, 38.883350, 23.665922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.827166, 38.996544, 23.665867>,  <23.179880, 39.185204, 23.665773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.827166, 38.996544, 23.665867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323764, 0.604952, -0.727468,
		0.342965, -0.641549, -0.686142,
		-0.881789, -0.471644, 0.000233,
		22.562630, 38.855049, 23.665937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.036888, 38.977169, 22.939678>,  <23.179880, 39.185204, 23.665773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.036888, 38.977169, 22.939678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.679337, 38.966110, 23.118660>,  <22.464806, 38.959476, 23.226049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.679337, 38.966110, 23.118660>,  <23.036888, 38.977169, 22.939678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.679337, 38.966110, 23.118660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435476, 0.290610, -0.852001,
		-0.106481, -0.956442, -0.271809,
		-0.893881, -0.027644, 0.447452,
		22.411173, 38.957817, 23.252895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.594679, 38.553707, 22.576118>,  <23.036888, 38.977169, 22.939678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.594679, 38.553707, 22.576118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.401918, 38.830814, 22.790722>,  <22.286263, 38.997078, 22.919485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.401918, 38.830814, 22.790722>,  <22.594679, 38.553707, 22.576118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.401918, 38.830814, 22.790722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346282, 0.411882, -0.842877,
		-0.804898, -0.591967, 0.041407,
		-0.481901, 0.692768, 0.536511,
		22.257349, 39.038643, 22.951675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.994267, 38.590443, 22.271425>,  <22.594679, 38.553707, 22.576118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.994267, 38.590443, 22.271425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.019020, 38.939629, 22.464966>,  <22.033873, 39.149139, 22.581089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.019020, 38.939629, 22.464966>,  <21.994267, 38.590443, 22.271425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.019020, 38.939629, 22.464966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339376, 0.474297, -0.812321,
		-0.938613, -0.113938, 0.325612,
		0.061883, 0.872961, 0.483850,
		22.037584, 39.201515, 22.610121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.425701, 38.947285, 22.144972>,  <21.994267, 38.590443, 22.271425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.425701, 38.947285, 22.144972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.661322, 39.250282, 22.257557>,  <21.802694, 39.432083, 22.325108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.661322, 39.250282, 22.257557>,  <21.425701, 38.947285, 22.144972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.661322, 39.250282, 22.257557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220151, 0.485555, -0.846032,
		-0.777531, 0.436391, 0.452780,
		0.589050, 0.757496, 0.281462,
		21.838036, 39.477531, 22.341995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.067375, 39.432991, 21.768036>,  <21.425701, 38.947285, 22.144972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.067375, 39.432991, 21.768036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.423613, 39.595463, 21.849880>,  <21.637354, 39.692944, 21.898987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.423613, 39.595463, 21.849880>,  <21.067375, 39.432991, 21.768036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.423613, 39.595463, 21.849880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004012, 0.442858, -0.896583,
		-0.454786, 0.799310, 0.392776,
		0.890592, 0.406178, 0.204613,
		21.690790, 39.717316, 21.911264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.065542, 40.145954, 21.534035>,  <21.067375, 39.432991, 21.768036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.065542, 40.145954, 21.534035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.458803, 40.073082, 21.528126>,  <21.694759, 40.029358, 21.524580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.458803, 40.073082, 21.528126>,  <21.065542, 40.145954, 21.534035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.458803, 40.073082, 21.528126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057772, 0.386415, -0.920514,
		0.173409, 0.904154, 0.390430,
		0.983154, -0.182182, -0.014773,
		21.753750, 40.018429, 21.523693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.320312, 40.784901, 21.277929>,  <21.065542, 40.145954, 21.534035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.320312, 40.784901, 21.277929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.619713, 40.521023, 21.250969>,  <21.799353, 40.362694, 21.234793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.619713, 40.521023, 21.250969>,  <21.320312, 40.784901, 21.277929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.619713, 40.521023, 21.250969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243370, 0.367830, -0.897481,
		0.616859, 0.655363, 0.435872,
		0.748503, -0.659697, -0.067403,
		21.844263, 40.323112, 21.230747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.850969, 41.191235, 21.088442>,  <21.320312, 40.784901, 21.277929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.850969, 41.191235, 21.088442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.935452, 40.816608, 20.976559>,  <21.986141, 40.591831, 20.909428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.935452, 40.816608, 20.976559>,  <21.850969, 41.191235, 21.088442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.935452, 40.816608, 20.976559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244057, 0.327632, -0.912740,
		0.946482, 0.124511, 0.297773,
		0.211206, -0.936565, -0.279710,
		21.998814, 40.535641, 20.892645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.414457, 41.298862, 20.746603>,  <21.850969, 41.191235, 21.088442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.414457, 41.298862, 20.746603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.337286, 40.924473, 20.628799>,  <22.290983, 40.699841, 20.558117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.337286, 40.924473, 20.628799>,  <22.414457, 41.298862, 20.746603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.337286, 40.924473, 20.628799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409073, 0.196094, -0.891183,
		0.891873, -0.292411, 0.345049,
		-0.192930, -0.935972, -0.294508,
		22.279408, 40.643681, 20.540447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.002909, 41.118038, 20.411219>,  <22.414457, 41.298862, 20.746603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.002909, 41.118038, 20.411219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.717241, 40.862698, 20.296349>,  <22.545841, 40.709492, 20.227427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.717241, 40.862698, 20.296349>,  <23.002909, 41.118038, 20.411219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.717241, 40.862698, 20.296349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311116, 0.078029, -0.947163,
		0.627030, -0.765780, 0.142876,
		-0.714171, -0.638351, -0.287173,
		22.502991, 40.671192, 20.210197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.391850, 40.613308, 20.145924>,  <23.002909, 41.118038, 20.411219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.391850, 40.613308, 20.145924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.018726, 40.612888, 20.001774>,  <22.794853, 40.612637, 19.915283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.018726, 40.612888, 20.001774>,  <23.391850, 40.613308, 20.145924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.018726, 40.612888, 20.001774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359536, 0.065535, -0.930827,
		0.024595, -0.997850, -0.060754,
		-0.932808, -0.001051, -0.360374,
		22.738884, 40.612572, 19.893661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.420847, 40.338650, 19.570671>,  <23.391850, 40.613308, 20.145924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.420847, 40.338650, 19.570671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.049427, 40.470100, 19.501614>,  <22.826576, 40.548969, 19.460178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.049427, 40.470100, 19.501614>,  <23.420847, 40.338650, 19.570671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.049427, 40.470100, 19.501614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255918, 0.229816, -0.938984,
		-0.268897, -0.916074, -0.297496,
		-0.928548, 0.328624, -0.172643,
		22.770863, 40.568687, 19.449821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.257113, 39.990398, 19.008026>,  <23.420847, 40.338650, 19.570671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.257113, 39.990398, 19.008026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.044003, 40.328381, 19.026783>,  <22.916138, 40.531170, 19.038036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.044003, 40.328381, 19.026783>,  <23.257113, 39.990398, 19.008026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.044003, 40.328381, 19.026783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305172, 0.243513, -0.920636,
		-0.789318, -0.476180, -0.387595,
		-0.532773, 0.844958, 0.046892,
		22.884171, 40.581867, 19.040850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.770041, 39.936356, 18.460920>,  <23.257113, 39.990398, 19.008026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.770041, 39.936356, 18.460920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.789467, 40.324631, 18.555077>,  <22.801123, 40.557594, 18.611570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.789467, 40.324631, 18.555077>,  <22.770041, 39.936356, 18.460920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.789467, 40.324631, 18.555077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277924, 0.213228, -0.936639,
		-0.959375, 0.110910, -0.259421,
		0.048567, 0.970687, 0.235390,
		22.804037, 40.615837, 18.625694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.442270, 40.329113, 17.887413>,  <22.770041, 39.936356, 18.460920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.442270, 40.329113, 17.887413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.636705, 40.618298, 18.083797>,  <22.753366, 40.791809, 18.201628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.636705, 40.618298, 18.083797>,  <22.442270, 40.329113, 17.887413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.636705, 40.618298, 18.083797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290131, 0.396430, -0.871015,
		-0.824344, 0.565833, -0.017054,
		0.486088, 0.722963, 0.490961,
		22.782532, 40.835186, 18.231085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.141487, 40.941650, 17.512796>,  <22.442270, 40.329113, 17.887413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.141487, 40.941650, 17.512796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.490028, 41.042412, 17.681217>,  <22.699154, 41.102867, 17.782270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.490028, 41.042412, 17.681217>,  <22.141487, 40.941650, 17.512796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.490028, 41.042412, 17.681217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346051, 0.292846, -0.891342,
		-0.347835, 0.922381, 0.168001,
		0.871355, 0.251903, 0.421053,
		22.751434, 41.117981, 17.807533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.384462, 41.427570, 17.055746>,  <22.141487, 40.941650, 17.512796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.384462, 41.427570, 17.055746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.718048, 41.379696, 17.271217>,  <22.918200, 41.350971, 17.400501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.718048, 41.379696, 17.271217>,  <22.384462, 41.427570, 17.055746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.718048, 41.379696, 17.271217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550870, 0.237747, -0.800012,
		-0.032317, 0.963925, 0.264206,
		0.833965, -0.119689, 0.538680,
		22.968237, 41.343788, 17.432821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.926964, 42.074467, 17.078045>,  <22.384462, 41.427570, 17.055746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.926964, 42.074467, 17.078045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.136084, 41.740658, 17.147625>,  <23.261555, 41.540375, 17.189373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.136084, 41.740658, 17.147625>,  <22.926964, 42.074467, 17.078045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.136084, 41.740658, 17.147625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553906, 0.177445, -0.813451,
		0.647975, 0.521621, 0.555013,
		0.522797, -0.834521, 0.173949,
		23.292923, 41.490303, 17.199810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.733522, 42.255825, 17.086859>,  <22.926964, 42.074467, 17.078045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.733522, 42.255825, 17.086859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.679041, 41.869461, 16.998802>,  <23.646353, 41.637642, 16.945969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.679041, 41.869461, 16.998802>,  <23.733522, 42.255825, 17.086859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.679041, 41.869461, 16.998802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656358, 0.078463, -0.750358,
		0.742053, -0.246692, 0.623298,
		-0.136201, -0.965912, -0.220142,
		23.638180, 41.579689, 16.932760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.396971, 32.483543, 25.772402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789410, 32.436134, 25.833591>,  <28.024872, 32.407688, 25.870306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789410, 32.436134, 25.833591>,  <27.396971, 32.483543, 25.772402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789410, 32.436134, 25.833591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181013, 0.841633, -0.508810,
		-0.068442, 0.526883, 0.847178,
		0.981096, -0.118526, 0.152976,
		28.083738, 32.400578, 25.879484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626951, 33.095028, 26.118286>,  <27.396971, 32.483543, 25.772402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626951, 33.095028, 26.118286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944632, 32.929413, 25.940380>,  <28.135239, 32.830044, 25.833637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944632, 32.929413, 25.940380>,  <27.626951, 33.095028, 26.118286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944632, 32.929413, 25.940380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262729, 0.893958, -0.363059,
		0.547923, 0.171489, 0.818762,
		0.794200, -0.414041, -0.444766,
		28.182892, 32.805199, 25.806950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200804, 33.618301, 26.376772>,  <27.626951, 33.095028, 26.118286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200804, 33.618301, 26.376772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284502, 33.405788, 26.048393>,  <28.334721, 33.278278, 25.851366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284502, 33.405788, 26.048393>,  <28.200804, 33.618301, 26.376772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284502, 33.405788, 26.048393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367026, 0.820823, -0.437655,
		0.906370, -0.209730, 0.366750,
		0.209248, -0.531284, -0.820946,
		28.347277, 33.246403, 25.802109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790668, 33.813637, 26.279331>,  <28.200804, 33.618301, 26.376772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790668, 33.813637, 26.279331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670965, 33.682499, 25.920898>,  <28.599144, 33.603817, 25.705839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670965, 33.682499, 25.920898>,  <28.790668, 33.813637, 26.279331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670965, 33.682499, 25.920898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433510, 0.789883, -0.433768,
		0.850009, -0.518268, -0.094253,
		-0.299257, -0.327847, -0.896081,
		28.581188, 33.584145, 25.652075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350813, 33.948074, 25.788708>,  <28.790668, 33.813637, 26.279331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350813, 33.948074, 25.788708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029140, 33.913696, 25.553452>,  <28.836138, 33.893070, 25.412298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029140, 33.913696, 25.553452>,  <29.350813, 33.948074, 25.788708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029140, 33.913696, 25.553452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302052, 0.793112, -0.528903,
		0.511917, -0.602982, -0.611844,
		-0.804180, -0.085946, -0.588140,
		28.787886, 33.887913, 25.377010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616945, 33.964439, 25.117361>,  <29.350813, 33.948074, 25.788708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616945, 33.964439, 25.117361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232286, 34.071381, 25.092823>,  <29.001492, 34.135544, 25.078100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232286, 34.071381, 25.092823>,  <29.616945, 33.964439, 25.117361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232286, 34.071381, 25.092823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231377, 0.670503, -0.704904,
		-0.147322, -0.692062, -0.706645,
		-0.961645, 0.267349, -0.061347,
		28.943792, 34.151585, 25.074419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596781, 34.255337, 24.436565>,  <29.616945, 33.964439, 25.117361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596781, 34.255337, 24.436565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229248, 34.355106, 24.558899>,  <29.008728, 34.414970, 24.632299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229248, 34.355106, 24.558899>,  <29.596781, 34.255337, 24.436565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229248, 34.355106, 24.558899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010999, 0.758464, -0.651622,
		-0.394496, -0.602095, -0.694157,
		-0.918832, 0.249428, 0.305833,
		28.953598, 34.429935, 24.650648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181656, 34.368763, 23.778112>,  <29.596781, 34.255337, 24.436565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181656, 34.368763, 23.778112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991467, 34.564384, 24.070618>,  <28.877354, 34.681759, 24.246120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991467, 34.564384, 24.070618>,  <29.181656, 34.368763, 23.778112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991467, 34.564384, 24.070618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161094, 0.768779, -0.618892,
		-0.864855, -0.412069, -0.286750,
		-0.475473, 0.489058, 0.731264,
		28.848824, 34.711102, 24.289997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701338, 34.700668, 23.430149>,  <29.181656, 34.368763, 23.778112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701338, 34.700668, 23.430149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732975, 34.911343, 23.768700>,  <28.751957, 35.037746, 23.971830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732975, 34.911343, 23.768700>,  <28.701338, 34.700668, 23.430149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732975, 34.911343, 23.768700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129542, 0.836405, -0.532583,
		-0.988414, 0.151765, -0.002072,
		0.079095, 0.526682, 0.846375,
		28.756704, 35.069347, 24.022612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255995, 35.279720, 23.336784>,  <28.701338, 34.700668, 23.430149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255995, 35.279720, 23.336784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472811, 35.407207, 23.647812>,  <28.602900, 35.483700, 23.834429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472811, 35.407207, 23.647812>,  <28.255995, 35.279720, 23.336784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472811, 35.407207, 23.647812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066070, 0.906259, -0.417528,
		-0.837752, 0.277690, 0.470170,
		0.542039, 0.318721, 0.777567,
		28.635422, 35.502823, 23.881083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885912, 35.895454, 23.582529>,  <28.255995, 35.279720, 23.336784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885912, 35.895454, 23.582529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269991, 35.916325, 23.692291>,  <28.500439, 35.928844, 23.758148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269991, 35.916325, 23.692291>,  <27.885912, 35.895454, 23.582529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269991, 35.916325, 23.692291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031057, 0.956369, -0.290506,
		-0.277589, 0.287465, 0.916683,
		0.960198, 0.052172, 0.274406,
		28.558050, 35.931976, 23.774612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947540, 36.511658, 23.904438>,  <27.885912, 35.895454, 23.582529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947540, 36.511658, 23.904438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318672, 36.409657, 23.795547>,  <28.541351, 36.348454, 23.730213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318672, 36.409657, 23.795547>,  <27.947540, 36.511658, 23.904438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318672, 36.409657, 23.795547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115377, 0.890225, -0.440667,
		0.354716, 0.377454, 0.855398,
		0.927828, -0.255005, -0.272227,
		28.597021, 36.333157, 23.713879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483549, 37.053116, 24.088499>,  <27.947540, 36.511658, 23.904438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483549, 37.053116, 24.088499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598495, 36.851761, 23.762550>,  <28.667463, 36.730946, 23.566980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598495, 36.851761, 23.762550>,  <28.483549, 37.053116, 24.088499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598495, 36.851761, 23.762550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094546, 0.861510, -0.498860,
		0.953143, 0.066312, 0.295161,
		0.287365, -0.503391, -0.814874,
		28.684706, 36.700745, 23.518087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077196, 37.415413, 23.847715>,  <28.483549, 37.053116, 24.088499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077196, 37.415413, 23.847715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900085, 37.257179, 23.525856>,  <28.793819, 37.162239, 23.332741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900085, 37.257179, 23.525856>,  <29.077196, 37.415413, 23.847715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900085, 37.257179, 23.525856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097410, 0.870877, -0.481751,
		0.891326, -0.291688, -0.347068,
		-0.442775, -0.395589, -0.804649,
		28.767252, 37.138504, 23.284462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106483, 37.742275, 24.569597>,  <29.077196, 37.415413, 23.847715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106483, 37.742275, 24.569597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966022, 38.027977, 24.811764>,  <28.881746, 38.199398, 24.957064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966022, 38.027977, 24.811764>,  <29.106483, 37.742275, 24.569597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966022, 38.027977, 24.811764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833648, -0.055883, 0.549462,
		0.426290, 0.697647, -0.575817,
		-0.351152, 0.714259, 0.605415,
		28.860678, 38.242256, 24.993387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728760, 37.996143, 24.776897>,  <29.106483, 37.742275, 24.569597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728760, 37.996143, 24.776897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467657, 38.132767, 25.047379>,  <29.310995, 38.214741, 25.209667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467657, 38.132767, 25.047379>,  <29.728760, 37.996143, 24.776897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467657, 38.132767, 25.047379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697317, -0.077944, 0.712513,
		0.296067, 0.936625, -0.187293,
		-0.652759, 0.341554, 0.676201,
		29.271830, 38.235233, 25.250238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154831, 38.398029, 25.263847>,  <29.728760, 37.996143, 24.776897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154831, 38.398029, 25.263847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814234, 38.297947, 25.448177>,  <29.609877, 38.237900, 25.558775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814234, 38.297947, 25.448177>,  <30.154831, 38.398029, 25.263847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814234, 38.297947, 25.448177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492468, -0.079730, 0.866671,
		-0.180103, 0.964905, 0.191106,
		-0.851492, -0.250203, 0.460825,
		29.558786, 38.222885, 25.586426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199560, 38.700493, 25.911718>,  <30.154831, 38.398029, 25.263847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199560, 38.700493, 25.911718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912867, 38.428040, 25.971512>,  <29.740850, 38.264568, 26.007387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912867, 38.428040, 25.971512>,  <30.199560, 38.700493, 25.911718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912867, 38.428040, 25.971512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508301, -0.363537, 0.780686,
		-0.477412, 0.635526, 0.606782,
		-0.716734, -0.681137, 0.149482,
		29.697847, 38.223698, 26.016356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115063, 38.649437, 26.674610>,  <30.199560, 38.700493, 25.911718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115063, 38.649437, 26.674610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968298, 38.296337, 26.557220>,  <29.880239, 38.084476, 26.486788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968298, 38.296337, 26.557220>,  <30.115063, 38.649437, 26.674610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968298, 38.296337, 26.557220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443060, -0.443223, 0.779263,
		-0.817970, 0.155893, 0.553735,
		-0.366910, -0.882752, -0.293473,
		29.858225, 38.031513, 26.469179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860012, 38.319225, 27.352129>,  <30.115063, 38.649437, 26.674610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860012, 38.319225, 27.352129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877169, 38.029110, 27.077286>,  <29.887463, 37.855042, 26.912380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877169, 38.029110, 27.077286>,  <29.860012, 38.319225, 27.352129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877169, 38.029110, 27.077286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444718, -0.601991, 0.663199,
		-0.894643, -0.334016, 0.296727,
		0.042892, -0.725286, -0.687110,
		29.890036, 37.811523, 26.871153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811838, 37.808674, 27.806734>,  <29.860012, 38.319225, 27.352129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811838, 37.808674, 27.806734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941521, 37.648228, 27.464039>,  <30.019331, 37.551960, 27.258423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941521, 37.648228, 27.464039>,  <29.811838, 37.808674, 27.806734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941521, 37.648228, 27.464039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438446, -0.738794, 0.511810,
		-0.838245, -0.541566, -0.063656,
		0.324207, -0.401112, -0.856737,
		30.038782, 37.527893, 27.207018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734329, 37.035091, 27.835987>,  <29.811838, 37.808674, 27.806734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734329, 37.035091, 27.835987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008722, 37.095299, 27.551235>,  <30.173359, 37.131424, 27.380384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008722, 37.095299, 27.551235>,  <29.734329, 37.035091, 27.835987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008722, 37.095299, 27.551235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482459, -0.826461, 0.290165,
		-0.544667, -0.542501, -0.639555,
		0.685982, 0.150516, -0.711880,
		30.214518, 37.140453, 27.337671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002028, 36.336323, 27.439476>,  <29.734329, 37.035091, 27.835987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002028, 36.336323, 27.439476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302364, 36.591511, 27.371094>,  <30.482567, 36.744625, 27.330065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302364, 36.591511, 27.371094>,  <30.002028, 36.336323, 27.439476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302364, 36.591511, 27.371094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657192, -0.747440, 0.097117,
		-0.065820, -0.185270, -0.980481,
		0.750843, 0.637972, -0.170954,
		30.527617, 36.782902, 27.319807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311949, 36.058315, 26.830975>,  <30.002028, 36.336323, 27.439476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311949, 36.058315, 26.830975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594133, 36.301704, 26.976349>,  <30.763443, 36.447739, 27.063574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594133, 36.301704, 26.976349>,  <30.311949, 36.058315, 26.830975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594133, 36.301704, 26.976349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627984, -0.774359, 0.077482,
		0.328575, 0.173571, -0.928392,
		0.705461, 0.608474, 0.363435,
		30.805771, 36.484245, 27.085379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914364, 35.837742, 26.493990>,  <30.311949, 36.058315, 26.830975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914364, 35.837742, 26.493990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040730, 36.041607, 26.814102>,  <31.116549, 36.163925, 27.006168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040730, 36.041607, 26.814102>,  <30.914364, 35.837742, 26.493990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040730, 36.041607, 26.814102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555160, -0.783305, 0.279698,
		0.769413, 0.355923, -0.530398,
		0.315913, 0.509659, 0.800279,
		31.135504, 36.194504, 27.054186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675407, 35.715302, 26.473625>,  <30.914364, 35.837742, 26.493990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675407, 35.715302, 26.473625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587837, 35.843941, 26.842113>,  <31.535295, 35.921124, 27.063206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587837, 35.843941, 26.842113>,  <31.675407, 35.715302, 26.473625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587837, 35.843941, 26.842113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555548, -0.735071, 0.388635,
		0.802146, 0.596865, -0.017737,
		-0.218925, 0.321596, 0.921221,
		31.522160, 35.940418, 27.118481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243252, 35.543316, 26.841261>,  <31.675407, 35.715302, 26.473625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243252, 35.543316, 26.841261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988405, 35.615082, 27.141102>,  <31.835499, 35.658142, 27.321007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988405, 35.615082, 27.141102>,  <32.243252, 35.543316, 26.841261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988405, 35.615082, 27.141102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402872, -0.751593, 0.522304,
		0.657102, 0.634759, 0.406569,
		-0.637112, 0.179411, 0.749600,
		31.797272, 35.668903, 27.365982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580971, 35.621235, 27.480646>,  <32.243252, 35.543316, 26.841261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580971, 35.621235, 27.480646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215870, 35.472965, 27.549335>,  <31.996811, 35.384003, 27.590549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215870, 35.472965, 27.549335>,  <32.580971, 35.621235, 27.480646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215870, 35.472965, 27.549335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408426, -0.818951, 0.403122,
		-0.008792, 0.438087, 0.898890,
		-0.912749, -0.370674, 0.171725,
		31.942045, 35.361763, 27.600853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070568, 35.998489, 27.936848>,  <32.580971, 35.621235, 27.480646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070568, 35.998489, 27.936848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433247, 35.870880, 28.047215>,  <33.650852, 35.794315, 28.113436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433247, 35.870880, 28.047215>,  <33.070568, 35.998489, 27.936848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433247, 35.870880, 28.047215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416169, 0.570177, -0.708309,
		0.068647, 0.757047, 0.649744,
		0.906692, -0.319027, 0.275918,
		33.705254, 35.775173, 28.129990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500771, 36.590542, 27.825481>,  <33.070568, 35.998489, 27.936848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500771, 36.590542, 27.825481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752453, 36.279846, 27.836582>,  <33.903461, 36.093430, 27.843243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752453, 36.279846, 27.836582>,  <33.500771, 36.590542, 27.825481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752453, 36.279846, 27.836582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526832, 0.399967, -0.749983,
		0.571443, 0.486515, 0.660875,
		0.629206, -0.776743, 0.027753,
		33.941216, 36.046822, 27.844908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194664, 36.821709, 27.756561>,  <33.500771, 36.590542, 27.825481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194664, 36.821709, 27.756561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242725, 36.440414, 27.645630>,  <34.271561, 36.211639, 27.579071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242725, 36.440414, 27.645630>,  <34.194664, 36.821709, 27.756561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242725, 36.440414, 27.645630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690347, 0.280977, -0.666689,
		0.713432, -0.111349, 0.691821,
		0.120151, -0.953233, -0.277327,
		34.278770, 36.154446, 27.562431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778004, 36.833286, 27.526356>,  <34.194664, 36.821709, 27.756561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778004, 36.833286, 27.526356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662708, 36.484550, 27.367958>,  <34.593529, 36.275311, 27.272919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662708, 36.484550, 27.367958>,  <34.778004, 36.833286, 27.526356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662708, 36.484550, 27.367958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665978, 0.114622, -0.737113,
		0.688034, -0.476191, 0.547587,
		-0.288241, -0.871840, -0.395996,
		34.576237, 36.223000, 27.249159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447948, 36.543278, 27.280783>,  <34.778004, 36.833286, 27.526356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447948, 36.543278, 27.280783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138958, 36.352833, 27.112686>,  <34.953564, 36.238564, 27.011829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138958, 36.352833, 27.112686>,  <35.447948, 36.543278, 27.280783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138958, 36.352833, 27.112686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509295, -0.069164, -0.857808,
		0.379351, -0.876658, 0.295911,
		-0.772471, -0.476116, -0.420240,
		34.907215, 36.209999, 26.986614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714336, 35.893341, 27.002220>,  <35.447948, 36.543278, 27.280783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714336, 35.893341, 27.002220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383400, 35.983135, 26.796261>,  <35.184837, 36.037014, 26.672686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383400, 35.983135, 26.796261>,  <35.714336, 35.893341, 27.002220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383400, 35.983135, 26.796261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529228, 0.004352, -0.848469,
		-0.188231, -0.974467, -0.122407,
		-0.827337, 0.224490, -0.514896,
		35.135201, 36.050484, 26.641792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640923, 35.399700, 26.403521>,  <35.714336, 35.893341, 27.002220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640923, 35.399700, 26.403521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409790, 35.711376, 26.306381>,  <35.271111, 35.898380, 26.248096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409790, 35.711376, 26.306381>,  <35.640923, 35.399700, 26.403521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409790, 35.711376, 26.306381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374253, -0.011460, -0.927256,
		-0.725289, -0.626686, -0.284992,
		-0.577832, 0.779188, -0.242850,
		35.236439, 35.945133, 26.233526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284721, 35.222061, 25.754436>,  <35.640923, 35.399700, 26.403521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284721, 35.222061, 25.754436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296070, 35.621067, 25.780251>,  <35.302879, 35.860470, 25.795738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296070, 35.621067, 25.780251>,  <35.284721, 35.222061, 25.754436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296070, 35.621067, 25.780251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413425, 0.047072, -0.909321,
		-0.910096, 0.052476, -0.411061,
		0.028368, 0.997512, 0.064535,
		35.304581, 35.920322, 25.799610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045338, 35.396935, 25.129097>,  <35.284721, 35.222061, 25.754436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045338, 35.396935, 25.129097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262325, 35.697258, 25.279839>,  <35.392517, 35.877453, 25.370283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262325, 35.697258, 25.279839>,  <35.045338, 35.396935, 25.129097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262325, 35.697258, 25.279839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421219, 0.145040, -0.895286,
		-0.726846, 0.644402, -0.237575,
		0.542466, 0.750806, 0.376856,
		35.425064, 35.922501, 25.392895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044102, 35.852692, 24.624550>,  <35.045338, 35.396935, 25.129097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044102, 35.852692, 24.624550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354900, 35.986416, 24.837906>,  <35.541382, 36.066650, 24.965919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354900, 35.986416, 24.837906>,  <35.044102, 35.852692, 24.624550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354900, 35.986416, 24.837906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498164, 0.191457, -0.845681,
		-0.384845, 0.922810, -0.017781,
		0.776999, 0.334314, 0.533392,
		35.588001, 36.086712, 24.997923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328766, 36.346504, 24.157681>,  <35.044102, 35.852692, 24.624550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328766, 36.346504, 24.157681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607994, 36.301262, 24.440495>,  <35.775532, 36.274117, 24.610184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607994, 36.301262, 24.440495>,  <35.328766, 36.346504, 24.157681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607994, 36.301262, 24.440495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683606, 0.399031, -0.611111,
		-0.213010, 0.909935, 0.355871,
		0.698075, -0.113103, 0.707035,
		35.817417, 36.267330, 24.652605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733578, 37.018875, 24.203562>,  <35.328766, 36.346504, 24.157681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733578, 37.018875, 24.203562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962978, 36.720032, 24.337978>,  <36.100620, 36.540726, 24.418629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962978, 36.720032, 24.337978>,  <35.733578, 37.018875, 24.203562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962978, 36.720032, 24.337978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767465, 0.346531, -0.539365,
		0.286514, 0.567229, 0.772114,
		0.573505, -0.747106, 0.336043,
		36.135029, 36.495899, 24.438791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.089828, 34.938610, 31.186556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.330135, 34.627323, 31.259712>,  <32.474319, 34.440552, 31.303606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.330135, 34.627323, 31.259712>,  <32.089828, 34.938610, 31.186556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330135, 34.627323, 31.259712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713630, 0.418960, -0.561432,
		0.360294, 0.467808, 0.807059,
		0.600767, -0.778222, 0.182893,
		32.510365, 34.393856, 31.314581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799854, 35.164738, 31.525568>,  <32.089828, 34.938610, 31.186556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799854, 35.164738, 31.525568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.833900, 34.835945, 31.300320>,  <32.854328, 34.638668, 31.165171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.833900, 34.835945, 31.300320>,  <32.799854, 35.164738, 31.525568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833900, 34.835945, 31.300320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648070, 0.474954, -0.595336,
		0.756810, -0.314270, 0.573125,
		0.085112, -0.821981, -0.563119,
		32.859432, 34.589352, 31.131384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529945, 35.224628, 31.241413>,  <32.799854, 35.164738, 31.525568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529945, 35.224628, 31.241413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.353348, 34.964310, 30.994335>,  <33.247391, 34.808117, 30.846088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.353348, 34.964310, 30.994335>,  <33.529945, 35.224628, 31.241413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353348, 34.964310, 30.994335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488068, 0.403478, -0.773948,
		0.752909, -0.643171, 0.139500,
		-0.441495, -0.650798, -0.617693,
		33.220898, 34.769070, 30.809027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066906, 34.940010, 30.722679>,  <33.529945, 35.224628, 31.241413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066906, 34.940010, 30.722679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.706097, 34.907349, 30.553123>,  <33.489613, 34.887753, 30.451389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.706097, 34.907349, 30.553123>,  <34.066906, 34.940010, 30.722679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706097, 34.907349, 30.553123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344656, 0.455032, -0.821071,
		0.259930, -0.886723, -0.382307,
		-0.902025, -0.081657, -0.423891,
		33.435490, 34.882851, 30.425957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210419, 34.687469, 30.056255>,  <34.066906, 34.940010, 30.722679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210419, 34.687469, 30.056255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.826561, 34.786705, 30.003292>,  <33.596245, 34.846245, 29.971514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.826561, 34.786705, 30.003292>,  <34.210419, 34.687469, 30.056255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826561, 34.786705, 30.003292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212632, 0.332012, -0.918997,
		-0.184027, -0.910067, -0.371364,
		-0.959646, 0.248084, -0.132410,
		33.538666, 34.861130, 29.963570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882854, 34.243980, 29.562422>,  <34.210419, 34.687469, 30.056255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882854, 34.243980, 29.562422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.666649, 34.580463, 29.568176>,  <33.536926, 34.782352, 29.571629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.666649, 34.580463, 29.568176>,  <33.882854, 34.243980, 29.562422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666649, 34.580463, 29.568176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280709, 0.196434, -0.939476,
		-0.793123, -0.503765, -0.342311,
		-0.540517, 0.841210, 0.014385,
		33.504494, 34.832825, 29.572493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505360, 34.260342, 29.000427>,  <33.882854, 34.243980, 29.562422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505360, 34.260342, 29.000427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.510262, 34.655693, 29.061035>,  <33.513203, 34.892902, 29.097401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.510262, 34.655693, 29.061035>,  <33.505360, 34.260342, 29.000427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510262, 34.655693, 29.061035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343494, 0.138151, -0.928938,
		-0.939075, 0.063429, -0.337809,
		0.012253, 0.988378, 0.151522,
		33.513939, 34.952206, 29.106491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212090, 34.587585, 28.399523>,  <33.505360, 34.260342, 29.000427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212090, 34.587585, 28.399523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.356934, 34.909222, 28.588123>,  <33.443840, 35.102203, 28.701284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.356934, 34.909222, 28.588123>,  <33.212090, 34.587585, 28.399523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356934, 34.909222, 28.588123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403753, 0.320614, -0.856849,
		-0.840154, 0.500644, -0.208556,
		0.362111, 0.804091, 0.471502,
		33.465569, 35.150448, 28.729574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034100, 35.118790, 27.955490>,  <33.212090, 34.587585, 28.399523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034100, 35.118790, 27.955490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.334278, 35.254353, 28.182461>,  <33.514385, 35.335690, 28.318644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.334278, 35.254353, 28.182461>,  <33.034100, 35.118790, 27.955490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334278, 35.254353, 28.182461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355961, 0.516129, -0.779040,
		-0.556891, 0.786607, 0.266686,
		0.750443, 0.338911, 0.567429,
		33.559410, 35.356026, 28.352690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427940, 35.473949, 28.278467>,  <33.034100, 35.118790, 27.955490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427940, 35.473949, 28.278467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.121349, 35.290051, 28.099072>,  <31.937395, 35.179710, 27.991434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.121349, 35.290051, 28.099072>,  <32.427940, 35.473949, 28.278467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121349, 35.290051, 28.099072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043896, -0.734153, 0.677564,
		-0.640771, 0.499649, 0.582892,
		-0.766476, -0.459750, -0.448491,
		31.891407, 35.152126, 27.964523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185635, 35.154449, 28.871040>,  <32.427940, 35.473949, 28.278467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185635, 35.154449, 28.871040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.026535, 34.959503, 28.560101>,  <31.931074, 34.842537, 28.373537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.026535, 34.959503, 28.560101>,  <32.185635, 35.154449, 28.871040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026535, 34.959503, 28.560101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223966, -0.770047, 0.597384,
		-0.889738, 0.411710, 0.197135,
		-0.397752, -0.487363, -0.777348,
		31.907209, 34.813293, 28.326897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536692, 34.797440, 29.072811>,  <32.185635, 35.154449, 28.871040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536692, 34.797440, 29.072811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.645685, 34.581997, 28.753899>,  <31.711081, 34.452732, 28.562551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.645685, 34.581997, 28.753899>,  <31.536692, 34.797440, 29.072811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645685, 34.581997, 28.753899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281486, -0.837006, 0.469240,
		-0.920064, 0.096564, -0.379680,
		0.272483, -0.538605, -0.797281,
		31.727430, 34.420414, 28.514715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017609, 34.352314, 28.945724>,  <31.536692, 34.797440, 29.072811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017609, 34.352314, 28.945724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.329266, 34.164558, 28.779537>,  <31.516260, 34.051907, 28.679825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.329266, 34.164558, 28.779537>,  <31.017609, 34.352314, 28.945724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329266, 34.164558, 28.779537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316601, -0.866712, 0.385454,
		-0.541017, -0.168787, -0.823900,
		0.779144, -0.469385, -0.415467,
		31.563009, 34.023743, 28.654898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698944, 33.803841, 28.662323>,  <31.017609, 34.352314, 28.945724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698944, 33.803841, 28.662323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.081600, 33.691277, 28.692390>,  <31.311193, 33.623737, 28.710430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.081600, 33.691277, 28.692390>,  <30.698944, 33.803841, 28.662323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081600, 33.691277, 28.692390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291254, -0.927590, 0.233981,
		0.003880, -0.245728, -0.969331,
		0.956638, -0.281414, 0.075169,
		31.368591, 33.606853, 28.714941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825918, 33.158684, 28.228899>,  <30.698944, 33.803841, 28.662323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825918, 33.158684, 28.228899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.105890, 33.139278, 28.513924>,  <31.273874, 33.127636, 28.684938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.105890, 33.139278, 28.513924>,  <30.825918, 33.158684, 28.228899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105890, 33.139278, 28.513924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320488, -0.912938, 0.252648,
		0.638267, -0.405203, -0.654542,
		0.699930, -0.048516, 0.712561,
		31.315870, 33.124725, 28.727692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960972, 32.465580, 28.300293>,  <30.825918, 33.158684, 28.228899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960972, 32.465580, 28.300293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.124649, 32.595451, 28.641384>,  <31.222855, 32.673374, 28.846039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.124649, 32.595451, 28.641384>,  <30.960972, 32.465580, 28.300293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124649, 32.595451, 28.641384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154995, -0.896233, 0.415624,
		0.899188, -0.302239, -0.316407,
		0.409192, 0.324683, 0.852727,
		31.247406, 32.692856, 28.897202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496447, 31.943069, 28.388809>,  <30.960972, 32.465580, 28.300293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496447, 31.943069, 28.388809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.420105, 32.116867, 28.740898>,  <31.374300, 32.221146, 28.952150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.420105, 32.116867, 28.740898>,  <31.496447, 31.943069, 28.388809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420105, 32.116867, 28.740898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073811, -0.900517, 0.428509,
		0.978839, 0.016812, 0.203938,
		-0.190854, 0.434495, 0.880221,
		31.362848, 32.247215, 29.004965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887690, 31.542604, 28.966820>,  <31.496447, 31.943069, 28.388809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887690, 31.542604, 28.966820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.626949, 31.784065, 29.150425>,  <31.470505, 31.928942, 29.260588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.626949, 31.784065, 29.150425>,  <31.887690, 31.542604, 28.966820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626949, 31.784065, 29.150425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282494, -0.755009, 0.591742,
		0.703766, 0.256059, 0.662682,
		-0.651851, 0.603652, 0.459015,
		31.431395, 31.965160, 29.288130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971771, 31.393621, 29.694193>,  <31.887690, 31.542604, 28.966820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971771, 31.393621, 29.694193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.616686, 31.576622, 29.673565>,  <31.403635, 31.686422, 29.661188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.616686, 31.576622, 29.673565>,  <31.971771, 31.393621, 29.694193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616686, 31.576622, 29.673565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416275, -0.749736, 0.514403,
		0.196678, 0.478109, 0.855996,
		-0.887712, 0.457502, -0.051568,
		31.350372, 31.713873, 29.658094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752764, 31.579865, 30.391500>,  <31.971771, 31.393621, 29.694193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752764, 31.579865, 30.391500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.421200, 31.513157, 30.177921>,  <31.222261, 31.473131, 30.049774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.421200, 31.513157, 30.177921>,  <31.752764, 31.579865, 30.391500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421200, 31.513157, 30.177921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230836, -0.767485, 0.598065,
		-0.509536, 0.618995, 0.597678,
		-0.828908, -0.166770, -0.533947,
		31.172527, 31.463125, 30.017736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177109, 31.492092, 30.826311>,  <31.752764, 31.579865, 30.391500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177109, 31.492092, 30.826311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.051018, 31.292946, 30.503136>,  <30.975363, 31.173458, 30.309231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.051018, 31.292946, 30.503136>,  <31.177109, 31.492092, 30.826311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051018, 31.292946, 30.503136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342153, -0.734464, 0.586084,
		-0.885191, 0.461188, 0.061177,
		-0.315227, -0.497864, -0.807938,
		30.956450, 31.143587, 30.260754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760937, 31.013025, 31.187645>,  <31.177109, 31.492092, 30.826311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760937, 31.013025, 31.187645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.723925, 30.904430, 30.804451>,  <30.701717, 30.839273, 30.574535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.723925, 30.904430, 30.804451>,  <30.760937, 31.013025, 31.187645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723925, 30.904430, 30.804451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496160, -0.821585, 0.280755,
		-0.863286, 0.501292, -0.058678,
		-0.092531, -0.271485, -0.957984,
		30.696165, 30.822985, 30.517056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988157, 30.895887, 31.054430>,  <30.760937, 31.013025, 31.187645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988157, 30.895887, 31.054430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.215691, 30.681068, 30.805267>,  <30.352211, 30.552177, 30.655769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.215691, 30.681068, 30.805267>,  <29.988157, 30.895887, 31.054430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215691, 30.681068, 30.805267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328179, -0.842679, 0.426838,
		-0.754140, -0.038376, -0.655592,
		0.568834, -0.537047, -0.622903,
		30.386341, 30.519955, 30.618397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.423450, 27.248663, 29.249722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.330570, 27.505173, 29.542255>,  <34.274841, 27.659079, 29.717775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.330570, 27.505173, 29.542255>,  <34.423450, 27.248663, 29.249722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330570, 27.505173, 29.542255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148941, 0.719577, -0.678251,
		-0.961197, -0.266417, -0.071575,
		-0.232201, 0.641273, 0.731336,
		34.260910, 27.697554, 29.761656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772659, 27.651608, 29.088957>,  <34.423450, 27.248663, 29.249722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772659, 27.651608, 29.088957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.996651, 27.864578, 29.342869>,  <34.131046, 27.992361, 29.495216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.996651, 27.864578, 29.342869>,  <33.772659, 27.651608, 29.088957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996651, 27.864578, 29.342869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042891, 0.783775, -0.619562,
		-0.827398, 0.319713, 0.461731,
		0.559976, 0.532429, 0.634781,
		34.164642, 28.024307, 29.533302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388374, 28.136425, 29.352835>,  <33.772659, 27.651608, 29.088957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388374, 28.136425, 29.352835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.765217, 28.268970, 29.373390>,  <33.991322, 28.348497, 29.385723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.765217, 28.268970, 29.373390>,  <33.388374, 28.136425, 29.352835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765217, 28.268970, 29.373390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237354, 0.767224, -0.595844,
		-0.236867, 0.549149, 0.801454,
		0.942102, 0.331364, 0.051388,
		34.047848, 28.368380, 29.388807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230228, 28.880219, 29.298292>,  <33.388374, 28.136425, 29.352835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230228, 28.880219, 29.298292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.623661, 28.841228, 29.237549>,  <33.859722, 28.817835, 29.201103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.623661, 28.841228, 29.237549>,  <33.230228, 28.880219, 29.298292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623661, 28.841228, 29.237549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007490, 0.818771, -0.574072,
		0.180298, 0.565785, 0.804599,
		0.983584, -0.097477, -0.151860,
		33.918736, 28.811985, 29.191990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559422, 29.494448, 29.495916>,  <33.230228, 28.880219, 29.298292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559422, 29.494448, 29.495916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820034, 29.329937, 29.240932>,  <33.976402, 29.231230, 29.087942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820034, 29.329937, 29.240932>,  <33.559422, 29.494448, 29.495916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820034, 29.329937, 29.240932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031826, 0.824730, -0.564630,
		0.757954, 0.388162, 0.524248,
		0.651531, -0.411279, -0.637461,
		34.015495, 29.206553, 29.049694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873371, 30.092363, 29.279486>,  <33.559422, 29.494448, 29.495916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873371, 30.092363, 29.279486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.964546, 29.835884, 28.986389>,  <34.019249, 29.681997, 28.810532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.964546, 29.835884, 28.986389>,  <33.873371, 30.092363, 29.279486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964546, 29.835884, 28.986389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089509, 0.763165, -0.639975,
		0.969554, 0.080285, 0.231344,
		0.227934, -0.641197, -0.732743,
		34.032925, 29.643524, 28.766567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253540, 30.469709, 28.836628>,  <33.873371, 30.092363, 29.279486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253540, 30.469709, 28.836628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.137993, 30.173267, 28.594200>,  <34.068665, 29.995401, 28.448744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.137993, 30.173267, 28.594200>,  <34.253540, 30.469709, 28.836628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137993, 30.173267, 28.594200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069858, 0.615051, -0.785386,
		0.954817, -0.269211, -0.125895,
		-0.288866, -0.741106, -0.606068,
		34.051334, 29.950935, 28.412380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679588, 30.560045, 28.251518>,  <34.253540, 30.469709, 28.836628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679588, 30.560045, 28.251518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.388126, 30.318134, 28.122955>,  <34.213249, 30.172987, 28.045818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.388126, 30.318134, 28.122955>,  <34.679588, 30.560045, 28.251518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388126, 30.318134, 28.122955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045928, 0.511383, -0.858125,
		0.683338, -0.610516, -0.400399,
		-0.728656, -0.604779, -0.321408,
		34.169529, 30.136702, 28.026533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824944, 30.303181, 27.529411>,  <34.679588, 30.560045, 28.251518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824944, 30.303181, 27.529411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.431137, 30.241047, 27.561905>,  <34.194855, 30.203766, 27.581400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.431137, 30.241047, 27.561905>,  <34.824944, 30.303181, 27.529411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431137, 30.241047, 27.561905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135465, 0.380092, -0.914975,
		0.111253, -0.911812, -0.395250,
		-0.984516, -0.155336, 0.081233,
		34.135780, 30.194447, 27.586275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572269, 30.087166, 26.887384>,  <34.824944, 30.303181, 27.529411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572269, 30.087166, 26.887384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.238956, 30.216015, 27.067104>,  <34.038967, 30.293324, 27.174936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.238956, 30.216015, 27.067104>,  <34.572269, 30.087166, 26.887384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238956, 30.216015, 27.067104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378259, 0.260501, -0.888290,
		-0.403180, -0.910153, -0.095227,
		-0.833286, 0.322120, 0.449302,
		33.988972, 30.312651, 27.201895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057148, 29.781864, 26.517302>,  <34.572269, 30.087166, 26.887384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057148, 29.781864, 26.517302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.927250, 30.117325, 26.692207>,  <33.849312, 30.318602, 26.797152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.927250, 30.117325, 26.692207>,  <34.057148, 29.781864, 26.517302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927250, 30.117325, 26.692207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374975, 0.310271, -0.873571,
		-0.868293, -0.447653, 0.213715,
		-0.324747, 0.838653, 0.437265,
		33.829826, 30.368921, 26.823387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731331, 29.990364, 26.029093>,  <34.057148, 29.781864, 26.517302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731331, 29.990364, 26.029093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.720192, 30.326725, 26.245281>,  <33.713509, 30.528542, 26.374994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.720192, 30.326725, 26.245281>,  <33.731331, 29.990364, 26.029093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720192, 30.326725, 26.245281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304919, 0.507766, -0.805729,
		-0.951971, -0.187239, 0.242266,
		-0.027849, 0.840902, 0.540471,
		33.711838, 30.578995, 26.407423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065350, 30.319624, 25.878281>,  <33.731331, 29.990364, 26.029093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065350, 30.319624, 25.878281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343578, 30.579807, 26.000320>,  <33.510517, 30.735916, 26.073545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343578, 30.579807, 26.000320>,  <33.065350, 30.319624, 25.878281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343578, 30.579807, 26.000320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091746, 0.501601, -0.860220,
		-0.712574, 0.570353, 0.408577,
		0.695572, 0.650456, 0.305100,
		33.552250, 30.774944, 26.091850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759296, 30.989784, 25.681324>,  <33.065350, 30.319624, 25.878281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759296, 30.989784, 25.681324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.148281, 31.071667, 25.725880>,  <33.381672, 31.120796, 25.752613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.148281, 31.071667, 25.725880>,  <32.759296, 30.989784, 25.681324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148281, 31.071667, 25.725880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062278, 0.688851, -0.722223,
		-0.224576, 0.695399, 0.682632,
		0.972464, 0.204707, 0.111391,
		33.440022, 31.133080, 25.759296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134975, 31.092308, 25.855019>,  <32.759296, 30.989784, 25.681324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134975, 31.092308, 25.855019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.794317, 30.982380, 25.676502>,  <31.589922, 30.916424, 25.569393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.794317, 30.982380, 25.676502>,  <32.134975, 31.092308, 25.855019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794317, 30.982380, 25.676502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130296, -0.713758, 0.688166,
		-0.507664, 0.644223, 0.572061,
		-0.851646, -0.274819, -0.446289,
		31.538824, 30.899935, 25.542616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498346, 30.958920, 26.389275>,  <32.134975, 31.092308, 25.855019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498346, 30.958920, 26.389275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.427086, 30.750919, 26.055122>,  <31.384329, 30.626120, 25.854631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.427086, 30.750919, 26.055122>,  <31.498346, 30.958920, 26.389275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427086, 30.750919, 26.055122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189449, -0.814953, 0.547686,
		-0.965593, 0.255834, 0.046673,
		-0.178153, -0.520000, -0.835381,
		31.373640, 30.594919, 25.804508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959707, 30.580458, 26.485416>,  <31.498346, 30.958920, 26.389275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959707, 30.580458, 26.485416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.123493, 30.371101, 26.186512>,  <31.221766, 30.245487, 26.007170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.123493, 30.371101, 26.186512>,  <30.959707, 30.580458, 26.485416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123493, 30.371101, 26.186512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118133, -0.842593, 0.525434,
		-0.904646, -0.126870, -0.406842,
		0.409464, -0.523393, -0.747261,
		31.246334, 30.214083, 25.962334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528257, 29.960989, 26.427698>,  <30.959707, 30.580458, 26.485416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528257, 29.960989, 26.427698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.849499, 29.849537, 26.217026>,  <31.042244, 29.782665, 26.090622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.849499, 29.849537, 26.217026>,  <30.528257, 29.960989, 26.427698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849499, 29.849537, 26.217026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069971, -0.921913, 0.381025,
		-0.591719, -0.269149, -0.759887,
		0.803102, -0.278630, -0.526681,
		31.090429, 29.765947, 26.059021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319639, 29.329718, 26.076984>,  <30.528257, 29.960989, 26.427698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319639, 29.329718, 26.076984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.718168, 29.316357, 26.045422>,  <30.957285, 29.308340, 26.026484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.718168, 29.316357, 26.045422>,  <30.319639, 29.329718, 26.076984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718168, 29.316357, 26.045422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003223, -0.934856, 0.355011,
		-0.085626, -0.353451, -0.931526,
		0.996322, -0.033401, -0.078909,
		31.017065, 29.306335, 26.021749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464237, 28.744089, 25.625593>,  <30.319639, 29.329718, 26.076984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464237, 28.744089, 25.625593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.774841, 28.828388, 25.863121>,  <30.961203, 28.878967, 26.005638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.774841, 28.828388, 25.863121>,  <30.464237, 28.744089, 25.625593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774841, 28.828388, 25.863121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011665, -0.937440, 0.347951,
		0.629998, -0.277114, -0.725472,
		0.776509, 0.210746, 0.593818,
		31.007793, 28.891611, 26.041267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946117, 28.188789, 25.636368>,  <30.464237, 28.744089, 25.625593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946117, 28.188789, 25.636368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.057098, 28.359230, 25.980801>,  <31.123686, 28.461494, 26.187460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.057098, 28.359230, 25.980801>,  <30.946117, 28.188789, 25.636368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057098, 28.359230, 25.980801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003526, -0.896713, 0.442598,
		0.960734, -0.119763, -0.250295,
		0.277450, 0.426101, 0.861080,
		31.140333, 28.487061, 26.239124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449820, 27.764301, 25.944050>,  <30.946117, 28.188789, 25.636368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449820, 27.764301, 25.944050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.323895, 27.985767, 26.252426>,  <31.248341, 28.118647, 26.437452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.323895, 27.985767, 26.252426>,  <31.449820, 27.764301, 25.944050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323895, 27.985767, 26.252426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166420, -0.767459, 0.619121,
		0.934451, 0.323206, 0.149463,
		-0.314811, 0.553665, 0.770941,
		31.229452, 28.151867, 26.483707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796715, 27.424150, 26.476835>,  <31.449820, 27.764301, 25.944050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796715, 27.424150, 26.476835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.549324, 27.666351, 26.677177>,  <31.400890, 27.811672, 26.797382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.549324, 27.666351, 26.677177>,  <31.796715, 27.424150, 26.476835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549324, 27.666351, 26.677177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109697, -0.564610, 0.818036,
		0.778110, 0.560877, 0.282776,
		-0.618476, 0.605502, 0.500855,
		31.363781, 27.848001, 26.827435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028793, 27.644552, 27.165375>,  <31.796715, 27.424150, 26.476835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028793, 27.644552, 27.165375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.629866, 27.633633, 27.192535>,  <31.390509, 27.627081, 27.208832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.629866, 27.633633, 27.192535>,  <32.028793, 27.644552, 27.165375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629866, 27.633633, 27.192535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072561, -0.489618, 0.868913,
		0.009525, 0.871510, 0.490286,
		-0.997318, -0.027299, 0.067901,
		31.330669, 27.625443, 27.212906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985209, 27.696699, 27.869522>,  <32.028793, 27.644552, 27.165375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985209, 27.696699, 27.869522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.615698, 27.596310, 27.753838>,  <31.393991, 27.536076, 27.684427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.615698, 27.596310, 27.753838>,  <31.985209, 27.696699, 27.869522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615698, 27.596310, 27.753838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122065, -0.522869, 0.843628,
		-0.362950, 0.814628, 0.452380,
		-0.923779, -0.250975, -0.289213,
		31.338564, 27.521017, 27.667074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429081, 27.883644, 28.276880>,  <31.985209, 27.696699, 27.869522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429081, 27.883644, 28.276880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.237795, 27.581493, 28.097675>,  <31.123024, 27.400204, 27.990152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.237795, 27.581493, 28.097675>,  <31.429081, 27.883644, 28.276880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237795, 27.581493, 28.097675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119291, -0.449527, 0.885265,
		-0.870103, 0.476792, 0.124861,
		-0.478216, -0.755378, -0.448012,
		31.094330, 27.354879, 27.963272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729231, 27.989943, 28.427189>,  <31.429081, 27.883644, 28.276880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729231, 27.989943, 28.427189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.823683, 27.607182, 28.359566>,  <30.880354, 27.377525, 28.318993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.823683, 27.607182, 28.359566>,  <30.729231, 27.989943, 28.427189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823683, 27.607182, 28.359566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254489, -0.228802, 0.939619,
		-0.937805, -0.178847, -0.297548,
		0.236128, -0.956903, -0.169057,
		30.894522, 27.320110, 28.308849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251549, 27.628082, 28.743668>,  <30.729231, 27.989943, 28.427189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251549, 27.628082, 28.743668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.527466, 27.344193, 28.686432>,  <30.693016, 27.173859, 28.652090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.527466, 27.344193, 28.686432>,  <30.251549, 27.628082, 28.743668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527466, 27.344193, 28.686432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015290, -0.183313, 0.982936,
		-0.723844, -0.680211, -0.115596,
		0.689794, -0.709725, -0.143090,
		30.734404, 27.131275, 28.643505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413599, 27.457106, 28.885996>,  <30.251549, 27.628082, 28.743668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413599, 27.457106, 28.885996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.090506, 27.653847, 29.016010>,  <28.896650, 27.771893, 29.094019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.090506, 27.653847, 29.016010>,  <29.413599, 27.457106, 28.885996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090506, 27.653847, 29.016010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063806, 0.621024, -0.781190,
		-0.586088, -0.610253, -0.533004,
		-0.807731, 0.491854, 0.325037,
		28.848186, 27.801403, 29.113522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960848, 27.509165, 28.352674>,  <29.413599, 27.457106, 28.885996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960848, 27.509165, 28.352674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.865290, 27.817398, 28.589024>,  <28.807955, 28.002338, 28.730833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.865290, 27.817398, 28.589024>,  <28.960848, 27.509165, 28.352674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865290, 27.817398, 28.589024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019853, 0.604490, -0.796365,
		-0.970842, -0.201979, -0.129113,
		-0.238896, 0.770581, 0.590875,
		28.793621, 28.048573, 28.766287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439789, 27.791470, 27.902748>,  <28.960848, 27.509165, 28.352674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439789, 27.791470, 27.902748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.557486, 28.062073, 28.172787>,  <28.628103, 28.224434, 28.334810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.557486, 28.062073, 28.172787>,  <28.439789, 27.791470, 27.902748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557486, 28.062073, 28.172787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088112, 0.722562, -0.685668,
		-0.951660, 0.142268, 0.272217,
		0.294242, 0.676508, 0.675098,
		28.645758, 28.265026, 28.375317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063452, 28.297646, 27.687006>,  <28.439789, 27.791470, 27.902748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063452, 28.297646, 27.687006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.325720, 28.468521, 27.936039>,  <28.483080, 28.571047, 28.085459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.325720, 28.468521, 27.936039>,  <28.063452, 28.297646, 27.687006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325720, 28.468521, 27.936039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019027, 0.814947, -0.579223,
		-0.754810, 0.391623, 0.526207,
		0.655668, 0.427191, 0.622582,
		28.522421, 28.596678, 28.122814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774406, 28.907862, 27.780827>,  <28.063452, 28.297646, 27.687006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774406, 28.907862, 27.780827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.166985, 28.943481, 27.848751>,  <28.402531, 28.964853, 27.889505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.166985, 28.943481, 27.848751>,  <27.774406, 28.907862, 27.780827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166985, 28.943481, 27.848751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007554, 0.902882, -0.429821,
		-0.191596, 0.420563, 0.886802,
		0.981445, 0.089051, 0.169812,
		28.461418, 28.970198, 27.899694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836258, 29.569492, 28.165909>,  <27.774406, 28.907862, 27.780827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836258, 29.569492, 28.165909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.184175, 29.467934, 27.996677>,  <28.392925, 29.406998, 27.895138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.184175, 29.467934, 27.996677>,  <27.836258, 29.569492, 28.165909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184175, 29.467934, 27.996677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029333, 0.882539, -0.469323,
		0.492546, 0.395804, 0.775073,
		0.869792, -0.253898, -0.423081,
		28.445112, 29.391764, 27.869753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330343, 30.081230, 28.450417>,  <27.836258, 29.569492, 28.165909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330343, 30.081230, 28.450417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.450186, 29.916080, 28.106377>,  <28.522091, 29.816990, 27.899954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.450186, 29.916080, 28.106377>,  <28.330343, 30.081230, 28.450417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450186, 29.916080, 28.106377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253228, 0.903590, -0.345545,
		0.919843, -0.114274, 0.375273,
		0.299606, -0.412877, -0.860098,
		28.540068, 29.792217, 27.848347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863647, 30.592299, 28.159723>,  <28.330343, 30.081230, 28.450417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863647, 30.592299, 28.159723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.766838, 30.364525, 27.845482>,  <28.708754, 30.227861, 27.656937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.766838, 30.364525, 27.845482>,  <28.863647, 30.592299, 28.159723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766838, 30.364525, 27.845482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022488, 0.812748, -0.582181,
		0.970010, -0.123234, -0.209509,
		-0.242022, -0.569433, -0.785603,
		28.694231, 30.193695, 27.609800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248926, 30.768709, 27.643076>,  <28.863647, 30.592299, 28.159723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248926, 30.768709, 27.643076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.932835, 30.629436, 27.441360>,  <28.743179, 30.545874, 27.320332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.932835, 30.629436, 27.441360>,  <29.248926, 30.768709, 27.643076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932835, 30.629436, 27.441360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012351, 0.813695, -0.581161,
		0.612686, -0.465479, -0.638705,
		-0.790230, -0.348181, -0.504289,
		28.695766, 30.524982, 27.290073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385103, 30.853394, 26.922777>,  <29.248926, 30.768709, 27.643076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385103, 30.853394, 26.922777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.990923, 30.787102, 26.907700>,  <28.754416, 30.747326, 26.898653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.990923, 30.787102, 26.907700>,  <29.385103, 30.853394, 26.922777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990923, 30.787102, 26.907700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069707, 0.596359, -0.799686,
		0.155011, -0.785423, -0.599234,
		-0.985450, -0.165731, -0.037692,
		28.695288, 30.737383, 26.896393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279518, 30.837109, 26.217377>,  <29.385103, 30.853394, 26.922777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279518, 30.837109, 26.217377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.914314, 30.864216, 26.378284>,  <28.695192, 30.880480, 26.474829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.914314, 30.864216, 26.378284>,  <29.279518, 30.837109, 26.217377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914314, 30.864216, 26.378284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232478, 0.723872, -0.649587,
		-0.335211, -0.686598, -0.645148,
		-0.913010, 0.067766, 0.402269,
		28.640411, 30.884546, 26.498964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785469, 30.784992, 25.705997>,  <29.279518, 30.837109, 26.217377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785469, 30.784992, 25.705997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.617889, 30.984913, 26.009228>,  <28.517342, 31.104864, 26.191166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.617889, 30.984913, 26.009228>,  <28.785469, 30.784992, 25.705997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617889, 30.984913, 26.009228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072193, 0.813901, -0.576501,
		-0.905135, -0.296253, -0.304902,
		-0.418950, 0.499799, 0.758077,
		28.492205, 31.134853, 26.236650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082779, 31.043047, 25.456181>,  <28.785469, 30.784992, 25.705997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082779, 31.043047, 25.456181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.205244, 31.271358, 25.760937>,  <28.278723, 31.408346, 25.943790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.205244, 31.271358, 25.760937>,  <28.082779, 31.043047, 25.456181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205244, 31.271358, 25.760937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084484, 0.813455, -0.575459,
		-0.948223, 0.111817, 0.297271,
		0.306162, 0.570779, 0.761890,
		28.297092, 31.442593, 25.989504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755911, 31.632744, 25.327763>,  <28.082779, 31.043047, 25.456181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755911, 31.632744, 25.327763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.039293, 31.739182, 25.589230>,  <28.209322, 31.803045, 25.746111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.039293, 31.739182, 25.589230>,  <27.755911, 31.632744, 25.327763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039293, 31.739182, 25.589230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073700, 0.893241, -0.443497,
		-0.701897, 0.362373, 0.613210,
		0.708455, 0.266095, 0.653670,
		28.251829, 31.819010, 25.785330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.684155, 39.332001, 15.938872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.997616, 39.092506, 15.872647>,  <43.185692, 38.948811, 15.832912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.997616, 39.092506, 15.872647>,  <42.684155, 39.332001, 15.938872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997616, 39.092506, 15.872647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173199, -0.466539, 0.867377,
		-0.596569, -0.651045, -0.469303,
		0.783650, -0.598734, -0.165563,
		43.232712, 38.912888, 15.822979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409157, 38.676220, 16.112881>,  <42.684155, 39.332001, 15.938872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409157, 38.676220, 16.112881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.808540, 38.693714, 16.126530>,  <43.048172, 38.704208, 16.134720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.808540, 38.693714, 16.126530>,  <42.409157, 38.676220, 16.112881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808540, 38.693714, 16.126530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004358, -0.551424, 0.834213,
		0.055300, -0.833078, -0.550385,
		0.998460, 0.043733, 0.034124,
		43.108078, 38.706833, 16.136766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633659, 37.988754, 16.138863>,  <42.409157, 38.676220, 16.112881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633659, 37.988754, 16.138863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.918091, 38.218639, 16.300880>,  <43.088749, 38.356571, 16.398092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.918091, 38.218639, 16.300880>,  <42.633659, 37.988754, 16.138863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918091, 38.218639, 16.300880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038487, -0.543398, 0.838592,
		0.702055, -0.611897, -0.364282,
		0.711082, 0.574717, 0.405045,
		43.131416, 38.391056, 16.422394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010857, 37.484692, 16.499527>,  <42.633659, 37.988754, 16.138863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010857, 37.484692, 16.499527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.133202, 37.824806, 16.670856>,  <43.206608, 38.028873, 16.773655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.133202, 37.824806, 16.670856>,  <43.010857, 37.484692, 16.499527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133202, 37.824806, 16.670856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092058, -0.474191, 0.875596,
		0.947615, -0.228381, -0.223313,
		0.305862, 0.850285, 0.428326,
		43.224960, 38.079891, 16.799355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565456, 37.281269, 16.937988>,  <43.010857, 37.484692, 16.499527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565456, 37.281269, 16.937988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.467430, 37.636471, 17.093624>,  <43.408615, 37.849590, 17.187006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.467430, 37.636471, 17.093624>,  <43.565456, 37.281269, 16.937988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467430, 37.636471, 17.093624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076396, -0.382391, 0.920837,
		0.966491, 0.255393, 0.025872,
		-0.245069, 0.888004, 0.389089,
		43.393909, 37.902870, 17.210350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799129, 37.182556, 17.542048>,  <43.565456, 37.281269, 16.937988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799129, 37.182556, 17.542048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.572227, 37.508171, 17.591949>,  <43.436085, 37.703541, 17.621891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.572227, 37.508171, 17.591949>,  <43.799129, 37.182556, 17.542048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572227, 37.508171, 17.591949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280397, -0.333346, 0.900144,
		0.774336, 0.475632, 0.417346,
		-0.567258, 0.814036, 0.124756,
		43.402050, 37.752380, 17.629375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134209, 37.524128, 18.196093>,  <43.799129, 37.182556, 17.542048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134209, 37.524128, 18.196093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.753830, 37.614368, 18.111420>,  <43.525604, 37.668514, 18.060616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.753830, 37.614368, 18.111420>,  <44.134209, 37.524128, 18.196093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753830, 37.614368, 18.111420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262802, -0.228094, 0.937501,
		0.163221, 0.947141, 0.276194,
		-0.950944, 0.225604, -0.211681,
		43.468548, 37.682049, 18.047915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885532, 37.803387, 18.759478>,  <44.134209, 37.524128, 18.196093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885532, 37.803387, 18.759478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.531906, 37.729469, 18.587765>,  <43.319729, 37.685120, 18.484737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.531906, 37.729469, 18.587765>,  <43.885532, 37.803387, 18.759478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531906, 37.729469, 18.587765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409248, -0.137508, 0.902002,
		-0.225712, 0.973110, 0.045940,
		-0.884065, -0.184792, -0.429281,
		43.266685, 37.674030, 18.458981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360233, 38.144077, 19.181427>,  <43.885532, 37.803387, 18.759478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.360233, 38.144077, 19.181427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.180756, 37.843296, 18.988247>,  <43.073071, 37.662827, 18.872339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.180756, 37.843296, 18.988247>,  <43.360233, 38.144077, 19.181427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180756, 37.843296, 18.988247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439650, -0.284758, 0.851834,
		-0.778064, 0.594539, -0.202828,
		-0.448692, -0.751955, -0.482949,
		43.046146, 37.617710, 18.843363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668968, 38.102303, 19.387545>,  <43.360233, 38.144077, 19.181427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668968, 38.102303, 19.387545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.698410, 37.730694, 19.242496>,  <42.716076, 37.507729, 19.155468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.698410, 37.730694, 19.242496>,  <42.668968, 38.102303, 19.387545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698410, 37.730694, 19.242496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674160, -0.314295, 0.668376,
		-0.734908, 0.195266, -0.649447,
		0.073607, -0.929026, -0.362619,
		42.720493, 37.451984, 19.133711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049065, 37.813507, 19.266470>,  <42.668968, 38.102303, 19.387545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049065, 37.813507, 19.266470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.258530, 37.473446, 19.288410>,  <42.384209, 37.269409, 19.301575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.258530, 37.473446, 19.288410>,  <42.049065, 37.813507, 19.266470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258530, 37.473446, 19.288410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757044, -0.434848, 0.487638,
		-0.390718, -0.296883, -0.871321,
		0.523664, -0.850158, 0.054851,
		42.415630, 37.218399, 19.304865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562832, 37.333836, 19.282047>,  <42.049065, 37.813507, 19.266470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562832, 37.333836, 19.282047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.889374, 37.147308, 19.418350>,  <42.085300, 37.035393, 19.500132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.889374, 37.147308, 19.418350>,  <41.562832, 37.333836, 19.282047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889374, 37.147308, 19.418350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572415, -0.574737, 0.584824,
		-0.076867, -0.672478, -0.736115,
		0.816353, -0.466316, 0.340758,
		42.134281, 37.007412, 19.520578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415943, 36.565617, 19.108206>,  <41.562832, 37.333836, 19.282047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415943, 36.565617, 19.108206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.707767, 36.581100, 19.381332>,  <41.882862, 36.590389, 19.545208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.707767, 36.581100, 19.381332>,  <41.415943, 36.565617, 19.108206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707767, 36.581100, 19.381332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454628, -0.718423, 0.526481,
		0.510933, -0.694529, -0.506535,
		0.729562, 0.038711, 0.682818,
		41.926636, 36.592712, 19.586178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761650, 35.883282, 19.294237>,  <41.415943, 36.565617, 19.108206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761650, 35.883282, 19.294237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.794048, 36.135231, 19.603222>,  <41.813488, 36.286400, 19.788612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.794048, 36.135231, 19.603222>,  <41.761650, 35.883282, 19.294237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794048, 36.135231, 19.603222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421575, -0.680621, 0.599190,
		0.903169, -0.374182, 0.210412,
		0.080995, 0.629875, 0.772462,
		41.818348, 36.324192, 19.834961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876678, 35.419582, 19.963606>,  <41.761650, 35.883282, 19.294237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876678, 35.419582, 19.963606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.771061, 35.777199, 20.108372>,  <41.707691, 35.991768, 20.195230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.771061, 35.777199, 20.108372>,  <41.876678, 35.419582, 19.963606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771061, 35.777199, 20.108372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457593, -0.446427, 0.768968,
		0.849053, 0.037430, 0.526980,
		-0.264041, 0.894036, 0.361912,
		41.691849, 36.045410, 20.216946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036121, 35.489460, 20.696026>,  <41.876678, 35.419582, 19.963606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036121, 35.489460, 20.696026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.748562, 35.761353, 20.637852>,  <41.576027, 35.924488, 20.602947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.748562, 35.761353, 20.637852>,  <42.036121, 35.489460, 20.696026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748562, 35.761353, 20.637852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566363, -0.451482, 0.689490,
		0.403004, 0.578044, 0.709544,
		-0.718902, 0.679727, -0.145434,
		41.532890, 35.965271, 20.594221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713558, 35.612930, 21.335276>,  <42.036121, 35.489460, 20.696026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713558, 35.612930, 21.335276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.439983, 35.727791, 21.067017>,  <41.275837, 35.796707, 20.906061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.439983, 35.727791, 21.067017>,  <41.713558, 35.612930, 21.335276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439983, 35.727791, 21.067017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729185, -0.297656, 0.616191,
		-0.022680, 0.910463, 0.412967,
		-0.683941, 0.287154, -0.670647,
		41.234802, 35.813938, 20.865822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128639, 35.733944, 21.668491>,  <41.713558, 35.612930, 21.335276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128639, 35.733944, 21.668491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.962864, 35.725063, 21.304569>,  <40.863400, 35.719734, 21.086216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.962864, 35.725063, 21.304569>,  <41.128639, 35.733944, 21.668491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962864, 35.725063, 21.304569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838904, -0.378243, 0.391371,
		-0.352816, 0.925440, 0.138135,
		-0.414439, -0.022200, -0.909806,
		40.838531, 35.718403, 21.031628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458179, 36.069988, 21.819777>,  <41.128639, 35.733944, 21.668491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458179, 36.069988, 21.819777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.433155, 35.847244, 21.488476>,  <40.418140, 35.713600, 21.289696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.433155, 35.847244, 21.488476>,  <40.458179, 36.069988, 21.819777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433155, 35.847244, 21.488476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924745, -0.279816, 0.257973,
		-0.375411, 0.782058, -0.497445,
		-0.062556, -0.556856, -0.828250,
		40.414387, 35.680187, 21.240002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724648, 36.119305, 21.544207>,  <40.458179, 36.069988, 21.819777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724648, 36.119305, 21.544207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.830910, 35.789898, 21.343708>,  <39.894665, 35.592255, 21.223408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.830910, 35.789898, 21.343708>,  <39.724648, 36.119305, 21.544207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830910, 35.789898, 21.343708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836811, -0.455146, 0.304284,
		-0.478725, 0.338619, -0.810037,
		0.265649, -0.823516, -0.501250,
		39.910606, 35.542843, 21.193335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175880, 35.799606, 21.006075>,  <39.724648, 36.119305, 21.544207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175880, 35.799606, 21.006075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.401680, 35.541008, 21.211357>,  <39.537159, 35.385849, 21.334526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.401680, 35.541008, 21.211357>,  <39.175880, 35.799606, 21.006075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401680, 35.541008, 21.211357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805686, -0.296372, 0.512868,
		-0.179469, -0.702996, -0.688177,
		0.564500, -0.646498, 0.513204,
		39.571030, 35.347057, 21.365318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833611, 35.640133, 20.307306>,  <39.175880, 35.799606, 21.006075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833611, 35.640133, 20.307306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.720585, 35.280151, 20.174496>,  <38.652771, 35.064163, 20.094809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.720585, 35.280151, 20.174496>,  <38.833611, 35.640133, 20.307306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720585, 35.280151, 20.174496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359397, 0.221597, -0.906492,
		0.889378, -0.375469, 0.260826,
		-0.282561, -0.899954, -0.332026,
		38.635815, 35.010166, 20.074888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462025, 35.221157, 20.017532>,  <38.833611, 35.640133, 20.307306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462025, 35.221157, 20.017532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.098984, 35.159927, 19.861156>,  <38.881161, 35.123192, 19.767330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.098984, 35.159927, 19.861156>,  <39.462025, 35.221157, 20.017532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098984, 35.159927, 19.861156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360573, 0.192790, -0.912589,
		0.215069, -0.969226, -0.119779,
		-0.907597, -0.153080, -0.390940,
		38.826706, 35.114006, 19.743876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552769, 34.709011, 19.502573>,  <39.462025, 35.221157, 20.017532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552769, 34.709011, 19.502573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.229698, 34.934845, 19.434578>,  <39.035854, 35.070347, 19.393782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.229698, 34.934845, 19.434578>,  <39.552769, 34.709011, 19.502573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229698, 34.934845, 19.434578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401650, 0.315769, -0.859632,
		-0.431659, -0.762584, -0.481806,
		-0.807680, 0.564585, -0.169988,
		38.987392, 35.104221, 19.383581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413433, 34.536835, 18.824986>,  <39.552769, 34.709011, 19.502573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413433, 34.536835, 18.824986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.253262, 34.897148, 18.892208>,  <39.157158, 35.113338, 18.932541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.253262, 34.897148, 18.892208>,  <39.413433, 34.536835, 18.824986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253262, 34.897148, 18.892208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287191, 0.297532, -0.910492,
		-0.870161, -0.316321, -0.377837,
		-0.400426, 0.900787, 0.168056,
		39.133133, 35.167385, 18.942625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137478, 34.685223, 18.148506>,  <39.413433, 34.536835, 18.824986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137478, 34.685223, 18.148506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.123989, 35.028751, 18.352974>,  <39.115894, 35.234867, 18.475655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.123989, 35.028751, 18.352974>,  <39.137478, 34.685223, 18.148506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123989, 35.028751, 18.352974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353883, 0.488584, -0.797529,
		-0.934682, 0.154001, -0.320397,
		-0.033720, 0.858819, 0.511169,
		39.113873, 35.286396, 18.506325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811741, 35.124485, 17.608379>,  <39.137478, 34.685223, 18.148506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811741, 35.124485, 17.608379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.992111, 35.365143, 17.872105>,  <39.100334, 35.509537, 18.030340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.992111, 35.365143, 17.872105>,  <38.811741, 35.124485, 17.608379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992111, 35.365143, 17.872105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317810, 0.582038, -0.748484,
		-0.834066, 0.547044, 0.071245,
		0.450921, 0.601643, 0.659314,
		39.127388, 35.545635, 18.069899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503273, 35.910820, 17.569973>,  <38.811741, 35.124485, 17.608379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503273, 35.910820, 17.569973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.868473, 35.932137, 17.731758>,  <39.087593, 35.944927, 17.828829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.868473, 35.932137, 17.731758>,  <38.503273, 35.910820, 17.569973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868473, 35.932137, 17.731758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295673, 0.596655, -0.746043,
		-0.281083, 0.800726, 0.528990,
		0.913000, 0.053292, 0.404463,
		39.142372, 35.948124, 17.853098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631989, 36.635258, 17.779036>,  <38.503273, 35.910820, 17.569973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631989, 36.635258, 17.779036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.979362, 36.443111, 17.729939>,  <39.187786, 36.327824, 17.700480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.979362, 36.443111, 17.729939>,  <38.631989, 36.635258, 17.779036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979362, 36.443111, 17.729939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273017, 0.669975, -0.690359,
		0.413860, 0.566022, 0.712979,
		0.868436, -0.480368, -0.122742,
		39.239895, 36.299000, 17.693115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109608, 37.222054, 17.736967>,  <38.631989, 36.635258, 17.779036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109608, 37.222054, 17.736967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.294617, 36.904182, 17.579708>,  <39.405621, 36.713459, 17.485352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.294617, 36.904182, 17.579708>,  <39.109608, 37.222054, 17.736967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294617, 36.904182, 17.579708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460148, 0.594191, -0.659697,
		0.757850, 0.124218, 0.640494,
		0.462522, -0.794674, -0.393149,
		39.433372, 36.665779, 17.461763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836002, 37.445263, 17.645088>,  <39.109608, 37.222054, 17.736967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836002, 37.445263, 17.645088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.764141, 37.134079, 17.404255>,  <39.721024, 36.947369, 17.259756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.764141, 37.134079, 17.404255>,  <39.836002, 37.445263, 17.645088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764141, 37.134079, 17.404255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586390, 0.406729, -0.700513,
		0.789855, -0.478906, 0.383117,
		-0.179655, -0.777959, -0.602082,
		39.710243, 36.900692, 17.223631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476318, 37.344284, 17.195263>,  <39.836002, 37.445263, 17.645088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476318, 37.344284, 17.195263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.231266, 37.107880, 16.985352>,  <40.084236, 36.966038, 16.859406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.231266, 37.107880, 16.985352>,  <40.476318, 37.344284, 17.195263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231266, 37.107880, 16.985352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376710, 0.365352, -0.851238,
		0.694823, -0.719180, -0.001183,
		-0.612626, -0.591014, -0.524777,
		40.047478, 36.930576, 16.827919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900860, 37.060238, 16.609554>,  <40.476318, 37.344284, 17.195263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900860, 37.060238, 16.609554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.513897, 37.049877, 16.508797>,  <40.281719, 37.043659, 16.448341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.513897, 37.049877, 16.508797>,  <40.900860, 37.060238, 16.609554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513897, 37.049877, 16.508797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182602, 0.617816, -0.764826,
		0.175437, -0.785896, -0.592950,
		-0.967408, -0.025905, -0.251894,
		40.223675, 37.042107, 16.433228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912418, 36.865707, 15.870575>,  <40.900860, 37.060238, 16.609554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912418, 36.865707, 15.870575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.536949, 37.003624, 15.872144>,  <40.311668, 37.086372, 15.873085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.536949, 37.003624, 15.872144>,  <40.912418, 36.865707, 15.870575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536949, 37.003624, 15.872144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153223, 0.427283, -0.891040,
		-0.308896, -0.835793, -0.453909,
		-0.938672, 0.344788, 0.003923,
		40.255348, 37.107059, 15.873321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784515, 36.886024, 15.202867>,  <40.912418, 36.865707, 15.870575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784515, 36.886024, 15.202867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.512421, 37.119129, 15.380708>,  <40.349163, 37.258991, 15.487412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.512421, 37.119129, 15.380708>,  <40.784515, 36.886024, 15.202867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512421, 37.119129, 15.380708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049119, 0.568951, -0.820903,
		-0.731349, -0.580244, -0.358394,
		-0.680233, 0.582763, 0.444602,
		40.308350, 37.293957, 15.514089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363125, 36.950253, 14.578144>,  <40.784515, 36.886024, 15.202867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363125, 36.950253, 14.578144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.317837, 37.214489, 14.875009>,  <40.290665, 37.373032, 15.053127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.317837, 37.214489, 14.875009>,  <40.363125, 36.950253, 14.578144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317837, 37.214489, 14.875009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123817, 0.750522, -0.649143,
		-0.985825, 0.018397, -0.166766,
		-0.113219, 0.660590, 0.742161,
		40.283871, 37.412666, 15.097657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962891, 37.489292, 14.281443>,  <40.363125, 36.950253, 14.578144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962891, 37.489292, 14.281443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.129562, 37.657158, 14.603997>,  <40.229565, 37.757877, 14.797530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.129562, 37.657158, 14.603997>,  <39.962891, 37.489292, 14.281443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129562, 37.657158, 14.603997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206476, 0.820186, -0.533537,
		-0.885295, 0.388813, 0.255102,
		0.416678, 0.419665, 0.806388,
		40.254566, 37.783058, 14.845914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766735, 38.223434, 14.312582>,  <39.962891, 37.489292, 14.281443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766735, 38.223434, 14.312582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.092995, 38.207153, 14.543429>,  <40.288750, 38.197384, 14.681938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.092995, 38.207153, 14.543429>,  <39.766735, 38.223434, 14.312582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092995, 38.207153, 14.543429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343980, 0.836183, -0.427172,
		-0.465189, 0.546938, 0.696030,
		0.815645, -0.040705, 0.577119,
		40.337688, 38.194942, 14.716565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851433, 38.925091, 14.529963>,  <39.766735, 38.223434, 14.312582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851433, 38.925091, 14.529963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.197388, 38.748699, 14.625878>,  <40.404961, 38.642864, 14.683428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.197388, 38.748699, 14.625878>,  <39.851433, 38.925091, 14.529963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197388, 38.748699, 14.625878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495761, 0.825291, -0.270399,
		-0.078656, 0.352744, 0.932408,
		0.864890, -0.440983, 0.239790,
		40.456856, 38.616405, 14.697815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278374, 39.407845, 14.917210>,  <39.851433, 38.925091, 14.529963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278374, 39.407845, 14.917210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.535072, 39.138260, 14.770822>,  <40.689091, 38.976509, 14.682989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.535072, 39.138260, 14.770822>,  <40.278374, 39.407845, 14.917210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535072, 39.138260, 14.770822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553977, 0.737376, -0.386505,
		0.530347, 0.045301, 0.846570,
		0.641749, -0.673962, -0.365969,
		40.727596, 38.936069, 14.661031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895992, 39.683029, 15.030948>,  <40.278374, 39.407845, 14.917210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895992, 39.683029, 15.030948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.976990, 39.415787, 14.744554>,  <41.025589, 39.255444, 14.572717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.976990, 39.415787, 14.744554>,  <40.895992, 39.683029, 15.030948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976990, 39.415787, 14.744554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607960, 0.658936, -0.442930,
		0.767712, -0.345601, 0.539609,
		0.202490, -0.668104, -0.715985,
		41.037735, 39.215355, 14.529758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544537, 39.749298, 14.874416>,  <40.895992, 39.683029, 15.030948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544537, 39.749298, 14.874416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.425533, 39.544094, 14.552344>,  <41.354134, 39.420971, 14.359101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.425533, 39.544094, 14.552344>,  <41.544537, 39.749298, 14.874416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425533, 39.544094, 14.552344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619480, 0.537997, -0.571667,
		0.726454, -0.668867, 0.157741,
		-0.297505, -0.513007, -0.805180,
		41.336281, 39.390190, 14.310790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<29.713673, 29.988829, 29.743156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.965691, 29.757191, 29.950111>,  <30.116901, 29.618208, 30.074284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.965691, 29.757191, 29.950111>,  <29.713673, 29.988829, 29.743156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965691, 29.757191, 29.950111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755410, -0.302618, 0.581187,
		-0.179991, -0.757015, -0.628118,
		0.630047, -0.579095, 0.517388,
		30.154705, 29.583462, 30.105328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347595, 29.414013, 29.962729>,  <29.713673, 29.988829, 29.743156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347595, 29.414013, 29.962729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.675169, 29.452961, 30.188953>,  <29.871714, 29.476330, 30.324688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.675169, 29.452961, 30.188953>,  <29.347595, 29.414013, 29.962729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675169, 29.452961, 30.188953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445442, -0.513510, 0.733409,
		0.361834, -0.852542, -0.377159,
		0.818937, 0.097370, 0.565563,
		29.920851, 29.482172, 30.358622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608387, 28.696203, 30.160042>,  <29.347595, 29.414013, 29.962729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608387, 28.696203, 30.160042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.777395, 28.939445, 30.428871>,  <29.878801, 29.085392, 30.590168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.777395, 28.939445, 30.428871>,  <29.608387, 28.696203, 30.160042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777395, 28.939445, 30.428871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394694, -0.544059, 0.740416,
		0.815899, -0.578105, 0.010139,
		0.422522, 0.608107, 0.672072,
		29.904152, 29.121878, 30.630493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084263, 28.290810, 30.644188>,  <29.608387, 28.696203, 30.160042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084263, 28.290810, 30.644188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.997601, 28.620773, 30.853027>,  <29.945604, 28.818752, 30.978331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.997601, 28.620773, 30.853027>,  <30.084263, 28.290810, 30.644188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997601, 28.620773, 30.853027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080157, -0.548026, 0.832612,
		0.972952, 0.138539, 0.184855,
		-0.216655, 0.824909, 0.522099,
		29.932604, 28.868246, 31.009657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496855, 28.265696, 31.257753>,  <30.084263, 28.290810, 30.644188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496855, 28.265696, 31.257753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.188278, 28.507122, 31.338337>,  <30.003132, 28.651978, 31.386688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.188278, 28.507122, 31.338337>,  <30.496855, 28.265696, 31.257753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188278, 28.507122, 31.338337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242469, -0.571568, 0.783913,
		0.588290, 0.555896, 0.587277,
		-0.771443, 0.603564, 0.201461,
		29.956846, 28.688190, 31.398775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570660, 28.436377, 31.939653>,  <30.496855, 28.265696, 31.257753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570660, 28.436377, 31.939653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.184534, 28.496712, 31.854404>,  <29.952860, 28.532913, 31.803255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.184534, 28.496712, 31.854404>,  <30.570660, 28.436377, 31.939653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184534, 28.496712, 31.854404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260488, -0.500449, 0.825649,
		0.017880, 0.852525, 0.522380,
		-0.965312, 0.150836, -0.213124,
		29.894941, 28.541962, 31.790466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390131, 28.867817, 32.522358>,  <30.570660, 28.436377, 31.939653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390131, 28.867817, 32.522358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.062521, 28.730301, 32.338615>,  <29.865955, 28.647791, 32.228371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.062521, 28.730301, 32.338615>,  <30.390131, 28.867817, 32.522358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062521, 28.730301, 32.338615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348359, -0.338197, 0.874225,
		-0.455904, 0.876031, 0.157229,
		-0.819023, -0.343790, -0.459358,
		29.816814, 28.627163, 32.200809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825615, 29.022045, 32.978680>,  <30.390131, 28.867817, 32.522358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825615, 29.022045, 32.978680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.688595, 28.734039, 32.737270>,  <29.606382, 28.561235, 32.592426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.688595, 28.734039, 32.737270>,  <29.825615, 29.022045, 32.978680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688595, 28.734039, 32.737270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513626, -0.394363, 0.762015,
		-0.786669, 0.571011, -0.234731,
		-0.342550, -0.720017, -0.603519,
		29.585831, 28.518034, 32.556213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127474, 29.001873, 33.054447>,  <29.825615, 29.022045, 32.978680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127474, 29.001873, 33.054447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.217184, 28.627445, 32.946018>,  <29.271009, 28.402788, 32.880962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.217184, 28.627445, 32.946018>,  <29.127474, 29.001873, 33.054447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217184, 28.627445, 32.946018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618494, -0.351677, 0.702701,
		-0.753105, 0.010058, -0.657824,
		0.224273, -0.936067, -0.271070,
		29.284466, 28.346624, 32.864697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452778, 28.637215, 33.071178>,  <29.127474, 29.001873, 33.054447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452778, 28.637215, 33.071178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.722752, 28.342617, 33.053116>,  <28.884737, 28.165859, 33.042278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.722752, 28.342617, 33.053116>,  <28.452778, 28.637215, 33.071178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722752, 28.342617, 33.053116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571782, -0.560713, 0.598887,
		-0.466398, -0.378388, -0.799559,
		0.674935, -0.736494, -0.045160,
		28.925232, 28.121670, 33.039566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125891, 28.011047, 32.910416>,  <28.452778, 28.637215, 33.071178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125891, 28.011047, 32.910416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.457588, 27.868187, 33.082367>,  <28.656607, 27.782471, 33.185539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.457588, 27.868187, 33.082367>,  <28.125891, 28.011047, 32.910416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457588, 27.868187, 33.082367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558802, -0.516474, 0.648841,
		-0.009713, -0.778265, -0.627860,
		0.829244, -0.357152, 0.429880,
		28.706362, 27.761042, 33.211330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865765, 27.344097, 33.129261>,  <28.125891, 28.011047, 32.910416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865765, 27.344097, 33.129261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.205175, 27.386478, 33.336636>,  <28.408821, 27.411907, 33.461060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.205175, 27.386478, 33.336636>,  <27.865765, 27.344097, 33.129261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205175, 27.386478, 33.336636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388092, -0.541398, 0.745837,
		0.359703, -0.834064, -0.418272,
		0.848528, 0.105951, 0.518436,
		28.459734, 27.418264, 33.492165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099760, 26.692535, 33.490013>,  <27.865765, 27.344097, 33.129261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099760, 26.692535, 33.490013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.231544, 27.013046, 33.689777>,  <28.310616, 27.205353, 33.809635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.231544, 27.013046, 33.689777>,  <28.099760, 26.692535, 33.490013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231544, 27.013046, 33.689777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739768, -0.109601, 0.663876,
		0.586685, -0.588166, 0.556652,
		0.329460, 0.801279, 0.499407,
		28.330383, 27.253429, 33.839600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343067, 26.496729, 34.165482>,  <28.099760, 26.692535, 33.490013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343067, 26.496729, 34.165482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.223223, 26.878071, 34.180145>,  <28.151316, 27.106876, 34.188946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.223223, 26.878071, 34.180145>,  <28.343067, 26.496729, 34.165482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223223, 26.878071, 34.180145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676292, -0.239329, 0.696671,
		0.672951, 0.183934, 0.716453,
		-0.299610, 0.953357, 0.036664,
		28.133339, 27.164078, 34.191143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276094, 25.785152, 34.173115>,  <28.343067, 26.496729, 34.165482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276094, 25.785152, 34.173115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.209337, 25.435501, 33.990665>,  <28.169283, 25.225710, 33.881195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.209337, 25.435501, 33.990665>,  <28.276094, 25.785152, 34.173115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209337, 25.435501, 33.990665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047463, 0.454951, -0.889251,
		0.984832, -0.170060, -0.034440,
		-0.166895, -0.874128, -0.456122,
		28.159269, 25.173264, 33.853828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780489, 25.716591, 33.704411>,  <28.276094, 25.785152, 34.173115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780489, 25.716591, 33.704411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.474098, 25.496082, 33.572121>,  <28.290264, 25.363777, 33.492748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.474098, 25.496082, 33.572121>,  <28.780489, 25.716591, 33.704411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474098, 25.496082, 33.572121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052466, 0.459124, -0.886822,
		0.640721, -0.696638, -0.322756,
		-0.765979, -0.551272, -0.330721,
		28.244305, 25.330702, 33.472904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966284, 25.462292, 33.121349>,  <28.780489, 25.716591, 33.704411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966284, 25.462292, 33.121349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.573593, 25.390701, 33.095474>,  <28.337978, 25.347748, 33.079948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.573593, 25.390701, 33.095474>,  <28.966284, 25.462292, 33.121349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573593, 25.390701, 33.095474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004848, 0.363328, -0.931649,
		0.190245, -0.914309, -0.357556,
		-0.981725, -0.178975, -0.064689,
		28.279076, 25.337009, 33.076069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851059, 24.988476, 32.548592>,  <28.966284, 25.462292, 33.121349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851059, 24.988476, 32.548592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.520916, 25.198719, 32.631077>,  <28.322830, 25.324865, 32.680569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.520916, 25.198719, 32.631077>,  <28.851059, 24.988476, 32.548592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520916, 25.198719, 32.631077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069788, 0.457394, -0.886522,
		-0.560280, -0.717307, -0.414195,
		-0.825358, 0.525606, 0.206209,
		28.273308, 25.356401, 32.692940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508175, 24.922787, 31.949533>,  <28.851059, 24.988476, 32.548592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508175, 24.922787, 31.949533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.318159, 25.219711, 32.138557>,  <28.204149, 25.397865, 32.251972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.318159, 25.219711, 32.138557>,  <28.508175, 24.922787, 31.949533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318159, 25.219711, 32.138557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067235, 0.504832, -0.860595,
		-0.877393, -0.440588, -0.189905,
		-0.475037, 0.742312, 0.472559,
		28.175648, 25.442406, 32.280327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109962, 25.205465, 31.426876>,  <28.508175, 24.922787, 31.949533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109962, 25.205465, 31.426876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.105772, 25.476974, 31.720585>,  <28.103258, 25.639879, 31.896811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.105772, 25.476974, 31.720585>,  <28.109962, 25.205465, 31.426876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105772, 25.476974, 31.720585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232056, 0.712616, -0.662064,
		-0.972646, -0.177328, 0.150049,
		-0.010476, 0.678774, 0.734273,
		28.102629, 25.680607, 31.940866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546677, 25.541389, 31.412184>,  <28.109962, 25.205465, 31.426876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546677, 25.541389, 31.412184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.805666, 25.789188, 31.589725>,  <27.961060, 25.937868, 31.696251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.805666, 25.789188, 31.589725>,  <27.546677, 25.541389, 31.412184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805666, 25.789188, 31.589725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261218, 0.727538, -0.634392,
		-0.715923, 0.294809, 0.632884,
		0.647472, 0.619496, 0.443852,
		27.999908, 25.975037, 31.722881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139027, 26.101025, 31.442579>,  <27.546677, 25.541389, 31.412184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139027, 26.101025, 31.442579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.518744, 26.226162, 31.455086>,  <27.746572, 26.301245, 31.462589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.518744, 26.226162, 31.455086>,  <27.139027, 26.101025, 31.442579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518744, 26.226162, 31.455086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171965, 0.599906, -0.781371,
		-0.263203, 0.736371, 0.623283,
		0.949291, 0.312842, 0.031267,
		27.803532, 26.320015, 31.464466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117819, 26.692772, 31.187052>,  <27.139027, 26.101025, 31.442579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117819, 26.692772, 31.187052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.509575, 26.616661, 31.159954>,  <27.744629, 26.570993, 31.143696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.509575, 26.616661, 31.159954>,  <27.117819, 26.692772, 31.187052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509575, 26.616661, 31.159954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085666, 0.695076, -0.713814,
		0.182911, 0.693299, 0.697051,
		0.979390, -0.190278, -0.067745,
		27.803392, 26.559578, 31.139631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422045, 27.325247, 31.202818>,  <27.117819, 26.692772, 31.187052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422045, 27.325247, 31.202818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.728014, 27.116920, 31.051216>,  <27.911594, 26.991924, 30.960255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.728014, 27.116920, 31.051216>,  <27.422045, 27.325247, 31.202818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728014, 27.116920, 31.051216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218530, 0.763340, -0.607912,
		0.605920, 0.382181, 0.697709,
		0.764922, -0.520816, -0.379005,
		27.957491, 26.960676, 30.937515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010355, 27.769260, 31.138037>,  <27.422045, 27.325247, 31.202818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010355, 27.769260, 31.138037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.070499, 27.478661, 30.869831>,  <28.106586, 27.304300, 30.708908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.070499, 27.478661, 30.869831>,  <28.010355, 27.769260, 31.138037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070499, 27.478661, 30.869831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257205, 0.683615, -0.683020,
		0.954587, -0.069758, 0.289650,
		0.150363, -0.726502, -0.670512,
		28.115608, 27.260710, 30.668678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666218, 27.815241, 30.760235>,  <28.010355, 27.769260, 31.138037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666218, 27.815241, 30.760235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.490192, 27.571011, 30.496861>,  <28.384577, 27.424473, 30.338835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.490192, 27.571011, 30.496861>,  <28.666218, 27.815241, 30.760235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490192, 27.571011, 30.496861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385675, 0.533663, -0.752635,
		0.810925, -0.585150, 0.000638,
		-0.440064, -0.610577, -0.658438,
		28.358173, 27.387838, 30.299330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225746, 27.671564, 30.304735>,  <28.666218, 27.815241, 30.760235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225746, 27.671564, 30.304735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.899797, 27.566494, 30.098053>,  <28.704227, 27.503452, 29.974045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.899797, 27.566494, 30.098053>,  <29.225746, 27.671564, 30.304735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899797, 27.566494, 30.098053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388766, 0.413515, -0.823327,
		0.429930, -0.871785, -0.234844,
		-0.814875, -0.262674, -0.516702,
		28.655336, 27.487692, 29.943041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473490, 27.528114, 29.626320>,  <29.225746, 27.671564, 30.304735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473490, 27.528114, 29.626320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.080200, 27.587231, 29.583561>,  <28.844227, 27.622702, 29.557905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.080200, 27.587231, 29.583561>,  <29.473490, 27.528114, 29.626320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080200, 27.587231, 29.583561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176921, 0.630196, -0.756010,
		-0.044368, -0.762240, -0.645772,
		-0.983224, 0.147793, -0.106896,
		28.785233, 27.631569, 29.551493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910372, 27.051397, 29.239473>,  <29.473490, 27.528114, 29.626320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910372, 27.051397, 29.239473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.278097, 26.942196, 29.126099>,  <30.498732, 26.876675, 29.058073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.278097, 26.942196, 29.126099>,  <29.910372, 27.051397, 29.239473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278097, 26.942196, 29.126099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186036, -0.333192, 0.924323,
		-0.346800, -0.902465, -0.255514,
		0.919304, -0.273020, -0.283442,
		30.553890, 26.860294, 29.041067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053009, 26.418175, 29.509306>,  <29.910372, 27.051397, 29.239473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053009, 26.418175, 29.509306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.414366, 26.585373, 29.471020>,  <30.631180, 26.685692, 29.448048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.414366, 26.585373, 29.471020>,  <30.053009, 26.418175, 29.509306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414366, 26.585373, 29.471020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190712, -0.191716, 0.962743,
		0.384074, -0.887988, -0.252911,
		0.903392, 0.417998, -0.095717,
		30.685383, 26.710772, 29.442305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534975, 25.889149, 29.606625>,  <30.053009, 26.418175, 29.509306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534975, 25.889149, 29.606625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.757519, 26.210545, 29.691357>,  <30.891045, 26.403381, 29.742195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.757519, 26.210545, 29.691357>,  <30.534975, 25.889149, 29.606625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757519, 26.210545, 29.691357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141697, -0.342932, 0.928612,
		0.818771, -0.486626, -0.304645,
		0.556360, 0.803488, 0.211829,
		30.924427, 26.451591, 29.754906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015020, 25.591682, 29.861082>,  <30.534975, 25.889149, 29.606625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015020, 25.591682, 29.861082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.079988, 25.967197, 29.982605>,  <31.118969, 26.192507, 30.055519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.079988, 25.967197, 29.982605>,  <31.015020, 25.591682, 29.861082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079988, 25.967197, 29.982605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218412, -0.334464, 0.916750,
		0.962245, -0.082545, -0.259367,
		0.162422, 0.938787, 0.303808,
		31.128716, 26.248833, 30.073748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628279, 25.541410, 30.190607>,  <31.015020, 25.591682, 29.861082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628279, 25.541410, 30.190607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.425203, 25.856758, 30.329590>,  <31.303358, 26.045967, 30.412979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.425203, 25.856758, 30.329590>,  <31.628279, 25.541410, 30.190607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425203, 25.856758, 30.329590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099647, -0.346856, 0.932610,
		0.855760, 0.508096, 0.097535,
		-0.507686, 0.788371, 0.347456,
		31.272898, 26.093269, 30.433826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133175, 25.818216, 30.706726>,  <31.628279, 25.541410, 30.190607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133175, 25.818216, 30.706726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.782972, 25.992435, 30.790421>,  <31.572849, 26.096968, 30.840637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.782972, 25.992435, 30.790421>,  <32.133175, 25.818216, 30.706726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782972, 25.992435, 30.790421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066112, -0.320974, 0.944778,
		0.478655, 0.840996, 0.252221,
		-0.875511, 0.435547, 0.209236,
		31.520319, 26.123100, 30.853191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159103, 26.144777, 31.367115>,  <32.133175, 25.818216, 30.706726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159103, 26.144777, 31.367115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.764204, 26.102249, 31.319729>,  <31.527264, 26.076733, 31.291298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.764204, 26.102249, 31.319729>,  <32.159103, 26.144777, 31.367115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764204, 26.102249, 31.319729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050396, -0.497171, 0.866187,
		-0.150989, 0.861114, 0.485475,
		-0.987250, -0.106319, -0.118464,
		31.468029, 26.070353, 31.284189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619438, 26.426201, 31.874424>,  <32.159103, 26.144777, 31.367115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619438, 26.426201, 31.874424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988499, 26.369911, 32.018040>,  <33.209934, 26.336138, 32.104210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988499, 26.369911, 32.018040>,  <32.619438, 26.426201, 31.874424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988499, 26.369911, 32.018040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383254, 0.437820, -0.813284,
		-0.042746, 0.887981, 0.457889,
		0.922653, -0.140723, 0.359037,
		33.265293, 26.327694, 32.125751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974068, 27.114485, 32.046768>,  <32.619438, 26.426201, 31.874424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974068, 27.114485, 32.046768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272614, 26.859497, 31.970268>,  <33.451740, 26.706505, 31.924368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272614, 26.859497, 31.970268>,  <32.974068, 27.114485, 32.046768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272614, 26.859497, 31.970268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373801, 0.639269, -0.672018,
		0.550649, 0.430080, 0.715413,
		0.746363, -0.637469, -0.191248,
		33.496521, 26.668257, 31.912893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602856, 27.519169, 32.028740>,  <32.974068, 27.114485, 32.046768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602856, 27.519169, 32.028740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.673096, 27.176502, 31.834717>,  <33.715240, 26.970901, 31.718302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.673096, 27.176502, 31.834717>,  <33.602856, 27.519169, 32.028740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673096, 27.176502, 31.834717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388196, 0.513051, -0.765560,
		0.904691, -0.053863, 0.422649,
		0.175605, -0.856666, -0.485062,
		33.725777, 26.919502, 31.689198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293800, 27.599192, 31.764721>,  <33.602856, 27.519169, 32.028740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293800, 27.599192, 31.764721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.156101, 27.296211, 31.542816>,  <34.073483, 27.114424, 31.409674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.156101, 27.296211, 31.542816>,  <34.293800, 27.599192, 31.764721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156101, 27.296211, 31.542816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471978, 0.371174, -0.799666,
		0.811620, -0.537122, 0.229723,
		-0.344252, -0.757449, -0.554762,
		34.052826, 27.068977, 31.376387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919899, 27.391508, 31.305893>,  <34.293800, 27.599192, 31.764721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919899, 27.391508, 31.305893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.571346, 27.281372, 31.143471>,  <34.362213, 27.215290, 31.046017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.571346, 27.281372, 31.143471>,  <34.919899, 27.391508, 31.305893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571346, 27.281372, 31.143471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280697, 0.399005, -0.872928,
		0.402425, -0.874616, -0.270373,
		-0.871357, -0.275395, -0.406072,
		34.309933, 27.198771, 31.021654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198708, 27.237389, 30.593031>,  <34.919899, 27.391508, 31.305893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198708, 27.237389, 30.593031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.802876, 27.283806, 30.558945>,  <34.565376, 27.311657, 30.538492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.802876, 27.283806, 30.558945>,  <35.198708, 27.237389, 30.593031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802876, 27.283806, 30.558945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140255, 0.643403, -0.752570,
		-0.032504, -0.756681, -0.652975,
		-0.989582, 0.116045, -0.085215,
		34.506001, 27.318619, 30.533381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946339, 27.109957, 29.752708>,  <35.198708, 27.237389, 30.593031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946339, 27.109957, 29.752708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690517, 27.326099, 29.971428>,  <34.537025, 27.455786, 30.102659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690517, 27.326099, 29.971428>,  <34.946339, 27.109957, 29.752708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690517, 27.326099, 29.971428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031767, 0.692100, -0.721102,
		-0.768092, -0.478552, -0.425468,
		-0.639551, 0.540357, 0.546799,
		34.498653, 27.488207, 30.135468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.569233, 28.517546, 34.942047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.227144, 28.550934, 34.737450>,  <31.021891, 28.570967, 34.614693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.227144, 28.550934, 34.737450>,  <31.569233, 28.517546, 34.942047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227144, 28.550934, 34.737450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255434, 0.926631, -0.275876,
		0.450940, -0.366588, -0.813797,
		-0.855223, 0.083468, -0.511494,
		30.970577, 28.575974, 34.584000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718027, 28.787600, 34.286221>,  <31.569233, 28.517546, 34.942047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718027, 28.787600, 34.286221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.331047, 28.863277, 34.353447>,  <31.098860, 28.908684, 34.393784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.331047, 28.863277, 34.353447>,  <31.718027, 28.787600, 34.286221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331047, 28.863277, 34.353447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129569, 0.940802, -0.313216,
		-0.217379, -0.281244, -0.934691,
		-0.967449, 0.189193, 0.168070,
		31.040812, 28.920036, 34.403870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462713, 29.070820, 33.686680>,  <31.718027, 28.787600, 34.286221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462713, 29.070820, 33.686680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.183796, 29.183086, 33.950500>,  <31.016445, 29.250446, 34.108791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.183796, 29.183086, 33.950500>,  <31.462713, 29.070820, 33.686680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183796, 29.183086, 33.950500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070130, 0.942449, -0.326911,
		-0.713346, -0.181699, -0.676848,
		-0.697295, 0.280668, 0.659550,
		30.974607, 29.267286, 34.148365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081572, 29.521894, 33.374424>,  <31.462713, 29.070820, 33.686680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081572, 29.521894, 33.374424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.937656, 29.607815, 33.737614>,  <30.851307, 29.659367, 33.955528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.937656, 29.607815, 33.737614>,  <31.081572, 29.521894, 33.374424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937656, 29.607815, 33.737614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108304, 0.956946, -0.269303,
		-0.926727, -0.195229, -0.321034,
		-0.359788, 0.214801, 0.907972,
		30.829720, 29.672255, 34.010006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472881, 29.996893, 33.267517>,  <31.081572, 29.521894, 33.374424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472881, 29.996893, 33.267517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.638601, 30.046021, 33.628242>,  <30.738033, 30.075497, 33.844677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.638601, 30.046021, 33.628242>,  <30.472881, 29.996893, 33.267517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638601, 30.046021, 33.628242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243286, 0.939854, -0.239764,
		-0.877023, 0.318733, 0.359500,
		0.414298, 0.122817, 0.901816,
		30.762890, 30.082865, 33.898788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158487, 30.515156, 33.546932>,  <30.472881, 29.996893, 33.267517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158487, 30.515156, 33.546932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.520731, 30.490784, 33.714821>,  <30.738077, 30.476160, 33.815552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.520731, 30.490784, 33.714821>,  <30.158487, 30.515156, 33.546932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520731, 30.490784, 33.714821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185289, 0.947027, -0.262312,
		-0.381502, 0.315321, 0.868924,
		0.905607, -0.060929, 0.419718,
		30.792414, 30.472506, 33.840736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176445, 31.199526, 33.822060>,  <30.158487, 30.515156, 33.546932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176445, 31.199526, 33.822060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.540361, 31.033676, 33.814358>,  <30.758711, 30.934166, 33.809738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.540361, 31.033676, 33.814358>,  <30.176445, 31.199526, 33.822060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540361, 31.033676, 33.814358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396491, 0.881851, -0.255214,
		0.122794, 0.224559, 0.966693,
		0.909789, -0.414624, -0.019251,
		30.813297, 30.909288, 33.808582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641844, 31.548578, 34.316826>,  <30.176445, 31.199526, 33.822060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641844, 31.548578, 34.316826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.868839, 31.390450, 34.027916>,  <31.005037, 31.295572, 33.854572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.868839, 31.390450, 34.027916>,  <30.641844, 31.548578, 34.316826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868839, 31.390450, 34.027916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383351, 0.903182, -0.193142,
		0.728697, -0.167277, 0.664093,
		0.567488, -0.395323, -0.722272,
		31.039085, 31.271852, 33.811234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242292, 31.958113, 34.302414>,  <30.641844, 31.548578, 34.316826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242292, 31.958113, 34.302414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.303474, 31.759369, 33.960716>,  <31.340183, 31.640121, 33.755699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.303474, 31.759369, 33.960716>,  <31.242292, 31.958113, 34.302414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303474, 31.759369, 33.960716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585119, 0.742144, -0.326890,
		0.796392, -0.449835, 0.404239,
		0.152957, -0.496861, -0.854245,
		31.349361, 31.610312, 33.704441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888182, 32.211533, 34.062447>,  <31.242292, 31.958113, 34.302414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888182, 32.211533, 34.062447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.722956, 32.024734, 33.749706>,  <31.623819, 31.912655, 33.562061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.722956, 32.024734, 33.749706>,  <31.888182, 32.211533, 34.062447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722956, 32.024734, 33.749706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575254, 0.531766, -0.621537,
		0.706017, -0.706499, 0.048987,
		-0.413065, -0.466995, -0.781852,
		31.599035, 31.884636, 33.515152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467606, 31.952995, 33.547306>,  <31.888182, 32.211533, 34.062447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467606, 31.952995, 33.547306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.136463, 31.967411, 33.323395>,  <31.937777, 31.976061, 33.189049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.136463, 31.967411, 33.323395>,  <32.467606, 31.952995, 33.547306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136463, 31.967411, 33.323395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494496, 0.517990, -0.697968,
		0.264804, -0.854627, -0.446645,
		-0.827860, 0.036039, -0.559776,
		31.888105, 31.978222, 33.155460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718170, 31.908144, 32.897800>,  <32.467606, 31.952995, 33.547306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718170, 31.908144, 32.897800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.356365, 32.074043, 32.858109>,  <32.139282, 32.173584, 32.834293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.356365, 32.074043, 32.858109>,  <32.718170, 31.908144, 32.897800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356365, 32.074043, 32.858109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346712, 0.579708, -0.737380,
		-0.248305, -0.701371, -0.668150,
		-0.904508, 0.414751, -0.099230,
		32.085014, 32.198467, 32.828339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780296, 31.275967, 32.643238>,  <32.718170, 31.908144, 32.897800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780296, 31.275967, 32.643238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.155621, 31.147823, 32.591156>,  <33.380814, 31.070938, 32.559906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.155621, 31.147823, 32.591156>,  <32.780296, 31.275967, 32.643238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155621, 31.147823, 32.591156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165648, -0.746899, 0.643974,
		-0.303550, -0.582678, -0.753886,
		0.938306, -0.320358, -0.130201,
		33.437111, 31.051716, 32.552097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729649, 30.577627, 32.580654>,  <32.780296, 31.275967, 32.643238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729649, 30.577627, 32.580654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.112602, 30.623642, 32.686623>,  <33.342373, 30.651251, 32.750202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.112602, 30.623642, 32.686623>,  <32.729649, 30.577627, 32.580654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112602, 30.623642, 32.686623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052092, -0.833435, 0.550157,
		0.284085, -0.540511, -0.791924,
		0.957383, 0.115038, 0.264922,
		33.399818, 30.658154, 32.766098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079441, 29.942581, 32.406998>,  <32.729649, 30.577627, 32.580654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079441, 29.942581, 32.406998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.306103, 30.126484, 32.680500>,  <33.442101, 30.236826, 32.844601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.306103, 30.126484, 32.680500>,  <33.079441, 29.942581, 32.406998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306103, 30.126484, 32.680500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138664, -0.871225, 0.470892,
		0.812204, -0.172020, -0.557436,
		0.566655, 0.459756, 0.683759,
		33.476101, 30.264410, 32.885628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717060, 29.425308, 32.547482>,  <33.079441, 29.942581, 32.406998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717060, 29.425308, 32.547482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.644028, 29.685730, 32.842178>,  <33.600208, 29.841984, 33.018997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.644028, 29.685730, 32.842178>,  <33.717060, 29.425308, 32.547482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644028, 29.685730, 32.842178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034346, -0.744659, 0.666561,
		0.982592, 0.147003, 0.113596,
		-0.182577, 0.651056, 0.736745,
		33.589256, 29.881046, 33.063202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004131, 29.150953, 33.147812>,  <33.717060, 29.425308, 32.547482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004131, 29.150953, 33.147812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.796291, 29.440018, 33.330143>,  <33.671589, 29.613457, 33.439541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.796291, 29.440018, 33.330143>,  <34.004131, 29.150953, 33.147812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796291, 29.440018, 33.330143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040490, -0.553726, 0.831714,
		0.853449, 0.413703, 0.316977,
		-0.519602, 0.722660, 0.455826,
		33.640411, 29.656816, 33.466892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475079, 29.350975, 33.752827>,  <34.004131, 29.150953, 33.147812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475079, 29.350975, 33.752827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.096291, 29.458088, 33.823864>,  <33.869019, 29.522356, 33.866486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.096291, 29.458088, 33.823864>,  <34.475079, 29.350975, 33.752827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096291, 29.458088, 33.823864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013136, -0.519975, 0.854081,
		0.321051, 0.811122, 0.488883,
		-0.946971, 0.267782, 0.177593,
		33.812199, 29.538422, 33.877140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428101, 29.520124, 34.464199>,  <34.475079, 29.350975, 33.752827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428101, 29.520124, 34.464199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.035957, 29.486095, 34.393036>,  <33.800671, 29.465677, 34.350338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.035957, 29.486095, 34.393036>,  <34.428101, 29.520124, 34.464199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035957, 29.486095, 34.393036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123295, -0.439685, 0.889649,
		-0.153910, 0.894114, 0.420561,
		-0.980362, -0.085073, -0.177911,
		33.741848, 29.460573, 34.339661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025986, 29.794731, 35.009357>,  <34.428101, 29.520124, 34.464199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025986, 29.794731, 35.009357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.808567, 29.518517, 34.818478>,  <33.678116, 29.352789, 34.703949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.808567, 29.518517, 34.818478>,  <34.025986, 29.794731, 35.009357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808567, 29.518517, 34.818478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138794, -0.486753, 0.862443,
		-0.827827, 0.535007, 0.168729,
		-0.543543, -0.690535, -0.477203,
		33.645504, 29.311356, 34.675316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374062, 29.591661, 35.468349>,  <34.025986, 29.794731, 35.009357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374062, 29.591661, 35.468349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.367504, 29.291332, 35.204231>,  <33.363567, 29.111134, 35.045761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.367504, 29.291332, 35.204231>,  <33.374062, 29.591661, 35.468349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367504, 29.291332, 35.204231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422459, -0.593343, 0.685181,
		-0.906234, 0.290184, -0.307463,
		-0.016398, -0.750824, -0.660298,
		33.362583, 29.066086, 35.006142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719429, 29.291918, 35.476486>,  <33.374062, 29.591661, 35.468349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719429, 29.291918, 35.476486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.938332, 28.992062, 35.327595>,  <33.069672, 28.812149, 35.238258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.938332, 28.992062, 35.327595>,  <32.719429, 29.291918, 35.476486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938332, 28.992062, 35.327595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446484, -0.637646, 0.627741,
		-0.707930, -0.177340, -0.683656,
		0.547254, -0.749638, -0.372229,
		33.102509, 28.767170, 35.215927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269524, 28.749773, 35.367542>,  <32.719429, 29.291918, 35.476486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269524, 28.749773, 35.367542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.613735, 28.547283, 35.344803>,  <32.820263, 28.425789, 35.331158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.613735, 28.547283, 35.344803>,  <32.269524, 28.749773, 35.367542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613735, 28.547283, 35.344803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372512, -0.701464, 0.607603,
		-0.347460, -0.501682, -0.792203,
		0.860526, -0.506224, -0.056848,
		32.871895, 28.395416, 35.327747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077560, 28.032043, 35.272118>,  <32.269524, 28.749773, 35.367542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077560, 28.032043, 35.272118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.451672, 28.026802, 35.413589>,  <32.676136, 28.023657, 35.498470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.451672, 28.026802, 35.413589>,  <32.077560, 28.032043, 35.272118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451672, 28.026802, 35.413589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232685, -0.775747, 0.586579,
		0.266678, -0.630908, -0.728586,
		0.935276, -0.013103, 0.353677,
		32.732254, 28.022871, 35.519691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265182, 27.402529, 35.216961>,  <32.077560, 28.032043, 35.272118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265182, 27.402529, 35.216961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.472229, 27.558552, 35.521572>,  <32.596458, 27.652164, 35.704338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.472229, 27.558552, 35.521572>,  <32.265182, 27.402529, 35.216961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472229, 27.558552, 35.521572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370688, -0.699941, 0.610470,
		0.771144, -0.598280, -0.217712,
		0.517617, 0.390057, 0.761531,
		32.627514, 27.675570, 35.750031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611042, 26.785784, 35.550571>,  <32.265182, 27.402529, 35.216961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611042, 26.785784, 35.550571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.645554, 27.084888, 35.813908>,  <32.666260, 27.264351, 35.971909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.645554, 27.084888, 35.813908>,  <32.611042, 26.785784, 35.550571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645554, 27.084888, 35.813908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317372, -0.605746, 0.729621,
		0.944368, -0.271886, 0.185058,
		0.086276, 0.747763, 0.658336,
		32.671436, 27.309217, 36.011410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230343, 26.338943, 35.258949>,  <32.611042, 26.785784, 35.550571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230343, 26.338943, 35.258949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.025875, 26.024570, 35.119801>,  <32.903194, 25.835947, 35.036312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.025875, 26.024570, 35.119801>,  <33.230343, 26.338943, 35.258949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025875, 26.024570, 35.119801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470268, 0.083036, -0.878608,
		0.719415, -0.612709, 0.327155,
		-0.511165, -0.785934, -0.347874,
		32.872524, 25.788790, 35.015438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718430, 26.035221, 34.769993>,  <33.230343, 26.338943, 35.258949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718430, 26.035221, 34.769993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.368305, 25.880974, 34.653282>,  <33.158230, 25.788425, 34.583256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.368305, 25.880974, 34.653282>,  <33.718430, 26.035221, 34.769993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368305, 25.880974, 34.653282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312456, 0.009496, -0.949885,
		0.369063, -0.922610, 0.112177,
		-0.875308, -0.385617, -0.291779,
		33.105713, 25.765289, 34.565750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951851, 25.443369, 34.461285>,  <33.718430, 26.035221, 34.769993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951851, 25.443369, 34.461285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.593578, 25.557304, 34.324684>,  <33.378616, 25.625666, 34.242725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.593578, 25.557304, 34.324684>,  <33.951851, 25.443369, 34.461285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593578, 25.557304, 34.324684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382616, 0.102254, -0.918232,
		-0.226628, -0.953106, -0.200571,
		-0.895681, 0.284839, -0.341500,
		33.324875, 25.642756, 34.222233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785049, 25.054802, 33.848133>,  <33.951851, 25.443369, 34.461285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785049, 25.054802, 33.848133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.556770, 25.382538, 33.826279>,  <33.419804, 25.579180, 33.813164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.556770, 25.382538, 33.826279>,  <33.785049, 25.054802, 33.848133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556770, 25.382538, 33.826279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333539, 0.170493, -0.927191,
		-0.750369, -0.547372, -0.370582,
		-0.570700, 0.819339, -0.054638,
		33.385559, 25.628340, 33.809887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377811, 24.996048, 33.173107>,  <33.785049, 25.054802, 33.848133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377811, 24.996048, 33.173107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.340515, 25.384628, 33.260368>,  <33.318138, 25.617777, 33.312725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.340515, 25.384628, 33.260368>,  <33.377811, 24.996048, 33.173107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340515, 25.384628, 33.260368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283863, 0.235949, -0.929381,
		-0.954320, -0.024734, -0.297760,
		-0.093244, 0.971450, 0.218150,
		33.312542, 25.676064, 33.325813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058022, 25.267870, 32.502136>,  <33.377811, 24.996048, 33.173107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058022, 25.267870, 32.502136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.173717, 25.597504, 32.696960>,  <33.243137, 25.795284, 32.813854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.173717, 25.597504, 32.696960>,  <33.058022, 25.267870, 32.502136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173717, 25.597504, 32.696960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267136, 0.419105, -0.867749,
		-0.919226, 0.381101, -0.098919,
		0.289243, 0.824083, 0.487058,
		33.260490, 25.844728, 32.843079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702393, 25.783895, 32.158199>,  <33.058022, 25.267870, 32.502136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702393, 25.783895, 32.158199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.011692, 25.949623, 32.350212>,  <33.197273, 26.049059, 32.465420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.011692, 25.949623, 32.350212>,  <32.702393, 25.783895, 32.158199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011692, 25.949623, 32.350212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298478, 0.430089, -0.852018,
		-0.559460, 0.802100, 0.208902,
		0.773250, 0.414317, 0.480027,
		33.243668, 26.073917, 32.494221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875643, 25.961683, 32.054985>,  <32.702393, 25.783895, 32.158199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875643, 25.961683, 32.054985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.534531, 25.881142, 31.862225>,  <31.329865, 25.832817, 31.746569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.534531, 25.881142, 31.862225>,  <31.875643, 25.961683, 32.054985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534531, 25.881142, 31.862225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380484, -0.392551, 0.837338,
		-0.357769, 0.897419, 0.258148,
		-0.852780, -0.201353, -0.481896,
		31.278696, 25.820736, 31.717655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283886, 26.112635, 32.612972>,  <31.875643, 25.961683, 32.054985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283886, 26.112635, 32.612972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.127333, 25.887585, 32.321693>,  <31.033400, 25.752554, 32.146927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.127333, 25.887585, 32.321693>,  <31.283886, 26.112635, 32.612972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127333, 25.887585, 32.321693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498369, -0.535634, 0.681707,
		-0.773593, 0.629720, -0.070756,
		-0.391385, -0.562627, -0.728196,
		31.009916, 25.718796, 32.103233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528975, 26.027248, 32.745869>,  <31.283886, 26.112635, 32.612972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528975, 26.027248, 32.745869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.634968, 25.704491, 32.534698>,  <30.698563, 25.510836, 32.407997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.634968, 25.704491, 32.534698>,  <30.528975, 26.027248, 32.745869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634968, 25.704491, 32.534698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536749, -0.578265, 0.614418,
		-0.801052, 0.120555, -0.586329,
		0.264982, -0.806893, -0.527928,
		30.714462, 25.462423, 32.376320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912003, 25.602844, 32.533340>,  <30.528975, 26.027248, 32.745869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912003, 25.602844, 32.533340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.218256, 25.346169, 32.515289>,  <30.402008, 25.192163, 32.504459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.218256, 25.346169, 32.515289>,  <29.912003, 25.602844, 32.533340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218256, 25.346169, 32.515289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528709, -0.667691, 0.524076,
		-0.366427, -0.377391, -0.850475,
		0.765636, -0.641689, -0.045130,
		30.447947, 25.153662, 32.501751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726473, 25.008768, 32.162266>,  <29.912003, 25.602844, 32.533340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726473, 25.008768, 32.162266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.014786, 24.870419, 32.402550>,  <30.187773, 24.787409, 32.546719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.014786, 24.870419, 32.402550>,  <29.726473, 25.008768, 32.162266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014786, 24.870419, 32.402550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636121, -0.674329, 0.375009,
		0.275367, -0.652420, -0.706061,
		0.720780, -0.345875, 0.600705,
		30.231020, 24.766657, 32.582760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545223, 24.307920, 32.240707>,  <29.726473, 25.008768, 32.162266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545223, 24.307920, 32.240707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.799232, 24.391083, 32.538303>,  <29.951639, 24.440981, 32.716862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.799232, 24.391083, 32.538303>,  <29.545223, 24.307920, 32.240707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799232, 24.391083, 32.538303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580299, -0.507328, 0.637080,
		0.509899, -0.836297, -0.201518,
		0.635025, 0.207906, 0.743989,
		29.989740, 24.453455, 32.761501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436800, 23.724268, 32.567902>,  <29.545223, 24.307920, 32.240707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436800, 23.724268, 32.567902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.637131, 23.963589, 32.818089>,  <29.757328, 24.107182, 32.968201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.637131, 23.963589, 32.818089>,  <29.436800, 23.724268, 32.567902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637131, 23.963589, 32.818089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602408, -0.277942, 0.748233,
		0.621514, -0.751519, 0.221222,
		0.500825, 0.598304, 0.625466,
		29.787378, 24.143080, 33.005730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579605, 23.414326, 33.049973>,  <29.436800, 23.724268, 32.567902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579605, 23.414326, 33.049973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.603611, 23.767353, 33.236507>,  <29.618015, 23.979170, 33.348427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.603611, 23.767353, 33.236507>,  <29.579605, 23.414326, 33.049973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603611, 23.767353, 33.236507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533331, -0.366555, 0.762362,
		0.843775, -0.294465, 0.448703,
		0.060015, 0.882569, 0.466337,
		29.621616, 24.032124, 33.376408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810263, 23.247322, 33.753960>,  <29.579605, 23.414326, 33.049973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810263, 23.247322, 33.753960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.627640, 23.603161, 33.748653>,  <29.518066, 23.816664, 33.745468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.627640, 23.603161, 33.748653>,  <29.810263, 23.247322, 33.753960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627640, 23.603161, 33.748653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562573, -0.277107, 0.778924,
		0.689251, 0.363087, 0.626978,
		-0.456557, 0.889595, -0.013266,
		29.490673, 23.870039, 33.744675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.039021, 35.029549, 23.392847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647432, 35.087875, 23.449917>,  <31.412479, 35.122871, 23.484159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647432, 35.087875, 23.449917>,  <32.039021, 35.029549, 23.392847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647432, 35.087875, 23.449917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066156, -0.888486, 0.454110,
		0.192982, 0.435121, 0.879447,
		-0.978969, 0.145816, 0.142676,
		31.353741, 35.131618, 23.492720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818722, 34.970573, 24.137320>,  <32.039021, 35.029549, 23.392847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818722, 34.970573, 24.137320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481234, 34.906082, 23.932522>,  <31.278740, 34.867386, 23.809643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481234, 34.906082, 23.932522>,  <31.818722, 34.970573, 24.137320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481234, 34.906082, 23.932522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109058, -0.882444, 0.457602,
		-0.525585, 0.441926, 0.726954,
		-0.843722, -0.161228, -0.511995,
		31.228117, 34.857712, 23.778923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389057, 34.671917, 24.627029>,  <31.818722, 34.970573, 24.137320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389057, 34.671917, 24.627029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224201, 34.575573, 24.275547>,  <31.125286, 34.517765, 24.064657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224201, 34.575573, 24.275547>,  <31.389057, 34.671917, 24.627029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224201, 34.575573, 24.275547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097547, -0.947218, 0.305390,
		-0.905883, 0.211579, 0.366894,
		-0.412142, -0.240859, -0.878707,
		31.100559, 34.503315, 24.011934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888237, 34.192104, 24.806087>,  <31.389057, 34.671917, 24.627029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888237, 34.192104, 24.806087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915838, 34.133488, 24.411369>,  <30.932400, 34.098316, 24.174538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915838, 34.133488, 24.411369>,  <30.888237, 34.192104, 24.806087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915838, 34.133488, 24.411369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120223, -0.983166, 0.137595,
		-0.990346, 0.109141, -0.085459,
		0.069004, -0.146541, -0.986795,
		30.936539, 34.089527, 24.115332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343735, 33.819469, 24.576061>,  <30.888237, 34.192104, 24.806087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343735, 33.819469, 24.576061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625307, 33.748055, 24.301075>,  <30.794250, 33.705204, 24.136084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625307, 33.748055, 24.301075>,  <30.343735, 33.819469, 24.576061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625307, 33.748055, 24.301075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065572, -0.980094, 0.187391,
		-0.707237, -0.086832, -0.701624,
		0.703929, -0.178537, -0.687465,
		30.836485, 33.694492, 24.094835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059797, 33.258507, 24.156187>,  <30.343735, 33.819469, 24.576061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059797, 33.258507, 24.156187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452318, 33.248653, 24.079830>,  <30.687830, 33.242741, 24.034016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452318, 33.248653, 24.079830>,  <30.059797, 33.258507, 24.156187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452318, 33.248653, 24.079830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040340, -0.943430, 0.329109,
		-0.188202, -0.330656, -0.924796,
		0.981302, -0.024633, -0.190894,
		30.746708, 33.241264, 24.022562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120350, 32.498386, 23.987766>,  <30.059797, 33.258507, 24.156187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120350, 32.498386, 23.987766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493414, 32.639507, 24.017906>,  <30.717253, 32.724178, 24.035990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493414, 32.639507, 24.017906>,  <30.120350, 32.498386, 23.987766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493414, 32.639507, 24.017906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306606, -0.885238, 0.349780,
		0.190105, -0.303123, -0.933797,
		0.932659, 0.352803, 0.075349,
		30.773212, 32.745350, 24.040510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472218, 32.080379, 23.596596>,  <30.120350, 32.498386, 23.987766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472218, 32.080379, 23.596596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709146, 32.226128, 23.884037>,  <30.851303, 32.313576, 24.056501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709146, 32.226128, 23.884037>,  <30.472218, 32.080379, 23.596596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709146, 32.226128, 23.884037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183370, -0.929457, 0.320134,
		0.784557, -0.057852, -0.617352,
		0.592323, 0.364367, 0.718603,
		30.886843, 32.335438, 24.099617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062555, 31.738506, 23.606525>,  <30.472218, 32.080379, 23.596596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062555, 31.738506, 23.606525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111509, 31.864445, 23.983013>,  <31.140882, 31.940008, 24.208906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111509, 31.864445, 23.983013>,  <31.062555, 31.738506, 23.606525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111509, 31.864445, 23.983013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282374, -0.920202, 0.271098,
		0.951466, 0.232598, -0.201522,
		0.122384, 0.314845, 0.941220,
		31.148224, 31.958899, 24.265379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564613, 31.312208, 23.923792>,  <31.062555, 31.738506, 23.606525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564613, 31.312208, 23.923792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428551, 31.486004, 24.257381>,  <31.346912, 31.590281, 24.457535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428551, 31.486004, 24.257381>,  <31.564613, 31.312208, 23.923792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428551, 31.486004, 24.257381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236606, -0.818782, 0.523080,
		0.910115, 0.375253, 0.175713,
		-0.340158, 0.434488, 0.833974,
		31.326504, 31.616350, 24.507574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047436, 31.247425, 24.481190>,  <31.564613, 31.312208, 23.923792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047436, 31.247425, 24.481190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715256, 31.327129, 24.689285>,  <31.515947, 31.374952, 24.814142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715256, 31.327129, 24.689285>,  <32.047436, 31.247425, 24.481190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715256, 31.327129, 24.689285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272355, -0.669422, 0.691156,
		0.485982, 0.715659, 0.501651,
		-0.830448, 0.199262, 0.520241,
		31.466122, 31.386908, 24.845358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194984, 31.477718, 25.247433>,  <32.047436, 31.247425, 24.481190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194984, 31.477718, 25.247433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822908, 31.332417, 25.226269>,  <31.599663, 31.245235, 25.213572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822908, 31.332417, 25.226269>,  <32.194984, 31.477718, 25.247433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822908, 31.332417, 25.226269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240602, -0.712163, 0.659496,
		-0.277244, 0.600724, 0.749844,
		-0.930186, -0.363255, -0.052908,
		31.543852, 31.223440, 25.210396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798370, 31.700766, 25.578569>,  <32.194984, 31.477718, 25.247433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798370, 31.700766, 25.578569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173668, 31.565029, 25.551594>,  <33.398846, 31.483587, 25.535408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173668, 31.565029, 25.551594>,  <32.798370, 31.700766, 25.578569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173668, 31.565029, 25.551594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169131, 0.619907, -0.766231,
		0.301822, 0.707504, 0.639016,
		0.938242, -0.339343, -0.067441,
		33.455139, 31.463226, 25.531361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117348, 32.398212, 25.390932>,  <32.798370, 31.700766, 25.578569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117348, 32.398212, 25.390932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394604, 32.116245, 25.330734>,  <33.560955, 31.947065, 25.294615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394604, 32.116245, 25.330734>,  <33.117348, 32.398212, 25.390932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394604, 32.116245, 25.330734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411785, 0.558616, -0.719987,
		0.591601, 0.437078, 0.677473,
		0.693138, -0.704919, -0.150496,
		33.602547, 31.904770, 25.285585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673561, 32.771725, 25.155172>,  <33.117348, 32.398212, 25.390932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673561, 32.771725, 25.155172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811661, 32.407215, 25.065388>,  <33.894520, 32.188511, 25.011517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811661, 32.407215, 25.065388>,  <33.673561, 32.771725, 25.155172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811661, 32.407215, 25.065388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707112, 0.409831, -0.576222,
		0.617087, 0.040222, 0.785866,
		0.345249, -0.911274, -0.224460,
		33.915234, 32.133831, 24.998051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481106, 32.765667, 25.114594>,  <33.673561, 32.771725, 25.155172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481106, 32.765667, 25.114594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319656, 32.468182, 24.901436>,  <34.222786, 32.289692, 24.773540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319656, 32.468182, 24.901436>,  <34.481106, 32.765667, 25.114594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319656, 32.468182, 24.901436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597232, 0.227070, -0.769255,
		0.693111, -0.628751, 0.352520,
		-0.403623, -0.743715, -0.532894,
		34.198570, 32.245068, 24.741568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032429, 32.485813, 24.767710>,  <34.481106, 32.765667, 25.114594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032429, 32.485813, 24.767710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706665, 32.389355, 24.556587>,  <34.511208, 32.331478, 24.429914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706665, 32.389355, 24.556587>,  <35.032429, 32.485813, 24.767710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706665, 32.389355, 24.556587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482143, 0.224936, -0.846724,
		0.322907, -0.944062, -0.066924,
		-0.814413, -0.241146, -0.527806,
		34.462341, 32.317013, 24.398245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186657, 31.952240, 24.363974>,  <35.032429, 32.485813, 24.767710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186657, 31.952240, 24.363974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876289, 32.123207, 24.178387>,  <34.690071, 32.225788, 24.067034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876289, 32.123207, 24.178387>,  <35.186657, 31.952240, 24.363974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876289, 32.123207, 24.178387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582533, 0.203210, -0.786995,
		-0.242093, -0.880920, -0.406659,
		-0.775916, 0.427418, -0.463969,
		34.643513, 32.251434, 24.039196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164669, 31.612349, 23.781029>,  <35.186657, 31.952240, 24.363974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164669, 31.612349, 23.781029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953583, 31.939865, 23.690613>,  <34.826931, 32.136375, 23.636364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953583, 31.939865, 23.690613>,  <35.164669, 31.612349, 23.781029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953583, 31.939865, 23.690613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558150, 0.133662, -0.818903,
		-0.640300, -0.558312, -0.527545,
		-0.527716, 0.818793, -0.226038,
		34.795269, 32.185505, 23.622801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301182, 31.634712, 23.108164>,  <35.164669, 31.612349, 23.781029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301182, 31.634712, 23.108164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154522, 31.996067, 23.197117>,  <35.066525, 32.212879, 23.250488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154522, 31.996067, 23.197117>,  <35.301182, 31.634712, 23.108164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154522, 31.996067, 23.197117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574041, 0.407778, -0.710066,
		-0.732149, -0.132690, -0.668095,
		-0.366653, 0.903388, 0.222385,
		35.044525, 32.267082, 23.263832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006142, 31.926922, 22.489311>,  <35.301182, 31.634712, 23.108164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006142, 31.926922, 22.489311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117863, 32.218758, 22.739014>,  <35.184895, 32.393860, 22.888834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117863, 32.218758, 22.739014>,  <35.006142, 31.926922, 22.489311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117863, 32.218758, 22.739014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520546, 0.431254, -0.736921,
		-0.806860, 0.530775, -0.259334,
		0.279300, 0.729587, 0.624255,
		35.201653, 32.437634, 22.926291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071041, 32.485447, 22.034706>,  <35.006142, 31.926922, 22.489311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071041, 32.485447, 22.034706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268253, 32.618931, 22.356094>,  <35.386581, 32.699020, 22.548927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268253, 32.618931, 22.356094>,  <35.071041, 32.485447, 22.034706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268253, 32.618931, 22.356094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613295, 0.521725, -0.593020,
		-0.617085, 0.785139, 0.052563,
		0.493026, 0.333707, 0.803470,
		35.416161, 32.719044, 22.597136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166283, 33.201248, 21.951574>,  <35.071041, 32.485447, 22.034706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166283, 33.201248, 21.951574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449932, 33.088619, 22.210144>,  <35.620121, 33.021042, 22.365286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449932, 33.088619, 22.210144>,  <35.166283, 33.201248, 21.951574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449932, 33.088619, 22.210144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687337, 0.480463, -0.544723,
		-0.157206, 0.830586, 0.534240,
		0.709122, -0.281569, 0.646424,
		35.662670, 33.004150, 22.404072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586319, 33.784405, 21.992779>,  <35.166283, 33.201248, 21.951574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586319, 33.784405, 21.992779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793110, 33.463936, 22.113350>,  <35.917183, 33.271652, 22.185692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793110, 33.463936, 22.113350>,  <35.586319, 33.784405, 21.992779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793110, 33.463936, 22.113350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745027, 0.247732, -0.619326,
		0.421514, 0.544747, 0.724967,
		0.516973, -0.801174, 0.301429,
		35.948200, 33.223583, 22.203779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213581, 34.072334, 22.114128>,  <35.586319, 33.784405, 21.992779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213581, 34.072334, 22.114128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301758, 33.683548, 22.081394>,  <36.354664, 33.450275, 22.061754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301758, 33.683548, 22.081394>,  <36.213581, 34.072334, 22.114128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301758, 33.683548, 22.081394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840943, 0.231891, -0.488918,
		0.494186, 0.038959, 0.868483,
		0.220441, -0.971961, -0.081835,
		36.367889, 33.391960, 22.056843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921112, 33.884338, 22.313889>,  <36.213581, 34.072334, 22.114128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921112, 33.884338, 22.313889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818584, 33.578815, 22.076942>,  <36.757069, 33.395500, 21.934774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818584, 33.578815, 22.076942>,  <36.921112, 33.884338, 22.313889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818584, 33.578815, 22.076942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923130, -0.011733, -0.384309,
		0.286589, -0.645337, 0.708102,
		-0.256317, -0.763808, -0.592367,
		36.741688, 33.349674, 21.899233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187737, 34.242039, 23.050058>,  <36.921112, 33.884338, 22.313889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187737, 34.242039, 23.050058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520508, 34.459377, 23.095078>,  <37.720173, 34.589779, 23.122089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520508, 34.459377, 23.095078>,  <37.187737, 34.242039, 23.050058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520508, 34.459377, 23.095078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168889, 0.054747, 0.984113,
		0.528553, -0.837722, 0.137311,
		0.831930, 0.543346, 0.112546,
		37.770088, 34.622379, 23.128841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614521, 33.928722, 23.461239>,  <37.187737, 34.242039, 23.050058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614521, 33.928722, 23.461239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723057, 34.308743, 23.522923>,  <37.788177, 34.536755, 23.559933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723057, 34.308743, 23.522923>,  <37.614521, 33.928722, 23.461239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723057, 34.308743, 23.522923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019168, -0.165524, 0.986019,
		0.962292, -0.264593, -0.063124,
		0.271343, 0.950048, 0.154211,
		37.804459, 34.593758, 23.569185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316868, 34.077881, 23.905418>,  <37.614521, 33.928722, 23.461239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316868, 34.077881, 23.905418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049629, 34.373837, 23.936935>,  <37.889286, 34.551411, 23.955847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049629, 34.373837, 23.936935>,  <38.316868, 34.077881, 23.905418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049629, 34.373837, 23.936935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020096, -0.123799, 0.992104,
		0.743804, 0.661237, 0.097579,
		-0.668096, 0.739891, 0.078794,
		37.849201, 34.595802, 23.960573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423199, 34.320656, 24.556583>,  <38.316868, 34.077881, 23.905418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423199, 34.320656, 24.556583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065182, 34.482689, 24.481953>,  <37.850372, 34.579910, 24.437174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065182, 34.482689, 24.481953>,  <38.423199, 34.320656, 24.556583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065182, 34.482689, 24.481953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248085, -0.104565, 0.963078,
		0.370618, 0.908280, 0.194085,
		-0.895040, 0.405084, -0.186577,
		37.796669, 34.604214, 24.425980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363972, 34.837585, 25.067284>,  <38.423199, 34.320656, 24.556583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363972, 34.837585, 25.067284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016964, 34.700249, 24.923325>,  <37.808758, 34.617847, 24.836948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016964, 34.700249, 24.923325>,  <38.363972, 34.837585, 25.067284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016964, 34.700249, 24.923325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288132, -0.242916, 0.926268,
		-0.405453, 0.907253, 0.111806,
		-0.867518, -0.343343, -0.359899,
		37.756710, 34.597244, 24.815355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876709, 35.102669, 25.476494>,  <38.363972, 34.837585, 25.067284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876709, 35.102669, 25.476494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685974, 34.795692, 25.305069>,  <37.571533, 34.611507, 25.202213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685974, 34.795692, 25.305069>,  <37.876709, 35.102669, 25.476494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685974, 34.795692, 25.305069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504544, -0.160272, 0.848380,
		-0.719765, 0.620769, -0.310782,
		-0.476838, -0.767437, -0.428563,
		37.542923, 34.565460, 25.176500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195267, 35.195526, 25.582533>,  <37.876709, 35.102669, 25.476494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195267, 35.195526, 25.582533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228485, 34.801281, 25.523636>,  <37.248417, 34.564735, 25.488298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228485, 34.801281, 25.523636>,  <37.195267, 35.195526, 25.582533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228485, 34.801281, 25.523636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523091, -0.168872, 0.835379,
		-0.848221, 0.007648, -0.529587,
		0.083044, -0.985609, -0.147242,
		37.253399, 34.505600, 25.479464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507427, 34.924877, 25.797729>,  <37.195267, 35.195526, 25.582533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507427, 34.924877, 25.797729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775574, 34.628742, 25.777699>,  <36.936462, 34.451061, 25.765680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775574, 34.628742, 25.777699>,  <36.507427, 34.924877, 25.797729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775574, 34.628742, 25.777699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225879, -0.267883, 0.936599,
		-0.706814, -0.616554, -0.346806,
		0.670368, -0.740337, -0.050077,
		36.976685, 34.406643, 25.762676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170753, 34.356289, 26.026306>,  <36.507427, 34.924877, 25.797729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170753, 34.356289, 26.026306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548428, 34.247768, 26.101032>,  <36.775032, 34.182655, 26.145868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548428, 34.247768, 26.101032>,  <36.170753, 34.356289, 26.026306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548428, 34.247768, 26.101032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281512, -0.370109, 0.885308,
		-0.171046, -0.888489, -0.425828,
		0.944190, -0.271304, 0.186815,
		36.831684, 34.166378, 26.157078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124863, 33.659725, 26.277267>,  <36.170753, 34.356289, 26.026306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124863, 33.659725, 26.277267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490772, 33.775654, 26.389832>,  <36.710320, 33.845211, 26.457371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490772, 33.775654, 26.389832>,  <36.124863, 33.659725, 26.277267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490772, 33.775654, 26.389832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115528, -0.479834, 0.869720,
		0.387094, -0.828108, -0.405457,
		0.914774, 0.289822, 0.281411,
		36.765205, 33.862602, 26.474255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467113, 33.049980, 26.369471>,  <36.124863, 33.659725, 26.277267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467113, 33.049980, 26.369471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633675, 33.338264, 26.591167>,  <36.733612, 33.511234, 26.724186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633675, 33.338264, 26.591167>,  <36.467113, 33.049980, 26.369471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633675, 33.338264, 26.591167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207381, -0.518246, 0.829707,
		0.885214, -0.460431, -0.066336,
		0.416401, 0.720711, 0.554243,
		36.758595, 33.554478, 26.757441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758213, 32.761536, 26.903175>,  <36.467113, 33.049980, 26.369471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758213, 32.761536, 26.903175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765053, 33.136864, 27.041317>,  <36.769157, 33.362061, 27.124201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765053, 33.136864, 27.041317>,  <36.758213, 32.761536, 26.903175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765053, 33.136864, 27.041317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176543, -0.337143, 0.924752,
		0.984144, -0.076780, 0.159889,
		0.017097, 0.938317, 0.345352,
		36.770184, 33.418358, 27.144922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060429, 32.666218, 27.530102>,  <36.758213, 32.761536, 26.903175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060429, 32.666218, 27.530102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902946, 33.033382, 27.549835>,  <36.808456, 33.253681, 27.561676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902946, 33.033382, 27.549835>,  <37.060429, 32.666218, 27.530102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902946, 33.033382, 27.549835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373742, -0.208871, 0.903709,
		0.839831, 0.337353, 0.425295,
		-0.393701, 0.917914, 0.049334,
		36.784836, 33.308758, 27.564636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320805, 32.985142, 28.143755>,  <37.060429, 32.666218, 27.530102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320805, 32.985142, 28.143755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980335, 33.168919, 28.042233>,  <36.776054, 33.279186, 27.981319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980335, 33.168919, 28.042233>,  <37.320805, 32.985142, 28.143755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980335, 33.168919, 28.042233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391905, -0.234626, 0.889585,
		0.349162, 0.856659, 0.379765,
		-0.851173, 0.459441, -0.253807,
		36.724983, 33.306751, 27.966091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221691, 33.280022, 28.744560>,  <37.320805, 32.985142, 28.143755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221691, 33.280022, 28.744560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875389, 33.283566, 28.544403>,  <36.667610, 33.285690, 28.424309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875389, 33.283566, 28.544403>,  <37.221691, 33.280022, 28.744560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875389, 33.283566, 28.544403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496069, -0.147530, 0.855658,
		-0.066244, 0.989018, 0.132119,
		-0.865752, 0.008858, -0.500394,
		36.615662, 33.286224, 28.394285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826977, 33.766571, 29.038771>,  <37.221691, 33.280022, 28.744560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826977, 33.766571, 29.038771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567612, 33.506203, 28.880852>,  <36.411991, 33.349983, 28.786100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567612, 33.506203, 28.880852>,  <36.826977, 33.766571, 29.038771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567612, 33.506203, 28.880852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494584, -0.034065, 0.868462,
		-0.578747, 0.758383, -0.299845,
		-0.648413, -0.650918, -0.394799,
		36.373089, 33.310928, 28.762411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197365, 33.941227, 29.390198>,  <36.826977, 33.766571, 29.038771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197365, 33.941227, 29.390198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153076, 33.575806, 29.233654>,  <36.126503, 33.356552, 29.139729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153076, 33.575806, 29.233654>,  <36.197365, 33.941227, 29.390198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153076, 33.575806, 29.233654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521667, -0.281752, 0.805282,
		-0.845934, 0.293316, -0.445377,
		-0.110717, -0.913554, -0.391357,
		36.119862, 33.301739, 29.116247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526249, 33.769970, 29.545116>,  <36.197365, 33.941227, 29.390198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526249, 33.769970, 29.545116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687263, 33.412483, 29.465881>,  <35.783871, 33.197990, 29.418341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687263, 33.412483, 29.465881>,  <35.526249, 33.769970, 29.545116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687263, 33.412483, 29.465881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576699, -0.415634, 0.703325,
		-0.710905, -0.168875, -0.682712,
		0.402532, -0.893717, -0.198087,
		35.808022, 33.144367, 29.406456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924980, 33.301956, 29.438223>,  <35.526249, 33.769970, 29.545116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924980, 33.301956, 29.438223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219357, 33.041859, 29.513668>,  <35.395981, 32.885799, 29.558935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219357, 33.041859, 29.513668>,  <34.924980, 33.301956, 29.438223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219357, 33.041859, 29.513668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495409, -0.327303, 0.804638,
		-0.461475, -0.685608, -0.563012,
		0.735942, -0.650242, 0.188614,
		35.440140, 32.846786, 29.570251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692261, 32.612831, 29.234663>,  <34.924980, 33.301956, 29.438223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692261, 32.612831, 29.234663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983494, 32.565678, 29.504772>,  <35.158234, 32.537384, 29.666838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983494, 32.565678, 29.504772>,  <34.692261, 32.612831, 29.234663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983494, 32.565678, 29.504772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633536, -0.491905, 0.597212,
		0.261767, -0.862631, -0.432835,
		0.728087, -0.117886, 0.675272,
		35.201920, 32.530312, 29.707354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706772, 31.876450, 29.399790>,  <34.692261, 32.612831, 29.234663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706772, 31.876450, 29.399790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883152, 32.071606, 29.701126>,  <34.988979, 32.188698, 29.881927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883152, 32.071606, 29.701126>,  <34.706772, 31.876450, 29.399790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883152, 32.071606, 29.701126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479858, -0.581164, 0.657256,
		0.758485, -0.651314, -0.022146,
		0.440950, 0.487891, 0.753343,
		35.015438, 32.217972, 29.927130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810139, 31.342323, 29.990601>,  <34.706772, 31.876450, 29.399790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810139, 31.342323, 29.990601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841320, 31.691727, 30.182812>,  <34.860027, 31.901369, 30.298140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841320, 31.691727, 30.182812>,  <34.810139, 31.342323, 29.990601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841320, 31.691727, 30.182812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466439, -0.394035, 0.791941,
		0.881112, -0.285869, 0.376723,
		0.077949, 0.873508, 0.480529,
		34.864704, 31.953779, 30.326971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258160, 31.208941, 30.491261>,  <34.810139, 31.342323, 29.990601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258160, 31.208941, 30.491261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022476, 31.516323, 30.591106>,  <34.881065, 31.700752, 30.651014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022476, 31.516323, 30.591106>,  <35.258160, 31.208941, 30.491261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022476, 31.516323, 30.591106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283119, -0.485711, 0.827000,
		0.756752, 0.416608, 0.503751,
		-0.589212, 0.768455, 0.249613,
		34.845711, 31.746859, 30.665991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379646, 31.437071, 31.279190>,  <35.258160, 31.208941, 30.491261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379646, 31.437071, 31.279190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029926, 31.605331, 31.182320>,  <34.820095, 31.706287, 31.124197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029926, 31.605331, 31.182320>,  <35.379646, 31.437071, 31.279190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029926, 31.605331, 31.182320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356027, -0.216650, 0.909015,
		0.329910, 0.880975, 0.339181,
		-0.874302, 0.420650, -0.242176,
		34.767635, 31.731527, 31.109667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184658, 31.850988, 31.808907>,  <35.379646, 31.437071, 31.279190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184658, 31.850988, 31.808907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838509, 31.815712, 31.611584>,  <34.630817, 31.794546, 31.493191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838509, 31.815712, 31.611584>,  <35.184658, 31.850988, 31.808907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838509, 31.815712, 31.611584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446353, -0.311850, 0.838760,
		-0.227808, 0.946029, 0.230503,
		-0.865374, -0.088190, -0.493305,
		34.578896, 31.789255, 31.463593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714088, 32.093353, 32.277386>,  <35.184658, 31.850988, 31.808907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714088, 32.093353, 32.277386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475700, 31.912792, 32.011738>,  <34.332668, 31.804457, 31.852348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475700, 31.912792, 32.011738>,  <34.714088, 32.093353, 32.277386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475700, 31.912792, 32.011738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555398, -0.365603, 0.746905,
		-0.579957, 0.813986, -0.032818,
		-0.595972, -0.451400, -0.664120,
		34.296909, 31.777372, 31.812502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063274, 32.342258, 32.397175>,  <34.714088, 32.093353, 32.277386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063274, 32.342258, 32.397175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024891, 31.989784, 32.212002>,  <34.001862, 31.778299, 32.100899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024891, 31.989784, 32.212002>,  <34.063274, 32.342258, 32.397175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024891, 31.989784, 32.212002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628186, -0.307151, 0.714870,
		-0.772123, 0.359403, -0.524076,
		-0.095956, -0.881185, -0.462931,
		33.996105, 31.725430, 32.073124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345581, 32.085739, 32.492428>,  <34.063274, 32.342258, 32.397175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345581, 32.085739, 32.492428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526711, 31.746304, 32.382996>,  <33.635387, 31.542641, 32.317337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526711, 31.746304, 32.382996>,  <33.345581, 32.085739, 32.492428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526711, 31.746304, 32.382996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423690, -0.474782, 0.771407,
		-0.784500, -0.233397, -0.574531,
		0.452820, -0.848592, -0.273579,
		33.662556, 31.491726, 32.300922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632442, 32.033314, 32.120079>,  <33.345581, 32.085739, 32.492428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632442, 32.033314, 32.120079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350384, 32.275566, 32.267582>,  <32.181149, 32.420918, 32.356083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350384, 32.275566, 32.267582>,  <32.632442, 32.033314, 32.120079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350384, 32.275566, 32.267582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089072, 0.591598, -0.801298,
		-0.703445, -0.532186, -0.471108,
		-0.705146, 0.605631, 0.368754,
		32.138840, 32.457256, 32.378208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119770, 32.067120, 31.619106>,  <32.632442, 32.033314, 32.120079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119770, 32.067120, 31.619106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138165, 32.385174, 31.860981>,  <32.149200, 32.576008, 32.006104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138165, 32.385174, 31.860981>,  <32.119770, 32.067120, 31.619106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138165, 32.385174, 31.860981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082147, 0.600265, -0.795571,
		-0.995559, 0.086261, -0.037712,
		0.045989, 0.795136, 0.604685,
		32.151962, 32.623714, 32.042385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851692, 32.523960, 31.213753>,  <32.119770, 32.067120, 31.619106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851692, 32.523960, 31.213753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981268, 32.771851, 31.499691>,  <32.059013, 32.920586, 31.671253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981268, 32.771851, 31.499691>,  <31.851692, 32.523960, 31.213753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981268, 32.771851, 31.499691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089562, 0.732108, -0.675275,
		-0.941828, 0.282773, 0.181656,
		0.323941, 0.619724, 0.714846,
		32.078449, 32.957767, 31.714146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667191, 33.187881, 30.940872>,  <31.851692, 32.523960, 31.213753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667191, 33.187881, 30.940872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935713, 33.289108, 31.219528>,  <32.096825, 33.349846, 31.386721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935713, 33.289108, 31.219528>,  <31.667191, 33.187881, 30.940872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935713, 33.289108, 31.219528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176216, 0.858458, -0.481662,
		-0.719928, 0.446101, 0.531692,
		0.671306, 0.253070, 0.696638,
		32.137104, 33.365028, 31.428520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527105, 33.903450, 31.131739>,  <31.667191, 33.187881, 30.940872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527105, 33.903450, 31.131739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913370, 33.811077, 31.179344>,  <32.145130, 33.755653, 31.207909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913370, 33.811077, 31.179344>,  <31.527105, 33.903450, 31.131739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913370, 33.811077, 31.179344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256650, 0.776838, -0.575025,
		0.040338, 0.585826, 0.809433,
		0.965662, -0.230936, 0.119016,
		32.203068, 33.741795, 31.215050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
