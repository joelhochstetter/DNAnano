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
	<24.174332, 35.210716, 34.565056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344843, 35.000523, 34.859581>,  <24.447149, 34.874405, 35.036297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344843, 35.000523, 34.859581>,  <24.174332, 35.210716, 34.565056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.344843, 35.000523, 34.859581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612052, -0.431815, -0.662516,
		0.666092, 0.733077, 0.137550,
		0.426279, -0.525485, 0.736310,
		24.472727, 34.842876, 35.080475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886713, 35.205738, 34.324615>,  <24.174332, 35.210716, 34.565056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.886713, 35.205738, 34.324615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819134, 34.919590, 34.595821>,  <24.778587, 34.747902, 34.758545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819134, 34.919590, 34.595821>,  <24.886713, 35.205738, 34.324615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.819134, 34.919590, 34.595821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500395, -0.654906, -0.566306,
		0.849153, 0.243598, 0.468614,
		-0.168947, -0.715373, 0.678011,
		24.768450, 34.704979, 34.799225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.276138, 34.759590, 33.949902>,  <24.886713, 35.205738, 34.324615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.276138, 34.759590, 33.949902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.135015, 34.583714, 34.280281>,  <25.050343, 34.478188, 34.478508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.135015, 34.583714, 34.280281>,  <25.276138, 34.759590, 33.949902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.135015, 34.583714, 34.280281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447630, -0.854463, -0.263666,
		0.821678, 0.276698, 0.498281,
		-0.352807, -0.439694, 0.825952,
		25.029173, 34.451805, 34.528069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.843390, 34.504066, 34.451595>,  <25.276138, 34.759590, 33.949902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.843390, 34.504066, 34.451595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772917, 34.163765, 34.253532>,  <25.730633, 33.959583, 34.134693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772917, 34.163765, 34.253532>,  <25.843390, 34.504066, 34.451595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772917, 34.163765, 34.253532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957811, -0.032125, -0.285599,
		0.227067, -0.524585, 0.820519,
		-0.176180, -0.850752, -0.495158,
		25.720062, 33.908539, 34.104984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.778210, 34.468185, 35.274147>,  <25.843390, 34.504066, 34.451595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.778210, 34.468185, 35.274147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.746428, 34.502838, 35.671375>,  <25.727358, 34.523628, 35.909710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.746428, 34.502838, 35.671375>,  <25.778210, 34.468185, 35.274147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.746428, 34.502838, 35.671375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013198, 0.996221, -0.085847,
		-0.996751, 0.006286, -0.080297,
		-0.079454, 0.086628, 0.993067,
		25.722591, 34.528828, 35.969296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.205576, 34.861523, 35.304283>,  <25.778210, 34.468185, 35.274147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.205576, 34.861523, 35.304283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460289, 34.904327, 35.609715>,  <25.613117, 34.930012, 35.792973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460289, 34.904327, 35.609715>,  <25.205576, 34.861523, 35.304283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460289, 34.904327, 35.609715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080929, 0.994128, -0.071834,
		-0.766783, -0.016053, 0.641706,
		0.636785, 0.107014, 0.763579,
		25.651325, 34.936432, 35.838787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.875952, 35.352585, 35.775337>,  <25.205576, 34.861523, 35.304283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.875952, 35.352585, 35.775337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.250887, 35.344593, 35.914474>,  <25.475849, 35.339798, 35.997955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.250887, 35.344593, 35.914474>,  <24.875952, 35.352585, 35.775337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.250887, 35.344593, 35.914474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008999, 0.996634, 0.081480,
		-0.348301, -0.079504, 0.934005,
		0.937340, -0.019975, 0.347845,
		25.532089, 35.338600, 36.018829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909073, 35.749805, 36.404446>,  <24.875952, 35.352585, 35.775337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909073, 35.749805, 36.404446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287191, 35.736687, 36.274620>,  <25.514063, 35.728813, 36.196724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287191, 35.736687, 36.274620>,  <24.909073, 35.749805, 36.404446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.287191, 35.736687, 36.274620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115781, 0.963892, 0.239806,
		0.304979, -0.264266, 0.914960,
		0.945295, -0.032800, -0.324564,
		25.570780, 35.726849, 36.177250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.280659, 36.245380, 36.875057>,  <24.909073, 35.749805, 36.404446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.280659, 36.245380, 36.875057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485115, 36.214367, 36.532661>,  <25.607788, 36.195759, 36.327225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485115, 36.214367, 36.532661>,  <25.280659, 36.245380, 36.875057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485115, 36.214367, 36.532661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198088, 0.979739, 0.029538,
		0.836360, -0.184660, 0.516143,
		0.511140, -0.077538, -0.855993,
		25.638456, 36.191105, 36.275864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982969, 36.419476, 37.013535>,  <25.280659, 36.245380, 36.875057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982969, 36.419476, 37.013535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916800, 36.503513, 36.628101>,  <25.877098, 36.553936, 36.396843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916800, 36.503513, 36.628101>,  <25.982969, 36.419476, 37.013535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916800, 36.503513, 36.628101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397739, 0.908277, 0.129756,
		0.902462, -0.361790, -0.233817,
		-0.165426, 0.210098, -0.963583,
		25.867172, 36.566544, 36.339027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501740, 36.805126, 36.772198>,  <25.982969, 36.419476, 37.013535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501740, 36.805126, 36.772198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253761, 36.889126, 36.469788>,  <26.104975, 36.939526, 36.288342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253761, 36.889126, 36.469788>,  <26.501740, 36.805126, 36.772198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253761, 36.889126, 36.469788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359573, 0.932428, -0.035860,
		0.697406, -0.294076, -0.653563,
		-0.619946, 0.209994, -0.756022,
		26.067778, 36.952126, 36.242981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906891, 37.248928, 36.305077>,  <26.501740, 36.805126, 36.772198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906891, 37.248928, 36.305077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537378, 37.333397, 36.177303>,  <26.315670, 37.384079, 36.100639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537378, 37.333397, 36.177303>,  <26.906891, 37.248928, 36.305077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537378, 37.333397, 36.177303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281568, 0.939952, -0.192898,
		0.259514, -0.268137, -0.927769,
		-0.923781, 0.211170, -0.319429,
		26.260244, 37.396748, 36.081474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951458, 37.656876, 35.671082>,  <26.906891, 37.248928, 36.305077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951458, 37.656876, 35.671082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583515, 37.725803, 35.812031>,  <26.362749, 37.767159, 35.896603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583515, 37.725803, 35.812031>,  <26.951458, 37.656876, 35.671082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583515, 37.725803, 35.812031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088159, 0.966178, -0.242337,
		-0.382218, -0.191850, -0.903937,
		-0.919857, 0.172316, 0.352378,
		26.307558, 37.777496, 35.917744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520628, 38.064030, 35.122101>,  <26.951458, 37.656876, 35.671082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520628, 38.064030, 35.122101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388079, 38.143883, 35.490955>,  <26.308550, 38.191795, 35.712269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388079, 38.143883, 35.490955>,  <26.520628, 38.064030, 35.122101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388079, 38.143883, 35.490955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042769, 0.979533, -0.196689,
		-0.942531, -0.025739, -0.333127,
		-0.331371, 0.199633, 0.922139,
		26.288668, 38.203773, 35.767597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214674, 38.705582, 35.082642>,  <26.520628, 38.064030, 35.122101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214674, 38.705582, 35.082642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221737, 38.672314, 35.481194>,  <26.225975, 38.652351, 35.720325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221737, 38.672314, 35.481194>,  <26.214674, 38.705582, 35.082642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221737, 38.672314, 35.481194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062692, 0.994481, 0.084122,
		-0.997877, -0.063950, 0.012348,
		0.017659, -0.083169, 0.996379,
		26.227036, 38.647362, 35.780106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726156, 39.181007, 35.392830>,  <26.214674, 38.705582, 35.082642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726156, 39.181007, 35.392830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.956055, 39.107807, 35.711872>,  <26.093994, 39.063889, 35.903297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.956055, 39.107807, 35.711872>,  <25.726156, 39.181007, 35.392830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956055, 39.107807, 35.711872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027982, 0.969710, 0.242651,
		-0.817852, -0.161782, 0.552218,
		0.574748, -0.183000, 0.797606,
		26.128479, 39.052906, 35.951153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.465952, 39.618580, 35.935482>,  <25.726156, 39.181007, 35.392830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.465952, 39.618580, 35.935482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843817, 39.545578, 36.044518>,  <26.070536, 39.501778, 36.109940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843817, 39.545578, 36.044518>,  <25.465952, 39.618580, 35.935482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.843817, 39.545578, 36.044518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116394, 0.963359, 0.241642,
		-0.306702, -0.196543, 0.931292,
		0.944662, -0.182509, 0.272588,
		26.127216, 39.490826, 36.126293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.528576, 39.834618, 36.693516>,  <25.465952, 39.618580, 35.935482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.528576, 39.834618, 36.693516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900824, 39.827995, 36.547268>,  <26.124172, 39.824020, 36.459518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900824, 39.827995, 36.547268>,  <25.528576, 39.834618, 36.693516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900824, 39.827995, 36.547268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187465, 0.879546, 0.437328,
		0.314335, -0.475525, 0.821626,
		0.930619, -0.016558, -0.365617,
		26.180010, 39.823029, 36.437584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963167, 40.016636, 37.289730>,  <25.528576, 39.834618, 36.693516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963167, 40.016636, 37.289730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171877, 40.089039, 36.956264>,  <26.297102, 40.132481, 36.756187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171877, 40.089039, 36.956264>,  <25.963167, 40.016636, 37.289730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171877, 40.089039, 36.956264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298384, 0.876780, 0.377126,
		0.799200, -0.445525, 0.403470,
		0.521773, 0.181010, -0.833659,
		26.328409, 40.143341, 36.706165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622604, 40.108772, 37.495564>,  <25.963167, 40.016636, 37.289730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622604, 40.108772, 37.495564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576071, 40.285114, 37.139561>,  <26.548151, 40.390919, 36.925961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576071, 40.285114, 37.139561>,  <26.622604, 40.108772, 37.495564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576071, 40.285114, 37.139561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340726, 0.859425, 0.381174,
		0.932938, -0.258906, -0.250191,
		-0.116332, 0.440858, -0.890006,
		26.541172, 40.417370, 36.872559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273344, 40.510494, 37.392704>,  <26.622604, 40.108772, 37.495564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273344, 40.510494, 37.392704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081108, 40.685394, 37.088638>,  <26.965767, 40.790333, 36.906200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081108, 40.685394, 37.088638>,  <27.273344, 40.510494, 37.392704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081108, 40.685394, 37.088638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363854, 0.888117, 0.280817,
		0.797901, -0.141630, -0.585914,
		-0.480588, 0.437251, -0.760162,
		26.936932, 40.816570, 36.860588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726803, 40.980728, 37.086468>,  <27.273344, 40.510494, 37.392704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726803, 40.980728, 37.086468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368656, 41.125301, 36.982407>,  <27.153767, 41.212044, 36.919968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368656, 41.125301, 36.982407>,  <27.726803, 40.980728, 37.086468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368656, 41.125301, 36.982407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298983, 0.920842, 0.250319,
		0.330035, 0.146346, -0.932555,
		-0.895369, 0.361433, -0.260155,
		27.100046, 41.233730, 36.904362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811619, 41.687073, 36.839977>,  <27.726803, 40.980728, 37.086468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811619, 41.687073, 36.839977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433741, 41.677608, 36.970818>,  <27.207014, 41.671928, 37.049320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433741, 41.677608, 36.970818>,  <27.811619, 41.687073, 36.839977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433741, 41.677608, 36.970818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088322, 0.942186, 0.323240,
		-0.315835, 0.334253, -0.887988,
		-0.944694, -0.023662, 0.327097,
		27.150331, 41.670509, 37.068947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568188, 42.353439, 36.648941>,  <27.811619, 41.687073, 36.839977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568188, 42.353439, 36.648941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340942, 42.226910, 36.952831>,  <27.204596, 42.150993, 37.135166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340942, 42.226910, 36.952831>,  <27.568188, 42.353439, 36.648941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340942, 42.226910, 36.952831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096987, 0.891006, 0.443510,
		-0.817216, 0.325647, -0.475513,
		-0.568113, -0.316325, 0.759728,
		27.170509, 42.132011, 37.180748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079308, 42.863846, 36.758015>,  <27.568188, 42.353439, 36.648941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079308, 42.863846, 36.758015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104271, 42.714989, 37.128445>,  <27.119249, 42.625675, 37.350704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104271, 42.714989, 37.128445>,  <27.079308, 42.863846, 36.758015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104271, 42.714989, 37.128445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183495, 0.916344, 0.355869,
		-0.981038, 0.147721, 0.125473,
		0.062407, -0.372145, 0.926074,
		27.122993, 42.603344, 37.406265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722055, 43.234016, 37.166767>,  <27.079308, 42.863846, 36.758015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722055, 43.234016, 37.166767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023029, 43.096298, 37.391373>,  <27.203613, 43.013668, 37.526134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023029, 43.096298, 37.391373>,  <26.722055, 43.234016, 37.166767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023029, 43.096298, 37.391373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116372, 0.908582, 0.401169,
		-0.648304, -0.236509, 0.723716,
		0.752435, -0.344300, 0.561514,
		27.248760, 42.993008, 37.559826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633944, 43.530758, 37.756390>,  <26.722055, 43.234016, 37.166767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633944, 43.530758, 37.756390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026394, 43.455856, 37.737080>,  <27.261864, 43.410915, 37.725494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026394, 43.455856, 37.737080>,  <26.633944, 43.530758, 37.756390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026394, 43.455856, 37.737080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190453, 0.892420, 0.409040,
		-0.033517, -0.410512, 0.911238,
		0.981124, -0.187258, -0.048272,
		27.320730, 43.399677, 37.722599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042744, 43.674381, 38.473698>,  <26.633944, 43.530758, 37.756390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042744, 43.674381, 38.473698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212385, 43.784977, 38.128746>,  <27.314171, 43.851334, 37.921776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212385, 43.784977, 38.128746>,  <27.042744, 43.674381, 38.473698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212385, 43.784977, 38.128746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013198, 0.950267, 0.311156,
		0.905517, -0.143345, 0.399365,
		0.424106, 0.276486, -0.862374,
		27.339617, 43.867924, 37.870033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.587322, 43.199322, 38.793411>,  <27.042744, 43.674381, 38.473698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.587322, 43.199322, 38.793411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683136, 43.522884, 39.008183>,  <27.740623, 43.717022, 39.137043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683136, 43.522884, 39.008183>,  <27.587322, 43.199322, 38.793411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683136, 43.522884, 39.008183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619584, -0.298416, 0.725992,
		0.747489, -0.506569, 0.429708,
		0.239533, 0.808911, 0.536924,
		27.754995, 43.765556, 39.169258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988779, 43.049686, 39.500301>,  <27.587322, 43.199322, 38.793411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988779, 43.049686, 39.500301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734619, 43.356720, 39.466621>,  <27.582123, 43.540939, 39.446415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734619, 43.356720, 39.466621>,  <27.988779, 43.049686, 39.500301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734619, 43.356720, 39.466621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493320, -0.319625, 0.808997,
		0.594058, 0.555571, 0.581752,
		-0.635398, 0.767581, -0.084198,
		27.544001, 43.586994, 39.441360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855314, 43.364784, 40.198593>,  <27.988779, 43.049686, 39.500301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855314, 43.364784, 40.198593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542391, 43.431110, 39.958427>,  <27.354637, 43.470905, 39.814327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542391, 43.431110, 39.958427>,  <27.855314, 43.364784, 40.198593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542391, 43.431110, 39.958427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620504, -0.123194, 0.774466,
		0.054454, 0.978431, 0.199268,
		-0.782310, 0.165819, -0.600412,
		27.307697, 43.480858, 39.778305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297237, 43.989349, 40.273769>,  <27.855314, 43.364784, 40.198593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297237, 43.989349, 40.273769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147263, 43.646126, 40.133396>,  <27.057278, 43.440189, 40.049171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147263, 43.646126, 40.133396>,  <27.297237, 43.989349, 40.273769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147263, 43.646126, 40.133396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573160, -0.082969, 0.815232,
		-0.728635, 0.506801, -0.460699,
		-0.374937, -0.858061, -0.350932,
		27.034781, 43.388706, 40.028118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552042, 44.061188, 40.421131>,  <27.297237, 43.989349, 40.273769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552042, 44.061188, 40.421131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729961, 43.702980, 40.426682>,  <26.836714, 43.488056, 40.430012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729961, 43.702980, 40.426682>,  <26.552042, 44.061188, 40.421131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729961, 43.702980, 40.426682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311238, -0.140022, 0.939960,
		-0.839812, -0.422413, -0.341003,
		0.444800, -0.895523, 0.013879,
		26.863401, 43.434322, 40.430843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142166, 43.643272, 40.862148>,  <26.552042, 44.061188, 40.421131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142166, 43.643272, 40.862148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504087, 43.472942, 40.862030>,  <26.721241, 43.370743, 40.861958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504087, 43.472942, 40.862030>,  <26.142166, 43.643272, 40.862148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504087, 43.472942, 40.862030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135284, -0.288110, 0.947993,
		-0.403767, -0.857708, -0.318291,
		0.904804, -0.425828, -0.000295,
		26.775528, 43.345196, 40.861942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.424805, 43.500053, 41.186241>,  <26.142166, 43.643272, 40.862148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.424805, 43.500053, 41.186241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201855, 43.258171, 41.413807>,  <25.068085, 43.113041, 41.550346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201855, 43.258171, 41.413807>,  <25.424805, 43.500053, 41.186241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.201855, 43.258171, 41.413807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195029, -0.761411, -0.618237,
		0.807030, -0.233634, 0.542325,
		-0.557374, -0.604705, 0.568917,
		25.034643, 43.076759, 41.584480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908112, 42.873585, 41.429874>,  <25.424805, 43.500053, 41.186241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908112, 42.873585, 41.429874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513342, 42.816811, 41.399319>,  <25.276480, 42.782745, 41.380985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513342, 42.816811, 41.399319>,  <25.908112, 42.873585, 41.429874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513342, 42.816811, 41.399319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161158, -0.859232, -0.485539,
		0.003278, -0.491501, 0.870871,
		-0.986923, -0.141939, -0.076393,
		25.217264, 42.774227, 41.376400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582302, 42.112114, 41.752014>,  <25.908112, 42.873585, 41.429874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582302, 42.112114, 41.752014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345854, 42.247761, 41.459282>,  <25.203985, 42.329147, 41.283642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345854, 42.247761, 41.459282>,  <25.582302, 42.112114, 41.752014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.345854, 42.247761, 41.459282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064367, -0.924263, -0.376291,
		-0.804012, -0.175326, 0.568177,
		-0.591119, 0.339114, -0.731833,
		25.168518, 42.349495, 41.239731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.153919, 41.529163, 41.672791>,  <25.582302, 42.112114, 41.752014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.153919, 41.529163, 41.672791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144442, 41.756077, 41.343517>,  <25.138756, 41.892223, 41.145954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144442, 41.756077, 41.343517>,  <25.153919, 41.529163, 41.672791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144442, 41.756077, 41.343517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129943, -0.818175, -0.560092,
		-0.991238, 0.093696, 0.093100,
		-0.023693, 0.567283, -0.823182,
		25.137333, 41.926262, 41.096561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.614904, 41.300152, 41.255711>,  <25.153919, 41.529163, 41.672791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.614904, 41.300152, 41.255711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839590, 41.499775, 40.991764>,  <24.974401, 41.619549, 40.833397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839590, 41.499775, 40.991764>,  <24.614904, 41.300152, 41.255711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.839590, 41.499775, 40.991764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034389, -0.810975, -0.584070,
		-0.826617, 0.305388, -0.472697,
		0.561713, 0.499058, -0.659863,
		25.008104, 41.649490, 40.793804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.430227, 41.059597, 40.595997>,  <24.614904, 41.300152, 41.255711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.430227, 41.059597, 40.595997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781630, 41.229988, 40.509495>,  <24.992472, 41.332222, 40.457592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781630, 41.229988, 40.509495>,  <24.430227, 41.059597, 40.595997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.781630, 41.229988, 40.509495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192491, -0.729933, -0.655855,
		-0.437235, 0.534545, -0.723248,
		0.878506, 0.425981, -0.216257,
		25.045181, 41.357784, 40.444618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.530888, 40.917953, 39.899494>,  <24.430227, 41.059597, 40.595997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.530888, 40.917953, 39.899494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897652, 41.005543, 40.032959>,  <25.117710, 41.058094, 40.113037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897652, 41.005543, 40.032959>,  <24.530888, 40.917953, 39.899494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.897652, 41.005543, 40.032959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362286, -0.807375, -0.465718,
		0.167411, 0.547902, -0.819620,
		0.916909, 0.218971, 0.333661,
		25.172724, 41.071236, 40.133057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.893440, 40.975075, 39.360222>,  <24.530888, 40.917953, 39.899494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.893440, 40.975075, 39.360222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.137791, 40.883282, 39.663319>,  <25.284401, 40.828205, 39.845177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.137791, 40.883282, 39.663319>,  <24.893440, 40.975075, 39.360222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.137791, 40.883282, 39.663319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163522, -0.899867, -0.404351,
		0.774655, 0.370916, -0.512182,
		0.610876, -0.229480, 0.757740,
		25.321054, 40.814438, 39.890640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488010, 40.612518, 39.009174>,  <24.893440, 40.975075, 39.360222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488010, 40.612518, 39.009174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505508, 40.515186, 39.396755>,  <25.516006, 40.456787, 39.629303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505508, 40.515186, 39.396755>,  <25.488010, 40.612518, 39.009174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.505508, 40.515186, 39.396755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249017, -0.936617, -0.246454,
		0.967511, 0.252067, 0.019623,
		0.043744, -0.243333, 0.968956,
		25.518631, 40.442188, 39.687443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150049, 40.253738, 39.055004>,  <25.488010, 40.612518, 39.009174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150049, 40.253738, 39.055004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918934, 40.155392, 39.366314>,  <25.780266, 40.096382, 39.553101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918934, 40.155392, 39.366314>,  <26.150049, 40.253738, 39.055004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918934, 40.155392, 39.366314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310986, -0.947936, -0.068596,
		0.754620, 0.202399, 0.624167,
		-0.577786, -0.245871, 0.778274,
		25.745598, 40.081631, 39.599796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506559, 40.114841, 39.644211>,  <26.150049, 40.253738, 39.055004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506559, 40.114841, 39.644211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170504, 39.908066, 39.709866>,  <25.968870, 39.784000, 39.749260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170504, 39.908066, 39.709866>,  <26.506559, 40.114841, 39.644211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170504, 39.908066, 39.709866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499493, -0.855371, -0.137287,
		0.211369, -0.033354, 0.976837,
		-0.840137, -0.516941, 0.164139,
		25.918463, 39.752983, 39.759106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737820, 39.515743, 40.036480>,  <26.506559, 40.114841, 39.644211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737820, 39.515743, 40.036480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377245, 39.401752, 39.906128>,  <26.160900, 39.333359, 39.827915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377245, 39.401752, 39.906128>,  <26.737820, 39.515743, 40.036480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377245, 39.401752, 39.906128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381614, -0.878526, -0.287338,
		-0.204409, -0.383378, 0.900688,
		-0.901437, -0.284980, -0.325880,
		26.106813, 39.316257, 39.808365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783371, 38.809441, 39.984680>,  <26.737820, 39.515743, 40.036480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783371, 38.809441, 39.984680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444681, 38.866886, 39.779766>,  <26.241467, 38.901352, 39.656818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444681, 38.866886, 39.779766>,  <26.783371, 38.809441, 39.984680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444681, 38.866886, 39.779766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195458, -0.811581, -0.550574,
		-0.494828, -0.566315, 0.659116,
		-0.846724, 0.143610, -0.512284,
		26.190664, 38.909969, 39.626080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515106, 38.211300, 40.026234>,  <26.783371, 38.809441, 39.984680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515106, 38.211300, 40.026234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311541, 38.347729, 39.710087>,  <26.189402, 38.429585, 39.520397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311541, 38.347729, 39.710087>,  <26.515106, 38.211300, 40.026234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311541, 38.347729, 39.710087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324211, -0.774605, -0.543024,
		-0.797430, -0.532598, 0.283629,
		-0.508914, 0.341067, -0.790367,
		26.158867, 38.450050, 39.472977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225414, 37.660267, 39.725353>,  <26.515106, 38.211300, 40.026234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225414, 37.660267, 39.725353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260578, 37.915665, 39.419518>,  <26.281675, 38.068905, 39.236015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260578, 37.915665, 39.419518>,  <26.225414, 37.660267, 39.725353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.260578, 37.915665, 39.419518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317266, -0.745536, -0.586104,
		-0.944254, -0.191055, -0.268110,
		0.087907, 0.638493, -0.764591,
		26.286951, 38.107212, 39.190140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879665, 37.181973, 39.223064>,  <26.225414, 37.660267, 39.725353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879665, 37.181973, 39.223064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100725, 37.473248, 39.060917>,  <26.233360, 37.648014, 38.963627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100725, 37.473248, 39.060917>,  <25.879665, 37.181973, 39.223064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100725, 37.473248, 39.060917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486372, -0.676774, -0.552648,
		-0.676774, 0.108259, -0.728188,
		0.552648, 0.728188, -0.405368,
		26.266520, 37.691704, 38.939308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824007, 37.040756, 38.508312>,  <25.879665, 37.181973, 39.223064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824007, 37.040756, 38.508312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141476, 37.281788, 38.541748>,  <26.331957, 37.426407, 38.561810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141476, 37.281788, 38.541748>,  <25.824007, 37.040756, 38.508312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141476, 37.281788, 38.541748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474040, -0.526463, -0.705778,
		-0.381278, 0.599781, -0.703484,
		0.793671, 0.602577, 0.083592,
		26.379578, 37.462563, 38.566826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120888, 37.145969, 37.753616>,  <25.824007, 37.040756, 38.508312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120888, 37.145969, 37.753616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419327, 37.238949, 38.003193>,  <26.598391, 37.294739, 38.152939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419327, 37.238949, 38.003193>,  <26.120888, 37.145969, 37.753616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419327, 37.238949, 38.003193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638646, -0.514893, -0.571854,
		0.188337, 0.825138, -0.532614,
		0.746097, 0.232451, 0.623944,
		26.643156, 37.308685, 38.190376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669966, 37.314754, 37.345890>,  <26.120888, 37.145969, 37.753616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669966, 37.314754, 37.345890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831730, 37.219608, 37.699131>,  <26.928787, 37.162521, 37.911076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831730, 37.219608, 37.699131>,  <26.669966, 37.314754, 37.345890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831730, 37.219608, 37.699131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643034, -0.612678, -0.459492,
		0.650355, 0.753690, -0.094819,
		0.404408, -0.237861, 0.883106,
		26.953053, 37.148251, 37.964062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275013, 37.326366, 37.094303>,  <26.669966, 37.314754, 37.345890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275013, 37.326366, 37.094303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304735, 37.142101, 37.448090>,  <27.322569, 37.031544, 37.660362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304735, 37.142101, 37.448090>,  <27.275013, 37.326366, 37.094303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304735, 37.142101, 37.448090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507410, -0.746058, -0.431200,
		0.858495, 0.480825, 0.178307,
		0.074304, -0.460658, 0.884462,
		27.327026, 37.003902, 37.713428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929674, 37.106438, 37.161407>,  <27.275013, 37.326366, 37.094303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929674, 37.106438, 37.161407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745003, 36.866104, 37.422436>,  <27.634199, 36.721905, 37.579052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745003, 36.866104, 37.422436>,  <27.929674, 37.106438, 37.161407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745003, 36.866104, 37.422436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658616, -0.724985, -0.201549,
		0.594203, 0.336744, 0.730429,
		-0.461680, -0.600833, 0.652573,
		27.606499, 36.685856, 37.618206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400955, 36.778683, 37.462372>,  <27.929674, 37.106438, 37.161407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400955, 36.778683, 37.462372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103670, 36.525654, 37.549538>,  <27.925299, 36.373837, 37.601837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103670, 36.525654, 37.549538>,  <28.400955, 36.778683, 37.462372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103670, 36.525654, 37.549538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629626, -0.771436, -0.091967,
		0.226283, 0.068854, 0.971625,
		-0.743214, -0.632570, 0.217915,
		27.880707, 36.335884, 37.614914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643362, 36.175121, 37.853603>,  <28.400955, 36.778683, 37.462372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643362, 36.175121, 37.853603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292561, 36.026443, 37.731815>,  <28.082079, 35.937237, 37.658741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292561, 36.026443, 37.731815>,  <28.643362, 36.175121, 37.853603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292561, 36.026443, 37.731815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468617, -0.801646, -0.371164,
		-0.106117, -0.468193, 0.877232,
		-0.877005, -0.371699, -0.304471,
		28.029459, 35.914932, 37.640472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379814, 35.520954, 38.221638>,  <28.643362, 36.175121, 37.853603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379814, 35.520954, 38.221638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285711, 35.581104, 37.837547>,  <28.229250, 35.617195, 37.607094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285711, 35.581104, 37.837547>,  <28.379814, 35.520954, 38.221638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285711, 35.581104, 37.837547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512290, -0.820395, -0.253991,
		-0.825962, -0.551669, 0.115963,
		-0.235255, 0.150380, -0.960230,
		28.215136, 35.626217, 37.549477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737867, 35.224548, 38.957878>,  <28.379814, 35.520954, 38.221638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737867, 35.224548, 38.957878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017126, 34.947987, 39.032227>,  <29.184681, 34.782047, 39.076836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017126, 34.947987, 39.032227>,  <28.737867, 35.224548, 38.957878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017126, 34.947987, 39.032227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637492, 0.718486, 0.278175,
		-0.325879, -0.075714, 0.942375,
		0.698145, -0.691408, 0.185873,
		29.226570, 34.740562, 39.087990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784124, 35.145176, 39.762455>,  <28.737867, 35.224548, 38.957878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784124, 35.145176, 39.762455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094633, 35.117237, 39.511848>,  <29.280939, 35.100471, 39.361485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094633, 35.117237, 39.511848>,  <28.784124, 35.145176, 39.762455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094633, 35.117237, 39.511848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332014, 0.890135, 0.312132,
		0.535882, -0.450312, 0.714178,
		0.776271, -0.069850, -0.626517,
		29.327515, 35.096283, 39.323895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542183, 35.095791, 40.125870>,  <28.784124, 35.145176, 39.762455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542183, 35.095791, 40.125870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544371, 35.250347, 39.756943>,  <29.545683, 35.343079, 39.535587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544371, 35.250347, 39.756943>,  <29.542183, 35.095791, 40.125870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544371, 35.250347, 39.756943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410036, 0.840364, 0.354485,
		0.912053, -0.380123, -0.153837,
		0.005469, 0.386388, -0.922320,
		29.546011, 35.366264, 39.480247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234447, 35.503559, 40.118122>,  <29.542183, 35.095791, 40.125870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234447, 35.503559, 40.118122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336752, 35.484230, 40.504333>,  <30.398134, 35.472633, 40.736061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336752, 35.484230, 40.504333>,  <30.234447, 35.503559, 40.118122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336752, 35.484230, 40.504333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124476, 0.992082, 0.016676,
		-0.958693, 0.115921, 0.259749,
		0.255760, -0.048320, 0.965532,
		30.413481, 35.469734, 40.793995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859217, 35.103176, 39.954689>,  <30.234447, 35.503559, 40.118122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859217, 35.103176, 39.954689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990820, 35.478355, 39.998520>,  <31.069782, 35.703465, 40.024818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990820, 35.478355, 39.998520>,  <30.859217, 35.103176, 39.954689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990820, 35.478355, 39.998520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129812, -0.159861, 0.978567,
		0.935363, -0.307730, -0.174352,
		0.329007, 0.937948, 0.109581,
		31.089521, 35.759739, 40.031395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418327, 35.206318, 40.439053>,  <30.859217, 35.103176, 39.954689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418327, 35.206318, 40.439053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233019, 35.558094, 40.482792>,  <31.121834, 35.769161, 40.509033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233019, 35.558094, 40.482792>,  <31.418327, 35.206318, 40.439053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233019, 35.558094, 40.482792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318222, 0.049926, 0.946701,
		0.827111, 0.473377, -0.302988,
		-0.463273, 0.879444, 0.109345,
		31.094036, 35.821926, 40.515594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942146, 34.881489, 40.802708>,  <31.418327, 35.206318, 40.439053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942146, 34.881489, 40.802708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816118, 34.557446, 41.000477>,  <31.740501, 34.363018, 41.119141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816118, 34.557446, 41.000477>,  <31.942146, 34.881489, 40.802708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816118, 34.557446, 41.000477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327010, -0.396395, -0.857867,
		0.890952, -0.431970, -0.140021,
		-0.315069, -0.810107, 0.494428,
		31.721598, 34.314415, 41.148804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573914, 34.869507, 40.506859>,  <31.942146, 34.881489, 40.802708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573914, 34.869507, 40.506859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722580, 35.013474, 40.164555>,  <32.811779, 35.099854, 39.959171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722580, 35.013474, 40.164555>,  <32.573914, 34.869507, 40.506859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722580, 35.013474, 40.164555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925938, -0.210334, 0.313685,
		-0.067094, -0.908966, -0.411437,
		0.371668, 0.359919, -0.855758,
		32.834080, 35.121449, 39.907825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815716, 34.251808, 40.302902>,  <32.573914, 34.869507, 40.506859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815716, 34.251808, 40.302902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018929, 34.587421, 40.224995>,  <33.140858, 34.788788, 40.178249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018929, 34.587421, 40.224995>,  <32.815716, 34.251808, 40.302902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018929, 34.587421, 40.224995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787425, -0.360764, 0.499810,
		0.349091, -0.407283, -0.843953,
		0.508032, 0.839029, -0.194766,
		33.171337, 34.839130, 40.166565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477764, 34.042076, 40.037659>,  <32.815716, 34.251808, 40.302902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477764, 34.042076, 40.037659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504742, 34.409046, 40.194515>,  <33.520927, 34.629230, 40.288631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504742, 34.409046, 40.194515>,  <33.477764, 34.042076, 40.037659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504742, 34.409046, 40.194515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776625, -0.295014, 0.556615,
		0.626342, 0.267007, -0.732395,
		0.067447, 0.917428, 0.392144,
		33.524975, 34.684273, 40.312157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187519, 34.161667, 40.177563>,  <33.477764, 34.042076, 40.037659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187519, 34.161667, 40.177563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026005, 34.459183, 40.390633>,  <33.929096, 34.637691, 40.518475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026005, 34.459183, 40.390633>,  <34.187519, 34.161667, 40.177563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026005, 34.459183, 40.390633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640902, -0.185515, 0.744868,
		0.652844, 0.642154, -0.401788,
		-0.403782, 0.743789, 0.532670,
		33.904869, 34.682320, 40.550434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773090, 34.570026, 40.472271>,  <34.187519, 34.161667, 40.177563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773090, 34.570026, 40.472271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463707, 34.696327, 40.692112>,  <34.278076, 34.772106, 40.824017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463707, 34.696327, 40.692112>,  <34.773090, 34.570026, 40.472271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463707, 34.696327, 40.692112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561162, -0.062068, 0.825375,
		0.294726, 0.946810, -0.129181,
		-0.773455, 0.315751, 0.549607,
		34.231670, 34.791054, 40.856995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862732, 35.221432, 40.836765>,  <34.773090, 34.570026, 40.472271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862732, 35.221432, 40.836765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595959, 35.010139, 41.046978>,  <34.435894, 34.883366, 41.173103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595959, 35.010139, 41.046978>,  <34.862732, 35.221432, 40.836765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595959, 35.010139, 41.046978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668311, -0.112175, 0.735376,
		-0.329494, 0.841660, 0.427833,
		-0.666929, -0.528228, 0.525529,
		34.395882, 34.851669, 41.204636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764881, 35.570080, 41.520260>,  <34.862732, 35.221432, 40.836765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764881, 35.570080, 41.520260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656647, 35.187248, 41.561790>,  <34.591705, 34.957550, 41.586708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656647, 35.187248, 41.561790>,  <34.764881, 35.570080, 41.520260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656647, 35.187248, 41.561790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543207, -0.062751, 0.837251,
		-0.794800, 0.282952, 0.536871,
		-0.270591, -0.957079, 0.103827,
		34.575470, 34.900124, 41.592937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864552, 35.541042, 42.183647>,  <34.764881, 35.570080, 41.520260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864552, 35.541042, 42.183647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764282, 35.167011, 42.083416>,  <34.704121, 34.942593, 42.023277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764282, 35.167011, 42.083416>,  <34.864552, 35.541042, 42.183647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764282, 35.167011, 42.083416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491076, -0.345897, 0.799500,
		-0.834270, 0.077360, 0.545902,
		-0.250675, -0.935078, -0.250582,
		34.689079, 34.886486, 42.008240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638653, 35.247585, 42.801708>,  <34.864552, 35.541042, 42.183647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638653, 35.247585, 42.801708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733807, 34.926220, 42.583370>,  <34.790901, 34.733402, 42.452370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733807, 34.926220, 42.583370>,  <34.638653, 35.247585, 42.801708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733807, 34.926220, 42.583370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553442, -0.349700, 0.755918,
		-0.798192, -0.481916, 0.361450,
		0.237889, -0.803410, -0.545840,
		34.805172, 34.685196, 42.419617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420872, 34.603718, 43.254257>,  <34.638653, 35.247585, 42.801708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420872, 34.603718, 43.254257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714802, 34.524803, 42.994686>,  <34.891159, 34.477455, 42.838943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714802, 34.524803, 42.994686>,  <34.420872, 34.603718, 43.254257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714802, 34.524803, 42.994686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509920, -0.470181, 0.720355,
		-0.447225, -0.860239, -0.244906,
		0.734828, -0.197278, -0.648929,
		34.935249, 34.465618, 42.800007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511635, 33.808235, 43.427723>,  <34.420872, 34.603718, 43.254257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511635, 33.808235, 43.427723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834965, 33.923660, 43.222458>,  <35.028965, 33.992916, 43.099300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834965, 33.923660, 43.222458>,  <34.511635, 33.808235, 43.427723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834965, 33.923660, 43.222458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575020, -0.573988, 0.583001,
		-0.126316, -0.766335, -0.629900,
		0.808329, 0.288562, -0.513162,
		35.077465, 34.010227, 43.068508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869385, 33.252613, 43.245773>,  <34.511635, 33.808235, 43.427723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869385, 33.252613, 43.245773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125694, 33.558102, 43.277115>,  <35.279480, 33.741394, 43.295921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125694, 33.558102, 43.277115>,  <34.869385, 33.252613, 43.245773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125694, 33.558102, 43.277115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626931, -0.579435, 0.520781,
		0.443134, -0.284578, -0.850087,
		0.640773, 0.763721, 0.078356,
		35.317924, 33.787220, 43.300621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417248, 33.031815, 42.921906>,  <34.869385, 33.252613, 43.245773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417248, 33.031815, 42.921906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537876, 33.293537, 43.199306>,  <35.610252, 33.450569, 43.365746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537876, 33.293537, 43.199306>,  <35.417248, 33.031815, 42.921906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537876, 33.293537, 43.199306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741691, -0.618051, 0.260592,
		0.599125, 0.435777, -0.671675,
		0.301569, 0.654302, 0.693502,
		35.628345, 33.489826, 43.407356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118847, 32.933750, 42.851395>,  <35.417248, 33.031815, 42.921906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118847, 32.933750, 42.851395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044434, 33.136944, 43.187809>,  <35.999786, 33.258858, 43.389660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044434, 33.136944, 43.187809>,  <36.118847, 32.933750, 42.851395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044434, 33.136944, 43.187809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727578, -0.504040, 0.465375,
		0.660319, 0.698497, -0.275826,
		-0.186036, 0.507981, 0.841038,
		35.988625, 33.289337, 43.440121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797932, 32.972397, 43.244152>,  <36.118847, 32.933750, 42.851395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797932, 32.972397, 43.244152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511223, 33.047092, 43.512886>,  <36.339195, 33.091908, 43.674126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511223, 33.047092, 43.512886>,  <36.797932, 32.972397, 43.244152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511223, 33.047092, 43.512886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515857, -0.506263, 0.691078,
		0.469175, 0.841919, 0.266548,
		-0.716775, 0.186736, 0.671836,
		36.296192, 33.103115, 43.714436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155094, 33.133530, 43.837914>,  <36.797932, 32.972397, 43.244152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155094, 33.133530, 43.837914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780216, 33.037186, 43.938835>,  <36.555290, 32.979378, 43.999390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780216, 33.037186, 43.938835>,  <37.155094, 33.133530, 43.837914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780216, 33.037186, 43.938835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347076, -0.571758, 0.743391,
		-0.034794, 0.784270, 0.619443,
		-0.937191, -0.240859, 0.252307,
		36.499058, 32.964928, 44.014526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966801, 33.337910, 44.486702>,  <37.155094, 33.133530, 43.837914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966801, 33.337910, 44.486702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699192, 33.043739, 44.443699>,  <36.538628, 32.867237, 44.417896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699192, 33.043739, 44.443699>,  <36.966801, 33.337910, 44.486702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699192, 33.043739, 44.443699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347063, -0.437027, 0.829792,
		-0.657235, 0.517837, 0.547620,
		-0.669021, -0.735427, -0.107508,
		36.498486, 32.823112, 44.411446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876434, 33.156879, 45.182224>,  <36.966801, 33.337910, 44.486702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876434, 33.156879, 45.182224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722126, 32.871120, 44.948704>,  <36.629543, 32.699665, 44.808590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722126, 32.871120, 44.948704>,  <36.876434, 33.156879, 45.182224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722126, 32.871120, 44.948704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282224, -0.693824, 0.662539,
		-0.878369, 0.090823, 0.469274,
		-0.385768, -0.714395, -0.583801,
		36.606396, 32.656803, 44.773563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522751, 32.728691, 45.651817>,  <36.876434, 33.156879, 45.182224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522751, 32.728691, 45.651817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569435, 32.492317, 45.332523>,  <36.597446, 32.350494, 45.140949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569435, 32.492317, 45.332523>,  <36.522751, 32.728691, 45.651817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569435, 32.492317, 45.332523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363479, -0.722549, 0.588053,
		-0.924262, -0.358774, 0.130461,
		0.116713, -0.590935, -0.798232,
		36.604450, 32.315037, 45.093052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012447, 32.190163, 45.718296>,  <36.522751, 32.728691, 45.651817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012447, 32.190163, 45.718296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260780, 32.053581, 45.436028>,  <36.409779, 31.971632, 45.266666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260780, 32.053581, 45.436028>,  <36.012447, 32.190163, 45.718296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260780, 32.053581, 45.436028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123732, -0.846195, 0.518309,
		-0.774119, -0.409096, -0.483094,
		0.620830, -0.341458, -0.705675,
		36.447029, 31.951143, 45.224327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832493, 31.513618, 45.435741>,  <36.012447, 32.190163, 45.718296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832493, 31.513618, 45.435741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227177, 31.548162, 45.380676>,  <36.463985, 31.568890, 45.347637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227177, 31.548162, 45.380676>,  <35.832493, 31.513618, 45.435741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227177, 31.548162, 45.380676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148202, -0.825740, 0.544232,
		-0.066675, -0.557400, -0.827563,
		0.986707, 0.086360, -0.137665,
		36.523190, 31.574070, 45.339378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016743, 30.894064, 45.464085>,  <35.832493, 31.513618, 45.435741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016743, 30.894064, 45.464085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377960, 31.063017, 45.495350>,  <36.594688, 31.164389, 45.514111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377960, 31.063017, 45.495350>,  <36.016743, 30.894064, 45.464085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377960, 31.063017, 45.495350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325354, -0.791374, 0.517564,
		0.280471, -0.441949, -0.852067,
		0.903040, 0.422385, 0.078168,
		36.648872, 31.189732, 45.518799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446529, 30.334177, 45.378727>,  <36.016743, 30.894064, 45.464085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446529, 30.334177, 45.378727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668407, 30.607761, 45.568256>,  <36.801533, 30.771912, 45.681973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668407, 30.607761, 45.568256>,  <36.446529, 30.334177, 45.378727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668407, 30.607761, 45.568256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510457, -0.729438, 0.455361,
		0.657074, -0.010721, -0.753750,
		0.554696, 0.683963, 0.473822,
		36.834816, 30.812950, 45.710403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199226, 30.173912, 45.303680>,  <36.446529, 30.334177, 45.378727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199226, 30.173912, 45.303680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183529, 30.415272, 45.622269>,  <37.174110, 30.560087, 45.813423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183529, 30.415272, 45.622269>,  <37.199226, 30.173912, 45.303680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183529, 30.415272, 45.622269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520617, -0.668003, 0.531724,
		0.852888, 0.435527, -0.287921,
		-0.039248, 0.603398, 0.796474,
		37.171753, 30.596291, 45.861210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782528, 30.016462, 45.668335>,  <37.199226, 30.173912, 45.303680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782528, 30.016462, 45.668335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577694, 30.220722, 45.944599>,  <37.454792, 30.343277, 46.110355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577694, 30.220722, 45.944599>,  <37.782528, 30.016462, 45.668335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577694, 30.220722, 45.944599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369234, -0.595128, 0.713785,
		0.775523, 0.620532, 0.116207,
		-0.512085, 0.510649, 0.690657,
		37.424068, 30.373917, 46.151794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206886, 30.046429, 46.238777>,  <37.782528, 30.016462, 45.668335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206886, 30.046429, 46.238777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847794, 30.097599, 46.407402>,  <37.632339, 30.128302, 46.508575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847794, 30.097599, 46.407402>,  <38.206886, 30.046429, 46.238777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847794, 30.097599, 46.407402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253409, -0.632803, 0.731672,
		0.360365, 0.763672, 0.535670,
		-0.897731, 0.127926, 0.421561,
		37.578476, 30.135977, 46.533871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384964, 30.167749, 46.865761>,  <38.206886, 30.046429, 46.238777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384964, 30.167749, 46.865761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004776, 30.053337, 46.914417>,  <37.776665, 29.984690, 46.943611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004776, 30.053337, 46.914417>,  <38.384964, 30.167749, 46.865761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004776, 30.053337, 46.914417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277144, -0.602723, 0.748276,
		-0.140713, 0.744924, 0.652141,
		-0.950469, -0.286029, 0.121640,
		37.719635, 29.967529, 46.950909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399433, 29.949978, 47.506702>,  <38.384964, 30.167749, 46.865761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399433, 29.949978, 47.506702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050777, 29.807045, 47.372505>,  <37.841583, 29.721285, 47.291988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050777, 29.807045, 47.372505>,  <38.399433, 29.949978, 47.506702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050777, 29.807045, 47.372505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041610, -0.735950, 0.675755,
		-0.488372, 0.575058, 0.656355,
		-0.871643, -0.357331, -0.335489,
		37.789284, 29.699846, 47.271858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111958, 29.872236, 48.077847>,  <38.399433, 29.949978, 47.506702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111958, 29.872236, 48.077847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929634, 29.628218, 47.818592>,  <37.820240, 29.481806, 47.663040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929634, 29.628218, 47.818592>,  <38.111958, 29.872236, 48.077847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929634, 29.628218, 47.818592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177218, -0.775800, 0.605580,
		-0.872258, 0.161167, 0.461727,
		-0.455808, -0.610048, -0.648136,
		37.792892, 29.445204, 47.624149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544769, 29.532911, 48.358829>,  <38.111958, 29.872236, 48.077847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544769, 29.532911, 48.358829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678219, 29.308058, 48.056122>,  <37.758289, 29.173145, 47.874496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678219, 29.308058, 48.056122>,  <37.544769, 29.532911, 48.358829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678219, 29.308058, 48.056122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367138, -0.661905, 0.653522,
		-0.868276, -0.495871, -0.014449,
		0.333627, -0.562133, -0.756769,
		37.778305, 29.139418, 47.829090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264107, 28.761053, 48.474911>,  <37.544769, 29.532911, 48.358829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264107, 28.761053, 48.474911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576065, 28.747274, 48.224926>,  <37.763241, 28.739008, 48.074936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576065, 28.747274, 48.224926>,  <37.264107, 28.761053, 48.474911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576065, 28.747274, 48.224926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462885, -0.640346, 0.612939,
		-0.421303, -0.767314, -0.483459,
		0.779898, -0.034447, -0.624958,
		37.810036, 28.736940, 48.037437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417908, 28.096176, 48.550091>,  <37.264107, 28.761053, 48.474911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417908, 28.096176, 48.550091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751816, 28.259005, 48.401794>,  <37.952160, 28.356701, 48.312817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751816, 28.259005, 48.401794>,  <37.417908, 28.096176, 48.550091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751816, 28.259005, 48.401794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546806, -0.534077, 0.644799,
		0.064476, -0.740983, -0.668422,
		0.834773, 0.407071, -0.370739,
		38.002247, 28.381126, 48.290573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861858, 27.611595, 48.334099>,  <37.417908, 28.096176, 48.550091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861858, 27.611595, 48.334099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114395, 27.915846, 48.394573>,  <38.265915, 28.098396, 48.430859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114395, 27.915846, 48.394573>,  <37.861858, 27.611595, 48.334099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114395, 27.915846, 48.394573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642777, -0.622314, 0.446725,
		0.433878, -0.184854, -0.881805,
		0.631338, 0.760627, 0.151189,
		38.303795, 28.144033, 48.439930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457176, 27.285809, 48.269772>,  <37.861858, 27.611595, 48.334099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457176, 27.285809, 48.269772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561401, 27.640011, 48.423645>,  <38.623936, 27.852533, 48.515968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561401, 27.640011, 48.423645>,  <38.457176, 27.285809, 48.269772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561401, 27.640011, 48.423645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702386, -0.447240, 0.553743,
		0.662389, 0.125909, -0.738503,
		0.260567, 0.885507, 0.384684,
		38.639572, 27.905663, 48.539051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129177, 27.193895, 48.221050>,  <38.457176, 27.285809, 48.269772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129177, 27.193895, 48.221050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064384, 27.479635, 48.493362>,  <39.025509, 27.651079, 48.656750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064384, 27.479635, 48.493362>,  <39.129177, 27.193895, 48.221050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064384, 27.479635, 48.493362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749720, -0.359489, 0.555597,
		0.641626, 0.600391, -0.477334,
		-0.161979, 0.714352, 0.680782,
		39.015789, 27.693941, 48.697598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734467, 27.456751, 48.252754>,  <39.129177, 27.193895, 48.221050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734467, 27.456751, 48.252754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521313, 27.506266, 48.587589>,  <39.393421, 27.535975, 48.788490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521313, 27.506266, 48.587589>,  <39.734467, 27.456751, 48.252754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521313, 27.506266, 48.587589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741744, -0.407769, 0.532485,
		0.407252, 0.904656, 0.125475,
		-0.532881, 0.123785, 0.837087,
		39.361450, 27.543402, 48.838715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195393, 27.572401, 48.726952>,  <39.734467, 27.456751, 48.252754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195393, 27.572401, 48.726952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894669, 27.491179, 48.977886>,  <39.714233, 27.442446, 49.128448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894669, 27.491179, 48.977886>,  <40.195393, 27.572401, 48.726952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894669, 27.491179, 48.977886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614791, -0.559792, 0.555576,
		0.238366, 0.803368, 0.545693,
		-0.751807, -0.203057, 0.627339,
		39.669125, 27.430262, 49.166088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379055, 27.708530, 49.461021>,  <40.195393, 27.572401, 48.726952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379055, 27.708530, 49.461021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106731, 27.415550, 49.462925>,  <39.943336, 27.239763, 49.464069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106731, 27.415550, 49.462925>,  <40.379055, 27.708530, 49.461021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106731, 27.415550, 49.462925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600663, -0.554567, 0.575898,
		-0.419175, 0.394935, 0.817508,
		-0.680805, -0.732449, 0.004763,
		39.902489, 27.195816, 49.464355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548851, 27.388538, 50.068317>,  <40.379055, 27.708530, 49.461021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548851, 27.388538, 50.068317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307274, 27.121716, 49.893829>,  <40.162327, 26.961622, 49.789135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307274, 27.121716, 49.893829>,  <40.548851, 27.388538, 50.068317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307274, 27.121716, 49.893829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353036, -0.714577, 0.603941,
		-0.714577, 0.210743, 0.667058,
		-0.603941, -0.667058, -0.436221,
		40.126091, 26.921598, 49.762962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307114, 26.969368, 50.578846>,  <40.548851, 27.388538, 50.068317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307114, 26.969368, 50.578846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227951, 26.723665, 50.273293>,  <40.180454, 26.576244, 50.089958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227951, 26.723665, 50.273293>,  <40.307114, 26.969368, 50.578846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227951, 26.723665, 50.273293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180096, -0.788820, 0.587646,
		-0.963533, -0.021271, 0.266742,
		-0.197911, -0.614256, -0.763885,
		40.168579, 26.539389, 50.044128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851559, 26.462299, 50.839138>,  <40.307114, 26.969368, 50.578846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851559, 26.462299, 50.839138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049194, 26.266359, 50.551826>,  <40.167774, 26.148796, 50.379440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049194, 26.266359, 50.551826>,  <39.851559, 26.462299, 50.839138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049194, 26.266359, 50.551826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146047, -0.767663, 0.623990,
		-0.857059, -0.413207, -0.307749,
		0.494085, -0.489851, -0.718280,
		40.197422, 26.119404, 50.336342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554317, 25.760948, 50.586334>,  <39.851559, 26.462299, 50.839138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554317, 25.760948, 50.586334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953831, 25.772444, 50.570343>,  <40.193539, 25.779341, 50.560749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953831, 25.772444, 50.570343>,  <39.554317, 25.760948, 50.586334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953831, 25.772444, 50.570343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043174, -0.901496, 0.430628,
		-0.023660, -0.431832, -0.901644,
		0.998787, 0.028739, -0.039974,
		40.253468, 25.781065, 50.558350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813972, 25.039822, 50.593327>,  <39.554317, 25.760948, 50.586334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813972, 25.039822, 50.593327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117954, 25.275461, 50.703190>,  <40.300343, 25.416845, 50.769108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117954, 25.275461, 50.703190>,  <39.813972, 25.039822, 50.593327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117954, 25.275461, 50.703190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348052, -0.725698, 0.593483,
		0.548937, -0.355424, -0.756533,
		0.759952, 0.589098, 0.274657,
		40.345940, 25.452190, 50.785587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446987, 24.627106, 50.443787>,  <39.813972, 25.039822, 50.593327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446987, 24.627106, 50.443787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510029, 24.908155, 50.721340>,  <40.547852, 25.076786, 50.887875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510029, 24.908155, 50.721340>,  <40.446987, 24.627106, 50.443787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510029, 24.908155, 50.721340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471799, -0.670858, 0.572150,
		0.867507, 0.237202, -0.437227,
		0.157602, 0.702627, 0.693886,
		40.557308, 25.118944, 50.929504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164474, 24.666983, 50.702328>,  <40.446987, 24.627106, 50.443787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164474, 24.666983, 50.702328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893951, 24.773741, 50.976955>,  <40.731636, 24.837795, 51.141731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893951, 24.773741, 50.976955>,  <41.164474, 24.666983, 50.702328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893951, 24.773741, 50.976955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446901, -0.592261, 0.670453,
		0.585567, 0.760260, 0.281275,
		-0.676307, 0.266893, 0.686569,
		40.691059, 24.853809, 51.182926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031307, 25.357248, 50.364368>,  <41.164474, 24.666983, 50.702328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031307, 25.357248, 50.364368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429089, 25.399214, 50.367348>,  <41.667759, 25.424393, 50.369137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429089, 25.399214, 50.367348>,  <41.031307, 25.357248, 50.364368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429089, 25.399214, 50.367348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058173, -0.489637, -0.869984,
		-0.087624, 0.865592, -0.493024,
		0.994454, 0.104912, 0.007450,
		41.727425, 25.430687, 50.369583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389397, 25.748783, 49.775883>,  <41.031307, 25.357248, 50.364368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389397, 25.748783, 49.775883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630966, 25.463894, 49.919003>,  <41.775906, 25.292961, 50.004875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630966, 25.463894, 49.919003>,  <41.389397, 25.748783, 49.775883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630966, 25.463894, 49.919003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009886, -0.455569, -0.890145,
		0.796984, 0.534039, -0.282169,
		0.603920, -0.712221, 0.357802,
		41.812141, 25.250227, 50.026344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961891, 25.709917, 49.367691>,  <41.389397, 25.748783, 49.775883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961891, 25.709917, 49.367691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874416, 25.363972, 49.548443>,  <41.821934, 25.156404, 49.656895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874416, 25.363972, 49.548443>,  <41.961891, 25.709917, 49.367691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874416, 25.363972, 49.548443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135634, -0.431649, -0.891786,
		0.966323, -0.256310, -0.022910,
		-0.218684, -0.864861, 0.451877,
		41.808811, 25.104513, 49.684006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417213, 25.202822, 49.085293>,  <41.961891, 25.709917, 49.367691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417213, 25.202822, 49.085293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082417, 25.016870, 49.200764>,  <41.881538, 24.905300, 49.270046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082417, 25.016870, 49.200764>,  <42.417213, 25.202822, 49.085293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082417, 25.016870, 49.200764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194616, -0.240167, -0.951023,
		0.511440, -0.852179, 0.110545,
		-0.836991, -0.464877, 0.288679,
		41.831318, 24.877407, 49.287369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343082, 24.761312, 48.610958>,  <42.417213, 25.202822, 49.085293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343082, 24.761312, 48.610958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979607, 24.766829, 48.777855>,  <41.761520, 24.770138, 48.877991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979607, 24.766829, 48.777855>,  <42.343082, 24.761312, 48.610958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979607, 24.766829, 48.777855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417280, -0.060021, -0.906794,
		0.012541, -0.998102, 0.060294,
		-0.908692, 0.013787, 0.417240,
		41.707001, 24.770966, 48.903027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003635, 24.186445, 48.399864>,  <42.343082, 24.761312, 48.610958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003635, 24.186445, 48.399864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743279, 24.475248, 48.493710>,  <41.587063, 24.648531, 48.550018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743279, 24.475248, 48.493710>,  <42.003635, 24.186445, 48.399864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743279, 24.475248, 48.493710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447675, -0.115441, -0.886714,
		-0.613129, -0.682187, 0.398364,
		-0.650892, 0.722008, 0.234618,
		41.548012, 24.691851, 48.564095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296879, 23.897625, 48.287525>,  <42.003635, 24.186445, 48.399864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296879, 23.897625, 48.287525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247269, 24.294449, 48.279175>,  <41.217503, 24.532543, 48.274162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247269, 24.294449, 48.279175>,  <41.296879, 23.897625, 48.287525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247269, 24.294449, 48.279175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579653, -0.089511, -0.809932,
		-0.805370, -0.088348, 0.586152,
		-0.124024, 0.992060, -0.020878,
		41.210060, 24.592066, 48.272911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686329, 23.976717, 48.032131>,  <41.296879, 23.897625, 48.287525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686329, 23.976717, 48.032131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820934, 24.349264, 47.976543>,  <40.901699, 24.572792, 47.943192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820934, 24.349264, 47.976543>,  <40.686329, 23.976717, 48.032131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820934, 24.349264, 47.976543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639154, 0.117525, -0.760046,
		-0.691550, 0.344589, 0.634836,
		0.336513, 0.931368, -0.138971,
		40.921886, 24.628674, 47.934853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102077, 24.310350, 47.827007>,  <40.686329, 23.976717, 48.032131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102077, 24.310350, 47.827007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378376, 24.585676, 47.738377>,  <40.544155, 24.750872, 47.685200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378376, 24.585676, 47.738377>,  <40.102077, 24.310350, 47.827007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378376, 24.585676, 47.738377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575935, 0.338416, -0.744160,
		-0.437233, 0.641635, 0.630184,
		0.690743, 0.688316, -0.221574,
		40.585598, 24.792171, 47.671906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771702, 24.827065, 47.638054>,  <40.102077, 24.310350, 47.827007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771702, 24.827065, 47.638054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123932, 24.927479, 47.477276>,  <40.335270, 24.987728, 47.380810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123932, 24.927479, 47.477276>,  <39.771702, 24.827065, 47.638054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123932, 24.927479, 47.477276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473212, 0.420143, -0.774306,
		-0.025503, 0.872044, 0.488762,
		0.880579, 0.251035, -0.401947,
		40.388107, 25.002789, 47.356693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648293, 25.364313, 47.280663>,  <39.771702, 24.827065, 47.638054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648293, 25.364313, 47.280663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017361, 25.310307, 47.136189>,  <40.238800, 25.277903, 47.049503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017361, 25.310307, 47.136189>,  <39.648293, 25.364313, 47.280663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017361, 25.310307, 47.136189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218094, 0.589741, -0.777586,
		0.317993, 0.796226, 0.514689,
		0.922668, -0.135017, -0.361186,
		40.294163, 25.269802, 47.027832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876652, 26.060877, 47.152855>,  <39.648293, 25.364313, 47.280663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876652, 26.060877, 47.152855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052303, 25.764753, 46.949245>,  <40.157696, 25.587078, 46.827080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052303, 25.764753, 46.949245>,  <39.876652, 26.060877, 47.152855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052303, 25.764753, 46.949245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232515, 0.453622, -0.860328,
		0.867814, 0.496152, 0.027066,
		0.439131, -0.740311, -0.509022,
		40.184044, 25.542660, 46.796539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425915, 26.397663, 46.670570>,  <39.876652, 26.060877, 47.152855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425915, 26.397663, 46.670570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302608, 26.042418, 46.534199>,  <40.228626, 25.829271, 46.452377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302608, 26.042418, 46.534199>,  <40.425915, 26.397663, 46.670570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302608, 26.042418, 46.534199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322138, 0.434658, -0.841011,
		0.895098, -0.149428, -0.420084,
		-0.308264, -0.888112, -0.340925,
		40.210129, 25.775984, 46.431923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762791, 26.343533, 46.117523>,  <40.425915, 26.397663, 46.670570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762791, 26.343533, 46.117523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438805, 26.114874, 46.065102>,  <40.244411, 25.977678, 46.033649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438805, 26.114874, 46.065102>,  <40.762791, 26.343533, 46.117523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438805, 26.114874, 46.065102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192167, 0.469811, -0.861597,
		0.554102, -0.672678, -0.490382,
		-0.809965, -0.571648, -0.131057,
		40.195816, 25.943380, 46.025784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713699, 26.220871, 45.406754>,  <40.762791, 26.343533, 46.117523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713699, 26.220871, 45.406754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348927, 26.106178, 45.524174>,  <40.130062, 26.037363, 45.594624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348927, 26.106178, 45.524174>,  <40.713699, 26.220871, 45.406754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348927, 26.106178, 45.524174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357106, 0.202142, -0.911929,
		0.202142, -0.936441, -0.286733,
		0.911929, 0.286733, -0.293548,
		40.075348, 26.020159, 45.612240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446404, 25.650356, 44.807812>,  <40.713699, 26.220871, 45.406754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446404, 25.650356, 44.807812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156311, 25.834988, 45.012157>,  <39.982254, 25.945766, 45.134766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156311, 25.834988, 45.012157>,  <40.446404, 25.650356, 44.807812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156311, 25.834988, 45.012157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440212, 0.259643, -0.859534,
		-0.529384, -0.848251, 0.014891,
		-0.725235, 0.461579, 0.510861,
		39.938740, 25.973461, 45.165417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875725, 25.698849, 44.403271>,  <40.446404, 25.650356, 44.807812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875725, 25.698849, 44.403271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750050, 25.939793, 44.696789>,  <39.674644, 26.084358, 44.872898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750050, 25.939793, 44.696789>,  <39.875725, 25.698849, 44.403271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750050, 25.939793, 44.696789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512391, 0.543097, -0.665207,
		-0.799214, -0.584987, 0.138012,
		-0.314184, 0.602359, 0.733793,
		39.655796, 26.120501, 44.916927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210377, 25.729328, 44.296513>,  <39.875725, 25.698849, 44.403271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210377, 25.729328, 44.296513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263172, 26.054552, 44.523323>,  <39.294849, 26.249687, 44.659409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263172, 26.054552, 44.523323>,  <39.210377, 25.729328, 44.296513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263172, 26.054552, 44.523323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745277, 0.458551, -0.484038,
		-0.653560, -0.358700, 0.666479,
		0.131990, 0.813059, 0.567021,
		39.302769, 26.298470, 44.693428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487617, 25.883497, 44.657883>,  <39.210377, 25.729328, 44.296513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487617, 25.883497, 44.657883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735046, 26.197084, 44.636887>,  <38.883503, 26.385237, 44.624290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735046, 26.197084, 44.636887>,  <38.487617, 25.883497, 44.657883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735046, 26.197084, 44.636887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707311, 0.526511, -0.471696,
		-0.342161, 0.328904, 0.880198,
		0.618577, 0.783969, -0.052486,
		38.920620, 26.432276, 44.621140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039402, 26.430307, 44.763996>,  <38.487617, 25.883497, 44.657883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039402, 26.430307, 44.763996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368187, 26.606482, 44.619556>,  <38.565460, 26.712187, 44.532894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368187, 26.606482, 44.619556>,  <38.039402, 26.430307, 44.763996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368187, 26.606482, 44.619556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569120, 0.659483, -0.491106,
		0.021835, 0.609179, 0.792732,
		0.821965, 0.440436, -0.361096,
		38.614777, 26.738613, 44.511227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961407, 27.097885, 44.835274>,  <38.039402, 26.430307, 44.763996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961407, 27.097885, 44.835274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235706, 27.083302, 44.544502>,  <38.400288, 27.074553, 44.370041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235706, 27.083302, 44.544502>,  <37.961407, 27.097885, 44.835274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235706, 27.083302, 44.544502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486774, 0.719542, -0.495288,
		0.541110, 0.693492, 0.475678,
		0.685749, -0.036457, -0.726925,
		38.441429, 27.072365, 44.326424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099331, 27.793032, 44.593281>,  <37.961407, 27.097885, 44.835274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099331, 27.793032, 44.593281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195934, 27.548801, 44.291588>,  <38.253899, 27.402264, 44.110573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195934, 27.548801, 44.291588>,  <38.099331, 27.793032, 44.593281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195934, 27.548801, 44.291588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479386, 0.600709, -0.639795,
		0.843719, 0.516087, -0.147623,
		0.241511, -0.610575, -0.754235,
		38.268387, 27.365629, 44.065319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250412, 28.279173, 44.076107>,  <38.099331, 27.793032, 44.593281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250412, 28.279173, 44.076107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216602, 27.933796, 43.877178>,  <38.196316, 27.726570, 43.757820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216602, 27.933796, 43.877178>,  <38.250412, 28.279173, 44.076107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216602, 27.933796, 43.877178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568472, 0.451697, -0.687611,
		0.818349, 0.224591, -0.529022,
		-0.084527, -0.863440, -0.497320,
		38.191246, 27.674765, 43.727982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537083, 28.443893, 43.440624>,  <38.250412, 28.279173, 44.076107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537083, 28.443893, 43.440624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286198, 28.134935, 43.400612>,  <38.135666, 27.949560, 43.376606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286198, 28.134935, 43.400612>,  <38.537083, 28.443893, 43.440624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286198, 28.134935, 43.400612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213432, 0.293970, -0.931681,
		0.749030, -0.563017, -0.349237,
		-0.627217, -0.772395, -0.100027,
		38.098034, 27.903217, 43.370605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625282, 28.245008, 42.770081>,  <38.537083, 28.443893, 43.440624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625282, 28.245008, 42.770081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270737, 28.094299, 42.877705>,  <38.058010, 28.003874, 42.942280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270737, 28.094299, 42.877705>,  <38.625282, 28.245008, 42.770081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270737, 28.094299, 42.877705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410258, 0.369849, -0.833606,
		0.214567, -0.849267, -0.482396,
		-0.886369, -0.376771, 0.269062,
		38.004826, 27.981268, 42.958424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313541, 28.113466, 42.070332>,  <38.625282, 28.245008, 42.770081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313541, 28.113466, 42.070332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023129, 28.116251, 42.345383>,  <37.848881, 28.117922, 42.510414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023129, 28.116251, 42.345383>,  <38.313541, 28.113466, 42.070332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023129, 28.116251, 42.345383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622366, 0.418639, -0.661364,
		-0.292471, -0.908126, -0.299612,
		-0.726031, 0.006961, 0.687626,
		37.805321, 28.118340, 42.551670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758640, 27.671747, 41.787849>,  <38.313541, 28.113466, 42.070332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758640, 27.671747, 41.787849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600788, 27.926481, 42.052788>,  <37.506077, 28.079323, 42.211750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600788, 27.926481, 42.052788>,  <37.758640, 27.671747, 41.787849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600788, 27.926481, 42.052788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705791, 0.251457, -0.662290,
		-0.588323, -0.728840, 0.350241,
		-0.394633, 0.636837, 0.662347,
		37.482399, 28.117533, 42.251492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046341, 27.627199, 41.681854>,  <37.758640, 27.671747, 41.787849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046341, 27.627199, 41.681854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085899, 27.967144, 41.888912>,  <37.109634, 28.171110, 42.013145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085899, 27.967144, 41.888912>,  <37.046341, 27.627199, 41.681854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085899, 27.967144, 41.888912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764662, 0.397792, -0.507005,
		-0.636799, -0.345685, 0.689195,
		0.098892, 0.849861, 0.517646,
		37.115566, 28.222103, 42.044205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315575, 27.840319, 41.964531>,  <37.046341, 27.627199, 41.681854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315575, 27.840319, 41.964531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551689, 28.163107, 41.956959>,  <36.693359, 28.356779, 41.952415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551689, 28.163107, 41.956959>,  <36.315575, 27.840319, 41.964531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551689, 28.163107, 41.956959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796063, 0.578109, -0.179092,
		-0.133580, 0.120784, 0.983650,
		0.590288, 0.806971, -0.018928,
		36.728775, 28.405199, 41.951279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974079, 28.353678, 42.347477>,  <36.315575, 27.840319, 41.964531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974079, 28.353678, 42.347477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243496, 28.578026, 42.154907>,  <36.405144, 28.712635, 42.039364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243496, 28.578026, 42.154907>,  <35.974079, 28.353678, 42.347477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243496, 28.578026, 42.154907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737167, 0.557407, -0.381946,
		0.054128, 0.612146, 0.788890,
		0.673540, 0.560869, -0.481425,
		36.445557, 28.746286, 42.010479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770058, 29.066189, 42.486347>,  <35.974079, 28.353678, 42.347477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770058, 29.066189, 42.486347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984234, 29.056551, 42.148655>,  <36.112740, 29.050768, 41.946041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984234, 29.056551, 42.148655>,  <35.770058, 29.066189, 42.486347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984234, 29.056551, 42.148655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738092, 0.472518, -0.481608,
		0.410518, 0.880991, 0.235222,
		0.535439, -0.024093, -0.844230,
		36.144867, 29.049322, 41.895386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785698, 29.734558, 42.139000>,  <35.770058, 29.066189, 42.486347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785698, 29.734558, 42.139000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856270, 29.480864, 41.837906>,  <35.898613, 29.328646, 41.657249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856270, 29.480864, 41.837906>,  <35.785698, 29.734558, 42.139000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856270, 29.480864, 41.837906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730497, 0.428190, -0.532003,
		0.659732, 0.643735, -0.387762,
		0.176433, -0.634238, -0.752737,
		35.909199, 29.290592, 41.612083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625793, 30.156281, 41.639477>,  <35.785698, 29.734558, 42.139000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625793, 30.156281, 41.639477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653198, 29.818441, 41.427074>,  <35.669640, 29.615738, 41.299633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653198, 29.818441, 41.427074>,  <35.625793, 30.156281, 41.639477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653198, 29.818441, 41.427074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524257, 0.422362, -0.739436,
		0.848800, 0.329042, -0.413848,
		0.068512, -0.844596, -0.531003,
		35.673752, 29.565063, 41.267773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122047, 30.361050, 40.955032>,  <35.625793, 30.156281, 41.639477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122047, 30.361050, 40.955032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880157, 30.045465, 40.911480>,  <35.735023, 29.856115, 40.885349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880157, 30.045465, 40.911480>,  <36.122047, 30.361050, 40.955032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880157, 30.045465, 40.911480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398149, 0.417873, -0.816615,
		0.689777, -0.450471, -0.566819,
		-0.604720, -0.788960, -0.108885,
		35.698742, 29.808777, 40.878815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279793, 29.951017, 40.290249>,  <36.122047, 30.361050, 40.955032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279793, 29.951017, 40.290249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900665, 29.888468, 40.401375>,  <35.673187, 29.850939, 40.468052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900665, 29.888468, 40.401375>,  <36.279793, 29.951017, 40.290249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900665, 29.888468, 40.401375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318349, 0.510552, -0.798743,
		-0.016936, -0.845508, -0.533694,
		-0.947822, -0.156374, 0.277814,
		35.616318, 29.841555, 40.484718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913746, 29.727985, 39.633152>,  <36.279793, 29.951017, 40.290249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913746, 29.727985, 39.633152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620949, 29.821453, 39.889149>,  <35.445271, 29.877533, 40.042747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620949, 29.821453, 39.889149>,  <35.913746, 29.727985, 39.633152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620949, 29.821453, 39.889149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461087, 0.521647, -0.717832,
		-0.501583, -0.820538, -0.274099,
		-0.731992, 0.233669, 0.639989,
		35.401352, 29.891554, 40.081146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305267, 29.648958, 39.307137>,  <35.913746, 29.727985, 39.633152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305267, 29.648958, 39.307137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221764, 29.902422, 39.605103>,  <35.171661, 30.054501, 39.783882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221764, 29.902422, 39.605103>,  <35.305267, 29.648958, 39.307137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221764, 29.902422, 39.605103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521244, 0.572395, -0.632984,
		-0.827481, -0.520421, 0.210800,
		-0.208757, 0.633660, 0.744913,
		35.159138, 30.092520, 39.828575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645489, 29.867565, 39.108955>,  <35.305267, 29.648958, 39.307137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645489, 29.867565, 39.108955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811325, 30.140533, 39.349758>,  <34.910828, 30.304316, 39.494240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811325, 30.140533, 39.349758>,  <34.645489, 29.867565, 39.108955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811325, 30.140533, 39.349758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340657, 0.729827, -0.592710,
		-0.843842, 0.040652, 0.535049,
		0.414588, 0.682422, 0.602011,
		34.935703, 30.345261, 39.530361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149807, 30.353716, 39.225349>,  <34.645489, 29.867565, 39.108955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149807, 30.353716, 39.225349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469852, 30.555769, 39.354752>,  <34.661880, 30.677000, 39.432392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469852, 30.555769, 39.354752>,  <34.149807, 30.353716, 39.225349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469852, 30.555769, 39.354752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355662, 0.833790, -0.422255,
		-0.483028, 0.222795, 0.846786,
		0.800117, 0.505131, 0.323504,
		34.709888, 30.707308, 39.451801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862617, 30.937284, 39.476185>,  <34.149807, 30.353716, 39.225349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862617, 30.937284, 39.476185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246399, 31.033056, 39.416687>,  <34.476665, 31.090519, 39.380989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246399, 31.033056, 39.416687>,  <33.862617, 30.937284, 39.476185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246399, 31.033056, 39.416687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275910, 0.905709, -0.321814,
		0.057671, 0.349806, 0.935045,
		0.959452, 0.239429, -0.148748,
		34.534233, 31.104885, 39.372063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986938, 31.648090, 39.828545>,  <33.862617, 30.937284, 39.476185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986938, 31.648090, 39.828545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280972, 31.613682, 39.559544>,  <34.457390, 31.593037, 39.398144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280972, 31.613682, 39.559544>,  <33.986938, 31.648090, 39.828545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280972, 31.613682, 39.559544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150387, 0.946519, -0.285458,
		0.661089, 0.310970, 0.682832,
		0.735082, -0.086024, -0.672499,
		34.501495, 31.587875, 39.357796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418186, 32.234612, 39.975471>,  <33.986938, 31.648090, 39.828545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418186, 32.234612, 39.975471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517818, 32.143349, 39.598984>,  <34.577599, 32.088593, 39.373089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517818, 32.143349, 39.598984>,  <34.418186, 32.234612, 39.975471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517818, 32.143349, 39.598984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145919, 0.951918, -0.269367,
		0.957426, 0.204438, 0.203816,
		0.249085, -0.228158, -0.941223,
		34.592545, 32.074902, 39.316616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802696, 32.842289, 39.748848>,  <34.418186, 32.234612, 39.975471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802696, 32.842289, 39.748848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704441, 32.642395, 39.416603>,  <34.645489, 32.522457, 39.217255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704441, 32.642395, 39.416603>,  <34.802696, 32.842289, 39.748848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704441, 32.642395, 39.416603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244114, 0.861145, -0.445912,
		0.938120, 0.093231, -0.333524,
		-0.245639, -0.499737, -0.830616,
		34.630749, 32.492474, 39.167419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133396, 33.226803, 39.207897>,  <34.802696, 32.842289, 39.748848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133396, 33.226803, 39.207897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825207, 33.034058, 39.040955>,  <34.640293, 32.918411, 38.940788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825207, 33.034058, 39.040955>,  <35.133396, 33.226803, 39.207897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825207, 33.034058, 39.040955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252285, 0.831729, -0.494550,
		0.585429, -0.275744, -0.762389,
		-0.770470, -0.481863, -0.417352,
		34.594067, 32.889500, 38.915749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116676, 33.502117, 38.570415>,  <35.133396, 33.226803, 39.207897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116676, 33.502117, 38.570415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748104, 33.346832, 38.576778>,  <34.526962, 33.253662, 38.580597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748104, 33.346832, 38.576778>,  <35.116676, 33.502117, 38.570415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748104, 33.346832, 38.576778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329424, 0.758867, -0.561783,
		0.206019, -0.522886, -0.827132,
		-0.921432, -0.388214, 0.015910,
		34.471676, 33.230370, 38.581551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218521, 33.507385, 37.757919>,  <35.116676, 33.502117, 38.570415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218521, 33.507385, 37.757919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543083, 33.722301, 37.665882>,  <35.737820, 33.851250, 37.610661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543083, 33.722301, 37.665882>,  <35.218521, 33.507385, 37.757919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543083, 33.722301, 37.665882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541395, -0.542541, 0.642293,
		0.220263, -0.645730, -0.731106,
		0.811403, 0.537291, -0.230093,
		35.786503, 33.883488, 37.596855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850559, 33.058357, 37.696980>,  <35.218521, 33.507385, 37.757919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850559, 33.058357, 37.696980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978325, 33.425110, 37.792728>,  <36.054985, 33.645161, 37.850178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978325, 33.425110, 37.792728>,  <35.850559, 33.058357, 37.696980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978325, 33.425110, 37.792728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535974, -0.383118, 0.752298,
		0.781478, -0.111998, -0.613799,
		0.319413, 0.916885, 0.239370,
		36.074150, 33.700176, 37.864540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497665, 33.003613, 37.669689>,  <35.850559, 33.058357, 37.696980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497665, 33.003613, 37.669689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434856, 33.325356, 37.898899>,  <36.397171, 33.518402, 38.036427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434856, 33.325356, 37.898899>,  <36.497665, 33.003613, 37.669689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434856, 33.325356, 37.898899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667451, -0.341225, 0.661871,
		0.727910, 0.486393, -0.483289,
		-0.157019, 0.804355, 0.573025,
		36.387749, 33.566662, 38.070808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162464, 33.329914, 37.823021>,  <36.497665, 33.003613, 37.669689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162464, 33.329914, 37.823021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922295, 33.453846, 38.117908>,  <36.778191, 33.528206, 38.294842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922295, 33.453846, 38.117908>,  <37.162464, 33.329914, 37.823021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922295, 33.453846, 38.117908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587525, -0.454494, 0.669515,
		0.542496, 0.835131, 0.090860,
		-0.600428, 0.309827, 0.737221,
		36.742165, 33.546795, 38.339073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623356, 33.591732, 38.294647>,  <37.162464, 33.329914, 37.823021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623356, 33.591732, 38.294647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286106, 33.511543, 38.494228>,  <37.083755, 33.463428, 38.613979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286106, 33.511543, 38.494228>,  <37.623356, 33.591732, 38.294647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286106, 33.511543, 38.494228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525966, -0.500424, 0.687703,
		0.111824, 0.842251, 0.527360,
		-0.843122, -0.200472, 0.498955,
		37.033169, 33.451401, 38.643913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817234, 33.607304, 39.022865>,  <37.623356, 33.591732, 38.294647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817234, 33.607304, 39.022865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460106, 33.429344, 39.050941>,  <37.245827, 33.322567, 39.067787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460106, 33.429344, 39.050941>,  <37.817234, 33.607304, 39.022865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460106, 33.429344, 39.050941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354254, -0.597401, 0.719456,
		-0.278152, 0.667215, 0.690982,
		-0.892825, -0.444901, 0.070195,
		37.192257, 33.295876, 39.071999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655502, 33.563301, 39.775394>,  <37.817234, 33.607304, 39.022865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655502, 33.563301, 39.775394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454098, 33.283592, 39.572418>,  <37.333256, 33.115768, 39.450634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454098, 33.283592, 39.572418>,  <37.655502, 33.563301, 39.775394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454098, 33.283592, 39.572418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350772, -0.702191, 0.619586,
		-0.789578, 0.133974, 0.598847,
		-0.503513, -0.699270, -0.507440,
		37.303043, 33.073811, 39.420185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533333, 33.106960, 40.287338>,  <37.655502, 33.563301, 39.775394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533333, 33.106960, 40.287338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443684, 32.862976, 39.983307>,  <37.389893, 32.716583, 39.800888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443684, 32.862976, 39.983307>,  <37.533333, 33.106960, 40.287338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443684, 32.862976, 39.983307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296087, -0.785668, 0.543193,
		-0.928494, -0.103304, 0.356690,
		-0.224126, -0.609963, -0.760074,
		37.376446, 32.679989, 39.755283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011578, 32.674156, 40.578114>,  <37.533333, 33.106960, 40.287338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011578, 32.674156, 40.578114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223419, 32.507095, 40.282791>,  <37.350525, 32.406860, 40.105598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223419, 32.507095, 40.282791>,  <37.011578, 32.674156, 40.578114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223419, 32.507095, 40.282791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285047, -0.732143, 0.618639,
		-0.798918, -0.538083, -0.268693,
		0.529601, -0.417652, -0.738302,
		37.382301, 32.381802, 40.061302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953445, 31.998980, 40.701771>,  <37.011578, 32.674156, 40.578114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953445, 31.998980, 40.701771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245182, 31.983850, 40.428532>,  <37.420223, 31.974773, 40.264587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245182, 31.983850, 40.428532>,  <36.953445, 31.998980, 40.701771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245182, 31.983850, 40.428532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451080, -0.724115, 0.521713,
		-0.514374, -0.688641, -0.511069,
		0.729346, -0.037822, -0.683099,
		37.463985, 31.972504, 40.223602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160397, 31.242357, 40.719929>,  <36.953445, 31.998980, 40.701771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160397, 31.242357, 40.719929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471710, 31.440426, 40.565483>,  <37.658497, 31.559267, 40.472816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471710, 31.440426, 40.565483>,  <37.160397, 31.242357, 40.719929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471710, 31.440426, 40.565483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625236, -0.667892, 0.403733,
		-0.057965, -0.555630, -0.829407,
		0.778280, 0.495173, -0.386114,
		37.705193, 31.588978, 40.449650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565666, 30.820906, 40.247292>,  <37.160397, 31.242357, 40.719929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565666, 30.820906, 40.247292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816299, 31.094303, 40.397079>,  <37.966679, 31.258341, 40.486954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816299, 31.094303, 40.397079>,  <37.565666, 30.820906, 40.247292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816299, 31.094303, 40.397079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583986, -0.729946, 0.355160,
		0.516092, -0.003853, -0.856524,
		0.626585, 0.683494, 0.374470,
		38.004276, 31.299351, 40.509418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275024, 30.676836, 39.862083>,  <37.565666, 30.820906, 40.247292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275024, 30.676836, 39.862083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373108, 30.933321, 40.152935>,  <38.431957, 31.087212, 40.327446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373108, 30.933321, 40.152935>,  <38.275024, 30.676836, 39.862083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373108, 30.933321, 40.152935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729241, -0.616209, 0.297478,
		0.638813, 0.457312, -0.618696,
		0.245206, 0.641211, 0.727133,
		38.446671, 31.125685, 40.371075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055367, 30.620518, 39.940891>,  <38.275024, 30.676836, 39.862083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055367, 30.620518, 39.940891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915424, 30.761074, 40.288254>,  <38.831459, 30.845407, 40.496670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915424, 30.761074, 40.288254>,  <39.055367, 30.620518, 39.940891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915424, 30.761074, 40.288254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599175, -0.628653, 0.495767,
		0.720135, 0.693771, 0.009389,
		-0.349851, 0.351393, 0.868405,
		38.810471, 30.866491, 40.548775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682026, 30.688530, 40.268383>,  <39.055367, 30.620518, 39.940891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682026, 30.688530, 40.268383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378109, 30.677691, 40.528225>,  <39.195759, 30.671186, 40.684128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378109, 30.677691, 40.528225>,  <39.682026, 30.688530, 40.268383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378109, 30.677691, 40.528225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509517, -0.645453, 0.569020,
		0.403868, 0.763319, 0.504217,
		-0.759792, -0.027098, 0.649601,
		39.150173, 30.669561, 40.723106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038921, 30.784052, 40.812706>,  <39.682026, 30.688530, 40.268383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038921, 30.784052, 40.812706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690987, 30.632950, 40.939629>,  <39.482224, 30.542288, 41.015781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690987, 30.632950, 40.939629>,  <40.038921, 30.784052, 40.812706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690987, 30.632950, 40.939629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487340, -0.558001, 0.671665,
		-0.076670, 0.738875, 0.669466,
		-0.869839, -0.377755, 0.317302,
		39.430035, 30.519623, 41.034821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082169, 30.871897, 41.491375>,  <40.038921, 30.784052, 40.812706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082169, 30.871897, 41.491375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799377, 30.591768, 41.451916>,  <39.629704, 30.423691, 41.428238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799377, 30.591768, 41.451916>,  <40.082169, 30.871897, 41.491375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799377, 30.591768, 41.451916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448362, -0.551691, 0.703284,
		-0.546951, 0.452975, 0.704030,
		-0.706977, -0.700322, -0.098651,
		39.587284, 30.381672, 41.422321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802742, 30.701387, 42.158573>,  <40.082169, 30.871897, 41.491375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802742, 30.701387, 42.158573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721092, 30.381083, 41.933323>,  <39.672104, 30.188900, 41.798172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721092, 30.381083, 41.933323>,  <39.802742, 30.701387, 42.158573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721092, 30.381083, 41.933323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241395, -0.598649, 0.763772,
		-0.948716, 0.019968, 0.315498,
		-0.204124, -0.800762, -0.563128,
		39.659855, 30.140854, 41.764385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521034, 30.241497, 42.662914>,  <39.802742, 30.701387, 42.158573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521034, 30.241497, 42.662914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610916, 30.030069, 42.335468>,  <39.664845, 29.903214, 42.139000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610916, 30.030069, 42.335468>,  <39.521034, 30.241497, 42.662914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610916, 30.030069, 42.335468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183321, -0.802162, 0.568269,
		-0.957027, -0.277761, -0.083351,
		0.224704, -0.528569, -0.818610,
		39.678326, 29.871498, 42.089886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086281, 29.700815, 42.744396>,  <39.521034, 30.241497, 42.662914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086281, 29.700815, 42.744396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373642, 29.565792, 42.501102>,  <39.546059, 29.484777, 42.355125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373642, 29.565792, 42.501102>,  <39.086281, 29.700815, 42.744396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373642, 29.565792, 42.501102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098122, -0.816453, 0.569013,
		-0.688668, -0.468464, -0.553424,
		0.718407, -0.337558, -0.608232,
		39.589165, 29.464525, 42.318634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986309, 28.884779, 42.588612>,  <39.086281, 29.700815, 42.744396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986309, 28.884779, 42.588612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364613, 29.001925, 42.532375>,  <39.591595, 29.072212, 42.498634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364613, 29.001925, 42.532375>,  <38.986309, 28.884779, 42.588612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364613, 29.001925, 42.532375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323916, -0.817059, 0.476962,
		0.024812, -0.496633, -0.867606,
		0.945761, 0.292866, -0.140595,
		39.648342, 29.089785, 42.490196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515087, 28.275545, 42.412041>,  <38.986309, 28.884779, 42.588612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515087, 28.275545, 42.412041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737362, 28.568996, 42.568504>,  <39.870728, 28.745068, 42.662380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737362, 28.568996, 42.568504>,  <39.515087, 28.275545, 42.412041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737362, 28.568996, 42.568504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439414, -0.658558, 0.610915,
		0.705784, -0.167597, -0.688318,
		0.555684, 0.733630, 0.391155,
		39.904068, 28.789085, 42.685852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155067, 27.884012, 42.520908>,  <39.515087, 28.275545, 42.412041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155067, 27.884012, 42.520908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188164, 28.229994, 42.718903>,  <40.208023, 28.437584, 42.837700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188164, 28.229994, 42.718903>,  <40.155067, 27.884012, 42.520908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188164, 28.229994, 42.718903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458078, -0.474113, 0.751918,
		0.885053, 0.164527, -0.435445,
		0.082740, 0.864955, 0.494981,
		40.212986, 28.489481, 42.867397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879734, 28.127872, 42.595085>,  <40.155067, 27.884012, 42.520908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879734, 28.127872, 42.595085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673908, 28.311375, 42.884850>,  <40.550411, 28.421476, 43.058708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673908, 28.311375, 42.884850>,  <40.879734, 28.127872, 42.595085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673908, 28.311375, 42.884850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584811, -0.430081, 0.687770,
		0.627071, 0.777544, -0.046979,
		-0.514567, 0.458754, 0.724407,
		40.519539, 28.449001, 43.102173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371872, 28.338646, 42.993000>,  <40.879734, 28.127872, 42.595085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371872, 28.338646, 42.993000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056389, 28.353666, 43.238449>,  <40.867100, 28.362679, 43.385719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056389, 28.353666, 43.238449>,  <41.371872, 28.338646, 42.993000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056389, 28.353666, 43.238449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533769, -0.453387, 0.713814,
		0.305015, 0.890522, 0.337545,
		-0.788705, 0.037553, 0.613623,
		40.819778, 28.364933, 43.422535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688454, 28.541061, 43.615284>,  <41.371872, 28.338646, 42.993000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688454, 28.541061, 43.615284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323532, 28.432491, 43.737942>,  <41.104580, 28.367350, 43.811535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323532, 28.432491, 43.737942>,  <41.688454, 28.541061, 43.615284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323532, 28.432491, 43.737942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378782, -0.274692, 0.883781,
		-0.155650, 0.922427, 0.353414,
		-0.912303, -0.271428, 0.306642,
		41.049843, 28.351063, 43.829933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554276, 28.947084, 44.258835>,  <41.688454, 28.541061, 43.615284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554276, 28.947084, 44.258835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341648, 28.608557, 44.245098>,  <41.214073, 28.405439, 44.236855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341648, 28.608557, 44.245098>,  <41.554276, 28.947084, 44.258835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341648, 28.608557, 44.245098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410478, -0.292859, 0.863563,
		-0.740909, 0.444944, 0.503070,
		-0.531566, -0.846321, -0.034342,
		41.182178, 28.354660, 44.234795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367043, 28.852077, 44.857048>,  <41.554276, 28.947084, 44.258835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367043, 28.852077, 44.857048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321228, 28.487368, 44.699291>,  <41.293739, 28.268541, 44.604637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321228, 28.487368, 44.699291>,  <41.367043, 28.852077, 44.857048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321228, 28.487368, 44.699291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533043, -0.391419, 0.750105,
		-0.838300, -0.124314, 0.530847,
		-0.114535, -0.911777, -0.394392,
		41.286869, 28.213835, 44.580975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369423, 28.389502, 45.387821>,  <41.367043, 28.852077, 44.857048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369423, 28.389502, 45.387821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436695, 28.117134, 45.102707>,  <41.477058, 27.953712, 44.931641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436695, 28.117134, 45.102707>,  <41.369423, 28.389502, 45.387821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436695, 28.117134, 45.102707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630303, -0.481670, 0.608861,
		-0.757913, -0.551671, 0.348177,
		0.168185, -0.680921, -0.712784,
		41.487152, 27.912857, 44.888870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450977, 27.812405, 45.744568>,  <41.369423, 28.389502, 45.387821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450977, 27.812405, 45.744568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621899, 27.730871, 45.392235>,  <41.724453, 27.681952, 45.180836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621899, 27.730871, 45.392235>,  <41.450977, 27.812405, 45.744568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621899, 27.730871, 45.392235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834085, -0.287061, 0.471060,
		-0.348870, -0.935974, 0.047352,
		0.427307, -0.203834, -0.880829,
		41.750092, 27.669722, 45.127987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659737, 27.156385, 45.800762>,  <41.450977, 27.812405, 45.744568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659737, 27.156385, 45.800762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884666, 27.336430, 45.523293>,  <42.019627, 27.444456, 45.356812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884666, 27.336430, 45.523293>,  <41.659737, 27.156385, 45.800762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884666, 27.336430, 45.523293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822296, -0.392905, 0.411649,
		-0.087262, -0.801890, -0.591065,
		0.562329, 0.450109, -0.693677,
		42.053364, 27.471462, 45.315189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081562, 26.663181, 45.601223>,  <41.659737, 27.156385, 45.800762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081562, 26.663181, 45.601223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247593, 27.006409, 45.480278>,  <42.347214, 27.212345, 45.407711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247593, 27.006409, 45.480278>,  <42.081562, 26.663181, 45.601223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247593, 27.006409, 45.480278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869788, -0.276818, 0.408461,
		0.266789, -0.432536, -0.861241,
		0.415081, 0.858070, -0.302363,
		42.372116, 27.263830, 45.389568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763519, 26.595306, 45.200382>,  <42.081562, 26.663181, 45.601223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763519, 26.595306, 45.200382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793999, 26.973700, 45.326435>,  <42.812286, 27.200735, 45.402065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793999, 26.973700, 45.326435>,  <42.763519, 26.595306, 45.200382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793999, 26.973700, 45.326435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891802, -0.206014, 0.402800,
		0.445964, 0.250344, -0.859327,
		0.076195, 0.945984, 0.315132,
		42.816856, 27.257494, 45.420975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456509, 26.748419, 45.090954>,  <42.763519, 26.595306, 45.200382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456509, 26.748419, 45.090954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340714, 27.038788, 45.340508>,  <43.271236, 27.213009, 45.490242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340714, 27.038788, 45.340508>,  <43.456509, 26.748419, 45.090954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340714, 27.038788, 45.340508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833057, -0.129925, 0.537713,
		0.471397, 0.675393, -0.567124,
		-0.289484, 0.725923, 0.623887,
		43.253868, 27.256565, 45.527672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145329, 27.022400, 45.249870>,  <43.456509, 26.748419, 45.090954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145329, 27.022400, 45.249870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903625, 27.136539, 45.547447>,  <43.758602, 27.205023, 45.725994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903625, 27.136539, 45.547447>,  <44.145329, 27.022400, 45.249870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903625, 27.136539, 45.547447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764836, -0.054019, 0.641956,
		0.223368, 0.956900, -0.185604,
		-0.604262, 0.285349, 0.743938,
		43.722347, 27.222145, 45.770630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506359, 27.590322, 45.582325>,  <44.145329, 27.022400, 45.249870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506359, 27.590322, 45.582325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237579, 27.416103, 45.821918>,  <44.076313, 27.311571, 45.965675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237579, 27.416103, 45.821918>,  <44.506359, 27.590322, 45.582325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237579, 27.416103, 45.821918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691866, -0.080642, 0.717509,
		-0.264207, 0.896545, 0.355529,
		-0.671950, -0.435549, 0.598983,
		44.035995, 27.285439, 46.001614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.609001, 27.840179, 46.287674>,  <44.506359, 27.590322, 45.582325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.609001, 27.840179, 46.287674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384502, 27.520653, 46.374290>,  <44.249802, 27.328936, 46.426262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384502, 27.520653, 46.374290>,  <44.609001, 27.840179, 46.287674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384502, 27.520653, 46.374290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394771, -0.028423, 0.918340,
		-0.727432, 0.600901, 0.331302,
		-0.561248, -0.798818, 0.216542,
		44.216129, 27.281008, 46.439255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429264, 28.009285, 46.935333>,  <44.609001, 27.840179, 46.287674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429264, 28.009285, 46.935333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398029, 27.615009, 46.875568>,  <44.379288, 27.378445, 46.839710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398029, 27.615009, 46.875568>,  <44.429264, 28.009285, 46.935333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398029, 27.615009, 46.875568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541453, -0.167770, 0.823821,
		-0.837096, -0.016564, 0.546805,
		-0.078092, -0.985687, -0.149408,
		44.374603, 27.319304, 46.830746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073555, 28.246571, 47.473690>,  <44.429264, 28.009285, 46.935333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073555, 28.246571, 47.473690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921852, 28.413980, 47.803780>,  <43.830830, 28.514427, 48.001835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921852, 28.413980, 47.803780>,  <44.073555, 28.246571, 47.473690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921852, 28.413980, 47.803780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898483, 0.046551, -0.436532,
		-0.221116, -0.907011, 0.358384,
		-0.379256, 0.418526, 0.825227,
		43.808075, 28.539537, 48.051350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501251, 27.898199, 47.566624>,  <44.073555, 28.246571, 47.473690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501251, 27.898199, 47.566624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491402, 28.264729, 47.726498>,  <43.485493, 28.484646, 47.822422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491402, 28.264729, 47.726498>,  <43.501251, 27.898199, 47.566624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491402, 28.264729, 47.726498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947918, 0.105602, -0.300499,
		-0.317562, -0.386268, 0.865997,
		-0.024622, 0.916322, 0.399686,
		43.484016, 28.539625, 47.846405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800934, 28.016163, 47.658119>,  <43.501251, 27.898199, 47.566624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800934, 28.016163, 47.658119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945724, 28.383694, 47.721016>,  <43.032600, 28.604212, 47.758755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945724, 28.383694, 47.721016>,  <42.800934, 28.016163, 47.658119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945724, 28.383694, 47.721016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821478, 0.394151, -0.412092,
		-0.440619, 0.019997, 0.897472,
		0.361980, 0.918828, 0.157243,
		43.054317, 28.659342, 47.768188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252151, 28.352972, 47.919796>,  <42.800934, 28.016163, 47.658119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252151, 28.352972, 47.919796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466969, 28.657223, 47.773899>,  <42.595860, 28.839773, 47.686363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466969, 28.657223, 47.773899>,  <42.252151, 28.352972, 47.919796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466969, 28.657223, 47.773899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817458, 0.362537, -0.447582,
		-0.208212, 0.538528, 0.816478,
		0.537039, 0.760628, -0.364739,
		42.628078, 28.885410, 47.664478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933575, 28.902946, 48.042000>,  <42.252151, 28.352972, 47.919796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933575, 28.902946, 48.042000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170238, 29.025137, 47.743568>,  <42.312237, 29.098452, 47.564510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170238, 29.025137, 47.743568>,  <41.933575, 28.902946, 48.042000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170238, 29.025137, 47.743568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751106, 0.545076, -0.372467,
		0.292888, 0.780754, 0.551941,
		0.591655, 0.305475, -0.746076,
		42.347736, 29.116779, 47.519745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770882, 29.633575, 47.949047>,  <41.933575, 28.902946, 48.042000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770882, 29.633575, 47.949047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972881, 29.536516, 47.617722>,  <42.094082, 29.478281, 47.418926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972881, 29.536516, 47.617722>,  <41.770882, 29.633575, 47.949047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972881, 29.536516, 47.617722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527688, 0.672634, -0.518757,
		0.683026, 0.699061, 0.211636,
		0.504996, -0.242647, -0.828312,
		42.124382, 29.463722, 47.369228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101471, 30.334169, 47.620216>,  <41.770882, 29.633575, 47.949047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101471, 30.334169, 47.620216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036137, 30.036766, 47.360828>,  <41.996937, 29.858324, 47.205196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036137, 30.036766, 47.360828>,  <42.101471, 30.334169, 47.620216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036137, 30.036766, 47.360828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500353, 0.628923, -0.595066,
		0.850276, 0.227272, -0.474740,
		-0.163333, -0.743508, -0.648474,
		41.987137, 29.813713, 47.166286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088329, 30.676720, 46.931728>,  <42.101471, 30.334169, 47.620216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088329, 30.676720, 46.931728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905964, 30.321333, 46.910698>,  <41.796543, 30.108101, 46.898079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905964, 30.321333, 46.910698>,  <42.088329, 30.676720, 46.931728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905964, 30.321333, 46.910698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750700, 0.415612, -0.513532,
		0.478110, -0.194656, -0.856458,
		-0.455916, -0.888468, -0.052580,
		41.769188, 30.054792, 46.894924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785862, 30.675745, 46.279907>,  <42.088329, 30.676720, 46.931728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785862, 30.675745, 46.279907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577251, 30.385153, 46.458897>,  <41.452084, 30.210798, 46.566292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577251, 30.385153, 46.458897>,  <41.785862, 30.675745, 46.279907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577251, 30.385153, 46.458897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758993, 0.155417, -0.632277,
		0.389790, -0.669383, -0.632447,
		-0.521529, -0.726479, 0.447477,
		41.420792, 30.167210, 46.593140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515453, 30.168793, 45.744339>,  <41.785862, 30.675745, 46.279907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515453, 30.168793, 45.744339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283001, 30.148155, 46.069210>,  <41.143532, 30.135773, 46.264133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283001, 30.148155, 46.069210>,  <41.515453, 30.168793, 45.744339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283001, 30.148155, 46.069210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811485, 0.112148, -0.573512,
		-0.061494, -0.992351, -0.107040,
		-0.581129, -0.051594, 0.812174,
		41.108662, 30.132677, 46.312862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025703, 29.846367, 45.474403>,  <41.515453, 30.168793, 45.744339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025703, 29.846367, 45.474403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871830, 29.977497, 45.819553>,  <40.779507, 30.056175, 46.026642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871830, 29.977497, 45.819553>,  <41.025703, 29.846367, 45.474403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871830, 29.977497, 45.819553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824355, 0.298552, -0.480942,
		-0.415276, -0.896325, 0.155395,
		-0.384686, 0.327825, 0.862872,
		40.756424, 30.075844, 46.078415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351292, 29.550940, 45.517178>,  <41.025703, 29.846367, 45.474403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351292, 29.550940, 45.517178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351746, 29.875942, 45.750359>,  <40.352016, 30.070944, 45.890266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351746, 29.875942, 45.750359>,  <40.351292, 29.550940, 45.517178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351746, 29.875942, 45.750359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805266, 0.346381, -0.481213,
		-0.592912, -0.468884, 0.654678,
		0.001135, 0.812508, 0.582950,
		40.352085, 30.119694, 45.925243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635040, 29.658375, 45.644703>,  <40.351292, 29.550940, 45.517178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635040, 29.658375, 45.644703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827000, 30.000244, 45.723930>,  <39.942177, 30.205366, 45.771465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827000, 30.000244, 45.723930>,  <39.635040, 29.658375, 45.644703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827000, 30.000244, 45.723930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754243, 0.517240, -0.404450,
		-0.448120, 0.044705, 0.892855,
		0.479901, 0.854672, 0.198067,
		39.970970, 30.256645, 45.783352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173584, 30.158298, 45.965530>,  <39.635040, 29.658375, 45.644703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173584, 30.158298, 45.965530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457272, 30.364862, 45.773560>,  <39.627483, 30.488800, 45.658379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457272, 30.364862, 45.773560>,  <39.173584, 30.158298, 45.965530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457272, 30.364862, 45.773560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703217, 0.469959, -0.533503,
		-0.049959, 0.715863, 0.696451,
		0.709218, 0.516410, -0.479928,
		39.670036, 30.519785, 45.629581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884323, 30.895065, 45.929371>,  <39.173584, 30.158298, 45.965530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884323, 30.895065, 45.929371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201542, 30.931417, 45.688435>,  <39.391872, 30.953228, 45.543873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201542, 30.931417, 45.688435>,  <38.884323, 30.895065, 45.929371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201542, 30.931417, 45.688435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391420, 0.833685, -0.389563,
		0.466760, 0.544711, 0.696724,
		0.793048, 0.090879, -0.602342,
		39.439457, 30.958681, 45.507732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049240, 31.666615, 45.855392>,  <38.884323, 30.895065, 45.929371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049240, 31.666615, 45.855392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237896, 31.469217, 45.563087>,  <39.351089, 31.350779, 45.387703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237896, 31.469217, 45.563087>,  <39.049240, 31.666615, 45.855392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237896, 31.469217, 45.563087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082621, 0.800350, -0.593813,
		0.877910, 0.340444, 0.336707,
		0.471643, -0.493495, -0.730763,
		39.379391, 31.321169, 45.343857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737198, 32.151905, 45.585022>,  <39.049240, 31.666615, 45.855392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737198, 32.151905, 45.585022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580372, 31.880625, 45.336399>,  <39.486279, 31.717857, 45.187225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580372, 31.880625, 45.336399>,  <39.737198, 32.151905, 45.585022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580372, 31.880625, 45.336399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111382, 0.705676, -0.699725,
		0.913171, -0.205105, -0.352207,
		-0.392061, -0.678198, -0.621558,
		39.462753, 31.677166, 45.149933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020161, 32.285259, 44.961060>,  <39.737198, 32.151905, 45.585022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020161, 32.285259, 44.961060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698414, 32.069405, 44.861622>,  <39.505367, 31.939892, 44.801960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698414, 32.069405, 44.861622>,  <40.020161, 32.285259, 44.961060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698414, 32.069405, 44.861622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187195, 0.627275, -0.755966,
		0.563877, -0.561536, -0.605574,
		-0.804364, -0.539632, -0.248590,
		39.457104, 31.907515, 44.787045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233047, 32.143108, 44.335827>,  <40.020161, 32.285259, 44.961060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233047, 32.143108, 44.335827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838032, 32.081013, 44.346195>,  <39.601025, 32.043755, 44.352417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838032, 32.081013, 44.346195>,  <40.233047, 32.143108, 44.335827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838032, 32.081013, 44.346195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099471, 0.487981, -0.867167,
		0.121967, -0.858939, -0.497341,
		-0.987537, -0.155237, 0.025922,
		39.541771, 32.034443, 44.353973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982094, 31.856937, 43.694096>,  <40.233047, 32.143108, 44.335827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982094, 31.856937, 43.694096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653572, 32.030590, 43.842148>,  <39.456459, 32.134781, 43.930981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653572, 32.030590, 43.842148>,  <39.982094, 31.856937, 43.694096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653572, 32.030590, 43.842148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122193, 0.499867, -0.857439,
		-0.557256, -0.749443, -0.357493,
		-0.821301, 0.434130, 0.370130,
		39.407181, 32.160828, 43.953186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529140, 31.784718, 43.280895>,  <39.982094, 31.856937, 43.694096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529140, 31.784718, 43.280895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360054, 32.093113, 43.471428>,  <39.258602, 32.278149, 43.585747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360054, 32.093113, 43.471428>,  <39.529140, 31.784718, 43.280895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360054, 32.093113, 43.471428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441305, 0.283957, -0.851245,
		-0.791556, -0.570042, 0.220207,
		-0.422716, 0.770987, 0.476330,
		39.233238, 32.324409, 43.614326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899815, 31.827000, 43.011539>,  <39.529140, 31.784718, 43.280895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899815, 31.827000, 43.011539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934910, 32.180347, 43.195694>,  <38.955967, 32.392357, 43.306187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934910, 32.180347, 43.195694>,  <38.899815, 31.827000, 43.011539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934910, 32.180347, 43.195694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447145, 0.447918, -0.774229,
		-0.890148, -0.137933, 0.434294,
		0.087737, 0.883371, 0.460390,
		38.961231, 32.445358, 43.333813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353073, 32.133495, 42.809425>,  <38.899815, 31.827000, 43.011539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353073, 32.133495, 42.809425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595127, 32.421539, 42.945225>,  <38.740360, 32.594364, 43.026707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595127, 32.421539, 42.945225>,  <38.353073, 32.133495, 42.809425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595127, 32.421539, 42.945225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241297, 0.572280, -0.783755,
		-0.758676, 0.392356, 0.520065,
		0.605134, 0.720106, 0.339500,
		38.776669, 32.637569, 43.047073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973629, 32.738754, 42.920784>,  <38.353073, 32.133495, 42.809425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973629, 32.738754, 42.920784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355240, 32.847157, 42.869587>,  <38.584206, 32.912197, 42.838867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355240, 32.847157, 42.869587>,  <37.973629, 32.738754, 42.920784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355240, 32.847157, 42.869587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253264, 0.500634, -0.827782,
		-0.160254, 0.822146, 0.546255,
		0.954031, 0.271002, -0.127992,
		38.641449, 32.928455, 42.831188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004059, 33.432030, 42.716618>,  <37.973629, 32.738754, 42.920784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004059, 33.432030, 42.716618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360153, 33.303802, 42.587177>,  <38.573811, 33.226868, 42.509514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360153, 33.303802, 42.587177>,  <38.004059, 33.432030, 42.716618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360153, 33.303802, 42.587177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098953, 0.557363, -0.824351,
		0.444623, 0.765888, 0.464463,
		0.890235, -0.320565, -0.323603,
		38.627224, 33.207634, 42.490097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363266, 33.998524, 42.490520>,  <38.004059, 33.432030, 42.716618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363266, 33.998524, 42.490520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564327, 33.710892, 42.298576>,  <38.684963, 33.538311, 42.183411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564327, 33.710892, 42.298576>,  <38.363266, 33.998524, 42.490520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564327, 33.710892, 42.298576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064385, 0.584676, -0.808707,
		0.862087, 0.375603, 0.340187,
		0.502653, -0.719079, -0.479859,
		38.715122, 33.495167, 42.154617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027248, 34.261265, 42.251316>,  <38.363266, 33.998524, 42.490520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027248, 34.261265, 42.251316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981125, 33.947735, 42.007240>,  <38.953449, 33.759617, 41.860794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981125, 33.947735, 42.007240>,  <39.027248, 34.261265, 42.251316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981125, 33.947735, 42.007240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352674, 0.541958, -0.762825,
		0.928614, -0.303159, 0.213939,
		-0.115311, -0.783821, -0.610187,
		38.946533, 33.712589, 41.824184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589401, 34.315277, 41.744862>,  <39.027248, 34.261265, 42.251316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589401, 34.315277, 41.744862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307144, 34.090252, 41.572536>,  <39.137791, 33.955238, 41.469143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307144, 34.090252, 41.572536>,  <39.589401, 34.315277, 41.744862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307144, 34.090252, 41.572536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186797, 0.438798, -0.878956,
		0.683506, -0.700700, -0.204548,
		-0.705639, -0.562563, -0.430809,
		39.095451, 33.921482, 41.443295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816776, 34.180431, 40.985733>,  <39.589401, 34.315277, 41.744862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816776, 34.180431, 40.985733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426426, 34.093704, 40.975540>,  <39.192215, 34.041668, 40.969425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426426, 34.093704, 40.975540>,  <39.816776, 34.180431, 40.985733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426426, 34.093704, 40.975540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041715, 0.299764, -0.953101,
		0.214281, -0.929050, -0.301578,
		-0.975881, -0.216812, -0.025478,
		39.133663, 34.028660, 40.967896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659439, 33.911343, 40.297771>,  <39.816776, 34.180431, 40.985733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659439, 33.911343, 40.297771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298504, 34.027672, 40.425026>,  <39.081944, 34.097469, 40.501381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298504, 34.027672, 40.425026>,  <39.659439, 33.911343, 40.297771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298504, 34.027672, 40.425026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128626, 0.522778, -0.842709,
		-0.411391, -0.801329, -0.434315,
		-0.902337, 0.290819, 0.318138,
		39.027802, 34.114918, 40.520466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183979, 33.930481, 39.615997>,  <39.659439, 33.911343, 40.297771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183979, 33.930481, 39.615997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986305, 34.145390, 39.889385>,  <38.867702, 34.274334, 40.053417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986305, 34.145390, 39.889385>,  <39.183979, 33.930481, 39.615997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986305, 34.145390, 39.889385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310227, 0.625432, -0.715957,
		-0.812124, -0.565842, -0.142400,
		-0.494180, 0.537270, 0.683467,
		38.838051, 34.306572, 40.094425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415348, 34.015087, 39.308533>,  <39.183979, 33.930481, 39.615997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415348, 34.015087, 39.308533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522514, 34.291100, 39.577480>,  <38.586815, 34.456707, 39.738850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522514, 34.291100, 39.577480>,  <38.415348, 34.015087, 39.308533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522514, 34.291100, 39.577480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155041, 0.719667, -0.676788,
		-0.950886, 0.077077, 0.299793,
		0.267916, 0.690028, 0.672370,
		38.602890, 34.498108, 39.779190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863213, 34.481331, 39.295311>,  <38.415348, 34.015087, 39.308533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863213, 34.481331, 39.295311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173847, 34.684933, 39.443817>,  <38.360226, 34.807095, 39.532921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173847, 34.684933, 39.443817>,  <37.863213, 34.481331, 39.295311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173847, 34.684933, 39.443817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154527, 0.725178, -0.670998,
		-0.610771, 0.463716, 0.641815,
		0.776582, 0.509004, 0.371261,
		38.406822, 34.837635, 39.555195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695454, 35.170380, 39.340820>,  <37.863213, 34.481331, 39.295311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695454, 35.170380, 39.340820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093147, 35.211514, 39.352940>,  <38.331764, 35.236195, 39.360210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093147, 35.211514, 39.352940>,  <37.695454, 35.170380, 39.340820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093147, 35.211514, 39.352940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051933, 0.709247, -0.703045,
		-0.093786, 0.697420, 0.710500,
		0.994237, 0.102834, 0.030298,
		38.391418, 35.242363, 39.362030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691017, 35.791908, 39.106987>,  <37.695454, 35.170380, 39.340820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691017, 35.791908, 39.106987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067535, 35.661835, 39.070728>,  <38.293446, 35.583790, 39.048973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067535, 35.661835, 39.070728>,  <37.691017, 35.791908, 39.106987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067535, 35.661835, 39.070728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176218, 0.702339, -0.689686,
		0.287937, 0.633226, 0.718413,
		0.941297, -0.325183, -0.090644,
		38.349926, 35.564281, 39.043533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095119, 36.435738, 39.153275>,  <37.691017, 35.791908, 39.106987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095119, 36.435738, 39.153275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333538, 36.161087, 38.986771>,  <38.476589, 35.996296, 38.886868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333538, 36.161087, 38.986771>,  <38.095119, 36.435738, 39.153275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333538, 36.161087, 38.986771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344213, 0.686860, -0.640110,
		0.725429, 0.238252, 0.645746,
		0.596045, -0.686629, -0.416259,
		38.512352, 35.955097, 38.861893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905807, 36.667000, 39.196133>,  <38.095119, 36.435738, 39.153275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905807, 36.667000, 39.196133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821011, 36.415951, 38.896492>,  <38.770134, 36.265320, 38.716709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821011, 36.415951, 38.896492>,  <38.905807, 36.667000, 39.196133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821011, 36.415951, 38.896492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212901, 0.718449, -0.662197,
		0.953800, -0.299862, -0.018681,
		-0.211989, -0.627626, -0.749097,
		38.757412, 36.227661, 38.671764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436199, 36.753551, 38.686554>,  <38.905807, 36.667000, 39.196133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436199, 36.753551, 38.686554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148373, 36.570332, 38.477783>,  <38.975677, 36.460400, 38.352520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148373, 36.570332, 38.477783>,  <39.436199, 36.753551, 38.686554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148373, 36.570332, 38.477783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105371, 0.670877, -0.734044,
		0.686381, -0.583191, -0.434476,
		-0.719568, -0.458053, -0.521929,
		38.932503, 36.432915, 38.321205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675064, 36.684277, 37.947800>,  <39.436199, 36.753551, 38.686554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675064, 36.684277, 37.947800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275890, 36.697079, 37.970055>,  <39.036385, 36.704758, 37.983406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275890, 36.697079, 37.970055>,  <39.675064, 36.684277, 37.947800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275890, 36.697079, 37.970055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016642, 0.708155, -0.705861,
		-0.061988, -0.705331, -0.706162,
		-0.997938, 0.032003, 0.055636,
		38.976509, 36.706680, 37.986744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283733, 36.219421, 38.223061>,  <39.675064, 36.684277, 37.947800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283733, 36.219421, 38.223061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407516, 35.877148, 38.057148>,  <40.481789, 35.671783, 37.957600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407516, 35.877148, 38.057148>,  <40.283733, 36.219421, 38.223061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407516, 35.877148, 38.057148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852368, 0.442978, -0.277919,
		0.421548, -0.267539, 0.866441,
		0.309460, -0.855683, -0.414779,
		40.500355, 35.620441, 37.932713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041176, 35.958366, 38.515930>,  <40.283733, 36.219421, 38.223061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041176, 35.958366, 38.515930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899509, 35.923515, 38.143486>,  <40.814510, 35.902603, 37.920017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899509, 35.923515, 38.143486>,  <41.041176, 35.958366, 38.515930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899509, 35.923515, 38.143486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794947, 0.496370, -0.348820,
		0.492569, -0.863728, -0.106536,
		-0.354167, -0.087127, -0.931115,
		40.793259, 35.897377, 37.864151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544628, 35.647118, 38.028294>,  <41.041176, 35.958366, 38.515930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544628, 35.647118, 38.028294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299603, 35.848812, 37.784813>,  <41.152588, 35.969830, 37.638725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299603, 35.848812, 37.784813>,  <41.544628, 35.647118, 38.028294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299603, 35.848812, 37.784813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777265, 0.244354, -0.579785,
		-0.143609, -0.828275, -0.541606,
		-0.612565, 0.504234, -0.608697,
		41.115833, 36.000084, 37.602203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227859, 35.343544, 37.293152>,  <41.544628, 35.647118, 38.028294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227859, 35.343544, 37.293152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293922, 35.737057, 37.321171>,  <41.333561, 35.973164, 37.337982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293922, 35.737057, 37.321171>,  <41.227859, 35.343544, 37.293152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293922, 35.737057, 37.321171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855278, -0.107487, -0.506898,
		-0.491146, 0.143627, -0.859155,
		0.165153, 0.983777, 0.070049,
		41.343468, 36.032188, 37.342186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538422, 35.501293, 36.696400>,  <41.227859, 35.343544, 37.293152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538422, 35.501293, 36.696400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624607, 35.825409, 36.914394>,  <41.676319, 36.019878, 37.045189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624607, 35.825409, 36.914394>,  <41.538422, 35.501293, 36.696400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624607, 35.825409, 36.914394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899456, 0.052614, -0.433832,
		-0.380203, 0.583661, -0.717485,
		0.215461, 0.810291, 0.544982,
		41.689247, 36.068497, 37.077888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245529, 35.352962, 36.980530>,  <41.538422, 35.501293, 36.696400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245529, 35.352962, 36.980530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181156, 35.476704, 37.355423>,  <42.142532, 35.550949, 37.580357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181156, 35.476704, 37.355423>,  <42.245529, 35.352962, 36.980530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181156, 35.476704, 37.355423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941101, -0.238016, 0.240160,
		0.297370, 0.920678, -0.252830,
		-0.160932, 0.309355, 0.937230,
		42.132877, 35.569511, 37.636593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814095, 35.865086, 37.077080>,  <42.245529, 35.352962, 36.980530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814095, 35.865086, 37.077080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689430, 35.694069, 37.416508>,  <42.614632, 35.591457, 37.620163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689430, 35.694069, 37.416508>,  <42.814095, 35.865086, 37.077080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689430, 35.694069, 37.416508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949717, -0.168471, 0.263924,
		0.030120, 0.888156, 0.458553,
		-0.311659, -0.427546, 0.848571,
		42.595932, 35.565804, 37.671078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234737, 35.728916, 36.490723>,  <42.814095, 35.865086, 37.077080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234737, 35.728916, 36.490723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528755, 35.687626, 36.222679>,  <43.705166, 35.662853, 36.061852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528755, 35.687626, 36.222679>,  <43.234737, 35.728916, 36.490723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528755, 35.687626, 36.222679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676206, -0.039418, -0.735657,
		0.049525, 0.993876, -0.098776,
		0.735046, -0.103226, -0.670113,
		43.749268, 35.656658, 36.021645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170017, 36.097752, 35.834770>,  <43.234737, 35.728916, 36.490723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170017, 36.097752, 35.834770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.426239, 35.809780, 35.727898>,  <43.579971, 35.636997, 35.663776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.426239, 35.809780, 35.727898>,  <43.170017, 36.097752, 35.834770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.426239, 35.809780, 35.727898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586498, -0.234076, -0.775389,
		0.495687, 0.653382, -0.572178,
		0.640558, -0.719931, -0.267179,
		43.618408, 35.593800, 35.647743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381752, 36.288254, 35.155781>,  <43.170017, 36.097752, 35.834770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381752, 36.288254, 35.155781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445728, 35.894821, 35.189217>,  <43.484112, 35.658760, 35.209278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445728, 35.894821, 35.189217>,  <43.381752, 36.288254, 35.155781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445728, 35.894821, 35.189217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530149, -0.157021, -0.833239,
		0.832683, 0.088952, -0.546558,
		0.159939, -0.983581, 0.083591,
		43.493710, 35.599747, 35.214294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521503, 36.110844, 34.565544>,  <43.381752, 36.288254, 35.155781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521503, 36.110844, 34.565544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442989, 35.746006, 34.709522>,  <43.395882, 35.527103, 34.795910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442989, 35.746006, 34.709522>,  <43.521503, 36.110844, 34.565544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442989, 35.746006, 34.709522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437572, -0.247034, -0.864584,
		0.877498, -0.327208, -0.350616,
		-0.196285, -0.912091, 0.359949,
		43.384106, 35.472378, 34.817509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752834, 35.603645, 34.075657>,  <43.521503, 36.110844, 34.565544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752834, 35.603645, 34.075657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504520, 35.386391, 34.301800>,  <43.355530, 35.256039, 34.437485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504520, 35.386391, 34.301800>,  <43.752834, 35.603645, 34.075657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504520, 35.386391, 34.301800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413182, -0.386194, -0.824703,
		0.666261, -0.745561, 0.015332,
		-0.620787, -0.543132, 0.565359,
		43.318283, 35.223450, 34.471409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852882, 34.872242, 33.889431>,  <43.752834, 35.603645, 34.075657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.852882, 34.872242, 33.889431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491222, 34.906902, 34.056763>,  <43.274227, 34.927700, 34.157162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491222, 34.906902, 34.056763>,  <43.852882, 34.872242, 33.889431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491222, 34.906902, 34.056763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411414, -0.440389, -0.797995,
		0.115080, -0.893616, 0.433828,
		-0.904155, 0.086650, 0.418326,
		43.219975, 34.932896, 34.182262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523472, 34.225044, 33.805374>,  <43.852882, 34.872242, 33.889431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523472, 34.225044, 33.805374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209812, 34.463985, 33.872635>,  <43.021618, 34.607349, 33.912991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209812, 34.463985, 33.872635>,  <43.523472, 34.225044, 33.805374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209812, 34.463985, 33.872635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477214, -0.407224, -0.778740,
		-0.396690, -0.690908, 0.604387,
		-0.784158, 0.597340, 0.168169,
		42.974567, 34.643192, 33.923080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835827, 33.837837, 33.606236>,  <43.523472, 34.225044, 33.805374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835827, 33.837837, 33.606236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738525, 34.225800, 33.610500>,  <42.680145, 34.458576, 33.613060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738525, 34.225800, 33.610500>,  <42.835827, 33.837837, 33.606236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738525, 34.225800, 33.610500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579667, -0.136550, -0.803331,
		-0.777699, -0.201590, 0.595437,
		-0.243250, 0.969905, 0.010660,
		42.665550, 34.516769, 33.613697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151287, 33.804371, 33.455265>,  <42.835827, 33.837837, 33.606236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151287, 33.804371, 33.455265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276356, 34.172806, 33.362453>,  <42.351398, 34.393867, 33.306767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276356, 34.172806, 33.362453>,  <42.151287, 33.804371, 33.455265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276356, 34.172806, 33.362453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425283, -0.082671, -0.901276,
		-0.849336, 0.380480, 0.365874,
		0.312670, 0.921086, -0.232027,
		42.370155, 34.449131, 33.292847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656063, 34.035320, 32.973335>,  <42.151287, 33.804371, 33.455265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656063, 34.035320, 32.973335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894623, 34.350067, 32.909904>,  <42.037758, 34.538918, 32.871845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894623, 34.350067, 32.909904>,  <41.656063, 34.035320, 32.973335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894623, 34.350067, 32.909904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240291, -0.013479, -0.970607,
		-0.765878, 0.616972, 0.181039,
		0.596398, 0.786869, -0.158576,
		42.073544, 34.586128, 32.862331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267475, 34.643539, 32.668434>,  <41.656063, 34.035320, 32.973335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267475, 34.643539, 32.668434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655823, 34.650085, 32.572815>,  <41.888832, 34.654015, 32.515446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655823, 34.650085, 32.572815>,  <41.267475, 34.643539, 32.668434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655823, 34.650085, 32.572815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239603, 0.062363, -0.968866,
		-0.000951, 0.997919, 0.064469,
		0.970870, 0.016368, -0.239045,
		41.947083, 34.654995, 32.501102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330502, 35.169090, 32.173222>,  <41.267475, 34.643539, 32.668434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330502, 35.169090, 32.173222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643745, 34.922123, 32.143467>,  <41.831692, 34.773945, 32.125614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643745, 34.922123, 32.143467>,  <41.330502, 35.169090, 32.173222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643745, 34.922123, 32.143467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113618, -0.024446, -0.993224,
		0.611412, 0.786258, -0.089294,
		0.783113, -0.617414, -0.074387,
		41.878681, 34.736900, 32.121151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598240, 35.490185, 31.619482>,  <41.330502, 35.169090, 32.173222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598240, 35.490185, 31.619482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770428, 35.130322, 31.648636>,  <41.873741, 34.914406, 31.666128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770428, 35.130322, 31.648636>,  <41.598240, 35.490185, 31.619482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770428, 35.130322, 31.648636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044613, -0.101857, -0.993798,
		0.901500, 0.424552, -0.083983,
		0.430473, -0.899656, 0.072884,
		41.899570, 34.860424, 31.670502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086971, 35.546814, 31.159586>,  <41.598240, 35.490185, 31.619482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086971, 35.546814, 31.159586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019547, 35.155476, 31.207640>,  <41.979092, 34.920673, 31.236471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019547, 35.155476, 31.207640>,  <42.086971, 35.546814, 31.159586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019547, 35.155476, 31.207640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004457, -0.122634, -0.992442,
		0.985681, -0.166753, 0.025032,
		-0.168563, -0.978343, 0.120134,
		41.968979, 34.861973, 31.243681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557831, 35.136532, 30.859253>,  <42.086971, 35.546814, 31.159586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557831, 35.136532, 30.859253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307613, 34.826221, 30.892389>,  <42.157482, 34.640034, 30.912271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307613, 34.826221, 30.892389>,  <42.557831, 35.136532, 30.859253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307613, 34.826221, 30.892389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066168, -0.158548, -0.985132,
		0.777379, -0.610761, 0.150510,
		-0.625543, -0.775780, 0.082839,
		42.119949, 34.593487, 30.917240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812553, 34.506470, 30.470562>,  <42.557831, 35.136532, 30.859253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812553, 34.506470, 30.470562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420704, 34.434685, 30.506636>,  <42.185593, 34.391613, 30.528280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420704, 34.434685, 30.506636>,  <42.812553, 34.506470, 30.470562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420704, 34.434685, 30.506636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000861, -0.445275, -0.895393,
		0.200843, -0.877226, 0.436047,
		-0.979623, -0.179458, 0.090185,
		42.126816, 34.380848, 30.533691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826698, 33.957924, 30.013660>,  <42.812553, 34.506470, 30.470562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826698, 33.957924, 30.013660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455685, 34.096161, 30.070581>,  <42.233078, 34.179104, 30.104734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455685, 34.096161, 30.070581>,  <42.826698, 33.957924, 30.013660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455685, 34.096161, 30.070581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284025, -0.404307, -0.869406,
		-0.242922, -0.846821, 0.473163,
		-0.927534, 0.345588, 0.142303,
		42.177425, 34.199837, 30.113272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363129, 33.337715, 29.934294>,  <42.826698, 33.957924, 30.013660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363129, 33.337715, 29.934294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135357, 33.663025, 29.886383>,  <41.998695, 33.858212, 29.857635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135357, 33.663025, 29.886383>,  <42.363129, 33.337715, 29.934294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135357, 33.663025, 29.886383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233274, -0.299581, -0.925113,
		-0.788251, -0.498841, 0.360304,
		-0.569425, 0.813270, -0.119779,
		41.964531, 33.907005, 29.850449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790382, 33.114925, 29.656195>,  <42.363129, 33.337715, 29.934294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790382, 33.114925, 29.656195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774677, 33.507164, 29.579363>,  <41.765255, 33.742508, 29.533264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774677, 33.507164, 29.579363>,  <41.790382, 33.114925, 29.656195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774677, 33.507164, 29.579363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237053, -0.195880, -0.951545,
		-0.970703, 0.008177, 0.240143,
		-0.039259, 0.980594, -0.192080,
		41.762901, 33.801342, 29.521738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275902, 33.228699, 29.352751>,  <41.790382, 33.114925, 29.656195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275902, 33.228699, 29.352751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507500, 33.528793, 29.225063>,  <41.646458, 33.708851, 29.148451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507500, 33.528793, 29.225063>,  <41.275902, 33.228699, 29.352751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507500, 33.528793, 29.225063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121950, -0.307426, -0.943725,
		-0.806157, 0.585344, -0.086507,
		0.578999, 0.750241, -0.319217,
		41.681198, 33.753864, 29.129299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869499, 33.488155, 28.852524>,  <41.275902, 33.228699, 29.352751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869499, 33.488155, 28.852524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243298, 33.612488, 28.783136>,  <41.467579, 33.687088, 28.741503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243298, 33.612488, 28.783136>,  <40.869499, 33.488155, 28.852524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243298, 33.612488, 28.783136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085554, -0.276914, -0.957078,
		-0.345527, 0.909231, -0.232184,
		0.934501, 0.310833, -0.173470,
		41.523647, 33.705738, 28.731096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815926, 33.950893, 28.278913>,  <40.869499, 33.488155, 28.852524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815926, 33.950893, 28.278913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201935, 33.846062, 28.281679>,  <41.433540, 33.783165, 28.283339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201935, 33.846062, 28.281679>,  <40.815926, 33.950893, 28.278913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201935, 33.846062, 28.281679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078139, -0.312691, -0.946635,
		0.250252, 0.912984, -0.322233,
		0.965023, -0.262076, 0.006912,
		41.491440, 33.767437, 28.283752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139515, 34.178371, 27.605299>,  <40.815926, 33.950893, 28.278913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139515, 34.178371, 27.605299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336845, 33.885590, 27.793289>,  <41.455242, 33.709923, 27.906084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336845, 33.885590, 27.793289>,  <41.139515, 34.178371, 27.605299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336845, 33.885590, 27.793289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145848, -0.463046, -0.874252,
		0.857531, 0.499835, -0.121678,
		0.493325, -0.731952, 0.469976,
		41.484844, 33.666004, 27.934282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794701, 34.027203, 27.217398>,  <41.139515, 34.178371, 27.605299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794701, 34.027203, 27.217398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686932, 33.705650, 27.429504>,  <41.622269, 33.512718, 27.556768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686932, 33.705650, 27.429504>,  <41.794701, 34.027203, 27.217398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686932, 33.705650, 27.429504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006209, -0.549169, -0.835689,
		0.963001, -0.228448, 0.142969,
		-0.269426, -0.803881, 0.530268,
		41.606102, 33.464485, 27.588585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261211, 33.509003, 27.215902>,  <41.794701, 34.027203, 27.217398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261211, 33.509003, 27.215902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911076, 33.327869, 27.283680>,  <41.700993, 33.219189, 27.324347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911076, 33.327869, 27.283680>,  <42.261211, 33.509003, 27.215902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911076, 33.327869, 27.283680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102025, -0.515559, -0.850758,
		0.472614, -0.727418, 0.497492,
		-0.875344, -0.452837, 0.169446,
		41.648472, 33.192017, 27.334515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328003, 32.814861, 27.108049>,  <42.261211, 33.509003, 27.215902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328003, 32.814861, 27.108049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935322, 32.866997, 27.052532>,  <41.699711, 32.898277, 27.019222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935322, 32.866997, 27.052532>,  <42.328003, 32.814861, 27.108049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935322, 32.866997, 27.052532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058259, -0.488364, -0.870693,
		-0.181269, -0.862851, 0.471836,
		-0.981707, 0.130341, -0.138794,
		41.640808, 32.906097, 27.010895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875797, 32.124325, 26.994789>,  <42.328003, 32.814861, 27.108049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875797, 32.124325, 26.994789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690765, 32.405491, 26.778666>,  <41.579746, 32.574192, 26.648991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690765, 32.405491, 26.778666>,  <41.875797, 32.124325, 26.994789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690765, 32.405491, 26.778666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045242, -0.589924, -0.806191,
		-0.885425, -0.397368, 0.241083,
		-0.462575, 0.702914, -0.540311,
		41.551994, 32.616364, 26.616571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898075, 32.257805, 27.736639>,  <41.875797, 32.124325, 26.994789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898075, 32.257805, 27.736639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920494, 31.864063, 27.669825>,  <41.933945, 31.627817, 27.629736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920494, 31.864063, 27.669825>,  <41.898075, 32.257805, 27.736639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920494, 31.864063, 27.669825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778215, -0.061739, 0.624955,
		-0.625492, -0.165017, 0.762581,
		0.056047, -0.984357, -0.167036,
		41.937309, 31.568756, 27.619715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641636, 32.077671, 27.884710>,  <41.898075, 32.257805, 27.736639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641636, 32.077671, 27.884710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451107, 31.725990, 27.889187>,  <42.336792, 31.514982, 27.891872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451107, 31.725990, 27.889187>,  <42.641636, 32.077671, 27.884710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451107, 31.725990, 27.889187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767097, -0.409296, 0.494003,
		-0.429748, 0.243887, 0.869388,
		-0.476318, -0.879202, 0.011191,
		42.308212, 31.462231, 27.892544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375866, 31.938892, 28.556223>,  <42.641636, 32.077671, 27.884710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375866, 31.938892, 28.556223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489353, 31.625221, 28.335470>,  <42.557446, 31.437019, 28.203018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489353, 31.625221, 28.335470>,  <42.375866, 31.938892, 28.556223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489353, 31.625221, 28.335470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710452, -0.214635, 0.670216,
		-0.644021, -0.582236, 0.496224,
		0.283717, -0.784177, -0.551880,
		42.574467, 31.389969, 28.169907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792709, 31.181387, 28.751907>,  <42.375866, 31.938892, 28.556223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792709, 31.181387, 28.751907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102100, 31.299540, 28.527592>,  <43.287735, 31.370432, 28.393003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102100, 31.299540, 28.527592>,  <42.792709, 31.181387, 28.751907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102100, 31.299540, 28.527592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501587, 0.255640, 0.826474,
		0.387487, -0.920542, 0.049571,
		0.773476, 0.295384, -0.560788,
		43.334145, 31.388155, 28.359356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.562725, 30.947960, 29.043682>,  <42.792709, 31.181387, 28.751907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.562725, 30.947960, 29.043682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461407, 31.296106, 28.874781>,  <43.400616, 31.504995, 28.773439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461407, 31.296106, 28.874781>,  <43.562725, 30.947960, 29.043682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461407, 31.296106, 28.874781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242327, 0.479660, 0.843329,
		0.936546, 0.111289, -0.332410,
		-0.253297, 0.870368, -0.422255,
		43.385418, 31.557217, 28.748104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149696, 31.482672, 28.956701>,  <43.562725, 30.947960, 29.043682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149696, 31.482672, 28.956701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783340, 31.627947, 29.025097>,  <43.563526, 31.715113, 29.066133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783340, 31.627947, 29.025097>,  <44.149696, 31.482672, 28.956701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783340, 31.627947, 29.025097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358477, 0.548301, 0.755553,
		0.180654, 0.753300, -0.632379,
		-0.915892, 0.363187, 0.170988,
		43.508572, 31.736902, 29.076393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216164, 32.115307, 29.110569>,  <44.149696, 31.482672, 28.956701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216164, 32.115307, 29.110569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855392, 32.042698, 29.267324>,  <43.638931, 31.999132, 29.361378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855392, 32.042698, 29.267324>,  <44.216164, 32.115307, 29.110569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855392, 32.042698, 29.267324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159420, 0.703377, 0.692710,
		-0.401389, 0.687248, -0.605456,
		-0.901927, -0.181525, 0.391889,
		43.584816, 31.988241, 29.384892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.844566, 32.732887, 29.283962>,  <44.216164, 32.115307, 29.110569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.844566, 32.732887, 29.283962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686226, 32.455341, 29.524580>,  <43.591221, 32.288815, 29.668951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686226, 32.455341, 29.524580>,  <43.844566, 32.732887, 29.283962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686226, 32.455341, 29.524580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240552, 0.553832, 0.797123,
		-0.886250, 0.460243, -0.052323,
		-0.395848, -0.693864, 0.601546,
		43.567471, 32.247181, 29.705044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645294, 33.133068, 29.841810>,  <43.844566, 32.732887, 29.283962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645294, 33.133068, 29.841810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650246, 32.759129, 29.983744>,  <43.653217, 32.534763, 30.068903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650246, 32.759129, 29.983744>,  <43.645294, 33.133068, 29.841810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650246, 32.759129, 29.983744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364157, 0.334707, 0.869115,
		-0.931255, 0.118454, 0.344575,
		0.012381, -0.934848, 0.354833,
		43.653961, 32.478676, 30.090193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603649, 33.226013, 30.563965>,  <43.645294, 33.133068, 29.841810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603649, 33.226013, 30.563965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703068, 32.838753, 30.551878>,  <43.762718, 32.606396, 30.544626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703068, 32.838753, 30.551878>,  <43.603649, 33.226013, 30.563965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703068, 32.838753, 30.551878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429561, 0.082213, 0.899288,
		-0.868160, -0.236495, 0.436313,
		0.248547, -0.968148, -0.030215,
		43.777634, 32.548309, 30.542814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237713, 32.966572, 31.104683>,  <43.603649, 33.226013, 30.563965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237713, 32.966572, 31.104683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554970, 32.743549, 31.006655>,  <43.745323, 32.609737, 30.947838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554970, 32.743549, 31.006655>,  <43.237713, 32.966572, 31.104683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554970, 32.743549, 31.006655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404280, 0.181030, 0.896541,
		-0.455507, -0.810160, 0.368991,
		0.793140, -0.557556, -0.245071,
		43.792912, 32.576283, 30.933134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369061, 32.779530, 31.773977>,  <43.237713, 32.966572, 31.104683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369061, 32.779530, 31.773977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679123, 32.684723, 31.539724>,  <43.865158, 32.627838, 31.399174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679123, 32.684723, 31.539724>,  <43.369061, 32.779530, 31.773977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679123, 32.684723, 31.539724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621301, 0.117897, 0.774652,
		-0.114561, -0.964325, 0.238647,
		0.775152, -0.237017, -0.585630,
		43.911667, 32.613617, 31.364035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658100, 32.066811, 31.995420>,  <43.369061, 32.779530, 31.773977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658100, 32.066811, 31.995420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932713, 32.295486, 31.815712>,  <44.097481, 32.432693, 31.707886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932713, 32.295486, 31.815712>,  <43.658100, 32.066811, 31.995420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932713, 32.295486, 31.815712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528584, 0.031873, 0.848282,
		0.499276, -0.819849, -0.280306,
		0.686529, 0.571692, -0.449273,
		44.138672, 32.466995, 31.680929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265583, 31.844311, 32.259872>,  <43.658100, 32.066811, 31.995420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265583, 31.844311, 32.259872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365078, 32.200455, 32.107353>,  <44.424774, 32.414139, 32.015842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365078, 32.200455, 32.107353>,  <44.265583, 31.844311, 32.259872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365078, 32.200455, 32.107353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553193, 0.192552, 0.810494,
		0.795050, -0.412537, -0.444644,
		0.248742, 0.890358, -0.381301,
		44.439701, 32.467564, 31.992964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984917, 31.874252, 32.313385>,  <44.265583, 31.844311, 32.259872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984917, 31.874252, 32.313385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.852043, 32.251080, 32.294804>,  <44.772320, 32.477177, 32.283653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.852043, 32.251080, 32.294804>,  <44.984917, 31.874252, 32.313385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.852043, 32.251080, 32.294804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600304, 0.249149, 0.759974,
		0.727522, 0.224566, -0.648291,
		-0.332185, 0.942070, -0.046454,
		44.752388, 32.533699, 32.280869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.559486, 32.252762, 32.386623>,  <44.984917, 31.874252, 32.313385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.559486, 32.252762, 32.386623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272015, 32.513260, 32.484097>,  <45.099529, 32.669559, 32.542580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272015, 32.513260, 32.484097>,  <45.559486, 32.252762, 32.386623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272015, 32.513260, 32.484097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581183, 0.370200, 0.724692,
		0.381738, 0.662448, -0.644546,
		-0.718681, 0.651241, 0.243684,
		45.056412, 32.708633, 32.557201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.907120, 32.893642, 32.506527>,  <45.559486, 32.252762, 32.386623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.907120, 32.893642, 32.506527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563194, 32.933815, 32.706779>,  <45.356838, 32.957920, 32.826931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563194, 32.933815, 32.706779>,  <45.907120, 32.893642, 32.506527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563194, 32.933815, 32.706779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494921, 0.405091, 0.768736,
		-0.125594, 0.908743, -0.398010,
		-0.859814, 0.100435, 0.500633,
		45.305248, 32.963947, 32.856968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.958923, 33.536953, 32.833542>,  <45.907120, 32.893642, 32.506527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.958923, 33.536953, 32.833542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.665604, 33.347744, 33.028896>,  <45.489613, 33.234219, 33.146111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.665604, 33.347744, 33.028896>,  <45.958923, 33.536953, 32.833542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.665604, 33.347744, 33.028896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297145, 0.423118, 0.855965,
		-0.611533, 0.772803, -0.169718,
		-0.733303, -0.473020, 0.488384,
		45.445614, 33.205837, 33.175411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.649334, 34.073307, 33.269817>,  <45.958923, 33.536953, 32.833542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.649334, 34.073307, 33.269817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.529461, 33.745872, 33.465820>,  <45.457535, 33.549412, 33.583424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.529461, 33.745872, 33.465820>,  <45.649334, 34.073307, 33.269817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.529461, 33.745872, 33.465820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063647, 0.495320, 0.866376,
		-0.951913, 0.290828, -0.096340,
		-0.299686, -0.818583, 0.490011,
		45.439556, 33.500298, 33.612823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165947, 34.366009, 33.799675>,  <45.649334, 34.073307, 33.269817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.165947, 34.366009, 33.799675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.270172, 34.004173, 33.934624>,  <45.332706, 33.787071, 34.015591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.270172, 34.004173, 33.934624>,  <45.165947, 34.366009, 33.799675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.270172, 34.004173, 33.934624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003678, 0.348508, 0.937299,
		-0.965449, -0.245470, 0.087483,
		0.260567, -0.904592, 0.337369,
		45.348343, 33.732796, 34.035835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630749, 34.088470, 34.102024>,  <45.165947, 34.366009, 33.799675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630749, 34.088470, 34.102024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.929836, 33.876728, 34.262367>,  <45.109291, 33.749683, 34.358574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.929836, 33.876728, 34.262367>,  <44.630749, 34.088470, 34.102024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.929836, 33.876728, 34.262367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272427, 0.305986, 0.912226,
		-0.605553, -0.791297, 0.084581,
		0.747723, -0.529359, 0.400861,
		45.154152, 33.717922, 34.382626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371632, 33.852253, 34.680107>,  <44.630749, 34.088470, 34.102024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371632, 33.852253, 34.680107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766521, 33.845901, 34.743530>,  <45.003456, 33.842091, 34.781586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766521, 33.845901, 34.743530>,  <44.371632, 33.852253, 34.680107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766521, 33.845901, 34.743530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143825, 0.339629, 0.929498,
		-0.068613, -0.940426, 0.333004,
		0.987222, -0.015881, 0.158560,
		45.062687, 33.841137, 34.791100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541622, 33.582207, 35.419315>,  <44.371632, 33.852253, 34.680107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541622, 33.582207, 35.419315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.870888, 33.781788, 35.310909>,  <45.068447, 33.901535, 35.245865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.870888, 33.781788, 35.310909>,  <44.541622, 33.582207, 35.419315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870888, 33.781788, 35.310909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040428, 0.424584, 0.904485,
		0.566362, -0.755496, 0.329331,
		0.823164, 0.498952, -0.271011,
		45.117836, 33.931473, 35.229607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.928532, 33.575592, 36.086971>,  <44.541622, 33.582207, 35.419315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.928532, 33.575592, 36.086971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.107258, 33.852505, 35.860310>,  <45.214493, 34.018654, 35.724312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.107258, 33.852505, 35.860310>,  <44.928532, 33.575592, 36.086971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.107258, 33.852505, 35.860310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219077, 0.529445, 0.819569,
		0.867389, -0.490335, 0.084898,
		0.446812, 0.692286, -0.566656,
		45.241302, 34.060192, 35.690311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651585, 33.719341, 36.385353>,  <44.928532, 33.575592, 36.086971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651585, 33.719341, 36.385353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523590, 34.028698, 36.166458>,  <45.446793, 34.214314, 36.035122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523590, 34.028698, 36.166458>,  <45.651585, 33.719341, 36.385353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523590, 34.028698, 36.166458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115051, 0.605055, 0.787827,
		0.940411, 0.189132, -0.282589,
		-0.319985, 0.773393, -0.547241,
		45.427593, 34.260715, 36.002285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.005695, 34.244507, 36.638302>,  <45.651585, 33.719341, 36.385353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.005695, 34.244507, 36.638302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716816, 34.439774, 36.442295>,  <45.543488, 34.556934, 36.324692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716816, 34.439774, 36.442295>,  <46.005695, 34.244507, 36.638302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716816, 34.439774, 36.442295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022717, 0.724798, 0.688587,
		0.691309, 0.486167, -0.534540,
		-0.722202, 0.488170, -0.490015,
		45.500156, 34.586224, 36.295292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.408878, 34.566444, 36.182167>,  <46.005695, 34.244507, 36.638302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.408878, 34.566444, 36.182167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062325, 34.765881, 36.170944>,  <45.854393, 34.885544, 36.164211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062325, 34.765881, 36.170944>,  <46.408878, 34.566444, 36.182167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.062325, 34.765881, 36.170944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471780, -0.798778, 0.373333,
		0.163731, 0.336685, 0.927273,
		-0.866381, 0.498595, -0.028056,
		45.802410, 34.915459, 36.162529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.895187, 34.649452, 35.612297>,  <46.408878, 34.566444, 36.182167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.895187, 34.649452, 35.612297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.212212, 34.833801, 35.772018>,  <47.402424, 34.944412, 35.867851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.212212, 34.833801, 35.772018>,  <46.895187, 34.649452, 35.612297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.212212, 34.833801, 35.772018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533329, -0.206405, -0.820340,
		-0.295657, 0.863128, -0.409386,
		0.792557, 0.460877, 0.399307,
		47.449978, 34.972065, 35.891811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.161591, 35.262413, 35.144943>,  <46.895187, 34.649452, 35.612297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.161591, 35.262413, 35.144943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.429844, 35.040474, 35.341877>,  <47.590797, 34.907310, 35.460037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.429844, 35.040474, 35.341877>,  <47.161591, 35.262413, 35.144943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.429844, 35.040474, 35.341877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544907, -0.081856, -0.834491,
		0.503313, 0.827918, 0.247443,
		0.670635, -0.554844, 0.492338,
		47.631035, 34.874020, 35.489578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.840904, 35.438675, 34.948822>,  <47.161591, 35.262413, 35.144943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.840904, 35.438675, 34.948822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.798141, 35.046555, 35.015251>,  <47.772484, 34.811283, 35.055107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.798141, 35.046555, 35.015251>,  <47.840904, 35.438675, 34.948822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.798141, 35.046555, 35.015251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448231, -0.196612, -0.872028,
		0.887502, -0.018788, 0.460421,
		-0.106908, -0.980301, 0.166072,
		47.766068, 34.752464, 35.065071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.903324, 34.629829, 47.561462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.720886, 34.328075, 47.372620>,  <37.611423, 34.147022, 47.259315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.720886, 34.328075, 47.372620>,  <37.903324, 34.629829, 47.561462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720886, 34.328075, 47.372620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470544, 0.654704, -0.591567,
		0.755359, -0.047662, -0.653576,
		-0.456094, -0.754381, -0.472109,
		37.584057, 34.101761, 47.230988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105080, 34.721569, 46.939560>,  <37.903324, 34.629829, 47.561462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105080, 34.721569, 46.939560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.770069, 34.503040, 46.943195>,  <37.569061, 34.371925, 46.945377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.770069, 34.503040, 46.943195>,  <38.105080, 34.721569, 46.939560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770069, 34.503040, 46.943195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348032, 0.520572, -0.779666,
		0.421211, -0.656157, -0.626130,
		-0.837529, -0.546317, 0.009093,
		37.518810, 34.339146, 46.945923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994522, 34.726261, 46.211945>,  <38.105080, 34.721569, 46.939560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994522, 34.726261, 46.211945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653351, 34.588207, 46.368614>,  <37.448650, 34.505375, 46.462616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653351, 34.588207, 46.368614>,  <37.994522, 34.726261, 46.211945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653351, 34.588207, 46.368614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520890, 0.512983, -0.682292,
		0.034559, -0.785961, -0.617310,
		-0.852924, -0.345130, 0.391671,
		37.397472, 34.484669, 46.486115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640739, 34.404118, 45.753342>,  <37.994522, 34.726261, 46.211945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640739, 34.404118, 45.753342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355995, 34.538555, 46.000011>,  <37.185146, 34.619217, 46.148014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355995, 34.538555, 46.000011>,  <37.640739, 34.404118, 45.753342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355995, 34.538555, 46.000011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452383, 0.452214, -0.768669,
		-0.537215, -0.826162, -0.169872,
		-0.711864, 0.336093, 0.616678,
		37.142437, 34.639381, 46.185013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061493, 34.230003, 45.428024>,  <37.640739, 34.404118, 45.753342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061493, 34.230003, 45.428024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.933689, 34.503216, 45.690742>,  <36.857006, 34.667141, 45.848373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.933689, 34.503216, 45.690742>,  <37.061493, 34.230003, 45.428024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933689, 34.503216, 45.690742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405550, 0.527873, -0.746243,
		-0.856411, -0.504799, 0.108340,
		-0.319513, 0.683028, 0.656798,
		36.837833, 34.708126, 45.887783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325214, 34.248657, 45.371136>,  <37.061493, 34.230003, 45.428024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325214, 34.248657, 45.371136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.413429, 34.602348, 45.535824>,  <36.466358, 34.814564, 45.634636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.413429, 34.602348, 45.535824>,  <36.325214, 34.248657, 45.371136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413429, 34.602348, 45.535824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629112, 0.451523, -0.632729,
		-0.745374, -0.119476, 0.655853,
		0.220536, 0.884224, 0.411717,
		36.479591, 34.867615, 45.659340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717148, 34.625179, 45.360138>,  <36.325214, 34.248657, 45.371136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717148, 34.625179, 45.360138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.987545, 34.910950, 45.432396>,  <36.149784, 35.082413, 45.475750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.987545, 34.910950, 45.432396>,  <35.717148, 34.625179, 45.360138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987545, 34.910950, 45.432396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350825, 0.527585, -0.773677,
		-0.648039, 0.459625, 0.607282,
		0.675994, 0.714422, 0.180647,
		36.190342, 35.125275, 45.486591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345760, 35.300789, 45.426987>,  <35.717148, 34.625179, 45.360138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345760, 35.300789, 45.426987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.720062, 35.402119, 45.328854>,  <35.944645, 35.462917, 45.269974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.720062, 35.402119, 45.328854>,  <35.345760, 35.300789, 45.426987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720062, 35.402119, 45.328854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346412, 0.530043, -0.773985,
		-0.066031, 0.809248, 0.583745,
		0.935756, 0.253323, -0.245334,
		36.000790, 35.478115, 45.255253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329754, 35.993469, 45.271969>,  <35.345760, 35.300789, 45.426987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329754, 35.993469, 45.271969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657883, 35.865292, 45.082493>,  <35.854759, 35.788387, 44.968807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657883, 35.865292, 45.082493>,  <35.329754, 35.993469, 45.271969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657883, 35.865292, 45.082493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266081, 0.519322, -0.812100,
		0.506229, 0.792226, 0.340749,
		0.820325, -0.320442, -0.473692,
		35.903980, 35.769157, 44.940384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570583, 36.558102, 44.798893>,  <35.329754, 35.993469, 45.271969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570583, 36.558102, 44.798893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.798061, 36.262863, 44.653675>,  <35.934547, 36.085720, 44.566544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.798061, 36.262863, 44.653675>,  <35.570583, 36.558102, 44.798893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798061, 36.262863, 44.653675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041198, 0.415250, -0.908774,
		0.821517, 0.531771, 0.205742,
		0.568694, -0.738097, -0.363043,
		35.968670, 36.041435, 44.544762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222191, 36.898479, 44.487999>,  <35.570583, 36.558102, 44.798893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222191, 36.898479, 44.487999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.147396, 36.531162, 44.348412>,  <36.102520, 36.310772, 44.264660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.147396, 36.531162, 44.348412>,  <36.222191, 36.898479, 44.487999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147396, 36.531162, 44.348412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037524, 0.348300, -0.936632,
		0.981645, -0.188235, -0.030671,
		-0.186990, -0.918289, -0.348970,
		36.091301, 36.255676, 44.243721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762226, 36.831955, 43.989647>,  <36.222191, 36.898479, 44.487999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762226, 36.831955, 43.989647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475246, 36.566246, 43.905727>,  <36.303059, 36.406822, 43.855373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475246, 36.566246, 43.905727>,  <36.762226, 36.831955, 43.989647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475246, 36.566246, 43.905727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028128, 0.273306, -0.961516,
		0.696045, -0.695738, -0.177398,
		-0.717447, -0.664268, -0.209803,
		36.260014, 36.366966, 43.842785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973282, 36.521717, 43.423275>,  <36.762226, 36.831955, 43.989647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973282, 36.521717, 43.423275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576565, 36.471786, 43.434296>,  <36.338535, 36.441830, 43.440910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576565, 36.471786, 43.434296>,  <36.973282, 36.521717, 43.423275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576565, 36.471786, 43.434296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049923, 0.179793, -0.982437,
		0.117673, -0.975754, -0.184549,
		-0.991797, -0.124819, 0.027556,
		36.279026, 36.434341, 43.442562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799557, 36.126694, 42.760239>,  <36.973282, 36.521717, 43.423275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799557, 36.126694, 42.760239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.459774, 36.285904, 42.898800>,  <36.255905, 36.381432, 42.981937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.459774, 36.285904, 42.898800>,  <36.799557, 36.126694, 42.760239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459774, 36.285904, 42.898800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287384, 0.201584, -0.936362,
		-0.442526, -0.894952, -0.056851,
		-0.849460, 0.398026, 0.346401,
		36.204937, 36.405312, 43.002720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334888, 35.827312, 42.474903>,  <36.799557, 36.126694, 42.760239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334888, 35.827312, 42.474903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.139198, 36.160297, 42.578953>,  <36.021782, 36.360088, 42.641384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.139198, 36.160297, 42.578953>,  <36.334888, 35.827312, 42.474903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139198, 36.160297, 42.578953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098776, 0.243450, -0.964871,
		-0.866545, -0.497735, -0.036875,
		-0.489227, 0.832461, 0.260125,
		35.992432, 36.410034, 42.656990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849529, 35.770092, 42.103222>,  <36.334888, 35.827312, 42.474903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849529, 35.770092, 42.103222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912319, 36.157692, 42.179527>,  <35.949993, 36.390251, 42.225311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912319, 36.157692, 42.179527>,  <35.849529, 35.770092, 42.103222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912319, 36.157692, 42.179527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070113, 0.203603, -0.976540,
		-0.985110, 0.139922, 0.099901,
		0.156980, 0.969003, 0.190760,
		35.959412, 36.448395, 42.236755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638897, 36.114258, 41.500523>,  <35.849529, 35.770092, 42.103222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638897, 36.114258, 41.500523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.814713, 36.425209, 41.680523>,  <35.920200, 36.611778, 41.788521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.814713, 36.425209, 41.680523>,  <35.638897, 36.114258, 41.500523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814713, 36.425209, 41.680523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108135, 0.451547, -0.885671,
		-0.891693, 0.437944, 0.114410,
		0.439536, 0.777374, 0.449998,
		35.946571, 36.658421, 41.815521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198902, 36.667645, 41.364113>,  <35.638897, 36.114258, 41.500523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198902, 36.667645, 41.364113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553284, 36.839581, 41.433754>,  <35.765915, 36.942741, 41.475540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553284, 36.839581, 41.433754>,  <35.198902, 36.667645, 41.364113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553284, 36.839581, 41.433754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009598, 0.392334, -0.919773,
		-0.463667, 0.813209, 0.351717,
		0.885958, 0.429844, 0.174107,
		35.819073, 36.968533, 41.485985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130276, 37.284710, 40.974899>,  <35.198902, 36.667645, 41.364113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130276, 37.284710, 40.974899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.524837, 37.251892, 41.031853>,  <35.761574, 37.232201, 41.066025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.524837, 37.251892, 41.031853>,  <35.130276, 37.284710, 40.974899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524837, 37.251892, 41.031853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164184, 0.455067, -0.875190,
		0.007010, 0.886669, 0.462351,
		0.986405, -0.082046, 0.142387,
		35.820759, 37.227280, 41.074570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487347, 37.939011, 40.813404>,  <35.130276, 37.284710, 40.974899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487347, 37.939011, 40.813404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.761974, 37.651649, 40.768650>,  <35.926750, 37.479233, 40.741798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.761974, 37.651649, 40.768650>,  <35.487347, 37.939011, 40.813404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761974, 37.651649, 40.768650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196297, 0.331325, -0.922871,
		0.700064, 0.611653, 0.368498,
		0.686570, -0.718404, -0.111883,
		35.967945, 37.436127, 40.735085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217316, 38.292160, 40.647694>,  <35.487347, 37.939011, 40.813404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217316, 38.292160, 40.647694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191738, 37.918869, 40.506268>,  <36.176392, 37.694897, 40.421413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191738, 37.918869, 40.506268>,  <36.217316, 38.292160, 40.647694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191738, 37.918869, 40.506268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221430, 0.332188, -0.916853,
		0.973078, -0.136915, 0.185403,
		-0.063942, -0.933223, -0.353562,
		36.172554, 37.638901, 40.400200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814060, 38.198845, 40.304779>,  <36.217316, 38.292160, 40.647694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814060, 38.198845, 40.304779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531204, 37.948650, 40.172882>,  <36.361492, 37.798534, 40.093746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531204, 37.948650, 40.172882>,  <36.814060, 38.198845, 40.304779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531204, 37.948650, 40.172882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251217, 0.213667, -0.944053,
		0.660946, -0.750409, 0.006041,
		-0.707135, -0.625486, -0.329738,
		36.319065, 37.761005, 40.073959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228092, 37.612999, 40.020264>,  <36.814060, 38.198845, 40.304779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228092, 37.612999, 40.020264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.569424, 37.736092, 39.851913>,  <37.774223, 37.809948, 39.750904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.569424, 37.736092, 39.851913>,  <37.228092, 37.612999, 40.020264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569424, 37.736092, 39.851913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521311, -0.516323, 0.679445,
		-0.008218, -0.799194, -0.601017,
		0.853327, 0.307733, -0.420871,
		37.825420, 37.828411, 39.725651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650402, 37.009209, 40.075012>,  <37.228092, 37.612999, 40.020264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650402, 37.009209, 40.075012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.885597, 37.329506, 40.029270>,  <38.026714, 37.521683, 40.001823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.885597, 37.329506, 40.029270>,  <37.650402, 37.009209, 40.075012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885597, 37.329506, 40.029270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629744, -0.364455, 0.685999,
		0.507632, -0.475376, -0.718560,
		0.587990, 0.800744, -0.114356,
		38.061993, 37.569729, 39.994965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249062, 36.765560, 39.966854>,  <37.650402, 37.009209, 40.075012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249062, 36.765560, 39.966854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.339790, 37.136845, 40.084816>,  <38.394230, 37.359615, 40.155594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.339790, 37.136845, 40.084816>,  <38.249062, 36.765560, 39.966854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339790, 37.136845, 40.084816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681735, -0.367568, 0.632560,
		0.695549, 0.057569, -0.716169,
		0.226825, 0.928213, 0.294908,
		38.407837, 37.415310, 40.173290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053082, 36.874409, 40.036877>,  <38.249062, 36.765560, 39.966854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053082, 36.874409, 40.036877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.877987, 37.138981, 40.280479>,  <38.772930, 37.297726, 40.426643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.877987, 37.138981, 40.280479>,  <39.053082, 36.874409, 40.036877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877987, 37.138981, 40.280479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547336, -0.341346, 0.764138,
		0.713308, 0.667826, -0.212605,
		-0.437739, 0.661432, 0.609010,
		38.746666, 37.337410, 40.463181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625172, 37.181412, 40.533577>,  <39.053082, 36.874409, 40.036877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625172, 37.181412, 40.533577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297874, 37.311150, 40.723434>,  <39.101498, 37.388992, 40.837349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297874, 37.311150, 40.723434>,  <39.625172, 37.181412, 40.533577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297874, 37.311150, 40.723434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390246, -0.292883, 0.872885,
		0.422128, 0.899457, 0.113075,
		-0.818240, 0.324342, 0.474643,
		39.052402, 37.408451, 40.865826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901085, 37.577148, 41.011780>,  <39.625172, 37.181412, 40.533577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901085, 37.577148, 41.011780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.530327, 37.521206, 41.151093>,  <39.307869, 37.487640, 41.234680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.530327, 37.521206, 41.151093>,  <39.901085, 37.577148, 41.011780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530327, 37.521206, 41.151093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375051, -0.310742, 0.873371,
		-0.013919, 0.940149, 0.340479,
		-0.926900, -0.139854, 0.348278,
		39.252258, 37.479248, 41.255577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832176, 38.016174, 41.583534>,  <39.901085, 37.577148, 41.011780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832176, 38.016174, 41.583534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.562061, 37.722065, 41.606731>,  <39.399994, 37.545601, 41.620651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.562061, 37.722065, 41.606731>,  <39.832176, 38.016174, 41.583534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562061, 37.722065, 41.606731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364900, -0.264729, 0.892618,
		-0.640963, 0.623936, 0.447069,
		-0.675288, -0.735271, 0.057993,
		39.359474, 37.501484, 41.624130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488472, 37.953636, 42.318127>,  <39.832176, 38.016174, 41.583534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488472, 37.953636, 42.318127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.455894, 37.594830, 42.144356>,  <39.436348, 37.379543, 42.040092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.455894, 37.594830, 42.144356>,  <39.488472, 37.953636, 42.318127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455894, 37.594830, 42.144356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219052, -0.441324, 0.870201,
		-0.972308, -0.024293, 0.232435,
		-0.081440, -0.897019, -0.434424,
		39.431461, 37.325726, 42.014027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261761, 37.550953, 42.902805>,  <39.488472, 37.953636, 42.318127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261761, 37.550953, 42.902805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.375221, 37.279629, 42.631680>,  <39.443298, 37.116833, 42.469002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.375221, 37.279629, 42.631680>,  <39.261761, 37.550953, 42.902805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375221, 37.279629, 42.631680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120745, -0.675958, 0.726981,
		-0.951295, -0.288053, -0.109834,
		0.283652, -0.678311, -0.677816,
		39.460316, 37.076134, 42.428333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874233, 36.882404, 42.916981>,  <39.261761, 37.550953, 42.902805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874233, 36.882404, 42.916981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225990, 36.763496, 42.768230>,  <39.437046, 36.692150, 42.678978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225990, 36.763496, 42.768230>,  <38.874233, 36.882404, 42.916981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225990, 36.763496, 42.768230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038018, -0.822462, 0.567548,
		-0.474571, -0.484962, -0.734571,
		0.879396, -0.297269, -0.371880,
		39.489807, 36.674316, 42.656666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866444, 36.167847, 42.978958>,  <38.874233, 36.882404, 42.916981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866444, 36.167847, 42.978958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.250072, 36.206062, 42.872337>,  <39.480251, 36.228992, 42.808365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.250072, 36.206062, 42.872337>,  <38.866444, 36.167847, 42.978958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250072, 36.206062, 42.872337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239219, -0.777039, 0.582224,
		-0.151496, -0.622160, -0.768093,
		0.959074, 0.095538, -0.266551,
		39.537796, 36.234722, 42.792374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025288, 35.513321, 42.851143>,  <38.866444, 36.167847, 42.978958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025288, 35.513321, 42.851143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.355553, 35.724594, 42.930450>,  <39.553711, 35.851357, 42.978035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.355553, 35.724594, 42.930450>,  <39.025288, 35.513321, 42.851143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355553, 35.724594, 42.930450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276729, -0.685411, 0.673523,
		0.491640, -0.501232, -0.712079,
		0.825658, 0.528184, 0.198269,
		39.603249, 35.883049, 42.989933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659142, 35.010689, 42.880623>,  <39.025288, 35.513321, 42.851143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659142, 35.010689, 42.880623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.732693, 35.346062, 43.085842>,  <39.776821, 35.547287, 43.208973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.732693, 35.346062, 43.085842>,  <39.659142, 35.010689, 42.880623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732693, 35.346062, 43.085842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281094, -0.544999, 0.789913,
		0.941901, -0.001030, -0.335890,
		0.183873, 0.838436, 0.513045,
		39.787853, 35.597591, 43.239758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211830, 34.794762, 43.202339>,  <39.659142, 35.010689, 42.880623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211830, 34.794762, 43.202339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.103127, 35.107887, 43.426250>,  <40.037903, 35.295761, 43.560596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.103127, 35.107887, 43.426250>,  <40.211830, 34.794762, 43.202339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103127, 35.107887, 43.426250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293569, -0.486514, 0.822874,
		0.916495, 0.387960, -0.097592,
		-0.271762, 0.782809, 0.559781,
		40.021599, 35.342731, 43.594185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724968, 34.849987, 43.683796>,  <40.211830, 34.794762, 43.202339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724968, 34.849987, 43.683796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.404568, 35.028252, 43.843689>,  <40.212330, 35.135212, 43.939625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.404568, 35.028252, 43.843689>,  <40.724968, 34.849987, 43.683796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404568, 35.028252, 43.843689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246792, -0.362516, 0.898708,
		0.545431, 0.818514, 0.180389,
		-0.800999, 0.445665, 0.399730,
		40.164268, 35.161949, 43.963608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964764, 35.062534, 44.277576>,  <40.724968, 34.849987, 43.683796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964764, 35.062534, 44.277576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.567070, 35.071964, 44.319420>,  <40.328453, 35.077621, 44.344524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.567070, 35.071964, 44.319420>,  <40.964764, 35.062534, 44.277576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567070, 35.071964, 44.319420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092845, -0.298808, 0.949786,
		0.053645, 0.954022, 0.294897,
		-0.994234, 0.023572, 0.104606,
		40.268799, 35.079037, 44.350803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859684, 35.359352, 44.954445>,  <40.964764, 35.062534, 44.277576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859684, 35.359352, 44.954445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.512844, 35.180138, 44.867355>,  <40.304741, 35.072609, 44.815102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.512844, 35.180138, 44.867355>,  <40.859684, 35.359352, 44.954445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512844, 35.180138, 44.867355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002451, -0.433238, 0.901276,
		-0.498134, 0.782027, 0.374561,
		-0.867097, -0.448038, -0.217727,
		40.252716, 35.045727, 44.802036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320526, 35.590336, 45.418785>,  <40.859684, 35.359352, 44.954445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320526, 35.590336, 45.418785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.179127, 35.243492, 45.278412>,  <40.094288, 35.035385, 45.194187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.179127, 35.243492, 45.278412>,  <40.320526, 35.590336, 45.418785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179127, 35.243492, 45.278412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160313, -0.313449, 0.935975,
		-0.921595, 0.387127, -0.028205,
		-0.353501, -0.867111, -0.350935,
		40.073078, 34.983360, 45.173130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.598194, 35.372005, 45.790466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.722744, 35.025425, 45.634357>,  <39.797474, 34.817478, 45.540691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.722744, 35.025425, 45.634357>,  <39.598194, 35.372005, 45.790466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722744, 35.025425, 45.634357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174741, -0.455890, 0.872714,
		-0.934083, -0.203546, -0.293358,
		0.311376, -0.866449, -0.390272,
		39.816158, 34.765491, 45.517277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055134, 34.810940, 46.053318>,  <39.598194, 35.372005, 45.790466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055134, 34.810940, 46.053318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398090, 34.644619, 45.932007>,  <39.603867, 34.544827, 45.859219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398090, 34.644619, 45.932007>,  <39.055134, 34.810940, 46.053318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398090, 34.644619, 45.932007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035514, -0.540083, 0.840862,
		-0.513426, -0.731725, -0.448299,
		0.857399, -0.415800, -0.303279,
		39.655308, 34.519878, 45.841022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001289, 34.127449, 46.316242>,  <39.055134, 34.810940, 46.053318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001289, 34.127449, 46.316242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.386761, 34.201027, 46.238796>,  <39.618042, 34.245174, 46.192329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.386761, 34.201027, 46.238796>,  <39.001289, 34.127449, 46.316242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386761, 34.201027, 46.238796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259471, -0.473285, 0.841829,
		0.063212, -0.861491, -0.503823,
		0.963680, 0.183941, -0.193615,
		39.675865, 34.256210, 46.180714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247017, 33.547127, 46.445854>,  <39.001289, 34.127449, 46.316242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247017, 33.547127, 46.445854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580330, 33.763916, 46.489510>,  <39.780315, 33.893990, 46.515701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580330, 33.763916, 46.489510>,  <39.247017, 33.547127, 46.445854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580330, 33.763916, 46.489510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244970, -0.538938, 0.805937,
		0.495614, -0.644835, -0.581854,
		0.833280, 0.541971, 0.109140,
		39.830315, 33.926506, 46.522251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809109, 33.120003, 46.616688>,  <39.247017, 33.547127, 46.445854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809109, 33.120003, 46.616688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.974895, 33.466656, 46.727806>,  <40.074368, 33.674648, 46.794476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.974895, 33.466656, 46.727806>,  <39.809109, 33.120003, 46.616688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974895, 33.466656, 46.727806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303744, -0.419470, 0.855444,
		0.857880, -0.270174, -0.437090,
		0.414465, 0.866632, 0.277792,
		40.099236, 33.726646, 46.811142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318840, 32.894703, 46.909191>,  <39.809109, 33.120003, 46.616688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318840, 32.894703, 46.909191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.301098, 33.261314, 47.068192>,  <40.290451, 33.481281, 47.163593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.301098, 33.261314, 47.068192>,  <40.318840, 32.894703, 46.909191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301098, 33.261314, 47.068192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339278, -0.360423, 0.868899,
		0.939640, 0.173403, -0.294972,
		-0.044355, 0.916530, 0.397500,
		40.287792, 33.536274, 47.187443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975845, 33.011932, 47.273357>,  <40.318840, 32.894703, 46.909191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975845, 33.011932, 47.273357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.705647, 33.265083, 47.424709>,  <40.543530, 33.416973, 47.515518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.705647, 33.265083, 47.424709>,  <40.975845, 33.011932, 47.273357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705647, 33.265083, 47.424709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229787, -0.306915, 0.923580,
		0.700646, 0.710820, 0.061892,
		-0.675495, 0.632881, 0.378376,
		40.502998, 33.454948, 47.538223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241875, 33.363449, 47.883312>,  <40.975845, 33.011932, 47.273357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241875, 33.363449, 47.883312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.851532, 33.425182, 47.945129>,  <40.617325, 33.462223, 47.982220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.851532, 33.425182, 47.945129>,  <41.241875, 33.363449, 47.883312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851532, 33.425182, 47.945129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118342, -0.221078, 0.968049,
		0.183564, 0.962968, 0.197477,
		-0.975858, 0.154329, 0.154542,
		40.558773, 33.471481, 47.991493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178967, 33.868549, 48.343983>,  <41.241875, 33.363449, 47.883312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178967, 33.868549, 48.343983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.858341, 33.629807, 48.358116>,  <40.665966, 33.486561, 48.366596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.858341, 33.629807, 48.358116>,  <41.178967, 33.868549, 48.343983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858341, 33.629807, 48.358116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253137, -0.285228, 0.924428,
		-0.541674, 0.749937, 0.379716,
		-0.801568, -0.596859, 0.035336,
		40.617870, 33.450748, 48.368717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821026, 34.061836, 48.979191>,  <41.178967, 33.868549, 48.343983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821026, 34.061836, 48.979191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.703293, 33.688145, 48.898613>,  <40.632652, 33.463928, 48.850266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.703293, 33.688145, 48.898613>,  <40.821026, 34.061836, 48.979191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703293, 33.688145, 48.898613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167791, -0.258018, 0.951458,
		-0.940858, 0.246248, 0.232699,
		-0.294335, -0.934232, -0.201440,
		40.614994, 33.407875, 48.838181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437431, 33.805679, 49.586731>,  <40.821026, 34.061836, 48.979191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437431, 33.805679, 49.586731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.468517, 33.458500, 49.390514>,  <40.487167, 33.250191, 49.272785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.468517, 33.458500, 49.390514>,  <40.437431, 33.805679, 49.586731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468517, 33.458500, 49.390514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185739, -0.470808, 0.862462,
		-0.979521, -0.158138, 0.124623,
		0.077715, -0.867947, -0.490539,
		40.491833, 33.198116, 49.243351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967091, 33.337311, 49.928436>,  <40.437431, 33.805679, 49.586731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967091, 33.337311, 49.928436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.227970, 33.112499, 49.724960>,  <40.384499, 32.977612, 49.602875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.227970, 33.112499, 49.724960>,  <39.967091, 33.337311, 49.928436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227970, 33.112499, 49.724960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266619, -0.458099, 0.847974,
		-0.709613, -0.688673, -0.148925,
		0.652199, -0.562027, -0.508687,
		40.423630, 32.943890, 49.572353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885937, 32.601700, 50.109467>,  <39.967091, 33.337311, 49.928436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885937, 32.601700, 50.109467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.257912, 32.636868, 49.966644>,  <40.481098, 32.657970, 49.880951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.257912, 32.636868, 49.966644>,  <39.885937, 32.601700, 50.109467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257912, 32.636868, 49.966644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347079, -0.530609, 0.773298,
		-0.121465, -0.843044, -0.523949,
		0.929937, 0.087923, -0.357054,
		40.536892, 32.663246, 49.859528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263794, 31.969587, 50.302200>,  <39.885937, 32.601700, 50.109467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263794, 31.969587, 50.302200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.563408, 32.204803, 50.180111>,  <40.743176, 32.345932, 50.106857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.563408, 32.204803, 50.180111>,  <40.263794, 31.969587, 50.302200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563408, 32.204803, 50.180111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649266, -0.559767, 0.514893,
		0.131926, -0.583840, -0.801078,
		0.749032, 0.588040, -0.305220,
		40.788116, 32.381214, 50.088543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711037, 31.547337, 50.066944>,  <40.263794, 31.969587, 50.302200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711037, 31.547337, 50.066944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.889591, 31.882187, 50.193409>,  <40.996723, 32.083096, 50.269287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.889591, 31.882187, 50.193409>,  <40.711037, 31.547337, 50.066944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889591, 31.882187, 50.193409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594402, -0.541497, 0.594531,
		0.668896, -0.077467, -0.739308,
		0.446390, 0.837126, 0.316159,
		41.023510, 32.133324, 50.288258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389076, 31.496284, 49.995434>,  <40.711037, 31.547337, 50.066944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389076, 31.496284, 49.995434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.408276, 31.802069, 50.252586>,  <41.419796, 31.985538, 50.406879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.408276, 31.802069, 50.252586>,  <41.389076, 31.496284, 49.995434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408276, 31.802069, 50.252586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800210, -0.414628, 0.433298,
		0.597797, 0.493646, -0.631627,
		0.047995, 0.764459, 0.642884,
		41.422672, 32.031406, 50.445450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128178, 31.649183, 50.067013>,  <41.389076, 31.496284, 49.995434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128178, 31.649183, 50.067013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.961193, 31.806999, 50.394444>,  <41.861004, 31.901688, 50.590900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.961193, 31.806999, 50.394444>,  <42.128178, 31.649183, 50.067013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961193, 31.806999, 50.394444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781885, -0.303051, 0.544809,
		0.463018, 0.867468, -0.181973,
		-0.417457, 0.394538, 0.818578,
		41.835957, 31.925360, 50.640018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647625, 32.066387, 50.395580>,  <42.128178, 31.649183, 50.067013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647625, 32.066387, 50.395580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.384876, 32.004932, 50.690853>,  <42.227226, 31.968060, 50.868015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.384876, 32.004932, 50.690853>,  <42.647625, 32.066387, 50.395580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384876, 32.004932, 50.690853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732132, -0.364034, 0.575727,
		0.180271, 0.918627, 0.351606,
		-0.656875, -0.153635, 0.738181,
		42.187813, 31.958841, 50.912308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075058, 32.140530, 50.997746>,  <42.647625, 32.066387, 50.395580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075058, 32.140530, 50.997746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.745342, 31.936497, 51.096027>,  <42.547512, 31.814077, 51.154999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.745342, 31.936497, 51.096027>,  <43.075058, 32.140530, 50.997746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745342, 31.936497, 51.096027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552156, -0.628262, 0.548098,
		-0.125204, 0.587458, 0.799510,
		-0.824286, -0.510078, 0.245707,
		42.498055, 31.783474, 51.169739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159153, 31.948048, 51.767021>,  <43.075058, 32.140530, 50.997746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159153, 31.948048, 51.767021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.911968, 31.680521, 51.601704>,  <42.763657, 31.520006, 51.502514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.911968, 31.680521, 51.601704>,  <43.159153, 31.948048, 51.767021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911968, 31.680521, 51.601704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514047, -0.741462, 0.431266,
		-0.594882, 0.054050, 0.801994,
		-0.617958, -0.668815, -0.413298,
		42.726582, 31.479877, 51.477715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011574, 31.473932, 52.304302>,  <43.159153, 31.948048, 51.767021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011574, 31.473932, 52.304302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.897011, 31.286900, 51.969795>,  <42.828274, 31.174679, 51.769093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.897011, 31.286900, 51.969795>,  <43.011574, 31.473932, 52.304302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897011, 31.286900, 51.969795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347475, -0.864096, 0.364141,
		-0.892879, -0.186289, 0.409956,
		-0.286406, -0.467583, -0.836264,
		42.811089, 31.146626, 51.718918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749329, 30.856581, 52.529671>,  <43.011574, 31.473932, 52.304302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749329, 30.856581, 52.529671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.792862, 30.791729, 52.137371>,  <42.818981, 30.752817, 51.901993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.792862, 30.791729, 52.137371>,  <42.749329, 30.856581, 52.529671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792862, 30.791729, 52.137371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335665, -0.922667, 0.189775,
		-0.935674, -0.349857, -0.045992,
		0.108830, -0.162130, -0.980750,
		42.825512, 30.743090, 51.843147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366322, 30.217186, 52.262550>,  <42.749329, 30.856581, 52.529671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366322, 30.217186, 52.262550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.700413, 30.289335, 52.054756>,  <42.900867, 30.332624, 51.930080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.700413, 30.289335, 52.054756>,  <42.366322, 30.217186, 52.262550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700413, 30.289335, 52.054756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288511, -0.947951, 0.134720,
		-0.468145, -0.262399, -0.843793,
		0.835225, 0.180375, -0.519484,
		42.950981, 30.343449, 51.898911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447529, 29.626652, 51.728024>,  <42.366322, 30.217186, 52.262550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447529, 29.626652, 51.728024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.783718, 29.794960, 51.864590>,  <42.985432, 29.895945, 51.946529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.783718, 29.794960, 51.864590>,  <42.447529, 29.626652, 51.728024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783718, 29.794960, 51.864590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412641, -0.905386, 0.100017,
		0.351198, 0.056821, -0.934575,
		0.840469, 0.420770, 0.341417,
		43.035858, 29.921190, 51.967014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138039, 28.966429, 51.932240>,  <42.447529, 29.626652, 51.728024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138039, 28.966429, 51.932240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.791012, 28.779518, 52.000340>,  <41.582798, 28.667372, 52.041199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.791012, 28.779518, 52.000340>,  <42.138039, 28.966429, 51.932240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791012, 28.779518, 52.000340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392181, 0.432293, -0.811983,
		0.305824, -0.771216, -0.558299,
		-0.867563, -0.467278, 0.170250,
		41.530743, 28.639334, 52.051414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837021, 28.983030, 51.218647>,  <42.138039, 28.966429, 51.932240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837021, 28.983030, 51.218647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.518311, 28.924084, 51.453060>,  <41.327084, 28.888716, 51.593708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.518311, 28.924084, 51.453060>,  <41.837021, 28.983030, 51.218647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518311, 28.924084, 51.453060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598732, 0.323647, -0.732648,
		-0.081702, -0.934631, -0.346105,
		-0.796772, -0.147366, 0.586036,
		41.279278, 28.879873, 51.628872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348839, 28.608463, 50.766113>,  <41.837021, 28.983030, 51.218647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348839, 28.608463, 50.766113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.177208, 28.802797, 51.070705>,  <41.074230, 28.919397, 51.253464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.177208, 28.802797, 51.070705>,  <41.348839, 28.608463, 50.766113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177208, 28.802797, 51.070705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736598, 0.299735, -0.606285,
		-0.522799, -0.821050, 0.229257,
		-0.429074, 0.485836, 0.761485,
		41.048485, 28.948547, 51.299152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698086, 28.474056, 50.577538>,  <41.348839, 28.608463, 50.766113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698086, 28.474056, 50.577538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.617077, 28.773731, 50.829792>,  <40.568470, 28.953535, 50.981144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.617077, 28.773731, 50.829792>,  <40.698086, 28.474056, 50.577538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617077, 28.773731, 50.829792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637613, 0.387895, -0.665573,
		-0.743259, -0.536897, 0.399133,
		-0.202522, 0.749186, 0.630639,
		40.556320, 28.998487, 51.018982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917648, 28.436569, 50.737301>,  <40.698086, 28.474056, 50.577538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917648, 28.436569, 50.737301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.069157, 28.800720, 50.803936>,  <40.160061, 29.019211, 50.843918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.069157, 28.800720, 50.803936>,  <39.917648, 28.436569, 50.737301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069157, 28.800720, 50.803936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777241, 0.410617, -0.476750,
		-0.502425, 0.051098, 0.863109,
		0.378768, 0.910375, 0.166589,
		40.182789, 29.073833, 50.853912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298851, 28.799583, 50.772678>,  <39.917648, 28.436569, 50.737301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298851, 28.799583, 50.772678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.587700, 29.067444, 50.703262>,  <39.761009, 29.228159, 50.661613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.587700, 29.067444, 50.703262>,  <39.298851, 28.799583, 50.772678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587700, 29.067444, 50.703262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640979, 0.553354, -0.531925,
		-0.260175, 0.495347, 0.828818,
		0.722118, 0.669649, -0.173539,
		39.804337, 29.268339, 50.651199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900108, 29.365044, 50.741158>,  <39.298851, 28.799583, 50.772678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900108, 29.365044, 50.741158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.244232, 29.457813, 50.559578>,  <39.450706, 29.513475, 50.450630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.244232, 29.457813, 50.559578>,  <38.900108, 29.365044, 50.741158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244232, 29.457813, 50.559578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469048, 0.708892, -0.526751,
		0.199636, 0.666096, 0.718653,
		0.860314, 0.231924, -0.453951,
		39.502327, 29.527391, 50.423393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922447, 30.083977, 50.725677>,  <38.900108, 29.365044, 50.741158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922447, 30.083977, 50.725677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.191441, 29.982706, 50.447491>,  <39.352837, 29.921944, 50.280579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.191441, 29.982706, 50.447491>,  <38.922447, 30.083977, 50.725677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191441, 29.982706, 50.447491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267258, 0.793200, -0.547181,
		0.690174, 0.553839, 0.465750,
		0.672483, -0.253175, -0.695464,
		39.393185, 29.906754, 50.238853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241207, 30.706543, 50.536560>,  <38.922447, 30.083977, 50.725677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241207, 30.706543, 50.536560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.293297, 30.461308, 50.224876>,  <39.324551, 30.314165, 50.037868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.293297, 30.461308, 50.224876>,  <39.241207, 30.706543, 50.536560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293297, 30.461308, 50.224876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314065, 0.719922, -0.618930,
		0.940428, 0.325319, -0.098801,
		0.130221, -0.613090, -0.779207,
		39.332363, 30.277380, 49.991116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600136, 31.135046, 50.094795>,  <39.241207, 30.706543, 50.536560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600136, 31.135046, 50.094795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.480274, 30.836441, 49.857166>,  <39.408356, 30.657278, 49.714588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.480274, 30.836441, 49.857166>,  <39.600136, 31.135046, 50.094795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480274, 30.836441, 49.857166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238591, 0.661540, -0.710943,
		0.923733, -0.071295, -0.376345,
		-0.299654, -0.746513, -0.594075,
		39.390377, 30.612488, 49.678944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044106, 31.168043, 49.567276>,  <39.600136, 31.135046, 50.094795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044106, 31.168043, 49.567276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.686916, 31.019060, 49.466183>,  <39.472603, 30.929670, 49.405525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.686916, 31.019060, 49.466183>,  <40.044106, 31.168043, 49.567276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686916, 31.019060, 49.466183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160265, 0.787793, -0.594725,
		0.420610, -0.490570, -0.763170,
		-0.892974, -0.372456, -0.252732,
		39.419025, 30.907324, 49.390362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932549, 31.364870, 48.848263>,  <40.044106, 31.168043, 49.567276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932549, 31.364870, 48.848263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.566128, 31.268064, 48.976189>,  <39.346275, 31.209980, 49.052944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.566128, 31.268064, 48.976189>,  <39.932549, 31.364870, 48.848263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566128, 31.268064, 48.976189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391981, 0.708990, -0.586246,
		-0.084863, -0.662391, -0.744336,
		-0.916051, -0.242015, 0.319812,
		39.291313, 31.195459, 49.072132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570942, 31.287992, 48.214710>,  <39.932549, 31.364870, 48.848263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570942, 31.287992, 48.214710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281250, 31.348455, 48.483826>,  <39.107437, 31.384733, 48.645294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281250, 31.348455, 48.483826>,  <39.570942, 31.287992, 48.214710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281250, 31.348455, 48.483826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466168, 0.611619, -0.639225,
		-0.508116, -0.776577, -0.372486,
		-0.724228, 0.151160, 0.672789,
		39.063980, 31.393803, 48.685661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059605, 31.297897, 47.811417>,  <39.570942, 31.287992, 48.214710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059605, 31.297897, 47.811417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.907162, 31.438065, 48.153637>,  <38.815697, 31.522165, 48.358967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.907162, 31.438065, 48.153637>,  <39.059605, 31.297897, 47.811417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907162, 31.438065, 48.153637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585044, 0.625133, -0.516656,
		-0.715876, -0.697436, -0.033236,
		-0.381111, 0.350416, 0.855548,
		38.792828, 31.543190, 48.410301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299976, 31.337465, 47.717327>,  <39.059605, 31.297897, 47.811417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299976, 31.337465, 47.717327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358471, 31.596294, 48.016636>,  <38.393566, 31.751593, 48.196220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358471, 31.596294, 48.016636>,  <38.299976, 31.337465, 47.717327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358471, 31.596294, 48.016636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585560, 0.666276, -0.461732,
		-0.797331, -0.370639, 0.476330,
		0.146232, 0.647073, 0.748274,
		38.402340, 31.790417, 48.241119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637394, 31.577805, 47.890705>,  <38.299976, 31.337465, 47.717327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637394, 31.577805, 47.890705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.901360, 31.847279, 48.023769>,  <38.059738, 32.008965, 48.103607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.901360, 31.847279, 48.023769>,  <37.637394, 31.577805, 47.890705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901360, 31.847279, 48.023769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497325, 0.723537, -0.478710,
		-0.563193, 0.150466, 0.812511,
		0.659911, 0.673687, 0.332660,
		38.099335, 32.049385, 48.123566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223179, 32.150528, 48.110287>,  <37.637394, 31.577805, 47.890705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223179, 32.150528, 48.110287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.587601, 32.310940, 48.072025>,  <37.806255, 32.407185, 48.049068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.587601, 32.310940, 48.072025>,  <37.223179, 32.150528, 48.110287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587601, 32.310940, 48.072025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401076, 0.808396, -0.430853,
		-0.095454, 0.430898, 0.897338,
		0.911058, 0.401028, -0.095658,
		37.860920, 32.431248, 48.043327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203827, 32.889709, 48.368595>,  <37.223179, 32.150528, 48.110287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203827, 32.889709, 48.368595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527950, 32.893570, 48.134224>,  <37.722424, 32.895885, 47.993599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527950, 32.893570, 48.134224>,  <37.203827, 32.889709, 48.368595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527950, 32.893570, 48.134224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301018, 0.864724, -0.402047,
		0.502787, 0.502155, 0.703594,
		0.810304, 0.009650, -0.585930,
		37.771042, 32.896465, 47.958447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487995, 33.526352, 48.437382>,  <37.203827, 32.889709, 48.368595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487995, 33.526352, 48.437382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.634945, 33.407742, 48.084766>,  <37.723114, 33.336575, 47.873196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.634945, 33.407742, 48.084766>,  <37.487995, 33.526352, 48.437382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634945, 33.407742, 48.084766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214019, 0.895431, -0.390384,
		0.905116, 0.332081, 0.265493,
		0.367370, -0.296522, -0.881541,
		37.745155, 33.318787, 47.820305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752880, 34.111488, 48.163113>,  <37.487995, 33.526352, 48.437382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752880, 34.111488, 48.163113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.701092, 33.881794, 47.839760>,  <37.670017, 33.743977, 47.645748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.701092, 33.881794, 47.839760>,  <37.752880, 34.111488, 48.163113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701092, 33.881794, 47.839760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296197, 0.800423, -0.521143,
		0.946311, 0.171967, -0.273722,
		-0.129474, -0.574239, -0.808385,
		37.662251, 33.709522, 47.597244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.713112, 33.366096, 28.496210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.363747, 33.534870, 28.398951>,  <42.154129, 33.636135, 28.340595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.363747, 33.534870, 28.398951>,  <42.713112, 33.366096, 28.496210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363747, 33.534870, 28.398951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064912, 0.595710, 0.800572,
		0.482636, 0.683447, -0.547689,
		-0.873412, 0.421936, -0.243147,
		42.101723, 33.661449, 28.326006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686180, 34.210804, 28.392647>,  <42.713112, 33.366096, 28.496210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686180, 34.210804, 28.392647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.331909, 34.066853, 28.509987>,  <42.119347, 33.980480, 28.580391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.331909, 34.066853, 28.509987>,  <42.686180, 34.210804, 28.392647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331909, 34.066853, 28.509987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047055, 0.698143, 0.714411,
		-0.461903, 0.618936, -0.635266,
		-0.885681, -0.359881, 0.293350,
		42.066204, 33.958889, 28.597992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392704, 34.780121, 28.810873>,  <42.686180, 34.210804, 28.392647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392704, 34.780121, 28.810873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.131420, 34.485527, 28.881186>,  <41.974648, 34.308769, 28.923374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.131420, 34.485527, 28.881186>,  <42.392704, 34.780121, 28.810873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131420, 34.485527, 28.881186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225123, 0.410563, 0.883605,
		-0.722935, 0.537609, -0.433985,
		-0.653212, -0.736489, 0.175782,
		41.935455, 34.264580, 28.933920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826469, 35.035374, 29.185167>,  <42.392704, 34.780121, 28.810873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826469, 35.035374, 29.185167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.784237, 34.649525, 29.281794>,  <41.758900, 34.418015, 29.339769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.784237, 34.649525, 29.281794>,  <41.826469, 35.035374, 29.185167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784237, 34.649525, 29.281794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050253, 0.247788, 0.967510,
		-0.993141, 0.090007, -0.074636,
		-0.105577, -0.964624, 0.241565,
		41.752563, 34.360138, 29.354263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295666, 34.985260, 29.635057>,  <41.826469, 35.035374, 29.185167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295666, 34.985260, 29.635057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.494057, 34.643051, 29.694504>,  <41.613091, 34.437725, 29.730171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.494057, 34.643051, 29.694504>,  <41.295666, 34.985260, 29.635057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494057, 34.643051, 29.694504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007941, 0.175610, 0.984428,
		-0.868302, -0.487070, 0.093891,
		0.495973, -0.855526, 0.148615,
		41.642849, 34.386395, 29.739088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914955, 34.592354, 30.128309>,  <41.295666, 34.985260, 29.635057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914955, 34.592354, 30.128309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.290161, 34.455513, 30.150568>,  <41.515285, 34.373409, 30.163923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.290161, 34.455513, 30.150568>,  <40.914955, 34.592354, 30.128309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290161, 34.455513, 30.150568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044733, 0.039716, 0.998209,
		-0.343700, -0.938823, 0.021951,
		0.938014, -0.342102, 0.055646,
		41.571564, 34.352882, 30.167261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900002, 34.163849, 30.737597>,  <40.914955, 34.592354, 30.128309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900002, 34.163849, 30.737597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.280704, 34.250748, 30.650923>,  <41.509129, 34.302887, 30.598919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.280704, 34.250748, 30.650923>,  <40.900002, 34.163849, 30.737597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280704, 34.250748, 30.650923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170317, 0.213358, 0.962014,
		0.255235, -0.952512, 0.166063,
		0.951760, 0.217256, -0.216685,
		41.566235, 34.315922, 30.585918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127384, 33.873840, 31.233089>,  <40.900002, 34.163849, 30.737597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127384, 33.873840, 31.233089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.456303, 34.060860, 31.103331>,  <41.653652, 34.173073, 31.025475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.456303, 34.060860, 31.103331>,  <41.127384, 33.873840, 31.233089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456303, 34.060860, 31.103331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306845, 0.115789, 0.944690,
		0.479249, -0.876352, -0.048252,
		0.822293, 0.467547, -0.324396,
		41.702991, 34.201122, 31.006012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753761, 33.591125, 31.402222>,  <41.127384, 33.873840, 31.233089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753761, 33.591125, 31.402222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.827232, 33.982727, 31.366884>,  <41.871315, 34.217690, 31.345682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.827232, 33.982727, 31.366884>,  <41.753761, 33.591125, 31.402222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827232, 33.982727, 31.366884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256780, 0.038965, 0.965684,
		0.948855, -0.200060, -0.244233,
		0.183678, 0.979009, -0.088343,
		41.882336, 34.276428, 31.340382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339451, 33.687683, 31.815252>,  <41.753761, 33.591125, 31.402222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339451, 33.687683, 31.815252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.225216, 34.065029, 31.747721>,  <42.156673, 34.291435, 31.707201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.225216, 34.065029, 31.747721>,  <42.339451, 33.687683, 31.815252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225216, 34.065029, 31.747721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476883, 0.292695, 0.828802,
		0.831277, 0.156185, -0.533465,
		-0.285589, 0.943364, -0.168829,
		42.139538, 34.348038, 31.697073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013897, 34.100216, 31.948931>,  <42.339451, 33.687683, 31.815252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013897, 34.100216, 31.948931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.663929, 34.287144, 31.999741>,  <42.453949, 34.399300, 32.030228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.663929, 34.287144, 31.999741>,  <43.013897, 34.100216, 31.948931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663929, 34.287144, 31.999741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312838, 0.345171, 0.884867,
		0.369669, 0.813922, -0.448191,
		-0.874915, 0.467319, 0.127026,
		42.401455, 34.427338, 32.037849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177452, 34.738358, 32.187927>,  <43.013897, 34.100216, 31.948931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177452, 34.738358, 32.187927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.799042, 34.702427, 32.312489>,  <42.571995, 34.680870, 32.387226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.799042, 34.702427, 32.312489>,  <43.177452, 34.738358, 32.187927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799042, 34.702427, 32.312489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220465, 0.525906, 0.821473,
		-0.237558, 0.845786, -0.477716,
		-0.946024, -0.089828, 0.311399,
		42.515236, 34.675480, 32.405907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011288, 35.382668, 32.508839>,  <43.177452, 34.738358, 32.187927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011288, 35.382668, 32.508839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.729813, 35.135010, 32.648254>,  <42.560928, 34.986416, 32.731903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.729813, 35.135010, 32.648254>,  <43.011288, 35.382668, 32.508839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729813, 35.135010, 32.648254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156070, 0.343872, 0.925956,
		-0.693155, 0.705981, -0.145349,
		-0.703689, -0.619147, 0.348539,
		42.518707, 34.949265, 32.752815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811237, 35.681564, 33.082455>,  <43.011288, 35.382668, 32.508839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811237, 35.681564, 33.082455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.672783, 35.310825, 33.140606>,  <42.589710, 35.088383, 33.175495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.672783, 35.310825, 33.140606>,  <42.811237, 35.681564, 33.082455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672783, 35.310825, 33.140606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293660, 0.040130, 0.955067,
		-0.891039, 0.373277, 0.258289,
		-0.346139, -0.926852, 0.145373,
		42.568939, 35.032768, 33.184219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354240, 35.766823, 33.647987>,  <42.811237, 35.681564, 33.082455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354240, 35.766823, 33.647987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.449154, 35.378319, 33.640488>,  <42.506104, 35.145218, 33.635986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.449154, 35.378319, 33.640488>,  <42.354240, 35.766823, 33.647987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449154, 35.378319, 33.640488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160007, 0.020036, 0.986912,
		-0.958173, -0.237178, 0.160162,
		0.237282, -0.971260, -0.018752,
		42.520340, 35.086941, 33.634861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921810, 35.426529, 34.143074>,  <42.354240, 35.766823, 33.647987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921810, 35.426529, 34.143074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.249401, 35.204872, 34.083481>,  <42.445957, 35.071877, 34.047726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.249401, 35.204872, 34.083481>,  <41.921810, 35.426529, 34.143074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249401, 35.204872, 34.083481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134097, -0.067618, 0.988659,
		-0.557931, -0.829671, 0.018930,
		0.818982, -0.554143, -0.148983,
		42.495094, 35.038628, 34.038788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012684, 34.958874, 34.723770>,  <41.921810, 35.426529, 34.143074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012684, 34.958874, 34.723770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.382900, 34.949898, 34.572578>,  <42.605030, 34.944511, 34.481865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.382900, 34.949898, 34.572578>,  <42.012684, 34.958874, 34.723770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382900, 34.949898, 34.572578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372328, -0.127629, 0.919284,
		-0.068866, -0.991568, -0.109773,
		0.925543, -0.022436, -0.377977,
		42.660564, 34.943165, 34.459187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415131, 34.583763, 35.209541>,  <42.012684, 34.958874, 34.723770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415131, 34.583763, 35.209541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.677322, 34.789852, 34.988670>,  <42.834637, 34.913506, 34.856148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.677322, 34.789852, 34.988670>,  <42.415131, 34.583763, 35.209541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677322, 34.789852, 34.988670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578396, 0.127649, 0.805708,
		0.485601, -0.847499, -0.214331,
		0.655477, 0.515220, -0.552176,
		42.873966, 34.944420, 34.823017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.116516, 34.298210, 35.313652>,  <42.415131, 34.583763, 35.209541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.116516, 34.298210, 35.313652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.225590, 34.650486, 35.158722>,  <43.291035, 34.861851, 35.065762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.225590, 34.650486, 35.158722>,  <43.116516, 34.298210, 35.313652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225590, 34.650486, 35.158722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689827, 0.101663, 0.716801,
		0.670659, -0.462648, -0.579804,
		0.272682, 0.880694, -0.387328,
		43.307396, 34.914696, 35.042522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790394, 34.298607, 35.329800>,  <43.116516, 34.298210, 35.313652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790394, 34.298607, 35.329800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.710075, 34.689735, 35.306000>,  <43.661884, 34.924412, 35.291721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.710075, 34.689735, 35.306000>,  <43.790394, 34.298607, 35.329800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710075, 34.689735, 35.306000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657516, 0.179544, 0.731735,
		0.726191, 0.107809, -0.678988,
		-0.200796, 0.977825, -0.059497,
		43.649837, 34.983082, 35.288151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476585, 34.736397, 35.221882>,  <43.790394, 34.298607, 35.329800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476585, 34.736397, 35.221882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.206188, 34.987732, 35.375885>,  <44.043949, 35.138535, 35.468288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.206188, 34.987732, 35.375885>,  <44.476585, 34.736397, 35.221882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206188, 34.987732, 35.375885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649562, 0.261334, 0.713985,
		0.348008, 0.732732, -0.584803,
		-0.675988, 0.628338, 0.385008,
		44.003391, 35.176235, 35.491386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547012, 35.311806, 35.804714>,  <44.476585, 34.736397, 35.221882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547012, 35.311806, 35.804714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.866631, 35.101883, 35.922096>,  <45.058399, 34.975929, 35.992527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.866631, 35.101883, 35.922096>,  <44.547012, 35.311806, 35.804714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866631, 35.101883, 35.922096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042733, -0.536382, -0.842892,
		0.599756, 0.660965, -0.451018,
		0.799041, -0.524803, 0.293454,
		45.106342, 34.944443, 36.010132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.076504, 35.257992, 35.257843>,  <44.547012, 35.311806, 35.804714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.076504, 35.257992, 35.257843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.175007, 34.949162, 35.492195>,  <45.234108, 34.763863, 35.632805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.175007, 34.949162, 35.492195>,  <45.076504, 35.257992, 35.257843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175007, 34.949162, 35.492195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105730, -0.579487, -0.808094,
		0.963421, 0.260943, -0.061071,
		0.246257, -0.772077, 0.585880,
		45.248882, 34.717537, 35.667957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.677441, 34.989288, 34.938515>,  <45.076504, 35.257992, 35.257843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.677441, 34.989288, 34.938515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.558876, 34.685642, 35.170338>,  <45.487736, 34.503456, 35.309429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.558876, 34.685642, 35.170338>,  <45.677441, 34.989288, 34.938515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.558876, 34.685642, 35.170338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180621, -0.640430, -0.746476,
		0.937825, -0.116585, 0.326943,
		-0.296412, -0.759116, 0.579553,
		45.469952, 34.457909, 35.344204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.248779, 34.438007, 34.924316>,  <45.677441, 34.989288, 34.938515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.248779, 34.438007, 34.924316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.887772, 34.289295, 35.011265>,  <45.671169, 34.200069, 35.063435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.887772, 34.289295, 35.011265>,  <46.248779, 34.438007, 34.924316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.887772, 34.289295, 35.011265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174065, -0.776576, -0.605501,
		0.393913, -0.508638, 0.765585,
		-0.902516, -0.371776, 0.217367,
		45.617016, 34.177761, 35.076473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.349976, 33.746449, 35.015167>,  <46.248779, 34.438007, 34.924316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.349976, 33.746449, 35.015167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.955811, 33.756016, 34.947777>,  <45.719311, 33.761757, 34.907341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.955811, 33.756016, 34.947777>,  <46.349976, 33.746449, 35.015167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.955811, 33.756016, 34.947777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111798, -0.655435, -0.746931,
		-0.128291, -0.754873, 0.643202,
		-0.985415, 0.023916, -0.168480,
		45.660187, 33.763191, 34.897232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.114086, 33.026543, 34.910107>,  <46.349976, 33.746449, 35.015167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.114086, 33.026543, 34.910107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.833710, 33.264015, 34.752003>,  <45.665485, 33.406498, 34.657143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.833710, 33.264015, 34.752003>,  <46.114086, 33.026543, 34.910107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833710, 33.264015, 34.752003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024470, -0.573876, -0.818577,
		-0.712804, -0.564098, 0.416778,
		-0.700937, 0.593683, -0.395258,
		45.623428, 33.442120, 34.633427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.740875, 32.500008, 34.485630>,  <46.114086, 33.026543, 34.910107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.740875, 32.500008, 34.485630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.618935, 32.853428, 34.343414>,  <45.545773, 33.065479, 34.258083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.618935, 32.853428, 34.343414>,  <45.740875, 32.500008, 34.485630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618935, 32.853428, 34.343414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337554, -0.449311, -0.827150,
		-0.890576, -0.132142, 0.435217,
		-0.304849, 0.883549, -0.355540,
		45.527481, 33.118492, 34.236752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.044651, 32.377010, 34.168694>,  <45.740875, 32.500008, 34.485630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.044651, 32.377010, 34.168694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172550, 32.722866, 34.013687>,  <45.249290, 32.930378, 33.920685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172550, 32.722866, 34.013687>,  <45.044651, 32.377010, 34.168694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172550, 32.722866, 34.013687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371989, -0.261591, -0.890615,
		-0.871427, 0.428922, 0.237992,
		0.319747, 0.864636, -0.387512,
		45.268475, 32.982258, 33.897434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.508659, 32.528923, 33.756027>,  <45.044651, 32.377010, 34.168694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.508659, 32.528923, 33.756027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.793411, 32.763893, 33.602058>,  <44.964260, 32.904877, 33.509678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.793411, 32.763893, 33.602058>,  <44.508659, 32.528923, 33.756027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793411, 32.763893, 33.602058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317150, -0.220123, -0.922476,
		-0.626616, 0.778766, 0.029602,
		0.711876, 0.587426, -0.384919,
		45.006973, 32.940121, 33.486584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.158775, 33.066540, 33.418381>,  <44.508659, 32.528923, 33.756027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.158775, 33.066540, 33.418381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.513649, 33.042137, 33.235432>,  <44.726574, 33.027496, 33.125664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.513649, 33.042137, 33.235432>,  <44.158775, 33.066540, 33.418381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.513649, 33.042137, 33.235432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461117, -0.153362, -0.873986,
		-0.016826, 0.986285, -0.164191,
		0.887180, -0.061005, -0.457373,
		44.779804, 33.023834, 33.098221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096180, 33.533916, 32.930164>,  <44.158775, 33.066540, 33.418381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096180, 33.533916, 32.930164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.390701, 33.285000, 32.823868>,  <44.567413, 33.135651, 32.760090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.390701, 33.285000, 32.823868>,  <44.096180, 33.533916, 32.930164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390701, 33.285000, 32.823868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394924, -0.076307, -0.915539,
		0.549451, 0.779060, -0.301941,
		0.736300, -0.622288, -0.265743,
		44.611591, 33.098312, 32.744144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301235, 33.706844, 32.179966>,  <44.096180, 33.533916, 32.930164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301235, 33.706844, 32.179966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.469521, 33.344254, 32.194408>,  <44.570492, 33.126701, 32.203075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.469521, 33.344254, 32.194408>,  <44.301235, 33.706844, 32.179966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469521, 33.344254, 32.194408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455071, -0.245307, -0.855999,
		0.784799, 0.343699, -0.515714,
		0.420715, -0.906474, 0.036109,
		44.595734, 33.072311, 32.205242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725044, 33.645023, 31.531305>,  <44.301235, 33.706844, 32.179966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725044, 33.645023, 31.531305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.633884, 33.275642, 31.654781>,  <44.579189, 33.054012, 31.728867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.633884, 33.275642, 31.654781>,  <44.725044, 33.645023, 31.531305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.633884, 33.275642, 31.654781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257369, -0.248624, -0.933781,
		0.939054, -0.292256, -0.181007,
		-0.227900, -0.923457, 0.308689,
		44.565514, 32.998604, 31.747389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.003742, 33.172215, 31.005938>,  <44.725044, 33.645023, 31.531305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.003742, 33.172215, 31.005938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756554, 32.933125, 31.210222>,  <44.608238, 32.789669, 31.332792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756554, 32.933125, 31.210222>,  <45.003742, 33.172215, 31.005938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756554, 32.933125, 31.210222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255063, -0.462035, -0.849392,
		0.743673, -0.655167, 0.133068,
		-0.617975, -0.597730, 0.510712,
		44.571159, 32.753807, 31.363436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026794, 32.428921, 30.761774>,  <45.003742, 33.172215, 31.005938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026794, 32.428921, 30.761774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675503, 32.476868, 30.946964>,  <44.464729, 32.505634, 31.058079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675503, 32.476868, 30.946964>,  <45.026794, 32.428921, 30.761774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675503, 32.476868, 30.946964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458677, -0.485163, -0.744468,
		0.135382, -0.866169, 0.481064,
		-0.878230, 0.119865, 0.462975,
		44.412033, 32.512829, 31.085857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.790154, 31.758587, 30.844540>,  <45.026794, 32.428921, 30.761774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.790154, 31.758587, 30.844540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.476418, 32.005901, 30.864687>,  <44.288177, 32.154289, 30.876776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.476418, 32.005901, 30.864687>,  <44.790154, 31.758587, 30.844540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476418, 32.005901, 30.864687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385468, -0.422148, -0.820491,
		-0.486038, -0.662955, 0.569436,
		-0.784335, 0.618289, 0.050368,
		44.241116, 32.191387, 30.879797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258530, 31.300955, 30.551857>,  <44.790154, 31.758587, 30.844540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258530, 31.300955, 30.551857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.108189, 31.671515, 30.560982>,  <44.017982, 31.893850, 30.566456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.108189, 31.671515, 30.560982>,  <44.258530, 31.300955, 30.551857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108189, 31.671515, 30.560982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490625, -0.178051, -0.852986,
		-0.786143, -0.331791, 0.521435,
		-0.375855, 0.926398, 0.022812,
		43.995434, 31.949434, 30.567825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566311, 31.247276, 30.576744>,  <44.258530, 31.300955, 30.551857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566311, 31.247276, 30.576744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.597294, 31.613718, 30.419390>,  <43.615883, 31.833584, 30.324978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.597294, 31.613718, 30.419390>,  <43.566311, 31.247276, 30.576744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597294, 31.613718, 30.419390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332991, -0.348140, -0.876308,
		-0.939743, 0.198868, 0.278090,
		0.077455, 0.916106, -0.393384,
		43.620529, 31.888550, 30.301374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839283, 31.505695, 30.409500>,  <43.566311, 31.247276, 30.576744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839283, 31.505695, 30.409500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.087467, 31.714151, 30.175083>,  <43.236378, 31.839224, 30.034433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.087467, 31.714151, 30.175083>,  <42.839283, 31.505695, 30.409500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087467, 31.714151, 30.175083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580063, -0.197948, -0.790154,
		-0.527786, 0.830199, 0.179475,
		0.620458, 0.521139, -0.586042,
		43.273605, 31.870493, 29.999271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441685, 31.689884, 29.893551>,  <42.839283, 31.505695, 30.409500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441685, 31.689884, 29.893551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.791367, 31.781557, 29.722324>,  <43.001175, 31.836561, 29.619589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.791367, 31.781557, 29.722324>,  <42.441685, 31.689884, 29.893551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791367, 31.781557, 29.722324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395041, -0.176896, -0.901471,
		-0.282322, 0.957175, -0.064108,
		0.874206, 0.229180, -0.428065,
		43.053627, 31.850311, 29.593904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275291, 32.117123, 29.278925>,  <42.441685, 31.689884, 29.893551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275291, 32.117123, 29.278925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.646255, 31.984293, 29.210052>,  <42.868832, 31.904596, 29.168728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.646255, 31.984293, 29.210052>,  <42.275291, 32.117123, 29.278925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646255, 31.984293, 29.210052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302243, -0.394050, -0.867971,
		0.220379, 0.857003, -0.465810,
		0.927406, -0.332071, -0.172183,
		42.924477, 31.884672, 29.158398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.640171, 36.613575, 43.265678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345551, 36.363861, 43.161549>,  <40.168777, 36.214035, 43.099072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345551, 36.363861, 43.161549>,  <40.640171, 36.613575, 43.265678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345551, 36.363861, 43.161549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207104, 0.574547, -0.791835,
		0.643900, -0.529308, -0.552472,
		-0.736546, -0.624282, -0.260329,
		40.124588, 36.176579, 43.083450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771637, 36.372612, 42.553875>,  <40.640171, 36.613575, 43.265678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771637, 36.372612, 42.553875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380535, 36.365887, 42.637501>,  <40.145874, 36.361851, 42.687675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380535, 36.365887, 42.637501>,  <40.771637, 36.372612, 42.553875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380535, 36.365887, 42.637501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178814, 0.587774, -0.789017,
		-0.109613, -0.808851, -0.577707,
		-0.977758, -0.016815, 0.209062,
		40.087208, 36.360844, 42.700218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427101, 36.229980, 41.872585>,  <40.771637, 36.372612, 42.553875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427101, 36.229980, 41.872585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156731, 36.389240, 42.120651>,  <39.994511, 36.484795, 42.269489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156731, 36.389240, 42.120651>,  <40.427101, 36.229980, 41.872585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156731, 36.389240, 42.120651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265624, 0.653326, -0.708949,
		-0.687438, -0.643926, -0.335841,
		-0.675924, 0.398151, 0.620163,
		39.953953, 36.508686, 42.306702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762527, 36.207607, 41.512543>,  <40.427101, 36.229980, 41.872585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762527, 36.207607, 41.512543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668400, 36.469826, 41.799564>,  <39.611923, 36.627155, 41.971779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668400, 36.469826, 41.799564>,  <39.762527, 36.207607, 41.512543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668400, 36.469826, 41.799564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349610, 0.631777, -0.691831,
		-0.906861, -0.413667, 0.080515,
		-0.235321, 0.655544, 0.717556,
		39.597805, 36.666489, 42.014832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165573, 36.265320, 41.403988>,  <39.762527, 36.207607, 41.512543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165573, 36.265320, 41.403988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253723, 36.594055, 41.614136>,  <39.306614, 36.791298, 41.740223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253723, 36.594055, 41.614136>,  <39.165573, 36.265320, 41.403988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253723, 36.594055, 41.614136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299419, 0.569605, -0.765440,
		-0.928322, 0.011381, 0.371604,
		0.220379, 0.821840, 0.525368,
		39.319836, 36.840607, 41.771748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586040, 36.522449, 41.682293>,  <39.165573, 36.265320, 41.403988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586040, 36.522449, 41.682293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850693, 36.814121, 41.612392>,  <39.009483, 36.989124, 41.570454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850693, 36.814121, 41.612392>,  <38.586040, 36.522449, 41.682293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850693, 36.814121, 41.612392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622923, 0.404786, -0.669414,
		-0.417387, 0.551762, 0.722043,
		0.661630, 0.729183, -0.174753,
		39.049183, 37.032875, 41.559967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052479, 37.045208, 41.460926>,  <38.586040, 36.522449, 41.682293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052479, 37.045208, 41.460926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419754, 37.198772, 41.421841>,  <38.640118, 37.290909, 41.398388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419754, 37.198772, 41.421841>,  <38.052479, 37.045208, 41.460926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419754, 37.198772, 41.421841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327845, 0.597931, -0.731434,
		-0.222375, 0.703629, 0.674874,
		0.918187, 0.383907, -0.097716,
		38.695210, 37.313946, 41.392525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992577, 37.823879, 41.431129>,  <38.052479, 37.045208, 41.460926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992577, 37.823879, 41.431129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328419, 37.693092, 41.257626>,  <38.529926, 37.614620, 41.153522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328419, 37.693092, 41.257626>,  <37.992577, 37.823879, 41.431129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328419, 37.693092, 41.257626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166175, 0.605649, -0.778188,
		0.517148, 0.725454, 0.454175,
		0.839609, -0.326966, -0.433762,
		38.580303, 37.595001, 41.127499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276859, 38.372704, 41.115700>,  <37.992577, 37.823879, 41.431129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276859, 38.372704, 41.115700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437950, 38.064198, 40.918537>,  <38.534603, 37.879093, 40.800240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437950, 38.064198, 40.918537>,  <38.276859, 38.372704, 41.115700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437950, 38.064198, 40.918537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114930, 0.491639, -0.863181,
		0.908077, 0.404275, 0.109354,
		0.402725, -0.771267, -0.492909,
		38.558769, 37.832817, 40.770664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695168, 38.657803, 40.581810>,  <38.276859, 38.372704, 41.115700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695168, 38.657803, 40.581810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586975, 38.287899, 40.474728>,  <38.522060, 38.065956, 40.410477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586975, 38.287899, 40.474728>,  <38.695168, 38.657803, 40.581810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586975, 38.287899, 40.474728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350007, 0.353500, -0.867486,
		0.896848, -0.140935, -0.419285,
		-0.270477, -0.924757, -0.267708,
		38.505833, 38.010471, 40.394417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914917, 38.580524, 39.900932>,  <38.695168, 38.657803, 40.581810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914917, 38.580524, 39.900932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649052, 38.283718, 39.935890>,  <38.489532, 38.105637, 39.956867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649052, 38.283718, 39.935890>,  <38.914917, 38.580524, 39.900932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649052, 38.283718, 39.935890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414464, 0.268851, -0.869447,
		0.621645, -0.614113, -0.486233,
		-0.664664, -0.742014, 0.087398,
		38.449654, 38.061115, 39.962109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903435, 38.327843, 39.244564>,  <38.914917, 38.580524, 39.900932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903435, 38.327843, 39.244564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569412, 38.165730, 39.393383>,  <38.368996, 38.068462, 39.482674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569412, 38.165730, 39.393383>,  <38.903435, 38.327843, 39.244564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569412, 38.165730, 39.393383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472670, 0.182462, -0.862143,
		0.281525, -0.895798, -0.343932,
		-0.835061, -0.405281, 0.372050,
		38.318893, 38.044144, 39.504997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616089, 37.842548, 38.809170>,  <38.903435, 38.327843, 39.244564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616089, 37.842548, 38.809170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297184, 37.981091, 39.006924>,  <38.105843, 38.064217, 39.125576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297184, 37.981091, 39.006924>,  <38.616089, 37.842548, 38.809170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297184, 37.981091, 39.006924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469928, 0.157921, -0.868464,
		-0.378872, -0.924715, 0.036859,
		-0.797261, 0.346357, 0.494381,
		38.058006, 38.084999, 39.155239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526978, 37.730881, 38.056343>,  <38.616089, 37.842548, 38.809170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526978, 37.730881, 38.056343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431568, 37.504623, 37.740582>,  <38.374321, 37.368870, 37.551125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431568, 37.504623, 37.740582>,  <38.526978, 37.730881, 38.056343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431568, 37.504623, 37.740582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051582, -0.819097, 0.571332,
		-0.969765, 0.095558, 0.224552,
		-0.238525, -0.565641, -0.789402,
		38.360012, 37.334930, 37.503761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933220, 37.274441, 38.166649>,  <38.526978, 37.730881, 38.056343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933220, 37.274441, 38.166649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181175, 37.120316, 37.893219>,  <38.329948, 37.027840, 37.729160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181175, 37.120316, 37.893219>,  <37.933220, 37.274441, 38.166649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181175, 37.120316, 37.893219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086719, -0.832165, 0.547706,
		-0.779886, -0.398794, -0.482433,
		0.619885, -0.385312, -0.683576,
		38.367142, 37.004723, 37.688145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766132, 36.568794, 37.917843>,  <37.933220, 37.274441, 38.166649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766132, 36.568794, 37.917843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162998, 36.613953, 37.896435>,  <38.401119, 36.641048, 37.883591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162998, 36.613953, 37.896435>,  <37.766132, 36.568794, 37.917843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162998, 36.613953, 37.896435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124866, -0.881245, 0.455869,
		0.004301, -0.458980, -0.888436,
		0.992164, 0.112896, -0.053520,
		38.460648, 36.647820, 37.880379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962456, 35.866310, 37.710361>,  <37.766132, 36.568794, 37.917843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962456, 35.866310, 37.710361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261425, 36.058178, 37.894222>,  <38.440807, 36.173298, 38.004539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261425, 36.058178, 37.894222>,  <37.962456, 35.866310, 37.710361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261425, 36.058178, 37.894222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162048, -0.802611, 0.574069,
		0.644287, -0.354584, -0.677616,
		0.747418, 0.479672, 0.459652,
		38.485649, 36.202080, 38.032120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486382, 35.265339, 37.798027>,  <37.962456, 35.866310, 37.710361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486382, 35.265339, 37.798027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584084, 35.557549, 38.053112>,  <38.642704, 35.732876, 38.206161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584084, 35.557549, 38.053112>,  <38.486382, 35.265339, 37.798027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584084, 35.557549, 38.053112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193573, -0.681125, 0.706115,
		0.950195, -0.049026, -0.307776,
		0.244252, 0.730524, 0.637711,
		38.657360, 35.776707, 38.244427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115746, 35.032707, 38.115086>,  <38.486382, 35.265339, 37.798027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115746, 35.032707, 38.115086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953396, 35.307770, 38.355881>,  <38.855988, 35.472809, 38.500359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953396, 35.307770, 38.355881>,  <39.115746, 35.032707, 38.115086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953396, 35.307770, 38.355881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099904, -0.621352, 0.777136,
		0.908453, 0.375559, 0.183489,
		-0.405872, 0.687660, 0.601989,
		38.831635, 35.514069, 38.536476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545494, 35.107464, 38.795258>,  <39.115746, 35.032707, 38.115086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545494, 35.107464, 38.795258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189949, 35.266712, 38.885963>,  <38.976624, 35.362263, 38.940388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189949, 35.266712, 38.885963>,  <39.545494, 35.107464, 38.795258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189949, 35.266712, 38.885963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004273, -0.502119, 0.864788,
		0.458156, 0.767707, 0.448016,
		-0.888861, 0.398122, 0.226768,
		38.923290, 35.386150, 38.953995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632168, 35.416943, 39.490738>,  <39.545494, 35.107464, 38.795258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632168, 35.416943, 39.490738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244816, 35.344688, 39.421898>,  <39.012405, 35.301334, 39.380592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244816, 35.344688, 39.421898>,  <39.632168, 35.416943, 39.490738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244816, 35.344688, 39.421898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072345, -0.456867, 0.886588,
		-0.238779, 0.871001, 0.429350,
		-0.968375, -0.180637, -0.172103,
		38.954304, 35.290497, 39.370266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301804, 35.610859, 40.136932>,  <39.632168, 35.416943, 39.490738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301804, 35.610859, 40.136932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025787, 35.377911, 39.965034>,  <38.860176, 35.238140, 39.861897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025787, 35.377911, 39.965034>,  <39.301804, 35.610859, 40.136932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025787, 35.377911, 39.965034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040128, -0.562066, 0.826118,
		-0.722655, 0.587302, 0.364480,
		-0.690043, -0.582373, -0.429748,
		38.818775, 35.203197, 39.836109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811146, 35.439766, 40.662075>,  <39.301804, 35.610859, 40.136932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811146, 35.439766, 40.662075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748455, 35.157887, 40.385284>,  <38.710842, 34.988758, 40.219212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748455, 35.157887, 40.385284>,  <38.811146, 35.439766, 40.662075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748455, 35.157887, 40.385284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136699, -0.678414, 0.721850,
		-0.978136, 0.207726, 0.009994,
		-0.156727, -0.704701, -0.691977,
		38.701435, 34.946476, 40.177692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301701, 35.078640, 40.999390>,  <38.811146, 35.439766, 40.662075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301701, 35.078640, 40.999390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444210, 34.832512, 40.718121>,  <38.529716, 34.684837, 40.549358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444210, 34.832512, 40.718121>,  <38.301701, 35.078640, 40.999390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444210, 34.832512, 40.718121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187677, -0.784343, 0.591255,
		-0.915340, -0.078679, -0.394921,
		0.356273, -0.615317, -0.703174,
		38.551090, 34.647915, 40.507168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887241, 34.550877, 40.992161>,  <38.301701, 35.078640, 40.999390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887241, 34.550877, 40.992161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230198, 34.430019, 40.825508>,  <38.435970, 34.357506, 40.725517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230198, 34.430019, 40.825508>,  <37.887241, 34.550877, 40.992161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230198, 34.430019, 40.825508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054692, -0.751455, 0.657514,
		-0.511748, -0.586535, -0.627767,
		0.857393, -0.302147, -0.416634,
		38.487415, 34.339375, 40.700520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878544, 33.854343, 41.121792>,  <37.887241, 34.550877, 40.992161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878544, 33.854343, 41.121792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268009, 33.900990, 41.043438>,  <38.501690, 33.928978, 40.996426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268009, 33.900990, 41.043438>,  <37.878544, 33.854343, 41.121792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268009, 33.900990, 41.043438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210313, -0.791088, 0.574412,
		-0.087974, -0.600483, -0.794783,
		0.973668, 0.116620, -0.195884,
		38.560108, 33.935974, 40.984673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177593, 33.182774, 40.890968>,  <37.878544, 33.854343, 41.121792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177593, 33.182774, 40.890968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448685, 33.417805, 41.067802>,  <38.611340, 33.558823, 41.173904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448685, 33.417805, 41.067802>,  <38.177593, 33.182774, 40.890968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448685, 33.417805, 41.067802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147006, -0.697354, 0.701489,
		0.720471, -0.410427, -0.558992,
		0.677725, 0.587578, 0.442088,
		38.652000, 33.594078, 41.200428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730701, 32.741837, 41.044025>,  <38.177593, 33.182774, 40.890968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730701, 32.741837, 41.044025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791950, 33.054569, 41.285782>,  <38.828701, 33.242210, 41.430836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791950, 33.054569, 41.285782>,  <38.730701, 32.741837, 41.044025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791950, 33.054569, 41.285782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162479, -0.623203, 0.764996,
		0.974758, -0.018937, -0.222458,
		0.153123, 0.781831, 0.604395,
		38.837887, 33.289120, 41.467102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833241, 32.247414, 40.596962>,  <38.730701, 32.741837, 41.044025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833241, 32.247414, 40.596962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561157, 31.955681, 40.567596>,  <38.397907, 31.780642, 40.549976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561157, 31.955681, 40.567596>,  <38.833241, 32.247414, 40.596962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561157, 31.955681, 40.567596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570197, 0.589395, -0.572266,
		0.460638, -0.347405, -0.816776,
		-0.680212, -0.729330, -0.073409,
		38.357094, 31.736881, 40.545574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774487, 32.160419, 39.943295>,  <38.833241, 32.247414, 40.596962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774487, 32.160419, 39.943295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452271, 32.008289, 40.125046>,  <38.258942, 31.917011, 40.234097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452271, 32.008289, 40.125046>,  <38.774487, 32.160419, 39.943295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452271, 32.008289, 40.125046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589140, 0.431967, -0.682876,
		0.063437, -0.817776, -0.572030,
		-0.805537, -0.380325, 0.454382,
		38.210609, 31.894192, 40.261360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458961, 31.984552, 39.386597>,  <38.774487, 32.160419, 39.943295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458961, 31.984552, 39.386597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167728, 31.976227, 39.660667>,  <37.992989, 31.971231, 39.825108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167728, 31.976227, 39.660667>,  <38.458961, 31.984552, 39.386597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167728, 31.976227, 39.660667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594580, 0.516590, -0.616124,
		-0.341131, -0.855980, -0.388495,
		-0.728083, -0.020812, 0.685173,
		37.949303, 31.969984, 39.866219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950176, 31.782484, 39.072155>,  <38.458961, 31.984552, 39.386597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950176, 31.782484, 39.072155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771675, 31.962383, 39.381630>,  <37.664574, 32.070324, 39.567314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771675, 31.962383, 39.381630>,  <37.950176, 31.782484, 39.072155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771675, 31.962383, 39.381630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601824, 0.489025, -0.631397,
		-0.662320, -0.747383, 0.052441,
		-0.446251, 0.449748, 0.773685,
		37.637798, 32.097309, 39.613735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185841, 31.803890, 38.820293>,  <37.950176, 31.782484, 39.072155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185841, 31.803890, 38.820293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264500, 32.084190, 39.094601>,  <37.311695, 32.252373, 39.259186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264500, 32.084190, 39.094601>,  <37.185841, 31.803890, 38.820293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264500, 32.084190, 39.094601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700518, 0.589781, -0.401788,
		-0.686005, -0.401379, 0.606871,
		0.196652, 0.700752, 0.685766,
		37.323494, 32.294415, 39.300331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585995, 32.190731, 38.841965>,  <37.185841, 31.803890, 38.820293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585995, 32.190731, 38.841965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820042, 32.461155, 39.021111>,  <36.960468, 32.623409, 39.128597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820042, 32.461155, 39.021111>,  <36.585995, 32.190731, 38.841965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820042, 32.461155, 39.021111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599914, 0.732455, -0.321889,
		-0.545659, -0.080340, 0.834147,
		0.585114, 0.676059, 0.447868,
		36.995575, 32.663971, 39.155472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151752, 32.580791, 39.182423>,  <36.585995, 32.190731, 38.841965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151752, 32.580791, 39.182423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480591, 32.801071, 39.124611>,  <36.677895, 32.933239, 39.089924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480591, 32.801071, 39.124611>,  <36.151752, 32.580791, 39.182423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480591, 32.801071, 39.124611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560162, 0.736939, -0.378337,
		-0.101842, 0.391988, 0.914316,
		0.822099, 0.550696, -0.144525,
		36.727219, 32.966278, 39.081253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937645, 33.250156, 39.319881>,  <36.151752, 32.580791, 39.182423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937645, 33.250156, 39.319881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272114, 33.298832, 39.105961>,  <36.472794, 33.328037, 38.977608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272114, 33.298832, 39.105961>,  <35.937645, 33.250156, 39.319881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272114, 33.298832, 39.105961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372714, 0.841417, -0.391284,
		0.402374, 0.526507, 0.748924,
		0.836170, 0.121692, -0.534800,
		36.522964, 33.335339, 38.945522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022301, 33.997070, 39.303047>,  <35.937645, 33.250156, 39.319881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022301, 33.997070, 39.303047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251640, 33.854492, 39.007965>,  <36.389244, 33.768944, 38.830914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251640, 33.854492, 39.007965>,  <36.022301, 33.997070, 39.303047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251640, 33.854492, 39.007965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253309, 0.779167, -0.573353,
		0.779167, 0.515602, 0.356446,
		0.573353, -0.356446, -0.737708,
		36.423645, 33.747559, 38.786652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277084, 34.581928, 38.839642>,  <36.022301, 33.997070, 39.303047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277084, 34.581928, 38.839642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303089, 34.264107, 38.598160>,  <36.318691, 34.073414, 38.453270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303089, 34.264107, 38.598160>,  <36.277084, 34.581928, 38.839642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303089, 34.264107, 38.598160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446950, 0.517719, -0.729523,
		0.892194, 0.317252, -0.321469,
		0.065012, -0.794556, -0.603701,
		36.322594, 34.025742, 38.417049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319881, 34.952168, 38.135426>,  <36.277084, 34.581928, 38.839642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319881, 34.952168, 38.135426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213428, 34.570435, 38.081131>,  <36.149559, 34.341396, 38.048553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213428, 34.570435, 38.081131>,  <36.319881, 34.952168, 38.135426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213428, 34.570435, 38.081131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675644, 0.285114, -0.679864,
		0.687518, -0.089220, -0.720666,
		-0.266130, -0.954332, -0.135740,
		36.133591, 34.284134, 38.040409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424286, 34.785904, 37.405266>,  <36.319881, 34.952168, 38.135426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424286, 34.785904, 37.405266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152248, 34.535213, 37.557415>,  <35.989025, 34.384800, 37.648705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152248, 34.535213, 37.557415>,  <36.424286, 34.785904, 37.405266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152248, 34.535213, 37.557415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662262, 0.302658, -0.685425,
		0.314448, -0.718064, -0.620892,
		-0.680097, -0.626724, 0.380376,
		35.948219, 34.347195, 37.671528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.849304, 29.366318, 42.115410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.475052, 29.264305, 42.213024>,  <40.250500, 29.203098, 42.271591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.475052, 29.264305, 42.213024>,  <40.849304, 29.366318, 42.115410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475052, 29.264305, 42.213024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338477, 0.452101, -0.825251,
		0.100133, -0.854731, -0.509321,
		-0.935632, -0.255028, 0.244036,
		40.194363, 29.187796, 42.286236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581242, 29.285070, 41.523525>,  <40.849304, 29.366318, 42.115410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581242, 29.285070, 41.523525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.257656, 29.309380, 41.757404>,  <40.063503, 29.323965, 41.897732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.257656, 29.309380, 41.757404>,  <40.581242, 29.285070, 41.523525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257656, 29.309380, 41.757404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459104, 0.555886, -0.692975,
		-0.367143, -0.829034, -0.421792,
		-0.808968, 0.060775, 0.584703,
		40.014965, 29.327612, 41.932816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961418, 29.081812, 41.092724>,  <40.581242, 29.285070, 41.523525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961418, 29.081812, 41.092724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.859432, 29.307240, 41.407021>,  <39.798241, 29.442495, 41.595596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.859432, 29.307240, 41.407021>,  <39.961418, 29.081812, 41.092724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859432, 29.307240, 41.407021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608818, 0.537737, -0.583249,
		-0.751220, -0.627080, 0.206005,
		-0.254967, 0.563568, 0.785737,
		39.782944, 29.476311, 41.642742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331200, 29.051838, 41.084606>,  <39.961418, 29.081812, 41.092724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331200, 29.051838, 41.084606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416313, 29.384296, 41.290096>,  <39.467381, 29.583773, 41.413391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416313, 29.384296, 41.290096>,  <39.331200, 29.051838, 41.084606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416313, 29.384296, 41.290096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605521, 0.524805, -0.598267,
		-0.766856, -0.183773, 0.614946,
		0.212782, 0.831148, 0.513728,
		39.480148, 29.633640, 41.444214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689476, 29.435587, 41.237537>,  <39.331200, 29.051838, 41.084606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689476, 29.435587, 41.237537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.965630, 29.715746, 41.309994>,  <39.131321, 29.883841, 41.353470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.965630, 29.715746, 41.309994>,  <38.689476, 29.435587, 41.237537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965630, 29.715746, 41.309994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566721, 0.679229, -0.466342,
		-0.449662, 0.219298, 0.865859,
		0.690385, 0.700397, 0.181144,
		39.172745, 29.925865, 41.364338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304077, 30.052834, 41.498016>,  <38.689476, 29.435587, 41.237537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304077, 30.052834, 41.498016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.656136, 30.192522, 41.369396>,  <38.867371, 30.276335, 41.292225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.656136, 30.192522, 41.369396>,  <38.304077, 30.052834, 41.498016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656136, 30.192522, 41.369396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441954, 0.850049, -0.286518,
		0.173273, 0.394286, 0.902505,
		0.880144, 0.349220, -0.321546,
		38.920177, 30.297289, 41.272934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347198, 30.703354, 41.755371>,  <38.304077, 30.052834, 41.498016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347198, 30.703354, 41.755371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.584187, 30.695890, 41.433220>,  <38.726379, 30.691412, 41.239929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.584187, 30.695890, 41.433220>,  <38.347198, 30.703354, 41.755371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584187, 30.695890, 41.433220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366479, 0.884053, -0.290077,
		0.717408, 0.467015, 0.516935,
		0.592468, -0.018658, -0.805378,
		38.761929, 30.690292, 41.191605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498512, 31.387976, 41.681889>,  <38.347198, 30.703354, 41.755371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498512, 31.387976, 41.681889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558407, 31.220837, 41.323452>,  <38.594341, 31.120554, 41.108391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558407, 31.220837, 41.323452>,  <38.498512, 31.387976, 41.681889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558407, 31.220837, 41.323452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577982, 0.698337, -0.422211,
		0.802195, 0.581145, -0.136944,
		0.149733, -0.417847, -0.896094,
		38.603325, 31.095482, 41.054623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749378, 31.964306, 41.275631>,  <38.498512, 31.387976, 41.681889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749378, 31.964306, 41.275631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.637184, 31.672863, 41.025684>,  <38.569866, 31.497997, 40.875717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.637184, 31.672863, 41.025684>,  <38.749378, 31.964306, 41.275631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637184, 31.672863, 41.025684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558691, 0.653284, -0.510964,
		0.780507, 0.205786, -0.590306,
		-0.280489, -0.728610, -0.624863,
		38.553040, 31.454281, 40.838226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248772, 32.477856, 41.610920>,  <38.749378, 31.964306, 41.275631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248772, 32.477856, 41.610920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.102417, 32.816689, 41.765102>,  <39.014603, 33.019989, 41.857613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.102417, 32.816689, 41.765102>,  <39.248772, 32.477856, 41.610920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102417, 32.816689, 41.765102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234623, -0.316839, 0.919002,
		0.900598, 0.426689, -0.082817,
		-0.365889, 0.847083, 0.385455,
		38.992649, 33.070812, 41.880737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786339, 32.919403, 42.022919>,  <39.248772, 32.477856, 41.610920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786339, 32.919403, 42.022919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.419270, 32.992203, 42.164200>,  <39.199028, 33.035881, 42.248970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.419270, 32.992203, 42.164200>,  <39.786339, 32.919403, 42.022919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419270, 32.992203, 42.164200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328005, -0.154719, 0.931920,
		0.224253, 0.971051, 0.082286,
		-0.917673, 0.181996, 0.353206,
		39.143967, 33.046803, 42.270161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794540, 33.343060, 42.601948>,  <39.786339, 32.919403, 42.022919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794540, 33.343060, 42.601948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.427071, 33.202732, 42.674561>,  <39.206589, 33.118534, 42.718128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.427071, 33.202732, 42.674561>,  <39.794540, 33.343060, 42.601948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427071, 33.202732, 42.674561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206977, -0.036113, 0.977679,
		-0.336436, 0.935746, 0.105788,
		-0.918679, -0.350822, 0.181528,
		39.151466, 33.097485, 42.729019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644844, 33.601681, 43.337570>,  <39.794540, 33.343060, 42.601948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644844, 33.601681, 43.337570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.394691, 33.297779, 43.266392>,  <39.244598, 33.115437, 43.223686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.394691, 33.297779, 43.266392>,  <39.644844, 33.601681, 43.337570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394691, 33.297779, 43.266392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016425, -0.215176, 0.976437,
		-0.780146, 0.613568, 0.122088,
		-0.625381, -0.759758, -0.177947,
		39.207077, 33.069851, 43.213009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066341, 33.626053, 43.907684>,  <39.644844, 33.601681, 43.337570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066341, 33.626053, 43.907684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.048195, 33.261463, 43.744141>,  <39.037308, 33.042709, 43.646015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.048195, 33.261463, 43.744141>,  <39.066341, 33.626053, 43.907684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048195, 33.261463, 43.744141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090509, -0.411344, 0.906975,
		-0.994862, 0.004137, 0.101156,
		-0.045362, -0.911471, -0.408856,
		39.034588, 32.988022, 43.621483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581387, 33.226418, 44.298454>,  <39.066341, 33.626053, 43.907684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581387, 33.226418, 44.298454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.810146, 32.955715, 44.113014>,  <38.947403, 32.793293, 44.001751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.810146, 32.955715, 44.113014>,  <38.581387, 33.226418, 44.298454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810146, 32.955715, 44.113014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133264, -0.634287, 0.761525,
		-0.809426, -0.373735, -0.452937,
		0.571901, -0.676758, -0.463603,
		38.981716, 32.752689, 43.973934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340034, 32.573265, 44.572109>,  <38.581387, 33.226418, 44.298454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340034, 32.573265, 44.572109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.667160, 32.468422, 44.367176>,  <38.863434, 32.405518, 44.244217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.667160, 32.468422, 44.367176>,  <38.340034, 32.573265, 44.572109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667160, 32.468422, 44.367176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049368, -0.855025, 0.516232,
		-0.573366, -0.447473, -0.686309,
		0.817810, -0.262108, -0.512333,
		38.912502, 32.389790, 44.213474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260395, 31.804556, 44.560368>,  <38.340034, 32.573265, 44.572109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260395, 31.804556, 44.560368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.645126, 31.883814, 44.484875>,  <38.875965, 31.931370, 44.439579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.645126, 31.883814, 44.484875>,  <38.260395, 31.804556, 44.560368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645126, 31.883814, 44.484875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266879, -0.831674, 0.486924,
		-0.060481, -0.518707, -0.852810,
		0.961830, 0.198147, -0.188733,
		38.933674, 31.943258, 44.428253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526917, 31.114862, 44.288864>,  <38.260395, 31.804556, 44.560368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526917, 31.114862, 44.288864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.804817, 31.373011, 44.415874>,  <38.971558, 31.527899, 44.492081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.804817, 31.373011, 44.415874>,  <38.526917, 31.114862, 44.288864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804817, 31.373011, 44.415874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418720, -0.721851, 0.551003,
		0.584806, -0.249855, -0.771734,
		0.694748, 0.645370, 0.317524,
		39.013241, 31.566622, 44.511131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118568, 30.714579, 44.234764>,  <38.526917, 31.114862, 44.288864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118568, 30.714579, 44.234764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.169502, 31.011478, 44.497929>,  <39.200062, 31.189619, 44.655827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.169502, 31.011478, 44.497929>,  <39.118568, 30.714579, 44.234764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169502, 31.011478, 44.497929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631165, -0.572321, 0.523525,
		0.765125, 0.348589, -0.541359,
		0.127336, 0.742249, 0.657915,
		39.207703, 31.234154, 44.695305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845222, 30.717117, 44.296631>,  <39.118568, 30.714579, 44.234764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845222, 30.717117, 44.296631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.695889, 30.916098, 44.609852>,  <39.606289, 31.035486, 44.797783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.695889, 30.916098, 44.609852>,  <39.845222, 30.717117, 44.296631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695889, 30.916098, 44.609852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672220, -0.436645, 0.597881,
		0.639330, 0.749590, -0.171382,
		-0.373332, 0.497450, 0.783050,
		39.583889, 31.065332, 44.844769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389069, 31.019035, 44.644524>,  <39.845222, 30.717117, 44.296631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389069, 31.019035, 44.644524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.098560, 31.000175, 44.918839>,  <39.924255, 30.988859, 45.083427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.098560, 31.000175, 44.918839>,  <40.389069, 31.019035, 44.644524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098560, 31.000175, 44.918839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672137, -0.257810, 0.694093,
		0.144077, 0.965044, 0.218932,
		-0.726273, -0.047150, 0.685787,
		39.880680, 30.986031, 45.124573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531593, 31.434631, 45.306084>,  <40.389069, 31.019035, 44.644524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531593, 31.434631, 45.306084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.277431, 31.141470, 45.403336>,  <40.124935, 30.965574, 45.461689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.277431, 31.141470, 45.403336>,  <40.531593, 31.434631, 45.306084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277431, 31.141470, 45.403336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558565, -0.218846, 0.800069,
		-0.533163, 0.644176, 0.548430,
		-0.635407, -0.732901, 0.243133,
		40.086811, 30.921600, 45.476276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608471, 31.413713, 46.059536>,  <40.531593, 31.434631, 45.306084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608471, 31.413713, 46.059536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.419586, 31.073238, 45.967884>,  <40.306255, 30.868954, 45.912895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.419586, 31.073238, 45.967884>,  <40.608471, 31.413713, 46.059536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419586, 31.073238, 45.967884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448674, -0.455831, 0.768706,
		-0.758757, 0.260186, 0.597153,
		-0.472207, -0.851188, -0.229127,
		40.277924, 30.817883, 45.899147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.454041, 30.292006, 47.147453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.799526, 30.260973, 46.948265>,  <37.006817, 30.242353, 46.828754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.799526, 30.260973, 46.948265>,  <36.454041, 30.292006, 47.147453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799526, 30.260973, 46.948265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272167, 0.759805, -0.590441,
		0.424166, 0.645505, 0.635143,
		0.863718, -0.077580, -0.497969,
		37.058643, 30.237700, 46.798874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639568, 30.974178, 47.044598>,  <36.454041, 30.292006, 47.147453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639568, 30.974178, 47.044598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.878510, 30.794466, 46.778870>,  <37.021873, 30.686638, 46.619434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.878510, 30.794466, 46.778870>,  <36.639568, 30.974178, 47.044598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878510, 30.794466, 46.778870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101360, 0.779409, -0.618262,
		0.795549, 0.436654, 0.420042,
		0.597351, -0.449282, -0.664317,
		37.057716, 30.659681, 46.579575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022270, 31.475733, 46.799290>,  <36.639568, 30.974178, 47.044598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022270, 31.475733, 46.799290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.090424, 31.201500, 46.516178>,  <37.131317, 31.036961, 46.346313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.090424, 31.201500, 46.516178>,  <37.022270, 31.475733, 46.799290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090424, 31.201500, 46.516178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105646, 0.701428, -0.704867,
		0.979698, 0.194872, 0.047083,
		0.170384, -0.685583, -0.707775,
		37.141537, 30.995825, 46.303844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340191, 31.844141, 46.403366>,  <37.022270, 31.475733, 46.799290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340191, 31.844141, 46.403366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.225136, 31.521473, 46.196854>,  <37.156105, 31.327871, 46.072945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.225136, 31.521473, 46.196854>,  <37.340191, 31.844141, 46.403366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225136, 31.521473, 46.196854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078271, 0.557059, -0.826776,
		0.954537, -0.197399, -0.223368,
		-0.287634, -0.806671, -0.516283,
		37.138844, 31.279472, 46.041969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737350, 31.805185, 45.759212>,  <37.340191, 31.844141, 46.403366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737350, 31.805185, 45.759212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.388378, 31.620283, 45.695744>,  <37.178993, 31.509342, 45.657661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.388378, 31.620283, 45.695744>,  <37.737350, 31.805185, 45.759212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388378, 31.620283, 45.695744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216912, 0.657173, -0.721853,
		0.437958, -0.595351, -0.673610,
		-0.872434, -0.462255, -0.158675,
		37.126648, 31.481606, 45.648140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769897, 31.638920, 45.128525>,  <37.737350, 31.805185, 45.759212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769897, 31.638920, 45.128525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.381115, 31.622477, 45.221146>,  <37.147846, 31.612610, 45.276718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.381115, 31.622477, 45.221146>,  <37.769897, 31.638920, 45.128525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381115, 31.622477, 45.221146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210711, 0.589472, -0.779823,
		-0.104434, -0.806742, -0.581602,
		-0.971954, -0.041110, 0.231550,
		37.089527, 31.610144, 45.290611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518581, 31.615421, 44.472008>,  <37.769897, 31.638920, 45.128525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518581, 31.615421, 44.472008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.210926, 31.726339, 44.702324>,  <37.026333, 31.792891, 44.840511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.210926, 31.726339, 44.702324>,  <37.518581, 31.615421, 44.472008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210926, 31.726339, 44.702324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399644, 0.494375, -0.771931,
		-0.498707, -0.823834, -0.269426,
		-0.769140, 0.277293, 0.575788,
		36.980183, 31.809526, 44.875061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902103, 31.543997, 44.095890>,  <37.518581, 31.615421, 44.472008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902103, 31.543997, 44.095890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.826599, 31.806723, 44.387909>,  <36.781296, 31.964357, 44.563122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.826599, 31.806723, 44.387909>,  <36.902103, 31.543997, 44.095890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826599, 31.806723, 44.387909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582272, 0.523778, -0.621785,
		-0.790779, -0.542451, 0.283578,
		-0.188756, 0.656814, 0.730046,
		36.769974, 32.003765, 44.606922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185234, 31.669899, 43.995007>,  <36.902103, 31.543997, 44.095890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185234, 31.669899, 43.995007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.285049, 31.965111, 44.245781>,  <36.344936, 32.142239, 44.396244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.285049, 31.965111, 44.245781>,  <36.185234, 31.669899, 43.995007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285049, 31.965111, 44.245781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550418, 0.640761, -0.535225,
		-0.796725, -0.211518, 0.566117,
		0.249536, 0.738028, 0.626934,
		36.359909, 32.186520, 44.433861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528225, 32.000847, 44.208401>,  <36.185234, 31.669899, 43.995007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528225, 32.000847, 44.208401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.831688, 32.256439, 44.259220>,  <36.013763, 32.409794, 44.289711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.831688, 32.256439, 44.259220>,  <35.528225, 32.000847, 44.208401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831688, 32.256439, 44.259220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544649, 0.729070, -0.414504,
		-0.357491, 0.245266, 0.901135,
		0.758655, 0.638984, 0.127052,
		36.059284, 32.448135, 44.297337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282490, 32.614765, 44.426842>,  <35.528225, 32.000847, 44.208401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282490, 32.614765, 44.426842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.642677, 32.723438, 44.290989>,  <35.858788, 32.788643, 44.209476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.642677, 32.723438, 44.290989>,  <35.282490, 32.614765, 44.426842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642677, 32.723438, 44.290989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402720, 0.815732, -0.415210,
		0.164246, 0.510659, 0.843949,
		0.900467, 0.271678, -0.339633,
		35.912819, 32.804943, 44.189098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373844, 33.355183, 44.592857>,  <35.282490, 32.614765, 44.426842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373844, 33.355183, 44.592857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.638702, 33.267818, 44.306122>,  <35.797619, 33.215401, 44.134079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.638702, 33.267818, 44.306122>,  <35.373844, 33.355183, 44.592857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638702, 33.267818, 44.306122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218954, 0.858456, -0.463802,
		0.716675, 0.464059, 0.520602,
		0.662145, -0.218407, -0.716842,
		35.837345, 33.202297, 44.091068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619305, 33.999470, 44.453468>,  <35.373844, 33.355183, 44.592857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619305, 33.999470, 44.453468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.782249, 33.796631, 44.149651>,  <35.880016, 33.674927, 43.967361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.782249, 33.796631, 44.149651>,  <35.619305, 33.999470, 44.453468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782249, 33.796631, 44.149651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332050, 0.692521, -0.640435,
		0.850762, 0.513098, 0.113728,
		0.407365, -0.507095, -0.759545,
		35.904461, 33.644501, 43.921787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068207, 34.486599, 44.082115>,  <35.619305, 33.999470, 44.453468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068207, 34.486599, 44.082115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930286, 34.184330, 43.859379>,  <35.847534, 34.002968, 43.725735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930286, 34.184330, 43.859379>,  <36.068207, 34.486599, 44.082115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930286, 34.184330, 43.859379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391547, 0.654936, -0.646335,
		0.853113, -0.004828, -0.521704,
		-0.344804, -0.755669, -0.556845,
		35.826847, 33.957630, 43.692326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513824, 35.018757, 44.001968>,  <36.068207, 34.486599, 44.082115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513824, 35.018757, 44.001968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.348457, 35.333710, 44.184883>,  <36.249237, 35.522682, 44.294632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.348457, 35.333710, 44.184883>,  <36.513824, 35.018757, 44.001968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348457, 35.333710, 44.184883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297558, -0.357815, 0.885114,
		0.860548, 0.501994, -0.086364,
		-0.413419, 0.787382, 0.457289,
		36.224430, 35.569923, 44.322071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030720, 35.355858, 44.354019>,  <36.513824, 35.018757, 44.001968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030720, 35.355858, 44.354019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.709713, 35.508415, 44.537540>,  <36.517109, 35.599949, 44.647652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.709713, 35.508415, 44.537540>,  <37.030720, 35.355858, 44.354019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709713, 35.508415, 44.537540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393663, -0.239356, 0.887546,
		0.448318, 0.892889, 0.041950,
		-0.802522, 0.381389, 0.458805,
		36.468956, 35.622833, 44.675182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198677, 35.832649, 44.966679>,  <37.030720, 35.355858, 44.354019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198677, 35.832649, 44.966679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828217, 35.701855, 45.041862>,  <36.605942, 35.623379, 45.086975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828217, 35.701855, 45.041862>,  <37.198677, 35.832649, 44.966679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828217, 35.701855, 45.041862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262693, -0.201642, 0.943575,
		-0.270637, 0.923265, 0.272648,
		-0.926147, -0.326989, 0.187964,
		36.550373, 35.603760, 45.098251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112591, 36.095158, 45.538284>,  <37.198677, 35.832649, 44.966679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112591, 36.095158, 45.538284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.835178, 35.807102, 45.546432>,  <36.668732, 35.634270, 45.551319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.835178, 35.807102, 45.546432>,  <37.112591, 36.095158, 45.538284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835178, 35.807102, 45.546432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301817, -0.264762, 0.915864,
		-0.654157, 0.641327, 0.400971,
		-0.693530, -0.720139, 0.020368,
		36.627121, 35.591061, 45.552544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858326, 35.970345, 46.285091>,  <37.112591, 36.095158, 45.538284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858326, 35.970345, 46.285091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.725098, 35.641644, 46.100143>,  <36.645161, 35.444424, 45.989174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.725098, 35.641644, 46.100143>,  <36.858326, 35.970345, 46.285091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725098, 35.641644, 46.100143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257740, -0.551036, 0.793681,
		-0.906992, 0.145181, 0.395332,
		-0.333069, -0.821756, -0.462366,
		36.625175, 35.395119, 45.961433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450706, 35.567307, 46.753521>,  <36.858326, 35.970345, 46.285091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450706, 35.567307, 46.753521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.553619, 35.292084, 46.482113>,  <36.615368, 35.126949, 46.319267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.553619, 35.292084, 46.482113>,  <36.450706, 35.567307, 46.753521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553619, 35.292084, 46.482113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245485, -0.632582, 0.734559,
		-0.934636, -0.355553, 0.006156,
		0.257280, -0.688056, -0.678517,
		36.630802, 35.085667, 46.278557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119385, 34.946594, 46.908470>,  <36.450706, 35.567307, 46.753521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119385, 34.946594, 46.908470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.444088, 34.850498, 46.695557>,  <36.638908, 34.792839, 46.567806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.444088, 34.850498, 46.695557>,  <36.119385, 34.946594, 46.908470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444088, 34.850498, 46.695557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141139, -0.803738, 0.578001,
		-0.566680, -0.544324, -0.618535,
		0.811759, -0.240242, -0.532287,
		36.687614, 34.778427, 46.535870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225498, 34.192295, 46.946373>,  <36.119385, 34.946594, 46.908470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225498, 34.192295, 46.946373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591141, 34.277145, 46.808151>,  <36.810528, 34.328056, 46.725220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591141, 34.277145, 46.808151>,  <36.225498, 34.192295, 46.946373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591141, 34.277145, 46.808151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372142, -0.777286, 0.507284,
		-0.160986, -0.592308, -0.789465,
		0.914108, 0.212127, -0.345555,
		36.865372, 34.340782, 46.704483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455402, 33.630848, 46.850224>,  <36.225498, 34.192295, 46.946373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455402, 33.630848, 46.850224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.801083, 33.830448, 46.875992>,  <37.008492, 33.950207, 46.891453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.801083, 33.830448, 46.875992>,  <36.455402, 33.630848, 46.850224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801083, 33.830448, 46.875992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383412, -0.736043, 0.557885,
		0.325804, -0.457425, -0.827414,
		0.864203, 0.499002, 0.064424,
		37.060345, 33.980148, 46.895317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902691, 33.171303, 46.602722>,  <36.455402, 33.630848, 46.850224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902691, 33.171303, 46.602722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.120445, 33.447845, 46.792740>,  <37.251099, 33.613773, 46.906750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.120445, 33.447845, 46.792740>,  <36.902691, 33.171303, 46.602722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120445, 33.447845, 46.792740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392329, -0.710405, 0.584297,
		0.741432, -0.131710, -0.657975,
		0.544387, 0.691359, 0.475043,
		37.283760, 33.655254, 46.935253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631981, 32.951080, 46.516117>,  <36.902691, 33.171303, 46.602722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631981, 32.951080, 46.516117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.650421, 33.171112, 46.849655>,  <37.661488, 33.303131, 47.049778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.650421, 33.171112, 46.849655>,  <37.631981, 32.951080, 46.516117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650421, 33.171112, 46.849655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514200, -0.728716, 0.452295,
		0.856430, 0.407909, -0.316445,
		0.046103, 0.550075, 0.833842,
		37.664253, 33.336136, 47.099808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339657, 32.986767, 46.700741>,  <37.631981, 32.951080, 46.516117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339657, 32.986767, 46.700741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.145092, 33.055595, 47.043388>,  <38.028355, 33.096893, 47.248978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.145092, 33.055595, 47.043388>,  <38.339657, 32.986767, 46.700741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145092, 33.055595, 47.043388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578096, -0.671753, 0.463199,
		0.655139, 0.720513, 0.227275,
		-0.486413, 0.172073, 0.856617,
		37.999168, 33.107216, 47.300373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841881, 32.871780, 47.216476>,  <38.339657, 32.986767, 46.700741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841881, 32.871780, 47.216476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.521629, 32.892422, 47.455250>,  <38.329479, 32.904808, 47.598515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.521629, 32.892422, 47.455250>,  <38.841881, 32.871780, 47.216476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521629, 32.892422, 47.455250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401208, -0.693764, 0.598099,
		0.444993, 0.718351, 0.534746,
		-0.800633, 0.051606, 0.596929,
		38.281441, 32.907902, 47.634327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049133, 32.969467, 47.815628>,  <38.841881, 32.871780, 47.216476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049133, 32.969467, 47.815628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.688980, 32.802052, 47.863174>,  <38.472889, 32.701603, 47.891701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.688980, 32.802052, 47.863174>,  <39.049133, 32.969467, 47.815628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688980, 32.802052, 47.863174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384265, -0.636811, 0.668440,
		-0.204076, 0.647529, 0.734206,
		-0.900385, -0.418542, 0.118865,
		38.418865, 32.676487, 47.898834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309582, 33.638367, 47.957752>,  <39.049133, 32.969467, 47.815628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309582, 33.638367, 47.957752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.707222, 33.610092, 47.990669>,  <39.945805, 33.593128, 48.010418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.707222, 33.610092, 47.990669>,  <39.309582, 33.638367, 47.957752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707222, 33.610092, 47.990669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107795, 0.558443, -0.822509,
		0.012182, 0.826526, 0.562767,
		0.994098, -0.070683, 0.082293,
		40.005451, 33.588886, 48.015358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552017, 34.311634, 47.937092>,  <39.309582, 33.638367, 47.957752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552017, 34.311634, 47.937092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.834248, 34.056244, 47.814129>,  <40.003586, 33.903008, 47.740349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.834248, 34.056244, 47.814129>,  <39.552017, 34.311634, 47.937092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834248, 34.056244, 47.814129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098504, 0.517969, -0.849709,
		0.701750, 0.569257, 0.428361,
		0.705580, -0.638479, -0.307410,
		40.045921, 33.864700, 47.721905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069553, 34.732269, 47.632793>,  <39.552017, 34.311634, 47.937092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069553, 34.732269, 47.632793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.141937, 34.366711, 47.487438>,  <40.185368, 34.147377, 47.400227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.141937, 34.366711, 47.487438>,  <40.069553, 34.732269, 47.632793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141937, 34.366711, 47.487438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053567, 0.378095, -0.924216,
		0.982030, 0.147784, 0.117376,
		0.180964, -0.913895, -0.363384,
		40.196228, 34.092541, 47.378422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648472, 34.802139, 47.208385>,  <40.069553, 34.732269, 47.632793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648472, 34.802139, 47.208385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.453850, 34.468895, 47.103168>,  <40.337078, 34.268948, 47.040039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.453850, 34.468895, 47.103168>,  <40.648472, 34.802139, 47.208385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453850, 34.468895, 47.103168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086453, 0.345523, -0.934419,
		0.869362, -0.431905, -0.240141,
		-0.486554, -0.833110, -0.263046,
		40.307884, 34.218964, 47.024254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840267, 34.739353, 46.622532>,  <40.648472, 34.802139, 47.208385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840267, 34.739353, 46.622532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.540497, 34.476315, 46.591759>,  <40.360634, 34.318489, 46.573296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.540497, 34.476315, 46.591759>,  <40.840267, 34.739353, 46.622532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540497, 34.476315, 46.591759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028899, 0.148578, -0.988478,
		0.661453, -0.738572, -0.130352,
		-0.749430, -0.657599, -0.076933,
		40.315666, 34.279034, 46.568680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966629, 34.344658, 46.044090>,  <40.840267, 34.739353, 46.622532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966629, 34.344658, 46.044090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.569466, 34.314453, 46.080799>,  <40.331165, 34.296329, 46.102825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.569466, 34.314453, 46.080799>,  <40.966629, 34.344658, 46.044090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569466, 34.314453, 46.080799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098071, 0.084454, -0.991590,
		0.067110, -0.993563, -0.091260,
		-0.992914, -0.075496, 0.091772,
		40.271591, 34.291798, 46.108330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765244, 33.865093, 45.493599>,  <40.966629, 34.344658, 46.044090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765244, 33.865093, 45.493599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.425186, 34.050564, 45.593410>,  <40.221153, 34.161846, 45.653297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.425186, 34.050564, 45.593410>,  <40.765244, 33.865093, 45.493599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425186, 34.050564, 45.593410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138564, 0.260194, -0.955562,
		-0.507998, -0.846938, -0.156952,
		-0.850140, 0.463676, 0.249533,
		40.170143, 34.189667, 45.668270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287865, 33.691685, 44.978756>,  <40.765244, 33.865093, 45.493599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287865, 33.691685, 44.978756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.160828, 34.030251, 45.149738>,  <40.084606, 34.233391, 45.252327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.160828, 34.030251, 45.149738>,  <40.287865, 33.691685, 44.978756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160828, 34.030251, 45.149738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237582, 0.365389, -0.900025,
		-0.917981, -0.387400, 0.085046,
		-0.317595, 0.846411, 0.427459,
		40.065548, 34.284172, 45.277977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622330, 33.866856, 44.670574>,  <40.287865, 33.691685, 44.978756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622330, 33.866856, 44.670574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.779236, 34.201462, 44.823605>,  <39.873379, 34.402225, 44.915424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.779236, 34.201462, 44.823605>,  <39.622330, 33.866856, 44.670574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779236, 34.201462, 44.823605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136890, 0.464372, -0.874997,
		-0.909608, 0.290862, 0.296669,
		0.392268, 0.836515, 0.382581,
		39.896915, 34.452415, 44.938377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154396, 34.460060, 44.484238>,  <39.622330, 33.866856, 44.670574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154396, 34.460060, 44.484238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.511074, 34.623306, 44.562542>,  <39.725082, 34.721252, 44.609524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.511074, 34.623306, 44.562542>,  <39.154396, 34.460060, 44.484238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511074, 34.623306, 44.562542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068612, 0.549363, -0.832762,
		-0.447406, 0.729138, 0.517866,
		0.891695, 0.408115, 0.195761,
		39.778584, 34.745739, 44.621269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992882, 35.070225, 44.446922>,  <39.154396, 34.460060, 44.484238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992882, 35.070225, 44.446922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.390289, 35.081104, 44.402760>,  <39.628735, 35.087631, 44.376263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.390289, 35.081104, 44.402760>,  <38.992882, 35.070225, 44.446922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390289, 35.081104, 44.402760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085912, 0.815608, -0.572191,
		0.074485, 0.577965, 0.812655,
		0.993515, 0.027197, -0.110405,
		39.688343, 35.089264, 44.369637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186066, 35.728813, 44.491909>,  <38.992882, 35.070225, 44.446922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186066, 35.728813, 44.491909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.500366, 35.554482, 44.316338>,  <39.688946, 35.449883, 44.210995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.500366, 35.554482, 44.316338>,  <39.186066, 35.728813, 44.491909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500366, 35.554482, 44.316338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064430, 0.648079, -0.758843,
		0.615180, 0.624540, 0.481147,
		0.785749, -0.435825, -0.438925,
		39.736092, 35.423733, 44.184662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752647, 36.312435, 44.370842>,  <39.186066, 35.728813, 44.491909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752647, 36.312435, 44.370842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.817173, 36.022961, 44.102436>,  <39.855888, 35.849277, 43.941391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.817173, 36.022961, 44.102436>,  <39.752647, 36.312435, 44.370842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817173, 36.022961, 44.102436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115272, 0.661451, -0.741077,
		0.980148, 0.196895, 0.023281,
		0.161313, -0.723681, -0.671016,
		39.865566, 35.805855, 43.901131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095242, 36.663849, 43.934631>,  <39.752647, 36.312435, 44.370842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095242, 36.663849, 43.934631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.984222, 36.343620, 43.722198>,  <39.917610, 36.151482, 43.594738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.984222, 36.343620, 43.722198>,  <40.095242, 36.663849, 43.934631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984222, 36.343620, 43.722198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181033, 0.586482, -0.789472,
		0.943502, -0.122969, -0.307705,
		-0.277544, -0.800573, -0.531086,
		39.900959, 36.103447, 43.562874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.960110, 41.910049, 38.215832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.799429, 42.116058, 37.912945>,  <26.703020, 42.239666, 37.731213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.799429, 42.116058, 37.912945>,  <26.960110, 41.910049, 38.215832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799429, 42.116058, 37.912945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097299, -0.798184, -0.594505,
		-0.910586, -0.312491, 0.270522,
		-0.401704, 0.515027, -0.757220,
		26.678919, 42.270565, 37.685780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508707, 41.484615, 37.915741>,  <26.960110, 41.910049, 38.215832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508707, 41.484615, 37.915741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.639952, 41.736919, 37.634460>,  <26.718699, 41.888302, 37.465694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.639952, 41.736919, 37.634460>,  <26.508707, 41.484615, 37.915741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.639952, 41.736919, 37.634460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005275, -0.745623, -0.666348,
		-0.944624, 0.214927, -0.247974,
		0.328111, 0.630756, -0.703200,
		26.738384, 41.926147, 37.423500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936779, 41.619480, 37.397556>,  <26.508707, 41.484615, 37.915741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936779, 41.619480, 37.397556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.321711, 41.639427, 37.290646>,  <26.552670, 41.651394, 37.226498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.321711, 41.639427, 37.290646>,  <25.936779, 41.619480, 37.397556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.321711, 41.639427, 37.290646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143555, -0.741659, -0.655236,
		-0.230904, 0.668921, -0.706561,
		0.962328, 0.049866, -0.267279,
		26.610409, 41.654388, 37.210461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929062, 41.645885, 36.677498>,  <25.936779, 41.619480, 37.397556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929062, 41.645885, 36.677498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.307501, 41.528717, 36.732777>,  <26.534565, 41.458416, 36.765942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.307501, 41.528717, 36.732777>,  <25.929062, 41.645885, 36.677498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307501, 41.528717, 36.732777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157969, -0.789816, -0.592653,
		0.282749, 0.538876, -0.793514,
		0.946097, -0.292923, 0.138194,
		26.591330, 41.440842, 36.774235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200102, 41.455418, 36.037754>,  <25.929062, 41.645885, 36.677498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200102, 41.455418, 36.037754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.405041, 41.236538, 36.302505>,  <26.528004, 41.105209, 36.461357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.405041, 41.236538, 36.302505>,  <26.200102, 41.455418, 36.037754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405041, 41.236538, 36.302505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201444, -0.825789, -0.526775,
		0.834818, 0.136561, -0.533320,
		0.512347, -0.547196, 0.661874,
		26.558744, 41.072380, 36.501068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564901, 40.947372, 35.729973>,  <26.200102, 41.455418, 36.037754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564901, 40.947372, 35.729973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.552896, 40.786087, 36.095818>,  <26.545694, 40.689316, 36.315327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.552896, 40.786087, 36.095818>,  <26.564901, 40.947372, 35.729973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552896, 40.786087, 36.095818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162808, -0.900835, -0.402479,
		0.986201, -0.160986, -0.038612,
		-0.030010, -0.403211, 0.914614,
		26.543894, 40.665123, 36.370201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067455, 40.388660, 35.592796>,  <26.564901, 40.947372, 35.729973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067455, 40.388660, 35.592796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.847534, 40.320786, 35.919949>,  <26.715582, 40.280060, 36.116238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.847534, 40.320786, 35.919949>,  <27.067455, 40.388660, 35.592796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847534, 40.320786, 35.919949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014620, -0.980954, -0.193688,
		0.835166, -0.094533, 0.541814,
		-0.549804, -0.169683, 0.817877,
		26.682592, 40.269882, 36.165310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395430, 39.709797, 35.839157>,  <27.067455, 40.388660, 35.592796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395430, 39.709797, 35.839157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.046410, 39.747387, 36.030914>,  <26.836998, 39.769939, 36.145969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.046410, 39.747387, 36.030914>,  <27.395430, 39.709797, 35.839157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046410, 39.747387, 36.030914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150743, -0.985229, -0.081237,
		0.464682, -0.143150, 0.873830,
		-0.872552, 0.093974, 0.479398,
		26.784643, 39.775578, 36.174732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352003, 39.165359, 36.345737>,  <27.395430, 39.709797, 35.839157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352003, 39.165359, 36.345737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.968124, 39.259708, 36.284622>,  <26.737797, 39.316319, 36.247955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.968124, 39.259708, 36.284622>,  <27.352003, 39.165359, 36.345737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968124, 39.259708, 36.284622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252622, -0.962254, 0.101241,
		-0.123138, 0.135758, 0.983060,
		-0.959697, 0.235876, -0.152786,
		26.680216, 39.330471, 36.238785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022495, 38.826229, 36.849957>,  <27.352003, 39.165359, 36.345737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022495, 38.826229, 36.849957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.733727, 38.899372, 36.583004>,  <26.560465, 38.943256, 36.422832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.733727, 38.899372, 36.583004>,  <27.022495, 38.826229, 36.849957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733727, 38.899372, 36.583004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327235, -0.940011, 0.096423,
		-0.609710, 0.287999, 0.738451,
		-0.721921, 0.182857, -0.667378,
		26.517151, 38.954227, 36.382790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303425, 38.513554, 37.076603>,  <27.022495, 38.826229, 36.849957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303425, 38.513554, 37.076603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.267384, 38.572506, 36.682617>,  <26.245760, 38.607876, 36.446224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.267384, 38.572506, 36.682617>,  <26.303425, 38.513554, 37.076603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267384, 38.572506, 36.682617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499912, -0.862065, -0.083259,
		-0.861376, 0.484895, 0.151351,
		-0.090103, 0.147380, -0.984967,
		26.240353, 38.616718, 36.387127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554865, 38.435390, 36.856567>,  <26.303425, 38.513554, 37.076603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.554865, 38.435390, 36.856567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.782877, 38.354229, 36.538097>,  <25.919683, 38.305531, 36.347015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.782877, 38.354229, 36.538097>,  <25.554865, 38.435390, 36.856567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782877, 38.354229, 36.538097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400610, -0.914672, -0.053717,
		-0.717341, 0.349577, -0.602676,
		0.570029, -0.202905, -0.796176,
		25.953886, 38.293358, 36.299244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.170254, 37.956005, 36.502804>,  <25.554865, 38.435390, 36.856567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.170254, 37.956005, 36.502804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.517117, 37.905861, 36.310001>,  <25.725233, 37.875774, 36.194321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.517117, 37.905861, 36.310001>,  <25.170254, 37.956005, 36.502804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.517117, 37.905861, 36.310001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284728, -0.918831, -0.273274,
		-0.408623, 0.374211, -0.832462,
		0.867155, -0.125359, -0.482004,
		25.777264, 37.868252, 36.165401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.038900, 37.696320, 35.831242>,  <25.170254, 37.956005, 36.502804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.038900, 37.696320, 35.831242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.421225, 37.603748, 35.903759>,  <25.650620, 37.548206, 35.947269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.421225, 37.603748, 35.903759>,  <25.038900, 37.696320, 35.831242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.421225, 37.603748, 35.903759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197561, -0.962320, -0.186840,
		0.217698, 0.142768, -0.965518,
		0.955812, -0.231424, 0.181290,
		25.707968, 37.534321, 35.958145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283794, 37.265171, 35.279869>,  <25.038900, 37.696320, 35.831242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283794, 37.265171, 35.279869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.510662, 37.172680, 35.596062>,  <25.646782, 37.117184, 35.785778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.510662, 37.172680, 35.596062>,  <25.283794, 37.265171, 35.279869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.510662, 37.172680, 35.596062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125025, -0.972829, -0.194866,
		0.814058, 0.011693, -0.580666,
		0.567167, -0.231230, 0.790477,
		25.680813, 37.103310, 35.833206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748562, 36.739273, 35.027901>,  <25.283794, 37.265171, 35.279869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748562, 36.739273, 35.027901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.788109, 36.684311, 35.422127>,  <25.811838, 36.651333, 35.658665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.788109, 36.684311, 35.422127>,  <25.748562, 36.739273, 35.027901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788109, 36.684311, 35.422127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063763, -0.987511, -0.144073,
		0.993056, 0.077087, -0.088872,
		0.098869, -0.137406, 0.985568,
		25.817770, 36.643089, 35.717796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193928, 36.145126, 35.081322>,  <25.748562, 36.739273, 35.027901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193928, 36.145126, 35.081322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.021538, 36.165356, 35.441700>,  <25.918104, 36.177494, 35.657928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.021538, 36.165356, 35.441700>,  <26.193928, 36.145126, 35.081322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021538, 36.165356, 35.441700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015345, -0.997873, 0.063359,
		0.902235, 0.041131, 0.429280,
		-0.430972, 0.050577, 0.900946,
		25.892246, 36.180531, 35.711983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659803, 35.805023, 35.531384>,  <26.193928, 36.145126, 35.081322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659803, 35.805023, 35.531384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.320274, 35.799564, 35.742783>,  <26.116556, 35.796288, 35.869621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.320274, 35.799564, 35.742783>,  <26.659803, 35.805023, 35.531384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.320274, 35.799564, 35.742783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129178, -0.974720, 0.182299,
		0.512651, 0.223011, 0.829129,
		-0.848823, -0.013649, 0.528500,
		26.065628, 35.795471, 35.901333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747433, 35.562611, 36.214577>,  <26.659803, 35.805023, 35.531384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747433, 35.562611, 36.214577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.362465, 35.474686, 36.150791>,  <26.131483, 35.421932, 36.112522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.362465, 35.474686, 36.150791>,  <26.747433, 35.562611, 36.214577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362465, 35.474686, 36.150791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194635, -0.967836, 0.159405,
		-0.189372, 0.122378, 0.974249,
		-0.962422, -0.219809, -0.159462,
		26.073738, 35.408741, 36.102951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573227, 35.027721, 36.783184>,  <26.747433, 35.562611, 36.214577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573227, 35.027721, 36.783184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.303915, 35.005009, 36.488304>,  <26.142328, 34.991383, 36.311375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.303915, 35.005009, 36.488304>,  <26.573227, 35.027721, 36.783184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.303915, 35.005009, 36.488304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056531, -0.998082, 0.025245,
		-0.737224, -0.024678, 0.675198,
		-0.673280, -0.056781, -0.737205,
		26.101931, 34.987976, 36.267143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920607, 35.696594, 37.099152>,  <26.573227, 35.027721, 36.783184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920607, 35.696594, 37.099152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.277948, 35.734409, 37.274868>,  <27.492353, 35.757099, 37.380299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.277948, 35.734409, 37.274868>,  <26.920607, 35.696594, 37.099152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277948, 35.734409, 37.274868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410008, 0.571528, 0.710809,
		-0.183873, -0.815119, 0.549337,
		0.893356, 0.094534, 0.439293,
		27.545956, 35.762768, 37.406654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.873623, 35.553123, 37.722187>,  <26.920607, 35.696594, 37.099152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.873623, 35.553123, 37.722187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.207203, 35.773861, 37.721642>,  <27.407351, 35.906303, 37.721313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.207203, 35.773861, 37.721642>,  <26.873623, 35.553123, 37.722187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207203, 35.773861, 37.721642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427187, 0.647130, 0.631453,
		0.349344, -0.526017, 0.775413,
		0.833948, 0.551841, -0.001364,
		27.457388, 35.939415, 37.721233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933357, 35.873028, 38.363491>,  <26.873623, 35.553123, 37.722187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933357, 35.873028, 38.363491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.156237, 36.121254, 38.142788>,  <27.289965, 36.270187, 38.010365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.156237, 36.121254, 38.142788>,  <26.933357, 35.873028, 38.363491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156237, 36.121254, 38.142788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368753, 0.780267, 0.505178,
		0.744010, -0.078023, 0.663597,
		0.557198, 0.620561, -0.551755,
		27.323395, 36.307423, 37.977261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285334, 36.347397, 38.867115>,  <26.933357, 35.873028, 38.363491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285334, 36.347397, 38.867115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.286909, 36.529427, 38.510937>,  <27.287855, 36.638645, 38.297230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.286909, 36.529427, 38.510937>,  <27.285334, 36.347397, 38.867115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286909, 36.529427, 38.510937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209486, 0.871067, 0.444249,
		0.977804, 0.184786, 0.098763,
		0.003938, 0.455078, -0.890443,
		27.288090, 36.665951, 38.243805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584038, 37.009823, 39.051270>,  <27.285334, 36.347397, 38.867115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584038, 37.009823, 39.051270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.400299, 37.068321, 38.700817>,  <27.290056, 37.103420, 38.490543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.400299, 37.068321, 38.700817>,  <27.584038, 37.009823, 39.051270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400299, 37.068321, 38.700817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387990, 0.854247, 0.346013,
		0.799039, 0.498872, -0.335655,
		-0.459348, 0.146247, -0.876134,
		27.262495, 37.112194, 38.437977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575411, 37.716484, 39.008060>,  <27.584038, 37.009823, 39.051270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575411, 37.716484, 39.008060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.293518, 37.587811, 38.755119>,  <27.124382, 37.510605, 38.603355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.293518, 37.587811, 38.755119>,  <27.575411, 37.716484, 39.008060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293518, 37.587811, 38.755119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559958, 0.799508, 0.217333,
		0.435659, 0.507253, -0.743569,
		-0.704732, -0.321685, -0.632354,
		27.082098, 37.491306, 38.565414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399128, 38.268543, 38.499752>,  <27.575411, 37.716484, 39.008060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399128, 38.268543, 38.499752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.089725, 38.019184, 38.545467>,  <26.904083, 37.869568, 38.572895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.089725, 38.019184, 38.545467>,  <27.399128, 38.268543, 38.499752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089725, 38.019184, 38.545467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560034, 0.756714, 0.337260,
		-0.296731, 0.196868, -0.934448,
		-0.773507, -0.623399, 0.114287,
		26.857674, 37.832165, 38.579754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841541, 38.719852, 38.369755>,  <27.399128, 38.268543, 38.499752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841541, 38.719852, 38.369755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.662477, 38.403996, 38.537594>,  <26.555038, 38.214481, 38.638298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.662477, 38.403996, 38.537594>,  <26.841541, 38.719852, 38.369755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662477, 38.403996, 38.537594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669550, 0.607031, 0.428039,
		-0.592708, -0.089328, -0.800448,
		-0.447661, -0.789642, 0.419602,
		26.528179, 38.167103, 38.663475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201576, 38.965492, 38.281689>,  <26.841541, 38.719852, 38.369755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201576, 38.965492, 38.281689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.176682, 38.681602, 38.562382>,  <26.161745, 38.511269, 38.730797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.176682, 38.681602, 38.562382>,  <26.201576, 38.965492, 38.281689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.176682, 38.681602, 38.562382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590497, 0.593016, 0.547398,
		-0.804636, -0.380299, -0.455996,
		-0.062238, -0.709721, 0.701728,
		26.158010, 38.468685, 38.772900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490063, 38.945805, 38.480927>,  <26.201576, 38.965492, 38.281689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490063, 38.945805, 38.480927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.678753, 38.784397, 38.794525>,  <25.791967, 38.687553, 38.982685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.678753, 38.784397, 38.794525>,  <25.490063, 38.945805, 38.480927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678753, 38.784397, 38.794525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394307, 0.698741, 0.596894,
		-0.788668, -0.590705, 0.170504,
		0.471726, -0.403520, 0.783994,
		25.820271, 38.663342, 39.029724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.022997, 39.051369, 38.995537>,  <25.490063, 38.945805, 38.480927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.022997, 39.051369, 38.995537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.377741, 38.994350, 39.171337>,  <25.590588, 38.960140, 39.276817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.377741, 38.994350, 39.171337>,  <25.022997, 39.051369, 38.995537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.377741, 38.994350, 39.171337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247786, 0.656127, 0.712811,
		-0.389978, -0.741065, 0.546571,
		0.886859, -0.142548, 0.439501,
		25.643799, 38.951588, 39.303188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.878937, 38.953876, 39.648022>,  <25.022997, 39.051369, 38.995537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.878937, 38.953876, 39.648022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.260431, 39.074059, 39.652328>,  <25.489328, 39.146168, 39.654915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.260431, 39.074059, 39.652328>,  <24.878937, 38.953876, 39.648022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.260431, 39.074059, 39.652328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225498, 0.691191, 0.686590,
		0.198844, -0.657254, 0.726965,
		0.953736, 0.300454, 0.010770,
		25.546553, 39.164196, 39.655560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072969, 39.073139, 40.359867>,  <24.878937, 38.953876, 39.648022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.072969, 39.073139, 40.359867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.312656, 39.289173, 40.123478>,  <25.456469, 39.418793, 39.981644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.312656, 39.289173, 40.123478>,  <25.072969, 39.073139, 40.359867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.312656, 39.289173, 40.123478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242428, 0.825925, 0.508995,
		0.763000, -0.161729, 0.625839,
		0.599216, 0.540084, -0.590974,
		25.492420, 39.451199, 39.946186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210840, 39.754620, 40.735882>,  <25.072969, 39.073139, 40.359867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210840, 39.754620, 40.735882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.365789, 39.850891, 40.379902>,  <25.458759, 39.908653, 40.166313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.365789, 39.850891, 40.379902>,  <25.210840, 39.754620, 40.735882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.365789, 39.850891, 40.379902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044754, 0.969094, 0.242598,
		0.920836, -0.054146, 0.386171,
		0.387372, 0.240676, -0.889954,
		25.482000, 39.923096, 40.112915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.768610, 40.165909, 40.910408>,  <25.210840, 39.754620, 40.735882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.768610, 40.165909, 40.910408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.697762, 40.264000, 40.529148>,  <25.655252, 40.322853, 40.300392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.697762, 40.264000, 40.529148>,  <25.768610, 40.165909, 40.910408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.697762, 40.264000, 40.529148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222354, 0.953391, 0.203971,
		0.958742, -0.175809, -0.223392,
		-0.177120, 0.245227, -0.953148,
		25.644625, 40.337566, 40.243202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282104, 40.593136, 40.678478>,  <25.768610, 40.165909, 40.910408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.282104, 40.593136, 40.678478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.967451, 40.662071, 40.441326>,  <25.778660, 40.703430, 40.299034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.967451, 40.662071, 40.441326>,  <26.282104, 40.593136, 40.678478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.967451, 40.662071, 40.441326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018944, 0.953067, 0.302167,
		0.617131, 0.248926, -0.746449,
		-0.786633, 0.172336, -0.592882,
		25.731461, 40.713772, 40.263462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323282, 41.330338, 40.676128>,  <26.282104, 40.593136, 40.678478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323282, 41.330338, 40.676128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.985659, 41.242748, 40.480328>,  <25.783085, 41.190193, 40.362846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.985659, 41.242748, 40.480328>,  <26.323282, 41.330338, 40.676128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985659, 41.242748, 40.480328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328765, 0.932461, 0.149765,
		0.423650, 0.287342, -0.859043,
		-0.844058, -0.218975, -0.489506,
		25.732441, 41.177055, 40.333477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271420, 41.850731, 40.238392>,  <26.323282, 41.330338, 40.676128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271420, 41.850731, 40.238392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.910290, 41.698059, 40.317616>,  <25.693611, 41.606457, 40.365150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.910290, 41.698059, 40.317616>,  <26.271420, 41.850731, 40.238392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910290, 41.698059, 40.317616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293679, 0.883744, 0.364348,
		-0.314098, 0.270777, -0.909957,
		-0.902827, -0.381676, 0.198061,
		25.639442, 41.583557, 40.377033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771002, 42.356308, 40.090649>,  <26.271420, 41.850731, 40.238392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771002, 42.356308, 40.090649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.557636, 42.116329, 40.329155>,  <25.429617, 41.972343, 40.472260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.557636, 42.116329, 40.329155>,  <25.771002, 42.356308, 40.090649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.557636, 42.116329, 40.329155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272911, 0.789299, 0.550024,
		-0.800618, 0.130662, -0.584754,
		-0.533413, -0.599945, 0.596268,
		25.397612, 41.936344, 40.508034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109282, 42.556255, 39.996689>,  <25.771002, 42.356308, 40.090649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109282, 42.556255, 39.996689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.113720, 42.369297, 40.350281>,  <25.116383, 42.257122, 40.562435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.113720, 42.369297, 40.350281>,  <25.109282, 42.556255, 39.996689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113720, 42.369297, 40.350281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461446, 0.781880, 0.419202,
		-0.887099, -0.412560, -0.207002,
		0.011095, -0.467394, 0.883979,
		25.117048, 42.229080, 40.615475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.550503, 42.803623, 40.184406>,  <25.109282, 42.556255, 39.996689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.550503, 42.803623, 40.184406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.747690, 42.665421, 40.503807>,  <24.866003, 42.582500, 40.695446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.747690, 42.665421, 40.503807>,  <24.550503, 42.803623, 40.184406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.747690, 42.665421, 40.503807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236167, 0.830173, 0.505013,
		-0.837381, -0.437535, 0.327651,
		0.492968, -0.345508, 0.798503,
		24.895580, 42.561768, 40.743359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.462442, 43.023170, 40.917923>,  <24.550503, 42.803623, 40.184406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.462442, 43.023170, 40.917923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.235350, 42.738163, 40.752998>,  <24.099094, 42.567158, 40.654045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.235350, 42.738163, 40.752998>,  <24.462442, 43.023170, 40.917923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.235350, 42.738163, 40.752998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281355, -0.302752, 0.910594,
		-0.773640, 0.632981, -0.028587,
		-0.567734, -0.712514, -0.412313,
		24.065029, 42.524410, 40.629303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.347263, 31.120449, 46.730919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.363781, 30.812937, 46.475647>,  <40.373692, 30.628429, 46.322483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.363781, 30.812937, 46.475647>,  <40.347263, 31.120449, 46.730919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363781, 30.812937, 46.475647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582841, -0.500251, 0.640347,
		-0.811536, -0.398401, 0.427418,
		0.041298, -0.768782, -0.638176,
		40.376171, 30.582302, 46.284195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434769, 30.551497, 47.219284>,  <40.347263, 31.120449, 46.730919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434769, 30.551497, 47.219284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.501411, 30.415394, 46.849102>,  <40.541397, 30.333733, 46.626991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.501411, 30.415394, 46.849102>,  <40.434769, 30.551497, 47.219284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501411, 30.415394, 46.849102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611107, -0.700946, 0.367727,
		-0.773816, -0.626818, 0.091151,
		0.166606, -0.340256, -0.925456,
		40.551392, 30.313316, 46.571465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298157, 29.896107, 47.348289>,  <40.434769, 30.551497, 47.219284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298157, 29.896107, 47.348289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.533760, 29.964926, 47.032452>,  <40.675121, 30.006218, 46.842949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.533760, 29.964926, 47.032452>,  <40.298157, 29.896107, 47.348289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533760, 29.964926, 47.032452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702787, -0.591403, 0.395389,
		-0.398945, -0.787808, -0.469256,
		0.589010, 0.172049, -0.789599,
		40.710464, 30.016541, 46.795570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686199, 29.308437, 47.232014>,  <40.298157, 29.896107, 47.348289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686199, 29.308437, 47.232014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.925274, 29.569477, 47.045731>,  <41.068718, 29.726101, 46.933960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.925274, 29.569477, 47.045731>,  <40.686199, 29.308437, 47.232014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925274, 29.569477, 47.045731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798397, -0.537401, 0.271593,
		-0.073033, -0.534150, -0.842229,
		0.597686, 0.652598, -0.465711,
		41.104580, 29.765257, 46.906017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231392, 28.871195, 46.749794>,  <40.686199, 29.308437, 47.232014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231392, 28.871195, 46.749794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.392063, 29.235727, 46.785847>,  <41.488468, 29.454447, 46.807480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.392063, 29.235727, 46.785847>,  <41.231392, 28.871195, 46.749794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392063, 29.235727, 46.785847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887290, -0.411655, 0.207980,
		0.226643, -0.003567, -0.973971,
		0.401682, 0.911333, 0.090134,
		41.512569, 29.509127, 46.812885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839771, 28.819033, 46.329399>,  <41.231392, 28.871195, 46.749794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839771, 28.819033, 46.329399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.862808, 29.111382, 46.601433>,  <41.876629, 29.286791, 46.764652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.862808, 29.111382, 46.601433>,  <41.839771, 28.819033, 46.329399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862808, 29.111382, 46.601433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856943, -0.385674, 0.341913,
		0.512184, 0.563099, -0.648527,
		0.057589, 0.730873, 0.680080,
		41.880085, 29.330643, 46.805458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638298, 29.019087, 46.312347>,  <41.839771, 28.819033, 46.329399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638298, 29.019087, 46.312347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.473835, 29.193287, 46.632668>,  <42.375156, 29.297808, 46.824860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.473835, 29.193287, 46.632668>,  <42.638298, 29.019087, 46.312347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473835, 29.193287, 46.632668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803738, -0.241262, 0.543874,
		0.430061, 0.867255, -0.250831,
		-0.411161, 0.435501, 0.800803,
		42.350487, 29.323936, 46.872910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160618, 29.435030, 46.602261>,  <42.638298, 29.019087, 46.312347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160618, 29.435030, 46.602261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.886402, 29.347937, 46.880146>,  <42.721874, 29.295681, 47.046879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.886402, 29.347937, 46.880146>,  <43.160618, 29.435030, 46.602261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886402, 29.347937, 46.880146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728016, -0.198259, 0.656266,
		-0.005157, 0.955660, 0.294427,
		-0.685540, -0.217732, 0.694714,
		42.680740, 29.282618, 47.088562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450333, 29.735876, 47.178333>,  <43.160618, 29.435030, 46.602261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450333, 29.735876, 47.178333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.173565, 29.475948, 47.304176>,  <43.007504, 29.319992, 47.379684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.173565, 29.475948, 47.304176>,  <43.450333, 29.735876, 47.178333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173565, 29.475948, 47.304176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563859, -0.214237, 0.797600,
		-0.450893, 0.729274, 0.514641,
		-0.691923, -0.649817, 0.314610,
		42.965988, 29.281004, 47.398560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422031, 29.897797, 47.817104>,  <43.450333, 29.735876, 47.178333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422031, 29.897797, 47.817104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.297218, 29.517857, 47.825298>,  <43.222332, 29.289892, 47.830215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.297218, 29.517857, 47.825298>,  <43.422031, 29.897797, 47.817104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297218, 29.517857, 47.825298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710136, -0.218855, 0.669186,
		-0.631144, 0.223351, 0.742813,
		-0.312031, -0.949851, 0.020481,
		43.203609, 29.232901, 47.831444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399048, 29.680706, 48.551781>,  <43.422031, 29.897797, 47.817104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399048, 29.680706, 48.551781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.407967, 29.340305, 48.341904>,  <43.413319, 29.136065, 48.215977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.407967, 29.340305, 48.341904>,  <43.399048, 29.680706, 48.551781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407967, 29.340305, 48.341904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741488, -0.337955, 0.579640,
		-0.670596, -0.401976, 0.623471,
		0.022296, -0.851000, -0.524691,
		43.414654, 29.085005, 48.184498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250957, 29.166502, 49.030788>,  <43.399048, 29.680706, 48.551781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250957, 29.166502, 49.030788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.446175, 29.013386, 48.717026>,  <43.563305, 28.921516, 48.528770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.446175, 29.013386, 48.717026>,  <43.250957, 29.166502, 49.030788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446175, 29.013386, 48.717026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755495, -0.264775, 0.599267,
		-0.437085, -0.885079, 0.159976,
		0.488041, -0.382791, -0.784402,
		43.592587, 28.898548, 48.481705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072487, 29.291586, 49.772106>,  <43.250957, 29.166502, 49.030788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072487, 29.291586, 49.772106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.024349, 29.117041, 50.128780>,  <42.995468, 29.012314, 50.342785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.024349, 29.117041, 50.128780>,  <43.072487, 29.291586, 49.772106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024349, 29.117041, 50.128780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853645, 0.413029, 0.317329,
		-0.506763, 0.799371, 0.322797,
		-0.120339, -0.436365, 0.891686,
		42.988247, 28.986132, 50.396286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073631, 29.755638, 50.376709>,  <43.072487, 29.291586, 49.772106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073631, 29.755638, 50.376709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.280811, 29.417656, 50.430046>,  <43.405117, 29.214867, 50.462048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.280811, 29.417656, 50.430046>,  <43.073631, 29.755638, 50.376709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280811, 29.417656, 50.430046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827433, 0.534421, 0.172478,
		-0.216995, 0.020994, 0.975947,
		0.517946, -0.844957, 0.133338,
		43.436195, 29.164169, 50.470047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107513, 30.483131, 50.587151>,  <43.073631, 29.755638, 50.376709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107513, 30.483131, 50.587151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.004810, 30.537436, 50.969910>,  <42.943188, 30.570019, 51.199566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.004810, 30.537436, 50.969910>,  <43.107513, 30.483131, 50.587151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004810, 30.537436, 50.969910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541360, 0.799983, -0.258759,
		-0.800627, -0.584462, -0.131907,
		-0.256759, 0.135760, 0.956893,
		42.927784, 30.578163, 51.256977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409332, 30.436550, 50.703648>,  <43.107513, 30.483131, 50.587151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409332, 30.436550, 50.703648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.535309, 30.669121, 51.003716>,  <42.610893, 30.808662, 51.183758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.535309, 30.669121, 51.003716>,  <42.409332, 30.436550, 50.703648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535309, 30.669121, 51.003716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646139, 0.710296, -0.279256,
		-0.695211, -0.396767, 0.599381,
		0.314939, 0.581425, 0.750172,
		42.629791, 30.843548, 51.228767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801365, 30.668772, 50.987225>,  <42.409332, 30.436550, 50.703648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801365, 30.668772, 50.987225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.087955, 30.910131, 51.127262>,  <42.259911, 31.054947, 51.211285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.087955, 30.910131, 51.127262>,  <41.801365, 30.668772, 50.987225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087955, 30.910131, 51.127262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615183, 0.783140, -0.090781,
		-0.328948, -0.150328, 0.932306,
		0.716480, 0.603401, 0.350092,
		42.302898, 31.091152, 51.232288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610397, 31.003252, 51.661518>,  <41.801365, 30.668772, 50.987225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610397, 31.003252, 51.661518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.870178, 31.251919, 51.486362>,  <42.026047, 31.401119, 51.381271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.870178, 31.251919, 51.486362>,  <41.610397, 31.003252, 51.661518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870178, 31.251919, 51.486362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729871, 0.671182, -0.129624,
		0.213318, 0.403785, 0.889636,
		0.649448, 0.621669, -0.437887,
		42.065014, 31.438419, 51.354996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340759, 31.679758, 51.858509>,  <41.610397, 31.003252, 51.661518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340759, 31.679758, 51.858509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.594402, 31.759449, 51.559654>,  <41.746590, 31.807262, 51.380341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.594402, 31.759449, 51.559654>,  <41.340759, 31.679758, 51.858509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594402, 31.759449, 51.559654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657985, 0.646550, -0.386043,
		0.406150, 0.736398, 0.541073,
		0.634112, 0.199226, -0.747135,
		41.784637, 31.819218, 51.335514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323975, 32.375599, 51.724392>,  <41.340759, 31.679758, 51.858509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323975, 32.375599, 51.724392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.467731, 32.218494, 51.385788>,  <41.553986, 32.124229, 51.182625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.467731, 32.218494, 51.385788>,  <41.323975, 32.375599, 51.724392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467731, 32.218494, 51.385788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694570, 0.493227, -0.523736,
		0.623224, 0.776186, -0.095538,
		0.359394, -0.392763, -0.846506,
		41.575550, 32.100666, 51.131836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330215, 32.893932, 51.330688>,  <41.323975, 32.375599, 51.724392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330215, 32.893932, 51.330688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.362988, 32.608597, 51.052284>,  <41.382652, 32.437393, 50.885242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.362988, 32.608597, 51.052284>,  <41.330215, 32.893932, 51.330688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362988, 32.608597, 51.052284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638030, 0.498953, -0.586484,
		0.765640, 0.492129, -0.414252,
		0.081933, -0.713341, -0.696012,
		41.387566, 32.394596, 50.843479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512955, 33.303310, 50.666527>,  <41.330215, 32.893932, 51.330688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512955, 33.303310, 50.666527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.358189, 32.948811, 50.564651>,  <41.265331, 32.736111, 50.503529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.358189, 32.948811, 50.564651>,  <41.512955, 33.303310, 50.666527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358189, 32.948811, 50.564651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489005, 0.431361, -0.758157,
		0.781776, -0.168797, -0.600278,
		-0.386911, -0.886248, -0.254686,
		41.242115, 32.682938, 50.488247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586388, 33.299648, 49.922211>,  <41.512955, 33.303310, 50.666527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586388, 33.299648, 49.922211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.348824, 32.981571, 49.971111>,  <41.206287, 32.790726, 50.000450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.348824, 32.981571, 49.971111>,  <41.586388, 33.299648, 49.922211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348824, 32.981571, 49.971111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430644, 0.185856, -0.883178,
		0.679574, -0.577172, -0.452825,
		-0.593906, -0.795192, 0.122252,
		41.170650, 32.743015, 50.007786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728180, 32.766167, 49.330574>,  <41.586388, 33.299648, 49.922211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728180, 32.766167, 49.330574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.359612, 32.724693, 49.480366>,  <41.138470, 32.699810, 49.570240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.359612, 32.724693, 49.480366>,  <41.728180, 32.766167, 49.330574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359612, 32.724693, 49.480366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385677, 0.126697, -0.913893,
		0.047304, -0.986508, -0.156728,
		-0.921420, -0.103677, 0.374480,
		41.083187, 32.693588, 49.592709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344570, 32.301537, 48.901215>,  <41.728180, 32.766167, 49.330574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344570, 32.301537, 48.901215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.059216, 32.498749, 49.100414>,  <40.888004, 32.617077, 49.219933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.059216, 32.498749, 49.100414>,  <41.344570, 32.301537, 48.901215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059216, 32.498749, 49.100414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464275, 0.199782, -0.862865,
		-0.524909, -0.846764, 0.086380,
		-0.713385, 0.493030, 0.497999,
		40.845200, 32.646656, 49.249813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673210, 32.135078, 48.552410>,  <41.344570, 32.301537, 48.901215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673210, 32.135078, 48.552410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.620632, 32.463337, 48.774853>,  <40.589085, 32.660294, 48.908318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.620632, 32.463337, 48.774853>,  <40.673210, 32.135078, 48.552410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620632, 32.463337, 48.774853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489668, 0.434013, -0.756213,
		-0.861944, -0.371711, 0.344796,
		-0.131446, 0.820648, 0.556110,
		40.581200, 32.709530, 48.941685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964348, 32.269608, 48.467754>,  <40.673210, 32.135078, 48.552410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964348, 32.269608, 48.467754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.148407, 32.605522, 48.583008>,  <40.258842, 32.807072, 48.652161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.148407, 32.605522, 48.583008>,  <39.964348, 32.269608, 48.467754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148407, 32.605522, 48.583008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266269, 0.440128, -0.857548,
		-0.846972, 0.317881, 0.426134,
		0.460151, 0.839785, 0.288134,
		40.286453, 32.857456, 48.669449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488453, 32.812069, 48.438988>,  <39.964348, 32.269608, 48.467754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488453, 32.812069, 48.438988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.846912, 32.987499, 48.411972>,  <40.061989, 33.092758, 48.395763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.846912, 32.987499, 48.411972>,  <39.488453, 32.812069, 48.438988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846912, 32.987499, 48.411972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263481, 0.403429, -0.876255,
		-0.357058, 0.803053, 0.477091,
		0.896152, 0.438578, -0.067542,
		40.115757, 33.119072, 48.391708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763172, 33.168137, 48.475750>,  <39.488453, 32.812069, 48.438988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763172, 33.168137, 48.475750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.610279, 32.814812, 48.367195>,  <38.518543, 32.602818, 48.302063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.610279, 32.814812, 48.367195>,  <38.763172, 33.168137, 48.475750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610279, 32.814812, 48.367195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361663, -0.413263, 0.835711,
		-0.850352, 0.221285, 0.477425,
		-0.382233, -0.883316, -0.271388,
		38.495609, 32.549816, 48.285778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616768, 32.744324, 49.120148>,  <38.763172, 33.168137, 48.475750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616768, 32.744324, 49.120148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.571686, 32.451767, 48.851116>,  <38.544636, 32.276234, 48.689697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.571686, 32.451767, 48.851116>,  <38.616768, 32.744324, 49.120148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571686, 32.451767, 48.851116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319923, -0.667560, 0.672320,
		-0.940717, -0.139403, 0.309224,
		-0.112702, -0.731390, -0.672582,
		38.537876, 32.232349, 48.649342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409885, 32.154671, 49.535587>,  <38.616768, 32.744324, 49.120148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409885, 32.154671, 49.535587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.485825, 31.964508, 49.191971>,  <38.531387, 31.850410, 48.985802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.485825, 31.964508, 49.191971>,  <38.409885, 32.154671, 49.535587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485825, 31.964508, 49.191971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374500, -0.773738, 0.510960,
		-0.907584, -0.418713, 0.031150,
		0.189844, -0.475405, -0.859040,
		38.542778, 31.821886, 48.934258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149517, 31.510395, 49.610435>,  <38.409885, 32.154671, 49.535587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149517, 31.510395, 49.610435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.403049, 31.454857, 49.306072>,  <38.555168, 31.421534, 49.123455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.403049, 31.454857, 49.306072>,  <38.149517, 31.510395, 49.610435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403049, 31.454857, 49.306072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423229, -0.761159, 0.491441,
		-0.647402, -0.633530, -0.423687,
		0.633836, -0.138843, -0.760904,
		38.593201, 31.413204, 49.077801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097458, 30.869873, 49.306252>,  <38.149517, 31.510395, 49.610435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097458, 30.869873, 49.306252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.472610, 30.984638, 49.228222>,  <38.697704, 31.053497, 49.181404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.472610, 30.984638, 49.228222>,  <38.097458, 30.869873, 49.306252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472610, 30.984638, 49.228222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343540, -0.846586, 0.406537,
		-0.048509, -0.448302, -0.892565,
		0.937884, 0.286911, -0.195077,
		38.753975, 31.070711, 49.169701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337429, 30.254084, 49.048645>,  <38.097458, 30.869873, 49.306252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337429, 30.254084, 49.048645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.647205, 30.469110, 49.182064>,  <38.833073, 30.598127, 49.262115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.647205, 30.469110, 49.182064>,  <38.337429, 30.254084, 49.048645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647205, 30.469110, 49.182064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447542, -0.838171, 0.311730,
		0.447147, -0.092140, -0.889702,
		0.774445, 0.537569, 0.333549,
		38.879539, 30.630381, 49.282127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806541, 29.739294, 48.962967>,  <38.337429, 30.254084, 49.048645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806541, 29.739294, 48.962967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.008034, 30.012926, 49.173981>,  <39.128929, 30.177105, 49.300587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.008034, 30.012926, 49.173981>,  <38.806541, 29.739294, 48.962967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008034, 30.012926, 49.173981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579116, -0.720541, 0.381374,
		0.640996, 0.113390, -0.759122,
		0.503734, 0.684079, 0.527530,
		39.159153, 30.218149, 49.332241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946186, 29.256990, 48.399082>,  <38.806541, 29.739294, 48.962967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946186, 29.256990, 48.399082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.803776, 28.883217, 48.402653>,  <38.718330, 28.658953, 48.404793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.803776, 28.883217, 48.402653>,  <38.946186, 29.256990, 48.399082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803776, 28.883217, 48.402653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596942, 0.220070, -0.771511,
		0.718962, -0.280004, -0.636153,
		-0.356025, -0.934434, 0.008924,
		38.696968, 28.602886, 48.405331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878944, 29.120958, 47.738865>,  <38.946186, 29.256990, 48.399082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878944, 29.120958, 47.738865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.619057, 28.879822, 47.924099>,  <38.463123, 28.735140, 48.035240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.619057, 28.879822, 47.924099>,  <38.878944, 29.120958, 47.738865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619057, 28.879822, 47.924099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692881, 0.219041, -0.686977,
		0.312702, -0.767206, -0.560011,
		-0.649719, -0.602839, 0.463088,
		38.424141, 28.698969, 48.063026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762283, 28.602545, 47.167683>,  <38.878944, 29.120958, 47.738865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762283, 28.602545, 47.167683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.479500, 28.658089, 47.445080>,  <38.309830, 28.691414, 47.611519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.479500, 28.658089, 47.445080>,  <38.762283, 28.602545, 47.167683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479500, 28.658089, 47.445080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638105, 0.297648, -0.710090,
		-0.305019, -0.944523, -0.121817,
		-0.706955, 0.138859, 0.693493,
		38.267414, 28.699747, 47.653130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168964, 28.451719, 46.789452>,  <38.762283, 28.602545, 47.167683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168964, 28.451719, 46.789452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.068096, 28.670601, 47.108696>,  <38.007576, 28.801929, 47.300243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.068096, 28.670601, 47.108696>,  <38.168964, 28.451719, 46.789452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068096, 28.670601, 47.108696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625909, 0.536774, -0.565785,
		-0.738004, -0.642216, 0.207144,
		-0.252166, 0.547205, 0.798110,
		37.992447, 28.834763, 47.348129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432285, 28.566525, 46.726849>,  <38.168964, 28.451719, 46.789452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432285, 28.566525, 46.726849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.536476, 28.857365, 46.980927>,  <37.598991, 29.031868, 47.133373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.536476, 28.857365, 46.980927>,  <37.432285, 28.566525, 46.726849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536476, 28.857365, 46.980927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499465, 0.664513, -0.555839,
		-0.826248, -0.172475, 0.536253,
		0.260478, 0.727101, 0.635198,
		37.614620, 29.075495, 47.171486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849457, 29.002743, 46.713181>,  <37.432285, 28.566525, 46.726849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849457, 29.002743, 46.713181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131489, 29.229925, 46.883022>,  <37.300709, 29.366234, 46.984928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131489, 29.229925, 46.883022>,  <36.849457, 29.002743, 46.713181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131489, 29.229925, 46.883022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371243, 0.805799, -0.461375,
		-0.604185, 0.167676, 0.779003,
		0.705081, 0.567955, 0.424603,
		37.343014, 29.400312, 47.010403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474682, 29.616560, 46.891056>,  <36.849457, 29.002743, 46.713181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474682, 29.616560, 46.891056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.859760, 29.722551, 46.912991>,  <37.090805, 29.786146, 46.926151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.859760, 29.722551, 46.912991>,  <36.474682, 29.616560, 46.891056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859760, 29.722551, 46.912991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221006, 0.886901, -0.405664,
		-0.156130, 0.378410, 0.912376,
		0.962694, 0.264976, 0.054841,
		37.148567, 29.802044, 46.929443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<44.149860, 25.974628, 46.608841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.215847, 26.359858, 46.693954>,  <44.255440, 26.590996, 46.745022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.215847, 26.359858, 46.693954>,  <44.149860, 25.974628, 46.608841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215847, 26.359858, 46.693954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774294, 0.260092, -0.576906,
		-0.610945, -0.069584, 0.788609,
		0.164968, 0.963073, 0.212780,
		44.265339, 26.648779, 46.757790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502750, 26.261583, 46.641933>,  <44.149860, 25.974628, 46.608841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502750, 26.261583, 46.641933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.754162, 26.569466, 46.597198>,  <43.905006, 26.754194, 46.570358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.754162, 26.569466, 46.597198>,  <43.502750, 26.261583, 46.641933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754162, 26.569466, 46.597198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636942, 0.426834, -0.641964,
		-0.446386, 0.474727, 0.758534,
		0.628526, 0.769706, -0.111841,
		43.942719, 26.800377, 46.563644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093513, 26.889423, 46.820526>,  <43.502750, 26.261583, 46.641933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093513, 26.889423, 46.820526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.383919, 27.001024, 46.569107>,  <43.558163, 27.067984, 46.418255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.383919, 27.001024, 46.569107>,  <43.093513, 26.889423, 46.820526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383919, 27.001024, 46.569107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684917, 0.375272, -0.624547,
		0.061626, 0.883928, 0.463544,
		0.726010, 0.279001, -0.628544,
		43.601723, 27.084724, 46.380543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924519, 27.625532, 46.710155>,  <43.093513, 26.889423, 46.820526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924519, 27.625532, 46.710155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.156490, 27.469280, 46.424194>,  <43.295673, 27.375530, 46.252617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.156490, 27.469280, 46.424194>,  <42.924519, 27.625532, 46.710155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156490, 27.469280, 46.424194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620762, 0.356407, -0.698304,
		0.527574, 0.848754, -0.035795,
		0.579931, -0.390628, -0.714905,
		43.330471, 27.352093, 46.209724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725868, 28.098139, 46.340687>,  <42.924519, 27.625532, 46.710155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725868, 28.098139, 46.340687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.913284, 27.846375, 46.092716>,  <43.025734, 27.695316, 45.943935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.913284, 27.846375, 46.092716>,  <42.725868, 28.098139, 46.340687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913284, 27.846375, 46.092716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644614, 0.236269, -0.727083,
		0.604105, 0.740281, -0.295027,
		0.468540, -0.629413, -0.619927,
		43.053848, 27.657551, 45.906738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022343, 28.468122, 45.706974>,  <42.725868, 28.098139, 46.340687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022343, 28.468122, 45.706974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.921867, 28.088949, 45.628662>,  <42.861580, 27.861446, 45.581676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.921867, 28.088949, 45.628662>,  <43.022343, 28.468122, 45.706974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921867, 28.088949, 45.628662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392985, 0.284718, -0.874356,
		0.884571, -0.142694, -0.444042,
		-0.251192, -0.947932, -0.195776,
		42.846508, 27.804569, 45.569931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972008, 28.318985, 44.938839>,  <43.022343, 28.468122, 45.706974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972008, 28.318985, 44.938839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.758408, 28.018057, 45.093170>,  <42.630249, 27.837500, 45.185768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.758408, 28.018057, 45.093170>,  <42.972008, 28.318985, 44.938839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758408, 28.018057, 45.093170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679617, 0.110469, -0.725201,
		0.502961, -0.649471, -0.570279,
		-0.533996, -0.752319, 0.385830,
		42.598209, 27.792362, 45.208920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710220, 27.918451, 44.296638>,  <42.972008, 28.318985, 44.938839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710220, 27.918451, 44.296638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.510612, 27.800007, 44.622410>,  <42.390846, 27.728941, 44.817875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.510612, 27.800007, 44.622410>,  <42.710220, 27.918451, 44.296638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510612, 27.800007, 44.622410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859033, 0.045176, -0.509923,
		0.114202, -0.954084, -0.276914,
		-0.499019, -0.296113, 0.814431,
		42.360905, 27.711174, 44.866737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314159, 27.508177, 43.972672>,  <42.710220, 27.918451, 44.296638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314159, 27.508177, 43.972672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.134617, 27.533421, 44.329220>,  <42.026890, 27.548567, 44.543148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.134617, 27.533421, 44.329220>,  <42.314159, 27.508177, 43.972672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134617, 27.533421, 44.329220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876113, 0.165316, -0.452875,
		-0.175940, -0.984219, -0.018911,
		-0.448855, 0.063110, 0.891373,
		41.999962, 27.552353, 44.596630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701382, 26.978413, 43.974686>,  <42.314159, 27.508177, 43.972672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701382, 26.978413, 43.974686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.651646, 27.284174, 44.227741>,  <41.621803, 27.467630, 44.379574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.651646, 27.284174, 44.227741>,  <41.701382, 26.978413, 43.974686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651646, 27.284174, 44.227741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774468, 0.323807, -0.543460,
		-0.620274, -0.557529, 0.551744,
		-0.124336, 0.764402, 0.632637,
		41.614346, 27.513494, 44.417534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986450, 26.958826, 44.165966>,  <41.701382, 26.978413, 43.974686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986450, 26.958826, 44.165966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.096947, 27.329079, 44.269424>,  <41.163242, 27.551231, 44.331501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.096947, 27.329079, 44.269424>,  <40.986450, 26.958826, 44.165966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096947, 27.329079, 44.269424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775736, 0.373612, -0.508573,
		-0.567385, -0.060153, 0.821253,
		0.276238, 0.925633, 0.258645,
		41.179817, 27.606768, 44.347019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365925, 27.297068, 44.241016>,  <40.986450, 26.958826, 44.165966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365925, 27.297068, 44.241016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.634628, 27.593067, 44.227497>,  <40.795853, 27.770666, 44.219383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.634628, 27.593067, 44.227497>,  <40.365925, 27.297068, 44.241016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634628, 27.593067, 44.227497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656109, 0.573185, -0.490897,
		-0.343887, 0.351944, 0.870561,
		0.671761, 0.739997, -0.033802,
		40.836155, 27.815065, 44.217358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809666, 27.336634, 44.710003>,  <40.365925, 27.297068, 44.241016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809666, 27.336634, 44.710003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.503117, 27.082455, 44.672295>,  <39.319187, 26.929947, 44.649670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.503117, 27.082455, 44.672295>,  <39.809666, 27.336634, 44.710003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503117, 27.082455, 44.672295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269701, -0.451457, 0.850558,
		-0.583044, 0.626415, 0.517363,
		-0.766369, -0.635446, -0.094274,
		39.273205, 26.891821, 44.644012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508499, 27.402493, 45.364178>,  <39.809666, 27.336634, 44.710003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508499, 27.402493, 45.364178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.438576, 27.061306, 45.167446>,  <39.396622, 26.856594, 45.049408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.438576, 27.061306, 45.167446>,  <39.508499, 27.402493, 45.364178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438576, 27.061306, 45.167446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294262, -0.521948, 0.800612,
		-0.939601, -0.004769, 0.342238,
		-0.174813, -0.852964, -0.491826,
		39.386131, 26.805416, 45.019897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245228, 27.003780, 45.792183>,  <39.508499, 27.402493, 45.364178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245228, 27.003780, 45.792183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.357346, 26.723682, 45.529552>,  <39.424618, 26.555624, 45.371975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.357346, 26.723682, 45.529552>,  <39.245228, 27.003780, 45.792183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357346, 26.723682, 45.529552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183682, -0.632227, 0.752695,
		-0.942177, -0.331576, -0.048586,
		0.280293, -0.700247, -0.656574,
		39.441433, 26.513609, 45.332581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920277, 26.359446, 45.883644>,  <39.245228, 27.003780, 45.792183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920277, 26.359446, 45.883644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.220818, 26.226448, 45.655640>,  <39.401142, 26.146650, 45.518837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.220818, 26.226448, 45.655640>,  <38.920277, 26.359446, 45.883644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220818, 26.226448, 45.655640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261734, -0.642785, 0.719946,
		-0.605770, -0.690128, -0.395938,
		0.751358, -0.332491, -0.570010,
		39.446224, 26.126699, 45.484638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890720, 25.662693, 45.995678>,  <38.920277, 26.359446, 45.883644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890720, 25.662693, 45.995678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.256012, 25.750282, 45.858234>,  <39.475185, 25.802835, 45.775768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.256012, 25.750282, 45.858234>,  <38.890720, 25.662693, 45.995678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256012, 25.750282, 45.858234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399058, -0.650957, 0.645762,
		-0.082268, -0.726846, -0.681855,
		0.913228, 0.218974, -0.343606,
		39.529980, 25.815975, 45.755154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207958, 25.075991, 45.911026>,  <38.890720, 25.662693, 45.995678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207958, 25.075991, 45.911026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.518867, 25.325823, 45.941345>,  <39.705414, 25.475723, 45.959538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.518867, 25.325823, 45.941345>,  <39.207958, 25.075991, 45.911026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518867, 25.325823, 45.941345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448999, -0.635046, 0.628583,
		0.440735, -0.454549, -0.774040,
		0.777273, 0.624582, 0.075795,
		39.752048, 25.513197, 45.964085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872715, 24.618652, 45.941769>,  <39.207958, 25.075991, 45.911026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872715, 24.618652, 45.941769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.942791, 24.983723, 46.089462>,  <39.984837, 25.202765, 46.178078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.942791, 24.983723, 46.089462>,  <39.872715, 24.618652, 45.941769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942791, 24.983723, 46.089462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647829, -0.389268, 0.654819,
		0.741368, 0.124484, -0.659452,
		0.175189, 0.912674, 0.369235,
		39.995346, 25.257524, 46.200233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518604, 24.537954, 46.047104>,  <39.872715, 24.618652, 45.941769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518604, 24.537954, 46.047104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.438770, 24.854446, 46.278316>,  <40.390869, 25.044342, 46.417046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.438770, 24.854446, 46.278316>,  <40.518604, 24.537954, 46.047104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438770, 24.854446, 46.278316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574880, -0.383162, 0.722979,
		0.793523, 0.476594, -0.378390,
		-0.199583, 0.791230, 0.578033,
		40.378895, 25.091816, 46.451725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173191, 24.810715, 46.176350>,  <40.518604, 24.537954, 46.047104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173191, 24.810715, 46.176350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.907452, 24.926506, 46.451984>,  <40.748009, 24.995981, 46.617367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.907452, 24.926506, 46.451984>,  <41.173191, 24.810715, 46.176350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907452, 24.926506, 46.451984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598948, -0.345316, 0.722508,
		0.447105, 0.892725, 0.056027,
		-0.664348, 0.289480, 0.689089,
		40.708149, 25.013350, 46.658710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524914, 24.970161, 46.756935>,  <41.173191, 24.810715, 46.176350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524914, 24.970161, 46.756935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.177002, 25.003206, 46.951530>,  <40.968254, 25.023033, 47.068287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.177002, 25.003206, 46.951530>,  <41.524914, 24.970161, 46.756935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177002, 25.003206, 46.951530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460102, -0.220499, 0.860050,
		0.178319, 0.971883, 0.153775,
		-0.869775, 0.082612, 0.486484,
		40.916069, 25.027990, 47.097477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572659, 25.571327, 47.258331>,  <41.524914, 24.970161, 46.756935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572659, 25.571327, 47.258331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.295715, 25.310070, 47.380997>,  <41.129551, 25.153316, 47.454597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.295715, 25.310070, 47.380997>,  <41.572659, 25.571327, 47.258331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295715, 25.310070, 47.380997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473135, -0.090065, 0.876374,
		-0.544778, 0.751859, 0.371382,
		-0.692359, -0.653143, 0.306666,
		41.088009, 25.114126, 47.472996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293701, 25.878336, 47.766308>,  <41.572659, 25.571327, 47.258331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293701, 25.878336, 47.766308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.177357, 25.499462, 47.820335>,  <41.107552, 25.272139, 47.852753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.177357, 25.499462, 47.820335>,  <41.293701, 25.878336, 47.766308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177357, 25.499462, 47.820335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254394, 0.059528, 0.965267,
		-0.922326, 0.315117, 0.223644,
		-0.290859, -0.947184, 0.135068,
		41.090099, 25.215307, 47.860855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942783, 25.856018, 48.451225>,  <41.293701, 25.878336, 47.766308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942783, 25.856018, 48.451225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.032982, 25.477369, 48.359089>,  <41.087101, 25.250179, 48.303806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.032982, 25.477369, 48.359089>,  <40.942783, 25.856018, 48.451225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032982, 25.477369, 48.359089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351075, -0.141589, 0.925580,
		-0.908789, -0.289584, 0.300407,
		0.225499, -0.946622, -0.230340,
		41.100632, 25.193382, 48.289986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598259, 25.506227, 48.864433>,  <40.942783, 25.856018, 48.451225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598259, 25.506227, 48.864433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.918331, 25.280846, 48.782238>,  <41.110374, 25.145617, 48.732922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.918331, 25.280846, 48.782238>,  <40.598259, 25.506227, 48.864433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918331, 25.280846, 48.782238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223941, -0.037142, 0.973895,
		-0.556378, -0.825311, 0.096460,
		0.800184, -0.563455, -0.205486,
		41.158386, 25.111809, 48.720592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850971, 25.922617, 48.820213>,  <40.598259, 25.506227, 48.864433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850971, 25.922617, 48.820213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.934631, 26.054287, 49.188538>,  <39.984829, 26.133289, 49.409534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.934631, 26.054287, 49.188538>,  <39.850971, 25.922617, 48.820213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934631, 26.054287, 49.188538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690197, 0.716754, -0.099457,
		-0.692736, -0.614741, 0.377108,
		0.209154, 0.329176, 0.920814,
		39.997379, 26.153040, 49.464783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340176, 26.092937, 49.186466>,  <39.850971, 25.922617, 48.820213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340176, 26.092937, 49.186466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.559338, 26.356602, 49.392498>,  <39.690834, 26.514801, 49.516117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.559338, 26.356602, 49.392498>,  <39.340176, 26.092937, 49.186466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559338, 26.356602, 49.392498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599827, 0.738748, -0.307342,
		-0.583104, -0.140567, 0.800144,
		0.547903, 0.659160, 0.515083,
		39.723709, 26.554350, 49.547024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872528, 26.469673, 49.491585>,  <39.340176, 26.092937, 49.186466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872528, 26.469673, 49.491585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.207832, 26.686831, 49.471245>,  <39.409016, 26.817125, 49.459042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.207832, 26.686831, 49.471245>,  <38.872528, 26.469673, 49.491585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207832, 26.686831, 49.471245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507089, 0.741881, -0.438719,
		-0.200451, 0.393547, 0.897184,
		0.838260, 0.542894, -0.050853,
		39.459309, 26.849699, 49.455990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594425, 27.145897, 49.775700>,  <38.872528, 26.469673, 49.491585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594425, 27.145897, 49.775700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.936802, 27.236748, 49.589893>,  <39.142227, 27.291258, 49.478409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.936802, 27.236748, 49.589893>,  <38.594425, 27.145897, 49.775700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936802, 27.236748, 49.589893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392380, 0.870383, -0.297442,
		0.336750, 0.436861, 0.834118,
		0.855942, 0.227128, -0.464517,
		39.193584, 27.304886, 49.450539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754932, 27.815662, 49.996525>,  <38.594425, 27.145897, 49.775700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754932, 27.815662, 49.996525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.941025, 27.759537, 49.646927>,  <39.052681, 27.725863, 49.437168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.941025, 27.759537, 49.646927>,  <38.754932, 27.815662, 49.996525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941025, 27.759537, 49.646927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394673, 0.850905, -0.346690,
		0.792333, 0.506235, 0.340491,
		0.465232, -0.140312, -0.873998,
		39.080593, 27.717443, 49.384727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865002, 28.525478, 49.693031>,  <38.754932, 27.815662, 49.996525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865002, 28.525478, 49.693031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.879131, 28.269087, 49.386333>,  <38.887608, 28.115252, 49.202316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.879131, 28.269087, 49.386333>,  <38.865002, 28.525478, 49.693031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879131, 28.269087, 49.386333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466091, 0.668107, -0.579993,
		0.884031, 0.377858, -0.275158,
		0.035320, -0.640981, -0.766744,
		38.889729, 28.076792, 49.156311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025810, 28.956213, 49.168335>,  <38.865002, 28.525478, 49.693031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025810, 28.956213, 49.168335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.905552, 28.625414, 48.978310>,  <38.833397, 28.426935, 48.864296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.905552, 28.625414, 48.978310>,  <39.025810, 28.956213, 49.168335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905552, 28.625414, 48.978310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484224, 0.561493, -0.671009,
		0.821668, 0.028301, -0.569263,
		-0.300647, -0.826997, -0.475065,
		38.815357, 28.377316, 48.835789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454102, 29.424126, 49.073013>,  <39.025810, 28.956213, 49.168335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454102, 29.424126, 49.073013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.447266, 29.716106, 49.346329>,  <39.443165, 29.891294, 49.510319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.447266, 29.716106, 49.346329>,  <39.454102, 29.424126, 49.073013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447266, 29.716106, 49.346329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680679, -0.492080, 0.542710,
		0.732383, 0.474371, -0.488455,
		-0.017087, 0.729952, 0.683285,
		39.442139, 29.935093, 49.551315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146904, 29.400633, 49.315933>,  <39.454102, 29.424126, 49.073013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146904, 29.400633, 49.315933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.927189, 29.580095, 49.597923>,  <39.795361, 29.687773, 49.767117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.927189, 29.580095, 49.597923>,  <40.146904, 29.400633, 49.315933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927189, 29.580095, 49.597923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599682, -0.375879, 0.706468,
		0.581945, 0.810816, -0.062584,
		-0.549291, 0.448656, 0.704973,
		39.762402, 29.714691, 49.809414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606041, 29.815956, 49.848717>,  <40.146904, 29.400633, 49.315933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606041, 29.815956, 49.848717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.261063, 29.695507, 50.011452>,  <40.054077, 29.623238, 50.109093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.261063, 29.695507, 50.011452>,  <40.606041, 29.815956, 49.848717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261063, 29.695507, 50.011452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504029, -0.437443, 0.744714,
		-0.046282, 0.847331, 0.529045,
		-0.862446, -0.301121, 0.406834,
		40.002327, 29.605171, 50.133503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721291, 30.120047, 50.437004>,  <40.606041, 29.815956, 49.848717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721291, 30.120047, 50.437004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.427429, 29.857574, 50.505962>,  <40.251114, 29.700092, 50.547337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.427429, 29.857574, 50.505962>,  <40.721291, 30.120047, 50.437004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427429, 29.857574, 50.505962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462753, -0.298821, 0.834605,
		-0.496135, 0.692918, 0.523177,
		-0.734649, -0.656178, 0.172395,
		40.207035, 29.660721, 50.557682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640297, 30.259523, 51.170452>,  <40.721291, 30.120047, 50.437004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640297, 30.259523, 51.170452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.490959, 29.904749, 51.061668>,  <40.401356, 29.691885, 50.996399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.490959, 29.904749, 51.061668>,  <40.640297, 30.259523, 51.170452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490959, 29.904749, 51.061668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449131, -0.429318, 0.783560,
		-0.811725, 0.170388, 0.558632,
		-0.373340, -0.886935, -0.271962,
		40.378956, 29.638668, 50.980080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376785, 30.031515, 51.786636>,  <40.640297, 30.259523, 51.170452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376785, 30.031515, 51.786636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.425346, 29.695047, 51.575848>,  <40.454483, 29.493166, 51.449375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.425346, 29.695047, 51.575848>,  <40.376785, 30.031515, 51.786636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425346, 29.695047, 51.575848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551517, -0.384241, 0.740398,
		-0.825283, -0.380514, 0.417274,
		0.121398, -0.841171, -0.526967,
		40.461765, 29.442696, 51.417759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284500, 29.364513, 52.304760>,  <40.376785, 30.031515, 51.786636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284500, 29.364513, 52.304760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.500439, 29.229397, 51.996353>,  <40.630001, 29.148327, 51.811310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.500439, 29.229397, 51.996353>,  <40.284500, 29.364513, 52.304760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500439, 29.229397, 51.996353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500674, -0.607464, 0.616695,
		-0.676678, -0.718947, -0.158813,
		0.539845, -0.337791, -0.771016,
		40.662392, 29.128059, 51.765049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222790, 28.617659, 52.249168>,  <40.284500, 29.364513, 52.304760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222790, 28.617659, 52.249168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.562012, 28.708918, 52.057854>,  <40.765545, 28.763674, 51.943066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.562012, 28.708918, 52.057854>,  <40.222790, 28.617659, 52.249168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562012, 28.708918, 52.057854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520569, -0.527434, 0.671432,
		-0.099078, -0.818390, -0.566058,
		0.848051, 0.228148, -0.478286,
		40.816425, 28.777363, 51.914368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397865, 28.066544, 51.839935>,  <40.222790, 28.617659, 52.249168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397865, 28.066544, 51.839935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.227417, 27.811584, 51.583138>,  <40.125149, 27.658609, 51.429058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.227417, 27.811584, 51.583138>,  <40.397865, 28.066544, 51.839935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227417, 27.811584, 51.583138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083356, -0.678959, 0.729428,
		-0.900820, 0.364335, 0.236185,
		-0.426117, -0.637396, -0.641990,
		40.099583, 27.620365, 51.390541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.551693, 36.705315, 39.677937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792980, 37.009941, 39.772724>,  <35.937752, 37.192715, 39.829597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792980, 37.009941, 39.772724>,  <35.551693, 36.705315, 39.677937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792980, 37.009941, 39.772724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003003, -0.294935, 0.955513,
		0.797573, -0.577091, -0.175622,
		0.603215, 0.761563, 0.236965,
		35.973946, 37.238411, 39.843815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085487, 36.378536, 40.004250>,  <35.551693, 36.705315, 39.677937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085487, 36.378536, 40.004250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127552, 36.760647, 40.114803>,  <36.152790, 36.989914, 40.181137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127552, 36.760647, 40.114803>,  <36.085487, 36.378536, 40.004250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127552, 36.760647, 40.114803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206763, -0.292857, 0.933533,
		0.972723, -0.041025, -0.228313,
		0.105162, 0.955276, 0.276386,
		36.159100, 37.047230, 40.197720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716358, 36.382778, 40.511097>,  <36.085487, 36.378536, 40.004250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716358, 36.382778, 40.511097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507206, 36.714024, 40.591915>,  <36.381714, 36.912773, 40.640404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507206, 36.714024, 40.591915>,  <36.716358, 36.382778, 40.511097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507206, 36.714024, 40.591915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067415, -0.196109, 0.978262,
		0.849737, 0.525133, 0.046713,
		-0.522879, 0.828116, 0.202043,
		36.350342, 36.962460, 40.652527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048851, 36.823551, 41.085117>,  <36.716358, 36.382778, 40.511097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048851, 36.823551, 41.085117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672913, 36.960167, 41.087421>,  <36.447350, 37.042137, 41.088802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672913, 36.960167, 41.087421>,  <37.048851, 36.823551, 41.085117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672913, 36.960167, 41.087421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023056, -0.080254, 0.996508,
		0.340813, 0.936434, 0.083301,
		-0.939849, 0.341543, 0.005761,
		36.390957, 37.062630, 41.089149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054703, 37.359756, 41.589367>,  <37.048851, 36.823551, 41.085117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054703, 37.359756, 41.589367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676636, 37.231312, 41.565540>,  <36.449795, 37.154243, 41.551243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676636, 37.231312, 41.565540>,  <37.054703, 37.359756, 41.589367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676636, 37.231312, 41.565540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006462, -0.200742, 0.979623,
		-0.326527, 0.925521, 0.191809,
		-0.945166, -0.321113, -0.059567,
		36.393085, 37.134979, 41.547668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511169, 37.734001, 42.130672>,  <37.054703, 37.359756, 41.589367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511169, 37.734001, 42.130672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350021, 37.379688, 42.038513>,  <36.253330, 37.167099, 41.983219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350021, 37.379688, 42.038513>,  <36.511169, 37.734001, 42.130672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350021, 37.379688, 42.038513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066014, -0.222955, 0.972591,
		-0.912873, 0.407040, 0.031348,
		-0.402872, -0.885782, -0.230400,
		36.229160, 37.113953, 41.969395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061001, 37.722908, 42.666790>,  <36.511169, 37.734001, 42.130672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061001, 37.722908, 42.666790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038029, 37.353680, 42.514668>,  <36.024246, 37.132141, 42.423393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038029, 37.353680, 42.514668>,  <36.061001, 37.722908, 42.666790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038029, 37.353680, 42.514668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177576, -0.365419, 0.913748,
		-0.982430, 0.120013, -0.142928,
		-0.057433, -0.923074, -0.380310,
		36.020798, 37.076759, 42.400574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406162, 37.476521, 42.991703>,  <36.061001, 37.722908, 42.666790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406162, 37.476521, 42.991703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593521, 37.139896, 42.884083>,  <35.705936, 36.937923, 42.819511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593521, 37.139896, 42.884083>,  <35.406162, 37.476521, 42.991703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593521, 37.139896, 42.884083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231665, -0.410850, 0.881779,
		-0.852607, -0.350691, -0.387399,
		0.468395, -0.841557, -0.269051,
		35.734039, 36.887428, 42.803368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048477, 36.884613, 43.399651>,  <35.406162, 37.476521, 42.991703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048477, 36.884613, 43.399651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402355, 36.738911, 43.283283>,  <35.614681, 36.651489, 43.213463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402355, 36.738911, 43.283283>,  <35.048477, 36.884613, 43.399651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402355, 36.738911, 43.283283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053683, -0.540293, 0.839762,
		-0.463069, -0.758551, -0.458440,
		0.884695, -0.364258, -0.290915,
		35.667763, 36.629635, 43.196007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007931, 36.214569, 43.442192>,  <35.048477, 36.884613, 43.399651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007931, 36.214569, 43.442192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400166, 36.292034, 43.454426>,  <35.635506, 36.338512, 43.461765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400166, 36.292034, 43.454426>,  <35.007931, 36.214569, 43.442192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400166, 36.292034, 43.454426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093556, -0.599257, 0.795071,
		0.172302, -0.776779, -0.605745,
		0.980591, 0.193663, 0.030581,
		35.694344, 36.350132, 43.463600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266277, 35.523308, 43.546368>,  <35.007931, 36.214569, 43.442192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266277, 35.523308, 43.546368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559155, 35.777229, 43.645096>,  <35.734882, 35.929581, 43.704334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559155, 35.777229, 43.645096>,  <35.266277, 35.523308, 43.546368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559155, 35.777229, 43.645096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249855, -0.587463, 0.769714,
		0.633613, -0.501911, -0.588745,
		0.732194, 0.634801, 0.246819,
		35.778812, 35.967670, 43.719143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826313, 35.068928, 43.706295>,  <35.266277, 35.523308, 43.546368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826313, 35.068928, 43.706295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935749, 35.413345, 43.877758>,  <36.001411, 35.619995, 43.980637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935749, 35.413345, 43.877758>,  <35.826313, 35.068928, 43.706295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935749, 35.413345, 43.877758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221950, -0.490149, 0.842907,
		0.935888, -0.135473, -0.325210,
		0.273593, 0.861047, 0.428656,
		36.017826, 35.671658, 44.006355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284061, 34.573704, 43.255642>,  <35.826313, 35.068928, 43.706295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284061, 34.573704, 43.255642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987297, 34.305706, 43.245296>,  <35.809238, 34.144905, 43.239090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987297, 34.305706, 43.245296>,  <36.284061, 34.573704, 43.255642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987297, 34.305706, 43.245296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426336, 0.501166, -0.753041,
		0.517506, -0.547656, -0.657465,
		-0.741906, -0.670004, -0.025871,
		35.764725, 34.104706, 43.237537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213432, 34.437084, 42.573318>,  <36.284061, 34.573704, 43.255642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213432, 34.437084, 42.573318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855087, 34.307304, 42.694748>,  <35.640079, 34.229439, 42.767605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855087, 34.307304, 42.694748>,  <36.213432, 34.437084, 42.573318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855087, 34.307304, 42.694748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439361, 0.545056, -0.714055,
		0.066210, -0.773076, -0.630848,
		-0.895867, -0.324448, 0.303571,
		35.586327, 34.209969, 42.785820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873905, 34.182423, 41.956814>,  <36.213432, 34.437084, 42.573318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873905, 34.182423, 41.956814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577518, 34.253403, 42.215885>,  <35.399689, 34.295990, 42.371326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577518, 34.253403, 42.215885>,  <35.873905, 34.182423, 41.956814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577518, 34.253403, 42.215885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538366, 0.419534, -0.730858,
		-0.401415, -0.890225, -0.215324,
		-0.740964, 0.177454, 0.647675,
		35.355228, 34.306641, 42.410187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279221, 33.725071, 41.708725>,  <35.873905, 34.182423, 41.956814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279221, 33.725071, 41.708725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124191, 34.017372, 41.933506>,  <35.031174, 34.192753, 42.068375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124191, 34.017372, 41.933506>,  <35.279221, 33.725071, 41.708725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124191, 34.017372, 41.933506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762792, 0.088073, -0.640618,
		-0.517626, -0.676937, 0.523278,
		-0.387572, 0.730752, 0.561951,
		35.007919, 34.236599, 42.102093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628174, 33.562553, 41.691536>,  <35.279221, 33.725071, 41.708725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628174, 33.562553, 41.691536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648746, 33.940983, 41.819469>,  <34.661091, 34.168041, 41.896229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648746, 33.940983, 41.819469>,  <34.628174, 33.562553, 41.691536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648746, 33.940983, 41.819469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807792, 0.227719, -0.543706,
		-0.587220, -0.230392, 0.775946,
		0.051432, 0.946078, 0.319830,
		34.664177, 34.224808, 41.915417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973709, 33.796139, 41.918114>,  <34.628174, 33.562553, 41.691536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973709, 33.796139, 41.918114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176891, 34.120834, 41.802837>,  <34.298801, 34.315651, 41.733673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176891, 34.120834, 41.802837>,  <33.973709, 33.796139, 41.918114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176891, 34.120834, 41.802837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783640, 0.296586, -0.545843,
		-0.357609, 0.503104, 0.786767,
		0.507960, 0.811741, -0.288191,
		34.329281, 34.364357, 41.716381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530365, 34.263050, 41.954247>,  <33.973709, 33.796139, 41.918114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530365, 34.263050, 41.954247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806324, 34.432911, 41.719738>,  <33.971901, 34.534828, 41.579033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806324, 34.432911, 41.719738>,  <33.530365, 34.263050, 41.954247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806324, 34.432911, 41.719738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723829, 0.392814, -0.567246,
		-0.010589, 0.815700, 0.578378,
		0.689898, 0.424654, -0.586268,
		34.013294, 34.560307, 41.543858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184711, 34.874729, 41.662773>,  <33.530365, 34.263050, 41.954247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184711, 34.874729, 41.662773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495365, 34.830311, 41.414738>,  <33.681759, 34.803661, 41.265919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495365, 34.830311, 41.414738>,  <33.184711, 34.874729, 41.662773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495365, 34.830311, 41.414738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550862, 0.357802, -0.754009,
		0.305597, 0.927171, 0.216710,
		0.776635, -0.111046, -0.620086,
		33.728355, 34.796997, 41.228710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352604, 35.529354, 41.354137>,  <33.184711, 34.874729, 41.662773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352604, 35.529354, 41.354137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515484, 35.254444, 41.113525>,  <33.613213, 35.089497, 40.969158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515484, 35.254444, 41.113525>,  <33.352604, 35.529354, 41.354137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515484, 35.254444, 41.113525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405675, 0.453970, -0.793309,
		0.818299, 0.567063, -0.093954,
		0.407204, -0.687279, -0.601526,
		33.637646, 35.048260, 40.933067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736614, 35.844791, 40.736820>,  <33.352604, 35.529354, 41.354137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736614, 35.844791, 40.736820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650620, 35.476727, 40.605927>,  <33.599022, 35.255886, 40.527390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650620, 35.476727, 40.605927>,  <33.736614, 35.844791, 40.736820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650620, 35.476727, 40.605927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268793, 0.377878, -0.885979,
		0.938899, -0.102513, -0.328571,
		-0.214984, -0.920162, -0.327234,
		33.586124, 35.200676, 40.507755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845406, 35.970909, 40.078712>,  <33.736614, 35.844791, 40.736820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845406, 35.970909, 40.078712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622883, 35.638599, 40.071320>,  <33.489368, 35.439213, 40.066883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622883, 35.638599, 40.071320>,  <33.845406, 35.970909, 40.078712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622883, 35.638599, 40.071320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420868, 0.300863, -0.855775,
		0.716514, -0.468295, -0.517017,
		-0.556307, -0.830772, -0.018482,
		33.455990, 35.389366, 40.065777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052357, 35.623173, 39.455463>,  <33.845406, 35.970909, 40.078712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052357, 35.623173, 39.455463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680653, 35.515156, 39.556309>,  <33.457630, 35.450348, 39.616814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680653, 35.515156, 39.556309>,  <34.052357, 35.623173, 39.455463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680653, 35.515156, 39.556309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264891, 0.011342, -0.964212,
		0.257516, -0.962782, -0.082070,
		-0.929257, -0.270040, 0.252111,
		33.401875, 35.434143, 39.631943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938942, 34.941284, 39.229092>,  <34.052357, 35.623173, 39.455463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938942, 34.941284, 39.229092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621052, 35.184013, 39.234440>,  <33.430317, 35.329651, 39.237648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621052, 35.184013, 39.234440>,  <33.938942, 34.941284, 39.229092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621052, 35.184013, 39.234440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126009, -0.143406, -0.981609,
		-0.593746, -0.781793, 0.190434,
		-0.794725, 0.606822, 0.013366,
		33.382633, 35.366058, 39.238449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497410, 34.599293, 38.745537>,  <33.938942, 34.941284, 39.229092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497410, 34.599293, 38.745537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465317, 34.995174, 38.792961>,  <33.446060, 35.232704, 38.821415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465317, 34.995174, 38.792961>,  <33.497410, 34.599293, 38.745537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465317, 34.995174, 38.792961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140856, 0.129011, -0.981588,
		-0.986774, -0.062054, -0.149756,
		-0.080231, 0.989700, 0.118564,
		33.441246, 35.292084, 38.828529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584698, 33.972179, 38.605961>,  <33.497410, 34.599293, 38.745537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584698, 33.972179, 38.605961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537983, 33.682896, 38.333687>,  <33.509956, 33.509323, 38.170322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537983, 33.682896, 38.333687>,  <33.584698, 33.972179, 38.605961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537983, 33.682896, 38.333687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500494, -0.634836, 0.588633,
		-0.857827, -0.271934, 0.436102,
		-0.116785, -0.723212, -0.680681,
		33.502949, 33.465931, 38.129482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492378, 33.329563, 39.033127>,  <33.584698, 33.972179, 38.605961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492378, 33.329563, 39.033127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635029, 33.229900, 38.672962>,  <33.720619, 33.170105, 38.456863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635029, 33.229900, 38.672962>,  <33.492378, 33.329563, 39.033127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635029, 33.229900, 38.672962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612937, -0.664965, 0.426766,
		-0.705074, -0.704090, -0.084424,
		0.356621, -0.249154, -0.900413,
		33.742016, 33.155155, 38.402840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330826, 32.628975, 38.872437>,  <33.492378, 33.329563, 39.033127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330826, 32.628975, 38.872437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672150, 32.801888, 38.755817>,  <33.876945, 32.905636, 38.685844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672150, 32.801888, 38.755817>,  <33.330826, 32.628975, 38.872437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672150, 32.801888, 38.755817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521042, -0.686065, 0.507770,
		0.019477, -0.585193, -0.810660,
		0.853309, 0.432278, -0.291548,
		33.928143, 32.931572, 38.668354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614532, 32.229107, 38.398815>,  <33.330826, 32.628975, 38.872437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614532, 32.229107, 38.398815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908978, 32.446083, 38.560753>,  <34.085644, 32.576267, 38.657913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908978, 32.446083, 38.560753>,  <33.614532, 32.229107, 38.398815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908978, 32.446083, 38.560753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494016, -0.839436, 0.226483,
		0.462691, 0.033280, -0.885894,
		0.736115, 0.542438, 0.404841,
		34.129810, 32.608814, 38.682205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159817, 31.961311, 38.149071>,  <33.614532, 32.229107, 38.398815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159817, 31.961311, 38.149071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317406, 32.133389, 38.473961>,  <34.411961, 32.236633, 38.668896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317406, 32.133389, 38.473961>,  <34.159817, 31.961311, 38.149071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317406, 32.133389, 38.473961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456876, -0.858455, 0.233068,
		0.797526, 0.279265, -0.534756,
		0.393976, 0.430194, 0.812229,
		34.435600, 32.262447, 38.717628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793686, 31.668325, 38.127163>,  <34.159817, 31.961311, 38.149071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793686, 31.668325, 38.127163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758026, 31.810753, 38.499241>,  <34.736629, 31.896210, 38.722488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758026, 31.810753, 38.499241>,  <34.793686, 31.668325, 38.127163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758026, 31.810753, 38.499241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530279, -0.773587, 0.346942,
		0.843123, 0.524192, -0.119854,
		-0.089147, 0.356071, 0.930197,
		34.731281, 31.917574, 38.778301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476784, 31.608860, 38.536003>,  <34.793686, 31.668325, 38.127163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476784, 31.608860, 38.536003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164757, 31.589319, 38.785519>,  <34.977543, 31.577595, 38.935226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164757, 31.589319, 38.785519>,  <35.476784, 31.608860, 38.536003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164757, 31.589319, 38.785519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381090, -0.827794, 0.411736,
		0.496255, 0.558901, 0.664350,
		-0.780065, -0.048851, 0.623788,
		34.930737, 31.574663, 38.972656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752518, 31.399353, 39.116753>,  <35.476784, 31.608860, 38.536003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752518, 31.399353, 39.116753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370571, 31.298660, 39.179813>,  <35.141403, 31.238245, 39.217651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370571, 31.298660, 39.179813>,  <35.752518, 31.399353, 39.116753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370571, 31.298660, 39.179813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296570, -0.837467, 0.459016,
		0.016481, 0.485056, 0.874328,
		-0.954869, -0.251734, 0.157656,
		35.084110, 31.223141, 39.227112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806053, 31.302380, 39.844650>,  <35.752518, 31.399353, 39.116753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806053, 31.302380, 39.844650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460922, 31.140276, 39.723793>,  <35.253841, 31.043015, 39.651279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460922, 31.140276, 39.723793>,  <35.806053, 31.302380, 39.844650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460922, 31.140276, 39.723793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074212, -0.692793, 0.717308,
		-0.500014, 0.596494, 0.627838,
		-0.862832, -0.405257, -0.302140,
		35.202072, 31.018700, 39.633152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288807, 31.261583, 40.409683>,  <35.806053, 31.302380, 39.844650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288807, 31.261583, 40.409683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163986, 30.970741, 40.165081>,  <35.089092, 30.796236, 40.018318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163986, 30.970741, 40.165081>,  <35.288807, 31.261583, 40.409683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163986, 30.970741, 40.165081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264837, -0.684709, 0.678995,
		-0.912406, 0.049931, 0.406228,
		-0.312051, -0.727104, -0.611509,
		35.070370, 30.752609, 39.981628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756050, 30.848885, 40.769276>,  <35.288807, 31.261583, 40.409683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756050, 30.848885, 40.769276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897079, 30.607975, 40.482792>,  <34.981697, 30.463428, 40.310902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897079, 30.607975, 40.482792>,  <34.756050, 30.848885, 40.769276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897079, 30.607975, 40.482792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021521, -0.759939, 0.649638,
		-0.935538, -0.244456, -0.254970,
		0.352570, -0.602273, -0.716213,
		35.002850, 30.427294, 40.267929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413792, 30.200748, 40.830791>,  <34.756050, 30.848885, 40.769276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413792, 30.200748, 40.830791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713848, 30.081444, 40.594715>,  <34.893883, 30.009861, 40.453068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713848, 30.081444, 40.594715>,  <34.413792, 30.200748, 40.830791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713848, 30.081444, 40.594715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060271, -0.857954, 0.510180,
		-0.658526, -0.418278, -0.625609,
		0.750141, -0.298261, -0.590195,
		34.938889, 29.991966, 40.417656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449280, 29.419292, 40.854160>,  <34.413792, 30.200748, 40.830791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449280, 29.419292, 40.854160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804249, 29.531441, 40.707806>,  <35.017231, 29.598730, 40.619995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804249, 29.531441, 40.707806>,  <34.449280, 29.419292, 40.854160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804249, 29.531441, 40.707806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457520, -0.632435, 0.625062,
		-0.056149, -0.722094, -0.689513,
		0.887425, 0.280369, -0.365883,
		35.070477, 29.615551, 40.598042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846657, 28.812992, 40.879826>,  <34.449280, 29.419292, 40.854160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846657, 28.812992, 40.879826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132149, 29.091166, 40.846466>,  <35.303444, 29.258070, 40.826450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132149, 29.091166, 40.846466>,  <34.846657, 28.812992, 40.879826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132149, 29.091166, 40.846466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618086, -0.569344, 0.542049,
		0.329478, -0.438425, -0.836198,
		0.713732, 0.695436, -0.083398,
		35.346268, 29.299797, 40.821445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480762, 28.465914, 40.633312>,  <34.846657, 28.812992, 40.879826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480762, 28.465914, 40.633312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560726, 28.813225, 40.814919>,  <35.608704, 29.021612, 40.923882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560726, 28.813225, 40.814919>,  <35.480762, 28.465914, 40.633312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560726, 28.813225, 40.814919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768746, -0.426291, 0.476766,
		0.607509, 0.253715, -0.752703,
		0.199908, 0.868277, 0.454018,
		35.620697, 29.073708, 40.951122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226231, 28.635874, 40.561794>,  <35.480762, 28.465914, 40.633312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226231, 28.635874, 40.561794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126984, 28.821505, 40.901928>,  <36.067436, 28.932884, 41.106007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126984, 28.821505, 40.901928>,  <36.226231, 28.635874, 40.561794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126984, 28.821505, 40.901928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811709, -0.379504, 0.443965,
		0.528740, 0.800380, -0.282535,
		-0.248117, 0.464078, 0.850335,
		36.052547, 28.960728, 41.157028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929768, 28.849287, 40.830288>,  <36.226231, 28.635874, 40.561794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929768, 28.849287, 40.830288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704723, 28.941568, 41.147842>,  <36.569698, 28.996937, 41.338375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704723, 28.941568, 41.147842>,  <36.929768, 28.849287, 40.830288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704723, 28.941568, 41.147842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702091, -0.373694, 0.606152,
		0.436511, 0.898403, 0.048268,
		-0.562606, 0.230704, 0.793883,
		36.535942, 29.010780, 41.386005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314678, 29.336048, 41.281399>,  <36.929768, 28.849287, 40.830288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314678, 29.336048, 41.281399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028370, 29.151052, 41.490692>,  <36.856583, 29.040054, 41.616268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028370, 29.151052, 41.490692>,  <37.314678, 29.336048, 41.281399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028370, 29.151052, 41.490692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687736, -0.336810, 0.643101,
		-0.121197, 0.820160, 0.559150,
		-0.715773, -0.462490, 0.523233,
		36.813637, 29.012306, 41.647663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439949, 29.501825, 41.935524>,  <37.314678, 29.336048, 41.281399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439949, 29.501825, 41.935524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235519, 29.158020, 41.937954>,  <37.112862, 28.951736, 41.939411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235519, 29.158020, 41.937954>,  <37.439949, 29.501825, 41.935524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235519, 29.158020, 41.937954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620805, -0.364232, 0.694217,
		-0.594476, 0.358569, 0.719741,
		-0.511077, -0.859513, 0.006075,
		37.082195, 28.900166, 41.939777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290287, 29.342871, 42.684807>,  <37.439949, 29.501825, 41.935524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290287, 29.342871, 42.684807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249504, 29.001062, 42.481079>,  <37.225033, 28.795979, 42.358845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249504, 29.001062, 42.481079>,  <37.290287, 29.342871, 42.684807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249504, 29.001062, 42.481079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527140, -0.480601, 0.700818,
		-0.843640, -0.197027, 0.499452,
		-0.101957, -0.854519, -0.509315,
		37.218918, 28.744707, 42.328285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846207, 28.853020, 43.170246>,  <37.290287, 29.342871, 42.684807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846207, 28.853020, 43.170246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060932, 28.651251, 42.899723>,  <37.189766, 28.530190, 42.737411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060932, 28.651251, 42.899723>,  <36.846207, 28.853020, 43.170246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060932, 28.651251, 42.899723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268281, -0.657933, 0.703669,
		-0.799911, -0.559178, -0.217859,
		0.536813, -0.504425, -0.676304,
		37.221977, 28.499924, 42.696831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687435, 28.034946, 43.378265>,  <36.846207, 28.853020, 43.170246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687435, 28.034946, 43.378265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005840, 28.045757, 43.136398>,  <37.196884, 28.052244, 42.991276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005840, 28.045757, 43.136398>,  <36.687435, 28.034946, 43.378265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005840, 28.045757, 43.136398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435445, -0.719456, 0.541083,
		-0.420411, -0.694012, -0.584467,
		0.796016, 0.027025, -0.604671,
		37.244644, 28.053865, 42.954998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902714, 27.341400, 43.284172>,  <36.687435, 28.034946, 43.378265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902714, 27.341400, 43.284172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249191, 27.516821, 43.188358>,  <37.457077, 27.622074, 43.130871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249191, 27.516821, 43.188358>,  <36.902714, 27.341400, 43.284172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249191, 27.516821, 43.188358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499494, -0.745917, 0.440583,
		0.014546, -0.501277, -0.865165,
		0.866195, 0.438553, -0.239535,
		37.509048, 27.648386, 43.116497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426575, 26.852890, 43.102783>,  <36.902714, 27.341400, 43.284172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426575, 26.852890, 43.102783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656998, 27.174078, 43.163967>,  <37.795250, 27.366791, 43.200676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656998, 27.174078, 43.163967>,  <37.426575, 26.852890, 43.102783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656998, 27.174078, 43.163967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673207, -0.572186, 0.468397,
		0.463630, -0.166850, -0.870177,
		0.576056, 0.802972, 0.152958,
		37.829815, 27.414970, 43.209854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015862, 26.565199, 43.037251>,  <37.426575, 26.852890, 43.102783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015862, 26.565199, 43.037251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082420, 26.907417, 43.233356>,  <38.122356, 27.112747, 43.351021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082420, 26.907417, 43.233356>,  <38.015862, 26.565199, 43.037251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082420, 26.907417, 43.233356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592462, -0.484186, 0.643858,
		0.788226, 0.183324, -0.587444,
		0.166398, 0.855544, 0.490261,
		38.132339, 27.164080, 43.380436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689789, 26.608740, 43.086132>,  <38.015862, 26.565199, 43.037251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689789, 26.608740, 43.086132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553467, 26.846544, 43.377449>,  <38.471672, 26.989227, 43.552238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553467, 26.846544, 43.377449>,  <38.689789, 26.608740, 43.086132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553467, 26.846544, 43.377449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662052, -0.398241, 0.634895,
		0.667487, 0.698543, -0.257873,
		-0.340806, 0.594509, 0.728292,
		38.451225, 27.024897, 43.595936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330814, 26.975481, 43.412941>,  <38.689789, 26.608740, 43.086132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330814, 26.975481, 43.412941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057579, 27.000738, 43.703979>,  <38.893639, 27.015892, 43.878605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057579, 27.000738, 43.703979>,  <39.330814, 26.975481, 43.412941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057579, 27.000738, 43.703979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698150, -0.236031, 0.675926,
		0.214417, 0.969692, 0.117146,
		-0.683090, 0.063144, 0.727599,
		38.852654, 27.019682, 43.922260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636387, 27.316788, 43.998726>,  <39.330814, 26.975481, 43.412941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636387, 27.316788, 43.998726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316525, 27.138237, 44.159374>,  <39.124607, 27.031107, 44.255764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316525, 27.138237, 44.159374>,  <39.636387, 27.316788, 43.998726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316525, 27.138237, 44.159374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549486, -0.274295, 0.789194,
		-0.242113, 0.851769, 0.464619,
		-0.799654, -0.446376, 0.401625,
		39.076630, 27.004324, 44.279861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948826, 27.875851, 44.239616>,  <39.636387, 27.316788, 43.998726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948826, 27.875851, 44.239616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289684, 28.030918, 44.099014>,  <40.494198, 28.123959, 44.014652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289684, 28.030918, 44.099014>,  <39.948826, 27.875851, 44.239616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289684, 28.030918, 44.099014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522929, 0.605387, -0.600043,
		-0.019820, 0.695138, 0.718602,
		0.852146, 0.387671, -0.351509,
		40.545326, 28.147219, 43.993561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917427, 28.587204, 44.292946>,  <39.948826, 27.875851, 44.239616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917427, 28.587204, 44.292946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193180, 28.534565, 44.008007>,  <40.358631, 28.502981, 43.837044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193180, 28.534565, 44.008007>,  <39.917427, 28.587204, 44.292946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193180, 28.534565, 44.008007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542685, 0.557554, -0.628193,
		0.479839, 0.819644, 0.312952,
		0.689383, -0.131597, -0.712344,
		40.399994, 28.495087, 43.794304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293121, 29.149687, 44.105343>,  <39.917427, 28.587204, 44.292946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293121, 29.149687, 44.105343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311352, 28.926725, 43.773746>,  <40.322292, 28.792948, 43.574791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311352, 28.926725, 43.773746>,  <40.293121, 29.149687, 44.105343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311352, 28.926725, 43.773746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341072, 0.771302, -0.537368,
		0.938932, 0.307238, -0.154959,
		0.045580, -0.557404, -0.828990,
		40.325024, 28.759504, 43.525051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242485, 29.550804, 43.620586>,  <40.293121, 29.149687, 44.105343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242485, 29.550804, 43.620586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250305, 29.229162, 43.382919>,  <40.254997, 29.036177, 43.240318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250305, 29.229162, 43.382919>,  <40.242485, 29.550804, 43.620586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250305, 29.229162, 43.382919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152137, 0.584967, -0.796661,
		0.988166, 0.105970, -0.110898,
		0.019551, -0.804105, -0.594166,
		40.256172, 28.987930, 43.204670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676670, 29.759233, 43.051434>,  <40.242485, 29.550804, 43.620586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676670, 29.759233, 43.051434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435646, 29.456264, 42.950848>,  <40.291031, 29.274483, 42.890495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435646, 29.456264, 42.950848>,  <40.676670, 29.759233, 43.051434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435646, 29.456264, 42.950848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043398, 0.345719, -0.937334,
		0.796894, -0.553885, -0.241186,
		-0.602558, -0.757423, -0.251464,
		40.254879, 29.229038, 42.875408>
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
