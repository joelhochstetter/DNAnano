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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<50.472267, 43.949718, 46.600647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.127060, 44.097946, 46.463318>,  <49.919933, 44.186882, 46.380920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.127060, 44.097946, 46.463318>,  <50.472267, 43.949718, 46.600647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.127060, 44.097946, 46.463318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430024, -0.182263, 0.884228,
		0.265092, 0.910746, 0.316651,
		-0.863021, 0.370570, -0.343326,
		49.868153, 44.209118, 46.360321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.195419, 44.314518, 47.153400>,  <50.472267, 43.949718, 46.600647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.195419, 44.314518, 47.153400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.874222, 44.266823, 46.919827>,  <49.681503, 44.238205, 46.779682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.874222, 44.266823, 46.919827>,  <50.195419, 44.314518, 47.153400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.874222, 44.266823, 46.919827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588833, 0.007372, 0.808221,
		-0.092062, 0.992839, -0.076128,
		-0.802994, -0.119234, -0.583938,
		49.633324, 44.231052, 46.744644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.712261, 44.606144, 47.442867>,  <50.195419, 44.314518, 47.153400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.712261, 44.606144, 47.442867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.519829, 44.346931, 47.206692>,  <49.404369, 44.191406, 47.064987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.519829, 44.346931, 47.206692>,  <49.712261, 44.606144, 47.442867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.519829, 44.346931, 47.206692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652802, -0.184744, 0.734656,
		-0.585159, 0.738870, -0.334157,
		-0.481081, -0.648029, -0.590440,
		49.375504, 44.152523, 47.029560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.002422, 44.734482, 47.547092>,  <49.712261, 44.606144, 47.442867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.002422, 44.734482, 47.547092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.009300, 44.366783, 47.389767>,  <49.013428, 44.146164, 47.295372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.009300, 44.366783, 47.389767>,  <49.002422, 44.734482, 47.547092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.009300, 44.366783, 47.389767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538737, -0.339905, 0.770861,
		-0.842298, 0.198641, -0.501074,
		0.017193, -0.919242, -0.393317,
		49.014458, 44.091011, 47.271770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.325287, 44.513329, 47.686901>,  <49.002422, 44.734482, 47.547092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.325287, 44.513329, 47.686901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.547874, 44.189316, 47.612938>,  <48.681427, 43.994907, 47.568562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.547874, 44.189316, 47.612938>,  <48.325287, 44.513329, 47.686901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.547874, 44.189316, 47.612938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406539, -0.459535, 0.789654,
		-0.724619, -0.364243, -0.585025,
		0.556466, -0.810034, -0.184908,
		48.714813, 43.946304, 47.557465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.829147, 43.990955, 47.730125>,  <48.325287, 44.513329, 47.686901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.829147, 43.990955, 47.730125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.155029, 43.760506, 47.756458>,  <48.350559, 43.622234, 47.772259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.155029, 43.760506, 47.756458>,  <47.829147, 43.990955, 47.730125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.155029, 43.760506, 47.756458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401344, -0.478293, 0.781127,
		-0.418537, -0.662812, -0.620892,
		0.814708, -0.576121, 0.065833,
		48.399441, 43.587669, 47.776207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.636486, 43.244930, 47.805965>,  <47.829147, 43.990955, 47.730125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.636486, 43.244930, 47.805965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.005493, 43.266098, 47.958893>,  <48.226898, 43.278797, 48.050648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.005493, 43.266098, 47.958893>,  <47.636486, 43.244930, 47.805965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.005493, 43.266098, 47.958893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339376, -0.360546, 0.868810,
		0.183819, -0.931239, -0.314649,
		0.922515, 0.052920, 0.382316,
		48.282249, 43.281975, 48.073589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.734478, 42.673771, 48.091419>,  <47.636486, 43.244930, 47.805965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.734478, 42.673771, 48.091419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.012260, 42.882263, 48.289833>,  <48.178932, 43.007359, 48.408882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.012260, 42.882263, 48.289833>,  <47.734478, 42.673771, 48.091419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.012260, 42.882263, 48.289833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344618, -0.364226, 0.865204,
		0.631637, -0.771790, -0.073315,
		0.694458, 0.521229, 0.496032,
		48.220596, 43.038631, 48.438644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.083805, 42.212029, 48.526299>,  <47.734478, 42.673771, 48.091419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.083805, 42.212029, 48.526299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.163055, 42.568268, 48.690041>,  <48.210606, 42.782013, 48.788288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.163055, 42.568268, 48.690041>,  <48.083805, 42.212029, 48.526299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.163055, 42.568268, 48.690041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331632, -0.332099, 0.883023,
		0.922370, -0.310704, 0.229556,
		0.198124, 0.890603, 0.409358,
		48.222492, 42.835449, 48.812847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.439304, 42.040695, 49.154610>,  <48.083805, 42.212029, 48.526299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.439304, 42.040695, 49.154610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.258835, 42.397003, 49.176426>,  <48.150555, 42.610786, 49.189518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.258835, 42.397003, 49.176426>,  <48.439304, 42.040695, 49.154610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.258835, 42.397003, 49.176426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313616, -0.215473, 0.924779,
		0.835516, 0.400130, 0.376575,
		-0.451174, 0.890768, 0.054544,
		48.123482, 42.664234, 49.192791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.484718, 42.086384, 49.797161>,  <48.439304, 42.040695, 49.154610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.484718, 42.086384, 49.797161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.224632, 42.369987, 49.687965>,  <48.068581, 42.540150, 49.622448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.224632, 42.369987, 49.687965>,  <48.484718, 42.086384, 49.797161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.224632, 42.369987, 49.687965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527919, -0.163235, 0.833460,
		0.546372, 0.686044, 0.480439,
		-0.650214, 0.709012, -0.272989,
		48.029568, 42.582691, 49.606068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.517414, 42.594761, 50.345795>,  <48.484718, 42.086384, 49.797161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.517414, 42.594761, 50.345795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.164604, 42.651276, 50.165985>,  <47.952919, 42.685184, 50.058098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.164604, 42.651276, 50.165985>,  <48.517414, 42.594761, 50.345795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.164604, 42.651276, 50.165985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459548, -0.047051, 0.886906,
		0.104160, 0.988850, 0.106429,
		-0.882024, 0.141289, -0.449524,
		47.899998, 42.693661, 50.031128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.174938, 43.178932, 50.614830>,  <48.517414, 42.594761, 50.345795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.174938, 43.178932, 50.614830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.860100, 42.993172, 50.452446>,  <47.671196, 42.881714, 50.355015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.860100, 42.993172, 50.452446>,  <48.174938, 43.178932, 50.614830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.860100, 42.993172, 50.452446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459379, 0.002126, 0.888238,
		-0.411638, 0.885621, -0.215012,
		-0.787099, -0.464405, -0.405960,
		47.623970, 42.853851, 50.330658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.542572, 43.509224, 50.821136>,  <48.174938, 43.178932, 50.614830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.542572, 43.509224, 50.821136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417259, 43.143738, 50.717613>,  <47.342072, 42.924446, 50.655499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417259, 43.143738, 50.717613>,  <47.542572, 43.509224, 50.821136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.417259, 43.143738, 50.717613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599844, -0.020887, 0.799845,
		-0.736235, 0.405822, -0.541542,
		-0.313283, -0.913714, -0.258807,
		47.323273, 42.869625, 50.639973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.824520, 43.591442, 50.796349>,  <47.542572, 43.509224, 50.821136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.824520, 43.591442, 50.796349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.936760, 43.210991, 50.847916>,  <47.004105, 42.982719, 50.878857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.936760, 43.210991, 50.847916>,  <46.824520, 43.591442, 50.796349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.936760, 43.210991, 50.847916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504252, -0.031793, 0.862971,
		-0.816696, -0.307158, -0.488529,
		0.280601, -0.951127, 0.128920,
		47.020939, 42.925652, 50.886593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.200718, 43.202770, 50.897591>,  <46.824520, 43.591442, 50.796349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.200718, 43.202770, 50.897591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.494720, 42.976547, 51.047207>,  <46.671124, 42.840813, 51.136978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.494720, 42.976547, 51.047207>,  <46.200718, 43.202770, 50.897591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.494720, 42.976547, 51.047207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536137, -0.147018, 0.831230,
		-0.415118, -0.811498, -0.411277,
		0.735006, -0.565559, 0.374044,
		46.715221, 42.806881, 51.159420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.911652, 42.481400, 51.110447>,  <46.200718, 43.202770, 50.897591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.911652, 42.481400, 51.110447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.235123, 42.573624, 51.326920>,  <46.429207, 42.628960, 51.456802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.235123, 42.573624, 51.326920>,  <45.911652, 42.481400, 51.110447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.235123, 42.573624, 51.326920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532995, -0.102068, 0.839940,
		0.248898, -0.967689, 0.040350,
		0.808682, 0.230565, 0.541178,
		46.477726, 42.642792, 51.489273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.829269, 42.143623, 51.814617>,  <45.911652, 42.481400, 51.110447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.829269, 42.143623, 51.814617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.138992, 42.393608, 51.854347>,  <46.324825, 42.543602, 51.878185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.138992, 42.393608, 51.854347>,  <45.829269, 42.143623, 51.814617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.138992, 42.393608, 51.854347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240204, 0.145053, 0.959824,
		0.585450, -0.767057, 0.262435,
		0.774306, 0.624967, 0.099329,
		46.371284, 42.581097, 51.884148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.194275, 41.876953, 52.417038>,  <45.829269, 42.143623, 51.814617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.194275, 41.876953, 52.417038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.293213, 42.263268, 52.385883>,  <46.352577, 42.495056, 52.367191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.293213, 42.263268, 52.385883>,  <46.194275, 41.876953, 52.417038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.293213, 42.263268, 52.385883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071625, 0.098394, 0.992567,
		0.966276, -0.239931, 0.093513,
		0.247348, 0.965791, -0.077891,
		46.367416, 42.553005, 52.362514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.621540, 42.030640, 52.899429>,  <46.194275, 41.876953, 52.417038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.621540, 42.030640, 52.899429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.516434, 42.408707, 52.821850>,  <46.453369, 42.635548, 52.775303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.516434, 42.408707, 52.821850>,  <46.621540, 42.030640, 52.899429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.516434, 42.408707, 52.821850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001198, 0.201330, 0.979523,
		0.964859, 0.257151, -0.054035,
		-0.262764, 0.945166, -0.193947,
		46.437603, 42.692257, 52.763664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.019577, 42.460602, 53.455685>,  <46.621540, 42.030640, 52.899429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.019577, 42.460602, 53.455685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.728447, 42.691963, 53.308327>,  <46.553768, 42.830780, 53.219913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.728447, 42.691963, 53.308327>,  <47.019577, 42.460602, 53.455685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.728447, 42.691963, 53.308327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316832, 0.192803, 0.928679,
		0.608181, 0.792637, 0.042930,
		-0.727828, 0.578406, -0.368391,
		46.510098, 42.865486, 53.197811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.156227, 43.106483, 53.740437>,  <47.019577, 42.460602, 53.455685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.156227, 43.106483, 53.740437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773819, 43.047714, 53.638901>,  <46.544373, 43.012451, 53.577980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773819, 43.047714, 53.638901>,  <47.156227, 43.106483, 53.740437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.773819, 43.047714, 53.638901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278066, 0.178761, 0.943782,
		-0.093286, 0.972861, -0.211754,
		-0.956021, -0.146924, -0.253843,
		46.487011, 43.003635, 53.562748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.799370, 43.506393, 54.187511>,  <47.156227, 43.106483, 53.740437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.799370, 43.506393, 54.187511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.497139, 43.278427, 54.058323>,  <46.315800, 43.141647, 53.980812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.497139, 43.278427, 54.058323>,  <46.799370, 43.506393, 54.187511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.497139, 43.278427, 54.058323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440499, 0.077129, 0.894434,
		-0.484839, 0.818078, -0.309322,
		-0.755574, -0.569912, -0.322967,
		46.270466, 43.107452, 53.961433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.226761, 43.795826, 54.470295>,  <46.799370, 43.506393, 54.187511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.226761, 43.795826, 54.470295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.108017, 43.424431, 54.381042>,  <46.036770, 43.201595, 54.327492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.108017, 43.424431, 54.381042>,  <46.226761, 43.795826, 54.470295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.108017, 43.424431, 54.381042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553138, -0.023276, 0.832764,
		-0.778404, 0.370636, -0.506672,
		-0.296859, -0.928486, -0.223132,
		46.018959, 43.145885, 54.314102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.494148, 43.815201, 54.547932>,  <46.226761, 43.795826, 54.470295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.494148, 43.815201, 54.547932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600136, 43.430069, 54.568932>,  <45.663727, 43.198990, 54.581532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600136, 43.430069, 54.568932>,  <45.494148, 43.815201, 54.547932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600136, 43.430069, 54.568932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525007, -0.098380, 0.845393,
		-0.808802, -0.251565, -0.531558,
		0.264966, -0.962827, 0.052504,
		45.679626, 43.141220, 54.584682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911049, 43.494759, 54.879913>,  <45.494148, 43.815201, 54.547932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.911049, 43.494759, 54.879913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.227043, 43.251503, 54.911144>,  <45.416637, 43.105549, 54.929882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.227043, 43.251503, 54.911144>,  <44.911049, 43.494759, 54.879913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227043, 43.251503, 54.911144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253335, -0.207784, 0.944800,
		-0.558346, -0.766155, -0.318208,
		0.789981, -0.608139, 0.078079,
		45.464039, 43.069061, 54.934566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703754, 43.113125, 55.405739>,  <44.911049, 43.494759, 54.879913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703754, 43.113125, 55.405739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073105, 42.962524, 55.375736>,  <45.294716, 42.872162, 55.357735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073105, 42.962524, 55.375736>,  <44.703754, 43.113125, 55.405739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.073105, 42.962524, 55.375736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071183, -0.359898, 0.930272,
		-0.377258, -0.853645, -0.359120,
		0.923368, -0.376516, -0.075009,
		45.350117, 42.849575, 55.353233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722221, 42.389027, 55.582062>,  <44.703754, 43.113125, 55.405739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722221, 42.389027, 55.582062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.086540, 42.537659, 55.654041>,  <45.305130, 42.626839, 55.697227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.086540, 42.537659, 55.654041>,  <44.722221, 42.389027, 55.582062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.086540, 42.537659, 55.654041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108269, -0.205639, 0.972620,
		0.398415, -0.905338, -0.147064,
		0.910792, 0.371585, 0.179950,
		45.359779, 42.649136, 55.708027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048767, 41.945389, 56.061787>,  <44.722221, 42.389027, 55.582062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048767, 41.945389, 56.061787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237617, 42.295723, 56.101818>,  <45.350929, 42.505924, 56.125835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237617, 42.295723, 56.101818>,  <45.048767, 41.945389, 56.061787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.237617, 42.295723, 56.101818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045426, -0.137550, 0.989453,
		0.880360, -0.462599, -0.104726,
		0.472125, 0.875832, 0.100080,
		45.379253, 42.558472, 56.131844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651302, 41.852295, 56.519642>,  <45.048767, 41.945389, 56.061787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651302, 41.852295, 56.519642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568794, 42.243492, 56.532135>,  <45.519291, 42.478210, 56.539631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568794, 42.243492, 56.532135>,  <45.651302, 41.852295, 56.519642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568794, 42.243492, 56.532135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180044, 0.006556, 0.983636,
		0.961788, 0.208517, -0.177435,
		-0.206268, 0.977997, 0.031237,
		45.506912, 42.536892, 56.541508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.012054, 42.014984, 57.101059>,  <45.651302, 41.852295, 56.519642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.012054, 42.014984, 57.101059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.764969, 42.324478, 57.044838>,  <45.616718, 42.510174, 57.011105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.764969, 42.324478, 57.044838>,  <46.012054, 42.014984, 57.101059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.764969, 42.324478, 57.044838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158955, 0.052187, 0.985906,
		0.770168, 0.631352, 0.090753,
		-0.617718, 0.773738, -0.140549,
		45.579655, 42.556599, 57.002674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.245819, 42.452049, 57.544559>,  <46.012054, 42.014984, 57.101059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.245819, 42.452049, 57.544559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.863594, 42.554565, 57.486286>,  <45.634258, 42.616074, 57.451324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.863594, 42.554565, 57.486286>,  <46.245819, 42.452049, 57.544559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.863594, 42.554565, 57.486286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147135, 0.013594, 0.989023,
		0.255457, 0.966504, 0.024720,
		-0.955559, 0.256290, -0.145680,
		45.576927, 42.631451, 57.442581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163940, 43.074364, 57.930931>,  <46.245819, 42.452049, 57.544559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163940, 43.074364, 57.930931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.805580, 42.900787, 57.892853>,  <45.590565, 42.796642, 57.870007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.805580, 42.900787, 57.892853>,  <46.163940, 43.074364, 57.930931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.805580, 42.900787, 57.892853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061594, -0.090890, 0.993954,
		-0.439967, 0.896347, 0.054700,
		-0.895899, -0.433938, -0.095198,
		45.536812, 42.770607, 57.864292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.679550, 43.505894, 58.319782>,  <46.163940, 43.074364, 57.930931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.679550, 43.505894, 58.319782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495567, 43.151756, 58.292618>,  <45.385178, 42.939274, 58.276318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495567, 43.151756, 58.292618>,  <45.679550, 43.505894, 58.319782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495567, 43.151756, 58.292618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233548, 0.046835, 0.971217,
		-0.856677, 0.462579, -0.228312,
		-0.459957, -0.885340, -0.067912,
		45.357582, 42.886154, 58.272243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033493, 43.628563, 58.693909>,  <45.679550, 43.505894, 58.319782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033493, 43.628563, 58.693909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075195, 43.231720, 58.666031>,  <45.100216, 42.993614, 58.649303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075195, 43.231720, 58.666031>,  <45.033493, 43.628563, 58.693909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075195, 43.231720, 58.666031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306680, -0.098729, 0.946678,
		-0.946086, -0.077325, -0.314552,
		0.104257, -0.992106, -0.069692,
		45.106472, 42.934090, 58.645123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376335, 43.352570, 58.767418>,  <45.033493, 43.628563, 58.693909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376335, 43.352570, 58.767418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.638554, 43.066277, 58.863743>,  <44.795883, 42.894501, 58.921539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.638554, 43.066277, 58.863743>,  <44.376335, 43.352570, 58.767418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.638554, 43.066277, 58.863743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410738, -0.070350, 0.909035,
		-0.633685, -0.694822, -0.340096,
		0.655544, -0.715732, 0.240811,
		44.835217, 42.851559, 58.935986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943855, 42.807198, 59.057121>,  <44.376335, 43.352570, 58.767418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943855, 42.807198, 59.057121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308006, 42.710724, 59.191612>,  <44.526497, 42.652840, 59.272308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308006, 42.710724, 59.191612>,  <43.943855, 42.807198, 59.057121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308006, 42.710724, 59.191612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400102, -0.305853, 0.863928,
		-0.105528, -0.921024, -0.374938,
		0.910374, -0.241182, 0.336228,
		44.581120, 42.638367, 59.292480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790611, 42.186634, 59.308174>,  <43.943855, 42.807198, 59.057121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790611, 42.186634, 59.308174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134697, 42.308617, 59.471653>,  <44.341148, 42.381805, 59.569740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134697, 42.308617, 59.471653>,  <43.790611, 42.186634, 59.308174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.134697, 42.308617, 59.471653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295068, -0.355986, 0.886684,
		0.415891, -0.883331, -0.216241,
		0.860215, 0.304958, 0.408695,
		44.392761, 42.400105, 59.594261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.022598, 41.621635, 59.790165>,  <43.790611, 42.186634, 59.308174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.022598, 41.621635, 59.790165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201424, 41.959602, 59.907631>,  <44.308720, 42.162384, 59.978111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201424, 41.959602, 59.907631>,  <44.022598, 41.621635, 59.790165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201424, 41.959602, 59.907631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336107, -0.145570, 0.930506,
		0.828953, -0.514702, 0.218904,
		0.447067, 0.844921, 0.293666,
		44.335545, 42.213078, 59.995731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352177, 41.468784, 60.383625>,  <44.022598, 41.621635, 59.790165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352177, 41.468784, 60.383625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.304577, 41.865623, 60.367691>,  <44.276016, 42.103725, 60.358131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.304577, 41.865623, 60.367691>,  <44.352177, 41.468784, 60.383625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.304577, 41.865623, 60.367691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352958, -0.004765, 0.935627,
		0.928041, 0.125398, 0.350735,
		-0.118997, 0.992095, -0.039838,
		44.268879, 42.163254, 60.355740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631096, 41.629154, 60.997868>,  <44.352177, 41.468784, 60.383625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631096, 41.629154, 60.997868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391808, 41.934776, 60.901253>,  <44.248234, 42.118149, 60.843285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391808, 41.934776, 60.901253>,  <44.631096, 41.629154, 60.997868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391808, 41.934776, 60.901253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401752, -0.025169, 0.915402,
		0.693343, 0.644655, 0.322019,
		-0.598223, 0.764059, -0.241541,
		44.212341, 42.163994, 60.828789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.691216, 42.075054, 61.595581>,  <44.631096, 41.629154, 60.997868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.691216, 42.075054, 61.595581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372887, 42.195976, 61.385712>,  <44.181889, 42.268532, 61.259789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372887, 42.195976, 61.385712>,  <44.691216, 42.075054, 61.595581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.372887, 42.195976, 61.385712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562712, -0.049162, 0.825190,
		0.223667, 0.951942, 0.209236,
		-0.795819, 0.302308, -0.524673,
		44.134140, 42.286667, 61.228310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.374870, 42.606537, 62.030273>,  <44.691216, 42.075054, 61.595581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.374870, 42.606537, 62.030273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134312, 42.418945, 61.771545>,  <43.989975, 42.306389, 61.616310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134312, 42.418945, 61.771545>,  <44.374870, 42.606537, 62.030273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.134312, 42.418945, 61.771545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699115, -0.082963, 0.710180,
		-0.386725, 0.879302, -0.277979,
		-0.601401, -0.468983, -0.646817,
		43.953892, 42.278252, 61.577499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798859, 42.875881, 62.144123>,  <44.374870, 42.606537, 62.030273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798859, 42.875881, 62.144123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738808, 42.508202, 61.998501>,  <43.702778, 42.287594, 61.911125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738808, 42.508202, 61.998501>,  <43.798859, 42.875881, 62.144123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738808, 42.508202, 61.998501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731543, -0.144428, 0.666322,
		-0.665061, 0.366358, -0.650750,
		-0.150126, -0.919196, -0.364060,
		43.693771, 42.232441, 61.889282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125080, 42.740253, 62.031578>,  <43.798859, 42.875881, 62.144123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125080, 42.740253, 62.031578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286831, 42.382217, 62.106716>,  <43.383881, 42.167397, 62.151798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286831, 42.382217, 62.106716>,  <43.125080, 42.740253, 62.031578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286831, 42.382217, 62.106716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751254, -0.207939, 0.626402,
		-0.521629, -0.394420, -0.756529,
		0.404377, -0.895095, 0.187842,
		43.408142, 42.113689, 62.163071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784103, 43.414967, 62.393181>,  <43.125080, 42.740253, 62.031578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784103, 43.414967, 62.393181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789463, 43.494385, 62.785183>,  <42.792679, 43.542034, 63.020382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789463, 43.494385, 62.785183>,  <42.784103, 43.414967, 62.393181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789463, 43.494385, 62.785183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690401, 0.710801, -0.134566,
		-0.723303, -0.674791, 0.146597,
		0.013398, 0.198543, 0.980001,
		42.793484, 43.553947, 63.079182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090023, 43.633823, 62.662365>,  <42.784103, 43.414967, 62.393181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090023, 43.633823, 62.662365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338112, 43.751358, 62.953293>,  <42.486965, 43.821877, 63.127850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338112, 43.751358, 62.953293>,  <42.090023, 43.633823, 62.662365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338112, 43.751358, 62.953293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495747, 0.865382, 0.073141,
		-0.607914, -0.405928, 0.682395,
		0.620222, 0.293832, 0.727315,
		42.524178, 43.839508, 63.171486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496902, 43.190605, 62.683861>,  <42.090023, 43.633823, 62.662365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496902, 43.190605, 62.683861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231644, 43.180260, 62.384644>,  <41.072491, 43.174053, 62.205112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231644, 43.180260, 62.384644>,  <41.496902, 43.190605, 62.683861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231644, 43.180260, 62.384644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542526, 0.671914, -0.504180,
		0.515662, -0.740178, -0.431544,
		-0.663143, -0.025863, -0.748046,
		41.032700, 43.172501, 62.160229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926743, 43.074093, 62.032413>,  <41.496902, 43.190605, 62.683861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926743, 43.074093, 62.032413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567772, 43.237450, 61.965668>,  <41.352390, 43.335464, 61.925621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567772, 43.237450, 61.965668>,  <41.926743, 43.074093, 62.032413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567772, 43.237450, 61.965668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426469, 0.706282, -0.565058,
		-0.112910, -0.578261, -0.808001,
		-0.897427, 0.408388, -0.166864,
		41.298542, 43.359966, 61.915607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658161, 43.023754, 61.322556>,  <41.926743, 43.074093, 62.032413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658161, 43.023754, 61.322556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536514, 43.360428, 61.501030>,  <41.463528, 43.562431, 61.608116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536514, 43.360428, 61.501030>,  <41.658161, 43.023754, 61.322556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536514, 43.360428, 61.501030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538529, 0.538248, -0.648287,
		-0.785811, 0.043129, -0.616961,
		-0.304118, 0.841682, 0.446187,
		41.445278, 43.612934, 61.634888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387962, 43.518795, 60.863743>,  <41.658161, 43.023754, 61.322556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387962, 43.518795, 60.863743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487549, 43.749680, 61.174831>,  <41.547298, 43.888210, 61.361485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487549, 43.749680, 61.174831>,  <41.387962, 43.518795, 60.863743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487549, 43.749680, 61.174831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523668, 0.595276, -0.609441,
		-0.814733, 0.558994, -0.154065,
		0.248962, 0.577211, 0.777718,
		41.562237, 43.922844, 61.408146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128647, 44.233273, 60.784252>,  <41.387962, 43.518795, 60.863743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128647, 44.233273, 60.784252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474327, 44.207237, 60.983818>,  <41.681736, 44.191616, 61.103558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474327, 44.207237, 60.983818>,  <41.128647, 44.233273, 60.784252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474327, 44.207237, 60.983818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419601, 0.640424, -0.643267,
		-0.277646, 0.765259, 0.580769,
		0.864204, -0.065091, 0.498914,
		41.733589, 44.187710, 61.133492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376659, 44.854664, 60.908241>,  <41.128647, 44.233273, 60.784252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376659, 44.854664, 60.908241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682396, 44.596825, 60.901482>,  <41.865837, 44.442123, 60.897427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682396, 44.596825, 60.901482>,  <41.376659, 44.854664, 60.908241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682396, 44.596825, 60.901482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386110, 0.478511, -0.788636,
		0.516437, 0.596259, 0.614628,
		0.764338, -0.644595, -0.016899,
		41.911697, 44.403446, 60.896412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942200, 45.273510, 60.778305>,  <41.376659, 44.854664, 60.908241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942200, 45.273510, 60.778305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042824, 44.905220, 60.658989>,  <42.103199, 44.684246, 60.587399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042824, 44.905220, 60.658989>,  <41.942200, 45.273510, 60.778305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042824, 44.905220, 60.658989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430032, 0.382439, -0.817810,
		0.867057, 0.077457, 0.492150,
		0.251563, -0.920728, -0.298287,
		42.118294, 44.629002, 60.569504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686989, 45.304180, 60.575256>,  <41.942200, 45.273510, 60.778305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686989, 45.304180, 60.575256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516937, 44.998398, 60.381401>,  <42.414906, 44.814930, 60.265087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516937, 44.998398, 60.381401>,  <42.686989, 45.304180, 60.575256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516937, 44.998398, 60.381401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437667, 0.295066, -0.849343,
		0.792286, -0.573189, 0.209136,
		-0.425125, -0.764454, -0.484642,
		42.389400, 44.769062, 60.236008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284348, 44.972404, 60.127335>,  <42.686989, 45.304180, 60.575256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284348, 44.972404, 60.127335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918655, 44.863235, 60.007538>,  <42.699242, 44.797733, 59.935658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918655, 44.863235, 60.007538>,  <43.284348, 44.972404, 60.127335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918655, 44.863235, 60.007538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282381, 0.100942, -0.953977,
		0.290595, -0.956725, -0.015215,
		-0.914229, -0.272924, -0.299494,
		42.644386, 44.781357, 59.917690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376438, 44.403454, 59.634380>,  <43.284348, 44.972404, 60.127335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376438, 44.403454, 59.634380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006832, 44.516006, 59.530830>,  <42.785069, 44.583538, 59.468700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006832, 44.516006, 59.530830>,  <43.376438, 44.403454, 59.634380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006832, 44.516006, 59.530830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273662, 0.013876, -0.961726,
		-0.267022, -0.959495, -0.089826,
		-0.924018, 0.281384, -0.258872,
		42.729626, 44.600422, 59.453167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261581, 44.014107, 59.057968>,  <43.376438, 44.403454, 59.634380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261581, 44.014107, 59.057968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986481, 44.301460, 59.016163>,  <42.821419, 44.473873, 58.991077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986481, 44.301460, 59.016163>,  <43.261581, 44.014107, 59.057968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986481, 44.301460, 59.016163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202079, 0.051171, -0.978032,
		-0.697253, -0.693763, -0.180363,
		-0.687752, 0.718383, -0.104516,
		42.780155, 44.516975, 58.984810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784775, 43.853046, 58.533764>,  <43.261581, 44.014107, 59.057968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784775, 43.853046, 58.533764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732719, 44.249290, 58.550514>,  <42.701485, 44.487038, 58.560566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732719, 44.249290, 58.550514>,  <42.784775, 43.853046, 58.533764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732719, 44.249290, 58.550514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102634, 0.055471, -0.993171,
		-0.986170, -0.124951, -0.108890,
		-0.130138, 0.990611, 0.041880,
		42.693680, 44.546474, 58.563080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244766, 43.974163, 58.094940>,  <42.784775, 43.853046, 58.533764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244766, 43.974163, 58.094940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423851, 44.329735, 58.133636>,  <42.531303, 44.543079, 58.156857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423851, 44.329735, 58.133636>,  <42.244766, 43.974163, 58.094940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423851, 44.329735, 58.133636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209604, 0.209511, -0.955077,
		-0.869264, 0.407323, 0.280123,
		0.447713, 0.888928, 0.096744,
		42.558167, 44.596413, 58.162659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861877, 44.354298, 57.554199>,  <42.244766, 43.974163, 58.094940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861877, 44.354298, 57.554199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200104, 44.544785, 57.650734>,  <42.403038, 44.659077, 57.708652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200104, 44.544785, 57.650734>,  <41.861877, 44.354298, 57.554199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200104, 44.544785, 57.650734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141529, 0.235921, -0.961411,
		-0.514776, 0.847088, 0.132088,
		0.845562, 0.476217, 0.241334,
		42.453773, 44.687649, 57.723133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897224, 45.075989, 57.231647>,  <41.861877, 44.354298, 57.554199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897224, 45.075989, 57.231647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271111, 44.950821, 57.299049>,  <42.495441, 44.875721, 57.339489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271111, 44.950821, 57.299049>,  <41.897224, 45.075989, 57.231647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271111, 44.950821, 57.299049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214272, 0.117907, -0.969632,
		0.283545, 0.942434, 0.177258,
		0.934714, -0.312915, 0.168505,
		42.551525, 44.856945, 57.349602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213352, 45.402451, 56.823860>,  <41.897224, 45.075989, 57.231647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213352, 45.402451, 56.823860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523254, 45.165565, 56.912437>,  <42.709194, 45.023434, 56.965584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523254, 45.165565, 56.912437>,  <42.213352, 45.402451, 56.823860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523254, 45.165565, 56.912437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439268, 0.252258, -0.862212,
		0.454752, 0.765277, 0.455579,
		0.774754, -0.592214, 0.221447,
		42.755680, 44.987900, 56.978870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875175, 45.768475, 56.842918>,  <42.213352, 45.402451, 56.823860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875175, 45.768475, 56.842918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944557, 45.380875, 56.772552>,  <42.986187, 45.148315, 56.730335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944557, 45.380875, 56.772552>,  <42.875175, 45.768475, 56.842918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944557, 45.380875, 56.772552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506507, 0.240959, -0.827883,
		0.844609, 0.054498, 0.532602,
		0.173454, -0.969004, -0.175912,
		42.996593, 45.090172, 56.719780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584400, 45.673771, 56.638420>,  <42.875175, 45.768475, 56.842918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584400, 45.673771, 56.638420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421722, 45.332062, 56.508919>,  <43.324116, 45.127037, 56.431217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421722, 45.332062, 56.508919>,  <43.584400, 45.673771, 56.638420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421722, 45.332062, 56.508919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601459, 0.016368, -0.798736,
		0.687637, -0.519567, 0.507154,
		-0.406696, -0.854273, -0.323754,
		43.299713, 45.075779, 56.411793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168301, 45.248119, 56.445782>,  <43.584400, 45.673771, 56.638420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168301, 45.248119, 56.445782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862370, 45.054832, 56.275352>,  <43.678810, 44.938862, 56.173096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862370, 45.054832, 56.275352>,  <44.168301, 45.248119, 56.445782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862370, 45.054832, 56.275352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487695, -0.002140, -0.873011,
		0.420942, -0.875498, 0.237298,
		-0.764828, -0.483216, -0.426076,
		43.632919, 44.909866, 56.147530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.430965, 44.692009, 56.061504>,  <44.168301, 45.248119, 56.445782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.430965, 44.692009, 56.061504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.073143, 44.747513, 55.891556>,  <43.858448, 44.780815, 55.789589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.073143, 44.747513, 55.891556>,  <44.430965, 44.692009, 56.061504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.073143, 44.747513, 55.891556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415985, -0.089189, -0.904987,
		-0.163467, -0.986302, 0.022064,
		-0.894558, 0.138757, -0.424867,
		43.804775, 44.789139, 55.764095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329185, 44.157494, 55.645737>,  <44.430965, 44.692009, 56.061504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.329185, 44.157494, 55.645737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101788, 44.451653, 55.498219>,  <43.965347, 44.628147, 55.409710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101788, 44.451653, 55.498219>,  <44.329185, 44.157494, 55.645737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101788, 44.451653, 55.498219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468436, -0.079161, -0.879944,
		-0.676301, -0.672999, -0.299482,
		-0.568495, 0.735395, -0.368793,
		43.931240, 44.672272, 55.387581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063652, 43.883255, 54.992615>,  <44.329185, 44.157494, 55.645737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063652, 43.883255, 54.992615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063332, 44.283241, 54.989140>,  <44.063137, 44.523232, 54.987057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063332, 44.283241, 54.989140>,  <44.063652, 43.883255, 54.992615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063332, 44.283241, 54.989140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410303, -0.007590, -0.911918,
		-0.911949, -0.004298, -0.410281,
		-0.000806, 0.999962, -0.008685,
		44.063091, 44.583229, 54.986534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065678, 44.093273, 54.262806>,  <44.063652, 43.883255, 54.992615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065678, 44.093273, 54.262806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127541, 44.457115, 54.417049>,  <44.164658, 44.675423, 54.509598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127541, 44.457115, 54.417049>,  <44.065678, 44.093273, 54.262806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127541, 44.457115, 54.417049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368697, 0.308974, -0.876697,
		-0.916594, 0.277760, -0.287585,
		0.154655, 0.909607, 0.385613,
		44.173939, 44.729996, 54.532734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802746, 44.501549, 53.841148>,  <44.065678, 44.093273, 54.262806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802746, 44.501549, 53.841148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080650, 44.708992, 54.040485>,  <44.247395, 44.833458, 54.160088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080650, 44.708992, 54.040485>,  <43.802746, 44.501549, 53.841148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080650, 44.708992, 54.040485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384317, 0.317990, -0.866708,
		-0.607955, 0.793677, 0.021616,
		0.694760, 0.518612, 0.498347,
		44.289078, 44.864574, 54.189991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783199, 45.088570, 53.500145>,  <43.802746, 44.501549, 53.841148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783199, 45.088570, 53.500145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.141102, 45.120903, 53.675812>,  <44.355843, 45.140305, 53.781212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.141102, 45.120903, 53.675812>,  <43.783199, 45.088570, 53.500145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.141102, 45.120903, 53.675812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332312, 0.536401, -0.775786,
		-0.298282, 0.840083, 0.453087,
		0.894761, 0.080837, 0.439169,
		44.409531, 45.145153, 53.807564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992451, 45.782429, 53.322380>,  <43.783199, 45.088570, 53.500145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992451, 45.782429, 53.322380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319122, 45.579926, 53.433189>,  <44.515125, 45.458424, 53.499676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319122, 45.579926, 53.433189>,  <43.992451, 45.782429, 53.322380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319122, 45.579926, 53.433189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494577, 0.366628, -0.788022,
		0.297380, 0.780567, 0.549801,
		0.816676, -0.506260, 0.277022,
		44.564125, 45.428047, 53.516296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537228, 46.312260, 53.340019>,  <43.992451, 45.782429, 53.322380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537228, 46.312260, 53.340019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758141, 45.978836, 53.345051>,  <44.890690, 45.778782, 53.348072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758141, 45.978836, 53.345051>,  <44.537228, 46.312260, 53.340019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758141, 45.978836, 53.345051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562063, 0.361172, -0.744069,
		0.615682, 0.418011, 0.667984,
		0.552287, -0.833559, 0.012582,
		44.923828, 45.728767, 53.348824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.243198, 46.462837, 53.271957>,  <44.537228, 46.312260, 53.340019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.243198, 46.462837, 53.271957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219700, 46.086708, 53.137886>,  <45.205601, 45.861031, 53.057442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219700, 46.086708, 53.137886>,  <45.243198, 46.462837, 53.271957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.219700, 46.086708, 53.137886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534390, 0.253979, -0.806177,
		0.843194, -0.226474, 0.487579,
		-0.058743, -0.940321, -0.335179,
		45.202076, 45.804611, 53.037331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.989208, 46.194489, 53.114494>,  <45.243198, 46.462837, 53.271957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.989208, 46.194489, 53.114494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.735313, 45.968155, 52.903992>,  <45.582977, 45.832355, 52.777691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.735313, 45.968155, 52.903992>,  <45.989208, 46.194489, 53.114494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.735313, 45.968155, 52.903992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503868, 0.213265, -0.837040,
		0.585858, -0.796460, 0.149740,
		-0.634734, -0.565836, -0.526253,
		45.544891, 45.798405, 52.746117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.469818, 45.793411, 52.663956>,  <45.989208, 46.194489, 53.114494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.469818, 45.793411, 52.663956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.099686, 45.807175, 52.512913>,  <45.877605, 45.815434, 52.422287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.099686, 45.807175, 52.512913>,  <46.469818, 45.793411, 52.663956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.099686, 45.807175, 52.512913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379147, 0.073347, -0.922425,
		-0.004050, -0.996712, -0.080918,
		-0.925328, 0.034416, -0.377604,
		45.822086, 45.817497, 52.399632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.593369, 45.428547, 52.104168>,  <46.469818, 45.793411, 52.663956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.593369, 45.428547, 52.104168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250694, 45.613899, 52.013515>,  <46.045090, 45.725109, 51.959122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250694, 45.613899, 52.013515>,  <46.593369, 45.428547, 52.104168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.250694, 45.613899, 52.013515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238572, -0.033613, -0.970543,
		-0.457346, -0.885523, -0.081753,
		-0.856690, 0.463378, -0.226633,
		45.993687, 45.752914, 51.945526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.389103, 45.046200, 51.526268>,  <46.593369, 45.428547, 52.104168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.389103, 45.046200, 51.526268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203773, 45.400352, 51.511173>,  <46.092575, 45.612846, 51.502117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203773, 45.400352, 51.511173>,  <46.389103, 45.046200, 51.526268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.203773, 45.400352, 51.511173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205823, 0.066093, -0.976355,
		-0.861955, -0.460138, -0.212855,
		-0.463326, 0.885384, -0.037738,
		46.064777, 45.665966, 51.499851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.055069, 44.986866, 50.938995>,  <46.389103, 45.046200, 51.526268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.055069, 44.986866, 50.938995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.064453, 45.381645, 51.002728>,  <46.070084, 45.618511, 51.040966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.064453, 45.381645, 51.002728>,  <46.055069, 44.986866, 50.938995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.064453, 45.381645, 51.002728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124901, 0.155232, -0.979950,
		-0.991892, 0.042889, -0.119629,
		0.023459, 0.986947, 0.159331,
		46.071491, 45.677731, 51.050526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.673077, 45.260811, 50.423145>,  <46.055069, 44.986866, 50.938995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.673077, 45.260811, 50.423145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893288, 45.568649, 50.552540>,  <46.025414, 45.753353, 50.630177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893288, 45.568649, 50.552540>,  <45.673077, 45.260811, 50.423145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893288, 45.568649, 50.552540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165961, 0.278864, -0.945881,
		-0.818154, 0.574420, 0.025800,
		0.550528, 0.769595, 0.323485,
		46.058445, 45.799526, 50.649586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.434719, 45.895981, 50.016434>,  <45.673077, 45.260811, 50.423145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.434719, 45.895981, 50.016434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794670, 45.981422, 50.168533>,  <46.010639, 46.032688, 50.259792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794670, 45.981422, 50.168533>,  <45.434719, 45.895981, 50.016434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794670, 45.981422, 50.168533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330617, 0.234528, -0.914160,
		-0.284448, 0.948351, 0.140425,
		0.899879, 0.213604, 0.380252,
		46.064632, 46.045502, 50.282608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.755856, 46.470135, 49.542377>,  <45.434719, 45.895981, 50.016434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.755856, 46.470135, 49.542377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.057175, 46.336830, 49.769176>,  <46.237965, 46.256847, 49.905254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.057175, 46.336830, 49.769176>,  <45.755856, 46.470135, 49.542377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.057175, 46.336830, 49.769176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657234, 0.349563, -0.667719,
		0.024325, 0.875638, 0.482355,
		0.753294, -0.333262, 0.566996,
		46.283161, 46.236851, 49.939274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.238148, 47.092724, 49.565208>,  <45.755856, 46.470135, 49.542377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.238148, 47.092724, 49.565208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.409523, 46.736076, 49.623806>,  <46.512348, 46.522087, 49.658966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.409523, 46.736076, 49.623806>,  <46.238148, 47.092724, 49.565208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.409523, 46.736076, 49.623806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524623, 0.113464, -0.843740,
		0.735670, 0.438346, 0.516375,
		0.428439, -0.891616, 0.146494,
		46.538055, 46.468590, 49.667755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.886230, 47.173321, 49.328281>,  <46.238148, 47.092724, 49.565208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.886230, 47.173321, 49.328281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.861382, 46.774162, 49.320869>,  <46.846474, 46.534668, 49.316422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.861382, 46.774162, 49.320869>,  <46.886230, 47.173321, 49.328281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.861382, 46.774162, 49.320869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565325, -0.019879, -0.824629,
		0.822526, -0.061705, 0.565371,
		-0.062123, -0.997896, -0.018533,
		46.842743, 46.474792, 49.315311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.552757, 47.008713, 49.183147>,  <46.886230, 47.173321, 49.328281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.552757, 47.008713, 49.183147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.301971, 46.720787, 49.063965>,  <47.151501, 46.548031, 48.992455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.301971, 46.720787, 49.063965>,  <47.552757, 47.008713, 49.183147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.301971, 46.720787, 49.063965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455290, -0.028206, -0.889896,
		0.632156, -0.693594, 0.345409,
		-0.626969, -0.719814, -0.297956,
		47.113880, 46.504845, 48.974579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.938709, 46.493420, 48.862202>,  <47.552757, 47.008713, 49.183147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.938709, 46.493420, 48.862202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.586716, 46.389702, 48.703003>,  <47.375519, 46.327469, 48.607483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.586716, 46.389702, 48.703003>,  <47.938709, 46.493420, 48.862202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.586716, 46.389702, 48.703003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472811, -0.397638, -0.786342,
		0.045638, -0.880141, 0.472512,
		-0.879981, -0.259296, -0.397993,
		47.322720, 46.311913, 48.583607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.109699, 45.897160, 48.435432>,  <47.938709, 46.493420, 48.862202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.109699, 45.897160, 48.435432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.747208, 46.027878, 48.328133>,  <47.529713, 46.106308, 48.263752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.747208, 46.027878, 48.328133>,  <48.109699, 45.897160, 48.435432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.747208, 46.027878, 48.328133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114923, -0.420180, -0.900134,
		-0.406854, -0.846560, 0.343227,
		-0.906235, 0.326779, -0.268241,
		47.475338, 46.125916, 48.247658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.955849, 45.428532, 47.993454>,  <48.109699, 45.897160, 48.435432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.955849, 45.428532, 47.993454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.703636, 45.724190, 47.898716>,  <47.552307, 45.901585, 47.841873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.703636, 45.724190, 47.898716>,  <47.955849, 45.428532, 47.993454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.703636, 45.724190, 47.898716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135415, -0.195708, -0.971268,
		-0.764260, -0.644487, 0.023309,
		-0.630532, 0.739145, -0.236844,
		47.514477, 45.945934, 47.827663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.470791, 45.025249, 47.569595>,  <47.955849, 45.428532, 47.993454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.470791, 45.025249, 47.569595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.400558, 45.413040, 47.501137>,  <47.358418, 45.645714, 47.460064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.400558, 45.413040, 47.501137>,  <47.470791, 45.025249, 47.569595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.400558, 45.413040, 47.501137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048110, -0.182088, -0.982105,
		-0.983289, -0.164205, 0.078613,
		-0.175581, 0.969474, -0.171145,
		47.347885, 45.703884, 47.449795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.028992, 45.045212, 46.975208>,  <47.470791, 45.025249, 47.569595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.028992, 45.045212, 46.975208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221428, 45.395271, 46.995831>,  <47.336891, 45.605309, 47.008202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221428, 45.395271, 46.995831>,  <47.028992, 45.045212, 46.975208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.221428, 45.395271, 46.995831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044689, 0.083210, -0.995530,
		-0.875530, 0.476638, 0.079141,
		0.481093, 0.875153, 0.051552,
		47.365757, 45.657818, 47.011295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.722530, 45.529079, 46.508835>,  <47.028992, 45.045212, 46.975208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.722530, 45.529079, 46.508835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.093246, 45.669044, 46.563412>,  <47.315678, 45.753025, 46.596157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.093246, 45.669044, 46.563412>,  <46.722530, 45.529079, 46.508835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.093246, 45.669044, 46.563412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061813, 0.216216, -0.974387,
		-0.370454, 0.911488, 0.178758,
		0.926792, 0.349916, 0.136440,
		47.371284, 45.774017, 46.604343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.507378, 46.075775, 46.985081>,  <46.722530, 45.529079, 46.508835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.507378, 46.075775, 46.985081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.265358, 45.860397, 46.750477>,  <46.120148, 45.731171, 46.609715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.265358, 45.860397, 46.750477>,  <46.507378, 46.075775, 46.985081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.265358, 45.860397, 46.750477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596651, -0.181129, 0.781792,
		-0.527184, 0.822966, -0.211670,
		-0.605049, -0.538442, -0.586512,
		46.083843, 45.698864, 46.574524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.878487, 46.322636, 47.074024>,  <46.507378, 46.075775, 46.985081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.878487, 46.322636, 47.074024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801254, 45.955154, 46.936214>,  <45.754913, 45.734665, 46.853527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801254, 45.955154, 46.936214>,  <45.878487, 46.322636, 47.074024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801254, 45.955154, 46.936214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673209, -0.131403, 0.727683,
		-0.713800, 0.372438, -0.593111,
		-0.193080, -0.918707, -0.344524,
		45.743332, 45.679543, 46.832859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152279, 46.251457, 47.070786>,  <45.878487, 46.322636, 47.074024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152279, 46.251457, 47.070786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258331, 45.866486, 47.047344>,  <45.321964, 45.635502, 47.033279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258331, 45.866486, 47.047344>,  <45.152279, 46.251457, 47.070786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.258331, 45.866486, 47.047344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815665, -0.256283, 0.518662,
		-0.514194, -0.089716, -0.852969,
		0.265134, -0.962429, -0.058601,
		45.337872, 45.577755, 47.029762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574852, 45.846901, 46.978947>,  <45.152279, 46.251457, 47.070786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574852, 45.846901, 46.978947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.844315, 45.596146, 47.135509>,  <45.005993, 45.445690, 47.229446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.844315, 45.596146, 47.135509>,  <44.574852, 45.846901, 46.978947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844315, 45.596146, 47.135509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704362, -0.384253, 0.596845,
		-0.223756, -0.677759, -0.700411,
		0.673653, -0.626890, 0.391409,
		45.046410, 45.408077, 47.252934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190811, 45.309494, 46.995102>,  <44.574852, 45.846901, 46.978947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190811, 45.309494, 46.995102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493393, 45.262627, 47.252487>,  <44.674942, 45.234509, 47.406918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493393, 45.262627, 47.252487>,  <44.190811, 45.309494, 46.995102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493393, 45.262627, 47.252487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624752, -0.420583, 0.657871,
		0.193553, -0.899657, -0.391350,
		0.756453, -0.117163, 0.643468,
		44.720329, 45.227478, 47.445526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025383, 44.746677, 47.183098>,  <44.190811, 45.309494, 46.995102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025383, 44.746677, 47.183098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316692, 44.836853, 47.441956>,  <44.491478, 44.890961, 47.597271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316692, 44.836853, 47.441956>,  <44.025383, 44.746677, 47.183098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316692, 44.836853, 47.441956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587095, -0.281835, 0.758874,
		0.353471, -0.932601, -0.072895,
		0.728271, 0.225444, 0.647146,
		44.535175, 44.904488, 47.636101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085007, 44.189735, 47.700886>,  <44.025383, 44.746677, 47.183098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085007, 44.189735, 47.700886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.232292, 44.513428, 47.884003>,  <44.320663, 44.707642, 47.993874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.232292, 44.513428, 47.884003>,  <44.085007, 44.189735, 47.700886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232292, 44.513428, 47.884003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590277, -0.176950, 0.787567,
		0.718327, -0.560213, 0.412514,
		0.368211, 0.809228, 0.457789,
		44.342754, 44.756195, 48.021339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344238, 43.972511, 48.402832>,  <44.085007, 44.189735, 47.700886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344238, 43.972511, 48.402832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269234, 44.363297, 48.443607>,  <44.224232, 44.597767, 48.468071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269234, 44.363297, 48.443607>,  <44.344238, 43.972511, 48.402832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269234, 44.363297, 48.443607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626394, -0.198867, 0.753712,
		0.756617, 0.077479, 0.649251,
		-0.187511, 0.976959, 0.101934,
		44.212982, 44.656384, 48.474186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267776, 44.094154, 49.093327>,  <44.344238, 43.972511, 48.402832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267776, 44.094154, 49.093327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087349, 44.396751, 48.903908>,  <43.979092, 44.578312, 48.790257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087349, 44.396751, 48.903908>,  <44.267776, 44.094154, 49.093327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087349, 44.396751, 48.903908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707433, 0.020426, 0.706486,
		0.544126, 0.653679, 0.525956,
		-0.451071, 0.756496, -0.473548,
		43.952026, 44.623699, 48.761845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015789, 44.453949, 49.595699>,  <44.267776, 44.094154, 49.093327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015789, 44.453949, 49.595699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797012, 44.608589, 49.298676>,  <43.665745, 44.701374, 49.120461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797012, 44.608589, 49.298676>,  <44.015789, 44.453949, 49.595699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797012, 44.608589, 49.298676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714246, 0.247195, 0.654788,
		0.436697, 0.888502, 0.140924,
		-0.546945, 0.386599, -0.742558,
		43.632931, 44.724567, 49.075909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736099, 45.160645, 49.833809>,  <44.015789, 44.453949, 49.595699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736099, 45.160645, 49.833809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493477, 45.020287, 49.548443>,  <43.347904, 44.936073, 49.377224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493477, 45.020287, 49.548443>,  <43.736099, 45.160645, 49.833809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493477, 45.020287, 49.548443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782950, 0.107742, 0.612683,
		-0.138121, 0.930197, -0.340084,
		-0.606557, -0.350893, -0.713416,
		43.311508, 44.915020, 49.334419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126579, 45.594635, 49.784515>,  <43.736099, 45.160645, 49.833809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126579, 45.594635, 49.784515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025768, 45.239830, 49.629757>,  <42.965282, 45.026947, 49.536903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025768, 45.239830, 49.629757>,  <43.126579, 45.594635, 49.784515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025768, 45.239830, 49.629757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811171, -0.024383, 0.584301,
		-0.527718, 0.461095, -0.713376,
		-0.252024, -0.887016, -0.386894,
		42.950161, 44.973724, 49.513687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353642, 45.647671, 49.640957>,  <43.126579, 45.594635, 49.784515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353642, 45.647671, 49.640957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435429, 45.256477, 49.657616>,  <42.484501, 45.021759, 49.667610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435429, 45.256477, 49.657616>,  <42.353642, 45.647671, 49.640957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435429, 45.256477, 49.657616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611515, -0.094395, 0.785582,
		-0.764358, -0.186094, -0.617354,
		0.204467, -0.977987, 0.041648,
		42.496769, 44.963081, 49.670109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751972, 45.431419, 49.738373>,  <42.353642, 45.647671, 49.640957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751972, 45.431419, 49.738373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996895, 45.132378, 49.841263>,  <42.143848, 44.952953, 49.902996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996895, 45.132378, 49.841263>,  <41.751972, 45.431419, 49.738373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996895, 45.132378, 49.841263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573473, -0.196010, 0.795430,
		-0.544246, -0.634563, -0.548749,
		0.612311, -0.747603, 0.257227,
		42.180588, 44.908096, 49.918430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272247, 44.851303, 49.914082>,  <41.751972, 45.431419, 49.738373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272247, 44.851303, 49.914082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631535, 44.769585, 50.069756>,  <41.847107, 44.720554, 50.163162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631535, 44.769585, 50.069756>,  <41.272247, 44.851303, 49.914082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631535, 44.769585, 50.069756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435047, -0.286801, 0.853510,
		-0.062748, -0.935954, -0.346488,
		0.898219, -0.204294, 0.389187,
		41.901001, 44.708298, 50.186512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252594, 44.200497, 50.254257>,  <41.272247, 44.851303, 49.914082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252594, 44.200497, 50.254257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546650, 44.414268, 50.421089>,  <41.723083, 44.542530, 50.521191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546650, 44.414268, 50.421089>,  <41.252594, 44.200497, 50.254257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546650, 44.414268, 50.421089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385342, -0.176762, 0.905686,
		0.557747, -0.826525, 0.075992,
		0.735139, 0.534427, 0.417083,
		41.767193, 44.574596, 50.546215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473621, 43.778610, 50.801884>,  <41.252594, 44.200497, 50.254257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473621, 43.778610, 50.801884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617859, 44.145187, 50.871284>,  <41.704399, 44.365135, 50.912926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617859, 44.145187, 50.871284>,  <41.473621, 43.778610, 50.801884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617859, 44.145187, 50.871284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234246, -0.091078, 0.967902,
		0.902831, -0.389658, 0.181832,
		0.360590, 0.916445, 0.173504,
		41.726036, 44.420120, 50.923336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858044, 43.794437, 51.408432>,  <41.473621, 43.778610, 50.801884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858044, 43.794437, 51.408432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793266, 44.186531, 51.362984>,  <41.754398, 44.421787, 51.335712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793266, 44.186531, 51.362984>,  <41.858044, 43.794437, 51.408432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793266, 44.186531, 51.362984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085122, 0.128591, 0.988038,
		0.983121, 0.150338, -0.104265,
		-0.161948, 0.980236, -0.113623,
		41.744682, 44.480602, 51.328896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470097, 44.247704, 51.563286>,  <41.858044, 43.794437, 51.408432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470097, 44.247704, 51.563286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130989, 44.442307, 51.647766>,  <41.927525, 44.559067, 51.698456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130989, 44.442307, 51.647766>,  <42.470097, 44.247704, 51.563286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130989, 44.442307, 51.647766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233465, -0.015248, 0.972246,
		0.476221, 0.873546, -0.100655,
		-0.847766, 0.486503, 0.211204,
		41.876659, 44.588257, 51.711128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631401, 44.564404, 52.205753>,  <42.470097, 44.247704, 51.563286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631401, 44.564404, 52.205753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243217, 44.657631, 52.180840>,  <42.010307, 44.713566, 52.165890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243217, 44.657631, 52.180840>,  <42.631401, 44.564404, 52.205753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243217, 44.657631, 52.180840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079823, -0.066583, 0.994583,
		0.227660, 0.970178, 0.083221,
		-0.970463, 0.233070, -0.062284,
		41.952080, 44.727551, 52.162155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610600, 45.083847, 52.703007>,  <42.631401, 44.564404, 52.205753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610600, 45.083847, 52.703007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232567, 44.964722, 52.649155>,  <42.005745, 44.893246, 52.616844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232567, 44.964722, 52.649155>,  <42.610600, 45.083847, 52.703007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232567, 44.964722, 52.649155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105047, -0.113266, 0.987996,
		-0.309484, 0.947882, 0.075762,
		-0.945085, -0.297810, -0.134626,
		41.949043, 44.875378, 52.608768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325989, 45.448380, 53.214912>,  <42.610600, 45.083847, 52.703007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325989, 45.448380, 53.214912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060158, 45.162132, 53.128902>,  <41.900661, 44.990383, 53.077297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060158, 45.162132, 53.128902>,  <42.325989, 45.448380, 53.214912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060158, 45.162132, 53.128902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063736, -0.232427, 0.970523,
		-0.744498, 0.658691, 0.108855,
		-0.664576, -0.715615, -0.215023,
		41.860786, 44.947449, 53.064396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737206, 45.555408, 53.632317>,  <42.325989, 45.448380, 53.214912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737206, 45.555408, 53.632317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727165, 45.165840, 53.542110>,  <41.721142, 44.932098, 53.487988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727165, 45.165840, 53.542110>,  <41.737206, 45.555408, 53.632317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727165, 45.165840, 53.542110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240691, -0.213058, 0.946929,
		-0.970277, 0.078050, -0.229064,
		-0.025104, -0.973917, -0.225511,
		41.719635, 44.873665, 53.474457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138290, 45.316433, 54.051788>,  <41.737206, 45.555408, 53.632317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138290, 45.316433, 54.051788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330292, 44.987251, 53.930229>,  <41.445492, 44.789742, 53.857296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330292, 44.987251, 53.930229>,  <41.138290, 45.316433, 54.051788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330292, 44.987251, 53.930229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150368, -0.418462, 0.895700,
		-0.864286, -0.384240, -0.324607,
		0.479999, -0.822951, -0.303894,
		41.474293, 44.740364, 53.839062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600513, 44.718910, 53.906414>,  <41.138290, 45.316433, 54.051788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600513, 44.718910, 53.906414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969360, 44.613121, 54.019375>,  <41.190670, 44.549648, 54.087151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969360, 44.613121, 54.019375>,  <40.600513, 44.718910, 53.906414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969360, 44.613121, 54.019375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371923, -0.404712, 0.835393,
		-0.106647, -0.875364, -0.471556,
		0.922117, -0.264474, 0.282407,
		41.245995, 44.533779, 54.104095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497593, 44.142979, 54.294353>,  <40.600513, 44.718910, 53.906414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497593, 44.142979, 54.294353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880547, 44.214844, 54.384811>,  <41.110317, 44.257961, 54.439087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880547, 44.214844, 54.384811>,  <40.497593, 44.142979, 54.294353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880547, 44.214844, 54.384811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158845, -0.326398, 0.931790,
		0.241218, -0.928001, -0.283950,
		0.957383, 0.179660, 0.226142,
		41.167763, 44.268742, 54.452656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717224, 43.515476, 54.455494>,  <40.497593, 44.142979, 54.294353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717224, 43.515476, 54.455494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004379, 43.746017, 54.611675>,  <41.176674, 43.884342, 54.705383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004379, 43.746017, 54.611675>,  <40.717224, 43.515476, 54.455494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004379, 43.746017, 54.611675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085500, -0.629624, 0.772181,
		0.690888, -0.520955, -0.501278,
		0.717888, 0.576350, 0.390458,
		41.219746, 43.918922, 54.728813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930939, 43.037598, 54.858829>,  <40.717224, 43.515476, 54.455494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930939, 43.037598, 54.858829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075424, 43.389565, 54.982292>,  <41.162117, 43.600746, 55.056370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075424, 43.389565, 54.982292>,  <40.930939, 43.037598, 54.858829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075424, 43.389565, 54.982292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117142, -0.371203, 0.921133,
		0.925096, -0.296569, -0.237159,
		0.361214, 0.879917, 0.308658,
		41.183788, 43.653542, 55.074890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549507, 42.999519, 55.224545>,  <40.930939, 43.037598, 54.858829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549507, 42.999519, 55.224545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368740, 43.326088, 55.368340>,  <41.260281, 43.522030, 55.454617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368740, 43.326088, 55.368340>,  <41.549507, 42.999519, 55.224545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368740, 43.326088, 55.368340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090557, -0.358919, 0.928965,
		0.887453, 0.452368, 0.088269,
		-0.451915, 0.816419, 0.359489,
		41.233166, 43.571014, 55.476185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859215, 43.197815, 55.878632>,  <41.549507, 42.999519, 55.224545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859215, 43.197815, 55.878632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503075, 43.373894, 55.925125>,  <41.289391, 43.479542, 55.953022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503075, 43.373894, 55.925125>,  <41.859215, 43.197815, 55.878632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503075, 43.373894, 55.925125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007096, -0.241854, 0.970287,
		0.455228, 0.864716, 0.212211,
		-0.890347, 0.440196, 0.116235,
		41.235970, 43.505951, 55.959995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810764, 43.516273, 56.645172>,  <41.859215, 43.197815, 55.878632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810764, 43.516273, 56.645172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435188, 43.485817, 56.510952>,  <41.209843, 43.467545, 56.430420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435188, 43.485817, 56.510952>,  <41.810764, 43.516273, 56.645172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435188, 43.485817, 56.510952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314930, -0.202645, 0.927229,
		-0.138598, 0.976287, 0.166293,
		-0.938941, -0.076142, -0.335549,
		41.153507, 43.462975, 56.410286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437050, 43.896034, 57.147015>,  <41.810764, 43.516273, 56.645172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437050, 43.896034, 57.147015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158600, 43.689842, 56.947136>,  <40.991531, 43.566128, 56.827209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158600, 43.689842, 56.947136>,  <41.437050, 43.896034, 57.147015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158600, 43.689842, 56.947136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532379, -0.096320, 0.841009,
		-0.481653, 0.851472, -0.207379,
		-0.696120, -0.515478, -0.499699,
		40.949764, 43.535198, 56.797226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782055, 44.249443, 57.359493>,  <41.437050, 43.896034, 57.147015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782055, 44.249443, 57.359493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747742, 43.873848, 57.226265>,  <40.727154, 43.648491, 57.146328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747742, 43.873848, 57.226265>,  <40.782055, 44.249443, 57.359493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747742, 43.873848, 57.226265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211865, -0.309464, 0.927009,
		-0.973527, 0.150087, -0.172393,
		-0.085782, -0.938992, -0.333070,
		40.722008, 43.592152, 57.126343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391312, 44.067997, 57.977623>,  <40.782055, 44.249443, 57.359493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391312, 44.067997, 57.977623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494873, 43.743881, 57.767330>,  <40.557011, 43.549412, 57.641155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494873, 43.743881, 57.767330>,  <40.391312, 44.067997, 57.977623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494873, 43.743881, 57.767330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087192, -0.561677, 0.822750,
		-0.961959, -0.167175, -0.216073,
		0.258906, -0.810291, -0.525734,
		40.572544, 43.500793, 57.609612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857857, 43.626091, 58.166893>,  <40.391312, 44.067997, 57.977623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857857, 43.626091, 58.166893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167324, 43.400871, 58.050682>,  <40.353004, 43.265739, 57.980953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167324, 43.400871, 58.050682>,  <39.857857, 43.626091, 58.166893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167324, 43.400871, 58.050682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009823, -0.469153, 0.883062,
		-0.633514, -0.680344, -0.368501,
		0.773669, -0.563052, -0.290532,
		40.399426, 43.231956, 57.963524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733379, 42.976574, 58.347366>,  <39.857857, 43.626091, 58.166893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733379, 42.976574, 58.347366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130852, 42.949150, 58.311806>,  <40.369335, 42.932697, 58.290470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130852, 42.949150, 58.311806>,  <39.733379, 42.976574, 58.347366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130852, 42.949150, 58.311806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045806, -0.475405, 0.878574,
		-0.102502, -0.877092, -0.469258,
		0.993678, -0.068560, -0.088906,
		40.428955, 42.928581, 58.285133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888710, 42.205318, 58.350571>,  <39.733379, 42.976574, 58.347366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888710, 42.205318, 58.350571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203506, 42.422295, 58.468155>,  <40.392384, 42.552479, 58.538708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203506, 42.422295, 58.468155>,  <39.888710, 42.205318, 58.350571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203506, 42.422295, 58.468155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021015, -0.499753, 0.865913,
		0.616612, -0.675284, -0.404698,
		0.786986, 0.542437, 0.293962,
		40.439602, 42.585026, 58.556343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506409, 41.678169, 58.587040>,  <39.888710, 42.205318, 58.350571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506409, 41.678169, 58.587040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584629, 42.036919, 58.745720>,  <40.631561, 42.252171, 58.840927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584629, 42.036919, 58.745720>,  <40.506409, 41.678169, 58.587040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584629, 42.036919, 58.745720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139209, -0.425801, 0.894044,
		0.970763, -0.119604, -0.208118,
		0.195548, 0.896877, 0.396702,
		40.643295, 42.305981, 58.864731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648582, 40.944653, 58.680916>,  <40.506409, 41.678169, 58.587040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648582, 40.944653, 58.680916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533508, 40.586220, 58.545700>,  <40.464462, 40.371159, 58.464573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533508, 40.586220, 58.545700>,  <40.648582, 40.944653, 58.680916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533508, 40.586220, 58.545700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016306, 0.348325, -0.937232,
		0.957585, -0.275142, -0.085598,
		-0.287688, -0.896084, -0.338037,
		40.447201, 40.317394, 58.444290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082142, 40.711666, 58.130981>,  <40.648582, 40.944653, 58.680916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082142, 40.711666, 58.130981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723614, 40.538086, 58.094547>,  <40.508495, 40.433937, 58.072689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723614, 40.538086, 58.094547>,  <41.082142, 40.711666, 58.130981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723614, 40.538086, 58.094547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027811, 0.260028, -0.965201,
		0.442533, -0.862596, -0.245137,
		-0.896321, -0.433951, -0.091081,
		40.454716, 40.407902, 58.067223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083668, 40.283703, 57.513588>,  <41.082142, 40.711666, 58.130981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083668, 40.283703, 57.513588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698994, 40.343399, 57.605576>,  <40.468189, 40.379215, 57.660767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698994, 40.343399, 57.605576>,  <41.083668, 40.283703, 57.513588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698994, 40.343399, 57.605576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174725, 0.312745, -0.933628,
		-0.211257, -0.938039, -0.274687,
		-0.961687, 0.149241, 0.229969,
		40.410488, 40.388172, 57.674564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658920, 39.742813, 57.151867>,  <41.083668, 40.283703, 57.513588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658920, 39.742813, 57.151867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444393, 40.070045, 57.234909>,  <40.315678, 40.266384, 57.284737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444393, 40.070045, 57.234909>,  <40.658920, 39.742813, 57.151867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444393, 40.070045, 57.234909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193862, 0.119999, -0.973662,
		-0.821450, -0.562441, 0.094238,
		-0.536319, 0.818084, 0.207609,
		40.283497, 40.315472, 57.297192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136776, 39.718544, 56.705833>,  <40.658920, 39.742813, 57.151867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136776, 39.718544, 56.705833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130615, 40.104515, 56.810654>,  <40.126919, 40.336098, 56.873547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130615, 40.104515, 56.810654>,  <40.136776, 39.718544, 56.705833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130615, 40.104515, 56.810654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137071, 0.257570, -0.956488,
		-0.990442, -0.050649, 0.128298,
		-0.015399, 0.964931, 0.262050,
		40.125996, 40.393993, 56.889267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614422, 39.934700, 56.293198>,  <40.136776, 39.718544, 56.705833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614422, 39.934700, 56.293198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805378, 40.265144, 56.412956>,  <39.919952, 40.463409, 56.484814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805378, 40.265144, 56.412956>,  <39.614422, 39.934700, 56.293198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805378, 40.265144, 56.412956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090763, 0.385273, -0.918328,
		-0.873991, 0.411227, 0.258906,
		0.477391, 0.826109, 0.299401,
		39.948597, 40.512978, 56.502777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250454, 40.417229, 56.005669>,  <39.614422, 39.934700, 56.293198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250454, 40.417229, 56.005669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602783, 40.596436, 56.066898>,  <39.814182, 40.703960, 56.103638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602783, 40.596436, 56.066898>,  <39.250454, 40.417229, 56.005669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602783, 40.596436, 56.066898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036618, 0.257884, -0.965482,
		-0.472023, 0.856026, 0.210745,
		0.880825, 0.448012, 0.153073,
		39.867031, 40.730839, 56.112820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114330, 41.112694, 55.680771>,  <39.250454, 40.417229, 56.005669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114330, 41.112694, 55.680771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506588, 41.054924, 55.733650>,  <39.741943, 41.020264, 55.765377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506588, 41.054924, 55.733650>,  <39.114330, 41.112694, 55.680771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506588, 41.054924, 55.733650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177112, 0.366503, -0.913404,
		0.083464, 0.919140, 0.384989,
		0.980645, -0.144422, 0.132201,
		39.800781, 41.011597, 55.773312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497520, 41.805214, 55.447773>,  <39.114330, 41.112694, 55.680771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497520, 41.805214, 55.447773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752258, 41.497238, 55.431652>,  <39.905102, 41.312454, 55.421978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752258, 41.497238, 55.431652>,  <39.497520, 41.805214, 55.447773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752258, 41.497238, 55.431652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231662, 0.240953, -0.942483,
		0.735366, 0.590877, 0.331815,
		0.636844, -0.769939, -0.040305,
		39.943310, 41.266258, 55.419559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110516, 42.085819, 55.227283>,  <39.497520, 41.805214, 55.447773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110516, 42.085819, 55.227283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140442, 41.693268, 55.156521>,  <40.158398, 41.457737, 55.114063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140442, 41.693268, 55.156521>,  <40.110516, 42.085819, 55.227283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140442, 41.693268, 55.156521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394721, 0.192058, -0.898504,
		0.915750, -0.002605, 0.401741,
		0.074817, -0.981380, -0.176906,
		40.162888, 41.398853, 55.103451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795876, 41.969250, 54.921345>,  <40.110516, 42.085819, 55.227283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795876, 41.969250, 54.921345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601570, 41.637070, 54.812256>,  <40.484985, 41.437759, 54.746803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601570, 41.637070, 54.812256>,  <40.795876, 41.969250, 54.921345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601570, 41.637070, 54.812256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277917, 0.149081, -0.948966,
		0.828730, -0.536771, 0.158379,
		-0.485766, -0.830453, -0.272725,
		40.455841, 41.387936, 54.730438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355671, 41.517593, 54.633751>,  <40.795876, 41.969250, 54.921345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355671, 41.517593, 54.633751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000420, 41.385681, 54.505699>,  <40.787270, 41.306534, 54.428867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000420, 41.385681, 54.505699>,  <41.355671, 41.517593, 54.633751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000420, 41.385681, 54.505699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248019, 0.242520, -0.937908,
		0.386942, -0.912375, -0.133596,
		-0.888123, -0.329781, -0.320128,
		40.733982, 41.286747, 54.409660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447464, 41.061665, 54.149345>,  <41.355671, 41.517593, 54.633751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447464, 41.061665, 54.149345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079441, 41.203369, 54.082420>,  <40.858627, 41.288391, 54.042267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079441, 41.203369, 54.082420>,  <41.447464, 41.061665, 54.149345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079441, 41.203369, 54.082420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285901, 0.315107, -0.904968,
		-0.267878, -0.880456, -0.391201,
		-0.920056, 0.354266, -0.167313,
		40.803425, 41.309650, 54.032227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396858, 40.806141, 53.463978>,  <41.447464, 41.061665, 54.149345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396858, 40.806141, 53.463978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105896, 41.071205, 53.535263>,  <40.931320, 41.230244, 53.578033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105896, 41.071205, 53.535263>,  <41.396858, 40.806141, 53.463978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105896, 41.071205, 53.535263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011590, 0.247798, -0.968742,
		-0.686111, -0.706733, -0.172569,
		-0.727405, 0.662664, 0.178208,
		40.887676, 41.270004, 53.588726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894295, 40.738262, 52.932728>,  <41.396858, 40.806141, 53.463978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894295, 40.738262, 52.932728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877464, 41.114838, 53.066551>,  <40.867367, 41.340782, 53.146847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877464, 41.114838, 53.066551>,  <40.894295, 40.738262, 52.932728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877464, 41.114838, 53.066551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070637, 0.336822, -0.938915,
		-0.996614, -0.015872, -0.080672,
		-0.042075, 0.941435, 0.334560,
		40.864841, 41.397266, 53.166920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375092, 41.108154, 52.532291>,  <40.894295, 40.738262, 52.932728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375092, 41.108154, 52.532291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615486, 41.377716, 52.704185>,  <40.759724, 41.539452, 52.807323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615486, 41.377716, 52.704185>,  <40.375092, 41.108154, 52.532291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615486, 41.377716, 52.704185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184712, 0.406004, -0.895010,
		-0.777623, 0.617266, 0.119525,
		0.600986, 0.673902, 0.429734,
		40.795780, 41.579887, 52.833107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198940, 41.567848, 52.119999>,  <40.375092, 41.108154, 52.532291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198940, 41.567848, 52.119999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532120, 41.707481, 52.291737>,  <40.732025, 41.791264, 52.394779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532120, 41.707481, 52.291737>,  <40.198940, 41.567848, 52.119999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532120, 41.707481, 52.291737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294158, 0.377855, -0.877893,
		-0.468692, 0.857534, 0.212046,
		0.832946, 0.349087, 0.429348,
		40.782005, 41.812206, 52.420540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302444, 42.229244, 51.957584>,  <40.198940, 41.567848, 52.119999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302444, 42.229244, 51.957584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671551, 42.107933, 52.052685>,  <40.893017, 42.035149, 52.109745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671551, 42.107933, 52.052685>,  <40.302444, 42.229244, 51.957584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671551, 42.107933, 52.052685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321298, 0.264873, -0.909181,
		0.212758, 0.915351, 0.341858,
		0.922769, -0.303274, 0.237747,
		40.948380, 42.016953, 52.124008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711182, 42.828323, 51.999912>,  <40.302444, 42.229244, 51.957584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711182, 42.828323, 51.999912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969635, 42.526398, 51.954739>,  <41.124706, 42.345242, 51.927635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969635, 42.526398, 51.954739>,  <40.711182, 42.828323, 51.999912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969635, 42.526398, 51.954739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171566, 0.287837, -0.942186,
		0.743688, 0.589406, 0.315483,
		0.646138, -0.754819, -0.112938,
		41.163475, 42.299953, 51.920856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255936, 43.105907, 51.641792>,  <40.711182, 42.828323, 51.999912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255936, 43.105907, 51.641792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298168, 42.715294, 51.566711>,  <41.323509, 42.480927, 51.521664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298168, 42.715294, 51.566711>,  <41.255936, 43.105907, 51.641792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298168, 42.715294, 51.566711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106192, 0.198752, -0.974280,
		0.988724, 0.082936, 0.124685,
		0.105584, -0.976534, -0.187703,
		41.329842, 42.422333, 51.510399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926281, 42.997196, 51.272243>,  <41.255936, 43.105907, 51.641792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926281, 42.997196, 51.272243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696846, 42.685379, 51.171597>,  <41.559185, 42.498287, 51.111210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696846, 42.685379, 51.171597>,  <41.926281, 42.997196, 51.272243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696846, 42.685379, 51.171597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335932, 0.056294, -0.940203,
		0.747092, -0.623814, 0.229584,
		-0.573587, -0.779543, -0.251616,
		41.524769, 42.451515, 51.096111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315475, 42.741199, 50.704853>,  <41.926281, 42.997196, 51.272243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315475, 42.741199, 50.704853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982048, 42.524559, 50.661343>,  <41.781990, 42.394573, 50.635239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982048, 42.524559, 50.661343>,  <42.315475, 42.741199, 50.704853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982048, 42.524559, 50.661343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272956, -0.232623, -0.933478,
		0.480270, -0.807808, 0.341740,
		-0.833568, -0.541602, -0.108774,
		41.731979, 42.362080, 50.628712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537495, 42.090908, 50.388992>,  <42.315475, 42.741199, 50.704853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537495, 42.090908, 50.388992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150475, 42.141495, 50.301498>,  <41.918262, 42.171844, 50.249001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150475, 42.141495, 50.301498>,  <42.537495, 42.090908, 50.388992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150475, 42.141495, 50.301498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211730, -0.066568, -0.975059,
		-0.137872, -0.989735, 0.037631,
		-0.967554, 0.126466, -0.218735,
		41.860207, 42.179436, 50.235878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298626, 41.628410, 49.989304>,  <42.537495, 42.090908, 50.388992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298626, 41.628410, 49.989304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979912, 41.860298, 49.921112>,  <41.788685, 41.999432, 49.880196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979912, 41.860298, 49.921112>,  <42.298626, 41.628410, 49.989304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979912, 41.860298, 49.921112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147068, -0.087604, -0.985239,
		-0.586098, -0.810093, -0.015457,
		-0.796781, 0.579719, -0.170483,
		41.740879, 42.034214, 49.869968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937870, 41.380676, 49.385174>,  <42.298626, 41.628410, 49.989304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937870, 41.380676, 49.385174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829155, 41.764336, 49.416565>,  <41.763927, 41.994534, 49.435398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829155, 41.764336, 49.416565>,  <41.937870, 41.380676, 49.385174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829155, 41.764336, 49.416565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129212, 0.117176, -0.984670,
		-0.953644, -0.257479, -0.155780,
		-0.271785, 0.959153, 0.078475,
		41.747620, 42.052082, 49.440109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285870, 41.452602, 49.041012>,  <41.937870, 41.380676, 49.385174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285870, 41.452602, 49.041012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476128, 41.804451, 49.039051>,  <41.590282, 42.015560, 49.037872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476128, 41.804451, 49.039051>,  <41.285870, 41.452602, 49.041012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476128, 41.804451, 49.039051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004146, -0.003335, -0.999986,
		-0.879629, 0.475656, 0.002061,
		0.475642, 0.879625, -0.004906,
		41.618820, 42.068340, 49.037579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127476, 41.717102, 48.460815>,  <41.285870, 41.452602, 49.041012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127476, 41.717102, 48.460815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410721, 41.981224, 48.560871>,  <41.580669, 42.139698, 48.620907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410721, 41.981224, 48.560871>,  <41.127476, 41.717102, 48.460815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410721, 41.981224, 48.560871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188865, 0.164233, -0.968172,
		-0.680371, 0.732819, -0.008413,
		0.708114, 0.660306, 0.250143,
		41.623154, 42.179317, 48.635914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983776, 42.408360, 48.018612>,  <41.127476, 41.717102, 48.460815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983776, 42.408360, 48.018612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365746, 42.415382, 48.137146>,  <41.594929, 42.419598, 48.208267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365746, 42.415382, 48.137146>,  <40.983776, 42.408360, 48.018612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365746, 42.415382, 48.137146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295418, 0.041904, -0.954448,
		-0.029174, 0.998967, 0.034829,
		0.954922, 0.017556, 0.296336,
		41.652222, 42.420650, 48.226048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222057, 42.835663, 47.514984>,  <40.983776, 42.408360, 48.018612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222057, 42.835663, 47.514984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547478, 42.672722, 47.680973>,  <41.742729, 42.574959, 47.780567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547478, 42.672722, 47.680973>,  <41.222057, 42.835663, 47.514984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547478, 42.672722, 47.680973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320488, -0.281366, -0.904500,
		0.485207, 0.868850, -0.098355,
		0.813549, -0.407348, 0.414976,
		41.791542, 42.550518, 47.805466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877403, 43.189850, 47.211304>,  <41.222057, 42.835663, 47.514984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877403, 43.189850, 47.211304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977684, 42.827972, 47.349098>,  <42.037853, 42.610844, 47.431774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977684, 42.827972, 47.349098>,  <41.877403, 43.189850, 47.211304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977684, 42.827972, 47.349098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511637, -0.178258, -0.840507,
		0.821812, 0.386969, 0.418187,
		0.250705, -0.904698, 0.344482,
		42.052895, 42.556564, 47.452442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692158, 43.173721, 47.153599>,  <41.877403, 43.189850, 47.211304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692158, 43.173721, 47.153599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533585, 42.806679, 47.165180>,  <42.438442, 42.586452, 47.172131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533585, 42.806679, 47.165180>,  <42.692158, 43.173721, 47.153599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533585, 42.806679, 47.165180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548700, -0.262103, -0.793871,
		0.736052, -0.298825, 0.607397,
		-0.396429, -0.917608, 0.028956,
		42.414658, 42.531395, 47.173866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236259, 42.752506, 47.196045>,  <42.692158, 43.173721, 47.153599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236259, 42.752506, 47.196045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933773, 42.542000, 47.040516>,  <42.752281, 42.415695, 46.947197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933773, 42.542000, 47.040516>,  <43.236259, 42.752506, 47.196045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933773, 42.542000, 47.040516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621718, -0.392655, -0.677708,
		0.203983, -0.754230, 0.624121,
		-0.756212, -0.526269, -0.388824,
		42.706909, 42.384121, 46.923870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566025, 42.368275, 46.811115>,  <43.236259, 42.752506, 47.196045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566025, 42.368275, 46.811115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205124, 42.271034, 46.668652>,  <42.988583, 42.212688, 46.583176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205124, 42.271034, 46.668652>,  <43.566025, 42.368275, 46.811115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205124, 42.271034, 46.668652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424472, -0.355214, -0.832854,
		0.075958, -0.902620, 0.423683,
		-0.902249, -0.243104, -0.356156,
		42.934448, 42.198105, 46.561806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621609, 41.648186, 46.491776>,  <43.566025, 42.368275, 46.811115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621609, 41.648186, 46.491776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315865, 41.838188, 46.317360>,  <43.132420, 41.952190, 46.212711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315865, 41.838188, 46.317360>,  <43.621609, 41.648186, 46.491776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315865, 41.838188, 46.317360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411691, -0.160936, -0.897000,
		-0.496250, -0.865144, -0.072541,
		-0.764360, 0.475001, -0.436037,
		43.086555, 41.980690, 46.186550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543262, 41.358707, 45.870975>,  <43.621609, 41.648186, 46.491776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543262, 41.358707, 45.870975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306412, 41.669540, 45.785637>,  <43.164299, 41.856041, 45.734432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306412, 41.669540, 45.785637>,  <43.543262, 41.358707, 45.870975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306412, 41.669540, 45.785637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105696, -0.187572, -0.976548,
		-0.798881, -0.600793, 0.028932,
		-0.592130, 0.777087, -0.213349,
		43.128773, 41.902668, 45.721634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258564, 41.145691, 45.188873>,  <43.543262, 41.358707, 45.870975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258564, 41.145691, 45.188873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208160, 41.539413, 45.238285>,  <43.177917, 41.775646, 45.267933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208160, 41.539413, 45.238285>,  <43.258564, 41.145691, 45.188873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208160, 41.539413, 45.238285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388766, 0.163555, -0.906703,
		-0.912679, -0.066231, -0.403275,
		-0.126009, 0.984308, 0.123525,
		43.170357, 41.834705, 45.275341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894009, 41.382542, 44.609875>,  <43.258564, 41.145691, 45.188873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894009, 41.382542, 44.609875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055351, 41.722565, 44.745350>,  <43.152157, 41.926579, 44.826633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055351, 41.722565, 44.745350>,  <42.894009, 41.382542, 44.609875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055351, 41.722565, 44.745350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314987, 0.218520, -0.923597,
		-0.859118, 0.479224, -0.179614,
		0.403361, 0.850055, 0.338684,
		43.176361, 41.977581, 44.846954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674755, 41.859306, 44.183678>,  <42.894009, 41.382542, 44.609875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674755, 41.859306, 44.183678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002609, 42.027702, 44.339096>,  <43.199322, 42.128742, 44.432346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002609, 42.027702, 44.339096>,  <42.674755, 41.859306, 44.183678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002609, 42.027702, 44.339096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427208, 0.002722, -0.904149,
		-0.381698, 0.907060, -0.177620,
		0.819634, 0.420993, 0.388542,
		43.248501, 42.153999, 44.455658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833340, 42.400524, 43.847507>,  <42.674755, 41.859306, 44.183678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833340, 42.400524, 43.847507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186630, 42.330460, 44.021511>,  <43.398605, 42.288422, 44.125912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186630, 42.330460, 44.021511>,  <42.833340, 42.400524, 43.847507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186630, 42.330460, 44.021511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458588, 0.128715, -0.879278,
		0.098023, 0.976090, 0.194011,
		0.883226, -0.175160, 0.435006,
		43.451599, 42.277912, 44.152012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384872, 42.858517, 43.632179>,  <42.833340, 42.400524, 43.847507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384872, 42.858517, 43.632179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562332, 42.517242, 43.741901>,  <43.668808, 42.312477, 43.807735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562332, 42.517242, 43.741901>,  <43.384872, 42.858517, 43.632179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562332, 42.517242, 43.741901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505851, -0.014259, -0.862503,
		0.739788, 0.521409, 0.425260,
		0.443653, -0.853187, 0.274304,
		43.695427, 42.261288, 43.824192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<45.305431, 39.346100, 54.550613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.654373, 39.540451, 54.528999>,  <45.863739, 39.657063, 54.516033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.654373, 39.540451, 54.528999>,  <45.305431, 39.346100, 54.550613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654373, 39.540451, 54.528999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146580, 0.154517, -0.977056,
		-0.466384, 0.860258, 0.206014,
		0.872353, 0.485881, -0.054033,
		45.916080, 39.686214, 54.512791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093777, 39.771225, 54.126453>,  <45.305431, 39.346100, 54.550613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093777, 39.771225, 54.126453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.490532, 39.817192, 54.104752>,  <45.728584, 39.844772, 54.091732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.490532, 39.817192, 54.104752>,  <45.093777, 39.771225, 54.126453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490532, 39.817192, 54.104752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070156, 0.139211, -0.987774,
		-0.105963, 0.983572, 0.146144,
		0.991892, 0.114920, -0.054252,
		45.788101, 39.851669, 54.088474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180912, 40.425781, 53.756020>,  <45.093777, 39.771225, 54.126453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180912, 40.425781, 53.756020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.531265, 40.241478, 53.698708>,  <45.741478, 40.130898, 53.664322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.531265, 40.241478, 53.698708>,  <45.180912, 40.425781, 53.756020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531265, 40.241478, 53.698708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005702, 0.306805, -0.951755,
		0.482485, 0.832811, 0.271354,
		0.875885, -0.460755, -0.143280,
		45.794029, 40.103252, 53.655724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549854, 40.903606, 53.335266>,  <45.180912, 40.425781, 53.756020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549854, 40.903606, 53.335266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.747330, 40.559891, 53.281754>,  <45.865814, 40.353661, 53.249645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.747330, 40.559891, 53.281754>,  <45.549854, 40.903606, 53.335266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747330, 40.559891, 53.281754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183634, 0.253370, -0.949780,
		0.850028, 0.444333, 0.282880,
		0.493692, -0.859286, -0.133777,
		45.895439, 40.302105, 53.241619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.227932, 41.083950, 53.065830>,  <45.549854, 40.903606, 53.335266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.227932, 41.083950, 53.065830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.173523, 40.702576, 52.958164>,  <46.140877, 40.473751, 52.893566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.173523, 40.702576, 52.958164>,  <46.227932, 41.083950, 53.065830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.173523, 40.702576, 52.958164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129124, 0.252308, -0.958993,
		0.982255, -0.165203, 0.088792,
		-0.136025, -0.953441, -0.269163,
		46.132717, 40.416542, 52.877415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.791557, 40.838276, 52.652981>,  <46.227932, 41.083950, 53.065830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.791557, 40.838276, 52.652981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.516571, 40.558044, 52.576481>,  <46.351582, 40.389904, 52.530579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.516571, 40.558044, 52.576481>,  <46.791557, 40.838276, 52.652981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.516571, 40.558044, 52.576481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215833, 0.054354, -0.974916,
		0.693405, -0.711498, 0.113843,
		-0.687464, -0.700583, -0.191254,
		46.310333, 40.347870, 52.519104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.179039, 40.339268, 52.235249>,  <46.791557, 40.838276, 52.652981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.179039, 40.339268, 52.235249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.785606, 40.304977, 52.171730>,  <46.549545, 40.284405, 52.133621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.785606, 40.304977, 52.171730>,  <47.179039, 40.339268, 52.235249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.785606, 40.304977, 52.171730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162252, -0.034971, -0.986129,
		0.078982, -0.995705, 0.048306,
		-0.983583, -0.085725, -0.158793,
		46.490532, 40.279263, 52.124092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.115013, 39.758789, 51.786697>,  <47.179039, 40.339268, 52.235249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.115013, 39.758789, 51.786697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.782738, 39.979240, 51.755165>,  <46.583370, 40.111511, 51.736248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.782738, 39.979240, 51.755165>,  <47.115013, 39.758789, 51.786697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.782738, 39.979240, 51.755165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052992, -0.062673, -0.996626,
		-0.554206, -0.832065, 0.022857,
		-0.830691, 0.551125, -0.078826,
		46.533531, 40.144577, 51.731518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.720287, 39.389164, 51.418221>,  <47.115013, 39.758789, 51.786697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.720287, 39.389164, 51.418221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.575371, 39.758858, 51.369984>,  <46.488419, 39.980675, 51.341042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.575371, 39.758858, 51.369984>,  <46.720287, 39.389164, 51.418221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.575371, 39.758858, 51.369984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095386, -0.091934, -0.991186,
		-0.927170, -0.370603, -0.054852,
		-0.362294, 0.924230, -0.120589,
		46.466682, 40.036125, 51.333805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346390, 39.355183, 50.900539>,  <46.720287, 39.389164, 51.418221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346390, 39.355183, 50.900539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.422508, 39.747047, 50.926018>,  <46.468178, 39.982166, 50.941307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.422508, 39.747047, 50.926018>,  <46.346390, 39.355183, 50.900539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.422508, 39.747047, 50.926018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040355, 0.057025, -0.997557,
		-0.980897, 0.192403, -0.028682,
		0.190298, 0.979658, 0.063700,
		46.479599, 40.040943, 50.945129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.903458, 39.576351, 50.483742>,  <46.346390, 39.355183, 50.900539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.903458, 39.576351, 50.483742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.177139, 39.867149, 50.506897>,  <46.341347, 40.041626, 50.520790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.177139, 39.867149, 50.506897>,  <45.903458, 39.576351, 50.483742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177139, 39.867149, 50.506897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006944, 0.072883, -0.997316,
		-0.729261, 0.682766, 0.044818,
		0.684200, 0.726993, 0.057892,
		46.382401, 40.085247, 50.524265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.653107, 39.992741, 49.893692>,  <45.903458, 39.576351, 50.483742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.653107, 39.992741, 49.893692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.016922, 40.131531, 49.985207>,  <46.235210, 40.214806, 50.040115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.016922, 40.131531, 49.985207>,  <45.653107, 39.992741, 49.893692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016922, 40.131531, 49.985207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212535, 0.084744, -0.973472,
		-0.357159, 0.934038, 0.003333,
		0.909542, 0.346976, 0.228783,
		46.289783, 40.235622, 50.053841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748127, 40.699944, 49.679806>,  <45.653107, 39.992741, 49.893692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748127, 40.699944, 49.679806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.099846, 40.509796, 49.691574>,  <46.310875, 40.395706, 49.698635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.099846, 40.509796, 49.691574>,  <45.748127, 40.699944, 49.679806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.099846, 40.509796, 49.691574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140572, 0.200010, -0.969657,
		0.455064, 0.856748, 0.242691,
		0.879293, -0.475372, 0.029417,
		46.363632, 40.367184, 49.700397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.233440, 41.205708, 49.412056>,  <45.748127, 40.699944, 49.679806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.233440, 41.205708, 49.412056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.397804, 40.843262, 49.371849>,  <46.496422, 40.625793, 49.347725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.397804, 40.843262, 49.371849>,  <46.233440, 41.205708, 49.412056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.397804, 40.843262, 49.371849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134968, 0.169507, -0.976243,
		0.901628, 0.387584, 0.191950,
		0.410913, -0.906116, -0.100521,
		46.521080, 40.571426, 49.341694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.823349, 41.331711, 48.947205>,  <46.233440, 41.205708, 49.412056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.823349, 41.331711, 48.947205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.756012, 40.937462, 48.953037>,  <46.715611, 40.700912, 48.956539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.756012, 40.937462, 48.953037>,  <46.823349, 41.331711, 48.947205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.756012, 40.937462, 48.953037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093406, -0.030678, -0.995155,
		0.981293, -0.166166, 0.097227,
		-0.168344, -0.985621, 0.014583,
		46.705509, 40.641777, 48.957413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.411243, 41.081879, 48.501209>,  <46.823349, 41.331711, 48.947205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.411243, 41.081879, 48.501209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.147324, 40.781853, 48.519402>,  <46.988972, 40.601837, 48.530319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.147324, 40.781853, 48.519402>,  <47.411243, 41.081879, 48.501209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.147324, 40.781853, 48.519402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197660, -0.231632, -0.952511,
		0.724983, -0.619472, 0.301088,
		-0.659796, -0.750067, 0.045484,
		46.949387, 40.556831, 48.533047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.773476, 40.423401, 48.155884>,  <47.411243, 41.081879, 48.501209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.773476, 40.423401, 48.155884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.377480, 40.366997, 48.153431>,  <47.139881, 40.333153, 48.151958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.377480, 40.366997, 48.153431>,  <47.773476, 40.423401, 48.155884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.377480, 40.366997, 48.153431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021970, -0.111053, -0.993572,
		0.139424, -0.983760, 0.113039,
		-0.989989, -0.141012, -0.006129,
		47.080482, 40.324692, 48.151592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.728203, 39.778683, 47.774002>,  <47.773476, 40.423401, 48.155884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.728203, 39.778683, 47.774002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.387596, 39.987328, 47.752693>,  <47.183231, 40.112514, 47.739906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.387596, 39.987328, 47.752693>,  <47.728203, 39.778683, 47.774002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.387596, 39.987328, 47.752693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017044, -0.074008, -0.997112,
		-0.524052, -0.849965, 0.054128,
		-0.851516, 0.521616, -0.053271,
		47.132141, 40.143814, 47.736713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.371346, 39.496777, 47.162598>,  <47.728203, 39.778683, 47.774002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.371346, 39.496777, 47.162598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.223282, 39.865440, 47.209103>,  <47.134441, 40.086639, 47.237007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.223282, 39.865440, 47.209103>,  <47.371346, 39.496777, 47.162598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.223282, 39.865440, 47.209103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060639, 0.148859, -0.986997,
		-0.926986, -0.358299, -0.110991,
		-0.370163, 0.921663, 0.116264,
		47.112232, 40.141941, 47.243980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.115417, 39.592216, 46.570869>,  <47.371346, 39.496777, 47.162598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.115417, 39.592216, 46.570869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.088188, 39.967781, 46.705818>,  <47.071850, 40.193119, 46.786789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.088188, 39.967781, 46.705818>,  <47.115417, 39.592216, 46.570869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.088188, 39.967781, 46.705818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219252, 0.343967, -0.913025,
		-0.973291, 0.011820, -0.229271,
		-0.068070, 0.938907, 0.337371,
		47.067768, 40.249454, 46.807030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.649380, 39.900097, 46.169167>,  <47.115417, 39.592216, 46.570869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.649380, 39.900097, 46.169167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.883224, 40.186859, 46.321106>,  <47.023529, 40.358917, 46.412270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.883224, 40.186859, 46.321106>,  <46.649380, 39.900097, 46.169167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.883224, 40.186859, 46.321106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191958, 0.332667, -0.923301,
		-0.788279, 0.612685, 0.056865,
		0.584610, 0.716903, 0.379844,
		47.058609, 40.401932, 46.435059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.447273, 40.536320, 45.763023>,  <46.649380, 39.900097, 46.169167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.447273, 40.536320, 45.763023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.813034, 40.600952, 45.911488>,  <47.032490, 40.639732, 46.000565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.813034, 40.600952, 45.911488>,  <46.447273, 40.536320, 45.763023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.813034, 40.600952, 45.911488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279051, 0.412605, -0.867114,
		-0.293254, 0.896464, 0.332197,
		0.914403, 0.161585, 0.371157,
		47.087357, 40.649429, 46.022835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.785458, 40.299931, 45.496025>,  <46.447273, 40.536320, 45.763023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.785458, 40.299931, 45.496025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.391693, 40.323990, 45.429916>,  <45.155434, 40.338425, 45.390251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.391693, 40.323990, 45.429916>,  <45.785458, 40.299931, 45.496025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391693, 40.323990, 45.429916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172584, -0.149399, 0.973599,
		0.033871, 0.986946, 0.157451,
		-0.984412, 0.060151, -0.165270,
		45.096371, 40.342033, 45.380337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466682, 40.769539, 46.004303>,  <45.785458, 40.299931, 45.496025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466682, 40.769539, 46.004303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.198654, 40.496300, 45.888107>,  <45.037838, 40.332355, 45.818390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.198654, 40.496300, 45.888107>,  <45.466682, 40.769539, 46.004303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198654, 40.496300, 45.888107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239886, -0.171062, 0.955611,
		-0.702465, 0.710013, -0.049242,
		-0.670073, -0.683095, -0.290487,
		44.997631, 40.291370, 45.800961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.963863, 40.898663, 46.461002>,  <45.466682, 40.769539, 46.004303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.963863, 40.898663, 46.461002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.891312, 40.535744, 46.309261>,  <44.847778, 40.317993, 46.218216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.891312, 40.535744, 46.309261>,  <44.963863, 40.898663, 46.461002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891312, 40.535744, 46.309261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344528, -0.302677, 0.888644,
		-0.921087, 0.291881, -0.257690,
		-0.181382, -0.907299, -0.379353,
		44.836899, 40.263554, 46.195454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250767, 40.800472, 46.537533>,  <44.963863, 40.898663, 46.461002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250767, 40.800472, 46.537533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.430077, 40.443092, 46.526249>,  <44.537663, 40.228664, 46.519478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.430077, 40.443092, 46.526249>,  <44.250767, 40.800472, 46.537533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.430077, 40.443092, 46.526249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493082, -0.273467, 0.825884,
		-0.745602, -0.356313, -0.563133,
		0.448272, -0.893452, -0.028206,
		44.564560, 40.175056, 46.517788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728256, 40.322002, 46.702778>,  <44.250767, 40.800472, 46.537533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728256, 40.322002, 46.702778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.050797, 40.088257, 46.739254>,  <44.244320, 39.948009, 46.761139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.050797, 40.088257, 46.739254>,  <43.728256, 40.322002, 46.702778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050797, 40.088257, 46.739254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370508, -0.378931, 0.848018,
		-0.461000, -0.717585, -0.522064,
		0.806351, -0.584366, 0.091183,
		44.292702, 39.912949, 46.766609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465328, 39.617523, 46.921181>,  <43.728256, 40.322002, 46.702778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465328, 39.617523, 46.921181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.856461, 39.620216, 47.004902>,  <44.091141, 39.621830, 47.055134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.856461, 39.620216, 47.004902>,  <43.465328, 39.617523, 46.921181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856461, 39.620216, 47.004902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182686, -0.461185, 0.868294,
		0.102372, -0.887279, -0.449729,
		0.977827, 0.006730, 0.209306,
		44.149807, 39.622234, 47.067692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584969, 38.968197, 47.271629>,  <43.465328, 39.617523, 46.921181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584969, 38.968197, 47.271629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.877907, 39.219460, 47.376762>,  <44.053669, 39.370216, 47.439842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.877907, 39.219460, 47.376762>,  <43.584969, 38.968197, 47.271629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877907, 39.219460, 47.376762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151456, -0.226046, 0.962270,
		0.663872, -0.744524, -0.070406,
		0.732349, 0.628161, 0.262828,
		44.097610, 39.407909, 47.455612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001682, 38.564400, 47.778149>,  <43.584969, 38.968197, 47.271629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001682, 38.564400, 47.778149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.089996, 38.948143, 47.848438>,  <44.142982, 39.178391, 47.890614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.089996, 38.948143, 47.848438>,  <44.001682, 38.564400, 47.778149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089996, 38.948143, 47.848438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090254, -0.159303, 0.983095,
		0.971139, -0.232908, 0.051415,
		0.220781, 0.959362, 0.175727,
		44.156231, 39.235950, 47.901157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417175, 38.523418, 48.347252>,  <44.001682, 38.564400, 47.778149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417175, 38.523418, 48.347252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.336906, 38.915207, 48.354996>,  <44.288746, 39.150280, 48.359642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.336906, 38.915207, 48.354996>,  <44.417175, 38.523418, 48.347252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336906, 38.915207, 48.354996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002984, -0.020377, 0.999788,
		0.979653, 0.200574, 0.007012,
		-0.200674, 0.979467, 0.019364,
		44.276703, 39.209045, 48.360806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.898453, 38.919209, 48.867622>,  <44.417175, 38.523418, 48.347252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.898453, 38.919209, 48.867622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.593838, 39.165482, 48.786621>,  <44.411068, 39.313244, 48.738022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.593838, 39.165482, 48.786621>,  <44.898453, 38.919209, 48.867622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593838, 39.165482, 48.786621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011300, 0.299784, 0.953940,
		0.648028, 0.728745, -0.221338,
		-0.761533, 0.615678, -0.202503,
		44.365379, 39.350185, 48.725868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082302, 39.494759, 49.232006>,  <44.898453, 38.919209, 48.867622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082302, 39.494759, 49.232006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.688171, 39.491531, 49.163815>,  <44.451691, 39.489594, 49.122902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.688171, 39.491531, 49.163815>,  <45.082302, 39.494759, 49.232006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688171, 39.491531, 49.163815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164471, 0.311593, 0.935873,
		0.045566, 0.950181, -0.308349,
		-0.985329, -0.008071, -0.170476,
		44.392574, 39.489109, 49.112671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795181, 39.974201, 49.699650>,  <45.082302, 39.494759, 49.232006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795181, 39.974201, 49.699650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.469849, 39.760696, 49.607052>,  <44.274651, 39.632591, 49.551495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.469849, 39.760696, 49.607052>,  <44.795181, 39.974201, 49.699650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469849, 39.760696, 49.607052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311192, 0.062927, 0.948261,
		-0.491582, 0.843288, -0.217284,
		-0.813331, -0.533765, -0.231491,
		44.225849, 39.600567, 49.537605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162083, 40.349075, 49.894096>,  <44.795181, 39.974201, 49.699650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162083, 40.349075, 49.894096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.054344, 39.964340, 49.874840>,  <43.989700, 39.733498, 49.863285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.054344, 39.964340, 49.874840>,  <44.162083, 40.349075, 49.894096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.054344, 39.964340, 49.874840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468106, 0.087073, 0.879372,
		-0.841623, 0.259390, -0.473695,
		-0.269346, -0.961840, -0.048139,
		43.973541, 39.675789, 49.860397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484711, 40.304539, 50.196850>,  <44.162083, 40.349075, 49.894096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484711, 40.304539, 50.196850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.629227, 39.931877, 50.212280>,  <43.715935, 39.708279, 50.221539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.629227, 39.931877, 50.212280>,  <43.484711, 40.304539, 50.196850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629227, 39.931877, 50.212280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355890, -0.099539, 0.929212,
		-0.861866, -0.349441, -0.367529,
		0.361288, -0.931656, 0.038573,
		43.737614, 39.652382, 50.223854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921375, 39.967274, 50.657848>,  <43.484711, 40.304539, 50.196850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921375, 39.967274, 50.657848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.242260, 39.729202, 50.638988>,  <43.434792, 39.586357, 50.627674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.242260, 39.729202, 50.638988>,  <42.921375, 39.967274, 50.657848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242260, 39.729202, 50.638988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168586, -0.301571, 0.938421,
		-0.572749, -0.744859, -0.342262,
		0.802207, -0.595181, -0.047151,
		43.482922, 39.550648, 50.624844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646278, 39.375149, 50.958698>,  <42.921375, 39.967274, 50.657848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646278, 39.375149, 50.958698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.044773, 39.408775, 50.967094>,  <43.283871, 39.428951, 50.972134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.044773, 39.408775, 50.967094>,  <42.646278, 39.375149, 50.958698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044773, 39.408775, 50.967094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011162, -0.115738, 0.993217,
		0.085927, -0.989716, -0.114364,
		0.996239, 0.084067, 0.020992,
		43.343643, 39.433994, 50.973392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871883, 38.698681, 51.285175>,  <42.646278, 39.375149, 50.958698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871883, 38.698681, 51.285175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.174873, 38.959740, 51.291847>,  <43.356667, 39.116375, 51.295849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.174873, 38.959740, 51.291847>,  <42.871883, 38.698681, 51.285175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174873, 38.959740, 51.291847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133718, -0.180103, 0.974517,
		0.639022, -0.735943, -0.223695,
		0.757477, 0.652649, 0.016681,
		43.402115, 39.155533, 51.296852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485580, 38.423874, 51.565815>,  <42.871883, 38.698681, 51.285175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485580, 38.423874, 51.565815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.537315, 38.812981, 51.642761>,  <43.568356, 39.046444, 51.688931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.537315, 38.812981, 51.642761>,  <43.485580, 38.423874, 51.565815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537315, 38.812981, 51.642761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092037, -0.204934, 0.974439,
		0.987321, -0.108324, -0.116035,
		0.129335, 0.972763, 0.192366,
		43.576115, 39.104809, 51.700470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<44.196911, 38.428131, 52.021053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.052116, 38.799767, 52.051392>,  <43.965240, 39.022747, 52.069595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.052116, 38.799767, 52.051392>,  <44.196911, 38.428131, 52.021053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052116, 38.799767, 52.051392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025240, -0.071570, 0.997116,
		0.931840, 0.362861, 0.002458,
		-0.361990, 0.929091, 0.075850,
		43.943520, 39.078495, 52.074146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654739, 38.939007, 52.401855>,  <44.196911, 38.428131, 52.021053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654739, 38.939007, 52.401855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.301971, 39.123619, 52.440247>,  <44.090313, 39.234386, 52.463280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.301971, 39.123619, 52.440247>,  <44.654739, 38.939007, 52.401855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301971, 39.123619, 52.440247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121075, 0.024996, 0.992329,
		0.455593, 0.886771, -0.077924,
		-0.881916, 0.461532, 0.095978,
		44.037395, 39.262077, 52.469040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800755, 39.501858, 52.873001>,  <44.654739, 38.939007, 52.401855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800755, 39.501858, 52.873001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.407421, 39.432243, 52.894024>,  <44.171421, 39.390476, 52.906635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.407421, 39.432243, 52.894024>,  <44.800755, 39.501858, 52.873001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407421, 39.432243, 52.894024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040595, 0.071570, 0.996609,
		-0.177206, 0.982135, -0.063313,
		-0.983336, -0.174035, 0.052553,
		44.112419, 39.380032, 52.909790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538849, 39.985245, 53.178898>,  <44.800755, 39.501858, 52.873001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538849, 39.985245, 53.178898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.229515, 39.732948, 53.204597>,  <44.043915, 39.581570, 53.220016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.229515, 39.732948, 53.204597>,  <44.538849, 39.985245, 53.178898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229515, 39.732948, 53.204597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171791, 0.306018, 0.936398,
		-0.610286, 0.713106, -0.345008,
		-0.773330, -0.630740, 0.064253,
		43.997517, 39.543728, 53.223873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152039, 40.383232, 53.608822>,  <44.538849, 39.985245, 53.178898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152039, 40.383232, 53.608822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.993431, 40.016586, 53.629204>,  <43.898266, 39.796600, 53.641434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.993431, 40.016586, 53.629204>,  <44.152039, 40.383232, 53.608822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993431, 40.016586, 53.629204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201248, 0.140946, 0.969347,
		-0.895695, 0.374113, -0.240354,
		-0.396522, -0.916610, 0.050955,
		43.874474, 39.741604, 53.644489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500973, 40.471207, 53.948391>,  <44.152039, 40.383232, 53.608822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500973, 40.471207, 53.948391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.640205, 40.100113, 54.002262>,  <43.723747, 39.877457, 54.034584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.640205, 40.100113, 54.002262>,  <43.500973, 40.471207, 53.948391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.640205, 40.100113, 54.002262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311549, 0.021019, 0.949998,
		-0.884180, -0.372638, -0.281719,
		0.348084, -0.927739, 0.134679,
		43.744629, 39.821793, 54.042667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019066, 40.100441, 54.310085>,  <43.500973, 40.471207, 53.948391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019066, 40.100441, 54.310085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.333870, 39.873535, 54.407108>,  <43.522751, 39.737392, 54.465321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.333870, 39.873535, 54.407108>,  <43.019066, 40.100441, 54.310085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333870, 39.873535, 54.407108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393595, -0.158911, 0.905445,
		-0.475079, -0.808061, -0.348335,
		0.787009, -0.567261, 0.242554,
		43.569973, 39.703358, 54.479874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790104, 39.462799, 54.547020>,  <43.019066, 40.100441, 54.310085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790104, 39.462799, 54.547020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.154884, 39.453842, 54.710892>,  <43.373753, 39.448467, 54.809216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.154884, 39.453842, 54.710892>,  <42.790104, 39.462799, 54.547020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154884, 39.453842, 54.710892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387691, -0.373892, 0.842556,
		0.134307, -0.927202, -0.349655,
		0.911953, -0.022397, 0.409684,
		43.428471, 39.447124, 54.833797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952667, 38.740410, 54.801685>,  <42.790104, 39.462799, 54.547020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952667, 38.740410, 54.801685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.164200, 39.016022, 54.999908>,  <43.291119, 39.181389, 55.118843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.164200, 39.016022, 54.999908>,  <42.952667, 38.740410, 54.801685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164200, 39.016022, 54.999908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341383, -0.361882, 0.867467,
		0.777041, -0.627921, 0.043846,
		0.528834, 0.689026, 0.495558,
		43.322849, 39.222729, 55.148575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296921, 38.350510, 55.244537>,  <42.952667, 38.740410, 54.801685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296921, 38.350510, 55.244537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.357426, 38.708313, 55.412807>,  <43.393730, 38.922997, 55.513771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.357426, 38.708313, 55.412807>,  <43.296921, 38.350510, 55.244537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357426, 38.708313, 55.412807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280172, -0.369322, 0.886061,
		0.947957, -0.251892, 0.194752,
		0.151266, 0.894512, 0.420675,
		43.402805, 38.976665, 55.539009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605579, 38.244976, 55.918041>,  <43.296921, 38.350510, 55.244537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605579, 38.244976, 55.918041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.484123, 38.624657, 55.951092>,  <43.411251, 38.852463, 55.970924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.484123, 38.624657, 55.951092>,  <43.605579, 38.244976, 55.918041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484123, 38.624657, 55.951092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377470, -0.199467, 0.904284,
		0.874826, 0.243384, 0.418859,
		-0.303637, 0.949198, 0.082629,
		43.393032, 38.909416, 55.975880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817368, 38.415688, 56.606976>,  <43.605579, 38.244976, 55.918041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817368, 38.415688, 56.606976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.564972, 38.711349, 56.512741>,  <43.413536, 38.888748, 56.456200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.564972, 38.711349, 56.512741>,  <43.817368, 38.415688, 56.606976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564972, 38.711349, 56.512741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188157, 0.148790, 0.970803,
		0.752627, 0.656894, 0.045192,
		-0.630990, 0.739156, -0.235583,
		43.375675, 38.933098, 56.442066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001198, 38.958755, 57.038254>,  <43.817368, 38.415688, 56.606976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001198, 38.958755, 57.038254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.614880, 38.998734, 56.942543>,  <43.383087, 39.022720, 56.885117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.614880, 38.998734, 56.942543>,  <44.001198, 38.958755, 57.038254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614880, 38.998734, 56.942543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228118, 0.111294, 0.967252,
		0.123301, 0.988749, -0.084688,
		-0.965795, 0.099944, -0.239274,
		43.325142, 39.028717, 56.870762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707108, 39.508495, 57.301716>,  <44.001198, 38.958755, 57.038254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707108, 39.508495, 57.301716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.357304, 39.330551, 57.224434>,  <43.147423, 39.223785, 57.178066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.357304, 39.330551, 57.224434>,  <43.707108, 39.508495, 57.301716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357304, 39.330551, 57.224434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293556, 0.168406, 0.940991,
		-0.386076, 0.879623, -0.277865,
		-0.874511, -0.444864, -0.193201,
		43.094952, 39.197094, 57.166473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203308, 39.894180, 57.571754>,  <43.707108, 39.508495, 57.301716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203308, 39.894180, 57.571754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.990639, 39.557457, 57.534492>,  <42.863037, 39.355423, 57.512135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.990639, 39.557457, 57.534492>,  <43.203308, 39.894180, 57.571754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990639, 39.557457, 57.534492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441522, 0.181626, 0.878675,
		-0.722756, 0.508303, -0.468243,
		-0.531678, -0.841808, -0.093156,
		42.831135, 39.304916, 57.506546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458618, 40.113853, 57.885921>,  <43.203308, 39.894180, 57.571754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458618, 40.113853, 57.885921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.488457, 39.716133, 57.855476>,  <42.506359, 39.477501, 57.837208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.488457, 39.716133, 57.855476>,  <42.458618, 40.113853, 57.885921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488457, 39.716133, 57.855476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608107, -0.105849, 0.786767,
		-0.790343, -0.012402, -0.612539,
		0.074594, -0.994305, -0.076115,
		42.510834, 39.417843, 57.832642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768204, 39.830341, 58.035160>,  <42.458618, 40.113853, 57.885921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768204, 39.830341, 58.035160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.023518, 39.533569, 58.117256>,  <42.176708, 39.355507, 58.166515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.023518, 39.533569, 58.117256>,  <41.768204, 39.830341, 58.035160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023518, 39.533569, 58.117256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451636, -0.145016, 0.880338,
		-0.623388, -0.654604, -0.427646,
		0.638289, -0.741932, 0.205242,
		42.215004, 39.310989, 58.178829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388809, 39.245800, 58.206215>,  <41.768204, 39.830341, 58.035160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388809, 39.245800, 58.206215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.747383, 39.205643, 58.378872>,  <41.962528, 39.181549, 58.482468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.747383, 39.205643, 58.378872>,  <41.388809, 39.245800, 58.206215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747383, 39.205643, 58.378872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442231, -0.265961, 0.856561,
		0.028809, -0.958742, -0.282814,
		0.896438, -0.100393, 0.431647,
		42.016315, 39.175526, 58.508366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304001, 38.730625, 58.691704>,  <41.388809, 39.245800, 58.206215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304001, 38.730625, 58.691704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.649979, 38.899788, 58.799797>,  <41.857563, 39.001286, 58.864655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.649979, 38.899788, 58.799797>,  <41.304001, 38.730625, 58.691704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649979, 38.899788, 58.799797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228137, -0.148286, 0.962271,
		0.447026, -0.893956, -0.031777,
		0.864940, 0.422910, 0.270232,
		41.909462, 39.026661, 58.880867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615761, 38.206142, 59.134861>,  <41.304001, 38.730625, 58.691704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615761, 38.206142, 59.134861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.748661, 38.579315, 59.190361>,  <41.828400, 38.803219, 59.223663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.748661, 38.579315, 59.190361>,  <41.615761, 38.206142, 59.134861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748661, 38.579315, 59.190361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271955, -0.046106, 0.961205,
		0.903134, -0.357092, 0.238397,
		0.332247, 0.932930, 0.138753,
		41.848335, 38.859196, 59.231987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790634, 38.156601, 59.840420>,  <41.615761, 38.206142, 59.134861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790634, 38.156601, 59.840420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.836010, 38.549782, 59.782539>,  <41.863235, 38.785690, 59.747810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.836010, 38.549782, 59.782539>,  <41.790634, 38.156601, 59.840420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836010, 38.549782, 59.782539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028177, 0.148770, 0.988470,
		0.993145, -0.108055, 0.044573,
		0.113440, 0.982950, -0.144705,
		41.870041, 38.844666, 59.739128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408546, 38.448761, 60.309002>,  <41.790634, 38.156601, 59.840420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408546, 38.448761, 60.309002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.140564, 38.736710, 60.236389>,  <41.979774, 38.909477, 60.192822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.140564, 38.736710, 60.236389>,  <42.408546, 38.448761, 60.309002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140564, 38.736710, 60.236389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169026, 0.090193, 0.981476,
		0.722906, 0.688227, 0.061251,
		-0.669954, 0.719867, -0.181529,
		41.939579, 38.952671, 60.181931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604927, 39.212284, 60.632812>,  <42.408546, 38.448761, 60.309002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604927, 39.212284, 60.632812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.214203, 39.137650, 60.590805>,  <41.979767, 39.092869, 60.565601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.214203, 39.137650, 60.590805>,  <42.604927, 39.212284, 60.632812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214203, 39.137650, 60.590805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142315, 0.199339, 0.969541,
		-0.159967, 0.962003, -0.221270,
		-0.976810, -0.186585, -0.105019,
		41.921162, 39.081673, 60.559299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137909, 39.653011, 60.991173>,  <42.604927, 39.212284, 60.632812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137909, 39.653011, 60.991173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.916733, 39.322685, 60.946838>,  <41.784027, 39.124489, 60.920238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.916733, 39.322685, 60.946838>,  <42.137909, 39.653011, 60.991173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916733, 39.322685, 60.946838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293816, 0.068776, 0.953385,
		-0.779695, 0.559734, -0.280666,
		-0.552945, -0.825814, -0.110835,
		41.750851, 39.074940, 60.913589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857704, 39.675453, 61.159782>,  <42.137909, 39.653011, 60.991173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857704, 39.675453, 61.159782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.149849, 39.755661, 61.420967>,  <43.325138, 39.803787, 61.577679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.149849, 39.755661, 61.420967>,  <42.857704, 39.675453, 61.159782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149849, 39.755661, 61.420967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662541, 0.024547, -0.748623,
		-0.166144, 0.979382, -0.114926,
		0.730366, 0.200523, 0.652959,
		43.368958, 39.815819, 61.616856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091747, 40.272728, 60.960712>,  <42.857704, 39.675453, 61.159782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091747, 40.272728, 60.960712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.385406, 40.124115, 61.188042>,  <43.561604, 40.034946, 61.324440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.385406, 40.124115, 61.188042>,  <43.091747, 40.272728, 60.960712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385406, 40.124115, 61.188042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654883, 0.166407, -0.737181,
		0.179312, 0.913386, 0.365477,
		0.734149, -0.371530, 0.568323,
		43.605652, 40.012657, 61.358540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648914, 40.720119, 60.876358>,  <43.091747, 40.272728, 60.960712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648914, 40.720119, 60.876358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.816795, 40.378143, 60.998291>,  <43.917526, 40.172958, 61.071449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.816795, 40.378143, 60.998291>,  <43.648914, 40.720119, 60.876358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816795, 40.378143, 60.998291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605764, 0.013733, -0.795526,
		0.675942, 0.518541, 0.523657,
		0.419704, -0.854942, 0.304831,
		43.942707, 40.121662, 61.089741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.360672, 40.946327, 60.897255>,  <43.648914, 40.720119, 60.876358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.360672, 40.946327, 60.897255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.356720, 40.546394, 60.891090>,  <44.354347, 40.306435, 60.887394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.356720, 40.546394, 60.891090>,  <44.360672, 40.946327, 60.897255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356720, 40.546394, 60.891090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736235, 0.003154, -0.676719,
		0.676654, -0.018030, 0.736080,
		-0.009880, -0.999832, -0.015409,
		44.353756, 40.246445, 60.886467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055126, 40.726540, 61.006424>,  <44.360672, 40.946327, 60.897255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055126, 40.726540, 61.006424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.865471, 40.425430, 60.823765>,  <44.751678, 40.244762, 60.714169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.865471, 40.425430, 60.823765>,  <45.055126, 40.726540, 61.006424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865471, 40.425430, 60.823765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628414, 0.073935, -0.774358,
		0.616680, -0.654112, 0.437999,
		-0.474134, -0.752775, -0.456647,
		44.723232, 40.199596, 60.686771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563801, 40.357979, 60.722641>,  <45.055126, 40.726540, 61.006424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.563801, 40.357979, 60.722641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.251678, 40.217979, 60.515327>,  <45.064404, 40.133980, 60.390938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.251678, 40.217979, 60.515327>,  <45.563801, 40.357979, 60.722641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.251678, 40.217979, 60.515327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617373, -0.298774, -0.727726,
		0.099854, -0.887825, 0.449217,
		-0.780308, -0.350000, -0.518285,
		45.017586, 40.112980, 60.359840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.770111, 39.817261, 60.262299>,  <45.563801, 40.357979, 60.722641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.770111, 39.817261, 60.262299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.424774, 39.937386, 60.100082>,  <45.217571, 40.009460, 60.002754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.424774, 39.937386, 60.100082>,  <45.770111, 39.817261, 60.262299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.424774, 39.937386, 60.100082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380368, -0.140834, -0.914049,
		-0.331610, -0.943388, 0.007360,
		-0.863339, 0.300309, -0.405537,
		45.165771, 40.027477, 59.978420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.691631, 39.431667, 59.665871>,  <45.770111, 39.817261, 60.262299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.691631, 39.431667, 59.665871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.441139, 39.737091, 59.602859>,  <45.290844, 39.920345, 59.565052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.441139, 39.737091, 59.602859>,  <45.691631, 39.431667, 59.665871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.441139, 39.737091, 59.602859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304038, 0.053120, -0.951178,
		-0.717910, -0.643552, -0.265415,
		-0.626231, 0.763557, -0.157529,
		45.253269, 39.966160, 59.555599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223373, 39.206440, 59.137955>,  <45.691631, 39.431667, 59.665871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223373, 39.206440, 59.137955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.226238, 39.606247, 59.150108>,  <45.227955, 39.846130, 59.157402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.226238, 39.606247, 59.150108>,  <45.223373, 39.206440, 59.137955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.226238, 39.606247, 59.150108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128984, 0.029207, -0.991216,
		-0.991621, 0.011015, -0.128712,
		0.007159, 0.999513, 0.030383,
		45.228386, 39.906101, 59.159222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795731, 39.272587, 58.605003>,  <45.223373, 39.206440, 59.137955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795731, 39.272587, 58.605003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.965240, 39.633888, 58.631966>,  <45.066948, 39.850670, 58.648144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.965240, 39.633888, 58.631966>,  <44.795731, 39.272587, 58.605003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965240, 39.633888, 58.631966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015686, 0.081729, -0.996531,
		-0.905632, 0.421246, 0.048803,
		0.423773, 0.903256, 0.067409,
		45.092373, 39.904865, 58.652187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476814, 39.690853, 58.086742>,  <44.795731, 39.272587, 58.605003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476814, 39.690853, 58.086742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.809464, 39.897240, 58.168892>,  <45.009052, 40.021072, 58.218182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.809464, 39.897240, 58.168892>,  <44.476814, 39.690853, 58.086742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809464, 39.897240, 58.168892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084004, 0.248684, -0.964935,
		-0.548951, 0.819714, 0.163467,
		0.831622, 0.515970, 0.205374,
		45.058949, 40.052032, 58.230503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402386, 40.330185, 57.698700>,  <44.476814, 39.690853, 58.086742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402386, 40.330185, 57.698700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.788651, 40.243378, 57.755844>,  <45.020409, 40.191296, 57.790131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.788651, 40.243378, 57.755844>,  <44.402386, 40.330185, 57.698700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788651, 40.243378, 57.755844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166223, 0.093424, -0.981653,
		0.199688, 0.971687, 0.126289,
		0.965658, -0.217016, 0.142861,
		45.078346, 40.178272, 57.798702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674931, 40.687386, 57.221272>,  <44.402386, 40.330185, 57.698700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674931, 40.687386, 57.221272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.987862, 40.455040, 57.311211>,  <45.175621, 40.315632, 57.365173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.987862, 40.455040, 57.311211>,  <44.674931, 40.687386, 57.221272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987862, 40.455040, 57.311211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383915, 0.165427, -0.908429,
		0.490476, 0.797015, 0.352420,
		0.782331, -0.580862, 0.224848,
		45.222561, 40.280781, 57.378666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241402, 41.045799, 56.905094>,  <44.674931, 40.687386, 57.221272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.241402, 41.045799, 56.905094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.359161, 40.668709, 56.967834>,  <45.429817, 40.442455, 57.005478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.359161, 40.668709, 56.967834>,  <45.241402, 41.045799, 56.905094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.359161, 40.668709, 56.967834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387473, -0.032286, -0.921315,
		0.873608, 0.332014, 0.355774,
		0.294403, -0.942722, 0.156852,
		45.447483, 40.385891, 57.014889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.837582, 40.997505, 56.526772>,  <45.241402, 41.045799, 56.905094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.837582, 40.997505, 56.526772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.755516, 40.619469, 56.628529>,  <45.706276, 40.392647, 56.689583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.755516, 40.619469, 56.628529>,  <45.837582, 40.997505, 56.526772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.755516, 40.619469, 56.628529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431301, -0.320629, -0.843313,
		0.878570, -0.063299, 0.473400,
		-0.205167, -0.945088, 0.254394,
		45.693966, 40.335941, 56.704845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.458122, 40.605953, 56.350548>,  <45.837582, 40.997505, 56.526772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.458122, 40.605953, 56.350548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.167168, 40.331665, 56.361115>,  <45.992596, 40.167091, 56.367455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.167168, 40.331665, 56.361115>,  <46.458122, 40.605953, 56.350548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.167168, 40.331665, 56.361115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308194, -0.360830, -0.880237,
		0.613127, -0.632132, 0.473798,
		-0.727386, -0.685719, 0.026415,
		45.948952, 40.125950, 56.369038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.827232, 39.994595, 56.242722>,  <46.458122, 40.605953, 56.350548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.827232, 39.994595, 56.242722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.443901, 39.969566, 56.131222>,  <46.213902, 39.954548, 56.064323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.443901, 39.969566, 56.131222>,  <46.827232, 39.994595, 56.242722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443901, 39.969566, 56.131222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282625, -0.350045, -0.893080,
		-0.041693, -0.934641, 0.353141,
		-0.958324, -0.062571, -0.278747,
		46.156403, 39.950794, 56.047596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.784172, 39.352024, 55.901665>,  <46.827232, 39.994595, 56.242722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.784172, 39.352024, 55.901665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.494781, 39.598572, 55.777302>,  <46.321148, 39.746502, 55.702682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.494781, 39.598572, 55.777302>,  <46.784172, 39.352024, 55.901665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.494781, 39.598572, 55.777302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138611, -0.311499, -0.940083,
		-0.676286, -0.723227, 0.139927,
		-0.723480, 0.616370, -0.310910,
		46.277737, 39.783482, 55.684029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.306335, 38.981499, 55.347256>,  <46.784172, 39.352024, 55.901665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.306335, 38.981499, 55.347256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.215469, 39.367493, 55.294792>,  <46.160950, 39.599087, 55.263313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.215469, 39.367493, 55.294792>,  <46.306335, 38.981499, 55.347256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.215469, 39.367493, 55.294792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055927, -0.121533, -0.991011,
		-0.972248, -0.232461, -0.026361,
		-0.227168, 0.964983, -0.131161,
		46.147320, 39.656986, 55.255444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.839336, 38.983360, 54.870087>,  <46.306335, 38.981499, 55.347256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.839336, 38.983360, 54.870087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.951950, 39.367172, 54.872765>,  <46.019520, 39.597458, 54.874371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.951950, 39.367172, 54.872765>,  <45.839336, 38.983360, 54.870087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951950, 39.367172, 54.872765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188545, 0.062159, -0.980095,
		-0.940845, 0.274668, 0.198414,
		0.281534, 0.959528, 0.006695,
		46.036411, 39.655029, 54.874775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.274734, 38.844391, 49.106827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.573006, 39.074600, 49.241131>,  <43.751968, 39.212727, 49.321712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.573006, 39.074600, 49.241131>,  <43.274734, 38.844391, 49.106827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573006, 39.074600, 49.241131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157886, 0.336945, -0.928192,
		-0.647329, 0.745145, 0.160386,
		0.745679, 0.575523, 0.335763,
		43.796711, 39.247257, 49.341858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070137, 39.516586, 48.943592>,  <43.274734, 38.844391, 49.106827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070137, 39.516586, 48.943592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.465244, 39.483345, 48.996372>,  <43.702309, 39.463402, 49.028038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.465244, 39.483345, 48.996372>,  <43.070137, 39.516586, 48.943592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465244, 39.483345, 48.996372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150832, 0.294458, -0.943686,
		0.039569, 0.952044, 0.303390,
		0.987767, -0.083102, 0.131948,
		43.761574, 39.458416, 49.035957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331654, 40.023525, 48.462704>,  <43.070137, 39.516586, 48.943592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331654, 40.023525, 48.462704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663795, 39.826569, 48.567066>,  <43.863079, 39.708397, 48.629684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663795, 39.826569, 48.567066>,  <43.331654, 40.023525, 48.462704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663795, 39.826569, 48.567066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371848, 0.140896, -0.917539,
		0.415027, 0.858895, 0.300087,
		0.830351, -0.492390, 0.260902,
		43.912899, 39.678852, 48.645336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871723, 40.397919, 48.212799>,  <43.331654, 40.023525, 48.462704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871723, 40.397919, 48.212799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.008301, 40.027718, 48.278366>,  <44.090248, 39.805599, 48.317707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.008301, 40.027718, 48.278366>,  <43.871723, 40.397919, 48.212799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.008301, 40.027718, 48.278366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350295, -0.036525, -0.935927,
		0.872186, 0.376986, 0.311727,
		0.341445, -0.925499, 0.163913,
		44.110733, 39.750069, 48.327541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561768, 40.470589, 48.034298>,  <43.871723, 40.397919, 48.212799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.561768, 40.470589, 48.034298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.455246, 40.086548, 48.000145>,  <44.391331, 39.856125, 47.979652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.455246, 40.086548, 48.000145>,  <44.561768, 40.470589, 48.034298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455246, 40.086548, 48.000145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402216, -0.030190, -0.915047,
		0.875959, -0.278024, 0.394207,
		-0.266306, -0.960100, -0.085380,
		44.375355, 39.798519, 47.974529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122524, 40.142200, 47.780071>,  <44.561768, 40.470589, 48.034298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122524, 40.142200, 47.780071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.812706, 39.907951, 47.684464>,  <44.626816, 39.767403, 47.627098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.812706, 39.907951, 47.684464>,  <45.122524, 40.142200, 47.780071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812706, 39.907951, 47.684464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296220, -0.001955, -0.955118,
		0.558870, -0.810583, 0.174987,
		-0.774544, -0.585621, -0.239019,
		44.580341, 39.732265, 47.612759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389187, 39.613113, 47.467834>,  <45.122524, 40.142200, 47.780071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.389187, 39.613113, 47.467834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.015678, 39.619850, 47.324841>,  <44.791573, 39.623894, 47.239044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.015678, 39.619850, 47.324841>,  <45.389187, 39.613113, 47.467834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015678, 39.619850, 47.324841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346142, 0.296260, -0.890177,
		0.090914, -0.954959, -0.282468,
		-0.933767, 0.016845, -0.357485,
		44.735550, 39.624905, 47.217594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.484943, 39.293346, 46.890560>,  <45.389187, 39.613113, 47.467834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.484943, 39.293346, 46.890560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.125160, 39.463547, 46.850716>,  <44.909290, 39.565666, 46.826809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.125160, 39.463547, 46.850716>,  <45.484943, 39.293346, 46.890560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.125160, 39.463547, 46.850716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167587, 0.125348, -0.977856,
		-0.403595, -0.896234, -0.184054,
		-0.899459, 0.425502, -0.099607,
		44.855324, 39.591198, 46.820835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.141754, 39.028744, 46.244045>,  <45.484943, 39.293346, 46.890560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.141754, 39.028744, 46.244045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.944313, 39.363777, 46.337696>,  <44.825848, 39.564796, 46.393887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.944313, 39.363777, 46.337696>,  <45.141754, 39.028744, 46.244045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.944313, 39.363777, 46.337696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165677, 0.173718, -0.970759,
		-0.853762, -0.517956, 0.053021,
		-0.493600, 0.837582, 0.234127,
		44.796234, 39.615051, 46.407936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461502, 39.077030, 45.907036>,  <45.141754, 39.028744, 46.244045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461502, 39.077030, 45.907036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592247, 39.451813, 45.956478>,  <44.670696, 39.676682, 45.986145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592247, 39.451813, 45.956478>,  <44.461502, 39.077030, 45.907036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592247, 39.451813, 45.956478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037655, 0.143600, -0.988919,
		-0.944320, 0.318590, 0.082218,
		0.326867, 0.936952, 0.123608,
		44.690308, 39.732899, 45.993561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107410, 39.427170, 45.394386>,  <44.461502, 39.077030, 45.907036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107410, 39.427170, 45.394386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.381912, 39.691284, 45.516422>,  <44.546616, 39.849751, 45.589642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.381912, 39.691284, 45.516422>,  <44.107410, 39.427170, 45.394386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381912, 39.691284, 45.516422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158768, 0.273348, -0.948722,
		-0.709819, 0.699506, 0.082756,
		0.686258, 0.660282, 0.305086,
		44.587791, 39.889370, 45.607948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.953011, 40.051552, 45.085083>,  <44.107410, 39.427170, 45.394386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.953011, 40.051552, 45.085083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.344769, 40.062332, 45.165146>,  <44.579823, 40.068802, 45.213184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.344769, 40.062332, 45.165146>,  <43.953011, 40.051552, 45.085083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344769, 40.062332, 45.165146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177137, 0.361388, -0.915435,
		-0.097009, 0.932026, 0.349166,
		0.979393, 0.026955, 0.200154,
		44.638588, 40.070419, 45.225193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123814, 40.750412, 44.939186>,  <43.953011, 40.051552, 45.085083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123814, 40.750412, 44.939186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.429859, 40.497505, 44.890446>,  <44.613487, 40.345760, 44.861202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.429859, 40.497505, 44.890446>,  <44.123814, 40.750412, 44.939186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429859, 40.497505, 44.890446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308410, 0.525961, -0.792621,
		0.565233, 0.568864, 0.597416,
		0.765111, -0.632264, -0.121847,
		44.659393, 40.307827, 44.853893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786209, 41.134304, 45.021156>,  <44.123814, 40.750412, 44.939186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786209, 41.134304, 45.021156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.829124, 40.809700, 44.791397>,  <44.854874, 40.614937, 44.653542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.829124, 40.809700, 44.791397>,  <44.786209, 41.134304, 45.021156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829124, 40.809700, 44.791397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375951, 0.567953, -0.732182,
		0.920407, -0.137388, 0.366027,
		0.107293, -0.811513, -0.574399,
		44.861313, 40.566246, 44.619076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486439, 41.427925, 44.354454>,  <44.786209, 41.134304, 45.021156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486439, 41.427925, 44.354454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.226730, 41.686523, 44.194206>,  <44.070908, 41.841682, 44.098057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.226730, 41.686523, 44.194206>,  <44.486439, 41.427925, 44.354454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.226730, 41.686523, 44.194206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280895, 0.285666, 0.916238,
		0.706788, 0.707415, -0.003876,
		-0.649268, 0.646498, -0.400615,
		44.031952, 41.880474, 44.074020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.575043, 41.991222, 44.738316>,  <44.486439, 41.427925, 44.354454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.575043, 41.991222, 44.738316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224049, 42.062691, 44.560287>,  <44.013451, 42.105572, 44.453468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224049, 42.062691, 44.560287>,  <44.575043, 41.991222, 44.738316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224049, 42.062691, 44.560287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356244, 0.378503, 0.854298,
		0.321099, 0.908192, -0.268482,
		-0.877488, 0.178669, -0.445075,
		43.960804, 42.116291, 44.426765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381519, 42.571194, 45.032310>,  <44.575043, 41.991222, 44.738316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381519, 42.571194, 45.032310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.044319, 42.447823, 44.856030>,  <43.841999, 42.373798, 44.750259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.044319, 42.447823, 44.856030>,  <44.381519, 42.571194, 45.032310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044319, 42.447823, 44.856030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521315, 0.266494, 0.810686,
		-0.132595, 0.913155, -0.385444,
		-0.843000, -0.308431, -0.440705,
		43.791420, 42.355293, 44.723820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851181, 42.929245, 45.298332>,  <44.381519, 42.571194, 45.032310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851181, 42.929245, 45.298332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663044, 42.611885, 45.143776>,  <43.550163, 42.421471, 45.051044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663044, 42.611885, 45.143776>,  <43.851181, 42.929245, 45.298332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663044, 42.611885, 45.143776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547409, -0.081123, 0.832924,
		-0.692186, 0.603273, -0.396158,
		-0.470343, -0.793399, -0.386389,
		43.521942, 42.373867, 45.027859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177143, 43.134163, 45.457470>,  <43.851181, 42.929245, 45.298332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177143, 43.134163, 45.457470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.187172, 42.739326, 45.394196>,  <43.193192, 42.502426, 45.356232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.187172, 42.739326, 45.394196>,  <43.177143, 43.134163, 45.457470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187172, 42.739326, 45.394196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467526, -0.151441, 0.870911,
		-0.883624, 0.052116, -0.465288,
		0.025076, -0.987091, -0.158182,
		43.194695, 42.443199, 45.346741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485184, 42.992939, 45.441578>,  <43.177143, 43.134163, 45.457470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485184, 42.992939, 45.441578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.671238, 42.649162, 45.526436>,  <42.782871, 42.442898, 45.577351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.671238, 42.649162, 45.526436>,  <42.485184, 42.992939, 45.441578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671238, 42.649162, 45.526436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717136, -0.225326, 0.659503,
		-0.519004, -0.458896, -0.721145,
		0.465136, -0.859443, 0.212146,
		42.810780, 42.391331, 45.590080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022125, 42.490864, 45.628391>,  <42.485184, 42.992939, 45.441578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022125, 42.490864, 45.628391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.345657, 42.336349, 45.805740>,  <42.539776, 42.243641, 45.912151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.345657, 42.336349, 45.805740>,  <42.022125, 42.490864, 45.628391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345657, 42.336349, 45.805740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524199, -0.131940, 0.841313,
		-0.266492, -0.912892, -0.309209,
		0.808825, -0.386290, 0.443376,
		42.588306, 42.220463, 45.938755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825619, 41.943005, 45.999069>,  <42.022125, 42.490864, 45.628391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825619, 41.943005, 45.999069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.166965, 42.010551, 46.196350>,  <42.371773, 42.051079, 46.314716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.166965, 42.010551, 46.196350>,  <41.825619, 41.943005, 45.999069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166965, 42.010551, 46.196350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490851, -0.058358, 0.869287,
		0.175578, -0.983909, 0.033089,
		0.853368, 0.168869, 0.493199,
		42.422977, 42.061211, 46.344311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816460, 41.532780, 46.570595>,  <41.825619, 41.943005, 45.999069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816460, 41.532780, 46.570595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.115505, 41.769119, 46.691898>,  <42.294933, 41.910923, 46.764683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.115505, 41.769119, 46.691898>,  <41.816460, 41.532780, 46.570595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115505, 41.769119, 46.691898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412305, 0.054940, 0.909388,
		0.520650, -0.804909, 0.284684,
		0.747615, 0.590850, 0.303263,
		42.339790, 41.946373, 46.782879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999187, 41.295467, 47.234680>,  <41.816460, 41.532780, 46.570595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999187, 41.295467, 47.234680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.132420, 41.672623, 47.236385>,  <42.212357, 41.898918, 47.237408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.132420, 41.672623, 47.236385>,  <41.999187, 41.295467, 47.234680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132420, 41.672623, 47.236385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279186, 0.094307, 0.955595,
		0.900619, -0.319475, 0.294653,
		0.333077, 0.942890, 0.004258,
		42.232342, 41.955490, 47.237663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296970, 41.360455, 47.932884>,  <41.999187, 41.295467, 47.234680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296970, 41.360455, 47.932884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.238766, 41.720879, 47.769463>,  <42.203842, 41.937134, 47.671410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.238766, 41.720879, 47.769463>,  <42.296970, 41.360455, 47.932884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238766, 41.720879, 47.769463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324803, 0.346555, 0.880001,
		0.934521, 0.260752, 0.242239,
		-0.145513, 0.901060, -0.408556,
		42.195110, 41.991196, 47.646896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835228, 41.821857, 48.157791>,  <42.296970, 41.360455, 47.932884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835228, 41.821857, 48.157791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517563, 42.042641, 48.056076>,  <42.326965, 42.175110, 47.995049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517563, 42.042641, 48.056076>,  <42.835228, 41.821857, 48.157791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517563, 42.042641, 48.056076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065921, 0.337718, 0.938936,
		0.604125, 0.762426, -0.231816,
		-0.794158, 0.551954, -0.254284,
		42.279316, 42.208225, 47.979790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910404, 42.537449, 48.474762>,  <42.835228, 41.821857, 48.157791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910404, 42.537449, 48.474762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.520622, 42.468483, 48.417198>,  <42.286755, 42.427105, 48.382660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.520622, 42.468483, 48.417198>,  <42.910404, 42.537449, 48.474762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520622, 42.468483, 48.417198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197181, 0.350109, 0.915720,
		-0.107496, 0.920705, -0.375162,
		-0.974456, -0.172411, -0.143910,
		42.228287, 42.416759, 48.374023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552380, 43.084934, 48.792870>,  <42.910404, 42.537449, 48.474762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552380, 43.084934, 48.792870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.288513, 42.784981, 48.772842>,  <42.130192, 42.605007, 48.760826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.288513, 42.784981, 48.772842>,  <42.552380, 43.084934, 48.792870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288513, 42.784981, 48.772842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259344, 0.164601, 0.951655,
		-0.705391, 0.640764, -0.303060,
		-0.659670, -0.749886, -0.050070,
		42.090611, 42.560017, 48.757820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565590, 43.892891, 48.970783>,  <42.552380, 43.084934, 48.792870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565590, 43.892891, 48.970783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.700077, 44.229713, 49.139496>,  <42.780769, 44.431808, 49.240723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.700077, 44.229713, 49.139496>,  <42.565590, 43.892891, 48.970783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700077, 44.229713, 49.139496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595669, 0.156763, -0.787784,
		-0.729478, 0.516108, -0.448881,
		0.336214, 0.842056, 0.421785,
		42.800941, 44.482330, 49.266033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541206, 44.417843, 48.464245>,  <42.565590, 43.892891, 48.970783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541206, 44.417843, 48.464245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.792053, 44.571068, 48.735535>,  <42.942562, 44.663002, 48.898308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.792053, 44.571068, 48.735535>,  <42.541206, 44.417843, 48.464245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792053, 44.571068, 48.735535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643083, 0.236684, -0.728303,
		-0.439509, 0.892886, -0.097911,
		0.627117, 0.383061, 0.678224,
		42.980190, 44.685986, 48.939003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765106, 45.103989, 48.237061>,  <42.541206, 44.417843, 48.464245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765106, 45.103989, 48.237061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.051033, 45.001556, 48.497356>,  <43.222588, 44.940098, 48.653534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.051033, 45.001556, 48.497356>,  <42.765106, 45.103989, 48.237061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051033, 45.001556, 48.497356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698679, 0.301179, -0.648952,
		-0.029808, 0.918540, 0.394203,
		0.714814, -0.256077, 0.650742,
		43.265476, 44.924732, 48.692577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311077, 45.641552, 48.220875>,  <42.765106, 45.103989, 48.237061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311077, 45.641552, 48.220875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.501423, 45.327278, 48.378986>,  <43.615631, 45.138714, 48.473854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.501423, 45.327278, 48.378986>,  <43.311077, 45.641552, 48.220875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501423, 45.327278, 48.378986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814695, 0.224426, -0.534701,
		0.331397, 0.576478, 0.746893,
		0.475865, -0.785688, 0.395279,
		43.644184, 45.091572, 48.497570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031849, 45.929863, 48.407413>,  <43.311077, 45.641552, 48.220875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031849, 45.929863, 48.407413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.070427, 45.531982, 48.421677>,  <44.093575, 45.293255, 48.430233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.070427, 45.531982, 48.421677>,  <44.031849, 45.929863, 48.407413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070427, 45.531982, 48.421677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890130, 0.070166, -0.450273,
		0.445385, 0.075164, 0.892179,
		0.096445, -0.994699, 0.035655,
		44.099361, 45.233574, 48.432373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768562, 45.848484, 48.507580>,  <44.031849, 45.929863, 48.407413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768562, 45.848484, 48.507580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.641136, 45.500046, 48.358070>,  <44.564678, 45.290981, 48.268364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.641136, 45.500046, 48.358070>,  <44.768562, 45.848484, 48.507580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641136, 45.500046, 48.358070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736956, 0.020392, -0.675633,
		0.596162, -0.490691, 0.635462,
		-0.318569, -0.871095, -0.373775,
		44.545567, 45.238716, 48.245937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.315037, 45.439384, 48.545540>,  <44.768562, 45.848484, 48.507580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.315037, 45.439384, 48.545540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.075783, 45.265297, 48.276371>,  <44.932232, 45.160847, 48.114868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.075783, 45.265297, 48.276371>,  <45.315037, 45.439384, 48.545540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075783, 45.265297, 48.276371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737667, 0.029150, -0.674535,
		0.313184, -0.899854, 0.303609,
		-0.598133, -0.435217, -0.672922,
		44.896343, 45.134731, 48.074493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.755871, 44.907284, 48.154263>,  <45.315037, 45.439384, 48.545540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.755871, 44.907284, 48.154263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.434700, 45.020340, 47.944336>,  <45.241997, 45.088173, 47.818378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.434700, 45.020340, 47.944336>,  <45.755871, 44.907284, 48.154263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.434700, 45.020340, 47.944336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578149, 0.154912, -0.801091,
		-0.145118, -0.946635, -0.287789,
		-0.802923, 0.282638, -0.524815,
		45.193825, 45.105133, 47.786892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.758156, 44.407024, 47.599693>,  <45.755871, 44.907284, 48.154263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.758156, 44.407024, 47.599693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.543335, 44.730560, 47.503899>,  <45.414444, 44.924683, 47.446423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.543335, 44.730560, 47.503899>,  <45.758156, 44.407024, 47.599693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.543335, 44.730560, 47.503899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642613, 0.208368, -0.737314,
		-0.546467, -0.549873, -0.631675,
		-0.537050, 0.808840, -0.239489,
		45.382221, 44.973213, 47.432053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.962284, 44.494137, 46.923763>,  <45.758156, 44.407024, 47.599693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.962284, 44.494137, 46.923763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.704529, 44.798065, 46.958260>,  <45.549873, 44.980423, 46.978958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.704529, 44.798065, 46.958260>,  <45.962284, 44.494137, 46.923763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704529, 44.798065, 46.958260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314770, 0.366336, -0.875624,
		-0.696908, -0.537098, -0.475231,
		-0.644390, 0.759818, 0.086240,
		45.511211, 45.026012, 46.984131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.408878, 44.533104, 46.333633>,  <45.962284, 44.494137, 46.923763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.408878, 44.533104, 46.333633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.510086, 44.888336, 46.487148>,  <45.570812, 45.101475, 46.579258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.510086, 44.888336, 46.487148>,  <45.408878, 44.533104, 46.333633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.510086, 44.888336, 46.487148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339344, 0.290020, -0.894837,
		-0.905994, 0.356649, -0.227984,
		0.253023, 0.888082, 0.383783,
		45.585995, 45.154762, 46.602283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.113102, 45.092716, 45.891510>,  <45.408878, 44.533104, 46.333633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.113102, 45.092716, 45.891510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.433212, 45.229851, 46.088295>,  <45.625278, 45.312130, 46.206364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.433212, 45.229851, 46.088295>,  <45.113102, 45.092716, 45.891510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433212, 45.229851, 46.088295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402084, 0.301842, -0.864419,
		-0.444847, 0.889582, 0.103708,
		0.800274, 0.342835, 0.491961,
		45.673294, 45.332703, 46.235882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.704659, 44.464359, 52.332859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068569, 44.607384, 52.417198>,  <41.286915, 44.693199, 52.467800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068569, 44.607384, 52.417198>,  <40.704659, 44.464359, 52.332859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068569, 44.607384, 52.417198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097508, 0.309648, -0.945838,
		-0.403485, 0.881061, 0.246845,
		0.909776, 0.357562, 0.210849,
		41.341503, 44.714653, 52.480453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673473, 45.150932, 52.143684>,  <40.704659, 44.464359, 52.332859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673473, 45.150932, 52.143684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050747, 45.018135, 52.138260>,  <41.277111, 44.938457, 52.135006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050747, 45.018135, 52.138260>,  <40.673473, 45.150932, 52.143684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050747, 45.018135, 52.138260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063798, 0.221007, -0.973183,
		0.326090, 0.917025, 0.229631,
		0.943183, -0.331996, -0.013564,
		41.333702, 44.918537, 52.134190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967758, 45.562859, 51.677147>,  <40.673473, 45.150932, 52.143684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967758, 45.562859, 51.677147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231945, 45.262680, 51.687096>,  <41.390457, 45.082573, 51.693066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231945, 45.262680, 51.687096>,  <40.967758, 45.562859, 51.677147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231945, 45.262680, 51.687096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217446, 0.159461, -0.962959,
		0.718679, 0.641411, 0.268500,
		0.660468, -0.750442, 0.024871,
		41.430084, 45.037548, 51.694557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603996, 45.766026, 51.251549>,  <40.967758, 45.562859, 51.677147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603996, 45.766026, 51.251549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625038, 45.368584, 51.291496>,  <41.637665, 45.130119, 51.315464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625038, 45.368584, 51.291496>,  <41.603996, 45.766026, 51.251549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625038, 45.368584, 51.291496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244812, -0.084128, -0.965914,
		0.968142, 0.075262, 0.238822,
		0.052605, -0.993609, 0.099872,
		41.640820, 45.070499, 51.321457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270588, 45.584660, 51.029472>,  <41.603996, 45.766026, 51.251549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270588, 45.584660, 51.029472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090988, 45.227455, 51.017269>,  <41.983227, 45.013134, 51.009949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090988, 45.227455, 51.017269>,  <42.270588, 45.584660, 51.029472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090988, 45.227455, 51.017269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543404, -0.245798, -0.802680,
		0.709303, -0.376982, 0.595629,
		-0.449000, -0.893011, -0.030508,
		41.956287, 44.959553, 51.008118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812222, 45.204391, 51.078957>,  <42.270588, 45.584660, 51.029472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812222, 45.204391, 51.078957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504288, 45.016418, 50.906204>,  <42.319527, 44.903637, 50.802551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504288, 45.016418, 50.906204>,  <42.812222, 45.204391, 51.078957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504288, 45.016418, 50.906204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596310, -0.288351, -0.749178,
		0.227529, -0.834278, 0.502207,
		-0.769835, -0.469930, -0.431880,
		42.273338, 44.875439, 50.776642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101433, 44.549397, 50.727283>,  <42.812222, 45.204391, 51.078957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101433, 44.549397, 50.727283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738289, 44.591866, 50.565041>,  <42.520401, 44.617348, 50.467697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738289, 44.591866, 50.565041>,  <43.101433, 44.549397, 50.727283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738289, 44.591866, 50.565041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380112, -0.199795, -0.903104,
		-0.176926, -0.974068, 0.141027,
		-0.907861, 0.106177, -0.405604,
		42.465931, 44.623718, 50.443359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976254, 43.906826, 50.241272>,  <43.101433, 44.549397, 50.727283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976254, 43.906826, 50.241272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739845, 44.212906, 50.139160>,  <42.598000, 44.396553, 50.077892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739845, 44.212906, 50.139160>,  <42.976254, 43.906826, 50.241272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739845, 44.212906, 50.139160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305795, -0.080313, -0.948704,
		-0.746448, -0.638767, -0.186527,
		-0.591021, 0.765197, -0.255281,
		42.562538, 44.442467, 50.062576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561924, 43.697105, 49.667473>,  <42.976254, 43.906826, 50.241272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561924, 43.697105, 49.667473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561134, 44.096939, 49.655937>,  <42.560661, 44.336838, 49.649017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561134, 44.096939, 49.655937>,  <42.561924, 43.697105, 49.667473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561134, 44.096939, 49.655937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591019, -0.022099, -0.806355,
		-0.806655, -0.018635, -0.590729,
		-0.001972, 0.999582, -0.028840,
		42.560543, 44.396812, 49.647285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062176, 43.288395, 49.291786>,  <42.561924, 43.697105, 49.667473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062176, 43.288395, 49.291786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905251, 42.933304, 49.195427>,  <41.811096, 42.720249, 49.137611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905251, 42.933304, 49.195427>,  <42.062176, 43.288395, 49.291786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905251, 42.933304, 49.195427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485285, -0.022722, 0.874061,
		-0.781400, 0.459812, -0.421886,
		-0.392318, -0.887725, -0.240895,
		41.787556, 42.666985, 49.123158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339657, 43.262512, 49.558559>,  <42.062176, 43.288395, 49.291786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339657, 43.262512, 49.558559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437122, 42.879173, 49.498970>,  <41.495602, 42.649170, 49.463219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437122, 42.879173, 49.498970>,  <41.339657, 43.262512, 49.558559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437122, 42.879173, 49.498970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381448, -0.235917, 0.893779,
		-0.891699, -0.160953, -0.423045,
		0.243660, -0.958351, -0.148971,
		41.510220, 42.591667, 49.454277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742741, 42.818058, 49.732262>,  <41.339657, 43.262512, 49.558559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742741, 42.818058, 49.732262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065071, 42.583473, 49.765015>,  <41.258469, 42.442722, 49.784664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065071, 42.583473, 49.765015>,  <40.742741, 42.818058, 49.732262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065071, 42.583473, 49.765015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297652, -0.281634, 0.912187,
		-0.511906, -0.759435, -0.401510,
		0.805826, -0.586464, 0.081878,
		41.306820, 42.407536, 49.789577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523743, 42.239845, 49.972713>,  <40.742741, 42.818058, 49.732262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523743, 42.239845, 49.972713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911537, 42.225952, 50.069786>,  <41.144215, 42.217617, 50.128029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911537, 42.225952, 50.069786>,  <40.523743, 42.239845, 49.972713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911537, 42.225952, 50.069786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241528, -0.304888, 0.921253,
		0.041988, -0.951754, -0.303975,
		0.969485, -0.034737, 0.242677,
		41.202381, 42.215530, 50.142590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631313, 41.723377, 50.412441>,  <40.523743, 42.239845, 49.972713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631313, 41.723377, 50.412441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967064, 41.927376, 50.487637>,  <41.168514, 42.049774, 50.532753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967064, 41.927376, 50.487637>,  <40.631313, 41.723377, 50.412441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967064, 41.927376, 50.487637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164273, -0.091665, 0.982147,
		0.518126, -0.855277, 0.006837,
		0.839381, 0.509999, 0.187993,
		41.218880, 42.080376, 50.544033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932949, 41.326988, 50.982647>,  <40.631313, 41.723377, 50.412441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932949, 41.326988, 50.982647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104160, 41.688164, 50.998146>,  <41.206886, 41.904869, 51.007446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104160, 41.688164, 50.998146>,  <40.932949, 41.326988, 50.982647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104160, 41.688164, 50.998146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023580, -0.054016, 0.998262,
		0.903459, -0.426368, -0.044411,
		0.428026, 0.902936, 0.038748,
		41.232567, 41.959045, 51.009769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516777, 41.152592, 51.317837>,  <40.932949, 41.326988, 50.982647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516777, 41.152592, 51.317837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464554, 41.545227, 51.373611>,  <41.433220, 41.780807, 51.407074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464554, 41.545227, 51.373611>,  <41.516777, 41.152592, 51.317837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464554, 41.545227, 51.373611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062448, -0.132216, 0.989252,
		0.989472, 0.137863, -0.044036,
		-0.130559, 0.981587, 0.139434,
		41.425385, 41.839703, 51.415443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989899, 41.267712, 51.942936>,  <41.516777, 41.152592, 51.317837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989899, 41.267712, 51.942936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742340, 41.577660, 51.891495>,  <41.593803, 41.763630, 51.860630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742340, 41.577660, 51.891495>,  <41.989899, 41.267712, 51.942936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742340, 41.577660, 51.891495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132957, 0.058018, 0.989422,
		0.774137, 0.629449, 0.067118,
		-0.618897, 0.774873, -0.128603,
		41.556671, 41.810120, 51.852913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166840, 41.731724, 52.459568>,  <41.989899, 41.267712, 51.942936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166840, 41.731724, 52.459568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788029, 41.820740, 52.366955>,  <41.560741, 41.874149, 52.311386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788029, 41.820740, 52.366955>,  <42.166840, 41.731724, 52.459568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788029, 41.820740, 52.366955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194986, 0.174424, 0.965172,
		0.255172, 0.959194, -0.121794,
		-0.947031, 0.222537, -0.231537,
		41.503918, 41.887501, 52.297493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922199, 42.216965, 52.925346>,  <42.166840, 41.731724, 52.459568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922199, 42.216965, 52.925346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572304, 42.111847, 52.762486>,  <41.362366, 42.048779, 52.664768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572304, 42.111847, 52.762486>,  <41.922199, 42.216965, 52.925346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572304, 42.111847, 52.762486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415573, -0.025388, 0.909205,
		-0.249270, 0.964518, -0.087001,
		-0.874736, -0.262793, -0.407156,
		41.309883, 42.033009, 52.640339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348171, 42.703293, 53.219315>,  <41.922199, 42.216965, 52.925346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348171, 42.703293, 53.219315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199295, 42.344841, 53.122623>,  <41.109970, 42.129772, 53.064610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199295, 42.344841, 53.122623>,  <41.348171, 42.703293, 53.219315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199295, 42.344841, 53.122623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354243, -0.103576, 0.929400,
		-0.857898, 0.431542, -0.278897,
		-0.372188, -0.896127, -0.241728,
		41.087639, 42.076004, 53.050106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726513, 42.639721, 53.571423>,  <41.348171, 42.703293, 53.219315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726513, 42.639721, 53.571423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807762, 42.262558, 53.465843>,  <40.856514, 42.036259, 53.402496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807762, 42.262558, 53.465843>,  <40.726513, 42.639721, 53.571423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807762, 42.262558, 53.465843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284114, -0.314726, 0.905664,
		-0.937026, -0.108974, -0.331822,
		0.203127, -0.942906, -0.263946,
		40.868702, 41.979687, 53.386658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992222, 42.250069, 53.787064>,  <40.726513, 42.639721, 53.571423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992222, 42.250069, 53.787064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283447, 41.981209, 53.733200>,  <40.458183, 41.819893, 53.700882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283447, 41.981209, 53.733200>,  <39.992222, 42.250069, 53.787064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283447, 41.981209, 53.733200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189409, -0.386037, 0.902829,
		-0.658820, -0.631814, -0.408372,
		0.728066, -0.672151, -0.134658,
		40.501865, 41.779564, 53.692802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589874, 41.635086, 53.828724>,  <39.992222, 42.250069, 53.787064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589874, 41.635086, 53.828724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979385, 41.584206, 53.904163>,  <40.213093, 41.553677, 53.949429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979385, 41.584206, 53.904163>,  <39.589874, 41.635086, 53.828724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979385, 41.584206, 53.904163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227471, -0.552568, 0.801826,
		0.002224, -0.823704, -0.567015,
		0.973782, -0.127196, 0.188597,
		40.271519, 41.546047, 53.960743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.514339, 43.219337, 55.896515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.158058, 43.045723, 55.842453>,  <45.944290, 42.941555, 55.810017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.158058, 43.045723, 55.842453>,  <46.514339, 43.219337, 55.896515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.158058, 43.045723, 55.842453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168310, -0.038686, -0.984975,
		0.422285, -0.900065, 0.107510,
		-0.890700, -0.434035, -0.135154,
		45.890846, 42.915512, 55.801907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.671162, 42.744213, 55.347961>,  <46.514339, 43.219337, 55.896515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.671162, 42.744213, 55.347961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.271225, 42.749077, 55.342663>,  <46.031265, 42.751995, 55.339485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.271225, 42.749077, 55.342663>,  <46.671162, 42.744213, 55.347961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.271225, 42.749077, 55.342663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011886, -0.105907, -0.994305,
		-0.013491, -0.994302, 0.105746,
		-0.999838, 0.012158, -0.013247,
		45.971275, 42.752724, 55.338688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.429733, 42.207642, 55.062248>,  <46.671162, 42.744213, 55.347961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.429733, 42.207642, 55.062248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.116608, 42.453445, 55.023098>,  <45.928730, 42.600925, 54.999607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.116608, 42.453445, 55.023098>,  <46.429733, 42.207642, 55.062248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.116608, 42.453445, 55.023098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002098, -0.159902, -0.987131,
		-0.622250, -0.772537, 0.126463,
		-0.782816, 0.614507, -0.097878,
		45.881763, 42.637798, 54.993736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844307, 41.828606, 54.612831>,  <46.429733, 42.207642, 55.062248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844307, 41.828606, 54.612831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.835716, 42.228195, 54.596874>,  <45.830563, 42.467949, 54.587299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.835716, 42.228195, 54.596874>,  <45.844307, 41.828606, 54.612831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.835716, 42.228195, 54.596874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088877, -0.037834, -0.995324,
		-0.995811, -0.024924, -0.087973,
		-0.021479, 0.998973, -0.039891,
		45.829273, 42.527885, 54.584908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498516, 41.997822, 53.932968>,  <45.844307, 41.828606, 54.612831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498516, 41.997822, 53.932968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.675308, 42.339478, 54.042583>,  <45.781384, 42.544472, 54.108353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.675308, 42.339478, 54.042583>,  <45.498516, 41.997822, 53.932968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.675308, 42.339478, 54.042583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185040, 0.212118, -0.959566,
		-0.877732, 0.474818, -0.064298,
		0.441980, 0.854139, 0.274043,
		45.807903, 42.595718, 54.124798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.267593, 42.336449, 53.455570>,  <45.498516, 41.997822, 53.932968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.267593, 42.336449, 53.455570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.554420, 42.576279, 53.597740>,  <45.726517, 42.720177, 53.683041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.554420, 42.576279, 53.597740>,  <45.267593, 42.336449, 53.455570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.554420, 42.576279, 53.597740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256313, 0.247374, -0.934404,
		-0.648164, 0.761132, 0.023706,
		0.717068, 0.599571, 0.355426,
		45.769543, 42.756149, 53.704369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.256996, 42.849167, 53.039341>,  <45.267593, 42.336449, 53.455570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.256996, 42.849167, 53.039341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.618347, 42.901917, 53.202568>,  <45.835159, 42.933567, 53.300503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.618347, 42.901917, 53.202568>,  <45.256996, 42.849167, 53.039341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618347, 42.901917, 53.202568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370271, 0.240193, -0.897333,
		-0.216349, 0.961726, 0.168157,
		0.903378, 0.131873, 0.408065,
		45.889362, 42.941479, 53.324989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.489407, 43.482002, 52.682434>,  <45.256996, 42.849167, 53.039341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.489407, 43.482002, 52.682434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.822205, 43.324440, 52.838703>,  <46.021881, 43.229900, 52.932465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.822205, 43.324440, 52.838703>,  <45.489407, 43.482002, 52.682434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.822205, 43.324440, 52.838703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463820, 0.107487, -0.879385,
		0.304405, 0.912843, 0.272130,
		0.831991, -0.393909, 0.390675,
		46.071800, 43.206268, 52.955906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.196270, 43.925289, 52.431576>,  <45.489407, 43.482002, 52.682434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.196270, 43.925289, 52.431576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.246696, 43.544991, 52.544849>,  <46.276951, 43.316811, 52.612812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.246696, 43.544991, 52.544849>,  <46.196270, 43.925289, 52.431576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.246696, 43.544991, 52.544849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547733, -0.171294, -0.818930,
		0.827101, 0.258348, 0.499160,
		0.126065, -0.950744, 0.283183,
		46.284515, 43.259766, 52.629803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.887276, 43.787773, 52.259487>,  <46.196270, 43.925289, 52.431576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.887276, 43.787773, 52.259487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.710953, 43.429619, 52.284714>,  <46.605160, 43.214725, 52.299850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.710953, 43.429619, 52.284714>,  <46.887276, 43.787773, 52.259487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.710953, 43.429619, 52.284714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571115, -0.333984, -0.749854,
		0.692471, -0.294522, 0.658590,
		-0.440807, -0.895383, 0.063069,
		46.578712, 43.161003, 52.303635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.377510, 43.333622, 52.109882>,  <46.887276, 43.787773, 52.259487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.377510, 43.333622, 52.109882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.062927, 43.094223, 52.048851>,  <46.874176, 42.950584, 52.012230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.062927, 43.094223, 52.048851>,  <47.377510, 43.333622, 52.109882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.062927, 43.094223, 52.048851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416230, -0.331054, -0.846851,
		0.456325, -0.729523, 0.509473,
		-0.786460, -0.598497, -0.152581,
		46.826988, 42.914673, 52.003078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.666119, 42.635651, 52.025177>,  <47.377510, 43.333622, 52.109882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.666119, 42.635651, 52.025177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.305725, 42.665367, 51.854195>,  <47.089489, 42.683197, 51.751606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.305725, 42.665367, 51.854195>,  <47.666119, 42.635651, 52.025177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.305725, 42.665367, 51.854195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385697, -0.314022, -0.867542,
		-0.198676, -0.946505, 0.254276,
		-0.900981, 0.074286, -0.427452,
		47.035431, 42.687653, 51.725960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.701180, 42.061909, 51.568287>,  <47.666119, 42.635651, 52.025177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.701180, 42.061909, 51.568287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.393448, 42.277550, 51.431168>,  <47.208809, 42.406933, 51.348896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.393448, 42.277550, 51.431168>,  <47.701180, 42.061909, 51.568287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.393448, 42.277550, 51.431168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332457, -0.120361, -0.935407,
		-0.545536, -0.833598, -0.086630,
		-0.769326, 0.539099, -0.342797,
		47.162651, 42.439278, 51.328327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.296040, 41.689888, 51.055706>,  <47.701180, 42.061909, 51.568287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.296040, 41.689888, 51.055706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.207153, 42.076462, 51.004120>,  <47.153820, 42.308407, 50.973167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.207153, 42.076462, 51.004120>,  <47.296040, 41.689888, 51.055706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.207153, 42.076462, 51.004120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221513, -0.078769, -0.971971,
		-0.949502, -0.244553, -0.196573,
		-0.222214, 0.966431, -0.128963,
		47.140488, 42.366390, 50.965431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.558964, 41.339233, 51.090645>,  <47.296040, 41.689888, 51.055706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.558964, 41.339233, 51.090645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.537476, 40.942993, 51.040321>,  <46.524582, 40.705250, 51.010128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.537476, 40.942993, 51.040321>,  <46.558964, 41.339233, 51.090645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.537476, 40.942993, 51.040321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514538, -0.080513, 0.853679,
		-0.855783, 0.110592, -0.505376,
		-0.053721, -0.990599, -0.125805,
		46.521358, 40.645813, 51.002579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.961575, 41.239120, 51.296284>,  <46.558964, 41.339233, 51.090645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.961575, 41.239120, 51.296284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.086647, 40.859344, 51.307522>,  <46.161690, 40.631477, 51.314262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.086647, 40.859344, 51.307522>,  <45.961575, 41.239120, 51.296284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.086647, 40.859344, 51.307522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565251, -0.162222, 0.808811,
		-0.763364, -0.268775, -0.587397,
		0.312677, -0.949444, 0.028091,
		46.180450, 40.574512, 51.315948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.360600, 40.757114, 51.505043>,  <45.961575, 41.239120, 51.296284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.360600, 40.757114, 51.505043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.705673, 40.563400, 51.563343>,  <45.912716, 40.447170, 51.598324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.705673, 40.563400, 51.563343>,  <45.360600, 40.757114, 51.505043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.705673, 40.563400, 51.563343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267245, -0.191856, 0.944337,
		-0.429368, -0.853614, -0.294934,
		0.862684, -0.484288, 0.145747,
		45.964478, 40.418114, 51.607067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.198879, 40.185566, 51.956406>,  <45.360600, 40.757114, 51.505043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.198879, 40.185566, 51.956406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.595154, 40.211266, 52.004433>,  <45.832916, 40.226685, 52.033249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.595154, 40.211266, 52.004433>,  <45.198879, 40.185566, 51.956406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.595154, 40.211266, 52.004433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094326, -0.312184, 0.945327,
		0.098224, -0.947846, -0.303215,
		0.990684, 0.064253, 0.120070,
		45.892361, 40.230541, 52.040455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364342, 39.513725, 52.106918>,  <45.198879, 40.185566, 51.956406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364342, 39.513725, 52.106918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.638680, 39.778328, 52.228268>,  <45.803280, 39.937088, 52.301075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.638680, 39.778328, 52.228268>,  <45.364342, 39.513725, 52.106918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638680, 39.778328, 52.228268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037041, -0.448048, 0.893242,
		0.726809, -0.601384, -0.331793,
		0.685841, 0.661506, 0.303369,
		45.844433, 39.976780, 52.319279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.877167, 39.170166, 52.458622>,  <45.364342, 39.513725, 52.106918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.877167, 39.170166, 52.458622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.945076, 39.542274, 52.588715>,  <45.985821, 39.765541, 52.666771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.945076, 39.542274, 52.588715>,  <45.877167, 39.170166, 52.458622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.945076, 39.542274, 52.588715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034906, -0.335487, 0.941398,
		0.984865, -0.148472, -0.089429,
		0.169774, 0.930271, 0.325227,
		45.996010, 39.821354, 52.686283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.381477, 39.154118, 52.970409>,  <45.877167, 39.170166, 52.458622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.381477, 39.154118, 52.970409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.241501, 39.518517, 53.057701>,  <46.157516, 39.737156, 53.110077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.241501, 39.518517, 53.057701>,  <46.381477, 39.154118, 52.970409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.241501, 39.518517, 53.057701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000563, -0.232755, 0.972535,
		0.936772, 0.340452, 0.080937,
		-0.349940, 0.910998, 0.218230,
		46.136520, 39.791817, 53.123169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.867161, 39.446560, 53.386845>,  <46.381477, 39.154118, 52.970409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.867161, 39.446560, 53.386845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.527214, 39.637924, 53.475246>,  <46.323246, 39.752743, 53.528286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.527214, 39.637924, 53.475246>,  <46.867161, 39.446560, 53.386845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.527214, 39.637924, 53.475246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259203, 0.014347, 0.965716,
		0.458839, 0.878019, -0.136199,
		-0.849871, 0.478411, 0.221002,
		46.272251, 39.781448, 53.541546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.026340, 40.013565, 53.848881>,  <46.867161, 39.446560, 53.386845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.026340, 40.013565, 53.848881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.641472, 39.960541, 53.944088>,  <46.410549, 39.928726, 54.001213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.641472, 39.960541, 53.944088>,  <47.026340, 40.013565, 53.848881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.641472, 39.960541, 53.944088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224624, 0.108373, 0.968400,
		-0.154167, 0.985232, -0.074497,
		-0.962173, -0.132561, 0.238014,
		46.352821, 39.920773, 54.015491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.899334, 40.530930, 54.411758>,  <47.026340, 40.013565, 53.848881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.899334, 40.530930, 54.411758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.591881, 40.276314, 54.437096>,  <46.407410, 40.123543, 54.452297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.591881, 40.276314, 54.437096>,  <46.899334, 40.530930, 54.411758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.591881, 40.276314, 54.437096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057063, 0.166858, 0.984328,
		-0.637137, 0.752975, -0.164576,
		-0.768635, -0.636543, 0.063344,
		46.361290, 40.085350, 54.456100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.480389, 40.878323, 54.762863>,  <46.899334, 40.530930, 54.411758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.480389, 40.878323, 54.762863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.325531, 40.511986, 54.805504>,  <46.232616, 40.292183, 54.831089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.325531, 40.511986, 54.805504>,  <46.480389, 40.878323, 54.762863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.325531, 40.511986, 54.805504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200179, 0.196344, 0.959884,
		-0.900028, 0.350272, -0.259344,
		-0.387142, -0.915838, 0.106598,
		46.209389, 40.237236, 54.837482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.798809, 40.880959, 55.068115>,  <46.480389, 40.878323, 54.762863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.798809, 40.880959, 55.068115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.936104, 40.511749, 55.137642>,  <46.018478, 40.290222, 55.179359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.936104, 40.511749, 55.137642>,  <45.798809, 40.880959, 55.068115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.936104, 40.511749, 55.137642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336524, 0.051925, 0.940242,
		-0.876894, -0.381217, -0.292798,
		0.343233, -0.923027, 0.173821,
		46.039074, 40.234840, 55.189789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245537, 40.453735, 55.381695>,  <45.798809, 40.880959, 55.068115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.245537, 40.453735, 55.381695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.585739, 40.267624, 55.479809>,  <45.789860, 40.155956, 55.538677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.585739, 40.267624, 55.479809>,  <45.245537, 40.453735, 55.381695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585739, 40.267624, 55.479809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376249, -0.212319, 0.901863,
		-0.367539, -0.859324, -0.355638,
		0.850501, -0.465278, 0.245284,
		45.840889, 40.128040, 55.553394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893528, 39.960518, 55.639942>,  <45.245537, 40.453735, 55.381695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893528, 39.960518, 55.639942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.273552, 39.954758, 55.764629>,  <45.501568, 39.951302, 55.839443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.273552, 39.954758, 55.764629>,  <44.893528, 39.960518, 55.639942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273552, 39.954758, 55.764629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311348, 0.023434, 0.950007,
		-0.020987, -0.999622, 0.017779,
		0.950064, -0.014403, 0.311722,
		45.558571, 39.950439, 55.858147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654190, 39.421616, 55.234131>,  <44.893528, 39.960518, 55.639942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654190, 39.421616, 55.234131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.270775, 39.419426, 55.120163>,  <44.040726, 39.418110, 55.051781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.270775, 39.419426, 55.120163>,  <44.654190, 39.421616, 55.234131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.270775, 39.419426, 55.120163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284906, -0.039969, -0.957722,
		-0.006139, -0.999186, 0.039873,
		-0.958535, -0.005481, -0.284920,
		43.983215, 39.417782, 55.034687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617329, 38.887424, 54.644691>,  <44.654190, 39.421616, 55.234131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617329, 38.887424, 54.644691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.288094, 39.112923, 54.617210>,  <44.090553, 39.248222, 54.600719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.288094, 39.112923, 54.617210>,  <44.617329, 38.887424, 54.644691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288094, 39.112923, 54.617210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021444, -0.151743, -0.988187,
		-0.567513, -0.811889, 0.136987,
		-0.823085, 0.563747, -0.068706,
		44.041168, 39.282047, 54.596600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130512, 38.548653, 54.173595>,  <44.617329, 38.887424, 54.644691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130512, 38.548653, 54.173595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.001995, 38.925293, 54.133266>,  <43.924885, 39.151276, 54.109070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.001995, 38.925293, 54.133266>,  <44.130512, 38.548653, 54.173595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001995, 38.925293, 54.133266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119223, -0.145839, -0.982098,
		-0.939446, -0.303518, 0.159117,
		-0.321290, 0.941599, -0.100822,
		43.905609, 39.207771, 54.103020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486221, 38.521679, 53.745766>,  <44.130512, 38.548653, 54.173595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486221, 38.521679, 53.745766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.634472, 38.892174, 53.718300>,  <43.723423, 39.114471, 53.701820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.634472, 38.892174, 53.718300>,  <43.486221, 38.521679, 53.745766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634472, 38.892174, 53.718300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061283, -0.049380, -0.996898,
		-0.926758, 0.373685, 0.038462,
		0.370627, 0.926240, -0.068664,
		43.745659, 39.170048, 53.697701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939842, 38.830120, 53.436340>,  <43.486221, 38.521679, 53.745766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939842, 38.830120, 53.436340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.272602, 39.040329, 53.365040>,  <43.472256, 39.166454, 53.322258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.272602, 39.040329, 53.365040>,  <42.939842, 38.830120, 53.436340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272602, 39.040329, 53.365040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207092, -0.004008, -0.978313,
		-0.514839, 0.850771, 0.105497,
		0.831898, 0.525522, -0.178252,
		43.522171, 39.197987, 53.311565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781738, 39.201206, 52.900509>,  <42.939842, 38.830120, 53.436340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781738, 39.201206, 52.900509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.178532, 39.251747, 52.899490>,  <43.416607, 39.282070, 52.898880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.178532, 39.251747, 52.899490>,  <42.781738, 39.201206, 52.900509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.178532, 39.251747, 52.899490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023422, 0.164015, -0.986180,
		-0.124188, 0.978332, 0.165660,
		0.991982, 0.126352, -0.002546,
		43.476128, 39.289654, 52.898727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812759, 39.768322, 52.617149>,  <42.781738, 39.201206, 52.900509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812759, 39.768322, 52.617149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.178764, 39.613480, 52.571712>,  <43.398365, 39.520573, 52.544449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.178764, 39.613480, 52.571712>,  <42.812759, 39.768322, 52.617149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.178764, 39.613480, 52.571712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001628, 0.285111, -0.958493,
		0.403426, 0.876846, 0.261510,
		0.915011, -0.387107, -0.113594,
		43.453266, 39.497349, 52.537636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273277, 40.223091, 52.201809>,  <42.812759, 39.768322, 52.617149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273277, 40.223091, 52.201809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.443745, 39.861748, 52.182564>,  <43.546024, 39.644939, 52.171017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.443745, 39.861748, 52.182564>,  <43.273277, 40.223091, 52.201809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443745, 39.861748, 52.182564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187540, 0.140254, -0.972192,
		0.884990, 0.405297, 0.229189,
		0.426172, -0.903362, -0.048114,
		43.571594, 39.590740, 52.168129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.894352, 40.327267, 51.801254>,  <43.273277, 40.223091, 52.201809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.894352, 40.327267, 51.801254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.814667, 39.936470, 51.770794>,  <43.766857, 39.701992, 51.752518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.814667, 39.936470, 51.770794>,  <43.894352, 40.327267, 51.801254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814667, 39.936470, 51.770794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318336, 0.008973, -0.947936,
		0.926810, -0.213081, 0.309225,
		-0.199212, -0.976994, -0.076147,
		43.754902, 39.643372, 51.747952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478687, 39.898865, 51.476429>,  <43.894352, 40.327267, 51.801254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478687, 39.898865, 51.476429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.149918, 39.676804, 51.425453>,  <43.952656, 39.543568, 51.394867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.149918, 39.676804, 51.425453>,  <44.478687, 39.898865, 51.476429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149918, 39.676804, 51.425453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168491, -0.023249, -0.985429,
		0.544105, -0.831421, 0.112648,
		-0.821925, -0.555157, -0.127437,
		43.903339, 39.510258, 51.387222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668011, 39.454060, 51.004723>,  <44.478687, 39.898865, 51.476429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.668011, 39.454060, 51.004723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.268681, 39.437103, 50.988998>,  <44.029083, 39.426929, 50.979565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.268681, 39.437103, 50.988998>,  <44.668011, 39.454060, 51.004723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268681, 39.437103, 50.988998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039945, -0.014139, -0.999102,
		0.041807, -0.999001, 0.015809,
		-0.998327, -0.042401, -0.039314,
		43.969181, 39.424385, 50.977203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594727, 38.845959, 50.552269>,  <44.668011, 39.454060, 51.004723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594727, 38.845959, 50.552269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.237522, 39.023148, 50.584045>,  <44.023201, 39.129459, 50.603111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.237522, 39.023148, 50.584045>,  <44.594727, 38.845959, 50.552269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237522, 39.023148, 50.584045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085076, 0.007175, -0.996349,
		-0.441925, -0.896506, 0.031279,
		-0.893009, 0.442972, 0.079442,
		43.969620, 39.156040, 50.607880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993534, 38.413101, 50.290253>,  <44.594727, 38.845959, 50.552269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993534, 38.413101, 50.290253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.911148, 38.803314, 50.259502>,  <43.861717, 39.037441, 50.241051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.911148, 38.803314, 50.259502>,  <43.993534, 38.413101, 50.290253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911148, 38.803314, 50.259502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010475, -0.076359, -0.997025,
		-0.978503, -0.206161, 0.005508,
		-0.205968, 0.975534, -0.076877,
		43.849358, 39.095974, 50.236439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681522, 38.419010, 49.707462>,  <43.993534, 38.413101, 50.290253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681522, 38.419010, 49.707462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.759315, 38.808151, 49.757648>,  <43.805992, 39.041634, 49.787762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.759315, 38.808151, 49.757648>,  <43.681522, 38.419010, 49.707462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759315, 38.808151, 49.757648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081307, 0.111479, -0.990435,
		-0.977530, 0.202828, -0.057418,
		0.194487, 0.972848, 0.125465,
		43.817661, 39.100006, 49.795288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.524963, 40.840843, 54.008202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.875443, 40.989029, 54.131508>,  <40.085732, 41.077942, 54.205490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.875443, 40.989029, 54.131508>,  <39.524963, 40.840843, 54.008202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875443, 40.989029, 54.131508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125613, -0.441972, 0.888190,
		0.465290, -0.816955, -0.340720,
		0.876200, 0.370467, 0.308266,
		40.138302, 41.100170, 54.223988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811729, 40.311905, 54.460365>,  <39.524963, 40.840843, 54.008202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811729, 40.311905, 54.460365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.014580, 40.647095, 54.540985>,  <40.136288, 40.848209, 54.589359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.014580, 40.647095, 54.540985>,  <39.811729, 40.311905, 54.460365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014580, 40.647095, 54.540985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154212, -0.141859, 0.977801,
		0.847965, -0.526948, 0.057286,
		0.507124, 0.837975, 0.201554,
		40.166718, 40.898487, 54.601452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391388, 40.144096, 54.892906>,  <39.811729, 40.311905, 54.460365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391388, 40.144096, 54.892906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.308777, 40.531769, 54.946629>,  <40.259212, 40.764374, 54.978863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.308777, 40.531769, 54.946629>,  <40.391388, 40.144096, 54.892906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308777, 40.531769, 54.946629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038852, -0.145280, 0.988627,
		0.977670, 0.198958, 0.067658,
		-0.206524, 0.969180, 0.134306,
		40.246819, 40.822521, 54.986919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871288, 40.330231, 55.343945>,  <40.391388, 40.144096, 54.892906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871288, 40.330231, 55.343945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.579628, 40.603142, 55.365211>,  <40.404633, 40.766888, 55.377972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.579628, 40.603142, 55.365211>,  <40.871288, 40.330231, 55.343945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579628, 40.603142, 55.365211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069164, -0.150765, 0.986147,
		0.680846, 0.715375, 0.157120,
		-0.729154, 0.682281, 0.053170,
		40.360882, 40.807827, 55.381161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084244, 40.732220, 55.827770>,  <40.871288, 40.330231, 55.343945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084244, 40.732220, 55.827770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.695965, 40.825737, 55.805580>,  <40.462997, 40.881847, 55.792267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.695965, 40.825737, 55.805580>,  <41.084244, 40.732220, 55.827770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695965, 40.825737, 55.805580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095537, -0.163695, 0.981874,
		0.220477, 0.958407, 0.181235,
		-0.970702, 0.233795, -0.055472,
		40.404755, 40.895874, 55.788937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940697, 41.353104, 56.384735>,  <41.084244, 40.732220, 55.827770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940697, 41.353104, 56.384735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.587524, 41.183746, 56.303581>,  <40.375622, 41.082130, 56.254890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.587524, 41.183746, 56.303581>,  <40.940697, 41.353104, 56.384735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587524, 41.183746, 56.303581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245894, 0.048895, 0.968063,
		-0.399955, 0.904624, -0.147282,
		-0.882934, -0.423397, -0.202886,
		40.322643, 41.056728, 56.242714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533291, 41.603043, 56.953632>,  <40.940697, 41.353104, 56.384735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533291, 41.603043, 56.953632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.335213, 41.287926, 56.807121>,  <40.216366, 41.098854, 56.719215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.335213, 41.287926, 56.807121>,  <40.533291, 41.603043, 56.953632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335213, 41.287926, 56.807121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113064, -0.359580, 0.926239,
		-0.861391, 0.500086, 0.088993,
		-0.495200, -0.787792, -0.366280,
		40.186653, 41.051590, 56.697239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024326, 41.546047, 57.399368>,  <40.533291, 41.603043, 56.953632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024326, 41.546047, 57.399368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.025299, 41.180519, 57.236923>,  <40.025883, 40.961201, 57.139458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.025299, 41.180519, 57.236923>,  <40.024326, 41.546047, 57.399368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025299, 41.180519, 57.236923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140076, -0.402420, 0.904675,
		-0.990138, 0.054686, -0.128983,
		0.002432, -0.913821, -0.406111,
		40.026028, 40.906372, 57.115089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457535, 41.247417, 57.702492>,  <40.024326, 41.546047, 57.399368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457535, 41.247417, 57.702492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.683006, 40.954025, 57.550560>,  <39.818287, 40.777988, 57.459400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.683006, 40.954025, 57.550560>,  <39.457535, 41.247417, 57.702492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683006, 40.954025, 57.550560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162096, -0.549133, 0.819865,
		-0.809936, -0.400567, -0.428427,
		0.563674, -0.733484, -0.379832,
		39.852108, 40.733978, 57.436611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131241, 40.674858, 57.808544>,  <39.457535, 41.247417, 57.702492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131241, 40.674858, 57.808544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.510273, 40.554184, 57.766457>,  <39.737694, 40.481781, 57.741203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.510273, 40.554184, 57.766457>,  <39.131241, 40.674858, 57.808544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510273, 40.554184, 57.766457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023950, -0.395446, 0.918177,
		-0.318605, -0.867531, -0.381944,
		0.947585, -0.301683, -0.105213,
		39.794548, 40.463676, 57.734894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227737, 40.038651, 58.030396>,  <39.131241, 40.674858, 57.808544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227737, 40.038651, 58.030396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.605667, 40.168388, 58.048748>,  <39.832424, 40.246231, 58.059761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.605667, 40.168388, 58.048748>,  <39.227737, 40.038651, 58.030396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605667, 40.168388, 58.048748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086897, -0.383219, 0.919561,
		0.315838, -0.864837, -0.390260,
		0.944826, 0.324345, 0.045883,
		39.889114, 40.265694, 58.062511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684261, 39.550991, 58.291168>,  <39.227737, 40.038651, 58.030396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684261, 39.550991, 58.291168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.839668, 39.909859, 58.375210>,  <39.932915, 40.125179, 58.425636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.839668, 39.909859, 58.375210>,  <39.684261, 39.550991, 58.291168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839668, 39.909859, 58.375210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114218, -0.179368, 0.977129,
		0.914333, -0.403633, 0.032784,
		0.388522, 0.897166, 0.210105,
		39.956226, 40.179008, 58.438240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190216, 39.446228, 58.805359>,  <39.684261, 39.550991, 58.291168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190216, 39.446228, 58.805359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.024597, 39.810028, 58.820229>,  <39.925224, 40.028309, 58.829151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.024597, 39.810028, 58.820229>,  <40.190216, 39.446228, 58.805359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024597, 39.810028, 58.820229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217962, -0.138716, 0.966049,
		0.883775, 0.391886, 0.255671,
		-0.414047, 0.909496, 0.037178,
		39.900383, 40.082878, 58.831383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465801, 39.964066, 59.306370>,  <40.190216, 39.446228, 58.805359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465801, 39.964066, 59.306370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.074203, 40.013275, 59.241325>,  <39.839245, 40.042801, 59.202297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.074203, 40.013275, 59.241325>,  <40.465801, 39.964066, 59.306370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074203, 40.013275, 59.241325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193623, -0.310796, 0.930546,
		0.063939, 0.942481, 0.328086,
		-0.978990, 0.123023, -0.162614,
		39.780506, 40.050182, 59.192543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100712, 39.848438, 59.760647>,  <40.465801, 39.964066, 59.306370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100712, 39.848438, 59.760647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.375748, 39.594376, 59.901382>,  <41.540771, 39.441936, 59.985825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.375748, 39.594376, 59.901382>,  <41.100712, 39.848438, 59.760647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375748, 39.594376, 59.901382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478808, 0.032350, -0.877323,
		0.545855, 0.771706, 0.326362,
		0.687593, -0.635156, 0.351840,
		41.582027, 39.403828, 60.006935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772755, 40.101154, 59.695400>,  <41.100712, 39.848438, 59.760647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772755, 40.101154, 59.695400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.820694, 39.704231, 59.707848>,  <41.849457, 39.466080, 59.715317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.820694, 39.704231, 59.707848>,  <41.772755, 40.101154, 59.695400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820694, 39.704231, 59.707848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544720, 0.039521, -0.837686,
		0.830010, 0.117348, 0.545265,
		0.119850, -0.992304, 0.031119,
		41.856647, 39.406540, 59.717182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492107, 39.964828, 59.523056>,  <41.772755, 40.101154, 59.695400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492107, 39.964828, 59.523056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.299755, 39.623070, 59.444305>,  <42.184345, 39.418015, 59.397053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.299755, 39.623070, 59.444305>,  <42.492107, 39.964828, 59.523056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299755, 39.623070, 59.444305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601049, -0.157748, -0.783489,
		0.638353, -0.495099, 0.589392,
		-0.480880, -0.854396, -0.196880,
		42.155491, 39.366753, 59.385242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031208, 39.568932, 59.255730>,  <42.492107, 39.964828, 59.523056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031208, 39.568932, 59.255730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.691055, 39.394676, 59.137699>,  <42.486961, 39.290123, 59.066883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.691055, 39.394676, 59.137699>,  <43.031208, 39.568932, 59.255730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691055, 39.394676, 59.137699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419403, -0.222578, -0.880091,
		0.317721, -0.872171, 0.371983,
		-0.850385, -0.435634, -0.295073,
		42.435940, 39.263985, 59.049175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168453, 38.917034, 59.051361>,  <43.031208, 39.568932, 59.255730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168453, 38.917034, 59.051361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.825851, 39.003494, 58.863884>,  <42.620289, 39.055370, 58.751396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.825851, 39.003494, 58.863884>,  <43.168453, 38.917034, 59.051361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825851, 39.003494, 58.863884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353942, -0.414950, -0.838177,
		-0.375661, -0.883795, 0.278901,
		-0.856507, 0.216156, -0.468693,
		42.568901, 39.068340, 58.723278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101559, 38.437912, 58.534580>,  <43.168453, 38.917034, 59.051361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101559, 38.437912, 58.534580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.816154, 38.696098, 58.425568>,  <42.644913, 38.851009, 58.360161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.816154, 38.696098, 58.425568>,  <43.101559, 38.437912, 58.534580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816154, 38.696098, 58.425568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212563, -0.171219, -0.962029,
		-0.667624, -0.744347, -0.015036,
		-0.713509, 0.645470, -0.272531,
		42.602100, 38.889740, 58.343807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712189, 38.117077, 57.984062>,  <43.101559, 38.437912, 58.534580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712189, 38.117077, 57.984062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.661446, 38.509827, 57.927734>,  <42.631001, 38.745476, 57.893936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.661446, 38.509827, 57.927734>,  <42.712189, 38.117077, 57.984062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661446, 38.509827, 57.927734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255414, -0.104846, -0.961130,
		-0.958473, -0.157893, -0.237484,
		-0.126857, 0.981874, -0.140821,
		42.623390, 38.804390, 57.885487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221977, 38.201012, 57.364204>,  <42.712189, 38.117077, 57.984062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221977, 38.201012, 57.364204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.412292, 38.550407, 57.405487>,  <42.526482, 38.760044, 57.430256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.412292, 38.550407, 57.405487>,  <42.221977, 38.201012, 57.364204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412292, 38.550407, 57.405487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315816, -0.060142, -0.946912,
		-0.820907, 0.483121, -0.304475,
		0.475785, 0.873486, 0.103206,
		42.555027, 38.812454, 57.436447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995113, 38.622196, 56.754642>,  <42.221977, 38.201012, 57.364204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995113, 38.622196, 56.754642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.330841, 38.793472, 56.888626>,  <42.532276, 38.896236, 56.969017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.330841, 38.793472, 56.888626>,  <41.995113, 38.622196, 56.754642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330841, 38.793472, 56.888626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264563, 0.216538, -0.939743,
		-0.474918, 0.877363, 0.068461,
		0.839321, 0.428189, 0.334956,
		42.582638, 38.921928, 56.989113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086525, 39.241280, 56.483269>,  <41.995113, 38.622196, 56.754642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086525, 39.241280, 56.483269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.462433, 39.192780, 56.611103>,  <42.687977, 39.163681, 56.687805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.462433, 39.192780, 56.611103>,  <42.086525, 39.241280, 56.483269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462433, 39.192780, 56.611103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341365, 0.284903, -0.895712,
		0.017551, 0.950857, 0.309132,
		0.939767, -0.121247, 0.319589,
		42.744362, 39.156406, 56.706978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430977, 39.805321, 56.147400>,  <42.086525, 39.241280, 56.483269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430977, 39.805321, 56.147400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.720886, 39.544632, 56.236801>,  <42.894833, 39.388218, 56.290440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.720886, 39.544632, 56.236801>,  <42.430977, 39.805321, 56.147400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720886, 39.544632, 56.236801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453380, 0.206883, -0.866975,
		0.518793, 0.729693, 0.445424,
		0.724777, -0.651727, 0.223499,
		42.938320, 39.349113, 56.303852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990444, 40.191216, 56.149212>,  <42.430977, 39.805321, 56.147400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990444, 40.191216, 56.149212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.137569, 39.820724, 56.116192>,  <43.225845, 39.598431, 56.096382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.137569, 39.820724, 56.116192>,  <42.990444, 40.191216, 56.149212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137569, 39.820724, 56.116192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452946, 0.255975, -0.854000,
		0.812131, 0.276720, 0.513682,
		0.367809, -0.926230, -0.082546,
		43.247913, 39.542854, 56.091427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628250, 40.239418, 56.067638>,  <42.990444, 40.191216, 56.149212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628250, 40.239418, 56.067638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.546345, 39.888931, 55.893135>,  <43.497200, 39.678638, 55.788433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.546345, 39.888931, 55.893135>,  <43.628250, 40.239418, 56.067638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.546345, 39.888931, 55.893135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498998, 0.289985, -0.816645,
		0.842064, -0.384911, 0.377851,
		-0.204764, -0.876215, -0.436255,
		43.484917, 39.626068, 55.762257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195488, 39.869331, 55.857426>,  <43.628250, 40.239418, 56.067638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195488, 39.869331, 55.857426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.916737, 39.711105, 55.618134>,  <43.749485, 39.616169, 55.474556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.916737, 39.711105, 55.618134>,  <44.195488, 39.869331, 55.857426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916737, 39.711105, 55.618134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527677, 0.282113, -0.801230,
		0.485707, -0.874038, 0.012130,
		-0.696882, -0.395564, -0.598234,
		43.707672, 39.592438, 55.438663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.871662, 39.450455, 56.232025>,  <44.195488, 39.869331, 55.857426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.871662, 39.450455, 56.232025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.217827, 39.647049, 56.271027>,  <45.425526, 39.765003, 56.294430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.217827, 39.647049, 56.271027>,  <44.871662, 39.450455, 56.232025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217827, 39.647049, 56.271027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038566, -0.128690, 0.990935,
		0.499575, -0.861327, -0.092415,
		0.865412, 0.491482, 0.097508,
		45.477451, 39.794495, 56.300278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.325577, 39.078022, 56.730839>,  <44.871662, 39.450455, 56.232025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.325577, 39.078022, 56.730839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.465805, 39.452629, 56.733162>,  <45.549942, 39.677395, 56.734554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.465805, 39.452629, 56.733162>,  <45.325577, 39.078022, 56.730839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465805, 39.452629, 56.733162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018501, 0.000726, 0.999829,
		0.936353, -0.350621, 0.017580,
		0.350573, 0.936517, 0.005807,
		45.570976, 39.733585, 56.734905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.809452, 39.125416, 57.146404>,  <45.325577, 39.078022, 56.730839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.809452, 39.125416, 57.146404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.683495, 39.504463, 57.125023>,  <45.607922, 39.731892, 57.112194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.683495, 39.504463, 57.125023>,  <45.809452, 39.125416, 57.146404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.683495, 39.504463, 57.125023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000835, 0.056599, 0.998397,
		0.949128, 0.314340, -0.018614,
		-0.314890, 0.947622, -0.053457,
		45.589027, 39.788750, 57.108986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163101, 39.468460, 57.649731>,  <45.809452, 39.125416, 57.146404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163101, 39.468460, 57.649731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.859695, 39.709930, 57.551563>,  <45.677654, 39.854813, 57.492661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.859695, 39.709930, 57.551563>,  <46.163101, 39.468460, 57.649731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.859695, 39.709930, 57.551563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175869, 0.173000, 0.969093,
		0.627480, 0.778230, -0.025054,
		-0.758511, 0.603680, -0.245421,
		45.632141, 39.891033, 57.477936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.337025, 40.004749, 58.045502>,  <46.163101, 39.468460, 57.649731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.337025, 40.004749, 58.045502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.951294, 40.062599, 57.956825>,  <45.719856, 40.097309, 57.903618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.951294, 40.062599, 57.956825>,  <46.337025, 40.004749, 58.045502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951294, 40.062599, 57.956825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167542, 0.314914, 0.934215,
		0.204925, 0.938037, -0.279451,
		-0.964331, 0.144625, -0.221695,
		45.661995, 40.105988, 57.890316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.206146, 40.594105, 58.482899>,  <46.337025, 40.004749, 58.045502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.206146, 40.594105, 58.482899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.841789, 40.448341, 58.405457>,  <45.623177, 40.360882, 58.358990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.841789, 40.448341, 58.405457>,  <46.206146, 40.594105, 58.482899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.841789, 40.448341, 58.405457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282189, 0.207758, 0.936593,
		-0.301083, 0.907766, -0.292078,
		-0.910889, -0.364413, -0.193609,
		45.568523, 40.339016, 58.347374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786003, 41.048592, 58.774174>,  <46.206146, 40.594105, 58.482899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786003, 41.048592, 58.774174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.586952, 40.703255, 58.740677>,  <45.467522, 40.496052, 58.720577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.586952, 40.703255, 58.740677>,  <45.786003, 41.048592, 58.774174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.586952, 40.703255, 58.740677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338478, 0.104387, 0.935166,
		-0.798624, 0.493709, -0.344167,
		-0.497627, -0.863339, -0.083744,
		45.437664, 40.444252, 58.715553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184608, 41.638531, 58.586540>,  <45.786003, 41.048592, 58.774174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184608, 41.638531, 58.586540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.178585, 42.038269, 58.599648>,  <45.174973, 42.278114, 58.607513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.178585, 42.038269, 58.599648>,  <45.184608, 41.638531, 58.586540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178585, 42.038269, 58.599648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186266, 0.035001, -0.981876,
		-0.982384, -0.008681, -0.186672,
		-0.015058, 0.999349, 0.032768,
		45.174068, 42.338074, 58.609478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683067, 41.794994, 58.080540>,  <45.184608, 41.638531, 58.586540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683067, 41.794994, 58.080540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.889229, 42.131538, 58.145630>,  <45.012924, 42.333466, 58.184685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.889229, 42.131538, 58.145630>,  <44.683067, 41.794994, 58.080540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889229, 42.131538, 58.145630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046603, 0.162089, -0.985675,
		-0.855680, 0.515603, 0.044331,
		0.515403, 0.841356, 0.162725,
		45.043850, 42.383945, 58.194447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373688, 42.334198, 57.644257>,  <44.683067, 41.794994, 58.080540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373688, 42.334198, 57.644257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.731575, 42.494507, 57.723099>,  <44.946308, 42.590694, 57.770405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.731575, 42.494507, 57.723099>,  <44.373688, 42.334198, 57.644257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.731575, 42.494507, 57.723099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075617, 0.299019, -0.951246,
		-0.440176, 0.866005, 0.237234,
		0.894722, 0.400777, 0.197106,
		44.999992, 42.614738, 57.782230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406967, 43.085506, 57.298981>,  <44.373688, 42.334198, 57.644257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406967, 43.085506, 57.298981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.767986, 42.919556, 57.345085>,  <44.984596, 42.819984, 57.372746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.767986, 42.919556, 57.345085>,  <44.406967, 43.085506, 57.298981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767986, 42.919556, 57.345085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191524, 0.147061, -0.970408,
		0.385654, 0.897913, 0.212189,
		0.902546, -0.414881, 0.115257,
		45.038750, 42.795090, 57.379662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683830, 43.504166, 56.892250>,  <44.406967, 43.085506, 57.298981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683830, 43.504166, 56.892250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.971519, 43.229630, 56.935436>,  <45.144135, 43.064907, 56.961349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.971519, 43.229630, 56.935436>,  <44.683830, 43.504166, 56.892250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971519, 43.229630, 56.935436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417916, 0.303227, -0.856387,
		0.555031, 0.661057, 0.504920,
		0.719226, -0.686336, 0.107966,
		45.187286, 43.023727, 56.967827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294334, 43.812714, 56.690739>,  <44.683830, 43.504166, 56.892250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294334, 43.812714, 56.690739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.362648, 43.421738, 56.641037>,  <45.403637, 43.187153, 56.611217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.362648, 43.421738, 56.641037>,  <45.294334, 43.812714, 56.690739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.362648, 43.421738, 56.641037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178486, 0.154711, -0.971703,
		0.969008, 0.143772, 0.200882,
		0.170782, -0.977442, -0.124255,
		45.413883, 43.128506, 56.603760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.932617, 43.709202, 56.251286>,  <45.294334, 43.812714, 56.690739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.932617, 43.709202, 56.251286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.772346, 43.346771, 56.196911>,  <45.676182, 43.129314, 56.164284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.772346, 43.346771, 56.196911>,  <45.932617, 43.709202, 56.251286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.772346, 43.346771, 56.196911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162738, 0.075630, -0.983766,
		0.901650, -0.416296, 0.117149,
		-0.400678, -0.906078, -0.135939,
		45.652142, 43.074947, 56.156128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.091125, 43.478012, 59.220196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.945435, 43.118973, 59.120880>,  <40.858021, 42.903549, 59.061291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.945435, 43.118973, 59.120880>,  <41.091125, 43.478012, 59.220196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945435, 43.118973, 59.120880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407603, 0.086074, -0.909094,
		0.837375, -0.432324, 0.334514,
		-0.364230, -0.897601, -0.248293,
		40.836166, 42.849693, 59.046391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560478, 43.222313, 58.752819>,  <41.091125, 43.478012, 59.220196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560478, 43.222313, 58.752819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.226006, 43.010750, 58.694767>,  <41.025322, 42.883812, 58.659935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.226006, 43.010750, 58.694767>,  <41.560478, 43.222313, 58.752819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226006, 43.010750, 58.694767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097578, 0.116923, -0.988336,
		0.539710, -0.840585, -0.046158,
		-0.836177, -0.528911, -0.145128,
		40.975151, 42.852077, 58.651230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677979, 42.746857, 58.175121>,  <41.560478, 43.222313, 58.752819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677979, 42.746857, 58.175121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.286530, 42.823112, 58.205997>,  <41.051662, 42.868866, 58.224525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.286530, 42.823112, 58.205997>,  <41.677979, 42.746857, 58.175121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286530, 42.823112, 58.205997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077061, 0.008126, -0.996993,
		-0.190696, -0.981626, 0.006739,
		-0.978620, 0.190642, 0.077195,
		40.992943, 42.880306, 58.229156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486782, 42.524452, 57.527843>,  <41.677979, 42.746857, 58.175121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486782, 42.524452, 57.527843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.159874, 42.724060, 57.643116>,  <40.963730, 42.843826, 57.712280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.159874, 42.724060, 57.643116>,  <41.486782, 42.524452, 57.527843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159874, 42.724060, 57.643116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217837, 0.195452, -0.956214,
		-0.533496, -0.844262, -0.051032,
		-0.817269, 0.499020, 0.288184,
		40.914692, 42.873768, 57.729572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002472, 42.424435, 57.065102>,  <41.486782, 42.524452, 57.527843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002472, 42.424435, 57.065102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.865982, 42.761665, 57.231373>,  <40.784088, 42.964005, 57.331135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.865982, 42.761665, 57.231373>,  <41.002472, 42.424435, 57.065102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865982, 42.761665, 57.231373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286639, 0.327827, -0.900204,
		-0.895213, -0.426316, 0.129799,
		-0.341220, 0.843080, 0.415674,
		40.763615, 43.014591, 57.356075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450661, 42.438988, 56.663872>,  <41.002472, 42.424435, 57.065102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450661, 42.438988, 56.663872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.532066, 42.805397, 56.802132>,  <40.580910, 43.025242, 56.885090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.532066, 42.805397, 56.802132>,  <40.450661, 42.438988, 56.663872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532066, 42.805397, 56.802132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021336, 0.348808, -0.936952,
		-0.978839, 0.198061, 0.051444,
		0.203518, 0.916027, 0.345652,
		40.593121, 43.080204, 56.905827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944843, 42.899342, 56.360851>,  <40.450661, 42.438988, 56.663872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944843, 42.899342, 56.360851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.274792, 43.103935, 56.457165>,  <40.472759, 43.226692, 56.514954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.274792, 43.103935, 56.457165>,  <39.944843, 42.899342, 56.360851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274792, 43.103935, 56.457165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106045, 0.278363, -0.954604,
		-0.555286, 0.812959, 0.175374,
		0.824871, 0.511480, 0.240781,
		40.522255, 43.257378, 56.529400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022156, 43.352859, 55.845058>,  <39.944843, 42.899342, 56.360851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022156, 43.352859, 55.845058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.362236, 43.411583, 56.047291>,  <40.566284, 43.446819, 56.168629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.362236, 43.411583, 56.047291>,  <40.022156, 43.352859, 55.845058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362236, 43.411583, 56.047291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368765, 0.519315, -0.770924,
		-0.375735, 0.841878, 0.387381,
		0.850197, 0.146811, 0.505580,
		40.617294, 43.455627, 56.198963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128475, 44.076591, 55.897545>,  <40.022156, 43.352859, 55.845058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128475, 44.076591, 55.897545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.482449, 43.893265, 55.930630>,  <40.694832, 43.783268, 55.950481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.482449, 43.893265, 55.930630>,  <40.128475, 44.076591, 55.897545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482449, 43.893265, 55.930630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291640, 0.406874, -0.865679,
		0.363105, 0.790187, 0.493719,
		0.884930, -0.458321, 0.082712,
		40.747929, 43.755768, 55.955444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724537, 44.629730, 55.966835>,  <40.128475, 44.076591, 55.897545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724537, 44.629730, 55.966835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.857433, 44.290459, 55.801811>,  <40.937172, 44.086895, 55.702797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.857433, 44.290459, 55.801811>,  <40.724537, 44.629730, 55.966835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857433, 44.290459, 55.801811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288936, 0.507909, -0.811508,
		0.897847, 0.150415, 0.413819,
		0.332245, -0.848177, -0.412564,
		40.957108, 44.036007, 55.678043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291172, 44.775532, 55.611492>,  <40.724537, 44.629730, 55.966835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291172, 44.775532, 55.611492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.273766, 44.425102, 55.419411>,  <41.263321, 44.214844, 55.304161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.273766, 44.425102, 55.419411>,  <41.291172, 44.775532, 55.611492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273766, 44.425102, 55.419411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209895, 0.461912, -0.861731,
		0.976755, -0.138295, 0.163781,
		-0.043520, -0.876077, -0.480202,
		41.260708, 44.162277, 55.275349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976780, 44.837349, 55.330990>,  <41.291172, 44.775532, 55.611492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976780, 44.837349, 55.330990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.752506, 44.563087, 55.145302>,  <41.617943, 44.398529, 55.033890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.752506, 44.563087, 55.145302>,  <41.976780, 44.837349, 55.330990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752506, 44.563087, 55.145302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224137, 0.414031, -0.882236,
		0.797115, -0.598708, -0.078461,
		-0.560687, -0.685658, -0.464223,
		41.584301, 44.357391, 55.006035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516750, 44.412025, 55.638298>,  <41.976780, 44.837349, 55.330990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516750, 44.412025, 55.638298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.862999, 44.565872, 55.766533>,  <43.070747, 44.658180, 55.843475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.862999, 44.565872, 55.766533>,  <42.516750, 44.412025, 55.638298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862999, 44.565872, 55.766533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308733, -0.094083, 0.946484,
		0.394199, -0.918268, 0.037305,
		0.865616, 0.384620, 0.320587,
		43.122684, 44.681259, 55.862709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818893, 43.989220, 56.074326>,  <42.516750, 44.412025, 55.638298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818893, 43.989220, 56.074326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.966080, 44.347504, 56.174164>,  <43.054390, 44.562473, 56.234066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.966080, 44.347504, 56.174164>,  <42.818893, 43.989220, 56.074326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966080, 44.347504, 56.174164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213837, -0.179722, 0.960194,
		0.904918, -0.406689, 0.125406,
		0.367963, 0.895714, 0.249600,
		43.076469, 44.616219, 56.249043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321564, 43.836620, 56.629353>,  <42.818893, 43.989220, 56.074326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321564, 43.836620, 56.629353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.205627, 44.219383, 56.636566>,  <43.136066, 44.449039, 56.640896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.205627, 44.219383, 56.636566>,  <43.321564, 43.836620, 56.629353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205627, 44.219383, 56.636566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081098, -0.043334, 0.995764,
		0.953634, 0.287146, 0.090163,
		-0.289837, 0.956906, 0.018038,
		43.118675, 44.506454, 56.641979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803284, 44.210728, 57.068680>,  <43.321564, 43.836620, 56.629353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803284, 44.210728, 57.068680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.456161, 44.408379, 57.047676>,  <43.247890, 44.526970, 57.035072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.456161, 44.408379, 57.047676>,  <43.803284, 44.210728, 57.068680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456161, 44.408379, 57.047676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001270, 0.107874, 0.994164,
		0.496905, 0.862672, -0.094241,
		-0.867804, 0.494125, -0.052508,
		43.195820, 44.556618, 57.031925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.808525, 44.540459, 57.655670>,  <43.803284, 44.210728, 57.068680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.808525, 44.540459, 57.655670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.440693, 44.654381, 57.547413>,  <43.219994, 44.722733, 57.482456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.440693, 44.654381, 57.547413>,  <43.808525, 44.540459, 57.655670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.440693, 44.654381, 57.547413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178496, 0.310816, 0.933559,
		0.350005, 0.906796, -0.234985,
		-0.919585, 0.284807, -0.270646,
		43.164818, 44.739822, 57.466221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668617, 45.137264, 58.049229>,  <43.808525, 44.540459, 57.655670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.668617, 45.137264, 58.049229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.304382, 45.020134, 57.932549>,  <43.085842, 44.949856, 57.862541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.304382, 45.020134, 57.932549>,  <43.668617, 45.137264, 58.049229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304382, 45.020134, 57.932549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340524, 0.131497, 0.930995,
		-0.234257, 0.947082, -0.219452,
		-0.910586, -0.292821, -0.291700,
		43.031208, 44.932289, 57.845039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222748, 45.687546, 58.295597>,  <43.668617, 45.137264, 58.049229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222748, 45.687546, 58.295597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.014717, 45.350182, 58.241676>,  <42.889900, 45.147762, 58.209324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.014717, 45.350182, 58.241676>,  <43.222748, 45.687546, 58.295597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014717, 45.350182, 58.241676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383166, 0.089331, 0.919350,
		-0.763350, 0.529786, -0.369626,
		-0.520078, -0.843414, -0.134805,
		42.858692, 45.097157, 58.201233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579403, 45.838165, 58.529499>,  <43.222748, 45.687546, 58.295597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579403, 45.838165, 58.529499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.611130, 45.439636, 58.542511>,  <42.630165, 45.200520, 58.550316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.611130, 45.439636, 58.542511>,  <42.579403, 45.838165, 58.529499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611130, 45.439636, 58.542511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355835, 0.002179, 0.934546,
		-0.931176, -0.085703, -0.354353,
		0.079321, -0.996319, 0.032525,
		42.634926, 45.140739, 58.552269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041794, 45.563831, 58.897076>,  <42.579403, 45.838165, 58.529499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041794, 45.563831, 58.897076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.290195, 45.251556, 58.925011>,  <42.439236, 45.064190, 58.941772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.290195, 45.251556, 58.925011>,  <42.041794, 45.563831, 58.897076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290195, 45.251556, 58.925011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461420, -0.292103, 0.837716,
		-0.633595, -0.552451, -0.541622,
		0.621007, -0.780688, 0.069837,
		42.476498, 45.017349, 58.945961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584538, 45.030220, 59.172829>,  <42.041794, 45.563831, 58.897076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584538, 45.030220, 59.172829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.953831, 44.917870, 59.277706>,  <42.175407, 44.850460, 59.340630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.953831, 44.917870, 59.277706>,  <41.584538, 45.030220, 59.172829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953831, 44.917870, 59.277706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368747, -0.455910, 0.810044,
		-0.107990, -0.844543, -0.524486,
		0.923235, -0.280879, 0.262189,
		42.230801, 44.833607, 59.356361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509846, 44.336102, 59.479012>,  <41.584538, 45.030220, 59.172829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509846, 44.336102, 59.479012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.869095, 44.464279, 59.599468>,  <42.084644, 44.541183, 59.671741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.869095, 44.464279, 59.599468>,  <41.509846, 44.336102, 59.479012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869095, 44.464279, 59.599468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110811, -0.497799, 0.860184,
		0.425546, -0.805924, -0.411578,
		0.898127, 0.320440, 0.301142,
		42.138535, 44.560410, 59.689812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944023, 43.743233, 59.652359>,  <41.509846, 44.336102, 59.479012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944023, 43.743233, 59.652359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.061630, 44.075508, 59.841469>,  <42.132195, 44.274872, 59.954933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.061630, 44.075508, 59.841469>,  <41.944023, 43.743233, 59.652359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061630, 44.075508, 59.841469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057120, -0.478481, 0.876238,
		0.954092, -0.284633, -0.093233,
		0.294017, 0.830686, 0.472773,
		42.149834, 44.324715, 59.983299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468494, 43.487728, 59.996441>,  <41.944023, 43.743233, 59.652359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468494, 43.487728, 59.996441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.333035, 43.820053, 60.173107>,  <42.251759, 44.019447, 60.279106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.333035, 43.820053, 60.173107>,  <42.468494, 43.487728, 59.996441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333035, 43.820053, 60.173107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076729, -0.443456, 0.893006,
		0.937778, 0.336307, 0.086430,
		-0.338652, 0.830810, 0.441667,
		42.231438, 44.069298, 60.305607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762421, 43.453876, 60.687046>,  <42.468494, 43.487728, 59.996441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762421, 43.453876, 60.687046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.509338, 43.751350, 60.773407>,  <42.357491, 43.929836, 60.825222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.509338, 43.751350, 60.773407>,  <42.762421, 43.453876, 60.687046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509338, 43.751350, 60.773407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205088, -0.429763, 0.879342,
		0.746743, 0.512085, 0.424434,
		-0.632704, 0.743689, 0.215900,
		42.319527, 43.974457, 60.838177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123520, 42.840050, 60.683140>,  <42.762421, 43.453876, 60.687046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123520, 42.840050, 60.683140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.448685, 42.683510, 60.855659>,  <43.643784, 42.589584, 60.959171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.448685, 42.683510, 60.855659>,  <43.123520, 42.840050, 60.683140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448685, 42.683510, 60.855659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515426, 0.138694, -0.845636,
		0.271122, 0.909730, 0.314459,
		0.812914, -0.391351, 0.431296,
		43.692558, 42.566105, 60.985046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590038, 43.269886, 60.630939>,  <43.123520, 42.840050, 60.683140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590038, 43.269886, 60.630939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.786011, 42.924103, 60.675968>,  <43.903595, 42.716633, 60.702984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.786011, 42.924103, 60.675968>,  <43.590038, 43.269886, 60.630939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786011, 42.924103, 60.675968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530844, 0.193414, -0.825104,
		0.691498, 0.464003, 0.553654,
		0.489935, -0.864461, 0.112568,
		43.932991, 42.664764, 60.709740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164608, 43.458004, 60.322422>,  <43.590038, 43.269886, 60.630939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164608, 43.458004, 60.322422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.227821, 43.065689, 60.368156>,  <44.265751, 42.830299, 60.395596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.227821, 43.065689, 60.368156>,  <44.164608, 43.458004, 60.322422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227821, 43.065689, 60.368156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526459, -0.014266, -0.850081,
		0.835383, 0.194536, 0.514092,
		0.158038, -0.980792, 0.114332,
		44.275234, 42.771450, 60.402454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.995743, 43.287457, 60.377243>,  <44.164608, 43.458004, 60.322422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.995743, 43.287457, 60.377243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.792583, 42.960243, 60.269276>,  <44.670689, 42.763916, 60.204494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.792583, 42.960243, 60.269276>,  <44.995743, 43.287457, 60.377243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792583, 42.960243, 60.269276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527897, -0.047966, -0.847952,
		0.680709, -0.573163, 0.456201,
		-0.507898, -0.818036, -0.269920,
		44.640213, 42.714832, 60.188301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447800, 42.738483, 60.246559>,  <44.995743, 43.287457, 60.377243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447800, 42.738483, 60.246559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.114910, 42.654839, 60.041161>,  <44.915176, 42.604652, 59.917919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.114910, 42.654839, 60.041161>,  <45.447800, 42.738483, 60.246559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114910, 42.654839, 60.041161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532819, -0.045496, -0.845006,
		0.153339, -0.976833, 0.149282,
		-0.832221, -0.209113, -0.513498,
		44.865242, 42.592106, 59.887112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719566, 42.257587, 59.788391>,  <45.447800, 42.738483, 60.246559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719566, 42.257587, 59.788391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.372406, 42.387550, 59.638092>,  <45.164108, 42.465527, 59.547913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.372406, 42.387550, 59.638092>,  <45.719566, 42.257587, 59.788391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372406, 42.387550, 59.638092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374604, -0.068661, -0.924639,
		-0.326218, -0.943251, -0.062120,
		-0.867902, 0.324905, -0.375744,
		45.112034, 42.485020, 59.525368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.632095, 41.849140, 59.213917>,  <45.719566, 42.257587, 59.788391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.632095, 41.849140, 59.213917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.389389, 42.160683, 59.150391>,  <45.243767, 42.347607, 59.112274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.389389, 42.160683, 59.150391>,  <45.632095, 41.849140, 59.213917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389389, 42.160683, 59.150391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143702, -0.089020, -0.985609,
		-0.781784, -0.620854, -0.057909,
		-0.606765, 0.778855, -0.158812,
		45.207359, 42.394341, 59.102745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251240, 41.217583, 59.249397>,  <45.632095, 41.849140, 59.213917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.251240, 41.217583, 59.249397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.246201, 40.823067, 59.183571>,  <45.243179, 40.586357, 59.144077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.246201, 40.823067, 59.183571>,  <45.251240, 41.217583, 59.249397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246201, 40.823067, 59.183571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404130, -0.145514, 0.903053,
		-0.914615, 0.077877, -0.396755,
		-0.012593, -0.986287, -0.164561,
		45.242424, 40.527180, 59.134201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560719, 40.985523, 59.297764>,  <45.251240, 41.217583, 59.249397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560719, 40.985523, 59.297764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.769356, 40.655190, 59.383499>,  <44.894539, 40.456989, 59.434940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.769356, 40.655190, 59.383499>,  <44.560719, 40.985523, 59.297764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769356, 40.655190, 59.383499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601851, -0.178072, 0.778502,
		-0.604748, -0.535056, -0.589911,
		0.521589, -0.825836, 0.214335,
		44.925831, 40.407440, 59.447800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091900, 40.348732, 59.375298>,  <44.560719, 40.985523, 59.297764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091900, 40.348732, 59.375298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.440071, 40.249138, 59.545174>,  <44.648972, 40.189381, 59.647099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.440071, 40.249138, 59.545174>,  <44.091900, 40.348732, 59.375298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.440071, 40.249138, 59.545174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489645, -0.348361, 0.799308,
		-0.051070, -0.903687, -0.425137,
		0.870425, -0.248987, 0.424695,
		44.701199, 40.174442, 59.672581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921310, 39.760044, 59.775562>,  <44.091900, 40.348732, 59.375298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921310, 39.760044, 59.775562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.258560, 39.882568, 59.952339>,  <44.460911, 39.956081, 60.058403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.258560, 39.882568, 59.952339>,  <43.921310, 39.760044, 59.775562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258560, 39.882568, 59.952339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346594, -0.318787, 0.882183,
		0.411103, -0.896967, -0.162614,
		0.843129, 0.306307, 0.441938,
		44.511497, 39.974461, 60.084919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141594, 39.186436, 60.159966>,  <43.921310, 39.760044, 59.775562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141594, 39.186436, 60.159966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.313084, 39.506844, 60.327087>,  <44.415977, 39.699089, 60.427361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.313084, 39.506844, 60.327087>,  <44.141594, 39.186436, 60.159966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313084, 39.506844, 60.327087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477443, -0.191725, 0.857490,
		0.766972, -0.567103, 0.300246,
		0.428721, 0.801022, 0.417807,
		44.441700, 39.747150, 60.452431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302925, 38.965164, 60.766670>,  <44.141594, 39.186436, 60.159966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302925, 38.965164, 60.766670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.306999, 39.364342, 60.792007>,  <44.309444, 39.603848, 60.807209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.306999, 39.364342, 60.792007>,  <44.302925, 38.965164, 60.766670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306999, 39.364342, 60.792007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351976, -0.055715, 0.934349,
		0.935954, -0.031816, 0.350683,
		0.010188, 0.997940, 0.063345,
		44.310055, 39.663723, 60.811012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572548, 39.080830, 61.393757>,  <44.302925, 38.965164, 60.766670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572548, 39.080830, 61.393757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.346817, 39.398941, 61.305145>,  <44.211380, 39.589806, 61.251976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.346817, 39.398941, 61.305145>,  <44.572548, 39.080830, 61.393757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346817, 39.398941, 61.305145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348925, 0.013430, 0.937054,
		0.748191, 0.606101, 0.269912,
		-0.564324, 0.795274, -0.221532,
		44.177521, 39.637524, 61.238686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503277, 39.366467, 62.049290>,  <44.572548, 39.080830, 61.393757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503277, 39.366467, 62.049290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.224648, 39.567505, 61.844479>,  <44.057468, 39.688129, 61.721592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.224648, 39.567505, 61.844479>,  <44.503277, 39.366467, 62.049290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224648, 39.567505, 61.844479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502516, 0.167621, 0.848163,
		0.512114, 0.848114, 0.135804,
		-0.696575, 0.502600, -0.512032,
		44.015675, 39.718285, 61.690868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342567, 39.972588, 62.454659>,  <44.503277, 39.366467, 62.049290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342567, 39.972588, 62.454659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.030869, 39.928970, 62.207794>,  <43.843849, 39.902802, 62.059673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.030869, 39.928970, 62.207794>,  <44.342567, 39.972588, 62.454659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.030869, 39.928970, 62.207794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625990, 0.087881, 0.774863,
		-0.030254, 0.990145, -0.136738,
		-0.779244, -0.109040, -0.617163,
		43.797096, 39.896259, 62.022644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<48.180573, 40.718136, 46.723877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.854691, 40.705284, 46.492283>,  <47.659161, 40.697571, 46.353329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.854691, 40.705284, 46.492283>,  <48.180573, 40.718136, 46.723877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.854691, 40.705284, 46.492283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532242, -0.354865, 0.768628,
		-0.230158, 0.934365, 0.272009,
		-0.814706, -0.032131, -0.578983,
		47.610279, 40.695644, 46.318588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.755554, 41.305954, 46.972485>,  <48.180573, 40.718136, 46.723877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.755554, 41.305954, 46.972485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.521904, 41.029701, 46.801918>,  <47.381714, 40.863953, 46.699577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.521904, 41.029701, 46.801918>,  <47.755554, 41.305954, 46.972485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.521904, 41.029701, 46.801918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398765, -0.213404, 0.891877,
		-0.706954, 0.691009, -0.150743,
		-0.584126, -0.690627, -0.426417,
		47.346664, 40.822514, 46.673992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.088646, 41.489418, 47.251869>,  <47.755554, 41.305954, 46.972485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.088646, 41.489418, 47.251869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.088173, 41.112495, 47.117970>,  <47.087887, 40.886341, 47.037628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.088173, 41.112495, 47.117970>,  <47.088646, 41.489418, 47.251869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.088173, 41.112495, 47.117970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424802, -0.302572, 0.853225,
		-0.905286, 0.143214, -0.399934,
		-0.001185, -0.942306, -0.334752,
		47.087818, 40.829803, 47.017544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.467693, 41.264557, 47.393204>,  <47.088646, 41.489418, 47.251869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.467693, 41.264557, 47.393204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.670677, 40.920868, 47.367203>,  <46.792469, 40.714657, 47.351601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.670677, 40.920868, 47.367203>,  <46.467693, 41.264557, 47.393204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.670677, 40.920868, 47.367203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389280, -0.295909, 0.872295,
		-0.768728, -0.417352, -0.484639,
		0.507463, -0.859218, -0.065007,
		46.822918, 40.663101, 47.347702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.004547, 40.757133, 47.664696>,  <46.467693, 41.264557, 47.393204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.004547, 40.757133, 47.664696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.360565, 40.576202, 47.687366>,  <46.574177, 40.467644, 47.700970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.360565, 40.576202, 47.687366>,  <46.004547, 40.757133, 47.664696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.360565, 40.576202, 47.687366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181290, -0.237133, 0.954412,
		-0.418270, -0.859747, -0.293063,
		0.890048, -0.452331, 0.056678,
		46.627579, 40.440502, 47.704369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780838, 40.181385, 48.115677>,  <46.004547, 40.757133, 47.664696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.780838, 40.181385, 48.115677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.175781, 40.243973, 48.125866>,  <46.412746, 40.281525, 48.131981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.175781, 40.243973, 48.125866>,  <45.780838, 40.181385, 48.115677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.175781, 40.243973, 48.125866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003451, -0.139422, 0.990227,
		0.158492, -0.977793, -0.137119,
		0.987354, 0.156470, 0.025471,
		46.471989, 40.290913, 48.133507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.049809, 39.591618, 48.517273>,  <45.780838, 40.181385, 48.115677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.049809, 39.591618, 48.517273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.322113, 39.884338, 48.530144>,  <46.485497, 40.059971, 48.537865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.322113, 39.884338, 48.530144>,  <46.049809, 39.591618, 48.517273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322113, 39.884338, 48.530144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069301, 0.020615, 0.997383,
		0.729223, -0.681206, 0.064748,
		0.680758, 0.731801, 0.032176,
		46.526340, 40.103878, 48.539795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.615135, 39.361340, 48.936752>,  <46.049809, 39.591618, 48.517273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.615135, 39.361340, 48.936752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.642174, 39.760406, 48.940552>,  <46.658398, 39.999847, 48.942829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.642174, 39.760406, 48.940552>,  <46.615135, 39.361340, 48.936752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.642174, 39.760406, 48.940552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225128, -0.024525, 0.974020,
		0.971981, -0.063705, -0.226261,
		0.067599, 0.997667, 0.009496,
		46.662453, 40.059708, 48.943401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.191628, 39.454952, 49.379875>,  <46.615135, 39.361340, 48.936752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.191628, 39.454952, 49.379875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.011635, 39.811531, 49.358566>,  <46.903641, 40.025478, 49.345783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.011635, 39.811531, 49.358566>,  <47.191628, 39.454952, 49.379875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.011635, 39.811531, 49.358566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127748, 0.123290, 0.984114,
		0.883855, 0.436024, -0.169359,
		-0.449978, 0.891450, -0.053269,
		46.876640, 40.078964, 49.342587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.506672, 39.863152, 49.945312>,  <47.191628, 39.454952, 49.379875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.506672, 39.863152, 49.945312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.152740, 40.008484, 49.828651>,  <46.940380, 40.095684, 49.758656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.152740, 40.008484, 49.828651>,  <47.506672, 39.863152, 49.945312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.152740, 40.008484, 49.828651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223229, 0.218839, 0.949883,
		0.408950, 0.905592, -0.112529,
		-0.884833, 0.363335, -0.291648,
		46.887291, 40.117485, 49.741158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.525211, 40.623573, 50.201038>,  <47.506672, 39.863152, 49.945312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.525211, 40.623573, 50.201038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.149696, 40.488663, 50.172981>,  <46.924389, 40.407715, 50.156147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.149696, 40.488663, 50.172981>,  <47.525211, 40.623573, 50.201038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.149696, 40.488663, 50.172981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157249, 0.238376, 0.958358,
		-0.306514, 0.910725, -0.276822,
		-0.938788, -0.337280, -0.070145,
		46.868061, 40.387478, 50.151939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.121277, 41.113892, 50.513752>,  <47.525211, 40.623573, 50.201038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.121277, 41.113892, 50.513752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.891571, 40.787247, 50.536972>,  <46.753746, 40.591259, 50.550903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.891571, 40.787247, 50.536972>,  <47.121277, 41.113892, 50.513752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.891571, 40.787247, 50.536972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270129, 0.255939, 0.928184,
		-0.772820, 0.517343, -0.367566,
		-0.574264, -0.816610, 0.058046,
		46.719292, 40.542263, 50.554386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.088524, 41.718731, 50.171040>,  <47.121277, 41.113892, 50.513752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.088524, 41.718731, 50.171040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.130432, 42.088539, 50.317616>,  <47.155579, 42.310425, 50.405560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.130432, 42.088539, 50.317616>,  <47.088524, 41.718731, 50.171040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.130432, 42.088539, 50.317616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380698, 0.303114, -0.873608,
		-0.918744, 0.231034, -0.320206,
		0.104774, 0.924524, 0.366439,
		47.161865, 42.365898, 50.427547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.752068, 42.134083, 49.671570>,  <47.088524, 41.718731, 50.171040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.752068, 42.134083, 49.671570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.011841, 42.340843, 49.894657>,  <47.167706, 42.464901, 50.028511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.011841, 42.340843, 49.894657>,  <46.752068, 42.134083, 49.671570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.011841, 42.340843, 49.894657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405579, 0.384948, -0.829048,
		-0.643228, 0.764611, 0.040355,
		0.649433, 0.516900, 0.557719,
		47.206673, 42.495914, 50.061974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.767467, 42.737453, 49.359226>,  <46.752068, 42.134083, 49.671570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.767467, 42.737453, 49.359226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.105377, 42.749039, 49.572964>,  <47.308125, 42.755989, 49.701206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.105377, 42.749039, 49.572964>,  <46.767467, 42.737453, 49.359226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.105377, 42.749039, 49.572964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488146, 0.367406, -0.791660,
		-0.219252, 0.929609, 0.296235,
		0.844774, 0.028967, 0.534339,
		47.358810, 42.757729, 49.733265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.110867, 43.427925, 49.257469>,  <46.767467, 42.737453, 49.359226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.110867, 43.427925, 49.257469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.396606, 43.172821, 49.372684>,  <47.568050, 43.019756, 49.441814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.396606, 43.172821, 49.372684>,  <47.110867, 43.427925, 49.257469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.396606, 43.172821, 49.372684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597103, 0.340852, -0.726146,
		0.364931, 0.690708, 0.624297,
		0.714348, -0.637763, 0.288037,
		47.610912, 42.981491, 49.459095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.669323, 43.897617, 49.347122>,  <47.110867, 43.427925, 49.257469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.669323, 43.897617, 49.347122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.800354, 43.522568, 49.300575>,  <47.878975, 43.297539, 49.272648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.800354, 43.522568, 49.300575>,  <47.669323, 43.897617, 49.347122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.800354, 43.522568, 49.300575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617655, 0.305724, -0.724593,
		0.714977, 0.165486, 0.679281,
		0.327582, -0.937629, -0.116372,
		47.898628, 43.241280, 49.265663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.396519, 44.028095, 49.279953>,  <47.669323, 43.897617, 49.347122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.396519, 44.028095, 49.279953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.366592, 43.656975, 49.133759>,  <48.348637, 43.434303, 49.046040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.366592, 43.656975, 49.133759>,  <48.396519, 44.028095, 49.279953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.366592, 43.656975, 49.133759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659528, 0.228866, -0.715991,
		0.747947, -0.294618, 0.594790,
		-0.074817, -0.927804, -0.365489,
		48.344147, 43.378635, 49.024113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.037476, 43.728901, 49.121990>,  <48.396519, 44.028095, 49.279953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.037476, 43.728901, 49.121990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.801460, 43.506004, 48.888294>,  <48.659851, 43.372265, 48.748077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.801460, 43.506004, 48.888294>,  <49.037476, 43.728901, 49.121990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.801460, 43.506004, 48.888294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560594, 0.237993, -0.793154,
		0.581027, -0.795510, 0.171964,
		-0.590036, -0.557246, -0.584239,
		48.624451, 43.338829, 48.713024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.425716, 43.342316, 48.617458>,  <49.037476, 43.728901, 49.121990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.425716, 43.342316, 48.617458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.065796, 43.332283, 48.443226>,  <48.849842, 43.326263, 48.338688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.065796, 43.332283, 48.443226>,  <49.425716, 43.342316, 48.617458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.065796, 43.332283, 48.443226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429250, 0.127848, -0.894091,
		0.078110, -0.991477, -0.104272,
		-0.899802, -0.025079, -0.435578,
		48.795856, 43.324760, 48.312553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.574284, 43.082268, 47.961361>,  <49.425716, 43.342316, 48.617458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.574284, 43.082268, 47.961361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.208405, 43.234245, 47.906273>,  <48.988876, 43.325432, 47.873219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.208405, 43.234245, 47.906273>,  <49.574284, 43.082268, 47.961361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.208405, 43.234245, 47.906273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240725, 0.238505, -0.940833,
		-0.324621, -0.893731, -0.309623,
		-0.914698, 0.379949, -0.137720,
		48.933994, 43.348228, 47.864956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.203861, 42.758095, 47.335426>,  <49.574284, 43.082268, 47.961361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.203861, 42.758095, 47.335426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.072113, 43.130096, 47.400681>,  <48.993065, 43.353298, 47.439831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.072113, 43.130096, 47.400681>,  <49.203861, 42.758095, 47.335426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.072113, 43.130096, 47.400681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410209, 0.296561, -0.862427,
		-0.850437, -0.217141, -0.479173,
		-0.329372, 0.930001, 0.163133,
		48.973301, 43.409096, 47.449619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.951744, 42.937317, 46.674160>,  <49.203861, 42.758095, 47.335426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.951744, 42.937317, 46.674160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.981613, 43.290886, 46.858814>,  <48.999535, 43.503025, 46.969608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.981613, 43.290886, 46.858814>,  <48.951744, 42.937317, 46.674160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.981613, 43.290886, 46.858814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321071, 0.416967, -0.850325,
		-0.944107, 0.211715, -0.252665,
		0.074674, 0.883921, 0.461636,
		49.004017, 43.556061, 46.997307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.594059, 43.391029, 46.269207>,  <48.951744, 42.937317, 46.674160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.594059, 43.391029, 46.269207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.832458, 43.613396, 46.500977>,  <48.975498, 43.746815, 46.640038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.832458, 43.613396, 46.500977>,  <48.594059, 43.391029, 46.269207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.832458, 43.613396, 46.500977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334802, 0.483837, -0.808585,
		-0.729857, 0.675911, 0.102244,
		0.596001, 0.555919, 0.579428,
		49.011257, 43.780170, 46.674805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.515583, 44.056210, 45.975628>,  <48.594059, 43.391029, 46.269207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.515583, 44.056210, 45.975628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.843704, 44.116837, 46.196220>,  <49.040577, 44.153214, 46.328575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.843704, 44.116837, 46.196220>,  <48.515583, 44.056210, 45.975628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.843704, 44.116837, 46.196220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404027, 0.528908, -0.746336,
		-0.404799, 0.835036, 0.372630,
		0.820305, 0.151563, 0.551479,
		49.089794, 44.162304, 46.361664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.742374, 44.846104, 46.002007>,  <48.515583, 44.056210, 45.975628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.742374, 44.846104, 46.002007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.061546, 44.626099, 46.100628>,  <49.253052, 44.494095, 46.159801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.061546, 44.626099, 46.100628>,  <48.742374, 44.846104, 46.002007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.061546, 44.626099, 46.100628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510616, 0.399479, -0.761372,
		0.320276, 0.733415, 0.599604,
		0.797932, -0.550016, 0.246550,
		49.300926, 44.461094, 46.174591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.175232, 45.360023, 46.022308>,  <48.742374, 44.846104, 46.002007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.175232, 45.360023, 46.022308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.370300, 45.018181, 45.950954>,  <49.487343, 44.813076, 45.908142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.370300, 45.018181, 45.950954>,  <49.175232, 45.360023, 46.022308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.370300, 45.018181, 45.950954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328332, 0.368864, -0.869561,
		0.808934, 0.365491, 0.460480,
		0.487672, -0.854608, -0.178384,
		49.516602, 44.761799, 45.897438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.488358, 45.586742, 46.352455>,  <49.175232, 45.360023, 46.022308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.488358, 45.586742, 46.352455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.145790, 45.784172, 46.291874>,  <47.940250, 45.902630, 46.255524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.145790, 45.784172, 46.291874>,  <48.488358, 45.586742, 46.352455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.145790, 45.784172, 46.291874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071332, 0.177423, 0.981546,
		0.511336, 0.851415, -0.116740,
		-0.856415, 0.493573, -0.151456,
		47.888866, 45.932243, 46.246437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.492599, 46.348293, 46.638550>,  <48.488358, 45.586742, 46.352455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.492599, 46.348293, 46.638550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.120560, 46.203804, 46.611942>,  <47.897335, 46.117111, 46.595978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.120560, 46.203804, 46.611942>,  <48.492599, 46.348293, 46.638550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.120560, 46.203804, 46.611942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129984, 0.154320, 0.979433,
		-0.343531, 0.919620, -0.190488,
		-0.930103, -0.361226, -0.066522,
		47.841530, 46.095436, 46.591984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.968311, 46.815704, 46.926003>,  <48.492599, 46.348293, 46.638550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.968311, 46.815704, 46.926003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.806175, 46.453499, 46.976189>,  <47.708893, 46.236176, 47.006302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.806175, 46.453499, 46.976189>,  <47.968311, 46.815704, 46.926003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.806175, 46.453499, 46.976189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357316, 0.283263, 0.889993,
		-0.841442, 0.315918, -0.438373,
		-0.405339, -0.905515, 0.125467,
		47.684574, 46.181843, 47.013828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.315632, 46.950562, 47.144470>,  <47.968311, 46.815704, 46.926003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.315632, 46.950562, 47.144470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.345848, 46.564491, 47.244652>,  <47.363976, 46.332848, 47.304760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.345848, 46.564491, 47.244652>,  <47.315632, 46.950562, 47.144470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.345848, 46.564491, 47.244652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489225, 0.182990, 0.852745,
		-0.868880, -0.186943, -0.458367,
		0.075538, -0.965177, 0.250453,
		47.368511, 46.274937, 47.319786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.756233, 46.919853, 47.565922>,  <47.315632, 46.950562, 47.144470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.756233, 46.919853, 47.565922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.946869, 46.576866, 47.643494>,  <47.061249, 46.371075, 47.690037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.946869, 46.576866, 47.643494>,  <46.756233, 46.919853, 47.565922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.946869, 46.576866, 47.643494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517213, -0.095106, 0.850556,
		-0.710884, -0.505665, -0.488822,
		0.476587, -0.857472, 0.193927,
		47.089844, 46.319626, 47.701672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.263599, 46.304176, 47.722675>,  <46.756233, 46.919853, 47.565922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.263599, 46.304176, 47.722675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.623459, 46.273529, 47.894611>,  <46.839375, 46.255142, 47.997772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.623459, 46.273529, 47.894611>,  <46.263599, 46.304176, 47.722675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.623459, 46.273529, 47.894611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436576, -0.144766, 0.887944,
		-0.005807, -0.986495, -0.163688,
		0.899649, -0.076619, 0.429839,
		46.893353, 46.250546, 48.023563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086086, 46.030827, 48.264877>,  <46.263599, 46.304176, 47.722675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086086, 46.030827, 48.264877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.468163, 46.117439, 48.345604>,  <46.697407, 46.169407, 48.394039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.468163, 46.117439, 48.345604>,  <46.086086, 46.030827, 48.264877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.468163, 46.117439, 48.345604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175187, -0.136030, 0.975092,
		0.238597, -0.966751, -0.091999,
		0.955186, 0.216537, 0.201819,
		46.754719, 46.182400, 48.406151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.338158, 45.454170, 48.754925>,  <46.086086, 46.030827, 48.264877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.338158, 45.454170, 48.754925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.584885, 45.763779, 48.812088>,  <46.732922, 45.949543, 48.846386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.584885, 45.763779, 48.812088>,  <46.338158, 45.454170, 48.754925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.584885, 45.763779, 48.812088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114485, -0.091407, 0.989211,
		0.778736, -0.626523, 0.032233,
		0.616817, 0.774025, 0.142909,
		46.769928, 45.995987, 48.854961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.798943, 45.201031, 49.173462>,  <46.338158, 45.454170, 48.754925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.798943, 45.201031, 49.173462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.818741, 45.597023, 49.226357>,  <46.830620, 45.834618, 49.258095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.818741, 45.597023, 49.226357>,  <46.798943, 45.201031, 49.173462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.818741, 45.597023, 49.226357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212373, -0.118940, 0.969923,
		0.975934, -0.076089, 0.204358,
		0.049494, 0.989982, 0.132237,
		46.833588, 45.894016, 49.266029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.117981, 45.281609, 49.789722>,  <46.798943, 45.201031, 49.173462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.117981, 45.281609, 49.789722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.959976, 45.648636, 49.771694>,  <46.865173, 45.868851, 49.760880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.959976, 45.648636, 49.771694>,  <47.117981, 45.281609, 49.789722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.959976, 45.648636, 49.771694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277186, -0.072272, 0.958094,
		0.875860, 0.390955, 0.282886,
		-0.395016, 0.917568, -0.045067,
		46.841473, 45.923904, 49.758175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.231075, 45.552311, 50.422737>,  <47.117981, 45.281609, 49.789722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.231075, 45.552311, 50.422737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.950851, 45.792465, 50.268463>,  <46.782719, 45.936558, 50.175900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.950851, 45.792465, 50.268463>,  <47.231075, 45.552311, 50.422737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.950851, 45.792465, 50.268463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410460, 0.103089, 0.906033,
		0.583730, 0.793037, 0.174215,
		-0.700558, 0.600387, -0.385686,
		46.740685, 45.972580, 50.152756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.253422, 46.238461, 50.734589>,  <47.231075, 45.552311, 50.422737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.253422, 46.238461, 50.734589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.885002, 46.177986, 50.591022>,  <46.663952, 46.141701, 50.504883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.885002, 46.177986, 50.591022>,  <47.253422, 46.238461, 50.734589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.885002, 46.177986, 50.591022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384633, 0.208548, 0.899203,
		-0.061094, 0.966256, -0.250232,
		-0.921046, -0.151183, -0.358913,
		46.608688, 46.132629, 50.483349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.838375, 46.764210, 51.079853>,  <47.253422, 46.238461, 50.734589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.838375, 46.764210, 51.079853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.597183, 46.474945, 50.945126>,  <46.452469, 46.301384, 50.864288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.597183, 46.474945, 50.945126>,  <46.838375, 46.764210, 51.079853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.597183, 46.474945, 50.945126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417674, -0.073533, 0.905617,
		-0.679677, 0.686750, -0.257708,
		-0.602982, -0.723165, -0.336816,
		46.416290, 46.257996, 50.844082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.119396, 46.979427, 51.321445>,  <46.838375, 46.764210, 51.079853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.119396, 46.979427, 51.321445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.112419, 46.589752, 51.231422>,  <46.108234, 46.355946, 51.177410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.112419, 46.589752, 51.231422>,  <46.119396, 46.979427, 51.321445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.112419, 46.589752, 51.231422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649193, -0.160156, 0.743572,
		-0.760424, 0.159074, -0.629643,
		-0.017442, -0.974190, -0.225056,
		46.107185, 46.297497, 51.163906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.413704, 46.822758, 51.387650>,  <46.119396, 46.979427, 51.321445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.413704, 46.822758, 51.387650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.598747, 46.468781, 51.409050>,  <45.709774, 46.256393, 51.421890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.598747, 46.468781, 51.409050>,  <45.413704, 46.822758, 51.387650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598747, 46.468781, 51.409050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601879, -0.269183, 0.751852,
		-0.650948, -0.380014, -0.657157,
		0.462610, -0.884946, 0.053499,
		45.737530, 46.203297, 51.425098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.927807, 46.367321, 51.631329>,  <45.413704, 46.822758, 51.387650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.927807, 46.367321, 51.631329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.252804, 46.150970, 51.718327>,  <45.447803, 46.021160, 51.770527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.252804, 46.150970, 51.718327>,  <44.927807, 46.367321, 51.631329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252804, 46.150970, 51.718327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471048, -0.389301, 0.791554,
		-0.343456, -0.745589, -0.571083,
		0.812497, -0.540872, 0.217500,
		45.496552, 45.988708, 51.783577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.656670, 45.681858, 51.732075>,  <44.927807, 46.367321, 51.631329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.656670, 45.681858, 51.732075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.994335, 45.733238, 51.940266>,  <45.196934, 45.764065, 52.065182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.994335, 45.733238, 51.940266>,  <44.656670, 45.681858, 51.732075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.994335, 45.733238, 51.940266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409130, -0.473016, 0.780300,
		0.346421, -0.871640, -0.346750,
		0.844159, 0.128447, 0.520477,
		45.247581, 45.771770, 52.096409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.902145, 45.023102, 51.986313>,  <44.656670, 45.681858, 51.732075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.902145, 45.023102, 51.986313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.085159, 45.290100, 52.221298>,  <45.194969, 45.450298, 52.362289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.085159, 45.290100, 52.221298>,  <44.902145, 45.023102, 51.986313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085159, 45.290100, 52.221298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175229, -0.580035, 0.795521,
		0.871755, -0.466920, -0.148422,
		0.457535, 0.667492, 0.587466,
		45.222420, 45.490349, 52.397537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.079609, 44.575691, 52.553036>,  <44.902145, 45.023102, 51.986313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.079609, 44.575691, 52.553036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.105194, 44.944458, 52.705864>,  <45.120544, 45.165718, 52.797562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.105194, 44.944458, 52.705864>,  <45.079609, 44.575691, 52.553036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105194, 44.944458, 52.705864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244953, -0.356635, 0.901560,
		0.967423, -0.151252, 0.203016,
		0.063960, 0.921919, 0.382066,
		45.124382, 45.221035, 52.820484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437397, 44.503296, 53.168922>,  <45.079609, 44.575691, 52.553036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437397, 44.503296, 53.168922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.270657, 44.863945, 53.215073>,  <45.170612, 45.080334, 53.242764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.270657, 44.863945, 53.215073>,  <45.437397, 44.503296, 53.168922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.270657, 44.863945, 53.215073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151907, -0.194243, 0.969120,
		0.896191, 0.386455, 0.217933,
		-0.416853, 0.901622, 0.115373,
		45.145599, 45.134430, 53.249683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680248, 44.753109, 53.778938>,  <45.437397, 44.503296, 53.168922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680248, 44.753109, 53.778938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.344185, 44.961258, 53.717827>,  <45.142548, 45.086147, 53.681160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.344185, 44.961258, 53.717827>,  <45.680248, 44.753109, 53.778938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.344185, 44.961258, 53.717827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317581, -0.243705, 0.916379,
		0.439626, 0.818426, 0.370012,
		-0.840162, 0.520372, -0.152778,
		45.092136, 45.117371, 53.671993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579174, 45.127556, 54.392311>,  <45.680248, 44.753109, 53.778938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579174, 45.127556, 54.392311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.221848, 45.133774, 54.212646>,  <45.007454, 45.137505, 54.104847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.221848, 45.133774, 54.212646>,  <45.579174, 45.127556, 54.392311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.221848, 45.133774, 54.212646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447328, -0.127380, 0.885252,
		-0.043453, 0.991732, 0.120744,
		-0.893314, 0.015545, -0.449165,
		44.953854, 45.138439, 54.077896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169159, 45.653912, 54.772675>,  <45.579174, 45.127556, 54.392311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169159, 45.653912, 54.772675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.909439, 45.414032, 54.585579>,  <44.753609, 45.270103, 54.473324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.909439, 45.414032, 54.585579>,  <45.169159, 45.653912, 54.772675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.909439, 45.414032, 54.585579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451945, -0.190395, 0.871490,
		-0.611683, 0.777249, -0.147406,
		-0.649300, -0.599695, -0.467735,
		44.714649, 45.234123, 54.445259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.481033, 45.844944, 55.004238>,  <45.169159, 45.653912, 54.772675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.481033, 45.844944, 55.004238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.369789, 45.493690, 54.848530>,  <44.303043, 45.282936, 54.755104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.369789, 45.493690, 54.848530>,  <44.481033, 45.844944, 55.004238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369789, 45.493690, 54.848530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645997, -0.128932, 0.752372,
		-0.710876, 0.460707, -0.531418,
		-0.278106, -0.878138, -0.389270,
		44.286358, 45.230247, 54.731750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771660, 45.878372, 54.962456>,  <44.481033, 45.844944, 55.004238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771660, 45.878372, 54.962456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.834076, 45.484100, 54.936878>,  <43.871525, 45.247536, 54.921532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.834076, 45.484100, 54.936878>,  <43.771660, 45.878372, 54.962456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834076, 45.484100, 54.936878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661683, -0.152371, 0.734138,
		-0.733368, -0.072241, -0.675983,
		0.156035, -0.985680, -0.063943,
		43.880886, 45.188396, 54.917694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089901, 45.552868, 54.914181>,  <43.771660, 45.878372, 54.962456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089901, 45.552868, 54.914181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.353397, 45.292908, 55.065807>,  <43.511494, 45.136932, 55.156784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.353397, 45.292908, 55.065807>,  <43.089901, 45.552868, 54.914181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353397, 45.292908, 55.065807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647188, -0.232531, 0.726000,
		-0.383683, -0.723572, -0.573786,
		0.658737, -0.649902, 0.379069,
		43.551018, 45.097939, 55.179527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681515, 45.037872, 55.226692>,  <43.089901, 45.552868, 54.914181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681515, 45.037872, 55.226692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.035404, 44.947601, 55.389832>,  <43.247738, 44.893440, 55.487717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.035404, 44.947601, 55.389832>,  <42.681515, 45.037872, 55.226692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035404, 44.947601, 55.389832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440128, -0.116327, 0.890368,
		-0.153490, -0.967233, -0.202243,
		0.884719, -0.225675, 0.407851,
		43.300819, 44.879898, 55.512188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394936, 44.618073, 54.781986>,  <42.681515, 45.037872, 55.226692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394936, 44.618073, 54.781986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.033455, 44.500702, 54.657265>,  <41.816566, 44.430279, 54.582432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.033455, 44.500702, 54.657265>,  <42.394936, 44.618073, 54.781986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033455, 44.500702, 54.657265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260685, 0.200639, -0.944345,
		0.339652, -0.934691, -0.104827,
		-0.903704, -0.293422, -0.311808,
		41.762344, 44.412674, 54.563721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479553, 44.083206, 54.242031>,  <42.394936, 44.618073, 54.781986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479553, 44.083206, 54.242031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.119442, 44.254463, 54.210537>,  <41.903378, 44.357220, 54.191643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.119442, 44.254463, 54.210537>,  <42.479553, 44.083206, 54.242031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119442, 44.254463, 54.210537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134920, 0.102464, -0.985544,
		-0.413890, -0.897882, -0.150011,
		-0.900273, 0.428146, -0.078733,
		41.849361, 44.382908, 54.186916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164055, 43.692062, 53.610687>,  <42.479553, 44.083206, 54.242031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164055, 43.692062, 53.610687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.965569, 44.031860, 53.682388>,  <41.846478, 44.235737, 53.725407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.965569, 44.031860, 53.682388>,  <42.164055, 43.692062, 53.610687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965569, 44.031860, 53.682388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099001, 0.260479, -0.960390,
		-0.862534, -0.458820, -0.213355,
		-0.496220, 0.849491, 0.179249,
		41.816704, 44.286709, 53.736164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608189, 43.680073, 53.099724>,  <42.164055, 43.692062, 53.610687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608189, 43.680073, 53.099724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.640591, 44.058830, 53.224194>,  <41.660030, 44.286083, 53.298874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.640591, 44.058830, 53.224194>,  <41.608189, 43.680073, 53.099724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640591, 44.058830, 53.224194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026114, 0.314108, -0.949028,
		-0.996372, 0.068749, 0.050171,
		0.081003, 0.946895, 0.311173,
		41.664890, 44.342899, 53.317547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045147, 43.956841, 52.752804>,  <41.608189, 43.680073, 53.099724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045147, 43.956841, 52.752804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.282108, 44.267090, 52.839943>,  <41.424286, 44.453239, 52.892227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.282108, 44.267090, 52.839943>,  <41.045147, 43.956841, 52.752804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282108, 44.267090, 52.839943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193599, 0.399535, -0.896042,
		-0.782032, 0.488646, 0.386848,
		0.592407, 0.775626, 0.217848,
		41.459831, 44.499779, 52.905296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
