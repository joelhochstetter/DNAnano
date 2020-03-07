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
	<36.040619, 52.882324, 50.301582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018707, 52.797546, 49.911285>,  <36.005562, 52.746681, 49.677105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018707, 52.797546, 49.911285>,  <36.040619, 52.882324, 50.301582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018707, 52.797546, 49.911285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938383, 0.323027, -0.122844,
		0.341228, -0.922352, 0.181192,
		-0.054775, -0.211946, -0.975745,
		36.002274, 52.733963, 49.618561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749893, 52.684757, 50.101543>,  <36.040619, 52.882324, 50.301582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749893, 52.684757, 50.101543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549034, 52.787979, 49.771393>,  <36.428516, 52.849911, 49.573303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549034, 52.787979, 49.771393>,  <36.749893, 52.684757, 50.101543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549034, 52.787979, 49.771393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845230, 0.348253, -0.405346,
		0.182840, -0.901182, -0.392989,
		-0.502150, 0.258053, -0.825381,
		36.398388, 52.865395, 49.523777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005093, 52.388592, 49.437881>,  <36.749893, 52.684757, 50.101543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005093, 52.388592, 49.437881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845821, 52.754559, 49.411392>,  <36.750259, 52.974136, 49.395500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845821, 52.754559, 49.411392>,  <37.005093, 52.388592, 49.437881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845821, 52.754559, 49.411392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912463, 0.387630, -0.130972,
		-0.094159, -0.112575, -0.989172,
		-0.398177, 0.914915, -0.066221,
		36.726368, 53.029034, 49.391525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587349, 52.021469, 49.148811>,  <37.005093, 52.388592, 49.437881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587349, 52.021469, 49.148811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743805, 51.668148, 49.045437>,  <37.837677, 51.456154, 48.983414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743805, 51.668148, 49.045437>,  <37.587349, 52.021469, 49.148811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743805, 51.668148, 49.045437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749268, 0.468683, -0.467903,
		0.534422, -0.010619, 0.845151,
		0.391139, -0.883303, -0.258432,
		37.861145, 51.403156, 48.967907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253788, 51.860569, 49.376251>,  <37.587349, 52.021469, 49.148811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253788, 51.860569, 49.376251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165955, 51.707561, 49.017262>,  <38.113255, 51.615757, 48.801868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165955, 51.707561, 49.017262>,  <38.253788, 51.860569, 49.376251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165955, 51.707561, 49.017262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861320, 0.356005, -0.362474,
		0.458158, -0.852609, 0.251295,
		-0.219587, -0.382516, -0.897476,
		38.100079, 51.592808, 48.748020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738125, 52.456902, 49.521465>,  <38.253788, 51.860569, 49.376251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738125, 52.456902, 49.521465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085945, 52.551689, 49.348156>,  <39.294636, 52.608562, 49.244171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085945, 52.551689, 49.348156>,  <38.738125, 52.456902, 49.521465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085945, 52.551689, 49.348156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454505, -0.040852, 0.889807,
		0.193157, -0.970658, -0.143226,
		0.869549, 0.236969, -0.433278,
		39.346809, 52.622780, 49.218174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389137, 52.033703, 49.729942>,  <38.738125, 52.456902, 49.521465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389137, 52.033703, 49.729942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532719, 52.385689, 49.605480>,  <39.618866, 52.596882, 49.530804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532719, 52.385689, 49.605480>,  <39.389137, 52.033703, 49.729942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532719, 52.385689, 49.605480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559678, 0.063856, 0.826246,
		0.746937, -0.470726, -0.469577,
		0.358950, 0.879966, -0.311151,
		39.640404, 52.649677, 49.512135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075420, 52.041351, 49.490284>,  <39.389137, 52.033703, 49.729942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075420, 52.041351, 49.490284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002090, 52.394035, 49.664169>,  <39.958092, 52.605648, 49.768501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002090, 52.394035, 49.664169>,  <40.075420, 52.041351, 49.490284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002090, 52.394035, 49.664169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537753, -0.280235, 0.795167,
		0.822931, 0.379538, -0.422771,
		-0.183321, 0.881714, 0.434711,
		39.947094, 52.658550, 49.794582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711250, 52.337036, 49.622875>,  <40.075420, 52.041351, 49.490284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711250, 52.337036, 49.622875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460514, 52.518265, 49.876423>,  <40.310070, 52.627003, 50.028553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460514, 52.518265, 49.876423>,  <40.711250, 52.337036, 49.622875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460514, 52.518265, 49.876423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556838, -0.308533, 0.771193,
		0.544976, 0.836381, -0.058886,
		-0.626843, 0.453071, 0.633872,
		40.272461, 52.654186, 50.066586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092121, 52.477482, 50.136856>,  <40.711250, 52.337036, 49.622875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092121, 52.477482, 50.136856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745026, 52.551727, 50.321281>,  <40.536770, 52.596275, 50.431938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745026, 52.551727, 50.321281>,  <41.092121, 52.477482, 50.136856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745026, 52.551727, 50.321281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435529, -0.162994, 0.885295,
		0.239471, 0.969011, 0.060597,
		-0.867737, 0.185611, 0.461064,
		40.484703, 52.607410, 50.459602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321079, 52.779991, 50.739021>,  <41.092121, 52.477482, 50.136856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321079, 52.779991, 50.739021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940411, 52.696617, 50.829250>,  <40.712009, 52.646591, 50.883389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940411, 52.696617, 50.829250>,  <41.321079, 52.779991, 50.739021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940411, 52.696617, 50.829250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268752, -0.209623, 0.940122,
		-0.148667, 0.955308, 0.255509,
		-0.951667, -0.208434, 0.225577,
		40.654911, 52.634087, 50.896923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984367, 53.094250, 51.298275>,  <41.321079, 52.779991, 50.739021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984367, 53.094250, 51.298275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773720, 52.754341, 51.288879>,  <40.647331, 52.550396, 51.283241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773720, 52.754341, 51.288879>,  <40.984367, 53.094250, 51.298275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773720, 52.754341, 51.288879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104541, -0.092154, 0.990242,
		-0.843648, 0.519027, 0.137367,
		-0.526621, -0.849776, -0.023485,
		40.615734, 52.499409, 51.281834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293938, 52.999203, 51.663544>,  <40.984367, 53.094250, 51.298275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293938, 52.999203, 51.663544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516422, 52.666946, 51.653183>,  <40.649914, 52.467594, 51.646965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516422, 52.666946, 51.653183>,  <40.293938, 52.999203, 51.663544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516422, 52.666946, 51.653183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187412, 0.095002, 0.977677,
		-0.809636, -0.548646, 0.208512,
		0.556208, -0.830640, -0.025906,
		40.683285, 52.417755, 51.645412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158676, 52.384132, 52.134911>,  <40.293938, 52.999203, 51.663544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158676, 52.384132, 52.134911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547401, 52.421539, 52.048340>,  <40.780636, 52.443985, 51.996395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547401, 52.421539, 52.048340>,  <40.158676, 52.384132, 52.134911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547401, 52.421539, 52.048340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212317, 0.052015, 0.975815,
		0.102509, -0.994258, 0.030694,
		0.971809, 0.093513, -0.216430,
		40.838943, 52.449593, 51.983410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298550, 52.261276, 52.751167>,  <40.158676, 52.384132, 52.134911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298550, 52.261276, 52.751167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638847, 52.395245, 52.589149>,  <40.843025, 52.475624, 52.491940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638847, 52.395245, 52.589149>,  <40.298550, 52.261276, 52.751167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638847, 52.395245, 52.589149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428189, 0.005207, 0.903674,
		0.304765, -0.942233, -0.138979,
		0.850748, 0.334917, -0.405041,
		40.894073, 52.495720, 52.467636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994728, 51.798241, 53.019878>,  <40.298550, 52.261276, 52.751167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994728, 51.798241, 53.019878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988724, 52.191101, 52.944878>,  <40.985123, 52.426819, 52.899876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988724, 52.191101, 52.944878>,  <40.994728, 51.798241, 53.019878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988724, 52.191101, 52.944878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446348, 0.174381, 0.877704,
		0.894734, -0.070519, -0.440997,
		-0.015007, 0.982150, -0.187501,
		40.984222, 52.485744, 52.888626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676125, 52.144974, 53.174332>,  <40.994728, 51.798241, 53.019878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676125, 52.144974, 53.174332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393440, 52.425018, 53.215141>,  <41.223831, 52.593044, 53.239628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393440, 52.425018, 53.215141>,  <41.676125, 52.144974, 53.174332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393440, 52.425018, 53.215141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333861, 0.202867, 0.920534,
		0.623779, 0.684609, -0.377107,
		-0.706708, 0.700111, 0.102020,
		41.181427, 52.635052, 53.245747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948643, 52.902016, 53.202206>,  <41.676125, 52.144974, 53.174332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948643, 52.902016, 53.202206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617977, 52.808868, 53.407104>,  <41.419579, 52.752979, 53.530045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617977, 52.808868, 53.407104>,  <41.948643, 52.902016, 53.202206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617977, 52.808868, 53.407104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439370, 0.301602, 0.846162,
		-0.351535, 0.924560, -0.147011,
		-0.826666, -0.232864, 0.512247,
		41.369976, 52.739010, 53.560780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643440, 52.811687, 53.669262>,  <41.948643, 52.902016, 53.202206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643440, 52.811687, 53.669262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935253, 52.540913, 53.708347>,  <43.110340, 52.378448, 53.731800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935253, 52.540913, 53.708347>,  <42.643440, 52.811687, 53.669262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935253, 52.540913, 53.708347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633609, 0.615102, -0.469244,
		0.257540, 0.404242, 0.877646,
		0.729529, -0.676933, 0.097717,
		43.154114, 52.337833, 53.737663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155293, 53.184025, 53.942524>,  <42.643440, 52.811687, 53.669262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155293, 53.184025, 53.942524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312695, 52.899532, 53.709526>,  <43.407135, 52.728836, 53.569729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312695, 52.899532, 53.709526>,  <43.155293, 53.184025, 53.942524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312695, 52.899532, 53.709526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613973, 0.674914, -0.409302,
		0.684243, -0.196571, 0.702262,
		0.393510, -0.711232, -0.582494,
		43.430748, 52.686161, 53.534779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886425, 53.117844, 54.030190>,  <43.155293, 53.184025, 53.942524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886425, 53.117844, 54.030190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784824, 53.021084, 53.655602>,  <43.723866, 52.963028, 53.430851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784824, 53.021084, 53.655602>,  <43.886425, 53.117844, 54.030190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784824, 53.021084, 53.655602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598415, 0.721353, -0.348641,
		0.759859, -0.648950, -0.038465,
		-0.253998, -0.241900, -0.936466,
		43.708626, 52.948513, 53.374660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300259, 53.554874, 53.708664>,  <43.886425, 53.117844, 54.030190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300259, 53.554874, 53.708664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053436, 53.432430, 53.418690>,  <43.905342, 53.358963, 53.244705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053436, 53.432430, 53.418690>,  <44.300259, 53.554874, 53.708664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053436, 53.432430, 53.418690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414202, 0.656952, -0.629961,
		0.669092, -0.688991, -0.278581,
		-0.617052, -0.306113, -0.724943,
		43.868320, 53.340599, 53.201206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659332, 53.057968, 53.245029>,  <44.300259, 53.554874, 53.708664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659332, 53.057968, 53.245029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396519, 53.326283, 53.107422>,  <44.238831, 53.487270, 53.024857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396519, 53.326283, 53.107422>,  <44.659332, 53.057968, 53.245029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396519, 53.326283, 53.107422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729511, 0.450698, -0.514476,
		-0.190058, -0.588992, -0.785472,
		-0.657033, 0.670791, -0.344018,
		44.199409, 53.527519, 53.004215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722683, 53.185398, 52.520866>,  <44.659332, 53.057968, 53.245029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722683, 53.185398, 52.520866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625793, 53.524590, 52.709442>,  <44.567661, 53.728104, 52.822586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625793, 53.524590, 52.709442>,  <44.722683, 53.185398, 52.520866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625793, 53.524590, 52.709442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700436, 0.489066, -0.519812,
		-0.671355, 0.204300, -0.712421,
		-0.242223, 0.847983, 0.471436,
		44.553127, 53.778984, 52.850872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399647, 53.572876, 52.062233>,  <44.722683, 53.185398, 52.520866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399647, 53.572876, 52.062233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586517, 53.768497, 52.356873>,  <44.698639, 53.885868, 52.533657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586517, 53.768497, 52.356873>,  <44.399647, 53.572876, 52.062233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586517, 53.768497, 52.356873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756038, 0.210994, -0.619588,
		-0.458427, 0.846353, -0.271168,
		0.467175, 0.489049, 0.736600,
		44.726669, 53.915211, 52.577854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413811, 54.163719, 51.826447>,  <44.399647, 53.572876, 52.062233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413811, 54.163719, 51.826447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715229, 54.108063, 52.083447>,  <44.896080, 54.074669, 52.237648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715229, 54.108063, 52.083447>,  <44.413811, 54.163719, 51.826447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715229, 54.108063, 52.083447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608557, 0.517315, -0.601701,
		-0.248655, 0.844408, 0.474495,
		0.753544, -0.139142, 0.642503,
		44.941292, 54.066319, 52.276199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.878670, 54.768898, 52.202518>,  <44.413811, 54.163719, 51.826447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.878670, 54.768898, 52.202518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100182, 54.453720, 52.094833>,  <45.233089, 54.264614, 52.030224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100182, 54.453720, 52.094833>,  <44.878670, 54.768898, 52.202518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.100182, 54.453720, 52.094833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623449, 0.606679, -0.493206,
		0.551945, 0.105285, 0.827207,
		0.553776, -0.787944, -0.269214,
		45.266315, 54.217339, 52.014069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488560, 54.935833, 52.554604>,  <44.878670, 54.768898, 52.202518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488560, 54.935833, 52.554604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502987, 54.751373, 52.199966>,  <45.511642, 54.640697, 51.987186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502987, 54.751373, 52.199966>,  <45.488560, 54.935833, 52.554604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502987, 54.751373, 52.199966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545231, 0.752576, -0.369259,
		0.837509, -0.470076, 0.278579,
		0.036073, -0.461148, -0.886590,
		45.513809, 54.613029, 51.933990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.238003, 54.991890, 52.298546>,  <45.488560, 54.935833, 52.554604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.238003, 54.991890, 52.298546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.964531, 54.997494, 52.006687>,  <45.800449, 55.000858, 51.831570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.964531, 54.997494, 52.006687>,  <46.238003, 54.991890, 52.298546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.964531, 54.997494, 52.006687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554324, 0.660276, -0.506716,
		0.474670, -0.750893, -0.459182,
		-0.683677, 0.014012, -0.729651,
		45.759426, 55.001698, 51.787792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.607601, 54.864853, 51.748219>,  <46.238003, 54.991890, 52.298546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.607601, 54.864853, 51.748219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294308, 55.076626, 51.617836>,  <46.106331, 55.203690, 51.539608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294308, 55.076626, 51.617836>,  <46.607601, 54.864853, 51.748219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294308, 55.076626, 51.617836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596041, 0.490274, -0.635898,
		-0.176854, -0.692342, -0.699561,
		-0.783235, 0.529428, -0.325957,
		46.059338, 55.235455, 51.520050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.212875, 54.391445, 52.002899>,  <46.607601, 54.864853, 51.748219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.212875, 54.391445, 52.002899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.548351, 54.587570, 52.097717>,  <47.749638, 54.705246, 52.154610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.548351, 54.587570, 52.097717>,  <47.212875, 54.391445, 52.002899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.548351, 54.587570, 52.097717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099887, -0.289382, 0.951988,
		0.535371, -0.822100, -0.193726,
		0.838690, 0.490315, 0.237044,
		47.799957, 54.734665, 52.168831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.812637, 54.023029, 52.305611>,  <47.212875, 54.391445, 52.002899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.812637, 54.023029, 52.305611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.786381, 54.382896, 52.478256>,  <47.770626, 54.598816, 52.581844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.786381, 54.382896, 52.478256>,  <47.812637, 54.023029, 52.305611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.786381, 54.382896, 52.478256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219174, -0.434983, 0.873357,
		0.973475, -0.037272, 0.225736,
		-0.065639, 0.899667, 0.431614,
		47.766689, 54.652798, 52.607742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.063457, 53.946091, 52.889427>,  <47.812637, 54.023029, 52.305611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.063457, 53.946091, 52.889427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.798569, 54.244270, 52.919823>,  <47.639637, 54.423180, 52.938061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.798569, 54.244270, 52.919823>,  <48.063457, 53.946091, 52.889427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.798569, 54.244270, 52.919823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391325, -0.430543, 0.813325,
		0.639009, 0.508861, 0.576826,
		-0.662218, 0.745448, 0.075991,
		47.599903, 54.467903, 52.942619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.619354, 54.470783, 53.091125>,  <48.063457, 53.946091, 52.889427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.619354, 54.470783, 53.091125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.817772, 54.162174, 53.250473>,  <48.936821, 53.977009, 53.346081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.817772, 54.162174, 53.250473>,  <48.619354, 54.470783, 53.091125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.817772, 54.162174, 53.250473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856109, 0.511171, -0.076038,
		-0.144970, 0.378766, 0.914068,
		0.496045, -0.771519, 0.398369,
		48.966587, 53.930717, 53.369984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.421707, 54.450840, 53.847775>,  <48.619354, 54.470783, 53.091125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.421707, 54.450840, 53.847775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.519760, 54.109673, 54.032135>,  <48.578594, 53.904972, 54.142754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.519760, 54.109673, 54.032135>,  <48.421707, 54.450840, 53.847775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.519760, 54.109673, 54.032135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963185, -0.160136, 0.215941,
		-0.110373, -0.496874, -0.860775,
		0.245137, -0.852920, 0.460907,
		48.593300, 53.853798, 54.170406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.766121, 54.303856, 54.590771>,  <48.421707, 54.450840, 53.847775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.766121, 54.303856, 54.590771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.098850, 54.143013, 54.437737>,  <49.298489, 54.046509, 54.345917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.098850, 54.143013, 54.437737>,  <48.766121, 54.303856, 54.590771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.098850, 54.143013, 54.437737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551399, 0.519932, 0.652403,
		-0.063415, -0.753646, 0.654215,
		0.831828, -0.402105, -0.382588,
		49.348400, 54.022381, 54.322960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.280972, 54.029587, 55.063839>,  <48.766121, 54.303856, 54.590771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.280972, 54.029587, 55.063839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.505684, 54.182026, 54.770126>,  <49.640511, 54.273487, 54.593899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.505684, 54.182026, 54.770126>,  <49.280972, 54.029587, 55.063839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.505684, 54.182026, 54.770126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230766, 0.780159, 0.581463,
		0.794450, -0.496101, 0.350333,
		0.561780, 0.381098, -0.734280,
		49.674217, 54.296356, 54.549843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.979729, 54.117035, 55.335148>,  <49.280972, 54.029587, 55.063839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.979729, 54.117035, 55.335148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.895969, 54.397812, 55.062843>,  <49.845715, 54.566277, 54.899460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.895969, 54.397812, 55.062843>,  <49.979729, 54.117035, 55.335148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.895969, 54.397812, 55.062843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453596, 0.686487, 0.568319,
		0.866258, -0.189785, -0.462145,
		-0.209398, 0.701939, -0.680760,
		49.833149, 54.608395, 54.858616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.590664, 54.495739, 55.284100>,  <49.979729, 54.117035, 55.335148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.590664, 54.495739, 55.284100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.271370, 54.706364, 55.167099>,  <50.079792, 54.832737, 55.096897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.271370, 54.706364, 55.167099>,  <50.590664, 54.495739, 55.284100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.271370, 54.706364, 55.167099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349281, 0.800257, 0.487433,
		0.490740, 0.286920, -0.822710,
		-0.798234, 0.526560, -0.292503,
		50.031898, 54.864330, 55.079350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.877998, 54.974987, 55.042751>,  <50.590664, 54.495739, 55.284100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.877998, 54.974987, 55.042751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.509296, 55.092869, 55.143555>,  <50.288074, 55.163597, 55.204037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.509296, 55.092869, 55.143555>,  <50.877998, 54.974987, 55.042751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.509296, 55.092869, 55.143555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369170, 0.865796, 0.337803,
		-0.118635, 0.404406, -0.906852,
		-0.921759, 0.294707, 0.252008,
		50.232769, 55.181282, 55.219158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.798042, 55.642956, 54.740421>,  <50.877998, 54.974987, 55.042751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.798042, 55.642956, 54.740421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.588959, 55.587982, 55.076965>,  <50.463509, 55.554996, 55.278893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.588959, 55.587982, 55.076965>,  <50.798042, 55.642956, 54.740421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.588959, 55.587982, 55.076965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399896, 0.832074, 0.384365,
		-0.752899, 0.537368, -0.379973,
		-0.522710, -0.137438, 0.841359,
		50.432144, 55.546749, 55.329372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.639095, 55.712650, 54.558861>,  <50.798042, 55.642956, 54.740421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.639095, 55.712650, 54.558861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.990482, 55.685356, 54.369698>,  <52.201313, 55.668980, 54.256199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.990482, 55.685356, 54.369698>,  <51.639095, 55.712650, 54.558861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.990482, 55.685356, 54.369698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476997, 0.067755, 0.876290,
		-0.027750, -0.995366, 0.092068,
		0.878466, -0.068233, -0.472906,
		52.254021, 55.664886, 54.227825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.082104, 55.353333, 54.975285>,  <51.639095, 55.712650, 54.558861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.082104, 55.353333, 54.975285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.355865, 55.510780, 54.729797>,  <52.520123, 55.605251, 54.582504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.355865, 55.510780, 54.729797>,  <52.082104, 55.353333, 54.975285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.355865, 55.510780, 54.729797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620269, 0.128085, 0.773861,
		0.383217, -0.910306, -0.156490,
		0.684406, 0.393622, -0.613718,
		52.561188, 55.628868, 54.545681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.564095, 55.004326, 55.154896>,  <52.082104, 55.353333, 54.975285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.564095, 55.004326, 55.154896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.685833, 55.351700, 54.998337>,  <52.758877, 55.560123, 54.904400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.685833, 55.351700, 54.998337>,  <52.564095, 55.004326, 55.154896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.685833, 55.351700, 54.998337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491310, 0.208910, 0.845559,
		0.816082, -0.449639, -0.363091,
		0.304343, 0.868436, -0.391400,
		52.777138, 55.612232, 54.880917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.317776, 55.017288, 55.060608>,  <52.564095, 55.004326, 55.154896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.317776, 55.017288, 55.060608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.109909, 55.328884, 55.200966>,  <52.985188, 55.515842, 55.285179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.109909, 55.328884, 55.200966>,  <53.317776, 55.017288, 55.060608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.109909, 55.328884, 55.200966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679404, 0.127759, 0.722557,
		0.518032, 0.613887, -0.595638,
		-0.519667, 0.778987, 0.350894,
		52.954010, 55.562580, 55.306232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.777382, 55.360382, 55.412888>,  <53.317776, 55.017288, 55.060608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.777382, 55.360382, 55.412888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.466759, 55.514488, 55.612297>,  <53.280384, 55.606953, 55.731941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.466759, 55.514488, 55.612297>,  <53.777382, 55.360382, 55.412888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.466759, 55.514488, 55.612297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559443, 0.057707, 0.826857,
		0.289793, 0.920999, -0.260348,
		-0.776559, 0.385267, 0.498524,
		53.233791, 55.630070, 55.761852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.048759, 55.362873, 54.724068>,  <53.777382, 55.360382, 55.412888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.048759, 55.362873, 54.724068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.724823, 55.596664, 54.744225>,  <53.530460, 55.736938, 54.756317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.724823, 55.596664, 54.744225>,  <54.048759, 55.362873, 54.724068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.724823, 55.596664, 54.744225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528852, 0.690183, 0.493926,
		0.253908, 0.426654, -0.868042,
		-0.809843, 0.584478, 0.050394,
		53.481869, 55.772007, 54.759342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.201195, 55.992271, 54.425274>,  <54.048759, 55.362873, 54.724068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.201195, 55.992271, 54.425274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.903950, 56.052547, 54.686062>,  <53.725601, 56.088711, 54.842537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.903950, 56.052547, 54.686062>,  <54.201195, 55.992271, 54.425274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.903950, 56.052547, 54.686062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600155, 0.581007, 0.549768,
		-0.295959, 0.799827, -0.522192,
		-0.743117, 0.150687, 0.651974,
		53.681015, 56.097755, 54.881653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.156464, 56.670807, 54.558281>,  <54.201195, 55.992271, 54.425274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.156464, 56.670807, 54.558281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.013329, 56.464878, 54.869900>,  <53.927448, 56.341320, 55.056870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.013329, 56.464878, 54.869900>,  <54.156464, 56.670807, 54.558281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.013329, 56.464878, 54.869900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633767, 0.478807, 0.607522,
		-0.685780, 0.711125, 0.154946,
		-0.357835, -0.514826, 0.779043,
		53.905979, 56.310429, 55.103611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.250095, 57.213688, 55.076214>,  <54.156464, 56.670807, 54.558281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.250095, 57.213688, 55.076214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.282555, 56.854549, 55.249321>,  <54.302029, 56.639065, 55.353184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.282555, 56.854549, 55.249321>,  <54.250095, 57.213688, 55.076214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.282555, 56.854549, 55.249321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789618, 0.322870, 0.521784,
		-0.608209, 0.299380, 0.735155,
		0.081148, -0.897845, 0.432769,
		54.306900, 56.585197, 55.379150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.326340, 57.267849, 55.726326>,  <54.250095, 57.213688, 55.076214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.326340, 57.267849, 55.726326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.474159, 56.901073, 55.666122>,  <54.562851, 56.681007, 55.630001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.474159, 56.901073, 55.666122>,  <54.326340, 57.267849, 55.726326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.474159, 56.901073, 55.666122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731120, 0.186956, 0.656134,
		-0.573498, -0.352512, 0.739483,
		0.369546, -0.916942, -0.150510,
		54.585022, 56.625992, 55.620968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.360184, 56.947018, 56.389202>,  <54.326340, 57.267849, 55.726326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.360184, 56.947018, 56.389202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.640915, 56.830437, 56.129204>,  <54.809353, 56.760487, 55.973206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.640915, 56.830437, 56.129204>,  <54.360184, 56.947018, 56.389202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.640915, 56.830437, 56.129204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707001, 0.173373, 0.685632,
		-0.087139, -0.940742, 0.327737,
		0.701823, -0.291456, -0.649999,
		54.851463, 56.743000, 55.934204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.953930, 56.621708, 56.806675>,  <54.360184, 56.947018, 56.389202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.953930, 56.621708, 56.806675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.068794, 56.771736, 56.454117>,  <55.137714, 56.861755, 56.242580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.068794, 56.771736, 56.454117>,  <54.953930, 56.621708, 56.806675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.068794, 56.771736, 56.454117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874307, 0.273269, 0.401138,
		0.391314, -0.885802, -0.249457,
		0.287160, 0.375073, -0.881397,
		55.154942, 56.884258, 56.189697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.558098, 56.342915, 56.536816>,  <54.953930, 56.621708, 56.806675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.558098, 56.342915, 56.536816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.502846, 56.726189, 56.436577>,  <55.469692, 56.956154, 56.376434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.502846, 56.726189, 56.436577>,  <55.558098, 56.342915, 56.536816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.502846, 56.726189, 56.436577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887239, 0.232160, 0.398633,
		0.440143, -0.167271, -0.882210,
		-0.138134, 0.958187, -0.250593,
		55.461407, 57.013645, 56.361401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.274803, 56.467342, 56.453457>,  <55.558098, 56.342915, 56.536816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.274803, 56.467342, 56.453457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.103638, 56.820282, 56.531784>,  <56.000938, 57.032047, 56.578781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.103638, 56.820282, 56.531784>,  <56.274803, 56.467342, 56.453457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.103638, 56.820282, 56.531784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644301, 0.145859, 0.750734,
		0.633850, 0.447414, -0.630915,
		-0.427914, 0.882352, 0.195817,
		55.975262, 57.084988, 56.590530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.860672, 57.005749, 56.439682>,  <56.274803, 56.467342, 56.453457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.860672, 57.005749, 56.439682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.544662, 57.075195, 56.674873>,  <56.355057, 57.116863, 56.815990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.544662, 57.075195, 56.674873>,  <56.860672, 57.005749, 56.439682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.544662, 57.075195, 56.674873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591687, -0.035208, 0.805398,
		0.160535, 0.984183, -0.074914,
		-0.790022, 0.173620, 0.587981,
		56.307655, 57.127281, 56.851269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.006756, 57.616096, 56.845032>,  <56.860672, 57.005749, 56.439682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.006756, 57.616096, 56.845032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.777313, 57.348457, 57.034042>,  <56.639648, 57.187874, 57.147449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.777313, 57.348457, 57.034042>,  <57.006756, 57.616096, 56.845032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.777313, 57.348457, 57.034042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635994, -0.000247, 0.771694,
		-0.516220, 0.743176, 0.425683,
		-0.573609, -0.669096, 0.472528,
		56.605232, 57.147728, 57.175800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.036819, 57.789059, 57.558537>,  <57.006756, 57.616096, 56.845032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.036819, 57.789059, 57.558537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.916840, 57.407608, 57.568512>,  <56.844852, 57.178738, 57.574497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.916840, 57.407608, 57.568512>,  <57.036819, 57.789059, 57.558537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.916840, 57.407608, 57.568512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657400, -0.187692, 0.729792,
		-0.691271, 0.235292, 0.683214,
		-0.299948, -0.953629, 0.024935,
		56.826855, 57.121521, 57.575993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.266220, 58.503609, 57.365356>,  <57.036819, 57.789059, 57.558537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.266220, 58.503609, 57.365356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.149284, 58.775505, 57.096291>,  <57.079124, 58.938644, 56.934849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.149284, 58.775505, 57.096291>,  <57.266220, 58.503609, 57.365356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.149284, 58.775505, 57.096291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955910, 0.187251, -0.226214,
		-0.027809, -0.709143, -0.704517,
		-0.292339, 0.679745, -0.672669,
		57.061584, 58.979427, 56.894489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.367939, 58.374966, 56.672207>,  <57.266220, 58.503609, 57.365356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.367939, 58.374966, 56.672207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.390152, 58.772545, 56.710106>,  <57.403481, 59.011093, 56.732845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.390152, 58.772545, 56.710106>,  <57.367939, 58.374966, 56.672207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.390152, 58.772545, 56.710106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993944, -0.046019, -0.099789,
		-0.094825, 0.099716, -0.990487,
		0.055532, 0.993951, 0.094748,
		57.406811, 59.070732, 56.738529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.840176, 58.677841, 56.198910>,  <57.367939, 58.374966, 56.672207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.840176, 58.677841, 56.198910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.811913, 58.888340, 56.537865>,  <57.794952, 59.014641, 56.741238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.811913, 58.888340, 56.537865>,  <57.840176, 58.677841, 56.198910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.811913, 58.888340, 56.537865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997297, 0.020129, 0.070661,
		0.020129, 0.850091, -0.526251,
		-0.070661, 0.526251, 0.847388,
		57.790714, 59.046215, 56.792080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.261414, 59.231281, 56.119003>,  <57.840176, 58.677841, 56.198910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.261414, 59.231281, 56.119003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.212852, 59.086700, 56.488785>,  <58.183716, 58.999950, 56.710651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.212852, 59.086700, 56.488785>,  <58.261414, 59.231281, 56.119003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.212852, 59.086700, 56.488785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992592, -0.048467, 0.111406,
		0.004538, 0.931130, 0.364660,
		-0.121407, -0.361454, 0.924452,
		58.176430, 58.978264, 56.766121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.612049, 59.738811, 56.593430>,  <58.261414, 59.231281, 56.119003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.612049, 59.738811, 56.593430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.616203, 59.353840, 56.701965>,  <58.618694, 59.122856, 56.767086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.616203, 59.353840, 56.701965>,  <58.612049, 59.738811, 56.593430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.616203, 59.353840, 56.701965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972387, 0.072988, 0.221669,
		-0.233145, 0.261545, 0.936610,
		0.010385, -0.962428, 0.271340,
		58.619320, 59.065113, 56.783367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.812351, 59.673344, 57.274052>,  <58.612049, 59.738811, 56.593430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.812351, 59.673344, 57.274052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.927086, 59.359539, 57.054138>,  <58.995926, 59.171257, 56.922188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.927086, 59.359539, 57.054138>,  <58.812351, 59.673344, 57.274052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.927086, 59.359539, 57.054138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954841, 0.187709, 0.230314,
		-0.077484, -0.591022, 0.802926,
		0.286837, -0.784512, -0.549787,
		59.013138, 59.124184, 56.889202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.267242, 59.189877, 57.702671>,  <58.812351, 59.673344, 57.274052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.267242, 59.189877, 57.702671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.404114, 59.200668, 57.326973>,  <59.486237, 59.207146, 57.101555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.404114, 59.200668, 57.326973>,  <59.267242, 59.189877, 57.702671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.404114, 59.200668, 57.326973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924187, 0.170843, 0.341601,
		0.169676, -0.984929, 0.033535,
		0.342182, 0.026969, -0.939246,
		59.506767, 59.208763, 57.045200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.780315, 58.605755, 57.501076>,  <59.267242, 59.189877, 57.702671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.780315, 58.605755, 57.501076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.855019, 58.943031, 57.299423>,  <59.899841, 59.145397, 57.178432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.855019, 58.943031, 57.299423>,  <59.780315, 58.605755, 57.501076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.855019, 58.943031, 57.299423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899394, 0.059702, 0.433044,
		0.395235, -0.534292, -0.747209,
		0.186762, 0.843189, -0.504135,
		59.911049, 59.195988, 57.148182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.464672, 58.601170, 57.419292>,  <59.780315, 58.605755, 57.501076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.464672, 58.601170, 57.419292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.410164, 58.978935, 57.299622>,  <60.377460, 59.205597, 57.227821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.410164, 58.978935, 57.299622>,  <60.464672, 58.601170, 57.419292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.410164, 58.978935, 57.299622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850721, 0.266303, 0.453163,
		0.507646, -0.192761, -0.839725,
		-0.136269, 0.944418, -0.299174,
		60.369282, 59.262260, 57.209869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.063774, 58.885288, 56.986664>,  <60.464672, 58.601170, 57.419292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.063774, 58.885288, 56.986664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.866150, 59.201389, 57.131660>,  <60.747574, 59.391048, 57.218658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.866150, 59.201389, 57.131660>,  <61.063774, 58.885288, 56.986664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.866150, 59.201389, 57.131660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854588, 0.364710, 0.369685,
		0.159939, 0.492431, -0.855530,
		-0.494064, 0.790252, 0.362495,
		60.717930, 59.438465, 57.240410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.304470, 59.537567, 56.746464>,  <61.063774, 58.885288, 56.986664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.304470, 59.537567, 56.746464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.165047, 59.567184, 57.120209>,  <61.081394, 59.584953, 57.344456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.165047, 59.567184, 57.120209>,  <61.304470, 59.537567, 56.746464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.165047, 59.567184, 57.120209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921980, 0.206517, 0.327572,
		-0.168706, 0.975637, -0.140249,
		-0.348556, 0.074044, 0.934359,
		61.060478, 59.589397, 57.400517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.788662, 59.865528, 57.045593>,  <61.304470, 59.537567, 56.746464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.788662, 59.865528, 57.045593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.590981, 59.735207, 57.367989>,  <61.472374, 59.657013, 57.561428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.590981, 59.735207, 57.367989>,  <61.788662, 59.865528, 57.045593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.590981, 59.735207, 57.367989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801344, 0.188744, 0.567647,
		-0.337065, 0.926407, 0.167800,
		-0.494201, -0.325799, 0.805990,
		61.442719, 59.637466, 57.609787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.926193, 60.470112, 57.544476>,  <61.788662, 59.865528, 57.045593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.926193, 60.470112, 57.544476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.896843, 60.091560, 57.670326>,  <61.879234, 59.864429, 57.745838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.896843, 60.091560, 57.670326>,  <61.926193, 60.470112, 57.544476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.896843, 60.091560, 57.670326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959776, 0.018725, 0.280143,
		-0.271012, 0.322527, 0.906934,
		-0.073372, -0.946375, 0.314628,
		61.874832, 59.807648, 57.764713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.190048, 60.427704, 58.191319>,  <61.926193, 60.470112, 57.544476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.190048, 60.427704, 58.191319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.250023, 60.083755, 57.996117>,  <62.286007, 59.877388, 57.878994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.250023, 60.083755, 57.996117>,  <62.190048, 60.427704, 58.191319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.250023, 60.083755, 57.996117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985944, 0.093230, 0.138646,
		-0.073721, -0.501933, 0.861759,
		0.149933, -0.859867, -0.488005,
		62.295002, 59.825794, 57.849716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.495441, 59.874516, 58.627750>,  <62.190048, 60.427704, 58.191319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.495441, 59.874516, 58.627750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.621544, 59.832207, 58.250511>,  <62.697205, 59.806824, 58.024170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.621544, 59.832207, 58.250511>,  <62.495441, 59.874516, 58.627750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.621544, 59.832207, 58.250511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926441, 0.249723, 0.281684,
		0.205719, -0.962524, 0.176716,
		0.315258, -0.105769, -0.943094,
		62.716122, 59.800476, 57.967583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.149990, 59.447514, 58.523994>,  <62.495441, 59.874516, 58.627750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.149990, 59.447514, 58.523994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.111572, 59.737186, 58.250839>,  <63.088520, 59.910992, 58.086945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.111572, 59.737186, 58.250839>,  <63.149990, 59.447514, 58.523994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.111572, 59.737186, 58.250839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837528, 0.429533, 0.337711,
		0.537887, -0.539502, -0.647777,
		-0.096046, 0.724181, -0.682888,
		63.082760, 59.954441, 58.045971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.699623, 59.108116, 58.319096>,  <63.149990, 59.447514, 58.523994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.699623, 59.108116, 58.319096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.384026, 59.264458, 58.129478>,  <63.194668, 59.358265, 58.015709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.384026, 59.264458, 58.129478>,  <63.699623, 59.108116, 58.319096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.384026, 59.264458, 58.129478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214356, 0.898191, 0.383802,
		0.575793, 0.201204, -0.792451,
		-0.788995, 0.390857, -0.474043,
		63.147327, 59.381714, 57.987267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.074318, 59.636814, 58.277924>,  <63.699623, 59.108116, 58.319096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.074318, 59.636814, 58.277924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.416916, 59.839413, 58.238167>,  <64.622475, 59.960972, 58.214314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.416916, 59.839413, 58.238167>,  <64.074318, 59.636814, 58.277924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.416916, 59.839413, 58.238167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474196, -0.696103, 0.539054,
		0.203840, -0.508829, -0.836387,
		0.856497, 0.506492, -0.099391,
		64.673866, 59.991360, 58.208351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.580597, 59.266338, 57.806076>,  <64.074318, 59.636814, 58.277924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.580597, 59.266338, 57.806076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.712509, 59.458641, 58.131065>,  <64.791656, 59.574024, 58.326061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.712509, 59.458641, 58.131065>,  <64.580597, 59.266338, 57.806076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.712509, 59.458641, 58.131065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433586, -0.841615, 0.322006,
		0.838598, 0.246086, -0.486000,
		0.329784, 0.480757, 0.812475,
		64.811447, 59.602867, 58.374809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.365509, 59.215881, 57.971813>,  <64.580597, 59.266338, 57.806076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.365509, 59.215881, 57.971813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.151924, 59.276230, 58.304588>,  <65.023773, 59.312439, 58.504253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.151924, 59.276230, 58.304588>,  <65.365509, 59.215881, 57.971813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.151924, 59.276230, 58.304588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288115, -0.892592, 0.346798,
		0.794903, 0.424871, 0.433144,
		-0.533966, 0.150876, 0.831935,
		64.991737, 59.321491, 58.554169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.068130, 59.384872, 57.967171>,  <65.365509, 59.215881, 57.971813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.068130, 59.384872, 57.967171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.300613, 59.663101, 57.798225>,  <66.440102, 59.830036, 57.696857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.300613, 59.663101, 57.798225>,  <66.068130, 59.384872, 57.967171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.300613, 59.663101, 57.798225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714824, -0.188345, 0.673463,
		0.388890, -0.693333, -0.606675,
		0.581198, 0.695569, -0.422366,
		66.474976, 59.871773, 57.671516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.299377, 60.033112, 58.506367>,  <66.068130, 59.384872, 57.967171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.299377, 60.033112, 58.506367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.462738, 59.740486, 58.724731>,  <66.560753, 59.564911, 58.855751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.462738, 59.740486, 58.724731>,  <66.299377, 60.033112, 58.506367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.462738, 59.740486, 58.724731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820838, 0.555952, 0.130925,
		-0.399281, 0.394635, 0.827550,
		0.408410, -0.731561, 0.545912,
		66.585258, 59.521019, 58.888504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.537201, 60.333427, 59.300106>,  <66.299377, 60.033112, 58.506367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.537201, 60.333427, 59.300106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.711403, 59.998356, 59.168274>,  <66.815926, 59.797314, 59.089176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.711403, 59.998356, 59.168274>,  <66.537201, 60.333427, 59.300106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.711403, 59.998356, 59.168274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885858, 0.463879, -0.008438,
		0.159953, -0.288285, 0.944090,
		0.435511, -0.837680, -0.329578,
		66.842056, 59.747051, 59.069401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.114883, 60.118824, 59.780880>,  <66.537201, 60.333427, 59.300106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.114883, 60.118824, 59.780880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.154564, 60.007275, 59.398804>,  <67.178375, 59.940346, 59.169559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.154564, 60.007275, 59.398804>,  <67.114883, 60.118824, 59.780880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.154564, 60.007275, 59.398804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993415, 0.083063, 0.078918,
		0.057333, -0.956729, 0.285276,
		0.099199, -0.278873, -0.955191,
		67.184326, 59.923615, 59.112247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.546516, 59.522766, 59.750210>,  <67.114883, 60.118824, 59.780880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.546516, 59.522766, 59.750210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.547112, 59.683121, 59.383759>,  <67.547470, 59.779331, 59.163887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.547112, 59.683121, 59.383759>,  <67.546516, 59.522766, 59.750210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.547112, 59.683121, 59.383759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990892, 0.122770, 0.055331,
		0.134654, -0.907865, -0.397050,
		0.001488, 0.400884, -0.916127,
		67.547562, 59.803387, 59.108921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.096077, 59.208488, 59.477230>,  <67.546516, 59.522766, 59.750210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.096077, 59.208488, 59.477230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.020096, 59.563221, 59.308731>,  <67.974503, 59.776058, 59.207630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.020096, 59.563221, 59.308731>,  <68.096077, 59.208488, 59.477230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.020096, 59.563221, 59.308731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981766, 0.174681, -0.074977,
		0.007092, -0.427811, -0.903841,
		-0.189960, 0.886828, -0.421249,
		67.963104, 59.829269, 59.182358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.704437, 59.475842, 59.188515>,  <68.096077, 59.208488, 59.477230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.704437, 59.475842, 59.188515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.502655, 59.811394, 59.106735>,  <68.381584, 60.012726, 59.057667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.502655, 59.811394, 59.106735>,  <68.704437, 59.475842, 59.188515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.502655, 59.811394, 59.106735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862531, 0.500452, -0.074755,
		0.039608, -0.214057, -0.976018,
		-0.504452, 0.838884, -0.204452,
		68.351318, 60.063061, 59.045399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.170654, 59.692955, 58.760921>,  <68.704437, 59.475842, 59.188515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.170654, 59.692955, 58.760921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.999443, 60.016087, 58.923012>,  <68.896713, 60.209965, 59.020264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.999443, 60.016087, 58.923012>,  <69.170654, 59.692955, 58.760921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.999443, 60.016087, 58.923012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903616, 0.374348, 0.208189,
		0.016487, 0.455276, -0.890198,
		-0.428027, 0.807829, 0.405223,
		68.871033, 60.258434, 59.044579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.554192, 60.075905, 58.505272>,  <69.170654, 59.692955, 58.760921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.554192, 60.075905, 58.505272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.407227, 60.285965, 58.812317>,  <69.319046, 60.411999, 58.996544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.407227, 60.285965, 58.812317>,  <69.554192, 60.075905, 58.505272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.407227, 60.285965, 58.812317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895694, 0.422066, 0.139975,
		-0.250475, 0.738973, -0.625444,
		-0.367417, 0.525146, 0.767611,
		69.297005, 60.443508, 59.042599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.948730, 60.844559, 58.513477>,  <69.554192, 60.075905, 58.505272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.948730, 60.844559, 58.513477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.797394, 60.752403, 58.872093>,  <69.706589, 60.697109, 59.087261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.797394, 60.752403, 58.872093>,  <69.948730, 60.844559, 58.513477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.797394, 60.752403, 58.872093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786765, 0.430259, 0.442582,
		-0.487710, 0.872810, 0.018481,
		-0.378339, -0.230392, 0.896538,
		69.683891, 60.683285, 59.141056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.860733, 61.415730, 58.937653>,  <69.948730, 60.844559, 58.513477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.860733, 61.415730, 58.937653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.885269, 61.104729, 59.188004>,  <69.899994, 60.918129, 59.338215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.885269, 61.104729, 59.188004>,  <69.860733, 61.415730, 58.937653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.885269, 61.104729, 59.188004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848794, 0.370555, 0.377143,
		-0.525153, 0.508108, 0.682672,
		0.061338, -0.777506, 0.625877,
		69.903671, 60.871475, 59.375767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.855354, 62.104744, 59.350204>,  <69.860733, 61.415730, 58.937653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.855354, 62.104744, 59.350204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.855499, 61.826637, 59.637703>,  <69.855583, 61.659771, 59.810204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.855499, 61.826637, 59.637703>,  <69.855354, 62.104744, 59.350204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.855499, 61.826637, 59.637703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998474, -0.039447, -0.038658,
		0.055230, 0.717665, 0.694194,
		0.000360, -0.695270, 0.718749,
		69.855606, 61.618057, 59.853329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.387100, 62.214001, 59.842667>,  <69.855354, 62.104744, 59.350204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.387100, 62.214001, 59.842667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.297417, 61.825096, 59.815994>,  <70.243607, 61.591755, 59.799992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.297417, 61.825096, 59.815994>,  <70.387100, 62.214001, 59.842667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.297417, 61.825096, 59.815994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972222, -0.218434, -0.084092,
		0.067195, -0.083678, 0.994225,
		-0.224209, -0.972258, -0.066676,
		70.230156, 61.533421, 59.795990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.994400, 61.815914, 60.150379>,  <70.387100, 62.214001, 59.842667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.994400, 61.815914, 60.150379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.779617, 61.525665, 59.978264>,  <70.650749, 61.351517, 59.874996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.779617, 61.525665, 59.978264>,  <70.994400, 61.815914, 60.150379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.779617, 61.525665, 59.978264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836896, -0.522400, -0.163412,
		-0.106205, -0.447850, 0.887779,
		-0.536960, -0.725623, -0.430285,
		70.618530, 61.307980, 59.849178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.202675, 61.192814, 60.421658>,  <70.994400, 61.815914, 60.150379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.202675, 61.192814, 60.421658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.074646, 61.133598, 60.047356>,  <70.997826, 61.098068, 59.822777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.074646, 61.133598, 60.047356>,  <71.202675, 61.192814, 60.421658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.074646, 61.133598, 60.047356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834798, -0.511091, -0.204692,
		-0.447952, -0.846682, 0.287172,
		-0.320080, -0.148038, -0.935753,
		70.978622, 61.089188, 59.766628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.302803, 60.513573, 60.295826>,  <71.202675, 61.192814, 60.421658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.302803, 60.513573, 60.295826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.318024, 60.711357, 59.948479>,  <71.327156, 60.830029, 59.740070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.318024, 60.711357, 59.948479>,  <71.302803, 60.513573, 60.295826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.318024, 60.711357, 59.948479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859635, -0.459261, -0.223844,
		-0.509489, -0.737962, -0.442530,
		0.038048, 0.494460, -0.868367,
		71.329437, 60.859695, 59.687969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.745163, 60.166328, 59.795746>,  <71.302803, 60.513573, 60.295826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.745163, 60.166328, 59.795746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.787262, 60.524483, 59.622673>,  <71.812523, 60.739376, 59.518829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.787262, 60.524483, 59.622673>,  <71.745163, 60.166328, 59.795746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.787262, 60.524483, 59.622673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833330, -0.316838, -0.452962,
		-0.542664, -0.312891, -0.779497,
		0.105246, 0.895384, -0.432678,
		71.818832, 60.793098, 59.492870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.303001, 59.731178, 60.026409>,  <71.745163, 60.166328, 59.795746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.303001, 59.731178, 60.026409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.909729, 59.684433, 60.082565>,  <71.673767, 59.656384, 60.116261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.909729, 59.684433, 60.082565>,  <72.303001, 59.731178, 60.026409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.909729, 59.684433, 60.082565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018407, -0.701267, -0.712661,
		0.181738, -0.703254, 0.687317,
		-0.983175, -0.116866, 0.140392,
		71.614777, 59.649372, 60.124683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.949234, 59.036869, 60.386230>,  <72.303001, 59.731178, 60.026409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.949234, 59.036869, 60.386230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.788910, 59.265106, 60.099518>,  <71.692719, 59.402046, 59.927490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.788910, 59.265106, 60.099518>,  <71.949234, 59.036869, 60.386230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.788910, 59.265106, 60.099518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099963, -0.750469, -0.653302,
		-0.910691, -0.333502, 0.243758,
		-0.400810, 0.570590, -0.716784,
		71.668671, 59.436283, 59.884483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.205864, 58.592396, 59.865269>,  <71.949234, 59.036869, 60.386230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.205864, 58.592396, 59.865269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.250168, 58.494644, 60.250603>,  <72.276749, 58.435993, 60.481804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.250168, 58.494644, 60.250603>,  <72.205864, 58.592396, 59.865269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.250168, 58.494644, 60.250603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020368, -0.969653, -0.243637,
		0.993639, 0.007363, -0.112373,
		0.110757, -0.244376, 0.963335,
		72.283394, 58.421333, 60.539604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.785866, 58.082047, 59.924137>,  <72.205864, 58.592396, 59.865269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.785866, 58.082047, 59.924137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.536430, 58.063835, 60.236305>,  <72.386765, 58.052910, 60.423607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.536430, 58.063835, 60.236305>,  <72.785866, 58.082047, 59.924137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.536430, 58.063835, 60.236305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123658, -0.979989, -0.155979,
		0.771905, -0.193773, 0.605487,
		-0.623595, -0.045528, 0.780421,
		72.349350, 58.050179, 60.470432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.999298, 57.552967, 60.303413>,  <72.785866, 58.082047, 59.924137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.999298, 57.552967, 60.303413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.603828, 57.589561, 60.350983>,  <72.366547, 57.611519, 60.379524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.603828, 57.589561, 60.350983>,  <72.999298, 57.552967, 60.303413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.603828, 57.589561, 60.350983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117629, -0.964650, -0.235827,
		0.093145, -0.247146, 0.964491,
		-0.988680, 0.091486, 0.118924,
		72.307228, 57.617008, 60.386662>
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
