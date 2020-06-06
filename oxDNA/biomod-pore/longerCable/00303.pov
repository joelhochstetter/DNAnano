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
	<24.577669, 35.212296, 35.419193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424791, 35.124077, 35.060242>,  <24.333065, 35.071148, 34.844872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424791, 35.124077, 35.060242>,  <24.577669, 35.212296, 35.419193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.424791, 35.124077, 35.060242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918723, 0.013742, -0.394664,
		0.099373, -0.975280, 0.197368,
		-0.382195, -0.220545, -0.897378,
		24.310133, 35.057915, 34.791027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.415346, 35.920425, 35.902637>,  <24.577669, 35.212296, 35.419193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.415346, 35.920425, 35.902637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.226248, 36.272896, 35.899933>,  <24.112789, 36.484379, 35.898312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.226248, 36.272896, 35.899933>,  <24.415346, 35.920425, 35.902637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.226248, 36.272896, 35.899933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494506, -0.258933, 0.829709,
		0.729366, 0.395586, 0.558155,
		-0.472746, 0.881173, -0.006763,
		24.084423, 36.537247, 35.897903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.062008, 35.849396, 36.552601>,  <24.415346, 35.920425, 35.902637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.062008, 35.849396, 36.552601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.437691, 35.986202, 36.564701>,  <24.663099, 36.068287, 36.571960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.437691, 35.986202, 36.564701>,  <24.062008, 35.849396, 36.552601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.437691, 35.986202, 36.564701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318969, 0.836497, 0.445569,
		0.127085, -0.428131, 0.894736,
		0.939206, 0.342018, 0.030254,
		24.719452, 36.088806, 36.573776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.116108, 36.230656, 37.245060>,  <24.062008, 35.849396, 36.552601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.116108, 36.230656, 37.245060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431505, 36.374340, 37.045361>,  <24.620743, 36.460552, 36.925541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431505, 36.374340, 37.045361>,  <24.116108, 36.230656, 37.245060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.431505, 36.374340, 37.045361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105355, 0.878612, 0.465770,
		0.605954, -0.314657, 0.730623,
		0.788492, 0.359210, -0.499248,
		24.668053, 36.482101, 36.895588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588634, 36.409359, 37.786842>,  <24.116108, 36.230656, 37.245060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588634, 36.409359, 37.786842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679735, 36.639957, 37.472954>,  <24.734396, 36.778316, 37.284622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679735, 36.639957, 37.472954>,  <24.588634, 36.409359, 37.786842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.679735, 36.639957, 37.472954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076947, 0.792722, 0.604707,
		0.970674, -0.198105, 0.136185,
		0.227752, 0.576495, -0.784718,
		24.748060, 36.812904, 37.237537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.242111, 36.719791, 37.840660>,  <24.588634, 36.409359, 37.786842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.242111, 36.719791, 37.840660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.010874, 36.967163, 37.627735>,  <24.872131, 37.115585, 37.499981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.010874, 36.967163, 37.627735>,  <25.242111, 36.719791, 37.840660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.010874, 36.967163, 37.627735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047960, 0.625483, 0.778762,
		0.814561, 0.475726, -0.331927,
		-0.578092, 0.618430, -0.532310,
		24.837446, 37.152691, 37.468040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650658, 37.332047, 37.581951>,  <25.242111, 36.719791, 37.840660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650658, 37.332047, 37.581951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262964, 37.421745, 37.622540>,  <25.030348, 37.475567, 37.646893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262964, 37.421745, 37.622540>,  <25.650658, 37.332047, 37.581951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.262964, 37.421745, 37.622540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224085, 0.633373, 0.740692,
		0.101831, 0.740643, -0.664138,
		-0.969235, 0.224249, 0.101471,
		24.972195, 37.489021, 37.652981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488701, 38.082020, 37.431335>,  <25.650658, 37.332047, 37.581951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488701, 38.082020, 37.431335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226633, 37.930927, 37.693047>,  <25.069393, 37.840271, 37.850071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226633, 37.930927, 37.693047>,  <25.488701, 38.082020, 37.431335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.226633, 37.930927, 37.693047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304590, 0.660461, 0.686306,
		-0.691361, 0.648931, -0.317661,
		-0.655168, -0.377729, 0.654275,
		25.030083, 37.817608, 37.889328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.983114, 38.699688, 37.677307>,  <25.488701, 38.082020, 37.431335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.983114, 38.699688, 37.677307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983128, 38.404507, 37.947247>,  <24.983135, 38.227398, 38.109211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983128, 38.404507, 37.947247>,  <24.983114, 38.699688, 37.677307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.983128, 38.404507, 37.947247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310573, 0.641483, 0.701458,
		-0.950550, 0.209567, 0.229210,
		0.000032, -0.737957, 0.674848,
		24.983137, 38.183121, 38.149700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.590221, 38.909115, 38.248074>,  <24.983114, 38.699688, 37.677307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.590221, 38.909115, 38.248074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.814966, 38.617683, 38.404781>,  <24.949814, 38.442825, 38.498806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.814966, 38.617683, 38.404781>,  <24.590221, 38.909115, 38.248074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.814966, 38.617683, 38.404781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327519, 0.630821, 0.703418,
		-0.759632, -0.266912, 0.593058,
		0.561864, -0.728576, 0.391772,
		24.983526, 38.399109, 38.522312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.422894, 38.837875, 38.967514>,  <24.590221, 38.909115, 38.248074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.422894, 38.837875, 38.967514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783760, 38.690556, 38.877674>,  <25.000280, 38.602161, 38.823769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783760, 38.690556, 38.877674>,  <24.422894, 38.837875, 38.967514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.783760, 38.690556, 38.877674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430109, 0.727923, 0.533980,
		-0.033172, -0.578344, 0.815119,
		0.902168, -0.368303, -0.224604,
		25.054411, 38.580063, 38.810291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.773209, 38.896175, 39.584133>,  <24.422894, 38.837875, 38.967514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.773209, 38.896175, 39.584133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046215, 38.881409, 39.292160>,  <25.210018, 38.872547, 39.116974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046215, 38.881409, 39.292160>,  <24.773209, 38.896175, 39.584133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.046215, 38.881409, 39.292160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517990, 0.729014, 0.447464,
		0.515614, -0.683502, 0.516689,
		0.682516, -0.036921, -0.729937,
		25.250969, 38.870331, 39.073177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.334829, 38.714069, 39.909069>,  <24.773209, 38.896175, 39.584133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.334829, 38.714069, 39.909069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459253, 38.917595, 39.587982>,  <25.533909, 39.039711, 39.395329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459253, 38.917595, 39.587982>,  <25.334829, 38.714069, 39.909069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459253, 38.917595, 39.587982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503546, 0.628088, 0.593251,
		0.806029, -0.588741, -0.060836,
		0.311061, 0.508811, -0.802716,
		25.552572, 39.070240, 39.347168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013805, 38.790760, 40.058800>,  <25.334829, 38.714069, 39.909069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013805, 38.790760, 40.058800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879135, 39.072903, 39.809280>,  <25.798334, 39.242188, 39.659569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879135, 39.072903, 39.809280>,  <26.013805, 38.790760, 40.058800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879135, 39.072903, 39.809280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432013, 0.704343, 0.563264,
		0.836670, -0.079853, -0.541856,
		-0.336674, 0.705354, -0.623800,
		25.778133, 39.284508, 39.622139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.649691, 38.047810, 39.895634>,  <26.013805, 38.790760, 40.058800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.649691, 38.047810, 39.895634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488125, 38.307640, 39.637981>,  <25.391186, 38.463539, 39.483391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488125, 38.307640, 39.637981>,  <25.649691, 38.047810, 39.895634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488125, 38.307640, 39.637981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427933, 0.488162, 0.760639,
		0.808534, 0.582875, 0.080802,
		-0.403913, 0.649580, -0.644127,
		25.366951, 38.502514, 39.444744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483494, 37.947395, 39.754375>,  <25.649691, 38.047810, 39.895634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483494, 37.947395, 39.754375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397449, 38.179977, 39.440525>,  <26.345823, 38.319527, 39.252216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397449, 38.179977, 39.440525>,  <26.483494, 37.947395, 39.754375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397449, 38.179977, 39.440525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511771, 0.617160, 0.597665,
		0.831756, 0.530111, 0.164816,
		-0.215111, 0.581459, -0.784622,
		26.332916, 38.354416, 39.205139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030941, 37.967880, 39.117481>,  <26.483494, 37.947395, 39.754375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030941, 37.967880, 39.117481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658594, 38.113602, 39.106354>,  <25.435186, 38.201035, 39.099678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658594, 38.113602, 39.106354>,  <26.030941, 37.967880, 39.117481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658594, 38.113602, 39.106354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275871, -0.750733, -0.600246,
		-0.239553, -0.551075, 0.799331,
		-0.930865, 0.364304, -0.027815,
		25.379335, 38.222893, 39.098011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518215, 37.460476, 39.196781>,  <26.030941, 37.967880, 39.117481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518215, 37.460476, 39.196781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321062, 37.737034, 38.985481>,  <25.202770, 37.902969, 38.858700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321062, 37.737034, 38.985481>,  <25.518215, 37.460476, 39.196781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.321062, 37.737034, 38.985481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252362, -0.694613, -0.673667,
		-0.832697, -0.198726, 0.516841,
		-0.492879, 0.691391, -0.528251,
		25.173199, 37.944450, 38.827007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.812269, 37.295822, 39.108200>,  <25.518215, 37.460476, 39.196781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.812269, 37.295822, 39.108200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857470, 37.560871, 38.812050>,  <24.884590, 37.719902, 38.634361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857470, 37.560871, 38.812050>,  <24.812269, 37.295822, 39.108200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.857470, 37.560871, 38.812050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385287, -0.657624, -0.647368,
		-0.915852, 0.358409, 0.180990,
		0.112999, 0.662627, -0.740376,
		24.891369, 37.759659, 38.589935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.257519, 37.288673, 38.752140>,  <24.812269, 37.295822, 39.108200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.257519, 37.288673, 38.752140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.524826, 37.419720, 38.484982>,  <24.685211, 37.498348, 38.324688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.524826, 37.419720, 38.484982>,  <24.257519, 37.288673, 38.752140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.524826, 37.419720, 38.484982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359446, -0.643848, -0.675469,
		-0.651318, 0.691467, -0.312503,
		0.668268, 0.327617, -0.667896,
		24.725307, 37.518005, 38.284615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.959595, 37.538399, 38.089222>,  <24.257519, 37.288673, 38.752140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.959595, 37.538399, 38.089222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326153, 37.395832, 38.016346>,  <24.546087, 37.310291, 37.972622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326153, 37.395832, 38.016346>,  <23.959595, 37.538399, 38.089222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.326153, 37.395832, 38.016346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355309, -0.514705, -0.780278,
		0.184330, 0.779774, -0.598310,
		0.916394, -0.356413, -0.182185,
		24.601070, 37.288910, 37.961689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.771744, 37.920872, 37.638733>,  <23.959595, 37.538399, 38.089222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.771744, 37.920872, 37.638733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.154467, 37.804703, 37.644001>,  <24.384100, 37.735001, 37.647163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.154467, 37.804703, 37.644001>,  <23.771744, 37.920872, 37.638733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.154467, 37.804703, 37.644001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202796, -0.699199, -0.685562,
		0.208314, 0.653279, -0.727896,
		0.956807, -0.290426, 0.013171,
		24.441509, 37.717575, 37.647953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.039509, 38.012169, 36.864006>,  <23.771744, 37.920872, 37.638733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.039509, 38.012169, 36.864006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272530, 37.746521, 37.051441>,  <24.412342, 37.587132, 37.163902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272530, 37.746521, 37.051441>,  <24.039509, 38.012169, 36.864006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.272530, 37.746521, 37.051441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126923, -0.495114, -0.859507,
		0.802822, 0.560183, -0.204137,
		0.582552, -0.664122, 0.468589,
		24.447296, 37.547283, 37.192017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.621708, 37.870464, 36.488750>,  <24.039509, 38.012169, 36.864006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.621708, 37.870464, 36.488750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.518629, 37.554008, 36.710629>,  <24.456781, 37.364136, 36.843758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.518629, 37.554008, 36.710629>,  <24.621708, 37.870464, 36.488750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.518629, 37.554008, 36.710629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206835, -0.605948, -0.768145,
		0.943828, -0.083219, 0.319787,
		-0.257698, -0.791140, 0.554698,
		24.441320, 37.316666, 36.877037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027779, 37.362965, 36.075466>,  <24.621708, 37.870464, 36.488750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027779, 37.362965, 36.075466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967909, 37.216183, 36.442715>,  <24.931988, 37.128113, 36.663063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967909, 37.216183, 36.442715>,  <25.027779, 37.362965, 36.075466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.967909, 37.216183, 36.442715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385680, -0.876689, -0.287519,
		0.910412, 0.311066, 0.272742,
		-0.149673, -0.366952, 0.918120,
		24.923006, 37.106098, 36.718151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700397, 37.056305, 36.326614>,  <25.027779, 37.362965, 36.075466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700397, 37.056305, 36.326614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392176, 36.861294, 36.490841>,  <25.207243, 36.744289, 36.589378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392176, 36.861294, 36.490841>,  <25.700397, 37.056305, 36.326614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.392176, 36.861294, 36.490841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323504, -0.854166, -0.407118,
		0.549175, -0.180885, 0.815897,
		-0.770553, -0.487525, 0.410569,
		25.161009, 36.715034, 36.614010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946848, 36.473816, 36.603443>,  <25.700397, 37.056305, 36.326614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946848, 36.473816, 36.603443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567411, 36.348171, 36.587894>,  <25.339750, 36.272785, 36.578564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567411, 36.348171, 36.587894>,  <25.946848, 36.473816, 36.603443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567411, 36.348171, 36.587894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302883, -0.865223, -0.399563,
		0.091872, -0.390796, 0.915881,
		-0.948589, -0.314114, -0.038875,
		25.282835, 36.253937, 36.576233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892874, 35.844116, 37.082180>,  <25.946848, 36.473816, 36.603443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892874, 35.844116, 37.082180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617992, 35.822735, 36.792381>,  <25.453064, 35.809906, 36.618504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617992, 35.822735, 36.792381>,  <25.892874, 35.844116, 37.082180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617992, 35.822735, 36.792381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349545, -0.898587, -0.265253,
		-0.636841, -0.435527, 0.636199,
		-0.687205, -0.053456, -0.724494,
		25.411831, 35.806698, 36.575031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375912, 35.179260, 37.165440>,  <25.892874, 35.844116, 37.082180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375912, 35.179260, 37.165440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517887, 35.331783, 36.824001>,  <25.603073, 35.423298, 36.619141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517887, 35.331783, 36.824001>,  <25.375912, 35.179260, 37.165440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.517887, 35.331783, 36.824001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487714, -0.854475, -0.178906,
		-0.797593, -0.352808, -0.489257,
		0.354938, 0.381311, -0.853593,
		25.624369, 35.446178, 36.567924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.186857, 34.741577, 36.552795>,  <25.375912, 35.179260, 37.165440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.186857, 34.741577, 36.552795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508373, 34.949348, 36.436787>,  <25.701283, 35.074013, 36.367180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508373, 34.949348, 36.436787>,  <25.186857, 34.741577, 36.552795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.508373, 34.949348, 36.436787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387898, -0.827217, -0.406506,
		-0.451063, 0.214247, -0.866395,
		0.803790, 0.519433, -0.290021,
		25.749510, 35.105179, 36.349781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.363077, 34.664852, 35.733513>,  <25.186857, 34.741577, 36.552795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.363077, 34.664852, 35.733513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698378, 34.754303, 35.932442>,  <25.899557, 34.807972, 36.051800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698378, 34.754303, 35.932442>,  <25.363077, 34.664852, 35.733513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.698378, 34.754303, 35.932442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426171, -0.837638, -0.341674,
		0.340170, 0.498353, -0.797451,
		0.838250, 0.223624, 0.497323,
		25.949852, 34.821388, 36.081638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913820, 34.361031, 35.308479>,  <25.363077, 34.664852, 35.733513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913820, 34.361031, 35.308479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139071, 34.442444, 35.628845>,  <26.274221, 34.491291, 35.821064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139071, 34.442444, 35.628845>,  <25.913820, 34.361031, 35.308479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.139071, 34.442444, 35.628845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558747, -0.807850, -0.187564,
		0.608843, 0.553130, -0.568645,
		0.563127, 0.203532, 0.800913,
		26.308008, 34.503502, 35.869118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549456, 34.070866, 35.168507>,  <25.913820, 34.361031, 35.308479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549456, 34.070866, 35.168507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599192, 34.126060, 35.561546>,  <26.629034, 34.159176, 35.797371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599192, 34.126060, 35.561546>,  <26.549456, 34.070866, 35.168507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599192, 34.126060, 35.561546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811685, -0.583728, -0.020740,
		0.570708, 0.800138, -0.184584,
		0.124341, 0.137988, 0.982598,
		26.636494, 34.167458, 35.856327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260292, 34.223724, 35.226181>,  <26.549456, 34.070866, 35.168507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260292, 34.223724, 35.226181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128445, 34.090145, 35.579414>,  <27.049335, 34.009998, 35.791355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128445, 34.090145, 35.579414>,  <27.260292, 34.223724, 35.226181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128445, 34.090145, 35.579414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807043, -0.585049, 0.079996,
		0.489931, 0.739052, 0.462353,
		-0.329621, -0.333946, 0.883080,
		27.029558, 33.989960, 35.844337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823713, 34.233669, 35.715614>,  <27.260292, 34.223724, 35.226181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823713, 34.233669, 35.715614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551994, 33.950603, 35.793343>,  <27.388964, 33.780762, 35.839981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551994, 33.950603, 35.793343>,  <27.823713, 34.233669, 35.715614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551994, 33.950603, 35.793343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724594, -0.688729, 0.024819,
		0.116273, 0.157665, 0.980623,
		-0.679297, -0.707668, 0.194324,
		27.348206, 33.738304, 35.851639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120729, 33.909054, 36.172100>,  <27.823713, 34.233669, 35.715614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120729, 33.909054, 36.172100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764214, 33.764755, 36.281982>,  <27.550304, 33.678177, 36.347912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764214, 33.764755, 36.281982>,  <28.120729, 33.909054, 36.172100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764214, 33.764755, 36.281982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295992, -0.921836, -0.250214,
		0.343500, -0.141702, 0.928401,
		-0.891289, -0.360748, 0.274708,
		27.496826, 33.656532, 36.364395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274323, 33.391960, 36.666115>,  <28.120729, 33.909054, 36.172100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274323, 33.391960, 36.666115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911564, 33.307137, 36.520473>,  <27.693909, 33.256245, 36.433090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911564, 33.307137, 36.520473>,  <28.274323, 33.391960, 36.666115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911564, 33.307137, 36.520473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190853, -0.977135, 0.093719,
		-0.375650, 0.015504, 0.926632,
		-0.906897, -0.212056, -0.364102,
		27.639494, 33.243519, 36.411243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947039, 33.019932, 37.216728>,  <28.274323, 33.391960, 36.666115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947039, 33.019932, 37.216728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799902, 32.932663, 36.855156>,  <27.711620, 32.880302, 36.638210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799902, 32.932663, 36.855156>,  <27.947039, 33.019932, 37.216728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799902, 32.932663, 36.855156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318485, -0.942853, 0.097959,
		-0.873648, -0.251856, 0.416303,
		-0.367841, -0.218168, -0.903934,
		27.689550, 32.867214, 36.583977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590939, 32.372906, 37.376396>,  <27.947039, 33.019932, 37.216728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590939, 32.372906, 37.376396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699959, 32.456676, 37.000767>,  <27.765371, 32.506939, 36.775391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699959, 32.456676, 37.000767>,  <27.590939, 32.372906, 37.376396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699959, 32.456676, 37.000767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453604, -0.888715, -0.066543,
		-0.848505, -0.407832, -0.337214,
		0.272548, 0.209424, -0.939073,
		27.781723, 32.519505, 36.719044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274780, 31.861340, 36.933472>,  <27.590939, 32.372906, 37.376396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274780, 31.861340, 36.933472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633474, 31.982641, 36.804539>,  <27.848692, 32.055424, 36.727180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633474, 31.982641, 36.804539>,  <27.274780, 31.861340, 36.933472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633474, 31.982641, 36.804539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350693, -0.931183, 0.099566,
		-0.269957, -0.202325, -0.941376,
		0.896737, 0.303255, -0.322333,
		27.902496, 32.073616, 36.707840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584675, 31.428391, 36.411182>,  <27.274780, 31.861340, 36.933472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584675, 31.428391, 36.411182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854374, 31.571951, 36.669353>,  <28.016193, 31.658087, 36.824257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854374, 31.571951, 36.669353>,  <27.584675, 31.428391, 36.411182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854374, 31.571951, 36.669353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306041, -0.931181, 0.198094,
		0.672109, 0.063965, -0.737684,
		0.674246, 0.358902, 0.645431,
		28.056648, 31.679621, 36.862984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091274, 31.728867, 35.915714>,  <27.584675, 31.428391, 36.411182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091274, 31.728867, 35.915714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842154, 31.882584, 36.188313>,  <27.692682, 31.974813, 36.351871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842154, 31.882584, 36.188313>,  <28.091274, 31.728867, 35.915714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842154, 31.882584, 36.188313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139968, 0.802277, -0.580311,
		-0.769760, -0.456806, -0.445869,
		-0.622799, 0.384292, 0.681498,
		27.655313, 31.997871, 36.392761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669464, 32.129295, 35.511551>,  <28.091274, 31.728867, 35.915714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669464, 32.129295, 35.511551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628805, 32.279121, 35.880196>,  <27.604410, 32.369015, 36.101383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628805, 32.279121, 35.880196>,  <27.669464, 32.129295, 35.511551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628805, 32.279121, 35.880196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267811, 0.881908, -0.387963,
		-0.958095, -0.286253, 0.010670,
		-0.101645, 0.374563, 0.921613,
		27.598312, 32.391491, 36.156681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058569, 32.620800, 35.501354>,  <27.669464, 32.129295, 35.511551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058569, 32.620800, 35.501354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.249554, 32.691364, 35.845657>,  <27.364143, 32.733704, 36.052238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.249554, 32.691364, 35.845657>,  <27.058569, 32.620800, 35.501354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249554, 32.691364, 35.845657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337666, 0.941249, -0.005603,
		-0.811180, -0.287975, 0.508976,
		0.477460, 0.176409, 0.860762,
		27.392792, 32.744286, 36.103886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472717, 32.881001, 35.944118>,  <27.058569, 32.620800, 35.501354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472717, 32.881001, 35.944118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831631, 32.990967, 36.082279>,  <27.046978, 33.056946, 36.165176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831631, 32.990967, 36.082279>,  <26.472717, 32.881001, 35.944118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831631, 32.990967, 36.082279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323850, 0.941643, 0.091814,
		-0.300004, -0.194242, 0.933953,
		0.897284, 0.274916, 0.345402,
		27.100817, 33.073441, 36.185902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336094, 33.130943, 36.520267>,  <26.472717, 32.881001, 35.944118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.336094, 33.130943, 36.520267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671715, 33.304123, 36.388481>,  <26.873087, 33.408031, 36.309410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671715, 33.304123, 36.388481>,  <26.336094, 33.130943, 36.520267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671715, 33.304123, 36.388481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420613, 0.900310, 0.111924,
		0.345075, 0.044666, 0.937512,
		0.839052, 0.432952, -0.329461,
		26.923429, 33.434010, 36.289642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.521366, 33.628216, 37.016155>,  <26.336094, 33.130943, 36.520267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.521366, 33.628216, 37.016155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696236, 33.721836, 36.668800>,  <26.801157, 33.778008, 36.460388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696236, 33.721836, 36.668800>,  <26.521366, 33.628216, 37.016155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696236, 33.721836, 36.668800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317716, 0.943481, 0.094340,
		0.841389, 0.234658, 0.486826,
		0.437173, 0.234049, -0.868390,
		26.827387, 33.792049, 36.408283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674946, 34.246880, 37.120693>,  <26.521366, 33.628216, 37.016155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674946, 34.246880, 37.120693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683117, 34.237240, 36.720894>,  <26.688021, 34.231457, 36.481014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683117, 34.237240, 36.720894>,  <26.674946, 34.246880, 37.120693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683117, 34.237240, 36.720894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399829, 0.916090, -0.030260,
		0.916362, 0.400247, 0.009077,
		0.020427, -0.024100, -0.999501,
		26.689245, 34.230011, 36.421043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966465, 34.866386, 36.939377>,  <26.674946, 34.246880, 37.120693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966465, 34.866386, 36.939377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761557, 34.750999, 36.615807>,  <26.638611, 34.681767, 36.421665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761557, 34.750999, 36.615807>,  <26.966465, 34.866386, 36.939377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761557, 34.750999, 36.615807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481527, 0.876399, -0.007586,
		0.711132, 0.385635, -0.587858,
		-0.512273, -0.288464, -0.808928,
		26.607874, 34.664459, 36.373127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106094, 35.216301, 36.388836>,  <26.966465, 34.866386, 36.939377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106094, 35.216301, 36.388836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.726944, 35.096138, 36.346340>,  <26.499454, 35.024040, 36.320843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.726944, 35.096138, 36.346340>,  <27.106094, 35.216301, 36.388836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.726944, 35.096138, 36.346340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306146, 0.951049, 0.042193,
		0.088362, 0.072518, -0.993445,
		-0.947875, -0.300411, -0.106237,
		26.442581, 35.006016, 36.314468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812159, 35.676189, 35.969906>,  <27.106094, 35.216301, 36.388836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812159, 35.676189, 35.969906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494585, 35.509178, 36.146698>,  <26.304041, 35.408974, 36.252773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494585, 35.509178, 36.146698>,  <26.812159, 35.676189, 35.969906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494585, 35.509178, 36.146698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439764, 0.896317, 0.056770,
		-0.419857, -0.149295, -0.895227,
		-0.793932, -0.417524, 0.441979,
		26.256405, 35.383923, 36.279293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318724, 35.279915, 35.716934>,  <26.812159, 35.676189, 35.969906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318724, 35.279915, 35.716934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463831, 35.285095, 35.344219>,  <27.550896, 35.288204, 35.120590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463831, 35.285095, 35.344219>,  <27.318724, 35.279915, 35.716934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463831, 35.285095, 35.344219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815206, 0.480033, 0.324050,
		0.451486, -0.877155, 0.163583,
		0.362767, 0.012950, -0.931790,
		27.572660, 35.288979, 35.064682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904720, 35.107971, 35.785351>,  <27.318724, 35.279915, 35.716934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904720, 35.107971, 35.785351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930132, 35.257175, 35.415089>,  <27.945379, 35.346699, 35.192932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930132, 35.257175, 35.415089>,  <27.904720, 35.107971, 35.785351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930132, 35.257175, 35.415089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820291, 0.508762, 0.261313,
		0.568408, -0.775904, -0.273653,
		0.063529, 0.373007, -0.925651,
		27.949190, 35.369076, 35.137394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532078, 34.996265, 35.534588>,  <27.904720, 35.107971, 35.785351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532078, 34.996265, 35.534588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374704, 35.315388, 35.351849>,  <28.280279, 35.506863, 35.242203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374704, 35.315388, 35.351849>,  <28.532078, 34.996265, 35.534588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374704, 35.315388, 35.351849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846382, 0.508341, 0.158828,
		0.358950, -0.324182, -0.875249,
		-0.393435, 0.797807, -0.456851,
		28.256674, 35.554729, 35.214794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295183, 34.849678, 35.570274>,  <28.532078, 34.996265, 35.534588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295183, 34.849678, 35.570274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360138, 34.766941, 35.956196>,  <29.399111, 34.717300, 36.187748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360138, 34.766941, 35.956196>,  <29.295183, 34.849678, 35.570274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360138, 34.766941, 35.956196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919489, -0.323044, -0.224014,
		0.358009, 0.923504, 0.137728,
		0.162386, -0.206838, 0.964805,
		29.408854, 34.704891, 36.245636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804628, 35.245949, 35.954365>,  <29.295183, 34.849678, 35.570274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804628, 35.245949, 35.954365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798429, 34.872124, 36.096546>,  <29.794710, 34.647827, 36.181854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798429, 34.872124, 36.096546>,  <29.804628, 35.245949, 35.954365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798429, 34.872124, 36.096546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917611, -0.154507, -0.366221,
		0.397178, 0.320493, 0.859962,
		-0.015499, -0.934565, 0.355454,
		29.793779, 34.591755, 36.203182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314192, 35.199760, 36.530930>,  <29.804628, 35.245949, 35.954365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314192, 35.199760, 36.530930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263491, 34.863335, 36.320583>,  <30.233070, 34.661480, 36.194374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263491, 34.863335, 36.320583>,  <30.314192, 35.199760, 36.530930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263491, 34.863335, 36.320583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978467, -0.018955, -0.205531,
		0.162897, -0.540598, 0.825360,
		-0.126755, -0.841068, -0.525869,
		30.225464, 34.611015, 36.162823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832603, 34.702248, 36.677319>,  <30.314192, 35.199760, 36.530930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832603, 34.702248, 36.677319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705536, 34.610527, 36.309296>,  <30.629295, 34.555496, 36.088482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705536, 34.610527, 36.309296>,  <30.832603, 34.702248, 36.677319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705536, 34.610527, 36.309296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941541, 0.038533, -0.334687,
		0.112196, -0.972593, 0.203655,
		-0.317667, -0.229300, -0.920059,
		30.610235, 34.541737, 36.033279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037376, 34.059372, 36.411102>,  <30.832603, 34.702248, 36.677319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037376, 34.059372, 36.411102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007032, 34.356255, 36.144756>,  <30.988827, 34.534386, 35.984951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007032, 34.356255, 36.144756>,  <31.037376, 34.059372, 36.411102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007032, 34.356255, 36.144756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993543, 0.112768, 0.012507,
		0.084371, -0.660612, -0.745972,
		-0.075859, 0.742210, -0.665860,
		30.984274, 34.578918, 35.945000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669912, 34.053127, 36.128372>,  <31.037376, 34.059372, 36.411102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669912, 34.053127, 36.128372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568050, 34.432693, 36.053852>,  <31.506933, 34.660435, 36.009140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568050, 34.432693, 36.053852>,  <31.669912, 34.053127, 36.128372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568050, 34.432693, 36.053852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965534, 0.238776, -0.103583,
		-0.053807, -0.206257, -0.977017,
		-0.254653, 0.948917, -0.186301,
		31.491653, 34.717369, 35.997963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721180, 34.368294, 35.500477>,  <31.669912, 34.053127, 36.128372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721180, 34.368294, 35.500477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803228, 34.651825, 35.770435>,  <31.852457, 34.821945, 35.932411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803228, 34.651825, 35.770435>,  <31.721180, 34.368294, 35.500477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803228, 34.651825, 35.770435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881023, 0.166616, -0.442762,
		-0.426291, 0.685420, -0.590318,
		0.205121, 0.708829, 0.674897,
		31.864765, 34.864475, 35.972904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656130, 35.038994, 35.156944>,  <31.721180, 34.368294, 35.500477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656130, 35.038994, 35.156944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909515, 35.016666, 35.465645>,  <32.061546, 35.003269, 35.650867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909515, 35.016666, 35.465645>,  <31.656130, 35.038994, 35.156944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909515, 35.016666, 35.465645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770468, -0.046566, -0.635776,
		0.071423, 0.997355, 0.013506,
		0.633465, -0.055815, 0.771756,
		32.099556, 34.999924, 35.697170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315735, 35.504829, 34.963242>,  <31.656130, 35.038994, 35.156944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315735, 35.504829, 34.963242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345455, 35.171017, 35.181610>,  <32.363289, 34.970730, 35.312630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345455, 35.171017, 35.181610>,  <32.315735, 35.504829, 34.963242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345455, 35.171017, 35.181610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510210, -0.438549, -0.739838,
		0.856835, 0.333504, 0.393204,
		0.074299, -0.834536, 0.545921,
		32.367744, 34.920654, 35.345387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062592, 35.296310, 35.149090>,  <32.315735, 35.504829, 34.963242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062592, 35.296310, 35.149090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804066, 34.995964, 35.094727>,  <32.648949, 34.815758, 35.062111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804066, 34.995964, 35.094727>,  <33.062592, 35.296310, 35.149090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804066, 34.995964, 35.094727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500005, -0.282193, -0.818756,
		0.576426, -0.597131, 0.557824,
		-0.646319, -0.750867, -0.135905,
		32.610168, 34.770702, 35.053955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326061, 34.665272, 34.990089>,  <33.062592, 35.296310, 35.149090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326061, 34.665272, 34.990089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960423, 34.655426, 34.828186>,  <32.741039, 34.649517, 34.731045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960423, 34.655426, 34.828186>,  <33.326061, 34.665272, 34.990089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960423, 34.655426, 34.828186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398091, -0.244427, -0.884183,
		-0.077167, -0.969355, 0.233229,
		-0.914094, -0.024617, -0.404754,
		32.686195, 34.648041, 34.706760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041325, 34.004894, 34.797241>,  <33.326061, 34.665272, 34.990089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041325, 34.004894, 34.797241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869896, 34.269947, 34.551559>,  <32.767040, 34.428978, 34.404152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869896, 34.269947, 34.551559>,  <33.041325, 34.004894, 34.797241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869896, 34.269947, 34.551559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567767, -0.331291, -0.753583,
		-0.702828, -0.671689, -0.234238,
		-0.428572, 0.662632, -0.614203,
		32.741325, 34.468735, 34.367298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069195, 33.680645, 34.163731>,  <33.041325, 34.004894, 34.797241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069195, 33.680645, 34.163731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965313, 34.051460, 34.055538>,  <32.902985, 34.273949, 33.990623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965313, 34.051460, 34.055538>,  <33.069195, 33.680645, 34.163731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965313, 34.051460, 34.055538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433009, -0.138565, -0.890675,
		-0.863166, -0.348435, -0.365428,
		-0.259707, 0.927034, -0.270481,
		32.887402, 34.329571, 33.974396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607304, 33.629303, 33.633022>,  <33.069195, 33.680645, 34.163731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607304, 33.629303, 33.633022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875473, 33.926083, 33.630383>,  <33.036373, 34.104153, 33.628799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875473, 33.926083, 33.630383>,  <32.607304, 33.629303, 33.633022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875473, 33.926083, 33.630383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329623, -0.305793, -0.893219,
		-0.664745, 0.596655, -0.449574,
		0.670420, 0.741952, -0.006603,
		33.076599, 34.148670, 33.628403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688740, 33.822266, 32.860401>,  <32.607304, 33.629303, 33.633022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688740, 33.822266, 32.860401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015354, 33.970348, 33.037586>,  <33.211323, 34.059200, 33.143898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015354, 33.970348, 33.037586>,  <32.688740, 33.822266, 32.860401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015354, 33.970348, 33.037586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450041, 0.072363, -0.890071,
		-0.361568, 0.926125, -0.107522,
		0.816537, 0.370211, 0.442958,
		33.260315, 34.081413, 33.170475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762756, 34.486877, 32.527882>,  <32.688740, 33.822266, 32.860401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762756, 34.486877, 32.527882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116920, 34.399723, 32.692116>,  <33.329418, 34.347431, 32.790657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116920, 34.399723, 32.692116>,  <32.762756, 34.486877, 32.527882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116920, 34.399723, 32.692116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464763, 0.401319, -0.789265,
		0.007197, 0.889644, 0.456597,
		0.885406, -0.217889, 0.410586,
		33.382542, 34.334354, 32.815292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208534, 35.033447, 32.346371>,  <32.762756, 34.486877, 32.527882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208534, 35.033447, 32.346371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478859, 34.759834, 32.456192>,  <33.641056, 34.595669, 32.522083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478859, 34.759834, 32.456192>,  <33.208534, 35.033447, 32.346371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478859, 34.759834, 32.456192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626933, 0.337586, -0.702133,
		0.387596, 0.646636, 0.656987,
		0.675814, -0.684031, 0.274551,
		33.681602, 34.554626, 32.538559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854427, 35.395542, 32.420929>,  <33.208534, 35.033447, 32.346371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854427, 35.395542, 32.420929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944141, 35.009995, 32.363441>,  <33.997971, 34.778667, 32.328949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944141, 35.009995, 32.363441>,  <33.854427, 35.395542, 32.420929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944141, 35.009995, 32.363441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689036, 0.261141, -0.676044,
		0.689148, 0.052598, 0.722709,
		0.224287, -0.963867, -0.143723,
		34.011429, 34.720833, 32.320324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681034, 35.370968, 32.382160>,  <33.854427, 35.395542, 32.420929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681034, 35.370968, 32.382160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551613, 35.024601, 32.229584>,  <34.473961, 34.816780, 32.138039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551613, 35.024601, 32.229584>,  <34.681034, 35.370968, 32.382160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551613, 35.024601, 32.229584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751125, 0.010109, -0.660082,
		0.575433, -0.500085, 0.647142,
		-0.323555, -0.865918, -0.381444,
		34.454548, 34.764824, 32.115150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258675, 34.952198, 32.206779>,  <34.681034, 35.370968, 32.382160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258675, 34.952198, 32.206779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979092, 34.774834, 31.982338>,  <34.811340, 34.668415, 31.847672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979092, 34.774834, 31.982338>,  <35.258675, 34.952198, 32.206779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979092, 34.774834, 31.982338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631332, -0.013988, -0.775387,
		0.335965, -0.896210, 0.289716,
		-0.698962, -0.443410, -0.561107,
		34.769402, 34.641811, 31.814007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602207, 34.474903, 31.842840>,  <35.258675, 34.952198, 32.206779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602207, 34.474903, 31.842840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262901, 34.497673, 31.632236>,  <35.059319, 34.511333, 31.505875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262901, 34.497673, 31.632236>,  <35.602207, 34.474903, 31.842840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262901, 34.497673, 31.632236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529108, 0.133019, -0.838063,
		0.022329, -0.989477, -0.142955,
		-0.848260, 0.056926, -0.526511,
		35.008423, 34.514751, 31.474283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768841, 34.052402, 31.297684>,  <35.602207, 34.474903, 31.842840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768841, 34.052402, 31.297684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464733, 34.283363, 31.178627>,  <35.282269, 34.421940, 31.107193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464733, 34.283363, 31.178627>,  <35.768841, 34.052402, 31.297684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464733, 34.283363, 31.178627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332509, -0.047709, -0.941893,
		-0.558054, -0.815063, -0.155721,
		-0.760272, 0.577405, -0.297640,
		35.236652, 34.456585, 31.089334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538277, 33.730282, 30.709013>,  <35.768841, 34.052402, 31.297684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538277, 33.730282, 30.709013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395912, 34.102142, 30.670923>,  <35.310493, 34.325260, 30.648069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395912, 34.102142, 30.670923>,  <35.538277, 33.730282, 30.709013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395912, 34.102142, 30.670923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175111, -0.033748, -0.983970,
		-0.917966, -0.366884, -0.150781,
		-0.355914, 0.929655, -0.095225,
		35.289139, 34.381039, 30.642355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151958, 33.726688, 30.060415>,  <35.538277, 33.730282, 30.709013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151958, 33.726688, 30.060415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235489, 34.107162, 30.151308>,  <35.285606, 34.335449, 30.205843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235489, 34.107162, 30.151308>,  <35.151958, 33.726688, 30.060415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235489, 34.107162, 30.151308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045736, 0.222601, -0.973836,
		-0.976882, 0.213757, 0.002982,
		0.208828, 0.951187, 0.227232,
		35.298138, 34.392517, 30.219477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706131, 34.122952, 29.656439>,  <35.151958, 33.726688, 30.060415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706131, 34.122952, 29.656439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007980, 34.367977, 29.750509>,  <35.189091, 34.514992, 29.806952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007980, 34.367977, 29.750509>,  <34.706131, 34.122952, 29.656439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007980, 34.367977, 29.750509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091260, 0.256951, -0.962106,
		-0.649781, 0.747489, 0.137998,
		0.754623, 0.612565, 0.235178,
		35.234367, 34.551746, 29.821062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723164, 34.738361, 29.194448>,  <34.706131, 34.122952, 29.656439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723164, 34.738361, 29.194448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091282, 34.729473, 29.350687>,  <35.312153, 34.724140, 29.444429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091282, 34.729473, 29.350687>,  <34.723164, 34.738361, 29.194448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091282, 34.729473, 29.350687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391156, 0.071318, -0.917557,
		-0.007466, 0.997206, 0.074326,
		0.920294, -0.022223, 0.390596,
		35.367371, 34.722805, 29.467865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116814, 35.279537, 28.843328>,  <34.723164, 34.738361, 29.194448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116814, 35.279537, 28.843328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406162, 35.041069, 28.982645>,  <35.579773, 34.897987, 29.066235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406162, 35.041069, 28.982645>,  <35.116814, 35.279537, 28.843328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406162, 35.041069, 28.982645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473078, 0.060532, -0.878939,
		0.502917, 0.800571, 0.325824,
		0.723375, -0.596173, 0.348290,
		35.623177, 34.862217, 29.087132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779320, 35.644524, 28.732092>,  <35.116814, 35.279537, 28.843328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779320, 35.644524, 28.732092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881264, 35.261353, 28.784878>,  <35.942432, 35.031448, 28.816549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881264, 35.261353, 28.784878>,  <35.779320, 35.644524, 28.732092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881264, 35.261353, 28.784878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690282, 0.084663, -0.718570,
		0.677167, 0.274231, 0.682819,
		0.254864, -0.957930, 0.131965,
		35.957722, 34.973972, 28.824467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583351, 35.670322, 28.712700>,  <35.779320, 35.644524, 28.732092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583351, 35.670322, 28.712700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484608, 35.290230, 28.636677>,  <36.425362, 35.062176, 28.591063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484608, 35.290230, 28.636677>,  <36.583351, 35.670322, 28.712700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484608, 35.290230, 28.636677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658881, -0.020767, -0.751960,
		0.710589, -0.310854, 0.631216,
		-0.246858, -0.950231, -0.190059,
		36.410549, 35.005161, 28.579659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314861, 35.334961, 28.671513>,  <36.583351, 35.670322, 28.712700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314861, 35.334961, 28.671513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023010, 35.114746, 28.509253>,  <36.847900, 34.982616, 28.411898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023010, 35.114746, 28.509253>,  <37.314861, 35.334961, 28.671513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023010, 35.114746, 28.509253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554958, -0.130079, -0.821645,
		0.399581, -0.824612, 0.400436,
		-0.729627, -0.550539, -0.405648,
		36.804123, 34.949585, 28.387558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656158, 34.814480, 28.366785>,  <37.314861, 35.334961, 28.671513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656158, 34.814480, 28.366785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296379, 34.781673, 28.195080>,  <37.080513, 34.761990, 28.092056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296379, 34.781673, 28.195080>,  <37.656158, 34.814480, 28.366785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296379, 34.781673, 28.195080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436865, -0.141865, -0.888270,
		0.011955, -0.986483, 0.163430,
		-0.899448, -0.082016, -0.429263,
		37.026546, 34.757069, 28.066301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688492, 34.195950, 28.017189>,  <37.656158, 34.814480, 28.366785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688492, 34.195950, 28.017189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396439, 34.391293, 27.826017>,  <37.221207, 34.508499, 27.711313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396439, 34.391293, 27.826017>,  <37.688492, 34.195950, 28.017189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396439, 34.391293, 27.826017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379947, -0.291187, -0.877981,
		-0.567932, -0.822631, 0.027057,
		-0.730133, 0.488353, -0.477930,
		37.177399, 34.537800, 27.682638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360058, 33.762627, 27.534447>,  <37.688492, 34.195950, 28.017189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360058, 33.762627, 27.534447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258232, 34.121552, 27.390205>,  <37.197136, 34.336906, 27.303659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258232, 34.121552, 27.390205>,  <37.360058, 33.762627, 27.534447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258232, 34.121552, 27.390205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385495, -0.247826, -0.888806,
		-0.886900, -0.365267, -0.282821,
		-0.254561, 0.897308, -0.360606,
		37.181862, 34.390743, 27.282024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138630, 33.704281, 26.842770>,  <37.360058, 33.762627, 27.534447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138630, 33.704281, 26.842770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231243, 34.092091, 26.874825>,  <37.286812, 34.324776, 26.894056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231243, 34.092091, 26.874825>,  <37.138630, 33.704281, 26.842770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231243, 34.092091, 26.874825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365403, -0.010328, -0.930792,
		-0.901595, 0.244789, -0.356657,
		0.231531, 0.969521, 0.080135,
		37.300701, 34.382946, 26.898865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841293, 34.074806, 26.138069>,  <37.138630, 33.704281, 26.842770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841293, 34.074806, 26.138069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126053, 34.292835, 26.315199>,  <37.296909, 34.423653, 26.421476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126053, 34.292835, 26.315199>,  <36.841293, 34.074806, 26.138069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126053, 34.292835, 26.315199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530492, -0.004192, -0.847679,
		-0.460192, 0.838377, -0.292142,
		0.711900, 0.545074, 0.442824,
		37.339622, 34.456356, 26.448046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922161, 34.622002, 25.711370>,  <36.841293, 34.074806, 26.138069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922161, 34.622002, 25.711370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259251, 34.567806, 25.919777>,  <37.461506, 34.535290, 26.044821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259251, 34.567806, 25.919777>,  <36.922161, 34.622002, 25.711370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259251, 34.567806, 25.919777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522312, -0.028672, -0.852273,
		0.130415, 0.990363, 0.046606,
		0.842723, -0.135492, 0.521018,
		37.512066, 34.527157, 26.076082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340546, 34.969627, 25.322428>,  <36.922161, 34.622002, 25.711370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340546, 34.969627, 25.322428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605015, 34.787289, 25.560774>,  <37.763695, 34.677883, 25.703781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605015, 34.787289, 25.560774>,  <37.340546, 34.969627, 25.322428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605015, 34.787289, 25.560774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636696, -0.079167, -0.767040,
		0.396827, 0.886529, 0.237895,
		0.661170, -0.455849, 0.595866,
		37.803368, 34.650536, 25.739534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922184, 35.252136, 25.269579>,  <37.340546, 34.969627, 25.322428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922184, 35.252136, 25.269579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035023, 34.891815, 25.401619>,  <38.102726, 34.675621, 25.480843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035023, 34.891815, 25.401619>,  <37.922184, 35.252136, 25.269579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035023, 34.891815, 25.401619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713183, -0.033243, -0.700189,
		0.641709, 0.432945, 0.633062,
		0.282098, -0.900807, 0.330102,
		38.119652, 34.621574, 25.500650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659180, 35.246658, 25.422638>,  <37.922184, 35.252136, 25.269579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659180, 35.246658, 25.422638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622021, 34.849270, 25.396149>,  <38.599728, 34.610836, 25.380255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622021, 34.849270, 25.396149>,  <38.659180, 35.246658, 25.422638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622021, 34.849270, 25.396149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842149, -0.042914, -0.537535,
		0.531184, -0.105703, 0.840637,
		-0.092894, -0.993471, -0.066222,
		38.594154, 34.551228, 25.376282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356693, 35.138268, 25.465090>,  <38.659180, 35.246658, 25.422638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356693, 35.138268, 25.465090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168156, 34.821571, 25.309658>,  <39.055035, 34.631554, 25.216400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168156, 34.821571, 25.309658>,  <39.356693, 35.138268, 25.465090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168156, 34.821571, 25.309658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842844, -0.274620, -0.462815,
		0.259717, -0.545653, 0.796749,
		-0.471340, -0.791736, -0.388577,
		39.026752, 34.584049, 25.193085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848736, 34.558727, 25.534126>,  <39.356693, 35.138268, 25.465090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848736, 34.558727, 25.534126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572025, 34.481956, 25.255671>,  <39.405998, 34.435894, 25.088596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572025, 34.481956, 25.255671>,  <39.848736, 34.558727, 25.534126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572025, 34.481956, 25.255671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722091, -0.176549, -0.668890,
		0.005473, -0.965400, 0.260718,
		-0.691776, -0.191923, -0.696141,
		39.364494, 34.424381, 25.046829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004868, 33.905254, 25.170555>,  <39.848736, 34.558727, 25.534126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004868, 33.905254, 25.170555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778572, 34.117332, 24.917944>,  <39.642796, 34.244579, 24.766378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778572, 34.117332, 24.917944>,  <40.004868, 33.905254, 25.170555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778572, 34.117332, 24.917944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665967, -0.157823, -0.729095,
		-0.486235, -0.833055, -0.263808,
		-0.565741, 0.530199, -0.631527,
		39.608849, 34.276394, 24.728485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052422, 33.492939, 24.488060>,  <40.004868, 33.905254, 25.170555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052422, 33.492939, 24.488060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896179, 33.844227, 24.377680>,  <39.802433, 34.055000, 24.311453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896179, 33.844227, 24.377680>,  <40.052422, 33.492939, 24.488060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896179, 33.844227, 24.377680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630283, 0.036661, -0.775499,
		-0.670945, -0.476844, -0.567850,
		-0.390610, 0.878223, -0.275949,
		39.778996, 34.107693, 24.294895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958664, 33.400185, 23.812857>,  <40.052422, 33.492939, 24.488060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958664, 33.400185, 23.812857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954327, 33.795998, 23.870422>,  <39.951725, 34.033485, 23.904963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954327, 33.795998, 23.870422>,  <39.958664, 33.400185, 23.812857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954327, 33.795998, 23.870422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690124, 0.111555, -0.715041,
		-0.723610, 0.091568, -0.684108,
		-0.010841, 0.989531, 0.143915,
		39.951073, 34.092857, 23.913597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044064, 33.691536, 23.123514>,  <39.958664, 33.400185, 23.812857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044064, 33.691536, 23.123514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165474, 33.979019, 23.373739>,  <40.238319, 34.151508, 23.523874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165474, 33.979019, 23.373739>,  <40.044064, 33.691536, 23.123514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165474, 33.979019, 23.373739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690982, 0.286019, -0.663881,
		-0.656059, 0.633759, -0.409799,
		0.303531, 0.718709, 0.625561,
		40.256535, 34.194633, 23.561407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382580, 34.058170, 22.762943>,  <40.044064, 33.691536, 23.123514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382580, 34.058170, 22.762943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524864, 34.235191, 23.092215>,  <40.610233, 34.341404, 23.289778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524864, 34.235191, 23.092215>,  <40.382580, 34.058170, 22.762943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524864, 34.235191, 23.092215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785073, 0.336396, -0.520094,
		-0.507081, 0.831257, -0.227774,
		0.355710, 0.442549, 0.823177,
		40.631577, 34.367954, 23.339169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500957, 34.814068, 22.582304>,  <40.382580, 34.058170, 22.762943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500957, 34.814068, 22.582304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728958, 34.676929, 22.880983>,  <40.865757, 34.594646, 23.060190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728958, 34.676929, 22.880983>,  <40.500957, 34.814068, 22.582304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728958, 34.676929, 22.880983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810361, 0.384683, -0.441967,
		-0.135714, 0.857014, 0.497100,
		0.569998, -0.342849, 0.746697,
		40.899956, 34.574074, 23.104992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921021, 35.359612, 22.826767>,  <40.500957, 34.814068, 22.582304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921021, 35.359612, 22.826767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133549, 35.045864, 22.954807>,  <41.261066, 34.857616, 23.031631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133549, 35.045864, 22.954807>,  <40.921021, 35.359612, 22.826767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133549, 35.045864, 22.954807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842305, 0.448678, -0.298680,
		0.090653, 0.428317, 0.899070,
		0.531323, -0.784367, 0.320100,
		41.292946, 34.810555, 23.050837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557610, 35.625134, 23.171024>,  <40.921021, 35.359612, 22.826767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557610, 35.625134, 23.171024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650738, 35.248131, 23.075130>,  <41.706615, 35.021931, 23.017593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650738, 35.248131, 23.075130>,  <41.557610, 35.625134, 23.171024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650738, 35.248131, 23.075130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907214, 0.299297, -0.295608,
		0.350364, -0.148667, 0.924739,
		0.232825, -0.942507, -0.239736,
		41.720585, 34.965378, 23.003210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188736, 35.362553, 23.550222>,  <41.557610, 35.625134, 23.171024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188736, 35.362553, 23.550222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141029, 35.166878, 23.204628>,  <42.112404, 35.049473, 22.997271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141029, 35.166878, 23.204628>,  <42.188736, 35.362553, 23.550222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141029, 35.166878, 23.204628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915978, 0.281552, -0.285855,
		0.383093, -0.825487, 0.414501,
		-0.119266, -0.489183, -0.863988,
		42.105251, 35.020123, 22.945431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810535, 35.027611, 23.473383>,  <42.188736, 35.362553, 23.550222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810535, 35.027611, 23.473383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641094, 35.057289, 23.112261>,  <42.539429, 35.075096, 22.895588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641094, 35.057289, 23.112261>,  <42.810535, 35.027611, 23.473383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641094, 35.057289, 23.112261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875602, 0.288935, -0.387089,
		0.232131, -0.954469, -0.187360,
		-0.423600, 0.074198, -0.902806,
		42.514015, 35.079548, 22.841419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289791, 34.762901, 22.959808>,  <42.810535, 35.027611, 23.473383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289791, 34.762901, 22.959808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024529, 34.977856, 22.751406>,  <42.865372, 35.106827, 22.626364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024529, 34.977856, 22.751406>,  <43.289791, 34.762901, 22.959808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024529, 34.977856, 22.751406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744436, 0.401254, -0.533676,
		-0.077733, -0.741764, -0.666141,
		-0.663154, 0.537383, -0.521006,
		42.825581, 35.139072, 22.595104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665371, 34.917908, 22.421385>,  <43.289791, 34.762901, 22.959808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665371, 34.917908, 22.421385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353218, 35.155296, 22.342606>,  <43.165924, 35.297729, 22.295338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353218, 35.155296, 22.342606>,  <43.665371, 34.917908, 22.421385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353218, 35.155296, 22.342606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615973, 0.675425, -0.405437,
		-0.107591, -0.437712, -0.892655,
		-0.780386, 0.593472, -0.196949,
		43.119102, 35.333340, 22.283522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859161, 35.256016, 21.749374>,  <43.665371, 34.917908, 22.421385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859161, 35.256016, 21.749374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579830, 35.487698, 21.917591>,  <43.412231, 35.626705, 22.018522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579830, 35.487698, 21.917591>,  <43.859161, 35.256016, 21.749374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579830, 35.487698, 21.917591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514580, 0.814646, -0.267504,
		-0.497533, 0.029597, -0.866940,
		-0.698332, 0.579203, 0.420543,
		43.370331, 35.661457, 22.043755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509377, 35.715767, 21.247913>,  <43.859161, 35.256016, 21.749374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509377, 35.715767, 21.247913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513779, 35.858284, 21.621637>,  <43.516418, 35.943794, 21.845871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513779, 35.858284, 21.621637>,  <43.509377, 35.715767, 21.247913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513779, 35.858284, 21.621637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552390, 0.776687, -0.302692,
		-0.833513, 0.519433, -0.188270,
		0.011001, 0.356297, 0.934308,
		43.517078, 35.965172, 21.901930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482994, 36.483337, 21.229416>,  <43.509377, 35.715767, 21.247913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482994, 36.483337, 21.229416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605968, 36.431580, 21.606508>,  <43.679752, 36.400524, 21.832764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.605968, 36.431580, 21.606508>,  <43.482994, 36.483337, 21.229416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605968, 36.431580, 21.606508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330158, 0.943673, 0.021851,
		-0.892456, 0.304532, 0.332840,
		0.307438, -0.129391, 0.942730,
		43.698200, 36.392761, 21.889328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807320, 37.021198, 21.466026>,  <43.482994, 36.483337, 21.229416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807320, 37.021198, 21.466026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.982761, 37.373135, 21.392815>,  <44.088028, 37.584297, 21.348888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.982761, 37.373135, 21.392815>,  <43.807320, 37.021198, 21.466026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.982761, 37.373135, 21.392815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588117, -0.435015, -0.681821,
		-0.679516, 0.191409, -0.708252,
		0.438606, 0.879844, -0.183029,
		44.114342, 37.637089, 21.337906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778629, 37.240334, 20.707300>,  <43.807320, 37.021198, 21.466026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778629, 37.240334, 20.707300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.096260, 37.426285, 20.863930>,  <44.286839, 37.537853, 20.957907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.096260, 37.426285, 20.863930>,  <43.778629, 37.240334, 20.707300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.096260, 37.426285, 20.863930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556380, -0.296575, -0.776199,
		-0.244705, 0.834226, -0.494152,
		0.794078, 0.464876, 0.391574,
		44.334484, 37.565746, 20.981401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040195, 37.656403, 20.205652>,  <43.778629, 37.240334, 20.707300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040195, 37.656403, 20.205652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337612, 37.552059, 20.451937>,  <44.516060, 37.489452, 20.599709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337612, 37.552059, 20.451937>,  <44.040195, 37.656403, 20.205652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337612, 37.552059, 20.451937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578215, -0.211692, -0.787943,
		0.335881, 0.941882, -0.006571,
		0.743540, -0.260855, 0.615713,
		44.560673, 37.473801, 20.636650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.673672, 38.159107, 20.203810>,  <44.040195, 37.656403, 20.205652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.673672, 38.159107, 20.203810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774975, 37.779045, 20.276543>,  <44.835758, 37.551006, 20.320183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774975, 37.779045, 20.276543>,  <44.673672, 38.159107, 20.203810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774975, 37.779045, 20.276543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630714, 0.019658, -0.775766,
		0.733525, 0.311155, 0.604255,
		0.253262, -0.950156, 0.181830,
		44.850952, 37.493999, 20.331091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.400150, 38.142395, 20.276411>,  <44.673672, 38.159107, 20.203810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.400150, 38.142395, 20.276411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249088, 37.801098, 20.132545>,  <45.158451, 37.596321, 20.046227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249088, 37.801098, 20.132545>,  <45.400150, 38.142395, 20.276411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249088, 37.801098, 20.132545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714626, -0.021583, -0.699174,
		0.588800, -0.521072, 0.617898,
		-0.377657, -0.853239, -0.359663,
		45.135792, 37.545128, 20.024647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.803345, 37.395565, 20.325148>,  <45.400150, 38.142395, 20.276411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.803345, 37.395565, 20.325148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592754, 37.505489, 20.003328>,  <45.466400, 37.571445, 19.810236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592754, 37.505489, 20.003328>,  <45.803345, 37.395565, 20.325148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592754, 37.505489, 20.003328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848648, 0.226836, -0.477852,
		0.051182, -0.934357, -0.352642,
		-0.526476, 0.274811, -0.804550,
		45.434811, 37.587933, 19.761963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.691345, 37.379021, 21.049822>,  <45.803345, 37.395565, 20.325148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.691345, 37.379021, 21.049822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418072, 37.126930, 20.902266>,  <45.254108, 36.975677, 20.813732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418072, 37.126930, 20.902266>,  <45.691345, 37.379021, 21.049822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418072, 37.126930, 20.902266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723418, -0.515151, -0.459659,
		0.099656, -0.580891, 0.807858,
		-0.683181, -0.630226, -0.368889,
		45.213116, 36.937862, 20.791599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.850189, 36.931080, 21.684288>,  <45.691345, 37.379021, 21.049822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.850189, 36.931080, 21.684288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876305, 36.931267, 22.083435>,  <45.891975, 36.931377, 22.322924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876305, 36.931267, 22.083435>,  <45.850189, 36.931080, 21.684288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.876305, 36.931267, 22.083435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148499, 0.988869, 0.009258,
		-0.986755, -0.148786, 0.064633,
		0.065291, 0.000462, 0.997866,
		45.895893, 36.931404, 22.382795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.648499, 37.588295, 21.770542>,  <45.850189, 36.931080, 21.684288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.648499, 37.588295, 21.770542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775185, 37.506645, 22.141062>,  <45.851196, 37.457657, 22.363373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775185, 37.506645, 22.141062>,  <45.648499, 37.588295, 21.770542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.775185, 37.506645, 22.141062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038614, 0.978534, 0.202435,
		-0.947736, -0.028345, 0.317794,
		0.316711, -0.204126, 0.926298,
		45.870197, 37.445408, 22.418951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320339, 38.132446, 21.577475>,  <45.648499, 37.588295, 21.770542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320339, 38.132446, 21.577475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.016415, 37.945786, 21.396399>,  <44.834061, 37.833790, 21.287754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.016415, 37.945786, 21.396399>,  <45.320339, 38.132446, 21.577475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016415, 37.945786, 21.396399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649947, 0.562569, 0.510965,
		0.016224, 0.682458, -0.730744,
		-0.759807, -0.466655, -0.452688,
		44.788471, 37.805790, 21.260592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881264, 38.665737, 21.365404>,  <45.320339, 38.132446, 21.577475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881264, 38.665737, 21.365404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656555, 38.335636, 21.388626>,  <44.521729, 38.137577, 21.402559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656555, 38.335636, 21.388626>,  <44.881264, 38.665737, 21.365404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.656555, 38.335636, 21.388626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740269, 0.532769, 0.410071,
		-0.369341, 0.187391, -0.910204,
		-0.561772, -0.825252, 0.058053,
		44.488022, 38.088062, 21.406042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155067, 38.800758, 21.154860>,  <44.881264, 38.665737, 21.365404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155067, 38.800758, 21.154860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154720, 38.474575, 21.386385>,  <44.154510, 38.278866, 21.525301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154720, 38.474575, 21.386385>,  <44.155067, 38.800758, 21.154860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154720, 38.474575, 21.386385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874294, 0.281574, 0.395381,
		-0.485396, -0.505711, -0.713195,
		-0.000869, -0.815458, 0.578815,
		44.154461, 38.229939, 21.560030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450138, 38.536610, 21.104923>,  <44.155067, 38.800758, 21.154860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450138, 38.536610, 21.104923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603146, 38.370949, 21.435293>,  <43.694950, 38.271553, 21.633516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603146, 38.370949, 21.435293>,  <43.450138, 38.536610, 21.104923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603146, 38.370949, 21.435293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880665, 0.106956, 0.461507,
		-0.279472, -0.903902, -0.323816,
		0.382523, -0.414151, 0.825926,
		43.717903, 38.246704, 21.683071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014229, 38.079643, 21.363819>,  <43.450138, 38.536610, 21.104923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014229, 38.079643, 21.363819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243690, 38.139374, 21.685966>,  <43.381367, 38.175213, 21.879255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243690, 38.139374, 21.685966>,  <43.014229, 38.079643, 21.363819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.243690, 38.139374, 21.685966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812859, -0.017315, 0.582204,
		0.100883, -0.988637, 0.111447,
		0.573658, 0.149325, 0.805369,
		43.415787, 38.184170, 21.927578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731430, 37.606503, 21.894814>,  <43.014229, 38.079643, 21.363819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731430, 37.606503, 21.894814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958965, 37.848469, 22.117704>,  <43.095486, 37.993649, 22.251438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958965, 37.848469, 22.117704>,  <42.731430, 37.606503, 21.894814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958965, 37.848469, 22.117704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683155, -0.029733, 0.729668,
		0.457954, -0.795736, 0.396336,
		0.568839, 0.604913, 0.557227,
		43.129616, 38.029942, 22.284872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852238, 37.232079, 22.525593>,  <42.731430, 37.606503, 21.894814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852238, 37.232079, 22.525593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912876, 37.619862, 22.602709>,  <42.949261, 37.852531, 22.648979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912876, 37.619862, 22.602709>,  <42.852238, 37.232079, 22.525593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912876, 37.619862, 22.602709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661383, -0.045460, 0.748670,
		0.734568, -0.241008, 0.634291,
		0.151600, 0.969458, 0.192791,
		42.958355, 37.910698, 22.660545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071201, 37.261158, 23.266104>,  <42.852238, 37.232079, 22.525593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071201, 37.261158, 23.266104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943790, 37.629490, 23.176113>,  <42.867344, 37.850491, 23.122118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943790, 37.629490, 23.176113>,  <43.071201, 37.261158, 23.266104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943790, 37.629490, 23.176113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495813, 0.040436, 0.867487,
		0.807905, 0.387864, 0.443680,
		-0.318527, 0.920829, -0.224976,
		42.848232, 37.905739, 23.108620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005337, 37.660736, 23.880037>,  <43.071201, 37.261158, 23.266104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005337, 37.660736, 23.880037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762814, 37.843464, 23.619665>,  <42.617302, 37.953102, 23.463442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762814, 37.843464, 23.619665>,  <43.005337, 37.660736, 23.880037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762814, 37.843464, 23.619665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711260, 0.054584, 0.700806,
		0.355674, 0.887882, 0.291825,
		-0.606304, 0.456822, -0.650929,
		42.580921, 37.980511, 23.424387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724754, 38.054619, 24.354748>,  <43.005337, 37.660736, 23.880037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724754, 38.054619, 24.354748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499138, 38.058830, 24.024475>,  <42.363770, 38.061356, 23.826311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499138, 38.058830, 24.024475>,  <42.724754, 38.054619, 24.354748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499138, 38.058830, 24.024475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817253, -0.150185, 0.556366,
		-0.118147, 0.988602, 0.093315,
		-0.564039, 0.010530, -0.825681,
		42.329926, 38.061989, 23.776772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221199, 38.634125, 24.438541>,  <42.724754, 38.054619, 24.354748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221199, 38.634125, 24.438541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043537, 38.393398, 24.173046>,  <41.936939, 38.248962, 24.013748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043537, 38.393398, 24.173046>,  <42.221199, 38.634125, 24.438541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043537, 38.393398, 24.173046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786173, -0.093529, 0.610888,
		-0.429719, 0.793142, -0.431588,
		-0.444155, -0.601813, -0.663738,
		41.910290, 38.212856, 23.973925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670197, 38.967415, 24.360832>,  <42.221199, 38.634125, 24.438541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670197, 38.967415, 24.360832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604900, 38.592678, 24.237104>,  <41.565723, 38.367836, 24.162867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604900, 38.592678, 24.237104>,  <41.670197, 38.967415, 24.360832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604900, 38.592678, 24.237104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815901, -0.048079, 0.576189,
		-0.554670, 0.346431, -0.756522,
		-0.163237, -0.936842, -0.309322,
		41.555927, 38.311626, 24.144308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016445, 38.992386, 24.223269>,  <41.670197, 38.967415, 24.360832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016445, 38.992386, 24.223269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117069, 38.611347, 24.291700>,  <41.177444, 38.382721, 24.332760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117069, 38.611347, 24.291700>,  <41.016445, 38.992386, 24.223269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117069, 38.611347, 24.291700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703494, -0.058572, 0.708283,
		-0.664691, -0.298529, -0.684884,
		0.251559, -0.952601, 0.171081,
		41.192535, 38.325565, 24.343025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446239, 38.589626, 24.091555>,  <41.016445, 38.992386, 24.223269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446239, 38.589626, 24.091555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666695, 38.357025, 24.330921>,  <40.798969, 38.217464, 24.474541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666695, 38.357025, 24.330921>,  <40.446239, 38.589626, 24.091555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666695, 38.357025, 24.330921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710503, 0.049003, 0.701986,
		-0.437529, -0.812070, -0.386149,
		0.551138, -0.581499, 0.598418,
		40.832035, 38.182575, 24.510447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927792, 38.184795, 24.365587>,  <40.446239, 38.589626, 24.091555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927792, 38.184795, 24.365587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235775, 38.115845, 24.611334>,  <40.420567, 38.074474, 24.758781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235775, 38.115845, 24.611334>,  <39.927792, 38.184795, 24.365587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235775, 38.115845, 24.611334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621831, 0.013269, 0.783039,
		-0.143127, -0.984942, -0.096971,
		0.769961, -0.172374, 0.614367,
		40.466763, 38.064133, 24.795645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763508, 37.594868, 24.770800>,  <39.927792, 38.184795, 24.365587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763508, 37.594868, 24.770800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048965, 37.762753, 24.995142>,  <40.220238, 37.863483, 25.129747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048965, 37.762753, 24.995142>,  <39.763508, 37.594868, 24.770800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048965, 37.762753, 24.995142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551766, -0.156494, 0.819185,
		0.431590, -0.894066, 0.119901,
		0.713642, 0.419709, 0.560857,
		40.263058, 37.888664, 25.163399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930992, 37.124027, 25.218426>,  <39.763508, 37.594868, 24.770800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930992, 37.124027, 25.218426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025524, 37.475693, 25.383940>,  <40.082245, 37.686691, 25.483248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025524, 37.475693, 25.383940>,  <39.930992, 37.124027, 25.218426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025524, 37.475693, 25.383940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626652, -0.187550, 0.756394,
		0.742601, -0.438057, 0.506607,
		0.236330, 0.879165, 0.413785,
		40.096424, 37.739441, 25.508076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875896, 37.061703, 25.925070>,  <39.930992, 37.124027, 25.218426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875896, 37.061703, 25.925070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871815, 37.461391, 25.940338>,  <39.869366, 37.701202, 25.949499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871815, 37.461391, 25.940338>,  <39.875896, 37.061703, 25.925070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871815, 37.461391, 25.940338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611175, -0.036444, 0.790656,
		0.791430, -0.015264, 0.611069,
		-0.010201, 0.999219, 0.038172,
		39.868755, 37.761158, 25.951790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762398, 37.179527, 26.602610>,  <39.875896, 37.061703, 25.925070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762398, 37.179527, 26.602610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680340, 37.537285, 26.443621>,  <39.631104, 37.751938, 26.348228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680340, 37.537285, 26.443621>,  <39.762398, 37.179527, 26.602610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680340, 37.537285, 26.443621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751725, 0.116076, 0.649180,
		0.626757, 0.431965, 0.648523,
		-0.205145, 0.894390, -0.397471,
		39.618797, 37.805603, 26.324379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797321, 37.698780, 27.138849>,  <39.762398, 37.179527, 26.602610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797321, 37.698780, 27.138849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569294, 37.867828, 26.857023>,  <39.432476, 37.969257, 26.687927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569294, 37.867828, 26.857023>,  <39.797321, 37.698780, 27.138849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569294, 37.867828, 26.857023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659401, 0.276215, 0.699211,
		0.490111, 0.863191, 0.121213,
		-0.570071, 0.422619, -0.704565,
		39.398273, 37.994614, 26.645655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456448, 38.157951, 27.484552>,  <39.797321, 37.698780, 27.138849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456448, 38.157951, 27.484552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225414, 38.151730, 27.158079>,  <39.086792, 38.147995, 26.962196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225414, 38.151730, 27.158079>,  <39.456448, 38.157951, 27.484552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225414, 38.151730, 27.158079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809018, 0.144428, 0.569764,
		0.109015, 0.989393, -0.096006,
		-0.577586, -0.015558, -0.816181,
		39.052139, 38.147060, 26.913225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148399, 38.797592, 27.392193>,  <39.456448, 38.157951, 27.484552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148399, 38.797592, 27.392193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923344, 38.497555, 27.253174>,  <38.788311, 38.317532, 27.169762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923344, 38.497555, 27.253174>,  <39.148399, 38.797592, 27.392193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923344, 38.497555, 27.253174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729195, 0.252222, 0.636128,
		-0.389498, 0.611344, -0.688876,
		-0.562643, -0.750095, -0.347549,
		38.754551, 38.272526, 27.148909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408798, 39.074184, 27.471809>,  <39.148399, 38.797592, 27.392193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408798, 39.074184, 27.471809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378017, 38.684570, 27.386646>,  <38.359550, 38.450802, 27.335548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378017, 38.684570, 27.386646>,  <38.408798, 39.074184, 27.471809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378017, 38.684570, 27.386646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870668, -0.038400, 0.490370,
		-0.485814, 0.223106, -0.845108,
		-0.076953, -0.974038, -0.212907,
		38.354931, 38.392361, 27.322775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764294, 39.050190, 27.134634>,  <38.408798, 39.074184, 27.471809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764294, 39.050190, 27.134634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868252, 38.703342, 27.304604>,  <37.930626, 38.495235, 27.406586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868252, 38.703342, 27.304604>,  <37.764294, 39.050190, 27.134634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868252, 38.703342, 27.304604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898510, -0.055956, 0.435373,
		-0.353743, -0.494950, -0.793657,
		0.259898, -0.867118, 0.424924,
		37.946220, 38.443207, 27.432081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189144, 38.668892, 27.187080>,  <37.764294, 39.050190, 27.134634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189144, 38.668892, 27.187080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405334, 38.461319, 27.451986>,  <37.535049, 38.336777, 27.610929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405334, 38.461319, 27.451986>,  <37.189144, 38.668892, 27.187080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405334, 38.461319, 27.451986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837710, -0.258677, 0.480966,
		-0.078274, -0.814738, -0.574521,
		0.540477, -0.518929, 0.662267,
		37.567478, 38.305641, 27.650665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655392, 38.051643, 27.420158>,  <37.189144, 38.668892, 27.187080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655392, 38.051643, 27.420158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958740, 38.054283, 27.680874>,  <37.140751, 38.055866, 27.837303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958740, 38.054283, 27.680874>,  <36.655392, 38.051643, 27.420158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958740, 38.054283, 27.680874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644828, -0.138521, 0.751671,
		0.095247, -0.990338, -0.100795,
		0.758370, 0.006599, 0.651791,
		37.186253, 38.056263, 27.876411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484310, 37.399349, 27.705341>,  <36.655392, 38.051643, 27.420158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484310, 37.399349, 27.705341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713913, 37.586708, 27.974005>,  <36.851673, 37.699123, 28.135202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713913, 37.586708, 27.974005>,  <36.484310, 37.399349, 27.705341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713913, 37.586708, 27.974005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575005, -0.353427, 0.737875,
		0.583000, -0.809749, 0.066462,
		0.574004, 0.468397, 0.671658,
		36.886116, 37.727226, 28.175503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396973, 36.908051, 28.241222>,  <36.484310, 37.399349, 27.705341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396973, 36.908051, 28.241222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542995, 37.243698, 28.402519>,  <36.630611, 37.445087, 28.499298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542995, 37.243698, 28.402519>,  <36.396973, 36.908051, 28.241222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542995, 37.243698, 28.402519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376205, -0.263233, 0.888357,
		0.851587, -0.476005, 0.219586,
		0.365061, 0.839123, 0.403241,
		36.652515, 37.495434, 28.523491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769722, 36.713860, 28.890093>,  <36.396973, 36.908051, 28.241222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769722, 36.713860, 28.890093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653629, 37.096607, 28.895262>,  <36.583973, 37.326256, 28.898363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653629, 37.096607, 28.895262>,  <36.769722, 36.713860, 28.890093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653629, 37.096607, 28.895262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422953, -0.140378, 0.895212,
		0.858415, 0.254353, 0.445453,
		-0.290231, 0.956869, 0.012923,
		36.566559, 37.383667, 28.899139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830654, 36.808949, 29.545103>,  <36.769722, 36.713860, 28.890093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830654, 36.808949, 29.545103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597755, 37.111938, 29.426970>,  <36.458015, 37.293732, 29.356089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597755, 37.111938, 29.426970>,  <36.830654, 36.808949, 29.545103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597755, 37.111938, 29.426970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510707, -0.058117, 0.857788,
		0.632588, 0.650274, 0.420685,
		-0.582247, 0.757473, -0.295336,
		36.423080, 37.339180, 29.338369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857883, 37.218025, 30.073587>,  <36.830654, 36.808949, 29.545103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857883, 37.218025, 30.073587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526295, 37.327747, 29.878626>,  <36.327343, 37.393581, 29.761648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526295, 37.327747, 29.878626>,  <36.857883, 37.218025, 30.073587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526295, 37.327747, 29.878626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499350, 0.029509, 0.865897,
		0.251900, 0.961191, 0.112510,
		-0.828972, 0.274302, -0.487404,
		36.277603, 37.410038, 29.732405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602531, 37.662407, 30.538374>,  <36.857883, 37.218025, 30.073587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602531, 37.662407, 30.538374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289364, 37.579773, 30.303644>,  <36.101463, 37.530193, 30.162806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289364, 37.579773, 30.303644>,  <36.602531, 37.662407, 30.538374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289364, 37.579773, 30.303644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620530, 0.191776, 0.760371,
		-0.044544, 0.959450, -0.278338,
		-0.782917, -0.206587, -0.586825,
		36.054489, 37.517796, 30.127596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217201, 38.182384, 30.666580>,  <36.602531, 37.662407, 30.538374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217201, 38.182384, 30.666580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003429, 37.875027, 30.525749>,  <35.875164, 37.690613, 30.441250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003429, 37.875027, 30.525749>,  <36.217201, 38.182384, 30.666580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003429, 37.875027, 30.525749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658291, 0.117140, 0.743594,
		-0.530128, 0.629169, -0.568428,
		-0.534432, -0.768391, -0.352077,
		35.843102, 37.644508, 30.420126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466743, 38.404968, 30.739101>,  <36.217201, 38.182384, 30.666580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466743, 38.404968, 30.739101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466488, 38.009323, 30.680243>,  <35.466335, 37.771935, 30.644926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466488, 38.009323, 30.680243>,  <35.466743, 38.404968, 30.739101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466488, 38.009323, 30.680243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704487, -0.103991, 0.702057,
		-0.709716, 0.104111, -0.696752,
		-0.000636, -0.989114, -0.147149,
		35.466297, 37.712589, 30.636099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830647, 38.167767, 30.847931>,  <35.466743, 38.404968, 30.739101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830647, 38.167767, 30.847931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040745, 37.833122, 30.910156>,  <35.166805, 37.632336, 30.947491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040745, 37.833122, 30.910156>,  <34.830647, 38.167767, 30.847931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040745, 37.833122, 30.910156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556035, -0.199045, 0.806974,
		-0.644157, -0.510360, -0.569732,
		0.525249, -0.836609, 0.155562,
		35.198318, 37.582138, 30.956825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323631, 37.641033, 31.024267>,  <34.830647, 38.167767, 30.847931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323631, 37.641033, 31.024267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676060, 37.487534, 31.134869>,  <34.887516, 37.395432, 31.201229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676060, 37.487534, 31.134869>,  <34.323631, 37.641033, 31.024267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676060, 37.487534, 31.134869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409492, -0.326302, 0.851964,
		-0.236718, -0.863865, -0.444637,
		0.881069, -0.383751, 0.276504,
		34.940380, 37.372410, 31.217819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108620, 37.047821, 31.278336>,  <34.323631, 37.641033, 31.024267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108620, 37.047821, 31.278336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464523, 37.116947, 31.447313>,  <34.678066, 37.158424, 31.548700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464523, 37.116947, 31.447313>,  <34.108620, 37.047821, 31.278336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464523, 37.116947, 31.447313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268214, -0.550912, 0.790289,
		0.369303, -0.816474, -0.443829,
		0.889762, 0.172816, 0.422443,
		34.731453, 37.168793, 31.574047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360298, 36.456406, 31.507364>,  <34.108620, 37.047821, 31.278336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360298, 36.456406, 31.507364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599674, 36.691898, 31.724716>,  <34.743301, 36.833195, 31.855127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599674, 36.691898, 31.724716>,  <34.360298, 36.456406, 31.507364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599674, 36.691898, 31.724716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150455, -0.583582, 0.797995,
		0.786911, -0.559308, -0.260663,
		0.598443, 0.588733, 0.543378,
		34.779205, 36.868519, 31.887730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827969, 36.037025, 31.595896>,  <34.360298, 36.456406, 31.507364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827969, 36.037025, 31.595896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822166, 36.306030, 31.891874>,  <34.818687, 36.467434, 32.069462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822166, 36.306030, 31.891874>,  <34.827969, 36.037025, 31.595896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822166, 36.306030, 31.891874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091321, -0.736040, 0.670750,
		0.995716, 0.077299, -0.050741,
		-0.014501, 0.672510, 0.739946,
		34.817818, 36.507782, 32.113857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489906, 36.030357, 31.945116>,  <34.827969, 36.037025, 31.595896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489906, 36.030357, 31.945116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215786, 36.165668, 32.203087>,  <35.051311, 36.246853, 32.357868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215786, 36.165668, 32.203087>,  <35.489906, 36.030357, 31.945116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215786, 36.165668, 32.203087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188868, -0.772720, 0.605997,
		0.703340, 0.537098, 0.465659,
		-0.685304, 0.338274, 0.644926,
		35.010197, 36.267151, 32.396564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618114, 36.316467, 32.703449>,  <35.489906, 36.030357, 31.945116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618114, 36.316467, 32.703449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244492, 36.177082, 32.734722>,  <35.020317, 36.093452, 32.753487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244492, 36.177082, 32.734722>,  <35.618114, 36.316467, 32.703449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244492, 36.177082, 32.734722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247996, -0.475372, 0.844108,
		-0.256972, 0.807835, 0.530442,
		-0.934057, -0.348460, 0.078183,
		34.964275, 36.072544, 32.758179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876698, 37.056828, 32.784798>,  <35.618114, 36.316467, 32.703449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876698, 37.056828, 32.784798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134285, 36.946095, 33.070084>,  <36.288837, 36.879654, 33.241253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134285, 36.946095, 33.070084>,  <35.876698, 37.056828, 32.784798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134285, 36.946095, 33.070084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676804, 0.640800, -0.362369,
		-0.356712, 0.716059, 0.600013,
		0.643967, -0.276830, 0.713213,
		36.327477, 36.863045, 33.284046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154892, 37.656029, 33.034218>,  <35.876698, 37.056828, 32.784798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154892, 37.656029, 33.034218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431736, 37.400700, 33.168991>,  <36.597843, 37.247501, 33.249855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431736, 37.400700, 33.168991>,  <36.154892, 37.656029, 33.034218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431736, 37.400700, 33.168991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720023, 0.643247, -0.260384,
		-0.050525, 0.422817, 0.904806,
		0.692109, -0.638325, 0.336937,
		36.639370, 37.209202, 33.270073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741066, 38.040813, 33.326241>,  <36.154892, 37.656029, 33.034218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741066, 38.040813, 33.326241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928680, 37.699772, 33.234093>,  <37.041248, 37.495148, 33.178806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928680, 37.699772, 33.234093>,  <36.741066, 38.040813, 33.326241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928680, 37.699772, 33.234093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775015, 0.522422, -0.355565,
		0.423505, -0.011764, 0.905817,
		0.469036, -0.852606, -0.230366,
		37.069389, 37.443989, 33.164982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504642, 38.152035, 33.318878>,  <36.741066, 38.040813, 33.326241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504642, 38.152035, 33.318878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470150, 37.817352, 33.102547>,  <37.449455, 37.616543, 32.972748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470150, 37.817352, 33.102547>,  <37.504642, 38.152035, 33.318878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470150, 37.817352, 33.102547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873646, 0.197416, -0.444713,
		0.478860, -0.510838, 0.713959,
		-0.086229, -0.836703, -0.540826,
		37.444283, 37.566341, 32.940300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115891, 37.885056, 33.465969>,  <37.504642, 38.152035, 33.318878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115891, 37.885056, 33.465969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959190, 37.719593, 33.137234>,  <37.865170, 37.620316, 32.939991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959190, 37.719593, 33.137234>,  <38.115891, 37.885056, 33.465969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959190, 37.719593, 33.137234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792476, 0.302116, -0.529818,
		0.467454, -0.858844, 0.209460,
		-0.391750, -0.413658, -0.821839,
		37.841667, 37.595497, 32.890682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680752, 37.594193, 33.205498>,  <38.115891, 37.885056, 33.465969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680752, 37.594193, 33.205498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410248, 37.596622, 32.910843>,  <38.247948, 37.598080, 32.734051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410248, 37.596622, 32.910843>,  <38.680752, 37.594193, 33.205498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410248, 37.596622, 32.910843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729242, 0.147125, -0.668252,
		0.104319, -0.989099, -0.103924,
		-0.676257, 0.006074, -0.736640,
		38.207371, 37.598446, 32.689850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912735, 37.082382, 32.777733>,  <38.680752, 37.594193, 33.205498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912735, 37.082382, 32.777733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681343, 37.335400, 32.571720>,  <38.542507, 37.487209, 32.448112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681343, 37.335400, 32.571720>,  <38.912735, 37.082382, 32.777733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681343, 37.335400, 32.571720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701391, 0.063387, -0.709953,
		-0.416427, -0.771930, -0.480326,
		-0.578480, 0.632540, -0.515028,
		38.507797, 37.525162, 32.417213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861996, 36.850494, 32.075809>,  <38.912735, 37.082382, 32.777733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861996, 36.850494, 32.075809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771439, 37.238972, 32.046074>,  <38.717106, 37.472057, 32.028233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771439, 37.238972, 32.046074>,  <38.861996, 36.850494, 32.075809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771439, 37.238972, 32.046074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555968, 0.066177, -0.828565,
		-0.799779, -0.228909, -0.554936,
		-0.226390, 0.971196, -0.074339,
		38.703522, 37.530331, 32.023773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766769, 36.983070, 31.359068>,  <38.861996, 36.850494, 32.075809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766769, 36.983070, 31.359068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825329, 37.353851, 31.497240>,  <38.860466, 37.576321, 31.580143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825329, 37.353851, 31.497240>,  <38.766769, 36.983070, 31.359068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825329, 37.353851, 31.497240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398734, 0.264273, -0.878164,
		-0.905306, 0.266299, -0.330918,
		0.146401, 0.926954, 0.345430,
		38.869247, 37.631939, 31.600868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722950, 37.461609, 30.766586>,  <38.766769, 36.983070, 31.359068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722950, 37.461609, 30.766586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941540, 37.649673, 31.043806>,  <39.072693, 37.762512, 31.210138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941540, 37.649673, 31.043806>,  <38.722950, 37.461609, 30.766586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941540, 37.649673, 31.043806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533006, 0.443052, -0.720839,
		-0.645968, 0.763317, -0.008484,
		0.546470, 0.470161, 0.693051,
		39.105480, 37.790722, 31.251720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804150, 38.140854, 30.520775>,  <38.722950, 37.461609, 30.766586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804150, 38.140854, 30.520775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100140, 38.120861, 30.789087>,  <39.277733, 38.108868, 30.950075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100140, 38.120861, 30.789087>,  <38.804150, 38.140854, 30.520775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100140, 38.120861, 30.789087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625168, 0.419090, -0.658429,
		-0.248210, 0.906568, 0.341359,
		0.739971, -0.049978, 0.670779,
		39.322132, 38.105869, 30.990320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183155, 38.808762, 30.541800>,  <38.804150, 38.140854, 30.520775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183155, 38.808762, 30.541800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441315, 38.528702, 30.663940>,  <39.596210, 38.360664, 30.737225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441315, 38.528702, 30.663940>,  <39.183155, 38.808762, 30.541800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441315, 38.528702, 30.663940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716397, 0.416149, -0.559996,
		0.265011, 0.580176, 0.770172,
		0.645403, -0.700154, 0.305353,
		39.634937, 38.318657, 30.755547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783901, 39.126984, 30.563732>,  <39.183155, 38.808762, 30.541800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783901, 39.126984, 30.563732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870258, 38.738449, 30.523933>,  <39.922073, 38.505329, 30.500053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870258, 38.738449, 30.523933>,  <39.783901, 39.126984, 30.563732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870258, 38.738449, 30.523933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665938, 0.221001, -0.712520,
		0.714084, 0.087571, 0.694561,
		0.215895, -0.971334, -0.099496,
		39.935028, 38.447048, 30.494085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583035, 39.144688, 30.458300>,  <39.783901, 39.126984, 30.563732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583035, 39.144688, 30.458300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425621, 38.801453, 30.326353>,  <40.331173, 38.595512, 30.247185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425621, 38.801453, 30.326353>,  <40.583035, 39.144688, 30.458300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425621, 38.801453, 30.326353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629238, 0.010169, -0.777146,
		0.670215, -0.513400, 0.535940,
		-0.393537, -0.858089, -0.329866,
		40.307560, 38.544025, 30.227392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189579, 38.775070, 30.264870>,  <40.583035, 39.144688, 30.458300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189579, 38.775070, 30.264870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904976, 38.586681, 30.056274>,  <40.734215, 38.473648, 29.931118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904976, 38.586681, 30.056274>,  <41.189579, 38.775070, 30.264870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904976, 38.586681, 30.056274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659685, -0.192083, -0.726581,
		0.242030, -0.860982, 0.447360,
		-0.711504, -0.470971, -0.521487,
		40.691525, 38.445389, 29.899828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508415, 38.251392, 29.989532>,  <41.189579, 38.775070, 30.264870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508415, 38.251392, 29.989532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173717, 38.291641, 29.774223>,  <40.972900, 38.315792, 29.645039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173717, 38.291641, 29.774223>,  <41.508415, 38.251392, 29.989532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173717, 38.291641, 29.774223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522168, -0.149453, -0.839645,
		-0.164944, -0.983634, 0.072505,
		-0.836740, 0.100635, -0.538274,
		40.922695, 38.321827, 29.612741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606907, 37.773911, 29.479040>,  <41.508415, 38.251392, 29.989532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606907, 37.773911, 29.479040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338017, 38.031792, 29.333448>,  <41.176682, 38.186520, 29.246094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338017, 38.031792, 29.333448>,  <41.606907, 37.773911, 29.479040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338017, 38.031792, 29.333448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327000, -0.182530, -0.927229,
		-0.664220, -0.742325, -0.088116,
		-0.672222, 0.644698, -0.363980,
		41.136349, 38.225201, 29.224255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440441, 37.468475, 28.868410>,  <41.606907, 37.773911, 29.479040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440441, 37.468475, 28.868410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334801, 37.852432, 28.830778>,  <41.271416, 38.082806, 28.808199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334801, 37.852432, 28.830778>,  <41.440441, 37.468475, 28.868410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334801, 37.852432, 28.830778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379490, 0.013739, -0.925094,
		-0.886702, -0.280017, -0.367899,
		-0.264097, 0.959897, -0.094081,
		41.255573, 38.140400, 28.802553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096649, 37.450138, 28.200201>,  <41.440441, 37.468475, 28.868410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096649, 37.450138, 28.200201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182098, 37.837620, 28.250759>,  <41.233368, 38.070110, 28.281094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182098, 37.837620, 28.250759>,  <41.096649, 37.450138, 28.200201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182098, 37.837620, 28.250759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374992, 0.038160, -0.926243,
		-0.902080, 0.245261, -0.355105,
		0.213621, 0.968706, 0.126394,
		41.246185, 38.128231, 28.288677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822971, 37.758812, 27.632902>,  <41.096649, 37.450138, 28.200201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822971, 37.758812, 27.632902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103939, 38.004745, 27.776344>,  <41.272518, 38.152306, 27.862410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103939, 38.004745, 27.776344>,  <40.822971, 37.758812, 27.632902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103939, 38.004745, 27.776344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452125, 0.003701, -0.891947,
		-0.549724, 0.788650, -0.275381,
		0.702415, 0.614831, 0.358603,
		41.314663, 38.189194, 27.883924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868572, 38.292549, 27.085629>,  <40.822971, 37.758812, 27.632902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868572, 38.292549, 27.085629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187302, 38.276630, 27.326790>,  <41.378540, 38.267078, 27.471487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187302, 38.276630, 27.326790>,  <40.868572, 38.292549, 27.085629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187302, 38.276630, 27.326790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603483, 0.101549, -0.790883,
		-0.029748, 0.994034, 0.104935,
		0.796821, -0.039799, 0.602903,
		41.426350, 38.264690, 27.507662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252754, 38.771255, 26.744265>,  <40.868572, 38.292549, 27.085629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252754, 38.771255, 26.744265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500652, 38.558823, 26.975391>,  <41.649391, 38.431362, 27.114067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500652, 38.558823, 26.975391>,  <41.252754, 38.771255, 26.744265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500652, 38.558823, 26.975391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542397, -0.242270, -0.804432,
		0.567206, 0.811947, 0.137912,
		0.619744, -0.531081, 0.577815,
		41.686577, 38.399498, 27.148735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943264, 39.067326, 26.696827>,  <41.252754, 38.771255, 26.744265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943264, 39.067326, 26.696827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006245, 38.694752, 26.828060>,  <42.044033, 38.471207, 26.906801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006245, 38.694752, 26.828060>,  <41.943264, 39.067326, 26.696827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006245, 38.694752, 26.828060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808470, -0.069201, -0.584455,
		0.567085, 0.357270, 0.742141,
		0.157452, -0.931434, 0.328085,
		42.053482, 38.415321, 26.926485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570053, 38.945210, 26.766949>,  <41.943264, 39.067326, 26.696827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570053, 38.945210, 26.766949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433090, 38.570862, 26.733694>,  <42.350910, 38.346252, 26.713741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433090, 38.570862, 26.733694>,  <42.570053, 38.945210, 26.766949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433090, 38.570862, 26.733694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826362, -0.257874, -0.500626,
		0.447079, -0.240121, 0.861663,
		-0.342411, -0.935865, -0.083136,
		42.330368, 38.290104, 26.708754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148483, 38.609783, 26.827000>,  <42.570053, 38.945210, 26.766949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148483, 38.609783, 26.827000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898155, 38.343388, 26.664614>,  <42.747959, 38.183552, 26.567183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898155, 38.343388, 26.664614>,  <43.148483, 38.609783, 26.827000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898155, 38.343388, 26.664614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775008, -0.472380, -0.419785,
		0.087802, -0.577337, 0.811771,
		-0.625822, -0.665987, -0.405965,
		42.710407, 38.143593, 26.542824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360039, 37.961056, 27.079210>,  <43.148483, 38.609783, 26.827000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.360039, 37.961056, 27.079210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169430, 37.875996, 26.737986>,  <43.055065, 37.824959, 26.533251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169430, 37.875996, 26.737986>,  <43.360039, 37.961056, 27.079210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169430, 37.875996, 26.737986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778472, -0.552957, -0.297017,
		-0.408545, -0.805618, 0.429034,
		-0.476520, -0.212646, -0.853059,
		43.026474, 37.812202, 26.482067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749092, 37.448059, 26.807777>,  <43.360039, 37.961056, 27.079210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749092, 37.448059, 26.807777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498569, 37.520103, 26.504383>,  <43.348255, 37.563332, 26.322346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498569, 37.520103, 26.504383>,  <43.749092, 37.448059, 26.807777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.498569, 37.520103, 26.504383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670525, -0.371847, -0.641970,
		-0.397673, -0.910652, 0.112113,
		-0.626300, 0.180119, -0.758488,
		43.310680, 37.574139, 26.276836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591843, 36.808861, 26.460554>,  <43.749092, 37.448059, 26.807777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591843, 36.808861, 26.460554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518219, 37.079506, 26.175367>,  <43.474045, 37.241894, 26.004255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518219, 37.079506, 26.175367>,  <43.591843, 36.808861, 26.460554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518219, 37.079506, 26.175367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643170, -0.465607, -0.607899,
		-0.743274, -0.570447, -0.349477,
		-0.184055, 0.676609, -0.712968,
		43.463001, 37.282490, 25.961477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637321, 36.368744, 25.960781>,  <43.591843, 36.808861, 26.460554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637321, 36.368744, 25.960781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678616, 36.720921, 25.775665>,  <43.703392, 36.932224, 25.664597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678616, 36.720921, 25.775665>,  <43.637321, 36.368744, 25.960781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678616, 36.720921, 25.775665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622193, -0.420165, -0.660558,
		-0.776028, -0.219754, -0.591176,
		0.103231, 0.880437, -0.462789,
		43.709583, 36.985050, 25.636829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.574245, 36.296089, 25.246380>,  <43.637321, 36.368744, 25.960781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.574245, 36.296089, 25.246380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778099, 36.639366, 25.270954>,  <43.900414, 36.845333, 25.285700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778099, 36.639366, 25.270954>,  <43.574245, 36.296089, 25.246380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778099, 36.639366, 25.270954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545555, -0.267110, -0.794369,
		-0.665311, 0.438357, -0.604321,
		0.509638, 0.858193, 0.061437,
		43.930992, 36.896824, 25.289385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551590, 36.486874, 24.484604>,  <43.574245, 36.296089, 25.246380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551590, 36.486874, 24.484604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834389, 36.710571, 24.657763>,  <44.004070, 36.844788, 24.761658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834389, 36.710571, 24.657763>,  <43.551590, 36.486874, 24.484604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834389, 36.710571, 24.657763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633382, -0.228403, -0.739364,
		-0.314607, 0.796921, -0.515694,
		0.707000, 0.559240, 0.432898,
		44.046490, 36.878342, 24.787632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875252, 36.793430, 23.922890>,  <43.551590, 36.486874, 24.484604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875252, 36.793430, 23.922890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142372, 36.833549, 24.217909>,  <44.302647, 36.857620, 24.394920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142372, 36.833549, 24.217909>,  <43.875252, 36.793430, 23.922890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142372, 36.833549, 24.217909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735116, -0.244351, -0.632374,
		0.116794, 0.964486, -0.236910,
		0.667805, 0.100299, 0.737548,
		44.342712, 36.863640, 24.439173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446743, 37.237789, 23.590319>,  <43.875252, 36.793430, 23.922890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446743, 37.237789, 23.590319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587933, 37.026768, 23.899406>,  <44.672646, 36.900154, 24.084860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587933, 37.026768, 23.899406>,  <44.446743, 37.237789, 23.590319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.587933, 37.026768, 23.899406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699154, -0.400111, -0.592533,
		0.621768, 0.749397, 0.227615,
		0.352971, -0.527556, 0.772720,
		44.693825, 36.868500, 24.131222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082027, 37.327576, 23.489788>,  <44.446743, 37.237789, 23.590319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082027, 37.327576, 23.489788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082661, 37.002495, 23.722857>,  <45.083042, 36.807446, 23.862698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082661, 37.002495, 23.722857>,  <45.082027, 37.327576, 23.489788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082661, 37.002495, 23.722857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552171, -0.485081, -0.678089,
		0.833730, 0.322808, 0.447984,
		0.001584, -0.812706, 0.582671,
		45.083138, 36.758682, 23.897657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.818512, 37.081993, 23.587284>,  <45.082027, 37.327576, 23.489788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.818512, 37.081993, 23.587284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595570, 36.759491, 23.666586>,  <45.461803, 36.565990, 23.714167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595570, 36.759491, 23.666586>,  <45.818512, 37.081993, 23.587284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.595570, 36.759491, 23.666586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634766, -0.567700, -0.524203,
		0.535191, -0.166322, 0.828195,
		-0.557353, -0.806259, 0.198253,
		45.428364, 36.517612, 23.726061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.265179, 36.586391, 23.743898>,  <45.818512, 37.081993, 23.587284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.265179, 36.586391, 23.743898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934814, 36.390598, 23.631979>,  <45.736595, 36.273125, 23.564827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934814, 36.390598, 23.631979>,  <46.265179, 36.586391, 23.743898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.934814, 36.390598, 23.631979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550016, -0.590400, -0.590686,
		0.123936, -0.641745, 0.756837,
		-0.825907, -0.489480, -0.279798,
		45.687042, 36.243755, 23.548040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.404522, 35.974850, 23.842607>,  <46.265179, 36.586391, 23.743898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.404522, 35.974850, 23.842607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104397, 35.919353, 23.584064>,  <45.924320, 35.886055, 23.428940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104397, 35.919353, 23.584064>,  <46.404522, 35.974850, 23.842607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.104397, 35.919353, 23.584064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615624, -0.502936, -0.606682,
		-0.240901, -0.853115, 0.462776,
		-0.750316, -0.138746, -0.646356,
		45.879303, 35.877731, 23.390158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.280327, 36.291515, 24.522678>,  <46.404522, 35.974850, 23.842607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.280327, 36.291515, 24.522678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.536575, 35.986786, 24.484253>,  <46.690327, 35.803947, 24.461199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.536575, 35.986786, 24.484253>,  <46.280327, 36.291515, 24.522678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.536575, 35.986786, 24.484253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227437, -0.307752, 0.923884,
		-0.733397, -0.570015, -0.370420,
		0.640625, -0.761821, -0.096062,
		46.728764, 35.758240, 24.455435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.849407, 35.723583, 24.576426>,  <46.280327, 36.291515, 24.522678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.849407, 35.723583, 24.576426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221951, 35.623905, 24.682617>,  <46.445477, 35.564098, 24.746332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221951, 35.623905, 24.682617>,  <45.849407, 35.723583, 24.576426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221951, 35.623905, 24.682617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340139, -0.335258, 0.878583,
		-0.129938, -0.908572, -0.397006,
		0.931355, -0.249199, 0.265478,
		46.501358, 35.549145, 24.762260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738037, 35.183231, 24.870420>,  <45.849407, 35.723583, 24.576426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738037, 35.183231, 24.870420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.106033, 35.277081, 24.996004>,  <46.326832, 35.333389, 25.071354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.106033, 35.277081, 24.996004>,  <45.738037, 35.183231, 24.870420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.106033, 35.277081, 24.996004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191768, -0.429144, 0.882644,
		0.341825, -0.872230, -0.349814,
		0.919990, 0.234627, 0.313958,
		46.382030, 35.347469, 25.090191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.923615, 34.590515, 25.247625>,  <45.738037, 35.183231, 24.870420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.923615, 34.590515, 25.247625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174057, 34.876705, 25.371616>,  <46.324322, 35.048420, 25.446011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174057, 34.876705, 25.371616>,  <45.923615, 34.590515, 25.247625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.174057, 34.876705, 25.371616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165486, -0.266555, 0.949507,
		0.761976, -0.645787, -0.048489,
		0.626104, 0.715477, 0.309977,
		46.361889, 35.091347, 25.464609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426922, 34.284313, 25.634150>,  <45.923615, 34.590515, 25.247625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426922, 34.284313, 25.634150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.394974, 34.663971, 25.755966>,  <46.375805, 34.891766, 25.829056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.394974, 34.663971, 25.755966>,  <46.426922, 34.284313, 25.634150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.394974, 34.663971, 25.755966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363841, -0.312197, 0.877583,
		0.928031, -0.040715, 0.370272,
		-0.079867, 0.949144, 0.304543,
		46.371014, 34.948715, 25.847328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434875, 34.298801, 26.396193>,  <46.426922, 34.284313, 25.634150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434875, 34.298801, 26.396193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.319485, 34.678345, 26.344894>,  <46.250248, 34.906071, 26.314116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.319485, 34.678345, 26.344894>,  <46.434875, 34.298801, 26.396193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.319485, 34.678345, 26.344894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522252, -0.043671, 0.851673,
		0.802516, 0.312667, 0.508141,
		-0.288481, 0.948858, -0.128244,
		46.232941, 34.963001, 26.306421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.612492, 34.670963, 27.089497>,  <46.434875, 34.298801, 26.396193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.612492, 34.670963, 27.089497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.319359, 34.867996, 26.901741>,  <46.143478, 34.986217, 26.789087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.319359, 34.867996, 26.901741>,  <46.612492, 34.670963, 27.089497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.319359, 34.867996, 26.901741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531271, 0.016764, 0.847036,
		0.425103, 0.870106, 0.249409,
		-0.732830, 0.492581, -0.469388,
		46.099510, 35.015770, 26.760925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346012, 35.124802, 27.605446>,  <46.612492, 34.670963, 27.089497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346012, 35.124802, 27.605446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060074, 35.118401, 27.325808>,  <45.888512, 35.114559, 27.158024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060074, 35.118401, 27.325808>,  <46.346012, 35.124802, 27.605446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060074, 35.118401, 27.325808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653548, 0.370889, 0.659785,
		0.248732, 0.928540, -0.275585,
		-0.714848, -0.015999, -0.699097,
		45.845619, 35.113602, 27.116079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.013752, 35.750217, 27.703053>,  <46.346012, 35.124802, 27.605446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.013752, 35.750217, 27.703053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.735771, 35.565857, 27.482286>,  <45.568981, 35.455242, 27.349827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.735771, 35.565857, 27.482286>,  <46.013752, 35.750217, 27.703053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.735771, 35.565857, 27.482286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712167, 0.335226, 0.616799,
		-0.099265, 0.821703, -0.561204,
		-0.694957, -0.460898, -0.551914,
		45.527283, 35.427589, 27.316711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.365662, 36.272408, 27.543106>,  <46.013752, 35.750217, 27.703053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.365662, 36.272408, 27.543106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.254898, 35.890491, 27.499830>,  <45.188442, 35.661343, 27.473866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.254898, 35.890491, 27.499830>,  <45.365662, 36.272408, 27.543106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254898, 35.890491, 27.499830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792645, 0.163322, 0.587401,
		-0.543174, 0.248408, -0.802032,
		-0.276904, -0.954787, -0.108187,
		45.171825, 35.604053, 27.467375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.650906, 36.346340, 27.408285>,  <45.365662, 36.272408, 27.543106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.650906, 36.346340, 27.408285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730251, 35.972958, 27.527826>,  <44.777859, 35.748928, 27.599550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730251, 35.972958, 27.527826>,  <44.650906, 36.346340, 27.408285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730251, 35.972958, 27.527826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678210, 0.089401, 0.729410,
		-0.707588, -0.347377, -0.615344,
		0.198368, -0.933454, 0.298853,
		44.789761, 35.692921, 27.617483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.979122, 35.998245, 27.432026>,  <44.650906, 36.346340, 27.408285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.979122, 35.998245, 27.432026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241871, 35.826561, 27.679995>,  <44.399521, 35.723549, 27.828775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241871, 35.826561, 27.679995>,  <43.979122, 35.998245, 27.432026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241871, 35.826561, 27.679995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620706, 0.158960, 0.767760,
		-0.428074, -0.889106, -0.161997,
		0.656869, -0.429210, 0.619920,
		44.438931, 35.697800, 27.865971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616356, 35.654930, 27.912748>,  <43.979122, 35.998245, 27.432026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616356, 35.654930, 27.912748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.970238, 35.778519, 28.052362>,  <44.182568, 35.852673, 28.136131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.970238, 35.778519, 28.052362>,  <43.616356, 35.654930, 27.912748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.970238, 35.778519, 28.052362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416667, 0.188458, 0.889310,
		0.208990, -0.932213, 0.295467,
		0.884710, 0.308968, 0.349037,
		44.235649, 35.871212, 28.157074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744625, 35.446472, 28.581186>,  <43.616356, 35.654930, 27.912748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744625, 35.446472, 28.581186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979725, 35.769852, 28.593536>,  <44.120785, 35.963879, 28.600946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979725, 35.769852, 28.593536>,  <43.744625, 35.446472, 28.581186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979725, 35.769852, 28.593536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289413, 0.174464, 0.941171,
		0.755506, -0.562108, 0.336518,
		0.587750, 0.808454, 0.030873,
		44.156052, 36.012386, 28.602798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012951, 35.459412, 29.240160>,  <43.744625, 35.446472, 28.581186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012951, 35.459412, 29.240160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038631, 35.840611, 29.121721>,  <44.054039, 36.069328, 29.050657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038631, 35.840611, 29.121721>,  <44.012951, 35.459412, 29.240160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038631, 35.840611, 29.121721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381754, 0.297593, 0.875044,
		0.922031, 0.056857, 0.382917,
		0.064201, 0.952998, -0.296096,
		44.057892, 36.126511, 29.032892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256672, 35.833366, 29.800508>,  <44.012951, 35.459412, 29.240160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256672, 35.833366, 29.800508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093884, 36.127094, 29.583197>,  <43.996212, 36.303329, 29.452808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093884, 36.127094, 29.583197>,  <44.256672, 35.833366, 29.800508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093884, 36.127094, 29.583197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475208, 0.337737, 0.812472,
		0.780098, 0.588823, 0.211505,
		-0.406970, 0.734317, -0.543281,
		43.971794, 36.347389, 29.420212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.254745, 36.377422, 30.284916>,  <44.256672, 35.833366, 29.800508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.254745, 36.377422, 30.284916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004654, 36.482624, 29.991001>,  <43.854599, 36.545746, 29.814651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004654, 36.482624, 29.991001>,  <44.254745, 36.377422, 30.284916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004654, 36.482624, 29.991001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564145, 0.498270, 0.658382,
		0.539281, 0.826169, -0.163162,
		-0.625234, 0.263006, -0.734786,
		43.817085, 36.561527, 29.770565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102501, 37.061359, 30.307861>,  <44.254745, 36.377422, 30.284916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102501, 37.061359, 30.307861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790070, 36.895382, 30.121212>,  <43.602612, 36.795795, 30.009222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790070, 36.895382, 30.121212>,  <44.102501, 37.061359, 30.307861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.790070, 36.895382, 30.121212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619215, 0.418297, 0.664530,
		-0.080556, 0.807990, -0.583664,
		-0.781078, -0.414945, -0.466623,
		43.555748, 36.770897, 29.981226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572544, 37.504044, 30.348635>,  <44.102501, 37.061359, 30.307861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572544, 37.504044, 30.348635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406719, 37.149582, 30.265812>,  <43.307224, 36.936905, 30.216118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406719, 37.149582, 30.265812>,  <43.572544, 37.504044, 30.348635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406719, 37.149582, 30.265812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748581, 0.202691, 0.631303,
		-0.517463, 0.416710, -0.747385,
		-0.414558, -0.886154, -0.207056,
		43.282352, 36.883736, 30.203695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866329, 37.678619, 30.341171>,  <43.572544, 37.504044, 30.348635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866329, 37.678619, 30.341171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880634, 37.280853, 30.380880>,  <42.889217, 37.042194, 30.404705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880634, 37.280853, 30.380880>,  <42.866329, 37.678619, 30.341171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880634, 37.280853, 30.380880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780332, 0.034277, 0.624425,
		-0.624342, -0.099795, -0.774750,
		0.035759, -0.994418, 0.099273,
		42.891361, 36.982529, 30.410662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219254, 37.492317, 30.334454>,  <42.866329, 37.678619, 30.341171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219254, 37.492317, 30.334454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415829, 37.200272, 30.524364>,  <42.533775, 37.025043, 30.638311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415829, 37.200272, 30.524364>,  <42.219254, 37.492317, 30.334454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415829, 37.200272, 30.524364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772985, -0.114522, 0.624003,
		-0.401223, -0.673656, -0.620651,
		0.491441, -0.730118, 0.474777,
		42.563263, 36.981236, 30.666798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752228, 36.863228, 30.393169>,  <42.219254, 37.492317, 30.334454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752228, 36.863228, 30.393169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031754, 36.828976, 30.677235>,  <42.199467, 36.808426, 30.847673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031754, 36.828976, 30.677235>,  <41.752228, 36.863228, 30.393169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031754, 36.828976, 30.677235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714206, -0.028448, 0.699357,
		-0.039712, -0.995917, -0.081066,
		0.698808, -0.085671, 0.710160,
		42.241398, 36.803288, 30.890284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419563, 36.410690, 30.930168>,  <41.752228, 36.863228, 30.393169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419563, 36.410690, 30.930168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717331, 36.592659, 31.125671>,  <41.895992, 36.701839, 31.242973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717331, 36.592659, 31.125671>,  <41.419563, 36.410690, 30.930168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717331, 36.592659, 31.125671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594916, 0.119524, 0.794852,
		0.303179, -0.882473, 0.359617,
		0.744418, 0.454924, 0.488760,
		41.940655, 36.729137, 31.272299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535439, 36.046886, 31.607903>,  <41.419563, 36.410690, 30.930168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535439, 36.046886, 31.607903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706211, 36.406651, 31.645409>,  <41.808674, 36.622509, 31.667912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706211, 36.406651, 31.645409>,  <41.535439, 36.046886, 31.607903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706211, 36.406651, 31.645409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651284, 0.233889, 0.721890,
		0.627345, -0.369262, 0.685626,
		0.426927, 0.899412, 0.093765,
		41.834290, 36.676476, 31.673538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630745, 36.003090, 32.300022>,  <41.535439, 36.046886, 31.607903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630745, 36.003090, 32.300022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651188, 36.388706, 32.195709>,  <41.663452, 36.620075, 32.133121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651188, 36.388706, 32.195709>,  <41.630745, 36.003090, 32.300022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651188, 36.388706, 32.195709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578527, 0.241425, 0.779115,
		0.814060, 0.111048, 0.570065,
		0.051109, 0.964045, -0.260779,
		41.666519, 36.677921, 32.117474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778667, 36.400959, 32.901192>,  <41.630745, 36.003090, 32.300022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778667, 36.400959, 32.901192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586639, 36.649345, 32.653339>,  <41.471424, 36.798378, 32.504627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586639, 36.649345, 32.653339>,  <41.778667, 36.400959, 32.901192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586639, 36.649345, 32.653339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612277, 0.268650, 0.743603,
		0.628213, 0.736364, 0.251232,
		-0.480068, 0.620964, -0.619627,
		41.442619, 36.835636, 32.467453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859161, 37.038345, 33.263638>,  <41.778667, 36.400959, 32.901192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859161, 37.038345, 33.263638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553886, 37.058468, 33.005951>,  <41.370724, 37.070541, 32.851337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553886, 37.058468, 33.005951>,  <41.859161, 37.038345, 33.263638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553886, 37.058468, 33.005951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583654, 0.374170, 0.720656,
		0.277301, 0.925995, -0.256199,
		-0.763185, 0.050307, -0.644219,
		41.324932, 37.073559, 32.812687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466396, 37.635063, 33.461918>,  <41.859161, 37.038345, 33.263638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466396, 37.635063, 33.461918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190887, 37.436462, 33.250607>,  <41.025581, 37.317303, 33.123821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190887, 37.436462, 33.250607>,  <41.466396, 37.635063, 33.461918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190887, 37.436462, 33.250607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630451, 0.050427, 0.774589,
		-0.357946, 0.866569, -0.347753,
		-0.688771, -0.496503, -0.528279,
		40.984257, 37.287510, 33.092121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936764, 37.957859, 33.536350>,  <41.466396, 37.635063, 33.461918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936764, 37.957859, 33.536350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781769, 37.611103, 33.410904>,  <40.688774, 37.403049, 33.335636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781769, 37.611103, 33.410904>,  <40.936764, 37.957859, 33.536350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781769, 37.611103, 33.410904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720445, 0.072506, 0.689712,
		-0.575166, 0.493196, -0.652642,
		-0.387483, -0.866891, -0.313618,
		40.665524, 37.351036, 33.316818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241890, 38.101357, 33.485088>,  <40.936764, 37.957859, 33.536350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241890, 38.101357, 33.485088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289684, 37.706158, 33.524258>,  <40.318359, 37.469040, 33.547760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289684, 37.706158, 33.524258>,  <40.241890, 38.101357, 33.485088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289684, 37.706158, 33.524258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721945, -0.018753, 0.691696,
		-0.681556, -0.153346, -0.715519,
		0.119487, -0.987995, 0.097926,
		40.325531, 37.409760, 33.553635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640343, 37.902756, 33.574394>,  <40.241890, 38.101357, 33.485088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640343, 37.902756, 33.574394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827961, 37.575817, 33.708221>,  <39.940533, 37.379654, 33.788517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827961, 37.575817, 33.708221>,  <39.640343, 37.902756, 33.574394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827961, 37.575817, 33.708221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590739, -0.008743, 0.806815,
		-0.656526, -0.576074, -0.486942,
		0.469043, -0.817351, 0.334569,
		39.968674, 37.330612, 33.808594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165966, 37.502724, 33.844917>,  <39.640343, 37.902756, 33.574394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165966, 37.502724, 33.844917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478268, 37.323147, 34.018757>,  <39.665649, 37.215401, 34.123062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478268, 37.323147, 34.018757>,  <39.165966, 37.502724, 33.844917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478268, 37.323147, 34.018757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517407, -0.074566, 0.852484,
		-0.350308, -0.890445, -0.290502,
		0.780752, -0.448941, 0.434602,
		39.712494, 37.188465, 34.149136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959461, 36.814541, 34.021656>,  <39.165966, 37.502724, 33.844917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959461, 36.814541, 34.021656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264149, 36.945835, 34.245102>,  <39.446960, 37.024612, 34.379169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264149, 36.945835, 34.245102>,  <38.959461, 36.814541, 34.021656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264149, 36.945835, 34.245102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552813, -0.120418, 0.824559,
		0.337918, -0.936888, 0.089730,
		0.761715, 0.328238, 0.558615,
		39.492664, 37.044308, 34.412685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873058, 36.406715, 34.603165>,  <38.959461, 36.814541, 34.021656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873058, 36.406715, 34.603165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109348, 36.690948, 34.756069>,  <39.251122, 36.861488, 34.847813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109348, 36.690948, 34.756069>,  <38.873058, 36.406715, 34.603165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109348, 36.690948, 34.756069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277449, -0.265982, 0.923188,
		0.757674, -0.651405, 0.040029,
		0.590722, 0.710581, 0.382259,
		39.286564, 36.904121, 34.870747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855438, 36.221554, 35.235729>,  <38.873058, 36.406715, 34.603165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855438, 36.221554, 35.235729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094769, 36.537437, 35.289944>,  <39.238365, 36.726967, 35.322472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094769, 36.537437, 35.289944>,  <38.855438, 36.221554, 35.235729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094769, 36.537437, 35.289944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155805, -0.051251, 0.986457,
		0.785959, -0.611339, 0.092376,
		0.598326, 0.789707, 0.135531,
		39.274265, 36.774349, 35.330605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499401, 36.088440, 35.672455>,  <38.855438, 36.221554, 35.235729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499401, 36.088440, 35.672455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402718, 36.475094, 35.706375>,  <39.344707, 36.707085, 35.726727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402718, 36.475094, 35.706375>,  <39.499401, 36.088440, 35.672455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402718, 36.475094, 35.706375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178534, -0.130200, 0.975281,
		0.953783, 0.220596, 0.204048,
		-0.241710, 0.966636, 0.084798,
		39.330204, 36.765083, 35.731815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946838, 36.389626, 36.188946>,  <39.499401, 36.088440, 35.672455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946838, 36.389626, 36.188946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604904, 36.595013, 36.158978>,  <39.399742, 36.718243, 36.140999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604904, 36.595013, 36.158978>,  <39.946838, 36.389626, 36.188946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604904, 36.595013, 36.158978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093332, -0.010124, 0.995584,
		0.510438, 0.858051, 0.056577,
		-0.854835, 0.513464, -0.074916,
		39.348454, 36.749050, 36.136501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018623, 36.790543, 36.817318>,  <39.946838, 36.389626, 36.188946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018623, 36.790543, 36.817318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633945, 36.776928, 36.708511>,  <39.403141, 36.768761, 36.643227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633945, 36.776928, 36.708511>,  <40.018623, 36.790543, 36.817318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633945, 36.776928, 36.708511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265642, -0.129424, 0.955345,
		-0.067724, 0.991005, 0.115424,
		-0.961690, -0.034038, -0.272018,
		39.345440, 36.766716, 36.626907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622314, 37.324219, 37.185932>,  <40.018623, 36.790543, 36.817318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622314, 37.324219, 37.185932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365349, 37.045044, 37.059322>,  <39.211170, 36.877537, 36.983356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365349, 37.045044, 37.059322>,  <39.622314, 37.324219, 37.185932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365349, 37.045044, 37.059322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277496, -0.173152, 0.944995,
		-0.714356, 0.694910, -0.082440,
		-0.642411, -0.697939, -0.316527,
		39.172626, 36.835663, 36.964363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136581, 37.463760, 37.699234>,  <39.622314, 37.324219, 37.185932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136581, 37.463760, 37.699234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026276, 37.116592, 37.533985>,  <38.960091, 36.908291, 37.434834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026276, 37.116592, 37.533985>,  <39.136581, 37.463760, 37.699234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026276, 37.116592, 37.533985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454448, -0.261003, 0.851678,
		-0.847012, 0.422610, -0.322447,
		-0.275768, -0.867917, -0.413127,
		38.943546, 36.856216, 37.410046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392612, 37.323227, 37.862263>,  <39.136581, 37.463760, 37.699234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392612, 37.323227, 37.862263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575672, 36.978062, 37.776527>,  <38.685509, 36.770962, 37.725086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575672, 36.978062, 37.776527>,  <38.392612, 37.323227, 37.862263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575672, 36.978062, 37.776527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388765, -0.411000, 0.824586,
		-0.799639, -0.294040, -0.523562,
		0.457645, -0.862914, -0.214339,
		38.712967, 36.719189, 37.712227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895336, 36.823170, 37.938057>,  <38.392612, 37.323227, 37.862263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895336, 36.823170, 37.938057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240978, 36.622524, 37.954601>,  <38.448364, 36.502136, 37.964527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240978, 36.622524, 37.954601>,  <37.895336, 36.823170, 37.938057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240978, 36.622524, 37.954601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346762, -0.533764, 0.771267,
		-0.364799, -0.680797, -0.635167,
		0.864106, -0.501609, 0.041358,
		38.500210, 36.472042, 37.967007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728561, 36.124538, 37.962254>,  <37.895336, 36.823170, 37.938057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728561, 36.124538, 37.962254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091938, 36.186073, 38.117722>,  <38.309963, 36.222996, 38.211002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091938, 36.186073, 38.117722>,  <37.728561, 36.124538, 37.962254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091938, 36.186073, 38.117722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311489, -0.370936, 0.874861,
		0.278758, -0.915828, -0.289056,
		0.908443, 0.153836, 0.388672,
		38.364471, 36.232224, 38.234322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933056, 35.474430, 38.251671>,  <37.728561, 36.124538, 37.962254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933056, 35.474430, 38.251671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140141, 35.773872, 38.417351>,  <38.264393, 35.953537, 38.516758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140141, 35.773872, 38.417351>,  <37.933056, 35.474430, 38.251671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140141, 35.773872, 38.417351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110843, -0.421356, 0.900096,
		0.848344, -0.511902, -0.135163,
		0.517713, 0.748609, 0.414196,
		38.295456, 35.998455, 38.541611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974239, 35.285034, 38.917377>,  <37.933056, 35.474430, 38.251671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974239, 35.285034, 38.917377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166622, 35.633102, 38.960251>,  <38.282051, 35.841942, 38.985973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166622, 35.633102, 38.960251>,  <37.974239, 35.285034, 38.917377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166622, 35.633102, 38.960251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119965, -0.186417, 0.975119,
		0.868498, -0.456132, -0.194048,
		0.480957, 0.870168, 0.107183,
		38.310909, 35.894154, 38.992405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625183, 35.141590, 39.435375>,  <37.974239, 35.285034, 38.917377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625183, 35.141590, 39.435375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445869, 35.498440, 39.457855>,  <38.338280, 35.712547, 39.471344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445869, 35.498440, 39.457855>,  <38.625183, 35.141590, 39.435375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445869, 35.498440, 39.457855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159854, -0.141871, 0.976893,
		0.879481, 0.428942, 0.206208,
		-0.448285, 0.892122, 0.056205,
		38.311382, 35.766075, 39.474716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737915, 35.408104, 40.077400>,  <38.625183, 35.141590, 39.435375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737915, 35.408104, 40.077400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464661, 35.688690, 39.996151>,  <38.300709, 35.857044, 39.947399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464661, 35.688690, 39.996151>,  <38.737915, 35.408104, 40.077400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464661, 35.688690, 39.996151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330095, -0.048490, 0.942701,
		0.651427, 0.711047, 0.264677,
		-0.683140, 0.701470, -0.203125,
		38.259720, 35.899132, 39.935215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771858, 35.870770, 40.641811>,  <38.737915, 35.408104, 40.077400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771858, 35.870770, 40.641811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416237, 35.881214, 40.458988>,  <38.202866, 35.887482, 40.349293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416237, 35.881214, 40.458988>,  <38.771858, 35.870770, 40.641811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416237, 35.881214, 40.458988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455253, -0.155712, 0.876640,
		-0.048283, 0.987457, 0.150321,
		-0.889052, 0.026107, -0.457061,
		38.149521, 35.889046, 40.321869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454880, 36.558250, 41.075886>,  <38.771858, 35.870770, 40.641811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454880, 36.558250, 41.075886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161388, 36.290489, 41.029346>,  <37.985294, 36.129833, 41.001423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161388, 36.290489, 41.029346>,  <38.454880, 36.558250, 41.075886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161388, 36.290489, 41.029346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239866, 0.094987, 0.966148,
		-0.635693, 0.736800, -0.230262,
		-0.733729, -0.669405, -0.116351,
		37.941269, 36.089668, 40.994442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856785, 36.920425, 41.220707>,  <38.454880, 36.558250, 41.075886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856785, 36.920425, 41.220707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795368, 36.527550, 41.264042>,  <37.758518, 36.291824, 41.290043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795368, 36.527550, 41.264042>,  <37.856785, 36.920425, 41.220707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795368, 36.527550, 41.264042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185981, 0.136406, 0.973038,
		-0.970482, 0.129251, -0.203612,
		-0.153540, -0.982185, 0.108341,
		37.749306, 36.232895, 41.296543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167854, 36.893906, 41.466816>,  <37.856785, 36.920425, 41.220707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167854, 36.893906, 41.466816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384895, 36.572598, 41.565067>,  <37.515121, 36.379810, 41.624016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384895, 36.572598, 41.565067>,  <37.167854, 36.893906, 41.466816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384895, 36.572598, 41.565067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432015, -0.016093, 0.901723,
		-0.720378, -0.595392, -0.355759,
		0.542603, -0.803274, 0.245626,
		37.547676, 36.331615, 41.638756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629280, 36.288834, 41.815891>,  <37.167854, 36.893906, 41.466816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629280, 36.288834, 41.815891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002472, 36.210625, 41.936760>,  <37.226387, 36.163700, 42.009281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002472, 36.210625, 41.936760>,  <36.629280, 36.288834, 41.815891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002472, 36.210625, 41.936760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347288, -0.268601, 0.898468,
		-0.094508, -0.943199, -0.318503,
		0.932984, -0.195524, 0.302176,
		37.282368, 36.151966, 42.027412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588844, 35.673496, 42.315304>,  <36.629280, 36.288834, 41.815891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588844, 35.673496, 42.315304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965401, 35.700142, 42.447578>,  <37.191334, 35.716129, 42.526943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965401, 35.700142, 42.447578>,  <36.588844, 35.673496, 42.315304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965401, 35.700142, 42.447578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298486, -0.292200, 0.908584,
		0.157155, -0.954034, -0.255189,
		0.941386, 0.066618, 0.330686,
		37.247818, 35.720127, 42.546783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740646, 35.034554, 42.878689>,  <36.588844, 35.673496, 42.315304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740646, 35.034554, 42.878689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978508, 35.355274, 42.902359>,  <37.121227, 35.547707, 42.916561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978508, 35.355274, 42.902359>,  <36.740646, 35.034554, 42.878689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978508, 35.355274, 42.902359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281086, 0.138378, 0.949654,
		0.753243, -0.581351, 0.307662,
		0.594656, 0.801799, 0.059177,
		37.156906, 35.595814, 42.920113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283588, 34.977299, 43.468819>,  <36.740646, 35.034554, 42.878689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283588, 34.977299, 43.468819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245232, 35.366840, 43.386433>,  <37.222218, 35.600563, 43.337002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245232, 35.366840, 43.386433>,  <37.283588, 34.977299, 43.468819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245232, 35.366840, 43.386433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078566, 0.198865, 0.976873,
		0.992286, 0.109859, 0.057442,
		-0.095895, 0.973850, -0.205962,
		37.216465, 35.658997, 43.324646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767262, 35.338482, 43.925488>,  <37.283588, 34.977299, 43.468819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767262, 35.338482, 43.925488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476185, 35.588356, 43.812195>,  <37.301537, 35.738281, 43.744221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476185, 35.588356, 43.812195>,  <37.767262, 35.338482, 43.925488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476185, 35.588356, 43.812195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212335, 0.187481, 0.959044,
		0.652205, 0.758033, -0.003786,
		-0.727696, 0.624690, -0.283233,
		37.257877, 35.775764, 43.727226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773998, 35.901169, 44.450657>,  <37.767262, 35.338482, 43.925488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773998, 35.901169, 44.450657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413872, 35.948097, 44.283005>,  <37.197796, 35.976254, 44.182415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413872, 35.948097, 44.283005>,  <37.773998, 35.901169, 44.450657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413872, 35.948097, 44.283005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426536, -0.046200, 0.903290,
		0.086610, 0.992019, 0.091636,
		-0.900314, 0.117320, -0.419130,
		37.143776, 35.983292, 44.157265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420734, 36.425251, 44.915451>,  <37.773998, 35.901169, 44.450657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420734, 36.425251, 44.915451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140411, 36.232327, 44.705215>,  <36.972218, 36.116573, 44.579075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140411, 36.232327, 44.705215>,  <37.420734, 36.425251, 44.915451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140411, 36.232327, 44.705215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572157, -0.059991, 0.817947,
		-0.426037, 0.873943, -0.233916,
		-0.700806, -0.482312, -0.525591,
		36.930168, 36.087631, 44.547539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827354, 36.812332, 45.125713>,  <37.420734, 36.425251, 44.915451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827354, 36.812332, 45.125713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685009, 36.472183, 44.970676>,  <36.599602, 36.268093, 44.877655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685009, 36.472183, 44.970676>,  <36.827354, 36.812332, 45.125713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685009, 36.472183, 44.970676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679398, -0.049376, 0.732107,
		-0.641702, 0.523858, -0.560171,
		-0.355861, -0.850373, -0.387593,
		36.578251, 36.217072, 44.854397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117901, 36.893284, 45.034710>,  <36.827354, 36.812332, 45.125713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117901, 36.893284, 45.034710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205147, 36.503632, 45.058357>,  <36.257496, 36.269840, 45.072544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205147, 36.503632, 45.058357>,  <36.117901, 36.893284, 45.034710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205147, 36.503632, 45.058357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657832, -0.102006, 0.746226,
		-0.720891, -0.201653, -0.663063,
		0.218114, -0.974131, 0.059119,
		36.270580, 36.211391, 45.076092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527130, 36.689838, 45.247250>,  <36.117901, 36.893284, 45.034710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527130, 36.689838, 45.247250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812531, 36.426128, 45.342136>,  <35.983772, 36.267902, 45.399067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812531, 36.426128, 45.342136>,  <35.527130, 36.689838, 45.247250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812531, 36.426128, 45.342136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487493, -0.223937, 0.843921,
		-0.503253, -0.717782, -0.481171,
		0.713504, -0.659273, 0.237217,
		36.026581, 36.228348, 45.413300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267147, 36.046654, 45.474194>,  <35.527130, 36.689838, 45.247250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267147, 36.046654, 45.474194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625004, 36.030594, 45.652180>,  <35.839718, 36.020958, 45.758972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625004, 36.030594, 45.652180>,  <35.267147, 36.046654, 45.474194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625004, 36.030594, 45.652180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425451, -0.380581, 0.821066,
		0.136381, -0.923876, -0.357567,
		0.894646, -0.040149, 0.444968,
		35.893398, 36.018547, 45.785671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483700, 35.312305, 45.635883>,  <35.267147, 36.046654, 45.474194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483700, 35.312305, 45.635883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676514, 35.546547, 45.896561>,  <35.792202, 35.687092, 46.052967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676514, 35.546547, 45.896561>,  <35.483700, 35.312305, 45.635883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676514, 35.546547, 45.896561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231528, -0.632239, 0.739370,
		0.845006, -0.507290, -0.169179,
		0.482036, 0.585603, 0.651698,
		35.821125, 35.722229, 46.092072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343601, 34.680042, 45.891296>,  <35.483700, 35.312305, 45.635883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343601, 34.680042, 45.891296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216831, 34.787907, 45.527573>,  <35.140770, 34.852627, 45.309338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216831, 34.787907, 45.527573>,  <35.343601, 34.680042, 45.891296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216831, 34.787907, 45.527573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028784, -0.961023, -0.274965,
		-0.948015, -0.060969, 0.312332,
		-0.316923, 0.269660, -0.909309,
		35.121754, 34.868805, 45.254780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953693, 34.514637, 45.528393>,  <35.343601, 34.680042, 45.891296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953693, 34.514637, 45.528393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027473, 34.133560, 45.431767>,  <36.071743, 33.904915, 45.373791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027473, 34.133560, 45.431767>,  <35.953693, 34.514637, 45.528393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027473, 34.133560, 45.431767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490275, -0.123833, 0.862726,
		-0.851826, -0.277568, 0.444239,
		0.184454, -0.952691, -0.241569,
		36.082809, 33.847752, 45.359295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401905, 34.950844, 45.118679>,  <35.953693, 34.514637, 45.528393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401905, 34.950844, 45.118679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283028, 35.327660, 45.056400>,  <36.211700, 35.553749, 45.019032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283028, 35.327660, 45.056400>,  <36.401905, 34.950844, 45.118679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283028, 35.327660, 45.056400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540878, 0.031719, -0.840503,
		-0.786847, -0.334005, -0.518954,
		-0.297193, 0.942037, -0.155698,
		36.193871, 35.610271, 45.009689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192112, 35.052055, 44.414593>,  <36.401905, 34.950844, 45.118679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192112, 35.052055, 44.414593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289108, 35.421173, 44.534359>,  <36.347305, 35.642643, 44.606220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289108, 35.421173, 44.534359>,  <36.192112, 35.052055, 44.414593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289108, 35.421173, 44.534359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495803, 0.147404, -0.855834,
		-0.833893, 0.355985, -0.421779,
		0.242492, 0.922793, 0.299418,
		36.361855, 35.698009, 44.624184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011547, 35.482883, 43.875690>,  <36.192112, 35.052055, 44.414593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011547, 35.482883, 43.875690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289478, 35.676472, 44.088474>,  <36.456238, 35.792625, 44.216145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289478, 35.676472, 44.088474>,  <36.011547, 35.482883, 43.875690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289478, 35.676472, 44.088474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566500, 0.087352, -0.819419,
		-0.443040, 0.870715, -0.213473,
		0.694833, 0.483968, 0.531961,
		36.497929, 35.821663, 44.248062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004856, 36.086487, 43.550232>,  <36.011547, 35.482883, 43.875690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004856, 36.086487, 43.550232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351036, 36.071251, 43.750053>,  <36.558743, 36.062111, 43.869946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351036, 36.071251, 43.750053>,  <36.004856, 36.086487, 43.550232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351036, 36.071251, 43.750053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498629, 0.162366, -0.851473,
		-0.048677, 0.985995, 0.159513,
		0.865448, -0.038091, 0.499549,
		36.610672, 36.059822, 43.899918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387447, 36.661060, 43.241310>,  <36.004856, 36.086487, 43.550232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387447, 36.661060, 43.241310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656235, 36.419598, 43.412918>,  <36.817509, 36.274719, 43.515881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656235, 36.419598, 43.412918>,  <36.387447, 36.661060, 43.241310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656235, 36.419598, 43.412918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562144, 0.038626, -0.826137,
		0.482132, 0.796308, 0.365298,
		0.671969, -0.603657, 0.429016,
		36.857826, 36.238499, 43.541622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078094, 36.955933, 43.066910>,  <36.387447, 36.661060, 43.241310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078094, 36.955933, 43.066910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138763, 36.570984, 43.157101>,  <37.175167, 36.340015, 43.211216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138763, 36.570984, 43.157101>,  <37.078094, 36.955933, 43.066910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138763, 36.570984, 43.157101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685161, -0.062048, -0.725744,
		0.712425, 0.264565, 0.649967,
		0.151677, -0.962370, 0.225474,
		37.184265, 36.282272, 43.224743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861488, 36.696964, 43.095894>,  <37.078094, 36.955933, 43.066910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861488, 36.696964, 43.095894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645683, 36.367153, 43.027687>,  <37.516201, 36.169266, 42.986763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645683, 36.367153, 43.027687>,  <37.861488, 36.696964, 43.095894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645683, 36.367153, 43.027687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494125, -0.146078, -0.857030,
		0.681739, -0.546636, 0.486232,
		-0.539511, -0.824530, -0.170519,
		37.483829, 36.119793, 42.976532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313168, 36.185459, 42.836678>,  <37.861488, 36.696964, 43.095894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313168, 36.185459, 42.836678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942749, 36.101593, 42.711155>,  <37.720497, 36.051273, 42.635841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942749, 36.101593, 42.711155>,  <38.313168, 36.185459, 42.836678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942749, 36.101593, 42.711155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358525, -0.229038, -0.904987,
		0.117868, -0.950570, 0.287270,
		-0.926049, -0.209663, -0.313807,
		37.664936, 36.038692, 42.617012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404240, 35.600300, 42.303295>,  <38.313168, 36.185459, 42.836678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404240, 35.600300, 42.303295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044743, 35.762447, 42.236443>,  <37.829044, 35.859737, 42.196331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044743, 35.762447, 42.236443>,  <38.404240, 35.600300, 42.303295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044743, 35.762447, 42.236443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046561, -0.290788, -0.955654,
		-0.435998, -0.866668, 0.242469,
		-0.898742, 0.405374, -0.167136,
		37.775120, 35.884060, 42.186302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919338, 35.093624, 41.924595>,  <38.404240, 35.600300, 42.303295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919338, 35.093624, 41.924595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767895, 35.459927, 41.870865>,  <37.677029, 35.679710, 41.838627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767895, 35.459927, 41.870865>,  <37.919338, 35.093624, 41.924595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767895, 35.459927, 41.870865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029024, -0.133312, -0.990649,
		-0.925103, -0.378963, 0.023894,
		-0.378605, 0.915759, -0.134326,
		37.654312, 35.734653, 41.830566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313789, 35.049881, 41.568272>,  <37.919338, 35.093624, 41.924595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313789, 35.049881, 41.568272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474693, 35.407986, 41.491657>,  <37.571236, 35.622849, 41.445690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474693, 35.407986, 41.491657>,  <37.313789, 35.049881, 41.568272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474693, 35.407986, 41.491657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068362, -0.179251, -0.981426,
		-0.912969, 0.407883, -0.010904,
		0.402261, 0.895266, -0.191534,
		37.595371, 35.676567, 41.434196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977776, 35.162682, 40.955963>,  <37.313789, 35.049881, 41.568272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977776, 35.162682, 40.955963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261963, 35.443527, 40.975010>,  <37.432476, 35.612034, 40.986439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261963, 35.443527, 40.975010>,  <36.977776, 35.162682, 40.955963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261963, 35.443527, 40.975010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106955, -0.040848, -0.993424,
		-0.695555, 0.710889, -0.104116,
		0.710468, 0.702117, 0.047621,
		37.475101, 35.654163, 40.989296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091438, 35.269341, 40.233627>,  <36.977776, 35.162682, 40.955963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091438, 35.269341, 40.233627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348618, 35.537769, 40.381294>,  <37.502926, 35.698826, 40.469894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348618, 35.537769, 40.381294>,  <37.091438, 35.269341, 40.233627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348618, 35.537769, 40.381294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196941, 0.320937, -0.926398,
		-0.740158, 0.668329, 0.074185,
		0.642947, 0.671071, 0.369166,
		37.541500, 35.739090, 40.492043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941521, 35.950588, 39.894318>,  <37.091438, 35.269341, 40.233627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941521, 35.950588, 39.894318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322239, 35.963314, 40.016342>,  <37.550671, 35.970947, 40.089558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322239, 35.963314, 40.016342>,  <36.941521, 35.950588, 39.894318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322239, 35.963314, 40.016342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275624, 0.347653, -0.896197,
		-0.134565, 0.937083, 0.322129,
		0.951800, 0.031810, 0.305065,
		37.607780, 35.972858, 40.107861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193775, 36.489616, 39.559353>,  <36.941521, 35.950588, 39.894318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193775, 36.489616, 39.559353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528976, 36.318420, 39.694752>,  <37.730095, 36.215702, 39.775990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528976, 36.318420, 39.694752>,  <37.193775, 36.489616, 39.559353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528976, 36.318420, 39.694752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447073, 0.182847, -0.875610,
		0.312859, 0.885094, 0.344569,
		0.838001, -0.427990, 0.338496,
		37.780376, 36.190025, 39.796299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879978, 37.006611, 39.430607>,  <37.193775, 36.489616, 39.559353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879978, 37.006611, 39.430607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988464, 36.622715, 39.459854>,  <38.053555, 36.392380, 39.477402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988464, 36.622715, 39.459854>,  <37.879978, 37.006611, 39.430607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988464, 36.622715, 39.459854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658432, 0.129582, -0.741401,
		0.702076, 0.249223, 0.667066,
		0.271214, -0.959738, 0.073120,
		38.069828, 36.334793, 39.481789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573021, 37.127880, 39.184952>,  <37.879978, 37.006611, 39.430607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573021, 37.127880, 39.184952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486092, 36.742607, 39.121655>,  <38.433933, 36.511444, 39.083675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486092, 36.742607, 39.121655>,  <38.573021, 37.127880, 39.184952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486092, 36.742607, 39.121655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623010, -0.012075, -0.782121,
		0.751417, -0.268564, 0.602698,
		-0.217327, -0.963186, -0.158245,
		38.420895, 36.453651, 39.074181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122593, 36.868793, 38.846378>,  <38.573021, 37.127880, 39.184952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122593, 36.868793, 38.846378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873611, 36.564861, 38.771320>,  <38.724224, 36.382500, 38.726284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873611, 36.564861, 38.771320>,  <39.122593, 36.868793, 38.846378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873611, 36.564861, 38.771320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398971, -0.101782, -0.911297,
		0.673334, -0.642102, 0.366505,
		-0.622450, -0.759832, -0.187646,
		38.686878, 36.336910, 38.715027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567139, 36.129589, 38.722904>,  <39.122593, 36.868793, 38.846378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567139, 36.129589, 38.722904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213638, 36.185043, 38.544125>,  <39.001537, 36.218315, 38.436855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213638, 36.185043, 38.544125>,  <39.567139, 36.129589, 38.722904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213638, 36.185043, 38.544125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439158, -0.084177, -0.894457,
		-0.161626, -0.986760, 0.013509,
		-0.883752, 0.138635, -0.446949,
		38.948513, 36.226635, 38.410038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698441, 35.818066, 38.079823>,  <39.567139, 36.129589, 38.722904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698441, 35.818066, 38.079823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349926, 36.003548, 38.015533>,  <39.140816, 36.114838, 37.976959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349926, 36.003548, 38.015533>,  <39.698441, 35.818066, 38.079823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349926, 36.003548, 38.015533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257878, 0.153947, -0.953834,
		-0.417555, -0.872513, -0.253712,
		-0.871290, 0.463705, -0.160721,
		39.088539, 36.142658, 37.967316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329426, 35.515636, 37.474457>,  <39.698441, 35.818066, 38.079823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329426, 35.515636, 37.474457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144989, 35.866917, 37.525311>,  <39.034328, 36.077686, 37.555820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144989, 35.866917, 37.525311>,  <39.329426, 35.515636, 37.474457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144989, 35.866917, 37.525311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077362, 0.182508, -0.980156,
		-0.883975, -0.442105, -0.152092,
		-0.461090, 0.878199, 0.127131,
		39.006660, 36.130375, 37.563450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815907, 34.935955, 37.134289>,  <39.329426, 35.515636, 37.474457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815907, 34.935955, 37.134289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845959, 35.334805, 37.138321>,  <39.863991, 35.574116, 37.140739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845959, 35.334805, 37.138321>,  <39.815907, 34.935955, 37.134289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845959, 35.334805, 37.138321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893178, -0.071782, 0.443938,
		0.443384, -0.024350, -0.896001,
		0.075127, 0.997123, 0.010078,
		39.868496, 35.633942, 37.141346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384205, 35.260719, 36.804260>,  <39.815907, 34.935955, 37.134289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384205, 35.260719, 36.804260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314072, 35.529537, 37.092041>,  <40.271992, 35.690826, 37.264709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314072, 35.529537, 37.092041>,  <40.384205, 35.260719, 36.804260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314072, 35.529537, 37.092041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936297, -0.112063, 0.332851,
		0.304315, 0.731983, -0.609584,
		-0.175330, 0.672044, 0.719456,
		40.261475, 35.731152, 37.307877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669041, 35.952648, 36.833122>,  <40.384205, 35.260719, 36.804260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669041, 35.952648, 36.833122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635204, 35.804619, 37.203178>,  <40.614902, 35.715801, 37.425213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635204, 35.804619, 37.203178>,  <40.669041, 35.952648, 36.833122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635204, 35.804619, 37.203178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994855, 0.020571, 0.099195,
		-0.055740, 0.928775, 0.366430,
		-0.084592, -0.370074, 0.925143,
		40.609825, 35.693596, 37.480721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058819, 36.313816, 37.378670>,  <40.669041, 35.952648, 36.833122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058819, 36.313816, 37.378670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024143, 35.931114, 37.489735>,  <41.003338, 35.701492, 37.556374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024143, 35.931114, 37.489735>,  <41.058819, 36.313816, 37.378670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024143, 35.931114, 37.489735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995119, -0.069970, 0.069589,
		-0.047151, 0.282342, 0.958154,
		-0.086690, -0.956759, 0.277664,
		40.998135, 35.644085, 37.573032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755634, 36.422096, 37.155453>,  <41.058819, 36.313816, 37.378670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755634, 36.422096, 37.155453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617142, 36.119431, 37.377293>,  <41.534046, 35.937832, 37.510395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617142, 36.119431, 37.377293>,  <41.755634, 36.422096, 37.155453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617142, 36.119431, 37.377293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926287, -0.369431, 0.074247,
		0.148705, 0.539423, 0.828800,
		-0.346235, -0.756666, 0.554597,
		41.513271, 35.892429, 37.543671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911835, 36.489643, 37.883331>,  <41.755634, 36.422096, 37.155453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911835, 36.489643, 37.883331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888096, 36.107361, 37.768017>,  <41.873852, 35.877991, 37.698826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888096, 36.107361, 37.768017>,  <41.911835, 36.489643, 37.883331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888096, 36.107361, 37.768017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973077, -0.119819, 0.196886,
		-0.222707, -0.268842, 0.937084,
		-0.059349, -0.955703, -0.288289,
		41.870293, 35.820648, 37.681530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444023, 36.091919, 38.300541>,  <41.911835, 36.489643, 37.883331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444023, 36.091919, 38.300541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346729, 35.863567, 37.986870>,  <42.288353, 35.726555, 37.798668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346729, 35.863567, 37.986870>,  <42.444023, 36.091919, 38.300541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346729, 35.863567, 37.986870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957738, -0.269328, -0.101004,
		-0.153539, -0.775603, 0.612263,
		-0.243239, -0.570879, -0.784176,
		42.273758, 35.692303, 37.751617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626724, 35.288506, 38.320095>,  <42.444023, 36.091919, 38.300541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626724, 35.288506, 38.320095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634937, 35.472054, 37.964787>,  <42.639866, 35.582180, 37.751602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634937, 35.472054, 37.964787>,  <42.626724, 35.288506, 38.320095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634937, 35.472054, 37.964787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998583, 0.034212, 0.040752,
		0.049089, -0.887846, -0.457516,
		0.020529, 0.458868, -0.888267,
		42.641094, 35.609715, 37.698307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177120, 34.923313, 37.970604>,  <42.626724, 35.288506, 38.320095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177120, 34.923313, 37.970604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132473, 35.290619, 37.818634>,  <43.105686, 35.511002, 37.727451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132473, 35.290619, 37.818634>,  <43.177120, 34.923313, 37.970604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132473, 35.290619, 37.818634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983337, 0.046852, -0.175650,
		-0.143492, -0.393196, -0.908189,
		-0.111616, 0.918260, -0.379922,
		43.098988, 35.566097, 37.704659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369625, 35.093864, 37.193951>,  <43.177120, 34.923313, 37.970604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369625, 35.093864, 37.193951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432526, 35.384315, 37.461685>,  <43.470264, 35.558586, 37.622326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432526, 35.384315, 37.461685>,  <43.369625, 35.093864, 37.193951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432526, 35.384315, 37.461685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897175, 0.178218, -0.404123,
		-0.412733, 0.664058, -0.623441,
		0.157253, 0.726130, 0.669333,
		43.479702, 35.602154, 37.662483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479427, 35.820309, 36.935749>,  <43.369625, 35.093864, 37.193951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479427, 35.820309, 36.935749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.713036, 35.747841, 37.252254>,  <43.853199, 35.704361, 37.442158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.713036, 35.747841, 37.252254>,  <43.479427, 35.820309, 36.935749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.713036, 35.747841, 37.252254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809712, 0.198879, -0.552099,
		-0.057342, 0.963133, 0.262844,
		0.584019, -0.181170, 0.791265,
		43.888241, 35.693489, 37.489635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955753, 36.397373, 37.031166>,  <43.479427, 35.820309, 36.935749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955753, 36.397373, 37.031166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137611, 36.080601, 37.194214>,  <44.246727, 35.890537, 37.292042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137611, 36.080601, 37.194214>,  <43.955753, 36.397373, 37.031166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137611, 36.080601, 37.194214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808343, 0.174697, -0.562194,
		0.374008, 0.585090, 0.719574,
		0.454641, -0.791928, 0.407616,
		44.274002, 35.843021, 37.316498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657131, 36.573864, 37.277203>,  <43.955753, 36.397373, 37.031166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657131, 36.573864, 37.277203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684185, 36.175358, 37.255703>,  <44.700417, 35.936256, 37.242805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684185, 36.175358, 37.255703>,  <44.657131, 36.573864, 37.277203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684185, 36.175358, 37.255703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871485, 0.085215, -0.482961,
		0.485736, -0.014174, 0.873991,
		0.067632, -0.996262, -0.053745,
		44.704475, 35.876480, 37.239578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.465240, 36.471035, 37.296482>,  <44.657131, 36.573864, 37.277203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.465240, 36.471035, 37.296482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260487, 36.152008, 37.168823>,  <45.137634, 35.960590, 37.092228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260487, 36.152008, 37.168823>,  <45.465240, 36.471035, 37.296482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260487, 36.152008, 37.168823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776703, -0.270963, -0.568605,
		0.367026, -0.538942, 0.758178,
		-0.511883, -0.797572, -0.319147,
		45.106922, 35.912735, 37.073078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.838852, 35.903267, 37.264465>,  <45.465240, 36.471035, 37.296482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.838852, 35.903267, 37.264465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.554504, 35.787125, 37.008228>,  <45.383896, 35.717438, 36.854485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.554504, 35.787125, 37.008228>,  <45.838852, 35.903267, 37.264465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.554504, 35.787125, 37.008228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693533, -0.440842, -0.569799,
		-0.116953, -0.849323, 0.514755,
		-0.710869, -0.290360, -0.640591,
		45.341244, 35.700016, 36.816051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.230400, 35.637470, 36.675804>,  <45.838852, 35.903267, 37.264465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.230400, 35.637470, 36.675804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592815, 35.612377, 36.843208>,  <46.810265, 35.597321, 36.943653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.592815, 35.612377, 36.843208>,  <46.230400, 35.637470, 36.675804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.592815, 35.612377, 36.843208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317614, -0.552733, -0.770459,
		0.279661, 0.830994, -0.480873,
		0.906041, -0.062735, 0.418513,
		46.864628, 35.593555, 36.968761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.649319, 34.981354, 36.647610>,  <46.230400, 35.637470, 36.675804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.649319, 34.981354, 36.647610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.990406, 35.142525, 36.514633>,  <47.195057, 35.239227, 36.434849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.990406, 35.142525, 36.514633>,  <46.649319, 34.981354, 36.647610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.990406, 35.142525, 36.514633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086210, -0.519133, -0.850335,
		-0.515208, 0.753756, -0.407938,
		0.852718, 0.402931, -0.332442,
		47.246223, 35.263405, 36.414902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.515858, 35.333630, 35.991261>,  <46.649319, 34.981354, 36.647610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.515858, 35.333630, 35.991261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914093, 35.296333, 35.995514>,  <47.153034, 35.273956, 35.998066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914093, 35.296333, 35.995514>,  <46.515858, 35.333630, 35.991261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.914093, 35.296333, 35.995514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021350, -0.335330, -0.941859,
		0.091386, 0.937475, -0.335841,
		0.995587, -0.093243, 0.010629,
		47.212769, 35.268360, 35.998703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.871326, 35.703384, 35.501690>,  <46.515858, 35.333630, 35.991261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.871326, 35.703384, 35.501690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071198, 35.367058, 35.584972>,  <47.191120, 35.165260, 35.634941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071198, 35.367058, 35.584972>,  <46.871326, 35.703384, 35.501690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.071198, 35.367058, 35.584972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180827, -0.336326, -0.924222,
		0.847127, 0.424163, -0.320097,
		0.499678, -0.840815, 0.208211,
		47.221100, 35.114815, 35.647434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.484924, 35.542046, 35.001003>,  <46.871326, 35.703384, 35.501690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.484924, 35.542046, 35.001003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362309, 35.206203, 35.180378>,  <47.288738, 35.004700, 35.288002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362309, 35.206203, 35.180378>,  <47.484924, 35.542046, 35.001003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.362309, 35.206203, 35.180378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155903, -0.509041, -0.846506,
		0.939003, -0.189576, 0.286939,
		-0.306541, -0.839606, 0.448436,
		47.270348, 34.954323, 35.314907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.014790, 35.088398, 35.033463>,  <47.484924, 35.542046, 35.001003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.014790, 35.088398, 35.033463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.650723, 34.940315, 34.959118>,  <47.432281, 34.851467, 34.914513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.650723, 34.940315, 34.959118>,  <48.014790, 35.088398, 35.033463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.650723, 34.940315, 34.959118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249163, -0.130827, -0.959584,
		0.330926, -0.919692, 0.211315,
		-0.910168, -0.370204, -0.185860,
		47.377670, 34.829254, 34.903358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.995350, 31.745121, 27.181736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.714451, 31.905806, 26.946629>,  <39.545910, 32.002216, 26.805565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.714451, 31.905806, 26.946629>,  <39.995350, 31.745121, 27.181736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714451, 31.905806, 26.946629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590875, 0.131664, 0.795947,
		0.397130, 0.906251, 0.144901,
		-0.702250, 0.401713, -0.587769,
		39.503777, 32.026321, 26.770298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791676, 32.318275, 27.546719>,  <39.995350, 31.745121, 27.181736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791676, 32.318275, 27.546719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.483646, 32.258152, 27.298721>,  <39.298828, 32.222080, 27.149923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.483646, 32.258152, 27.298721>,  <39.791676, 32.318275, 27.546719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483646, 32.258152, 27.298721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631611, 0.042941, 0.774095,
		-0.089729, 0.987706, -0.128003,
		-0.770075, -0.150307, -0.619994,
		39.252625, 32.213058, 27.112722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309383, 32.850056, 27.670004>,  <39.791676, 32.318275, 27.546719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309383, 32.850056, 27.670004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.090816, 32.561470, 27.499868>,  <38.959675, 32.388317, 27.397787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.090816, 32.561470, 27.499868>,  <39.309383, 32.850056, 27.670004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090816, 32.561470, 27.499868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755493, 0.205421, 0.622120,
		-0.361465, 0.661278, -0.657308,
		-0.546419, -0.721466, -0.425338,
		38.926891, 32.345032, 27.372267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694752, 33.205772, 27.498896>,  <39.309383, 32.850056, 27.670004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694752, 33.205772, 27.498896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.621185, 32.812904, 27.514427>,  <38.577045, 32.577183, 27.523746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.621185, 32.812904, 27.514427>,  <38.694752, 33.205772, 27.498896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621185, 32.812904, 27.514427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851978, 0.178988, 0.492032,
		-0.490212, 0.057410, -0.869710,
		-0.183916, -0.982175, 0.038830,
		38.566010, 32.518253, 27.526077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967484, 33.142929, 27.440554>,  <38.694752, 33.205772, 27.498896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967484, 33.142929, 27.440554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077477, 32.781841, 27.572906>,  <38.143475, 32.565189, 27.652317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077477, 32.781841, 27.572906>,  <37.967484, 33.142929, 27.440554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077477, 32.781841, 27.572906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693978, 0.051821, 0.718129,
		-0.665415, -0.427099, -0.612217,
		0.274986, -0.902719, 0.330880,
		38.159973, 32.511024, 27.672171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349632, 32.995972, 27.900946>,  <37.967484, 33.142929, 27.440554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349632, 32.995972, 27.900946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637363, 32.736057, 27.999210>,  <37.810001, 32.580109, 28.058168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637363, 32.736057, 27.999210>,  <37.349632, 32.995972, 27.900946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637363, 32.736057, 27.999210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418657, -0.123302, 0.899735,
		-0.554346, -0.750049, -0.360732,
		0.719324, -0.649787, 0.245661,
		37.853161, 32.541122, 28.072908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962662, 32.307629, 28.183968>,  <37.349632, 32.995972, 27.900946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962662, 32.307629, 28.183968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.334175, 32.327717, 28.330847>,  <37.557083, 32.339767, 28.418974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.334175, 32.327717, 28.330847>,  <36.962662, 32.307629, 28.183968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334175, 32.327717, 28.330847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369043, 0.034114, 0.928786,
		0.034114, -0.998155, 0.050217,
		-0.928786, -0.050217, -0.367198,
		37.612812, 32.342781, 28.441006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972744, 31.783506, 28.732592>,  <36.962662, 32.307629, 28.183968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972744, 31.783506, 28.732592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263668, 32.048363, 28.804796>,  <37.438225, 32.207275, 28.848120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263668, 32.048363, 28.804796>,  <36.972744, 31.783506, 28.732592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263668, 32.048363, 28.804796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310879, 0.083368, 0.946786,
		0.611856, -0.744728, 0.266480,
		0.727314, 0.662140, 0.180511,
		37.481861, 32.247005, 28.858950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043854, 31.721630, 29.482702>,  <36.972744, 31.783506, 28.732592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043854, 31.721630, 29.482702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247829, 32.052692, 29.388939>,  <37.370216, 32.251328, 29.332680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247829, 32.052692, 29.388939>,  <37.043854, 31.721630, 29.482702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247829, 32.052692, 29.388939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210761, 0.384411, 0.898781,
		0.833990, -0.408922, 0.370465,
		0.509942, 0.827654, -0.234410,
		37.400814, 32.300987, 29.318615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595631, 31.856894, 30.081915>,  <37.043854, 31.721630, 29.482702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595631, 31.856894, 30.081915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550404, 32.207695, 29.895119>,  <37.523266, 32.418175, 29.783041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550404, 32.207695, 29.895119>,  <37.595631, 31.856894, 30.081915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550404, 32.207695, 29.895119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225646, 0.435060, 0.871668,
		0.967626, 0.203933, 0.148701,
		-0.113069, 0.877003, -0.466992,
		37.516483, 32.470795, 29.755020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099377, 32.317856, 30.366701>,  <37.595631, 31.856894, 30.081915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099377, 32.317856, 30.366701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.802452, 32.531013, 30.204226>,  <37.624298, 32.658909, 30.106741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.802452, 32.531013, 30.204226>,  <38.099377, 32.317856, 30.366701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802452, 32.531013, 30.204226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134133, 0.475753, 0.869291,
		0.656489, 0.699770, -0.281679,
		-0.742314, 0.532898, -0.406189,
		37.579758, 32.690884, 30.082369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241344, 32.914497, 30.530586>,  <38.099377, 32.317856, 30.366701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241344, 32.914497, 30.530586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.847725, 32.940922, 30.464514>,  <37.611553, 32.956776, 30.424870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.847725, 32.940922, 30.464514>,  <38.241344, 32.914497, 30.530586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847725, 32.940922, 30.464514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100579, 0.559276, 0.822858,
		0.146745, 0.826345, -0.543709,
		-0.984048, 0.066065, -0.165183,
		37.552509, 32.960743, 30.414959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190060, 33.610092, 30.741917>,  <38.241344, 32.914497, 30.530586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190060, 33.610092, 30.741917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.811085, 33.484104, 30.719442>,  <37.583698, 33.408512, 30.705957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.811085, 33.484104, 30.719442>,  <38.190060, 33.610092, 30.741917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811085, 33.484104, 30.719442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175244, 0.363946, 0.914786,
		-0.267683, 0.876548, -0.400013,
		-0.947436, -0.314972, -0.056187,
		37.526855, 33.389614, 30.702587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772217, 34.226547, 30.717459>,  <38.190060, 33.610092, 30.741917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772217, 34.226547, 30.717459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566990, 33.909836, 30.850031>,  <37.443851, 33.719810, 30.929575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566990, 33.909836, 30.850031>,  <37.772217, 34.226547, 30.717459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566990, 33.909836, 30.850031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217821, 0.493590, 0.841975,
		-0.830249, 0.359799, -0.425713,
		-0.513070, -0.791778, 0.331431,
		37.413071, 33.672302, 30.949461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088799, 34.478523, 31.080194>,  <37.772217, 34.226547, 30.717459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088799, 34.478523, 31.080194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.157932, 34.115131, 31.232401>,  <37.199413, 33.897095, 31.323725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.157932, 34.115131, 31.232401>,  <37.088799, 34.478523, 31.080194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157932, 34.115131, 31.232401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038377, 0.379823, 0.924263,
		-0.984203, -0.174345, 0.030781,
		0.172832, -0.908481, 0.380514,
		37.209782, 33.842587, 31.346556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536919, 34.373547, 31.492922>,  <37.088799, 34.478523, 31.080194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536919, 34.373547, 31.492922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814259, 34.112175, 31.614437>,  <36.980663, 33.955353, 31.687346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814259, 34.112175, 31.614437>,  <36.536919, 34.373547, 31.492922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814259, 34.112175, 31.614437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197765, 0.232839, 0.952195,
		-0.692930, -0.720285, 0.032213,
		0.693352, -0.653434, 0.303788,
		37.022263, 33.916145, 31.705574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220886, 34.150539, 32.019878>,  <36.536919, 34.373547, 31.492922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220886, 34.150539, 32.019878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.598869, 34.033276, 32.077991>,  <36.825661, 33.962917, 32.112862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.598869, 34.033276, 32.077991>,  <36.220886, 34.150539, 32.019878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598869, 34.033276, 32.077991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116220, 0.114336, 0.986620,
		-0.305850, -0.949202, 0.073972,
		0.944960, -0.293161, 0.145286,
		36.882359, 33.945328, 32.121578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244938, 33.661758, 32.460236>,  <36.220886, 34.150539, 32.019878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244938, 33.661758, 32.460236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.613258, 33.810955, 32.505836>,  <36.834251, 33.900471, 32.533199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.613258, 33.810955, 32.505836>,  <36.244938, 33.661758, 32.460236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613258, 33.810955, 32.505836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147886, 0.063419, 0.986969,
		0.360897, -0.925666, 0.113556,
		0.920806, 0.372988, 0.114005,
		36.889500, 33.922852, 32.540039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470131, 33.476383, 33.080437>,  <36.244938, 33.661758, 32.460236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470131, 33.476383, 33.080437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.751026, 33.756100, 33.026989>,  <36.919563, 33.923931, 32.994919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.751026, 33.756100, 33.026989>,  <36.470131, 33.476383, 33.080437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751026, 33.756100, 33.026989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072644, 0.116327, 0.990551,
		0.708228, -0.705308, 0.030889,
		0.702236, 0.699292, -0.133623,
		36.961697, 33.965889, 32.986900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121517, 33.375298, 33.540611>,  <36.470131, 33.476383, 33.080437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121517, 33.375298, 33.540611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.120857, 33.760487, 33.432774>,  <37.120461, 33.991600, 33.368073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.120857, 33.760487, 33.432774>,  <37.121517, 33.375298, 33.540611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120857, 33.760487, 33.432774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093611, 0.268560, 0.958703,
		0.995607, -0.023660, -0.090587,
		-0.001645, 0.962972, -0.269596,
		37.120365, 34.049377, 33.351894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667923, 33.698673, 33.892090>,  <37.121517, 33.375298, 33.540611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667923, 33.698673, 33.892090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.411942, 33.990925, 33.796883>,  <37.258354, 34.166275, 33.739758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.411942, 33.990925, 33.796883>,  <37.667923, 33.698673, 33.892090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411942, 33.990925, 33.796883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047736, 0.346951, 0.936667,
		0.766932, 0.588058, -0.256909,
		-0.639950, 0.730625, -0.238017,
		37.219955, 34.210114, 33.725479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991829, 34.222637, 34.186401>,  <37.667923, 33.698673, 33.892090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991829, 34.222637, 34.186401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.599194, 34.293278, 34.157303>,  <37.363613, 34.335663, 34.139843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.599194, 34.293278, 34.157303>,  <37.991829, 34.222637, 34.186401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599194, 34.293278, 34.157303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019696, 0.285248, 0.958251,
		0.189979, 0.942043, -0.276519,
		-0.981591, 0.176601, -0.072746,
		37.304718, 34.346256, 34.135479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257355, 34.559921, 34.880714>,  <37.991829, 34.222637, 34.186401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257355, 34.559921, 34.880714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.533379, 34.475155, 35.157528>,  <38.698994, 34.424294, 35.323616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.533379, 34.475155, 35.157528>,  <38.257355, 34.559921, 34.880714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533379, 34.475155, 35.157528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670976, -0.171121, -0.721463,
		0.271311, 0.962190, 0.024108,
		0.690059, -0.211917, 0.692033,
		38.740395, 34.411579, 35.365139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755733, 34.885071, 34.657799>,  <38.257355, 34.559921, 34.880714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755733, 34.885071, 34.657799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936150, 34.648777, 34.925407>,  <39.044399, 34.507000, 35.085972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936150, 34.648777, 34.925407>,  <38.755733, 34.885071, 34.657799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936150, 34.648777, 34.925407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771855, -0.118183, -0.624719,
		0.448113, 0.798161, 0.402659,
		0.451038, -0.590739, 0.669023,
		39.071461, 34.471554, 35.126114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423130, 35.021542, 34.554329>,  <38.755733, 34.885071, 34.657799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423130, 35.021542, 34.554329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.422733, 34.671402, 34.747723>,  <39.422497, 34.461319, 34.863758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.422733, 34.671402, 34.747723>,  <39.423130, 35.021542, 34.554329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422733, 34.671402, 34.747723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697915, -0.346868, -0.626576,
		0.716180, 0.336809, 0.611266,
		-0.000992, -0.875353, 0.483484,
		39.422436, 34.408794, 34.892769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080566, 34.863503, 34.658176>,  <39.423130, 35.021542, 34.554329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080566, 34.863503, 34.658176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.895596, 34.509087, 34.644890>,  <39.784615, 34.296436, 34.636917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.895596, 34.509087, 34.644890>,  <40.080566, 34.863503, 34.658176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895596, 34.509087, 34.644890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734329, -0.361712, -0.574392,
		0.496916, -0.290007, 0.817906,
		-0.462424, -0.886037, -0.033220,
		39.756866, 34.243275, 34.634922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577023, 34.349323, 34.637127>,  <40.080566, 34.863503, 34.658176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577023, 34.349323, 34.637127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.245781, 34.186249, 34.483223>,  <40.047035, 34.088406, 34.390881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.245781, 34.186249, 34.483223>,  <40.577023, 34.349323, 34.637127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245781, 34.186249, 34.483223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538275, -0.386616, -0.748858,
		0.156543, -0.827238, 0.539603,
		-0.828103, -0.407683, -0.384760,
		39.997349, 34.063942, 34.367794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786293, 33.827507, 34.423019>,  <40.577023, 34.349323, 34.637127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786293, 33.827507, 34.423019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.434124, 33.835972, 34.233528>,  <40.222824, 33.841049, 34.119835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.434124, 33.835972, 34.233528>,  <40.786293, 33.827507, 34.423019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434124, 33.835972, 34.233528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437454, -0.349330, -0.828615,
		-0.183021, -0.936761, 0.298300,
		-0.880419, 0.021161, -0.473724,
		40.169998, 33.842319, 34.091412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878723, 33.307499, 33.856632>,  <40.786293, 33.827507, 34.423019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878723, 33.307499, 33.856632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.526276, 33.463627, 33.749844>,  <40.314808, 33.557304, 33.685772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.526276, 33.463627, 33.749844>,  <40.878723, 33.307499, 33.856632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526276, 33.463627, 33.749844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189483, -0.225833, -0.955560,
		-0.433265, -0.892552, 0.125027,
		-0.881123, 0.390320, -0.266969,
		40.261940, 33.580723, 33.669754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389076, 32.827370, 33.654324>,  <40.878723, 33.307499, 33.856632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389076, 32.827370, 33.654324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.311302, 33.160450, 33.446934>,  <40.264637, 33.360298, 33.322502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.311302, 33.160450, 33.446934>,  <40.389076, 32.827370, 33.654324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311302, 33.160450, 33.446934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194900, -0.485225, -0.852391,
		-0.961359, -0.266782, -0.067950,
		-0.194431, 0.832697, -0.518471,
		40.252972, 33.410259, 33.291393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841549, 32.634766, 33.050014>,  <40.389076, 32.827370, 33.654324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841549, 32.634766, 33.050014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.021130, 32.980911, 32.960949>,  <40.128880, 33.188599, 32.907509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.021130, 32.980911, 32.960949>,  <39.841549, 32.634766, 33.050014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021130, 32.980911, 32.960949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197739, -0.339228, -0.919687,
		-0.871402, 0.368866, -0.323415,
		0.448952, 0.865368, -0.222665,
		40.155815, 33.240520, 32.894150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545712, 32.884422, 32.451515>,  <39.841549, 32.634766, 33.050014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545712, 32.884422, 32.451515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.887573, 33.090012, 32.422108>,  <40.092690, 33.213364, 32.404465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.887573, 33.090012, 32.422108>,  <39.545712, 32.884422, 32.451515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887573, 33.090012, 32.422108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132977, -0.353559, -0.925912,
		-0.501882, 0.781558, -0.370516,
		0.854653, 0.513969, -0.073516,
		40.143970, 33.244202, 32.400051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570175, 33.192741, 31.796402>,  <39.545712, 32.884422, 32.451515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570175, 33.192741, 31.796402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.952614, 33.168530, 31.911100>,  <40.182076, 33.154003, 31.979919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.952614, 33.168530, 31.911100>,  <39.570175, 33.192741, 31.796402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952614, 33.168530, 31.911100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226033, -0.470472, -0.852975,
		0.186540, 0.880336, -0.436132,
		0.956092, -0.060534, 0.286747,
		40.239441, 33.150368, 31.997124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993484, 33.386093, 31.213289>,  <39.570175, 33.192741, 31.796402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993484, 33.386093, 31.213289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.236645, 33.181023, 31.455814>,  <40.382542, 33.057980, 31.601330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.236645, 33.181023, 31.455814>,  <39.993484, 33.386093, 31.213289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236645, 33.181023, 31.455814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429494, -0.429937, -0.794159,
		0.667824, 0.743180, -0.041169,
		0.607903, -0.512676, 0.606314,
		40.419014, 33.027218, 31.637709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742748, 33.454479, 31.031719>,  <39.993484, 33.386093, 31.213289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742748, 33.454479, 31.031719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.716068, 33.105213, 31.224857>,  <40.700062, 32.895653, 31.340740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.716068, 33.105213, 31.224857>,  <40.742748, 33.454479, 31.031719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716068, 33.105213, 31.224857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530378, -0.440917, -0.724080,
		0.845134, 0.207797, 0.492513,
		-0.066695, -0.873163, 0.482845,
		40.696060, 32.843266, 31.369711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421246, 33.240116, 30.971371>,  <40.742748, 33.454479, 31.031719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421246, 33.240116, 30.971371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.163635, 32.941246, 31.037045>,  <41.009068, 32.761925, 31.076448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.163635, 32.941246, 31.037045>,  <41.421246, 33.240116, 30.971371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163635, 32.941246, 31.037045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369438, -0.491704, -0.788507,
		0.669886, -0.447161, 0.592706,
		-0.644025, -0.747177, 0.164187,
		40.970428, 32.717094, 31.086300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865185, 32.609264, 30.858841>,  <41.421246, 33.240116, 30.971371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865185, 32.609264, 30.858841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.488644, 32.477062, 30.831673>,  <41.262718, 32.397739, 30.815372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.488644, 32.477062, 30.831673>,  <41.865185, 32.609264, 30.858841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488644, 32.477062, 30.831673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280198, -0.653578, -0.703082,
		0.187982, -0.680882, 0.707857,
		-0.941356, -0.330507, -0.067920,
		41.206238, 32.377911, 30.811296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029209, 31.970201, 30.535982>,  <41.865185, 32.609264, 30.858841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029209, 31.970201, 30.535982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.632652, 32.019447, 30.518126>,  <41.394718, 32.048996, 30.507412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.632652, 32.019447, 30.518126>,  <42.029209, 31.970201, 30.535982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632652, 32.019447, 30.518126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037481, -0.593374, -0.804054,
		-0.125477, -0.795457, 0.592878,
		-0.991388, 0.123112, -0.044641,
		41.335236, 32.056381, 30.504734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768227, 31.274567, 30.425287>,  <42.029209, 31.970201, 30.535982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768227, 31.274567, 30.425287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.485977, 31.532547, 30.307892>,  <41.316628, 31.687334, 30.237455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.485977, 31.532547, 30.307892>,  <41.768227, 31.274567, 30.425287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485977, 31.532547, 30.307892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195526, -0.575330, -0.794207,
		-0.681077, -0.503025, 0.532071,
		-0.705622, 0.644950, -0.293489,
		41.274288, 31.726032, 30.219845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339928, 30.814556, 30.208275>,  <41.768227, 31.274567, 30.425287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339928, 30.814556, 30.208275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.253956, 31.169987, 30.046169>,  <41.202374, 31.383245, 29.948906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.253956, 31.169987, 30.046169>,  <41.339928, 30.814556, 30.208275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253956, 31.169987, 30.046169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338032, -0.456997, -0.822732,
		-0.916263, -0.039841, 0.398590,
		-0.214933, 0.888576, -0.405262,
		41.189476, 31.436560, 29.924591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.330296, 31.148508, 29.318268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.549103, 31.474619, 29.242279>,  <40.680389, 31.670286, 29.196686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.549103, 31.474619, 29.242279>,  <40.330296, 31.148508, 29.318268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549103, 31.474619, 29.242279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470432, -0.487100, -0.735818,
		-0.692432, 0.313139, -0.649986,
		0.547021, 0.815278, -0.189973,
		40.713207, 31.719202, 29.185287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104599, 31.505705, 28.618586>,  <40.330296, 31.148508, 29.318268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104599, 31.505705, 28.618586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.484360, 31.562178, 28.730804>,  <40.712215, 31.596062, 28.798136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.484360, 31.562178, 28.730804>,  <40.104599, 31.505705, 28.618586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484360, 31.562178, 28.730804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313758, -0.386640, -0.867217,
		-0.013965, 0.911360, -0.411374,
		0.949400, 0.141183, 0.280547,
		40.769180, 31.604532, 28.814968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524139, 31.872663, 28.181284>,  <40.104599, 31.505705, 28.618586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524139, 31.872663, 28.181284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.848701, 31.722740, 28.360676>,  <41.043438, 31.632786, 28.468311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.848701, 31.722740, 28.360676>,  <40.524139, 31.872663, 28.181284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848701, 31.722740, 28.360676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397004, -0.209708, -0.893538,
		0.428956, 0.903073, -0.021358,
		0.811409, -0.374809, 0.448479,
		41.092125, 31.610298, 28.495220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059696, 32.159916, 27.841644>,  <40.524139, 31.872663, 28.181284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059696, 32.159916, 27.841644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.218189, 31.847626, 28.034920>,  <41.313286, 31.660252, 28.150885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.218189, 31.847626, 28.034920>,  <41.059696, 32.159916, 27.841644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218189, 31.847626, 28.034920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576195, -0.198294, -0.792893,
		0.714845, 0.592577, 0.371280,
		0.396228, -0.780725, 0.483189,
		41.337059, 31.613409, 28.179876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822281, 32.237965, 27.968975>,  <41.059696, 32.159916, 27.841644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822281, 32.237965, 27.968975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.733063, 31.848064, 27.964651>,  <41.679531, 31.614124, 27.962057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.733063, 31.848064, 27.964651>,  <41.822281, 32.237965, 27.968975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733063, 31.848064, 27.964651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729476, -0.159542, -0.665140,
		0.646619, -0.156242, 0.746641,
		-0.223043, -0.974749, -0.010812,
		41.666149, 31.555639, 27.961407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502132, 31.921366, 28.058468>,  <41.822281, 32.237965, 27.968975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502132, 31.921366, 28.058468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.239090, 31.659336, 27.909645>,  <42.081264, 31.502119, 27.820351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.239090, 31.659336, 27.909645>,  <42.502132, 31.921366, 28.058468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239090, 31.659336, 27.909645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591898, -0.143739, -0.793093,
		0.466055, -0.741766, 0.482261,
		-0.657609, -0.655074, -0.372059,
		42.041809, 31.462814, 27.798027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829388, 31.309904, 27.934492>,  <42.502132, 31.921366, 28.058468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829388, 31.309904, 27.934492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.525360, 31.295853, 27.674934>,  <42.342945, 31.287422, 27.519199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.525360, 31.295853, 27.674934>,  <42.829388, 31.309904, 27.934492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525360, 31.295853, 27.674934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634380, -0.256667, -0.729167,
		-0.140935, -0.965862, 0.217368,
		-0.760066, -0.035129, -0.648896,
		42.297340, 31.285315, 27.480265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062489, 30.866961, 27.344639>,  <42.829388, 31.309904, 27.934492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062489, 30.866961, 27.344639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.744705, 31.045471, 27.179869>,  <42.554035, 31.152576, 27.081007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.744705, 31.045471, 27.179869>,  <43.062489, 30.866961, 27.344639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744705, 31.045471, 27.179869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361679, -0.197213, -0.911206,
		-0.487885, -0.872895, -0.004731,
		-0.794453, 0.446275, -0.411925,
		42.506371, 31.179354, 27.056292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898449, 30.447754, 26.883144>,  <43.062489, 30.866961, 27.344639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898449, 30.447754, 26.883144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.730389, 30.787935, 26.756523>,  <42.629555, 30.992044, 26.680550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.730389, 30.787935, 26.756523>,  <42.898449, 30.447754, 26.883144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730389, 30.787935, 26.756523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585088, -0.012769, -0.810869,
		-0.693649, -0.525896, -0.492225,
		-0.420147, 0.850453, -0.316552,
		42.604343, 31.043072, 26.661558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878105, 30.367548, 26.150640>,  <42.898449, 30.447754, 26.883144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878105, 30.367548, 26.150640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.833580, 30.761503, 26.203709>,  <42.806866, 30.997877, 26.235550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.833580, 30.761503, 26.203709>,  <42.878105, 30.367548, 26.150640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833580, 30.761503, 26.203709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699906, 0.172466, -0.693100,
		-0.705508, 0.015707, -0.708528,
		-0.111310, 0.984890, 0.132670,
		42.800186, 31.056971, 26.243509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970135, 30.684589, 25.455067>,  <42.878105, 30.367548, 26.150640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970135, 30.684589, 25.455067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.996292, 31.007000, 25.690369>,  <43.011986, 31.200447, 25.831549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.996292, 31.007000, 25.690369>,  <42.970135, 30.684589, 25.455067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996292, 31.007000, 25.690369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602889, 0.437839, -0.666950,
		-0.795141, 0.398266, -0.457313,
		0.065394, 0.806028, 0.588254,
		43.015911, 31.248808, 25.866844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798054, 31.258617, 25.025543>,  <42.970135, 30.684589, 25.455067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798054, 31.258617, 25.025543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.021038, 31.382103, 25.333811>,  <43.154827, 31.456194, 25.518772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.021038, 31.382103, 25.333811>,  <42.798054, 31.258617, 25.025543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.021038, 31.382103, 25.333811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604102, 0.485918, -0.631621,
		-0.569472, 0.817668, 0.084387,
		0.557461, 0.308712, 0.770671,
		43.188278, 31.474716, 25.565012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950581, 31.902597, 24.875418>,  <42.798054, 31.258617, 25.025543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950581, 31.902597, 24.875418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.231941, 31.815914, 25.146200>,  <43.400757, 31.763905, 25.308670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.231941, 31.815914, 25.146200>,  <42.950581, 31.902597, 24.875418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231941, 31.815914, 25.146200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688756, 0.443130, -0.573803,
		-0.175632, 0.869870, 0.460955,
		0.703397, -0.216707, 0.676956,
		43.442959, 31.750902, 25.349287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.270050, 32.540165, 25.027229>,  <42.950581, 31.902597, 24.875418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.270050, 32.540165, 25.027229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.542969, 32.265881, 25.128639>,  <43.706718, 32.101311, 25.189486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.542969, 32.265881, 25.128639>,  <43.270050, 32.540165, 25.027229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542969, 32.265881, 25.128639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691792, 0.493428, -0.527212,
		0.236418, 0.535101, 0.811032,
		0.682298, -0.685708, 0.253524,
		43.747658, 32.060169, 25.204697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842075, 32.940578, 25.344667>,  <43.270050, 32.540165, 25.027229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842075, 32.940578, 25.344667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.979057, 32.573853, 25.262518>,  <44.061249, 32.353817, 25.213228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.979057, 32.573853, 25.262518>,  <43.842075, 32.940578, 25.344667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979057, 32.573853, 25.262518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854733, 0.394766, -0.337032,
		0.390069, -0.060120, 0.918821,
		0.342457, -0.916813, -0.205372,
		44.081795, 32.298809, 25.200907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585609, 32.947144, 25.501736>,  <43.842075, 32.940578, 25.344667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585609, 32.947144, 25.501736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.567329, 32.642822, 25.242785>,  <44.556362, 32.460232, 25.087414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.567329, 32.642822, 25.242785>,  <44.585609, 32.947144, 25.501736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567329, 32.642822, 25.242785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813670, 0.347606, -0.465952,
		0.579528, -0.548046, 0.603153,
		-0.045704, -0.760799, -0.647376,
		44.553619, 32.414581, 25.048573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.345577, 32.683407, 25.429785>,  <44.585609, 32.947144, 25.501736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.345577, 32.683407, 25.429785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.135300, 32.557365, 25.113720>,  <45.009132, 32.481743, 24.924082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.135300, 32.557365, 25.113720>,  <45.345577, 32.683407, 25.429785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135300, 32.557365, 25.113720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777459, 0.199023, -0.596614,
		0.345254, -0.927956, 0.140352,
		-0.525698, -0.315101, -0.790160,
		44.977589, 32.462837, 24.876671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.779629, 32.282654, 25.123928>,  <45.345577, 32.683407, 25.429785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.779629, 32.282654, 25.123928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.517010, 32.319538, 24.824478>,  <45.359440, 32.341667, 24.644808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.517010, 32.319538, 24.824478>,  <45.779629, 32.282654, 25.123928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.517010, 32.319538, 24.824478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754213, 0.066582, -0.653246,
		-0.010390, -0.993511, -0.113259,
		-0.656548, 0.092209, -0.748627,
		45.320045, 32.347198, 24.599890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940929, 31.801071, 24.516483>,  <45.779629, 32.282654, 25.123928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.940929, 31.801071, 24.516483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.747086, 32.122002, 24.377100>,  <45.630779, 32.314560, 24.293470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.747086, 32.122002, 24.377100>,  <45.940929, 31.801071, 24.516483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747086, 32.122002, 24.377100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745665, 0.170649, -0.644099,
		-0.457314, -0.571971, -0.680965,
		-0.484612, 0.802327, -0.348459,
		45.601704, 32.362701, 24.272562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.875805, 31.756006, 23.784700>,  <45.940929, 31.801071, 24.516483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.875805, 31.756006, 23.784700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.807106, 32.144733, 23.849285>,  <45.765884, 32.377972, 23.888037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.807106, 32.144733, 23.849285>,  <45.875805, 31.756006, 23.784700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.807106, 32.144733, 23.849285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380228, 0.216592, -0.899174,
		-0.908806, -0.093039, -0.406713,
		-0.171749, 0.971819, 0.161464,
		45.755581, 32.436279, 23.897724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799664, 31.979012, 23.111670>,  <45.875805, 31.756006, 23.784700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799664, 31.979012, 23.111670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.877193, 32.315716, 23.313211>,  <45.923710, 32.517738, 23.434137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.877193, 32.315716, 23.313211>,  <45.799664, 31.979012, 23.111670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.877193, 32.315716, 23.313211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501474, 0.356414, -0.788348,
		-0.843182, 0.405471, -0.353040,
		0.193824, 0.841761, 0.503855,
		45.935341, 32.568245, 23.464369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.755852, 32.486652, 22.598629>,  <45.799664, 31.979012, 23.111670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.755852, 32.486652, 22.598629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.944241, 32.670830, 22.899609>,  <46.057274, 32.781338, 23.080196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.944241, 32.670830, 22.899609>,  <45.755852, 32.486652, 22.598629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.944241, 32.670830, 22.899609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539974, 0.524034, -0.658647,
		-0.697578, 0.716506, -0.001822,
		0.470970, 0.460442, 0.752449,
		46.085533, 32.808964, 23.125343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.547039, 33.255566, 22.595491>,  <45.755852, 32.486652, 22.598629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.547039, 33.255566, 22.595491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.923084, 33.194393, 22.717346>,  <46.148712, 33.157688, 22.790459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.923084, 33.194393, 22.717346>,  <45.547039, 33.255566, 22.595491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.923084, 33.194393, 22.717346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318735, 0.711201, -0.626579,
		-0.120834, 0.686152, 0.717352,
		0.940110, -0.152933, 0.304638,
		46.205116, 33.148514, 22.808737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986641, 33.460808, 22.316399>,  <45.547039, 33.255566, 22.595491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986641, 33.460808, 22.316399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.131100, 33.818298, 22.422850>,  <45.217777, 34.032791, 22.486721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.131100, 33.818298, 22.422850>,  <44.986641, 33.460808, 22.316399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131100, 33.818298, 22.422850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902575, -0.406747, 0.141119,
		0.234368, 0.189235, -0.953552,
		0.361150, 0.893726, 0.266127,
		45.239445, 34.086418, 22.502687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688671, 32.860764, 22.604839>,  <44.986641, 33.460808, 22.316399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688671, 32.860764, 22.604839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.431839, 32.571003, 22.504463>,  <44.277740, 32.397144, 22.444237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.431839, 32.571003, 22.504463>,  <44.688671, 32.860764, 22.604839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.431839, 32.571003, 22.504463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395068, -0.593171, 0.701477,
		-0.657003, 0.351266, 0.667053,
		-0.642081, -0.724403, -0.250941,
		44.239216, 32.353683, 22.429180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036663, 32.755157, 21.912113>,  <44.688671, 32.860764, 22.604839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036663, 32.755157, 21.912113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.763504, 32.656918, 21.636917>,  <44.599609, 32.597973, 21.471800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.763504, 32.656918, 21.636917>,  <45.036663, 32.755157, 21.912113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763504, 32.656918, 21.636917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730501, 0.223948, 0.645148,
		-0.004371, 0.943149, -0.332342,
		-0.682898, -0.245596, -0.687992,
		44.558636, 32.583241, 21.430519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414211, 33.265503, 21.905901>,  <45.036663, 32.755157, 21.912113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414211, 33.265503, 21.905901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.271305, 32.930725, 21.740067>,  <44.185562, 32.729858, 21.640566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.271305, 32.930725, 21.740067>,  <44.414211, 33.265503, 21.905901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271305, 32.930725, 21.740067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845993, 0.101876, 0.523372,
		-0.395798, 0.537721, -0.744447,
		-0.357269, -0.836946, -0.414585,
		44.164124, 32.679642, 21.615690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743446, 33.403202, 21.599205>,  <44.414211, 33.265503, 21.905901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743446, 33.403202, 21.599205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.772835, 33.019470, 21.708231>,  <43.790466, 32.789230, 21.773645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.772835, 33.019470, 21.708231>,  <43.743446, 33.403202, 21.599205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772835, 33.019470, 21.708231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887836, 0.061572, 0.456023,
		-0.454258, -0.275494, -0.847203,
		0.073468, -0.959329, 0.272563,
		43.794876, 32.731670, 21.789999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121635, 33.055523, 21.512999>,  <43.743446, 33.403202, 21.599205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121635, 33.055523, 21.512999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.295753, 32.806484, 21.773117>,  <43.400227, 32.657059, 21.929188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.295753, 32.806484, 21.773117>,  <43.121635, 33.055523, 21.512999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295753, 32.806484, 21.773117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717610, 0.196227, 0.668230,
		-0.543646, -0.757538, -0.361367,
		0.435300, -0.622601, 0.650294,
		43.426342, 32.619705, 21.968204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596470, 32.721046, 21.773466>,  <43.121635, 33.055523, 21.512999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596470, 32.721046, 21.773466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.886574, 32.641506, 22.037121>,  <43.060635, 32.593781, 22.195312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.886574, 32.641506, 22.037121>,  <42.596470, 32.721046, 21.773466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886574, 32.641506, 22.037121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647273, 0.129298, 0.751212,
		-0.234605, -0.971463, -0.034938,
		0.725257, -0.198853, 0.659135,
		43.104153, 32.581852, 22.234861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351845, 32.060421, 22.170443>,  <42.596470, 32.721046, 21.773466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351845, 32.060421, 22.170443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.628441, 32.258713, 22.380621>,  <42.794399, 32.377689, 22.506727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.628441, 32.258713, 22.380621>,  <42.351845, 32.060421, 22.170443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628441, 32.258713, 22.380621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610738, 0.012729, 0.791730,
		0.385795, -0.868384, 0.311562,
		0.691492, 0.495728, 0.525445,
		42.835888, 32.407433, 22.538254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512573, 31.555315, 22.762995>,  <42.351845, 32.060421, 22.170443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512573, 31.555315, 22.762995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.628494, 31.919186, 22.881992>,  <42.698048, 32.137508, 22.953390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.628494, 31.919186, 22.881992>,  <42.512573, 31.555315, 22.762995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628494, 31.919186, 22.881992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661136, -0.034478, 0.749473,
		0.692036, -0.413882, 0.591429,
		0.289802, 0.909678, 0.297492,
		42.715435, 32.192089, 22.971239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555271, 31.571106, 23.405672>,  <42.512573, 31.555315, 22.762995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555271, 31.571106, 23.405672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.540897, 31.968180, 23.359558>,  <42.532272, 32.206425, 23.331890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.540897, 31.968180, 23.359558>,  <42.555271, 31.571106, 23.405672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540897, 31.968180, 23.359558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671623, 0.061430, 0.738342,
		0.740021, 0.103962, 0.664501,
		-0.035939, 0.992682, -0.115283,
		42.530117, 32.265984, 23.324974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699413, 31.881578, 23.986895>,  <42.555271, 31.571106, 23.405672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699413, 31.881578, 23.986895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.476902, 32.164192, 23.811911>,  <42.343395, 32.333759, 23.706921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.476902, 32.164192, 23.811911>,  <42.699413, 31.881578, 23.986895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476902, 32.164192, 23.811911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600611, 0.021980, 0.799239,
		0.574304, 0.707339, 0.412124,
		-0.556275, 0.706533, -0.437459,
		42.310020, 32.376152, 23.680674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.696178, 32.428028, 24.417223>,  <42.699413, 31.881578, 23.986895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.696178, 32.428028, 24.417223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.356621, 32.452019, 24.207167>,  <42.152885, 32.466412, 24.081133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.356621, 32.452019, 24.207167>,  <42.696178, 32.428028, 24.417223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356621, 32.452019, 24.207167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528511, -0.109214, 0.841872,
		-0.006862, 0.992207, 0.124408,
		-0.848899, 0.059974, -0.525142,
		42.101952, 32.470013, 24.049623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254078, 32.911575, 24.885092>,  <42.696178, 32.428028, 24.417223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254078, 32.911575, 24.885092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.009682, 32.725403, 24.628944>,  <41.863045, 32.613701, 24.475256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.009682, 32.725403, 24.628944>,  <42.254078, 32.911575, 24.885092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009682, 32.725403, 24.628944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567060, -0.307133, 0.764272,
		-0.552392, 0.830088, -0.076271,
		-0.610988, -0.465428, -0.640368,
		41.826385, 32.585773, 24.436834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617596, 33.059925, 25.089504>,  <42.254078, 32.911575, 24.885092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617596, 33.059925, 25.089504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.522747, 32.748589, 24.856966>,  <41.465836, 32.561787, 24.717443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.522747, 32.748589, 24.856966>,  <41.617596, 33.059925, 25.089504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522747, 32.748589, 24.856966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610392, -0.346175, 0.712450,
		-0.755773, 0.523788, -0.393005,
		-0.237124, -0.778337, -0.581345,
		41.451611, 32.515087, 24.682562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858131, 33.011909, 25.069859>,  <41.617596, 33.059925, 25.089504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858131, 33.011909, 25.069859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.980694, 32.643906, 24.972118>,  <41.054230, 32.423103, 24.913475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.980694, 32.643906, 24.972118>,  <40.858131, 33.011909, 25.069859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980694, 32.643906, 24.972118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690083, -0.391497, 0.608700,
		-0.655669, -0.017887, -0.754836,
		0.306404, -0.920006, -0.244349,
		41.072617, 32.367905, 24.898813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255608, 32.686665, 24.798212>,  <40.858131, 33.011909, 25.069859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255608, 32.686665, 24.798212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.516079, 32.396748, 24.888233>,  <40.672363, 32.222797, 24.942245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.516079, 32.396748, 24.888233>,  <40.255608, 32.686665, 24.798212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516079, 32.396748, 24.888233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683262, -0.430813, 0.589537,
		-0.330333, -0.537664, -0.775756,
		0.651179, -0.724787, 0.225054,
		40.711433, 32.179310, 24.955750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923893, 32.105244, 24.679123>,  <40.255608, 32.686665, 24.798212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923893, 32.105244, 24.679123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220020, 31.988619, 24.921417>,  <40.397697, 31.918644, 25.066793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220020, 31.988619, 24.921417>,  <39.923893, 32.105244, 24.679123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220020, 31.988619, 24.921417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665207, -0.447828, 0.597452,
		0.097073, -0.845247, -0.525485,
		0.740322, -0.291560, 0.605736,
		40.442116, 31.901150, 25.103138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672901, 31.443018, 24.911303>,  <39.923893, 32.105244, 24.679123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672901, 31.443018, 24.911303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.949150, 31.588421, 25.161392>,  <40.114899, 31.675663, 25.311445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.949150, 31.588421, 25.161392>,  <39.672901, 31.443018, 24.911303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949150, 31.588421, 25.161392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639960, -0.095535, 0.762446,
		0.336886, -0.926679, 0.166652,
		0.690622, 0.363508, 0.625222,
		40.156338, 31.697474, 25.348959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742302, 30.907602, 25.426367>,  <39.672901, 31.443018, 24.911303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742302, 30.907602, 25.426367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.855202, 31.268179, 25.557663>,  <39.922939, 31.484526, 25.636440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.855202, 31.268179, 25.557663>,  <39.742302, 30.907602, 25.426367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855202, 31.268179, 25.557663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689478, -0.047297, 0.722761,
		0.667051, -0.430310, 0.608174,
		0.282246, 0.901441, 0.328239,
		39.939877, 31.538610, 25.656136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771942, 30.878006, 26.151785>,  <39.742302, 30.907602, 25.426367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771942, 30.878006, 26.151785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.767143, 31.270626, 26.075451>,  <39.764263, 31.506197, 26.029652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.767143, 31.270626, 26.075451>,  <39.771942, 30.878006, 26.151785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767143, 31.270626, 26.075451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769365, 0.112840, 0.628765,
		0.638697, 0.154365, 0.753815,
		-0.011999, 0.981549, -0.190834,
		39.763542, 31.565090, 26.018200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642330, 31.039757, 26.808960>,  <39.771942, 30.878006, 26.151785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642330, 31.039757, 26.808960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.539169, 31.361860, 26.595402>,  <39.477272, 31.555122, 26.467266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.539169, 31.361860, 26.595402>,  <39.642330, 31.039757, 26.808960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539169, 31.361860, 26.595402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689596, 0.233621, 0.685477,
		0.676716, 0.544959, 0.495051,
		-0.257903, 0.805258, -0.533896,
		39.461800, 31.603437, 26.435232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.158733, 32.346676, 32.408226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.920048, 32.557293, 32.166008>,  <40.776836, 32.683662, 32.020676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.920048, 32.557293, 32.166008>,  <41.158733, 32.346676, 32.408226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920048, 32.557293, 32.166008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106721, 0.695838, 0.710225,
		0.795328, 0.488423, -0.359021,
		-0.596712, 0.526547, -0.605544,
		40.741035, 32.715256, 31.984344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438118, 33.064362, 32.404980>,  <41.158733, 32.346676, 32.408226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438118, 33.064362, 32.404980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.053219, 33.066185, 32.296124>,  <40.822281, 33.067280, 32.230812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.053219, 33.066185, 32.296124>,  <41.438118, 33.064362, 32.404980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053219, 33.066185, 32.296124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181377, 0.734767, 0.653620,
		0.202936, 0.678304, -0.706201,
		-0.962247, 0.004554, -0.272139,
		40.764545, 33.067551, 32.214481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279671, 33.855267, 32.447941>,  <41.438118, 33.064362, 32.404980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279671, 33.855267, 32.447941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.920986, 33.678974, 32.431660>,  <40.705776, 33.573196, 32.421890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.920986, 33.678974, 32.431660>,  <41.279671, 33.855267, 32.447941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920986, 33.678974, 32.431660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357928, 0.667982, 0.652447,
		-0.260365, 0.599628, -0.756740,
		-0.896715, -0.440733, -0.040705,
		40.651970, 33.546753, 32.419449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658955, 34.361286, 32.528065>,  <41.279671, 33.855267, 32.447941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658955, 34.361286, 32.528065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.499130, 34.012669, 32.641739>,  <40.403236, 33.803497, 32.709942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.499130, 34.012669, 32.641739>,  <40.658955, 34.361286, 32.528065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499130, 34.012669, 32.641739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334212, 0.427164, 0.840139,
		-0.853611, 0.240711, -0.461959,
		-0.399563, -0.871544, 0.284183,
		40.379261, 33.751205, 32.726994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043343, 34.561924, 32.749702>,  <40.658955, 34.361286, 32.528065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043343, 34.561924, 32.749702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.074417, 34.195408, 32.906864>,  <40.093060, 33.975498, 33.001160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.074417, 34.195408, 32.906864>,  <40.043343, 34.561924, 32.749702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074417, 34.195408, 32.906864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441975, 0.321602, 0.837395,
		-0.893658, -0.238704, -0.379995,
		0.077682, -0.916293, 0.392903,
		40.097721, 33.920521, 33.024734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404274, 34.349983, 32.980419>,  <40.043343, 34.561924, 32.749702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404274, 34.349983, 32.980419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.647465, 34.117695, 33.196987>,  <39.793377, 33.978321, 33.326927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.647465, 34.117695, 33.196987>,  <39.404274, 34.349983, 32.980419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647465, 34.117695, 33.196987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563327, 0.165030, 0.809585,
		-0.559491, -0.797203, -0.226800,
		0.607974, -0.580718, 0.541419,
		39.829857, 33.943481, 33.359413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030289, 33.820545, 33.467617>,  <39.404274, 34.349983, 32.980419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030289, 33.820545, 33.467617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.392200, 33.824371, 33.637924>,  <39.609348, 33.826668, 33.740108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.392200, 33.824371, 33.637924>,  <39.030289, 33.820545, 33.467617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392200, 33.824371, 33.637924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425865, 0.014227, 0.904675,
		0.002568, -0.999853, 0.016933,
		0.904783, 0.009535, 0.425766,
		39.663635, 33.827240, 33.765656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921387, 33.445328, 34.052303>,  <39.030289, 33.820545, 33.467617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921387, 33.445328, 34.052303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.257488, 33.645908, 34.134781>,  <39.459148, 33.766254, 34.184269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.257488, 33.645908, 34.134781>,  <38.921387, 33.445328, 34.052303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257488, 33.645908, 34.134781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320577, 0.152781, 0.934820,
		0.437263, -0.851590, 0.289129,
		0.840257, 0.501450, 0.206195,
		39.509567, 33.796345, 34.196640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095501, 33.145184, 34.686169>,  <38.921387, 33.445328, 34.052303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095501, 33.145184, 34.686169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.281841, 33.498356, 34.662785>,  <39.393646, 33.710258, 34.648754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.281841, 33.498356, 34.662785>,  <39.095501, 33.145184, 34.686169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281841, 33.498356, 34.662785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333718, 0.236499, 0.912524,
		0.819520, -0.405592, 0.404823,
		0.465853, 0.882929, -0.058463,
		39.421597, 33.763233, 34.645245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352539, 33.162834, 35.310501>,  <39.095501, 33.145184, 34.686169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352539, 33.162834, 35.310501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363251, 33.542061, 35.183727>,  <39.369678, 33.769596, 35.107662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363251, 33.542061, 35.183727>,  <39.352539, 33.162834, 35.310501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363251, 33.542061, 35.183727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228726, 0.314446, 0.921308,
		0.973123, 0.047820, 0.225268,
		0.026777, 0.948070, -0.316932,
		39.371284, 33.826481, 35.088646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577343, 33.585979, 35.979748>,  <39.352539, 33.162834, 35.310501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577343, 33.585979, 35.979748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.422180, 33.845829, 35.718208>,  <39.329082, 34.001740, 35.561287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.422180, 33.845829, 35.718208>,  <39.577343, 33.585979, 35.979748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422180, 33.845829, 35.718208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491906, 0.454003, 0.742906,
		0.779459, 0.609809, 0.143444,
		-0.387907, 0.649626, -0.653845,
		39.305809, 34.040718, 35.522053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735458, 34.301464, 36.264301>,  <39.577343, 33.585979, 35.979748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735458, 34.301464, 36.264301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.415257, 34.264027, 36.027512>,  <39.223137, 34.241566, 35.885437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.415257, 34.264027, 36.027512>,  <39.735458, 34.301464, 36.264301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415257, 34.264027, 36.027512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584654, 0.339173, 0.736982,
		0.131805, 0.936056, -0.326229,
		-0.800504, -0.093593, -0.591974,
		39.175106, 34.235950, 35.849918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249687, 34.852005, 36.435619>,  <39.735458, 34.301464, 36.264301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249687, 34.852005, 36.435619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.010700, 34.580681, 36.264542>,  <38.867310, 34.417885, 36.161896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.010700, 34.580681, 36.264542>,  <39.249687, 34.852005, 36.435619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010700, 34.580681, 36.264542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697346, 0.176171, 0.694747,
		-0.395909, 0.713340, -0.578275,
		-0.597466, -0.678314, -0.427697,
		38.831459, 34.377186, 36.136234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498013, 35.208805, 36.281597>,  <39.249687, 34.852005, 36.435619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498013, 35.208805, 36.281597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.457741, 34.818794, 36.360771>,  <38.433578, 34.584785, 36.408276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.457741, 34.818794, 36.360771>,  <38.498013, 35.208805, 36.281597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457741, 34.818794, 36.360771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689236, 0.211827, 0.692880,
		-0.717508, -0.066671, -0.693352,
		-0.100676, -0.975030, 0.197940,
		38.427540, 34.526283, 36.420155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714256, 35.650536, 36.847828>,  <38.498013, 35.208805, 36.281597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714256, 35.650536, 36.847828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789124, 36.002743, 37.022030>,  <38.834045, 36.214066, 37.126549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789124, 36.002743, 37.022030>,  <38.714256, 35.650536, 36.847828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789124, 36.002743, 37.022030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099202, 0.458012, -0.883393,
		-0.977306, 0.122139, 0.173074,
		0.187167, 0.880515, 0.435502,
		38.845272, 36.266899, 37.152679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271599, 36.065273, 36.466503>,  <38.714256, 35.650536, 36.847828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271599, 36.065273, 36.466503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.556057, 36.298832, 36.623138>,  <38.726730, 36.438969, 36.717117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.556057, 36.298832, 36.623138>,  <38.271599, 36.065273, 36.466503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556057, 36.298832, 36.623138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129252, 0.438905, -0.889189,
		-0.691066, 0.682951, 0.236653,
		0.711141, 0.583901, 0.391585,
		38.769398, 36.474003, 36.740616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072975, 36.771378, 36.302979>,  <38.271599, 36.065273, 36.466503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072975, 36.771378, 36.302979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.463154, 36.755188, 36.389572>,  <38.697262, 36.745472, 36.441528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.463154, 36.755188, 36.389572>,  <38.072975, 36.771378, 36.302979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463154, 36.755188, 36.389572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213609, 0.413151, -0.885255,
		-0.053609, 0.909762, 0.411653,
		0.975447, -0.040476, 0.216482,
		38.755787, 36.743046, 36.454517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316723, 37.513283, 36.043461>,  <38.072975, 36.771378, 36.302979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316723, 37.513283, 36.043461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.639317, 37.283192, 36.098167>,  <38.832870, 37.145138, 36.130993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.639317, 37.283192, 36.098167>,  <38.316723, 37.513283, 36.043461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639317, 37.283192, 36.098167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394727, 0.351588, -0.848868,
		0.440204, 0.738581, 0.510605,
		0.806480, -0.575225, 0.136768,
		38.881260, 37.110622, 36.139198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920322, 37.952171, 35.769562>,  <38.316723, 37.513283, 36.043461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920322, 37.952171, 35.769562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.044243, 37.571854, 35.770481>,  <39.118595, 37.343662, 35.771034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.044243, 37.571854, 35.770481>,  <38.920322, 37.952171, 35.769562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044243, 37.571854, 35.770481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434680, 0.139478, -0.889719,
		0.845622, 0.276636, 0.456503,
		0.309801, -0.950799, 0.002303,
		39.137184, 37.286613, 35.771172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251030, 38.019764, 35.167332>,  <38.920322, 37.952171, 35.769562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251030, 38.019764, 35.167332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.318939, 37.643280, 35.284157>,  <39.359684, 37.417389, 35.354252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.318939, 37.643280, 35.284157>,  <39.251030, 38.019764, 35.167332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318939, 37.643280, 35.284157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443021, -0.191833, -0.875746,
		0.880289, 0.278068, 0.384408,
		0.169775, -0.941211, 0.292059,
		39.369873, 37.360916, 35.371773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997555, 37.894745, 35.276066>,  <39.251030, 38.019764, 35.167332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997555, 37.894745, 35.276066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.781677, 37.575237, 35.169708>,  <39.652149, 37.383533, 35.105896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.781677, 37.575237, 35.169708>,  <39.997555, 37.894745, 35.276066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781677, 37.575237, 35.169708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529806, -0.076811, -0.844634,
		0.654242, -0.596717, 0.464646,
		-0.539697, -0.798768, -0.265891,
		39.619770, 37.335606, 35.089939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528297, 37.336178, 35.152927>,  <39.997555, 37.894745, 35.276066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528297, 37.336178, 35.152927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.214905, 37.222389, 34.931938>,  <40.026867, 37.154114, 34.799343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.214905, 37.222389, 34.931938>,  <40.528297, 37.336178, 35.152927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214905, 37.222389, 34.931938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598095, -0.103963, -0.794654,
		0.168623, -0.953029, 0.251597,
		-0.783485, -0.284476, -0.552471,
		39.979858, 37.137047, 34.766197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775635, 36.809368, 34.747311>,  <40.528297, 37.336178, 35.152927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775635, 36.809368, 34.747311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.441315, 36.941700, 34.572041>,  <40.240723, 37.021099, 34.466881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.441315, 36.941700, 34.572041>,  <40.775635, 36.809368, 34.747311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441315, 36.941700, 34.572041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414792, -0.142385, -0.898707,
		-0.359708, -0.932887, -0.018220,
		-0.835798, 0.330829, -0.438172,
		40.190575, 37.040947, 34.440590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664665, 36.327465, 34.278130>,  <40.775635, 36.809368, 34.747311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664665, 36.327465, 34.278130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.459282, 36.633675, 34.123039>,  <40.336052, 36.817402, 34.029984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.459282, 36.633675, 34.123039>,  <40.664665, 36.327465, 34.278130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459282, 36.633675, 34.123039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353086, -0.223339, -0.908543,
		-0.782110, -0.603396, -0.155623,
		-0.513454, 0.765528, -0.387727,
		40.305244, 36.863335, 34.006721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392570, 36.134861, 33.637478>,  <40.664665, 36.327465, 34.278130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392570, 36.134861, 33.637478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.397160, 36.534271, 33.616287>,  <40.399914, 36.773918, 33.603573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.397160, 36.534271, 33.616287>,  <40.392570, 36.134861, 33.637478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397160, 36.534271, 33.616287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384069, -0.053315, -0.921764,
		-0.923233, -0.009770, -0.384117,
		0.011474, 0.998530, -0.052974,
		40.400600, 36.833832, 33.600395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249401, 36.156853, 32.940739>,  <40.392570, 36.134861, 33.637478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249401, 36.156853, 32.940739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366436, 36.519669, 33.061844>,  <40.436657, 36.737358, 33.134506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366436, 36.519669, 33.061844>,  <40.249401, 36.156853, 32.940739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366436, 36.519669, 33.061844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451549, 0.148044, -0.879878,
		-0.842911, 0.394152, -0.366259,
		0.292583, 0.907043, 0.302767,
		40.454212, 36.791782, 33.152676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240677, 36.526592, 32.379818>,  <40.249401, 36.156853, 32.940739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240677, 36.526592, 32.379818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.443096, 36.792686, 32.599411>,  <40.564548, 36.952343, 32.731167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.443096, 36.792686, 32.599411>,  <40.240677, 36.526592, 32.379818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443096, 36.792686, 32.599411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601647, 0.183808, -0.777326,
		-0.618010, 0.723657, -0.307220,
		0.506048, 0.665233, 0.548981,
		40.594910, 36.992256, 32.764107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272251, 37.249794, 32.008846>,  <40.240677, 36.526592, 32.379818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272251, 37.249794, 32.008846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.582447, 37.193710, 32.255085>,  <40.768566, 37.160061, 32.402828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.582447, 37.193710, 32.255085>,  <40.272251, 37.249794, 32.008846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582447, 37.193710, 32.255085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629742, 0.102076, -0.770068,
		0.045131, 0.984846, 0.167453,
		0.775492, -0.140206, 0.615593,
		40.815094, 37.151649, 32.439762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267441, 38.056602, 31.874359>,  <40.272251, 37.249794, 32.008846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267441, 38.056602, 31.874359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973755, 38.064514, 31.602909>,  <39.797543, 38.069260, 31.440039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973755, 38.064514, 31.602909>,  <40.267441, 38.056602, 31.874359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973755, 38.064514, 31.602909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641454, -0.347643, 0.683872,
		-0.222396, 0.937418, 0.267930,
		-0.734218, 0.019775, -0.678625,
		39.753490, 38.070446, 31.399321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723782, 38.480873, 32.159866>,  <40.267441, 38.056602, 31.874359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723782, 38.480873, 32.159866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.540142, 38.272976, 31.871674>,  <39.429958, 38.148239, 31.698757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.540142, 38.272976, 31.871674>,  <39.723782, 38.480873, 32.159866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540142, 38.272976, 31.871674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806132, -0.097101, 0.583715,
		-0.373341, 0.848787, -0.374403,
		-0.459094, -0.519743, -0.720486,
		39.402412, 38.117054, 31.655527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975491, 38.804836, 32.060978>,  <39.723782, 38.480873, 32.159866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975491, 38.804836, 32.060978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.952950, 38.432232, 31.917250>,  <38.939423, 38.208668, 31.831013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.952950, 38.432232, 31.917250>,  <38.975491, 38.804836, 32.060978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952950, 38.432232, 31.917250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791082, -0.177901, 0.585270,
		-0.609109, 0.317237, -0.726875,
		-0.056357, -0.931511, -0.359322,
		38.936043, 38.152779, 31.809454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296822, 38.733200, 31.996616>,  <38.975491, 38.804836, 32.060978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296822, 38.733200, 31.996616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.450333, 38.364017, 32.008358>,  <38.542439, 38.142506, 32.015404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.450333, 38.364017, 32.008358>,  <38.296822, 38.733200, 31.996616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450333, 38.364017, 32.008358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815925, -0.324046, 0.478812,
		-0.432412, -0.207708, -0.877427,
		0.383779, -0.922958, 0.029353,
		38.565468, 38.087132, 32.017162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650917, 38.389221, 31.832769>,  <38.296822, 38.733200, 31.996616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650917, 38.389221, 31.832769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.921131, 38.143944, 31.996544>,  <38.083260, 37.996777, 32.094810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.921131, 38.143944, 31.996544>,  <37.650917, 38.389221, 31.832769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921131, 38.143944, 31.996544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701834, -0.364556, 0.611987,
		-0.226004, -0.700778, -0.676633,
		0.675538, -0.613195, 0.409439,
		38.123791, 37.959984, 32.119373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373196, 37.691319, 31.727371>,  <37.650917, 38.389221, 31.832769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373196, 37.691319, 31.727371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.639214, 37.632225, 32.020187>,  <37.798824, 37.596771, 32.195877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.639214, 37.632225, 32.020187>,  <37.373196, 37.691319, 31.727371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639214, 37.632225, 32.020187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664889, -0.563469, 0.490332,
		0.340046, -0.812822, -0.472959,
		0.665050, -0.147730, 0.732042,
		37.838730, 37.587906, 32.239799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360786, 37.006477, 31.774055>,  <37.373196, 37.691319, 31.727371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360786, 37.006477, 31.774055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.512337, 37.155315, 32.112995>,  <37.603268, 37.244617, 32.316357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.512337, 37.155315, 32.112995>,  <37.360786, 37.006477, 31.774055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512337, 37.155315, 32.112995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641043, -0.554854, 0.530285,
		0.667470, -0.744098, 0.028307,
		0.378878, 0.372096, 0.847347,
		37.625999, 37.266945, 32.367199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286900, 36.450794, 32.348869>,  <37.360786, 37.006477, 31.774055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286900, 36.450794, 32.348869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.368610, 36.798782, 32.528389>,  <37.417637, 37.007576, 32.636101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.368610, 36.798782, 32.528389>,  <37.286900, 36.450794, 32.348869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368610, 36.798782, 32.528389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482544, -0.309401, 0.819403,
		0.851716, -0.383951, 0.356596,
		0.204279, 0.869973, 0.448795,
		37.429893, 37.059772, 32.663029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668011, 36.324966, 32.891865>,  <37.286900, 36.450794, 32.348869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668011, 36.324966, 32.891865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.492046, 36.677132, 32.962688>,  <37.386467, 36.888432, 33.005184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.492046, 36.677132, 32.962688>,  <37.668011, 36.324966, 32.891865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492046, 36.677132, 32.962688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522268, -0.411208, 0.747090,
		0.730557, 0.236180, 0.640707,
		-0.439912, 0.880413, 0.177061,
		37.360073, 36.941254, 33.015808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470459, 36.303162, 33.572235>,  <37.668011, 36.324966, 32.891865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470459, 36.303162, 33.572235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.214127, 36.595280, 33.477573>,  <37.060329, 36.770550, 33.420776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.214127, 36.595280, 33.477573>,  <37.470459, 36.303162, 33.572235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214127, 36.595280, 33.477573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669011, -0.380068, 0.638727,
		0.376517, 0.567637, 0.732136,
		-0.640826, 0.730299, -0.236654,
		37.021877, 36.814369, 33.406578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274578, 36.661736, 34.215313>,  <37.470459, 36.303162, 33.572235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274578, 36.661736, 34.215313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.975941, 36.712528, 33.954094>,  <36.796761, 36.743004, 33.797363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.975941, 36.712528, 33.954094>,  <37.274578, 36.661736, 34.215313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975941, 36.712528, 33.954094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612822, -0.513329, 0.600785,
		-0.258941, 0.848745, 0.461065,
		-0.746591, 0.126982, -0.653052,
		36.751965, 36.750622, 33.758179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695923, 37.045509, 34.595284>,  <37.274578, 36.661736, 34.215313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695923, 37.045509, 34.595284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.509300, 36.873371, 34.286186>,  <36.397327, 36.770088, 34.100727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.509300, 36.873371, 34.286186>,  <36.695923, 37.045509, 34.595284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509300, 36.873371, 34.286186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691248, -0.367649, 0.622101,
		-0.551817, 0.824400, -0.125949,
		-0.466555, -0.430348, -0.772740,
		36.369335, 36.744267, 34.054363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.216385, 38.983307, 28.379766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943287, 38.732292, 28.230070>,  <41.779430, 38.581684, 28.140253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943287, 38.732292, 28.230070>,  <42.216385, 38.983307, 28.379766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943287, 38.732292, 28.230070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635905, 0.258086, 0.727335,
		-0.359846, 0.734563, -0.575262,
		-0.682741, -0.627541, -0.374241,
		41.738464, 38.544029, 28.117798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622429, 39.341988, 28.557732>,  <42.216385, 38.983307, 28.379766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622429, 39.341988, 28.557732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495781, 38.972240, 28.472601>,  <41.419792, 38.750393, 28.421522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495781, 38.972240, 28.472601>,  <41.622429, 39.341988, 28.557732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495781, 38.972240, 28.472601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703135, 0.078117, 0.706752,
		-0.636675, 0.373416, -0.674690,
		-0.316617, -0.924369, -0.212826,
		41.400795, 38.694931, 28.408752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832275, 39.403831, 28.667364>,  <41.622429, 39.341988, 28.557732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832275, 39.403831, 28.667364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927208, 39.017815, 28.711857>,  <40.984165, 38.786205, 28.738552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927208, 39.017815, 28.711857>,  <40.832275, 39.403831, 28.667364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927208, 39.017815, 28.711857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747623, -0.108338, 0.655228,
		-0.620270, -0.238665, -0.747198,
		0.237329, -0.965040, 0.111232,
		40.998405, 38.728302, 28.745226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205650, 39.048752, 28.765142>,  <40.832275, 39.403831, 28.667364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205650, 39.048752, 28.765142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485455, 38.799019, 28.904215>,  <40.653339, 38.649178, 28.987659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485455, 38.799019, 28.904215>,  <40.205650, 39.048752, 28.765142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485455, 38.799019, 28.904215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624955, -0.298507, 0.721336,
		-0.346574, -0.721867, -0.598994,
		0.699513, -0.624341, 0.347679,
		40.695309, 38.611717, 29.008520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840782, 38.396053, 28.817495>,  <40.205650, 39.048752, 28.765142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840782, 38.396053, 28.817495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150177, 38.362728, 29.068819>,  <40.335815, 38.342731, 29.219612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150177, 38.362728, 29.068819>,  <39.840782, 38.396053, 28.817495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150177, 38.362728, 29.068819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569625, -0.526068, 0.631490,
		0.277919, -0.846352, -0.454368,
		0.773491, -0.083316, 0.628307,
		40.382225, 38.337734, 29.257311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729336, 37.820057, 29.246567>,  <39.840782, 38.396053, 28.817495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729336, 37.820057, 29.246567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020245, 38.004028, 29.450348>,  <40.194790, 38.114410, 29.572617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020245, 38.004028, 29.450348>,  <39.729336, 37.820057, 29.246567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020245, 38.004028, 29.450348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499832, -0.153775, 0.852362,
		0.470370, -0.874537, 0.118053,
		0.727269, 0.459932, 0.509453,
		40.238426, 38.142010, 29.603184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889961, 37.342472, 29.862881>,  <39.729336, 37.820057, 29.246567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889961, 37.342472, 29.862881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039459, 37.697018, 29.972191>,  <40.129158, 37.909744, 30.037777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039459, 37.697018, 29.972191>,  <39.889961, 37.342472, 29.862881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039459, 37.697018, 29.972191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270323, -0.177747, 0.946219,
		0.887266, -0.427518, 0.173172,
		0.373745, 0.886360, 0.273277,
		40.151585, 37.962925, 30.054174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321991, 37.222282, 30.436157>,  <39.889961, 37.342472, 29.862881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321991, 37.222282, 30.436157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189220, 37.599171, 30.454237>,  <40.109558, 37.825302, 30.465084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189220, 37.599171, 30.454237>,  <40.321991, 37.222282, 30.436157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189220, 37.599171, 30.454237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509253, -0.219321, 0.832202,
		0.794032, 0.253212, 0.552628,
		-0.331926, 0.942222, 0.045200,
		40.089642, 37.881836, 30.467796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394997, 37.370766, 31.138649>,  <40.321991, 37.222282, 30.436157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394997, 37.370766, 31.138649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131596, 37.644814, 31.014086>,  <39.973553, 37.809242, 30.939348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131596, 37.644814, 31.014086>,  <40.394997, 37.370766, 31.138649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131596, 37.644814, 31.014086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538218, -0.139515, 0.831178,
		0.526014, 0.714941, 0.460617,
		-0.658507, 0.685123, -0.311408,
		39.934044, 37.850349, 30.920664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923393, 37.716248, 31.685440>,  <40.394997, 37.370766, 31.138649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923393, 37.716248, 31.685440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093155, 37.458561, 31.939957>,  <41.195011, 37.303951, 32.092667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093155, 37.458561, 31.939957>,  <40.923393, 37.716248, 31.685440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093155, 37.458561, 31.939957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828974, -0.006251, -0.559253,
		0.364255, 0.764820, 0.531383,
		0.424406, -0.644213, 0.636293,
		41.220478, 37.265297, 32.130844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764519, 37.974281, 31.707809>,  <40.923393, 37.716248, 31.685440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764519, 37.974281, 31.707809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738968, 37.595310, 31.833218>,  <41.723637, 37.367928, 31.908463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738968, 37.595310, 31.833218>,  <41.764519, 37.974281, 31.707809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738968, 37.595310, 31.833218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856071, -0.213485, -0.470710,
		0.512896, 0.238328, 0.824704,
		-0.063878, -0.947430, 0.313521,
		41.719803, 37.311081, 31.927275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438385, 37.779503, 31.836592>,  <41.764519, 37.974281, 31.707809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438385, 37.779503, 31.836592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267654, 37.421322, 31.786013>,  <42.165215, 37.206413, 31.755665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267654, 37.421322, 31.786013>,  <42.438385, 37.779503, 31.836592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267654, 37.421322, 31.786013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803277, -0.311178, -0.507853,
		0.415410, -0.318337, 0.852113,
		-0.426827, -0.895450, -0.126446,
		42.139606, 37.152687, 31.748079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016113, 37.251602, 31.865673>,  <42.438385, 37.779503, 31.836592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016113, 37.251602, 31.865673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684822, 37.101791, 31.698931>,  <42.486046, 37.011906, 31.598885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684822, 37.101791, 31.698931>,  <43.016113, 37.251602, 31.865673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684822, 37.101791, 31.698931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560299, -0.539847, -0.628196,
		0.010238, -0.753853, 0.656963,
		-0.828227, -0.374528, -0.416856,
		42.436356, 36.989433, 31.573874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181751, 36.648338, 31.764330>,  <43.016113, 37.251602, 31.865673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181751, 36.648338, 31.764330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890186, 36.735268, 31.504650>,  <42.715248, 36.787426, 31.348843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890186, 36.735268, 31.504650>,  <43.181751, 36.648338, 31.764330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890186, 36.735268, 31.504650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543097, -0.393783, -0.741606,
		-0.416819, -0.893141, 0.168999,
		-0.728908, 0.217333, -0.649199,
		42.671513, 36.800465, 31.309891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324146, 36.145786, 31.369019>,  <43.181751, 36.648338, 31.764330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324146, 36.145786, 31.369019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072994, 36.377552, 31.161158>,  <42.922302, 36.516613, 31.036442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072994, 36.377552, 31.161158>,  <43.324146, 36.145786, 31.369019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072994, 36.377552, 31.161158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465715, -0.255252, -0.847323,
		-0.623595, -0.774030, -0.109575,
		-0.627884, 0.579417, -0.519651,
		42.884628, 36.551376, 31.005262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108192, 35.741394, 30.770802>,  <43.324146, 36.145786, 31.369019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108192, 35.741394, 30.770802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063992, 36.122189, 30.656603>,  <43.037472, 36.350666, 30.588083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063992, 36.122189, 30.656603>,  <43.108192, 35.741394, 30.770802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063992, 36.122189, 30.656603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462230, -0.205073, -0.862722,
		-0.879848, -0.227300, -0.417375,
		-0.110504, 0.951987, -0.285498,
		43.030842, 36.407784, 30.570953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803070, 35.751984, 30.120768>,  <43.108192, 35.741394, 30.770802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803070, 35.751984, 30.120768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910835, 36.136467, 30.144419>,  <42.975494, 36.367157, 30.158609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910835, 36.136467, 30.144419>,  <42.803070, 35.751984, 30.120768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910835, 36.136467, 30.144419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317102, -0.030570, -0.947899,
		-0.909319, 0.274129, -0.313037,
		0.269416, 0.961207, 0.059129,
		42.991661, 36.424828, 30.162157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612942, 36.070862, 29.448267>,  <42.803070, 35.751984, 30.120768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612942, 36.070862, 29.448267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881866, 36.326321, 29.598003>,  <43.043221, 36.479595, 29.687845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881866, 36.326321, 29.598003>,  <42.612942, 36.070862, 29.448267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881866, 36.326321, 29.598003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530398, -0.062816, -0.845418,
		-0.516408, 0.766933, -0.380968,
		0.672310, 0.638645, 0.374341,
		43.083561, 36.517914, 29.710306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761829, 36.702789, 28.973862>,  <42.612942, 36.070862, 29.448267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761829, 36.702789, 28.973862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082302, 36.640091, 29.204870>,  <43.274586, 36.602470, 29.343475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082302, 36.640091, 29.204870>,  <42.761829, 36.702789, 28.973862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082302, 36.640091, 29.204870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573088, -0.076832, -0.815884,
		0.172261, 0.984645, 0.028275,
		0.801184, -0.156749, 0.577523,
		43.322659, 36.593067, 29.378128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277779, 37.152855, 28.761395>,  <42.761829, 36.702789, 28.973862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277779, 37.152855, 28.761395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494423, 36.891769, 28.973289>,  <43.624409, 36.735119, 29.100426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494423, 36.891769, 28.973289>,  <43.277779, 37.152855, 28.761395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494423, 36.891769, 28.973289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679835, -0.030558, -0.732728,
		0.494448, 0.756991, 0.427185,
		0.541614, -0.652711, 0.529738,
		43.656906, 36.695957, 29.132212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020870, 37.386070, 28.719414>,  <43.277779, 37.152855, 28.761395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020870, 37.386070, 28.719414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038269, 36.993412, 28.793692>,  <44.048710, 36.757816, 28.838259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038269, 36.993412, 28.793692>,  <44.020870, 37.386070, 28.719414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038269, 36.993412, 28.793692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700739, -0.102504, -0.706016,
		0.712090, 0.160836, 0.683417,
		0.043500, -0.981644, 0.185696,
		44.051319, 36.698917, 28.849400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720417, 37.191700, 28.670408>,  <44.020870, 37.386070, 28.719414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720417, 37.191700, 28.670408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552341, 36.829941, 28.640718>,  <44.451496, 36.612885, 28.622906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552341, 36.829941, 28.640718>,  <44.720417, 37.191700, 28.670408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552341, 36.829941, 28.640718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688557, -0.264489, -0.675230,
		0.591045, -0.334828, 0.733864,
		-0.420185, -0.904398, -0.074223,
		44.426285, 36.558620, 28.618452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212757, 36.662186, 28.739712>,  <44.720417, 37.191700, 28.670408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212757, 36.662186, 28.739712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.924862, 36.497540, 28.516090>,  <44.752125, 36.398750, 28.381918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.924862, 36.497540, 28.516090>,  <45.212757, 36.662186, 28.739712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.924862, 36.497540, 28.516090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681595, -0.265956, -0.681686,
		0.131910, -0.871687, 0.471976,
		-0.719742, -0.411618, -0.559055,
		44.708939, 36.374054, 28.348373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.380913, 34.196880, 24.070908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.656101, 34.281445, 24.348612>,  <38.821217, 34.332184, 24.515234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.656101, 34.281445, 24.348612>,  <38.380913, 34.196880, 24.070908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656101, 34.281445, 24.348612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676151, -0.160812, 0.718999,
		0.263651, -0.964077, 0.032312,
		0.687974, 0.211412, 0.694260,
		38.862492, 34.344868, 24.556890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270462, 33.689964, 24.630554>,  <38.380913, 34.196880, 24.070908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270462, 33.689964, 24.630554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503880, 33.965919, 24.801916>,  <38.643929, 34.131493, 24.904734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503880, 33.965919, 24.801916>,  <38.270462, 33.689964, 24.630554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503880, 33.965919, 24.801916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541534, -0.062541, 0.838349,
		0.605163, -0.721206, 0.337104,
		0.583540, 0.689891, 0.428406,
		38.678940, 34.172886, 24.930437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430225, 33.327789, 25.319101>,  <38.270462, 33.689964, 24.630554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430225, 33.327789, 25.319101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.437984, 33.727715, 25.319374>,  <38.442638, 33.967670, 25.319538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.437984, 33.727715, 25.319374>,  <38.430225, 33.327789, 25.319101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437984, 33.727715, 25.319374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394412, 0.007024, 0.918907,
		0.918729, -0.018090, 0.394474,
		0.019394, 0.999812, 0.000682,
		38.443802, 34.027657, 25.319578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620296, 33.537628, 25.935299>,  <38.430225, 33.327789, 25.319101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620296, 33.537628, 25.935299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.420795, 33.853436, 25.792244>,  <38.301094, 34.042919, 25.706411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.420795, 33.853436, 25.792244>,  <38.620296, 33.537628, 25.935299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420795, 33.853436, 25.792244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380538, 0.171263, 0.908768,
		0.778741, 0.589344, 0.215025,
		-0.498751, 0.789521, -0.357638,
		38.271172, 34.090290, 25.684952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574276, 33.897877, 26.505436>,  <38.620296, 33.537628, 25.935299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574276, 33.897877, 26.505436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.342781, 34.118309, 26.264978>,  <38.203884, 34.250568, 26.120705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.342781, 34.118309, 26.264978>,  <38.574276, 33.897877, 26.505436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342781, 34.118309, 26.264978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435574, 0.414303, 0.799142,
		0.689449, 0.724334, 0.000266,
		-0.578735, 0.551084, -0.601142,
		38.169159, 34.283634, 26.084635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623707, 34.626202, 26.733742>,  <38.574276, 33.897877, 26.505436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623707, 34.626202, 26.733742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.272938, 34.600418, 26.543224>,  <38.062477, 34.584949, 26.428913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.272938, 34.600418, 26.543224>,  <38.623707, 34.626202, 26.733742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272938, 34.600418, 26.543224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454994, 0.430685, 0.779417,
		0.154891, 0.900198, -0.407005,
		-0.876920, -0.064460, -0.476294,
		38.009861, 34.581081, 26.400335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286148, 35.144032, 27.029005>,  <38.623707, 34.626202, 26.733742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286148, 35.144032, 27.029005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.011749, 34.910744, 26.854988>,  <37.847111, 34.770771, 26.750578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.011749, 34.910744, 26.854988>,  <38.286148, 35.144032, 27.029005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011749, 34.910744, 26.854988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667230, 0.265779, 0.695820,
		-0.290192, 0.767604, -0.571466,
		-0.685997, -0.583221, -0.435042,
		37.805950, 34.735779, 26.724476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647167, 35.606194, 26.972425>,  <38.286148, 35.144032, 27.029005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647167, 35.606194, 26.972425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.553123, 35.218132, 26.948637>,  <37.496696, 34.985294, 26.934364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.553123, 35.218132, 26.948637>,  <37.647167, 35.606194, 26.972425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553123, 35.218132, 26.948637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734822, 0.137361, 0.664206,
		-0.636210, 0.199857, -0.745181,
		-0.235105, -0.970149, -0.059469,
		37.482594, 34.927086, 26.930796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977032, 35.629063, 27.003532>,  <37.647167, 35.606194, 26.972425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977032, 35.629063, 27.003532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.051270, 35.245361, 27.088749>,  <37.095814, 35.015141, 27.139879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.051270, 35.245361, 27.088749>,  <36.977032, 35.629063, 27.003532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051270, 35.245361, 27.088749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742250, 0.005213, 0.670103,
		-0.643909, -0.282500, -0.711038,
		0.185597, -0.959253, 0.213042,
		37.106949, 34.957584, 27.152662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352531, 35.345215, 27.068581>,  <36.977032, 35.629063, 27.003532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352531, 35.345215, 27.068581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.590050, 35.083401, 27.255766>,  <36.732559, 34.926311, 27.368078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.590050, 35.083401, 27.255766>,  <36.352531, 35.345215, 27.068581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590050, 35.083401, 27.255766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640746, -0.032876, 0.767049,
		-0.486678, -0.755314, -0.438914,
		0.593792, -0.654538, 0.467964,
		36.768188, 34.887039, 27.396154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960640, 34.746288, 27.362936>,  <36.352531, 35.345215, 27.068581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960640, 34.746288, 27.362936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.295258, 34.744507, 27.582087>,  <36.496029, 34.743439, 27.713577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.295258, 34.744507, 27.582087>,  <35.960640, 34.746288, 27.362936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295258, 34.744507, 27.582087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542616, -0.145210, 0.827334,
		0.075876, -0.989391, -0.123890,
		0.836547, -0.004450, 0.547878,
		36.546223, 34.743172, 27.746450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836914, 34.261063, 27.797934>,  <35.960640, 34.746288, 27.362936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836914, 34.261063, 27.797934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.131248, 34.474461, 27.964750>,  <36.307850, 34.602501, 28.064840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.131248, 34.474461, 27.964750>,  <35.836914, 34.261063, 27.797934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131248, 34.474461, 27.964750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333298, -0.250764, 0.908862,
		0.589456, -0.807772, -0.006707,
		0.735835, 0.533499, 0.417044,
		36.351997, 34.634510, 28.089863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180790, 33.800327, 28.314697>,  <35.836914, 34.261063, 27.797934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180790, 33.800327, 28.314697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.237690, 34.186359, 28.402691>,  <36.271832, 34.417976, 28.455486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.237690, 34.186359, 28.402691>,  <36.180790, 33.800327, 28.314697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237690, 34.186359, 28.402691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366961, -0.154988, 0.917234,
		0.919296, -0.211201, 0.332099,
		0.142250, 0.965077, 0.219982,
		36.280365, 34.475883, 28.468685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429035, 33.768463, 28.973202>,  <36.180790, 33.800327, 28.314697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429035, 33.768463, 28.973202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.266735, 34.131798, 28.932636>,  <36.169353, 34.349800, 28.908297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.266735, 34.131798, 28.932636>,  <36.429035, 33.768463, 28.973202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266735, 34.131798, 28.932636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412265, -0.082860, 0.907288,
		0.815722, 0.409945, 0.408097,
		-0.405753, 0.908339, -0.101416,
		36.145008, 34.404301, 28.902212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191620, 33.602139, 29.145475>,  <36.429035, 33.768463, 28.973202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191620, 33.602139, 29.145475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.303532, 33.267673, 29.334177>,  <37.370678, 33.066994, 29.447399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.303532, 33.267673, 29.334177>,  <37.191620, 33.602139, 29.145475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303532, 33.267673, 29.334177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379303, -0.355133, -0.854406,
		0.881960, 0.417984, 0.217800,
		0.279780, -0.836164, 0.471756,
		37.387466, 33.016823, 29.475704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987453, 33.442722, 29.168192>,  <37.191620, 33.602139, 29.145475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987453, 33.442722, 29.168192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.800999, 33.089569, 29.190945>,  <37.689125, 32.877678, 29.204596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.800999, 33.089569, 29.190945>,  <37.987453, 33.442722, 29.168192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800999, 33.089569, 29.190945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535206, -0.332603, -0.776485,
		0.704462, -0.331508, 0.627563,
		-0.466141, -0.882880, 0.056881,
		37.661156, 32.824703, 29.208010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524410, 32.950127, 29.159069>,  <37.987453, 33.442722, 29.168192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524410, 32.950127, 29.159069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.194843, 32.754803, 29.044031>,  <37.997101, 32.637608, 28.975008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.194843, 32.754803, 29.044031>,  <38.524410, 32.950127, 29.159069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194843, 32.754803, 29.044031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465305, -0.293225, -0.835171,
		0.323490, -0.821934, 0.468806,
		-0.823921, -0.488308, -0.287595,
		37.947666, 32.608311, 28.957752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752781, 32.313499, 29.090708>,  <38.524410, 32.950127, 29.159069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752781, 32.313499, 29.090708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.415695, 32.351997, 28.878830>,  <38.213444, 32.375095, 28.751703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.415695, 32.351997, 28.878830>,  <38.752781, 32.313499, 29.090708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415695, 32.351997, 28.878830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466230, -0.361501, -0.807432,
		-0.269199, -0.927391, 0.259767,
		-0.842711, 0.096249, -0.529693,
		38.162884, 32.380871, 28.719923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817497, 31.854374, 28.526785>,  <38.752781, 32.313499, 29.090708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817497, 31.854374, 28.526785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.514061, 32.061657, 28.368793>,  <38.332001, 32.186028, 28.273998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.514061, 32.061657, 28.368793>,  <38.817497, 31.854374, 28.526785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514061, 32.061657, 28.368793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303633, -0.255202, -0.917976,
		-0.576502, -0.816291, 0.036247,
		-0.758586, 0.518209, -0.394977,
		38.286484, 32.217121, 28.250299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429794, 31.391340, 28.224487>,  <38.817497, 31.854374, 28.526785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429794, 31.391340, 28.224487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.349342, 31.741426, 28.048515>,  <38.301071, 31.951479, 27.942932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.349342, 31.741426, 28.048515>,  <38.429794, 31.391340, 28.224487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349342, 31.741426, 28.048515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524912, -0.282887, -0.802772,
		-0.827051, -0.392390, -0.402513,
		-0.201134, 0.875217, -0.439932,
		38.289001, 32.003990, 27.916536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311474, 31.268944, 27.559837>,  <38.429794, 31.391340, 28.224487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311474, 31.268944, 27.559837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.365471, 31.663349, 27.520731>,  <38.397869, 31.899992, 27.497267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.365471, 31.663349, 27.520731>,  <38.311474, 31.268944, 27.559837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365471, 31.663349, 27.520731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704371, -0.164893, -0.690414,
		-0.696877, 0.024341, -0.716778,
		0.134997, 0.986011, -0.097765,
		38.405972, 31.959152, 27.491402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291504, 31.368629, 26.754063>,  <38.311474, 31.268944, 27.559837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291504, 31.368629, 26.754063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.465485, 31.688568, 26.919500>,  <38.569874, 31.880531, 27.018763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.465485, 31.688568, 26.919500>,  <38.291504, 31.368629, 26.754063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465485, 31.688568, 26.919500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646080, 0.042723, -0.762073,
		-0.627211, 0.598682, -0.498183,
		0.434955, 0.799847, 0.413593,
		38.595970, 31.928522, 27.043579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308861, 31.773130, 26.320272>,  <38.291504, 31.368629, 26.754063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308861, 31.773130, 26.320272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.602093, 31.912998, 26.553623>,  <38.778030, 31.996918, 26.693634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.602093, 31.912998, 26.553623>,  <38.308861, 31.773130, 26.320272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602093, 31.912998, 26.553623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606564, 0.051926, -0.793337,
		-0.307697, 0.935434, -0.174030,
		0.733078, 0.349668, 0.583378,
		38.822018, 32.017899, 26.728636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611641, 32.398739, 25.923862>,  <38.308861, 31.773130, 26.320272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611641, 32.398739, 25.923862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.871944, 32.264194, 26.196150>,  <39.028126, 32.183468, 26.359522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.871944, 32.264194, 26.196150>,  <38.611641, 32.398739, 25.923862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871944, 32.264194, 26.196150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676200, -0.151030, -0.721071,
		0.345346, 0.929545, 0.129161,
		0.650761, -0.336357, 0.680716,
		39.067173, 32.163288, 26.400364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240105, 32.623322, 25.626186>,  <38.611641, 32.398739, 25.923862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240105, 32.623322, 25.626186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.333172, 32.356445, 25.909233>,  <39.389011, 32.196320, 26.079062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.333172, 32.356445, 25.909233>,  <39.240105, 32.623322, 25.626186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333172, 32.356445, 25.909233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864727, -0.191064, -0.464480,
		0.445097, 0.719964, 0.532485,
		0.232670, -0.667193, 0.707615,
		39.402973, 32.156288, 26.121517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866539, 32.832649, 25.891712>,  <39.240105, 32.623322, 25.626186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866539, 32.832649, 25.891712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.817631, 32.439453, 25.946522>,  <39.788288, 32.203533, 25.979408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.817631, 32.439453, 25.946522>,  <39.866539, 32.832649, 25.891712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817631, 32.439453, 25.946522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854542, -0.174481, -0.489197,
		0.504785, 0.057282, 0.861342,
		-0.122266, -0.982993, 0.137026,
		39.780952, 32.144554, 25.987629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454529, 32.581322, 26.219965>,  <39.866539, 32.832649, 25.891712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454529, 32.581322, 26.219965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.307262, 32.262096, 26.029154>,  <40.218903, 32.070560, 25.914667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.307262, 32.262096, 26.029154>,  <40.454529, 32.581322, 26.219965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307262, 32.262096, 26.029154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897396, -0.170822, -0.406817,
		0.243177, -0.577859, 0.779066,
		-0.368164, -0.798059, -0.477029,
		40.196812, 32.022678, 25.886045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960804, 32.117287, 26.275053>,  <40.454529, 32.581322, 26.219965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960804, 32.117287, 26.275053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.732094, 31.999851, 25.968622>,  <40.594868, 31.929390, 25.784763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.732094, 31.999851, 25.968622>,  <40.960804, 32.117287, 26.275053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732094, 31.999851, 25.968622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818735, -0.263844, -0.509961,
		-0.052405, -0.918798, 0.391234,
		-0.571776, -0.293593, -0.766078,
		40.560562, 31.911774, 25.738798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477386, 31.717321, 26.652637>,  <40.960804, 32.117287, 26.275053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477386, 31.717321, 26.652637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.804245, 31.517456, 26.767605>,  <42.000359, 31.397537, 26.836586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.804245, 31.517456, 26.767605>,  <41.477386, 31.717321, 26.652637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804245, 31.517456, 26.767605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497185, -0.358628, 0.790059,
		-0.291689, -0.788492, -0.541477,
		0.817144, -0.499666, 0.287419,
		42.049389, 31.367558, 26.853830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259052, 31.001724, 26.734615>,  <41.477386, 31.717321, 26.652637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259052, 31.001724, 26.734615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.578732, 31.093700, 26.956755>,  <41.770538, 31.148886, 27.090038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.578732, 31.093700, 26.956755>,  <41.259052, 31.001724, 26.734615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578732, 31.093700, 26.956755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511941, -0.223737, 0.829372,
		0.314958, -0.947137, -0.061094,
		0.799198, 0.229941, 0.555346,
		41.818493, 31.162682, 27.123358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425468, 30.424664, 27.339296>,  <41.259052, 31.001724, 26.734615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425468, 30.424664, 27.339296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.617065, 30.742203, 27.489161>,  <41.732025, 30.932726, 27.579079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.617065, 30.742203, 27.489161>,  <41.425468, 30.424664, 27.339296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617065, 30.742203, 27.489161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558079, -0.054058, 0.828025,
		0.677580, -0.605708, 0.417137,
		0.478992, 0.793849, 0.374662,
		41.760761, 30.980358, 27.601559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452759, 30.258818, 28.056288>,  <41.425468, 30.424664, 27.339296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452759, 30.258818, 28.056288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.514786, 30.653109, 28.030075>,  <41.552002, 30.889683, 28.014347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.514786, 30.653109, 28.030075>,  <41.452759, 30.258818, 28.056288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514786, 30.653109, 28.030075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469943, 0.131951, 0.872778,
		0.868968, -0.104547, 0.483698,
		0.155070, 0.985728, -0.065530,
		41.561306, 30.948828, 28.010416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563789, 30.441116, 28.766626>,  <41.452759, 30.258818, 28.056288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563789, 30.441116, 28.766626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538280, 30.794176, 28.580353>,  <41.522976, 31.006012, 28.468590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538280, 30.794176, 28.580353>,  <41.563789, 30.441116, 28.766626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538280, 30.794176, 28.580353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210538, 0.444231, 0.870823,
		0.975503, 0.153578, 0.157502,
		-0.063772, 0.882651, -0.465683,
		41.519150, 31.058971, 28.440647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076988, 30.992311, 28.981318>,  <41.563789, 30.441116, 28.766626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076988, 30.992311, 28.981318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.767262, 31.200813, 28.837807>,  <41.581425, 31.325914, 28.751699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.767262, 31.200813, 28.837807>,  <42.076988, 30.992311, 28.981318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767262, 31.200813, 28.837807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027413, 0.538809, 0.841982,
		0.632199, 0.661799, -0.402922,
		-0.774321, 0.521254, -0.358777,
		41.534966, 31.357189, 28.730173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021545, 31.707052, 29.073399>,  <42.076988, 30.992311, 28.981318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021545, 31.707052, 29.073399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.624142, 31.668360, 29.049437>,  <41.385700, 31.645144, 29.035059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.624142, 31.668360, 29.049437>,  <42.021545, 31.707052, 29.073399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624142, 31.668360, 29.049437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102824, 0.537867, 0.836736,
		-0.048717, 0.837462, -0.544321,
		-0.993506, -0.096733, -0.059907,
		41.326092, 31.639339, 29.031464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602009, 32.346066, 29.051466>,  <42.021545, 31.707052, 29.073399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602009, 32.346066, 29.051466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.406818, 32.037651, 29.215113>,  <41.289703, 31.852602, 29.313301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.406818, 32.037651, 29.215113>,  <41.602009, 32.346066, 29.051466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406818, 32.037651, 29.215113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214304, 0.560199, 0.800157,
		-0.846138, 0.302785, -0.438602,
		-0.487980, -0.771037, 0.409117,
		41.260426, 31.806339, 29.337849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994198, 32.608784, 29.341105>,  <41.602009, 32.346066, 29.051466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994198, 32.608784, 29.341105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.046703, 32.249886, 29.509731>,  <41.078205, 32.034546, 29.610907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.046703, 32.249886, 29.509731>,  <40.994198, 32.608784, 29.341105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046703, 32.249886, 29.509731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199618, 0.392613, 0.897779,
		-0.971042, -0.201995, -0.127572,
		0.131261, -0.897247, 0.421566,
		41.086082, 31.980711, 29.636202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411594, 32.531078, 29.769165>,  <40.994198, 32.608784, 29.341105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411594, 32.531078, 29.769165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.684216, 32.276955, 29.914423>,  <40.847786, 32.124481, 30.001577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.684216, 32.276955, 29.914423>,  <40.411594, 32.531078, 29.769165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684216, 32.276955, 29.914423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223951, 0.291360, 0.930030,
		-0.696661, -0.715188, 0.056298,
		0.681549, -0.635307, 0.363146,
		40.888680, 32.086361, 30.023367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053585, 32.236027, 30.320980>,  <40.411594, 32.531078, 29.769165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053585, 32.236027, 30.320980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.443924, 32.200970, 30.401028>,  <40.678127, 32.179935, 30.449057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.443924, 32.200970, 30.401028>,  <40.053585, 32.236027, 30.320980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443924, 32.200970, 30.401028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170176, 0.269476, 0.947852,
		-0.137000, -0.959011, 0.248052,
		0.975844, -0.087643, 0.200118,
		40.736675, 32.174679, 30.461063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039963, 32.005741, 30.982861>,  <40.053585, 32.236027, 30.320980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039963, 32.005741, 30.982861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.421524, 32.112141, 30.927282>,  <40.650463, 32.175980, 30.893936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.421524, 32.112141, 30.927282>,  <40.039963, 32.005741, 30.982861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421524, 32.112141, 30.927282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044446, 0.332664, 0.941997,
		0.296790, -0.904754, 0.305509,
		0.953908, 0.265997, -0.138944,
		40.707695, 32.191940, 30.885599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348141, 31.641348, 31.546484>,  <40.039963, 32.005741, 30.982861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348141, 31.641348, 31.546484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.525387, 31.963266, 31.388521>,  <40.631733, 32.156418, 31.293743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.525387, 31.963266, 31.388521>,  <40.348141, 31.641348, 31.546484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525387, 31.963266, 31.388521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029428, 0.427219, 0.903669,
		0.895981, -0.412051, 0.165624,
		0.443115, 0.804797, -0.394906,
		40.658321, 32.204704, 31.270050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718456, 31.795322, 32.122166>,  <40.348141, 31.641348, 31.546484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718456, 31.795322, 32.122166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.718910, 32.115280, 31.882109>,  <40.719181, 32.307255, 31.738075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.718910, 32.115280, 31.882109>,  <40.718456, 31.795322, 32.122166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718910, 32.115280, 31.882109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105952, 0.596858, 0.795321,
		0.994370, 0.062683, 0.085428,
		0.001136, 0.799895, -0.600139,
		40.719250, 32.355247, 31.702066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.210869, 34.977451, 28.685743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.993317, 35.185204, 28.422096>,  <44.862785, 35.309853, 28.263908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.993317, 35.185204, 28.422096>,  <45.210869, 34.977451, 28.685743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.993317, 35.185204, 28.422096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409078, -0.521703, -0.748653,
		-0.732699, -0.676810, 0.071279,
		-0.543882, 0.519378, -0.659119,
		44.830151, 35.341019, 28.224360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098801, 34.563919, 28.117680>,  <45.210869, 34.977451, 28.685743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098801, 34.563919, 28.117680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.995434, 34.909245, 27.944281>,  <44.933414, 35.116440, 27.840242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.995434, 34.909245, 27.944281>,  <45.098801, 34.563919, 28.117680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.995434, 34.909245, 27.944281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356675, -0.331766, -0.873335,
		-0.897778, -0.380300, -0.222188,
		-0.258415, 0.863310, -0.433496,
		44.917908, 35.168236, 27.814232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774906, 34.373264, 27.493137>,  <45.098801, 34.563919, 28.117680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774906, 34.373264, 27.493137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.874916, 34.758472, 27.452971>,  <44.934921, 34.989597, 27.428869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.874916, 34.758472, 27.452971>,  <44.774906, 34.373264, 27.493137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.874916, 34.758472, 27.452971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568378, -0.229942, -0.789983,
		-0.783858, 0.140439, -0.604850,
		0.250025, 0.963018, -0.100419,
		44.949924, 35.047379, 27.422844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708019, 34.586105, 26.739416>,  <44.774906, 34.373264, 27.493137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708019, 34.586105, 26.739416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.946785, 34.846336, 26.927223>,  <45.090046, 35.002476, 27.039907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.946785, 34.846336, 26.927223>,  <44.708019, 34.586105, 26.739416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.946785, 34.846336, 26.927223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609202, 0.013280, -0.792904,
		-0.522078, 0.759327, -0.388404,
		0.596915, 0.650574, 0.469517,
		45.125858, 35.041508, 27.068079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984737, 34.962055, 26.193319>,  <44.708019, 34.586105, 26.739416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984737, 34.962055, 26.193319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.244976, 35.028881, 26.489647>,  <45.401119, 35.068977, 26.667444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.244976, 35.028881, 26.489647>,  <44.984737, 34.962055, 26.193319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.244976, 35.028881, 26.489647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711200, 0.208048, -0.671499,
		-0.266308, 0.963746, 0.016540,
		0.650595, 0.167062, 0.740821,
		45.440155, 35.078999, 26.711893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.183445, 35.657673, 26.112194>,  <44.984737, 34.962055, 26.193319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.183445, 35.657673, 26.112194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.464024, 35.445965, 26.303129>,  <45.632370, 35.318939, 26.417690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.464024, 35.445965, 26.303129>,  <45.183445, 35.657673, 26.112194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464024, 35.445965, 26.303129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679227, 0.293505, -0.672686,
		0.215930, 0.796072, 0.565370,
		0.701445, -0.529267, 0.477337,
		45.674458, 35.287186, 26.446331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.701138, 36.149696, 26.224640>,  <45.183445, 35.657673, 26.112194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.701138, 36.149696, 26.224640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.873589, 35.788815, 26.229700>,  <45.977058, 35.572285, 26.232737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.873589, 35.788815, 26.229700>,  <45.701138, 36.149696, 26.224640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873589, 35.788815, 26.229700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691354, 0.321295, -0.647148,
		0.579794, 0.287749, 0.762260,
		0.431126, -0.902203, 0.012651,
		46.002926, 35.518154, 26.233496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.477562, 36.197823, 26.281620>,  <45.701138, 36.149696, 26.224640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.477562, 36.197823, 26.281620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.380856, 35.849724, 26.109938>,  <46.322834, 35.640865, 26.006929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.380856, 35.849724, 26.109938>,  <46.477562, 36.197823, 26.281620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.380856, 35.849724, 26.109938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627237, 0.197330, -0.753415,
		0.740354, -0.451361, 0.498145,
		-0.241763, -0.870249, -0.429205,
		46.308327, 35.588650, 25.981176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.117687, 36.067959, 25.924414>,  <46.477562, 36.197823, 26.281620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.117687, 36.067959, 25.924414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.870518, 35.784981, 25.787188>,  <46.722218, 35.615196, 25.704851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.870518, 35.784981, 25.787188>,  <47.117687, 36.067959, 25.924414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.870518, 35.784981, 25.787188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502239, -0.019453, -0.864510,
		0.604918, -0.706502, 0.367326,
		-0.617924, -0.707443, -0.343066,
		46.685143, 35.572746, 25.684267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.567936, 35.604145, 25.532314>,  <47.117687, 36.067959, 25.924414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.567936, 35.604145, 25.532314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.207756, 35.495472, 25.396446>,  <46.991646, 35.430267, 25.314926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.207756, 35.495472, 25.396446>,  <47.567936, 35.604145, 25.532314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.207756, 35.495472, 25.396446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390951, -0.163262, -0.905816,
		0.190639, -0.948438, 0.253224,
		-0.900452, -0.271682, -0.339669,
		46.937622, 35.413967, 25.294546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.717655, 35.148926, 25.076948>,  <47.567936, 35.604145, 25.532314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.717655, 35.148926, 25.076948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.356014, 35.282833, 24.970715>,  <47.139030, 35.363178, 24.906975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.356014, 35.282833, 24.970715>,  <47.717655, 35.148926, 25.076948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.356014, 35.282833, 24.970715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217871, -0.173542, -0.960425,
		-0.367607, -0.926183, 0.083964,
		-0.904100, 0.334765, -0.265584,
		47.084785, 35.383263, 24.891039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.508839, 34.722088, 24.564373>,  <47.717655, 35.148926, 25.076948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.508839, 34.722088, 24.564373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.281712, 35.047699, 24.515463>,  <47.145435, 35.243065, 24.486116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.281712, 35.047699, 24.515463>,  <47.508839, 34.722088, 24.564373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.281712, 35.047699, 24.515463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104289, -0.076209, -0.991623,
		-0.816523, -0.575810, -0.041621,
		-0.567815, 0.814024, -0.122277,
		47.111366, 35.291904, 24.478779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.996620, 34.672115, 23.978594>,  <47.508839, 34.722088, 24.564373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.996620, 34.672115, 23.978594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.089581, 35.058075, 24.027521>,  <47.145355, 35.289650, 24.056877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.089581, 35.058075, 24.027521>,  <46.996620, 34.672115, 23.978594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.089581, 35.058075, 24.027521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208249, 0.073479, -0.975312,
		-0.950065, 0.252133, -0.183862,
		0.232398, 0.964899, 0.122317,
		47.159302, 35.347546, 24.064217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.040356, 34.024071, 24.104200>,  <46.996620, 34.672115, 23.978594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.040356, 34.024071, 24.104200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.899025, 34.311817, 24.343422>,  <46.814224, 34.484467, 24.486956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.899025, 34.311817, 24.343422>,  <47.040356, 34.024071, 24.104200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.899025, 34.311817, 24.343422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721878, -0.616275, 0.314796,
		0.595021, -0.320497, 0.737043,
		-0.353330, 0.719366, 0.598056,
		46.793026, 34.527626, 24.522839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.847725, 33.256371, 24.047092>,  <47.040356, 34.024071, 24.104200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.847725, 33.256371, 24.047092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.600235, 33.190506, 23.739830>,  <46.451740, 33.150986, 23.555473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.600235, 33.190506, 23.739830>,  <46.847725, 33.256371, 24.047092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.600235, 33.190506, 23.739830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721855, -0.266675, 0.638600,
		-0.310003, 0.949616, 0.046134,
		-0.618728, -0.164666, -0.768154,
		46.414616, 33.141106, 23.509384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.227211, 33.410107, 24.416052>,  <46.847725, 33.256371, 24.047092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.227211, 33.410107, 24.416052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.090706, 33.266712, 24.068483>,  <46.008801, 33.180676, 23.859941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.090706, 33.266712, 24.068483>,  <46.227211, 33.410107, 24.416052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.090706, 33.266712, 24.068483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880505, -0.201649, 0.429009,
		-0.329011, 0.911497, -0.246831,
		-0.341267, -0.358485, -0.868922,
		45.988327, 33.159168, 23.807806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420506, 33.648426, 24.129370>,  <46.227211, 33.410107, 24.416052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.420506, 33.648426, 24.129370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.504402, 33.271317, 24.025684>,  <45.554741, 33.045052, 23.963474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.504402, 33.271317, 24.025684>,  <45.420506, 33.648426, 24.129370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.504402, 33.271317, 24.025684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814814, -0.315069, 0.486631,
		-0.540452, 0.109145, -0.834265,
		0.209738, -0.942772, -0.259213,
		45.567322, 32.988483, 23.947920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875114, 33.330765, 23.816713>,  <45.420506, 33.648426, 24.129370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875114, 33.330765, 23.816713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.093956, 33.024452, 23.951923>,  <45.225262, 32.840664, 24.033049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.093956, 33.024452, 23.951923>,  <44.875114, 33.330765, 23.816713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093956, 33.024452, 23.951923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815536, -0.396636, 0.421403,
		-0.188629, -0.506221, -0.841522,
		0.547101, -0.765781, 0.338024,
		45.258087, 32.794716, 24.053329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470318, 32.603951, 23.638575>,  <44.875114, 33.330765, 23.816713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470318, 32.603951, 23.638575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.728565, 32.536350, 23.936462>,  <44.883514, 32.495789, 24.115196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.728565, 32.536350, 23.936462>,  <44.470318, 32.603951, 23.638575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.728565, 32.536350, 23.936462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684840, -0.559619, 0.466712,
		0.337884, -0.811335, -0.477043,
		0.645623, -0.169004, 0.744721,
		44.922253, 32.485649, 24.159878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224159, 31.934376, 23.885136>,  <44.470318, 32.603951, 23.638575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224159, 31.934376, 23.885136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.467945, 32.086018, 24.163654>,  <44.614216, 32.177002, 24.330767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.467945, 32.086018, 24.163654>,  <44.224159, 31.934376, 23.885136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.467945, 32.086018, 24.163654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541179, -0.442891, 0.714824,
		0.579377, -0.812483, -0.064764,
		0.609465, 0.379104, 0.696299,
		44.650784, 32.199749, 24.372543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.498356, 31.340645, 24.285524>,  <44.224159, 31.934376, 23.885136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.498356, 31.340645, 24.285524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.515823, 31.668381, 24.514181>,  <44.526302, 31.865023, 24.651375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.515823, 31.668381, 24.514181>,  <44.498356, 31.340645, 24.285524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515823, 31.668381, 24.514181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584726, -0.442984, 0.679603,
		0.810054, -0.363929, 0.459747,
		0.043667, 0.819342, 0.571640,
		44.528923, 31.914183, 24.685673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517139, 31.077085, 24.945913>,  <44.498356, 31.340645, 24.285524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517139, 31.077085, 24.945913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.391071, 31.448015, 25.026649>,  <44.315430, 31.670572, 25.075090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.391071, 31.448015, 25.026649>,  <44.517139, 31.077085, 24.945913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391071, 31.448015, 25.026649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684343, -0.369417, 0.628654,
		0.657529, 0.060004, 0.751036,
		-0.315167, 0.927324, 0.201839,
		44.296520, 31.726213, 25.087200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570347, 31.164274, 25.611107>,  <44.517139, 31.077085, 24.945913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570347, 31.164274, 25.611107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.318188, 31.460735, 25.518761>,  <44.166893, 31.638611, 25.463354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.318188, 31.460735, 25.518761>,  <44.570347, 31.164274, 25.611107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318188, 31.460735, 25.518761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583235, -0.255939, 0.770929,
		0.512287, 0.620638, 0.593608,
		-0.630395, 0.741150, -0.230863,
		44.129070, 31.683081, 25.449501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333252, 31.616604, 26.317295>,  <44.570347, 31.164274, 25.611107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333252, 31.616604, 26.317295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.066418, 31.663687, 26.023045>,  <43.906319, 31.691936, 25.846495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.066418, 31.663687, 26.023045>,  <44.333252, 31.616604, 26.317295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066418, 31.663687, 26.023045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744327, -0.063846, 0.664756,
		0.031281, 0.990993, 0.130205,
		-0.667082, 0.117709, -0.735626,
		43.866295, 31.698999, 25.802357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.864815, 31.949883, 26.604025>,  <44.333252, 31.616604, 26.317295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.864815, 31.949883, 26.604025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.638676, 31.827406, 26.297659>,  <43.502991, 31.753920, 26.113838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.638676, 31.827406, 26.297659>,  <43.864815, 31.949883, 26.604025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638676, 31.827406, 26.297659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791128, -0.061509, 0.608550,
		-0.233443, 0.949981, -0.207461,
		-0.565350, -0.306190, -0.765916,
		43.469070, 31.735548, 26.067884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240139, 32.319637, 26.585260>,  <43.864815, 31.949883, 26.604025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240139, 32.319637, 26.585260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.167576, 31.986643, 26.375862>,  <43.124039, 31.786844, 26.250223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.167576, 31.986643, 26.375862>,  <43.240139, 32.319637, 26.585260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167576, 31.986643, 26.375862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778539, -0.203644, 0.593637,
		-0.600805, 0.515255, -0.611184,
		-0.181411, -0.832491, -0.523497,
		43.113152, 31.736897, 26.218813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517494, 32.326359, 26.287222>,  <43.240139, 32.319637, 26.585260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517494, 32.326359, 26.287222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.622738, 31.941000, 26.307787>,  <42.685883, 31.709785, 26.320126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.622738, 31.941000, 26.307787>,  <42.517494, 32.326359, 26.287222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622738, 31.941000, 26.307787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795835, -0.186603, 0.576044,
		-0.545365, -0.192476, -0.815801,
		0.263105, -0.963396, 0.051412,
		42.701668, 31.651981, 26.323210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886192, 31.979347, 26.116867>,  <42.517494, 32.326359, 26.287222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886192, 31.979347, 26.116867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.122040, 31.723185, 26.313736>,  <42.263546, 31.569487, 26.431858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.122040, 31.723185, 26.313736>,  <41.886192, 31.979347, 26.116867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122040, 31.723185, 26.313736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773839, -0.273361, 0.571355,
		-0.231358, -0.717742, -0.656749,
		0.589616, -0.640406, 0.492173,
		42.298923, 31.531063, 26.461388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352718, 31.491482, 25.894190>,  <41.886192, 31.979347, 26.116867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352718, 31.491482, 25.894190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.080994, 31.648235, 25.646009>,  <40.917957, 31.742287, 25.497101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.080994, 31.648235, 25.646009>,  <41.352718, 31.491482, 25.894190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080994, 31.648235, 25.646009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710586, 0.140084, -0.689524,
		-0.183299, -0.909287, -0.373629,
		-0.679315, 0.391884, -0.620450,
		40.877197, 31.765800, 25.459875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601456, 31.264046, 25.297987>,  <41.352718, 31.491482, 25.894190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601456, 31.264046, 25.297987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.333488, 31.545391, 25.202913>,  <41.172710, 31.714199, 25.145868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.333488, 31.545391, 25.202913>,  <41.601456, 31.264046, 25.297987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333488, 31.545391, 25.202913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468129, 0.151688, -0.870543,
		-0.576255, -0.694456, -0.430883,
		-0.669914, 0.703364, -0.237684,
		41.132515, 31.756401, 25.131607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541302, 31.156143, 24.588936>,  <41.601456, 31.264046, 25.297987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541302, 31.156143, 24.588936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.407112, 31.520027, 24.686825>,  <41.326599, 31.738358, 24.745558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.407112, 31.520027, 24.686825>,  <41.541302, 31.156143, 24.588936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407112, 31.520027, 24.686825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398484, 0.372421, -0.838160,
		-0.853622, -0.183660, -0.487441,
		-0.335470, 0.909709, 0.244721,
		41.306473, 31.792940, 24.760241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194382, 31.478943, 23.996017>,  <41.541302, 31.156143, 24.588936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194382, 31.478943, 23.996017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.292732, 31.796450, 24.218538>,  <41.351742, 31.986954, 24.352051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.292732, 31.796450, 24.218538>,  <41.194382, 31.478943, 23.996017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292732, 31.796450, 24.218538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281540, 0.490696, -0.824592,
		-0.927512, 0.359372, -0.102826,
		0.245879, 0.793769, 0.556304,
		41.366497, 32.034580, 24.385429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972176, 32.087952, 23.601168>,  <41.194382, 31.478943, 23.996017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972176, 32.087952, 23.601168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.259308, 32.212269, 23.850367>,  <41.431587, 32.286861, 23.999886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.259308, 32.212269, 23.850367>,  <40.972176, 32.087952, 23.601168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259308, 32.212269, 23.850367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469673, 0.444368, -0.762853,
		-0.513931, 0.840204, 0.173009,
		0.717832, 0.310797, 0.622995,
		41.474659, 32.305508, 24.037266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010746, 32.714981, 23.400311>,  <40.972176, 32.087952, 23.601168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010746, 32.714981, 23.400311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.347206, 32.615082, 23.592178>,  <41.549084, 32.555141, 23.707300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.347206, 32.615082, 23.592178>,  <41.010746, 32.714981, 23.400311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347206, 32.615082, 23.592178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540610, 0.365150, -0.757896,
		0.014131, 0.896823, 0.442164,
		0.841155, -0.249748, 0.479671,
		41.599552, 32.540157, 23.736080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497208, 33.244522, 23.213829>,  <41.010746, 32.714981, 23.400311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497208, 33.244522, 23.213829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.738148, 32.939327, 23.307659>,  <41.882713, 32.756210, 23.363956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.738148, 32.939327, 23.307659>,  <41.497208, 33.244522, 23.213829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738148, 32.939327, 23.307659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680524, 0.337262, -0.650493,
		0.417202, 0.551461, 0.722380,
		0.602353, -0.762984, 0.234576,
		41.918854, 32.710430, 23.378033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900253, 33.799309, 23.514833>,  <41.497208, 33.244522, 23.213829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900253, 33.799309, 23.514833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.711880, 34.119633, 23.366816>,  <41.598858, 34.311825, 23.278006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.711880, 34.119633, 23.366816>,  <41.900253, 33.799309, 23.514833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711880, 34.119633, 23.366816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706676, -0.091368, 0.701613,
		0.528046, 0.591913, 0.608938,
		-0.470932, 0.800806, -0.370044,
		41.570599, 34.359875, 23.255802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694393, 34.220001, 24.078228>,  <41.900253, 33.799309, 23.514833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694393, 34.220001, 24.078228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.457134, 34.344486, 23.781221>,  <41.314781, 34.419178, 23.603018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.457134, 34.344486, 23.781221>,  <41.694393, 34.220001, 24.078228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457134, 34.344486, 23.781221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778184, 0.014846, 0.627861,
		0.206420, 0.950225, 0.233373,
		-0.593144, 0.311210, -0.742514,
		41.279190, 34.437851, 23.558468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158981, 34.755939, 24.418407>,  <41.694393, 34.220001, 24.078228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158981, 34.755939, 24.418407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.984192, 34.623516, 24.083874>,  <40.879318, 34.544060, 23.883154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.984192, 34.623516, 24.083874>,  <41.158981, 34.755939, 24.418407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984192, 34.623516, 24.083874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898865, 0.126445, 0.419587,
		-0.033159, 0.935099, -0.352832,
		-0.436969, -0.331062, -0.836335,
		40.853100, 34.524197, 23.832973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577328, 35.262077, 24.282564>,  <41.158981, 34.755939, 24.418407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577328, 35.262077, 24.282564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.477230, 34.944122, 24.061466>,  <40.417171, 34.753349, 23.928808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.477230, 34.944122, 24.061466>,  <40.577328, 35.262077, 24.282564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477230, 34.944122, 24.061466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953625, 0.103739, 0.282556,
		-0.167260, 0.597819, -0.783988,
		-0.250247, -0.794891, -0.552743,
		40.402157, 34.705654, 23.895643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027409, 35.415276, 24.099215>,  <40.577328, 35.262077, 24.282564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027409, 35.415276, 24.099215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.997936, 35.020828, 24.039694>,  <39.980251, 34.784161, 24.003981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.997936, 35.020828, 24.039694>,  <40.027409, 35.415276, 24.099215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997936, 35.020828, 24.039694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899332, 0.001213, 0.437265,
		-0.431014, 0.166041, -0.886937,
		-0.073680, -0.986118, -0.148804,
		39.975834, 34.724995, 23.995052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456650, 35.333694, 23.833616>,  <40.027409, 35.415276, 24.099215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456650, 35.333694, 23.833616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.518486, 34.968636, 23.984968>,  <39.555588, 34.749599, 24.075779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.518486, 34.968636, 23.984968>,  <39.456650, 35.333694, 23.833616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518486, 34.968636, 23.984968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850430, 0.072007, 0.521137,
		-0.502862, -0.402348, -0.765014,
		0.154592, -0.912650, 0.378379,
		39.564865, 34.694839, 24.098482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832836, 34.944267, 23.953342>,  <39.456650, 35.333694, 23.833616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832836, 34.944267, 23.953342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.052372, 34.713943, 24.195738>,  <39.184093, 34.575748, 24.341175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.052372, 34.713943, 24.195738>,  <38.832836, 34.944267, 23.953342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052372, 34.713943, 24.195738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732808, 0.017387, 0.680213,
		-0.402208, -0.817400, -0.412414,
		0.548836, -0.575808, 0.605990,
		39.217022, 34.541203, 24.377535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.891075, 35.637814, 22.645233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.197865, 35.716812, 22.889446>,  <45.381939, 35.764210, 23.035975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.197865, 35.716812, 22.889446>,  <44.891075, 35.637814, 22.645233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.197865, 35.716812, 22.889446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638507, 0.329387, 0.695566,
		-0.063732, -0.923310, 0.378731,
		0.766972, 0.197493, 0.610533,
		45.427956, 35.776058, 23.072605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542271, 35.665329, 23.310659>,  <44.891075, 35.637814, 22.645233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542271, 35.665329, 23.310659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.897736, 35.832001, 23.387243>,  <45.111015, 35.932003, 23.433193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.897736, 35.832001, 23.387243>,  <44.542271, 35.665329, 23.310659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897736, 35.832001, 23.387243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355940, 0.363549, 0.860894,
		0.289110, -0.833193, 0.471385,
		0.888663, 0.416678, 0.191461,
		45.164333, 35.957005, 23.444681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670750, 35.494202, 24.017485>,  <44.542271, 35.665329, 23.310659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670750, 35.494202, 24.017485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.917610, 35.800400, 23.944662>,  <45.065727, 35.984119, 23.900969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.917610, 35.800400, 23.944662>,  <44.670750, 35.494202, 24.017485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.917610, 35.800400, 23.944662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409556, 0.510074, 0.756365,
		0.671858, -0.392225, 0.628305,
		0.617147, 0.765496, -0.182059,
		45.102753, 36.030048, 23.890045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090919, 35.686962, 24.603113>,  <44.670750, 35.494202, 24.017485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.090919, 35.686962, 24.603113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.066391, 36.025532, 24.391529>,  <45.051674, 36.228676, 24.264578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.066391, 36.025532, 24.391529>,  <45.090919, 35.686962, 24.603113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066391, 36.025532, 24.391529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318207, 0.485728, 0.814133,
		0.946036, 0.218242, 0.239554,
		-0.061320, 0.846427, -0.528962,
		45.047997, 36.279461, 24.232840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.254978, 36.221821, 25.084696>,  <45.090919, 35.686962, 24.603113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.254978, 36.221821, 25.084696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.074848, 36.434479, 24.797764>,  <44.966770, 36.562073, 24.625605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.074848, 36.434479, 24.797764>,  <45.254978, 36.221821, 25.084696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074848, 36.434479, 24.797764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490299, 0.524191, 0.696297,
		0.746201, 0.665265, 0.024610,
		-0.450322, 0.531644, -0.717331,
		44.939751, 36.593971, 24.582565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.378979, 36.927944, 25.276041>,  <45.254978, 36.221821, 25.084696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.378979, 36.927944, 25.276041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.075169, 36.930576, 25.015862>,  <44.892883, 36.932156, 24.859755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.075169, 36.930576, 25.015862>,  <45.378979, 36.927944, 25.276041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075169, 36.930576, 25.015862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501038, 0.631785, 0.591446,
		0.414833, 0.775116, -0.476560,
		-0.759523, 0.006577, -0.650447,
		44.847313, 36.932549, 24.820728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055191, 37.536369, 25.404510>,  <45.378979, 36.927944, 25.276041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055191, 37.536369, 25.404510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.766712, 37.334866, 25.214310>,  <44.593624, 37.213963, 25.100189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.766712, 37.334866, 25.214310>,  <45.055191, 37.536369, 25.404510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766712, 37.334866, 25.214310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691752, 0.487230, 0.532997,
		-0.036826, 0.713323, -0.699867,
		-0.721195, -0.503763, -0.475500,
		44.550354, 37.183735, 25.071659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506596, 38.046940, 25.334093>,  <45.055191, 37.536369, 25.404510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506596, 38.046940, 25.334093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.335938, 37.685646, 25.315619>,  <44.233543, 37.468868, 25.304535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.335938, 37.685646, 25.315619>,  <44.506596, 38.046940, 25.334093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335938, 37.685646, 25.315619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797510, 0.351640, 0.490231,
		-0.426554, 0.245989, -0.870368,
		-0.426648, -0.903238, -0.046185,
		44.207943, 37.414673, 25.301764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851879, 38.140457, 25.020798>,  <44.506596, 38.046940, 25.334093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851879, 38.140457, 25.020798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.835766, 37.792068, 25.216669>,  <43.826096, 37.583035, 25.334192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.835766, 37.792068, 25.216669>,  <43.851879, 38.140457, 25.020798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835766, 37.792068, 25.216669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867611, 0.273577, 0.415220,
		-0.495610, -0.408120, -0.766687,
		-0.040288, -0.870973, 0.489677,
		43.823681, 37.530777, 25.363573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195465, 38.175053, 25.065668>,  <43.851879, 38.140457, 25.020798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195465, 38.175053, 25.065668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.281898, 37.892204, 25.334976>,  <43.333759, 37.722496, 25.496561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.281898, 37.892204, 25.334976>,  <43.195465, 38.175053, 25.065668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281898, 37.892204, 25.334976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842584, 0.213354, 0.494501,
		-0.493316, -0.674139, -0.549705,
		0.216081, -0.707119, 0.673270,
		43.346722, 37.680069, 25.536957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635620, 37.879112, 25.202280>,  <43.195465, 38.175053, 25.065668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635620, 37.879112, 25.202280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.810905, 37.767551, 25.544083>,  <42.916077, 37.700615, 25.749165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.810905, 37.767551, 25.544083>,  <42.635620, 37.879112, 25.202280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810905, 37.767551, 25.544083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870115, 0.106913, 0.481112,
		-0.225541, -0.954350, -0.195825,
		0.438213, -0.278900, 0.854508,
		42.942371, 37.683884, 25.800436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103531, 37.568443, 25.493967>,  <42.635620, 37.879112, 25.202280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103531, 37.568443, 25.493967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.364983, 37.652657, 25.784744>,  <42.521854, 37.703182, 25.959209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.364983, 37.652657, 25.784744>,  <42.103531, 37.568443, 25.493967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364983, 37.652657, 25.784744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753110, 0.086030, 0.652246,
		0.074762, -0.973800, 0.214765,
		0.653633, 0.210505, 0.726947,
		42.561073, 37.715816, 26.002827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481319, 37.230537, 25.168900>,  <42.103531, 37.568443, 25.493967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481319, 37.230537, 25.168900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.271149, 37.516010, 24.983608>,  <41.145046, 37.687294, 24.872435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.271149, 37.516010, 24.983608>,  <41.481319, 37.230537, 25.168900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271149, 37.516010, 24.983608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523988, -0.157519, -0.837033,
		-0.670346, -0.682525, -0.291198,
		-0.525426, 0.713686, -0.463227,
		41.113522, 37.730118, 24.844641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619610, 37.069347, 24.464022>,  <41.481319, 37.230537, 25.168900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619610, 37.069347, 24.464022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.461502, 37.432686, 24.409365>,  <41.366638, 37.650688, 24.376570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.461502, 37.432686, 24.409365>,  <41.619610, 37.069347, 24.464022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461502, 37.432686, 24.409365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499684, 0.087804, -0.861746,
		-0.770767, -0.408896, -0.488592,
		-0.395265, 0.908347, -0.136642,
		41.342922, 37.705189, 24.368372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289593, 37.124592, 23.718019>,  <41.619610, 37.069347, 24.464022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289593, 37.124592, 23.718019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.372108, 37.494080, 23.847136>,  <41.421619, 37.715771, 23.924604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.372108, 37.494080, 23.847136>,  <41.289593, 37.124592, 23.718019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372108, 37.494080, 23.847136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728993, 0.074960, -0.680404,
		-0.652697, 0.375672, -0.657919,
		0.206291, 0.923716, 0.322789,
		41.433994, 37.771194, 23.943972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459488, 37.443588, 23.032152>,  <41.289593, 37.124592, 23.718019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459488, 37.443588, 23.032152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.590496, 37.697083, 23.312468>,  <41.669102, 37.849178, 23.480658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.590496, 37.697083, 23.312468>,  <41.459488, 37.443588, 23.032152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590496, 37.697083, 23.312468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765056, 0.257364, -0.590299,
		-0.554453, 0.729480, -0.400551,
		0.327524, 0.633737, 0.700789,
		41.688755, 37.887203, 23.522705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509216, 38.053177, 22.723135>,  <41.459488, 37.443588, 23.032152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509216, 38.053177, 22.723135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.756840, 38.057362, 23.037245>,  <41.905415, 38.059872, 23.225710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.756840, 38.057362, 23.037245>,  <41.509216, 38.053177, 22.723135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756840, 38.057362, 23.037245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775499, 0.149672, -0.613351,
		-0.123952, 0.988680, 0.084541,
		0.619061, 0.010465, 0.785273,
		41.942558, 38.060501, 23.272827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871941, 38.573208, 22.566133>,  <41.509216, 38.053177, 22.723135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871941, 38.573208, 22.566133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.092724, 38.375896, 22.835064>,  <42.225193, 38.257507, 22.996422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.092724, 38.375896, 22.835064>,  <41.871941, 38.573208, 22.566133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092724, 38.375896, 22.835064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833149, 0.359861, -0.419956,
		-0.034787, 0.791942, 0.609604,
		0.551954, -0.493282, 0.672324,
		42.258308, 38.227913, 23.036760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397385, 39.030262, 22.616934>,  <41.871941, 38.573208, 22.566133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397385, 39.030262, 22.616934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.535660, 38.697430, 22.790434>,  <42.618626, 38.497730, 22.894533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.535660, 38.697430, 22.790434>,  <42.397385, 39.030262, 22.616934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535660, 38.697430, 22.790434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877664, 0.123186, -0.463175,
		0.331967, 0.540802, 0.772872,
		0.345692, -0.832081, 0.433749,
		42.639366, 38.447803, 22.920559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950611, 39.157074, 22.992350>,  <42.397385, 39.030262, 22.616934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950611, 39.157074, 22.992350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.968292, 38.776779, 22.869614>,  <42.978901, 38.548603, 22.795973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.968292, 38.776779, 22.869614>,  <42.950611, 39.157074, 22.992350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968292, 38.776779, 22.869614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813971, 0.212348, -0.540702,
		0.579221, -0.225861, 0.783256,
		0.044200, -0.950734, -0.306840,
		42.981552, 38.491558, 22.777561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635223, 38.978783, 22.955313>,  <42.950611, 39.157074, 22.992350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635223, 38.978783, 22.955313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.488998, 38.668659, 22.749300>,  <43.401264, 38.482586, 22.625692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.488998, 38.668659, 22.749300>,  <43.635223, 38.978783, 22.955313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488998, 38.668659, 22.749300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853839, -0.059033, -0.517179,
		0.370571, -0.628814, 0.683571,
		-0.365563, -0.775311, -0.515030,
		43.379330, 38.436066, 22.594791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228821, 38.468090, 22.933329>,  <43.635223, 38.978783, 22.955313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228821, 38.468090, 22.933329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.972115, 38.391918, 22.636175>,  <43.818092, 38.346214, 22.457882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.972115, 38.391918, 22.636175>,  <44.228821, 38.468090, 22.933329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972115, 38.391918, 22.636175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749613, -0.360294, -0.555219,
		-0.161927, -0.913195, 0.373971,
		-0.641763, -0.190428, -0.742885,
		43.779587, 38.334789, 22.413309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265606, 37.694069, 22.804604>,  <44.228821, 38.468090, 22.933329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265606, 37.694069, 22.804604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.113159, 37.870655, 22.479677>,  <44.021690, 37.976608, 22.284721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.113159, 37.870655, 22.479677>,  <44.265606, 37.694069, 22.804604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113159, 37.870655, 22.479677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759618, -0.351317, -0.547317,
		-0.527003, -0.825642, -0.201453,
		-0.381114, 0.441466, -0.812318,
		43.998825, 38.003094, 22.235981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291218, 37.174637, 22.339935>,  <44.265606, 37.694069, 22.804604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291218, 37.174637, 22.339935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.233696, 37.509758, 22.129261>,  <44.199181, 37.710831, 22.002855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.233696, 37.509758, 22.129261>,  <44.291218, 37.174637, 22.339935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233696, 37.509758, 22.129261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506188, -0.395051, -0.766622,
		-0.850349, -0.376849, -0.367276,
		-0.143808, 0.837806, -0.526688,
		44.190552, 37.761101, 21.971254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455559, 36.400921, 22.453751>,  <44.291218, 37.174637, 22.339935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455559, 36.400921, 22.453751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.141045, 36.625294, 22.350134>,  <43.952335, 36.759918, 22.287964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.141045, 36.625294, 22.350134>,  <44.455559, 36.400921, 22.453751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.141045, 36.625294, 22.350134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610641, -0.769406, 0.187433,
		-0.094172, 0.305559, 0.947505,
		-0.786288, 0.560934, -0.259043,
		43.905159, 36.793575, 22.272421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931297, 36.471481, 22.971737>,  <44.455559, 36.400921, 22.453751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931297, 36.471481, 22.971737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.731499, 36.526684, 22.629637>,  <43.611618, 36.559803, 22.424376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.731499, 36.526684, 22.629637>,  <43.931297, 36.471481, 22.971737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731499, 36.526684, 22.629637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572278, -0.793723, 0.206157,
		-0.650384, 0.592417, 0.475439,
		-0.499498, 0.138002, -0.855252,
		43.581650, 36.568085, 22.373060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264713, 36.479328, 23.090473>,  <43.931297, 36.471481, 22.971737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264713, 36.479328, 23.090473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.276421, 36.355179, 22.710407>,  <43.283443, 36.280689, 22.482368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.276421, 36.355179, 22.710407>,  <43.264713, 36.479328, 23.090473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276421, 36.355179, 22.710407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607370, -0.760484, 0.229706,
		-0.793880, 0.570379, -0.210767,
		0.029265, -0.310373, -0.950165,
		43.285202, 36.262066, 22.425358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509087, 36.396233, 22.762615>,  <43.264713, 36.479328, 23.090473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509087, 36.396233, 22.762615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.768738, 36.196041, 22.533476>,  <42.924530, 36.075928, 22.395992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.768738, 36.196041, 22.533476>,  <42.509087, 36.396233, 22.762615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768738, 36.196041, 22.533476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631966, -0.773967, -0.039927,
		-0.423383, 0.387938, -0.818688,
		0.649127, -0.500479, -0.572848,
		42.963474, 36.045898, 22.361622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221485, 36.210449, 22.089787>,  <42.509087, 36.396233, 22.762615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221485, 36.210449, 22.089787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.504395, 35.932575, 22.142214>,  <42.674141, 35.765850, 22.173670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.504395, 35.932575, 22.142214>,  <42.221485, 36.210449, 22.089787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504395, 35.932575, 22.142214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705554, -0.682042, 0.192387,
		-0.044253, -0.228546, -0.972527,
		0.707274, -0.694683, 0.131069,
		42.716576, 35.724171, 22.181534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032970, 35.646278, 21.716177>,  <42.221485, 36.210449, 22.089787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032970, 35.646278, 21.716177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.270367, 35.490490, 21.997911>,  <42.412804, 35.397018, 22.166952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.270367, 35.490490, 21.997911>,  <42.032970, 35.646278, 21.716177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270367, 35.490490, 21.997911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690137, -0.696526, 0.196372,
		0.414108, -0.602632, -0.682165,
		0.593486, -0.389468, 0.704336,
		42.448414, 35.373650, 22.209211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943329, 34.898846, 21.718803>,  <42.032970, 35.646278, 21.716177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943329, 34.898846, 21.718803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.134319, 34.937889, 22.068087>,  <42.248913, 34.961315, 22.277657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.134319, 34.937889, 22.068087>,  <41.943329, 34.898846, 21.718803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134319, 34.937889, 22.068087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627430, -0.657845, 0.416620,
		0.615100, -0.746802, -0.252861,
		0.477476, 0.097610, 0.873206,
		42.277561, 34.967171, 22.330048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922520, 34.239883, 21.969469>,  <41.943329, 34.898846, 21.718803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922520, 34.239883, 21.969469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.990166, 34.491287, 22.273148>,  <42.030754, 34.642128, 22.455355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.990166, 34.491287, 22.273148>,  <41.922520, 34.239883, 21.969469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990166, 34.491287, 22.273148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767278, -0.399522, 0.501664,
		0.618616, -0.667352, 0.414676,
		0.169114, 0.628509, 0.759195,
		42.040901, 34.679840, 22.500906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913849, 33.781937, 22.648989>,  <41.922520, 34.239883, 21.969469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913849, 33.781937, 22.648989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.886780, 34.163685, 22.765335>,  <41.870541, 34.392735, 22.835142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.886780, 34.163685, 22.765335>,  <41.913849, 33.781937, 22.648989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886780, 34.163685, 22.765335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746217, -0.241926, 0.620187,
		0.662255, -0.175082, 0.728536,
		-0.067668, 0.954368, 0.290866,
		41.866478, 34.449997, 22.852594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497814, 33.541466, 23.137863>,  <41.913849, 33.781937, 22.648989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497814, 33.541466, 23.137863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.525795, 33.148155, 23.205114>,  <42.542583, 32.912167, 23.245466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.525795, 33.148155, 23.205114>,  <42.497814, 33.541466, 23.137863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525795, 33.148155, 23.205114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783677, -0.050114, -0.619143,
		0.617217, 0.175070, 0.767069,
		0.069952, -0.983280, 0.168130,
		42.546780, 32.853172, 23.255552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182018, 33.427731, 23.172575>,  <42.497814, 33.541466, 23.137863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182018, 33.427731, 23.172575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.038071, 33.057667, 23.124285>,  <42.951702, 32.835629, 23.095310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.038071, 33.057667, 23.124285>,  <43.182018, 33.427731, 23.172575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038071, 33.057667, 23.124285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800379, -0.239626, -0.549520,
		0.479466, -0.294380, 0.826712,
		-0.359870, -0.925159, -0.120723,
		42.930111, 32.780121, 23.088068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770172, 32.945934, 23.316355>,  <43.182018, 33.427731, 23.172575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770172, 32.945934, 23.316355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.499851, 32.771301, 23.078806>,  <43.337658, 32.666523, 22.936275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.499851, 32.771301, 23.078806>,  <43.770172, 32.945934, 23.316355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499851, 32.771301, 23.078806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707219, -0.157053, -0.689329,
		0.207678, -0.885851, 0.414896,
		-0.675804, -0.436581, -0.593874,
		43.297112, 32.640327, 22.900644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122768, 32.368107, 23.015398>,  <43.770172, 32.945934, 23.316355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122768, 32.368107, 23.015398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.796253, 32.432861, 22.793598>,  <43.600346, 32.471714, 22.660519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.796253, 32.432861, 22.793598>,  <44.122768, 32.368107, 23.015398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796253, 32.432861, 22.793598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520518, -0.210090, -0.827601,
		-0.250474, -0.964186, 0.087228,
		-0.816286, 0.161888, -0.554499,
		43.551365, 32.481426, 22.627249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048969, 31.731426, 22.633835>,  <44.122768, 32.368107, 23.015398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048969, 31.731426, 22.633835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.868671, 32.034336, 22.444788>,  <43.760490, 32.216080, 22.331360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.868671, 32.034336, 22.444788>,  <44.048969, 31.731426, 22.633835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868671, 32.034336, 22.444788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561354, -0.171190, -0.809676,
		-0.694053, -0.630263, -0.347935,
		-0.450746, 0.757273, -0.472615,
		43.733448, 32.261517, 22.303003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963394, 31.429585, 22.010511>,  <44.048969, 31.731426, 22.633835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963394, 31.429585, 22.010511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.903591, 31.820860, 21.952824>,  <43.867710, 32.055626, 21.918211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.903591, 31.820860, 21.952824>,  <43.963394, 31.429585, 22.010511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903591, 31.820860, 21.952824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454757, -0.061488, -0.888490,
		-0.877977, -0.198419, -0.435644,
		-0.149506, 0.978187, -0.144217,
		43.858738, 32.114315, 21.909559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745110, 31.481812, 21.319021>,  <43.963394, 31.429585, 22.010511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745110, 31.481812, 21.319021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.869774, 31.854147, 21.395344>,  <43.944572, 32.077549, 21.441137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.869774, 31.854147, 21.395344>,  <43.745110, 31.481812, 21.319021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.869774, 31.854147, 21.395344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533303, -0.005160, -0.845909,
		-0.786421, 0.365392, -0.498028,
		0.311658, 0.930839, 0.190806,
		43.963272, 32.133400, 21.452585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520992, 31.955437, 20.734436>,  <43.745110, 31.481812, 21.319021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520992, 31.955437, 20.734436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.824867, 32.121880, 20.934330>,  <44.007191, 32.221745, 21.054266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.824867, 32.121880, 20.934330>,  <43.520992, 31.955437, 20.734436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824867, 32.121880, 20.934330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539176, 0.026579, -0.841773,
		-0.363552, 0.908926, -0.204164,
		0.759684, 0.416109, 0.499734,
		44.052773, 32.246712, 21.084249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877224, 32.314327, 20.179880>,  <43.520992, 31.955437, 20.734436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877224, 32.314327, 20.179880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.115162, 32.269295, 20.498247>,  <44.257923, 32.242275, 20.689268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.115162, 32.269295, 20.498247>,  <43.877224, 32.314327, 20.179880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115162, 32.269295, 20.498247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802434, 0.024608, -0.596234,
		0.047541, 0.993337, 0.104980,
		0.594844, -0.112585, 0.795918,
		44.293613, 32.235519, 20.737022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.209442, 34.980991, 33.881676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607891, 34.945873, 33.883644>,  <36.846962, 34.924805, 33.884827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607891, 34.945873, 33.883644>,  <36.209442, 34.980991, 33.881676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607891, 34.945873, 33.883644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036760, -0.466654, -0.883676,
		0.079877, 0.880072, -0.468074,
		0.996127, -0.087791, 0.004923,
		36.906731, 34.919537, 33.885120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512211, 35.236401, 33.368271>,  <36.209442, 34.980991, 33.881676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512211, 35.236401, 33.368271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735741, 34.926304, 33.486061>,  <36.869858, 34.740246, 33.556736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735741, 34.926304, 33.486061>,  <36.512211, 35.236401, 33.368271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735741, 34.926304, 33.486061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066166, -0.395647, -0.916016,
		0.826639, 0.492411, -0.272393,
		0.558828, -0.775238, 0.294476,
		36.903389, 34.693733, 33.574406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208694, 35.309223, 33.022587>,  <36.512211, 35.236401, 33.368271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208694, 35.309223, 33.022587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.199879, 34.922134, 33.123005>,  <37.194588, 34.689880, 33.183258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.199879, 34.922134, 33.123005>,  <37.208694, 35.309223, 33.022587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199879, 34.922134, 33.123005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171513, -0.251047, -0.952659,
		0.984935, 0.022062, 0.171511,
		-0.022040, -0.967724, 0.251049,
		37.193268, 34.631817, 33.198318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712578, 34.953037, 32.685215>,  <37.208694, 35.309223, 33.022587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712578, 34.953037, 32.685215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.493412, 34.635807, 32.791656>,  <37.361912, 34.445469, 32.855522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.493412, 34.635807, 32.791656>,  <37.712578, 34.953037, 32.685215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493412, 34.635807, 32.791656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067163, -0.275374, -0.958988,
		0.833833, -0.543318, 0.097616,
		-0.547916, -0.793079, 0.266107,
		37.329037, 34.397884, 32.871487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131313, 34.262875, 32.601032>,  <37.712578, 34.953037, 32.685215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131313, 34.262875, 32.601032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.738438, 34.191956, 32.576153>,  <37.502712, 34.149403, 32.561226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.738438, 34.191956, 32.576153>,  <38.131313, 34.262875, 32.601032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738438, 34.191956, 32.576153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128960, -0.395378, -0.909421,
		0.136652, -0.901244, 0.411201,
		-0.982189, -0.177302, -0.062196,
		37.443779, 34.138763, 32.557495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177483, 33.605953, 32.156120>,  <38.131313, 34.262875, 32.601032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177483, 33.605953, 32.156120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.783073, 33.671947, 32.165474>,  <37.546429, 33.711544, 32.171085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.783073, 33.671947, 32.165474>,  <38.177483, 33.605953, 32.156120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783073, 33.671947, 32.165474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087539, -0.393459, -0.915165,
		-0.141788, -0.904417, 0.402401,
		-0.986019, 0.164986, 0.023384,
		37.487267, 33.721443, 32.172489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850842, 32.945332, 32.130333>,  <38.177483, 33.605953, 32.156120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850842, 32.945332, 32.130333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.599762, 33.231838, 32.008381>,  <37.449116, 33.403744, 31.935209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.599762, 33.231838, 32.008381>,  <37.850842, 32.945332, 32.130333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599762, 33.231838, 32.008381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165071, -0.505211, -0.847061,
		-0.760754, -0.481372, 0.435356,
		-0.627698, 0.716270, -0.304881,
		37.411453, 33.446720, 31.916916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316063, 32.653324, 31.781784>,  <37.850842, 32.945332, 32.130333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316063, 32.653324, 31.781784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.301369, 33.027435, 31.640978>,  <37.292553, 33.251900, 31.556494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.301369, 33.027435, 31.640978>,  <37.316063, 32.653324, 31.781784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301369, 33.027435, 31.640978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013303, -0.351763, -0.935994,
		-0.999236, -0.039068, 0.000481,
		-0.036737, 0.935273, -0.352014,
		37.290348, 33.308018, 31.535374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900322, 32.517326, 31.214094>,  <37.316063, 32.653324, 31.781784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900322, 32.517326, 31.214094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991444, 32.903053, 31.160135>,  <37.046116, 33.134491, 31.127760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991444, 32.903053, 31.160135>,  <36.900322, 32.517326, 31.214094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991444, 32.903053, 31.160135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127745, -0.107745, -0.985937,
		-0.965291, 0.241832, 0.098642,
		0.227803, 0.964318, -0.134898,
		37.059784, 33.192348, 31.119665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377888, 32.806534, 30.748034>,  <36.900322, 32.517326, 31.214094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377888, 32.806534, 30.748034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727894, 32.999786, 30.735832>,  <36.937897, 33.115738, 30.728512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727894, 32.999786, 30.735832>,  <36.377888, 32.806534, 30.748034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727894, 32.999786, 30.735832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025116, -0.108229, -0.993809,
		-0.483444, 0.868831, -0.106836,
		0.875015, 0.483134, -0.030502,
		36.990398, 33.144726, 30.726683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318237, 33.214981, 30.216887>,  <36.377888, 32.806534, 30.748034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318237, 33.214981, 30.216887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.704041, 33.124229, 30.270927>,  <36.935524, 33.069778, 30.303352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.704041, 33.124229, 30.270927>,  <36.318237, 33.214981, 30.216887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704041, 33.124229, 30.270927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090719, -0.195783, -0.976442,
		0.247987, 0.954041, -0.168252,
		0.964507, -0.226881, 0.135101,
		36.993393, 33.056164, 30.311459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615822, 33.504791, 29.683386>,  <36.318237, 33.214981, 30.216887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615822, 33.504791, 29.683386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.905186, 33.256618, 29.804546>,  <37.078804, 33.107716, 29.877243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.905186, 33.256618, 29.804546>,  <36.615822, 33.504791, 29.683386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905186, 33.256618, 29.804546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212921, -0.216858, -0.952700,
		0.656769, 0.753685, -0.024775,
		0.723408, -0.620429, 0.302901,
		37.122208, 33.070488, 29.895416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573196, 34.212315, 29.634565>,  <36.615822, 33.504791, 29.683386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573196, 34.212315, 29.634565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.286861, 34.422218, 29.450302>,  <36.115063, 34.548161, 29.339745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.286861, 34.422218, 29.450302>,  <36.573196, 34.212315, 29.634565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286861, 34.422218, 29.450302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491592, 0.089787, 0.866185,
		0.495904, 0.846499, 0.193697,
		-0.715833, 0.524764, -0.460658,
		36.072113, 34.579647, 29.312105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511127, 34.758369, 30.041763>,  <36.573196, 34.212315, 29.634565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511127, 34.758369, 30.041763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158001, 34.749378, 29.854092>,  <35.946125, 34.743984, 29.741488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158001, 34.749378, 29.854092>,  <36.511127, 34.758369, 30.041763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158001, 34.749378, 29.854092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469191, 0.089533, 0.878546,
		0.022259, 0.995730, -0.089587,
		-0.882816, -0.022478, -0.469181,
		35.893158, 34.742634, 29.713337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155495, 35.341797, 30.242144>,  <36.511127, 34.758369, 30.041763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155495, 35.341797, 30.242144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885544, 35.081127, 30.103655>,  <35.723576, 34.924725, 30.020561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885544, 35.081127, 30.103655>,  <36.155495, 35.341797, 30.242144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885544, 35.081127, 30.103655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452562, -0.005079, 0.891719,
		-0.582867, 0.758483, -0.291495,
		-0.674873, -0.651673, -0.346221,
		35.683083, 34.885624, 29.999788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521004, 35.632938, 30.504107>,  <36.155495, 35.341797, 30.242144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521004, 35.632938, 30.504107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.419758, 35.256618, 30.413931>,  <35.359013, 35.030827, 30.359825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.419758, 35.256618, 30.413931>,  <35.521004, 35.632938, 30.504107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419758, 35.256618, 30.413931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511038, -0.067842, 0.856876,
		-0.821447, 0.332093, -0.463615,
		-0.253110, -0.940803, -0.225441,
		35.343826, 34.974377, 30.346298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831509, 35.660763, 30.667088>,  <35.521004, 35.632938, 30.504107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831509, 35.660763, 30.667088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956600, 35.280907, 30.674934>,  <35.031654, 35.052994, 30.679644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956600, 35.280907, 30.674934>,  <34.831509, 35.660763, 30.667088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956600, 35.280907, 30.674934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573721, -0.172391, 0.800703,
		-0.756998, -0.261656, -0.598740,
		0.312726, -0.949641, 0.019618,
		35.050419, 34.996014, 30.680820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272472, 35.294884, 30.867016>,  <34.831509, 35.660763, 30.667088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272472, 35.294884, 30.867016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566002, 35.028202, 30.919176>,  <34.742119, 34.868195, 30.950472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566002, 35.028202, 30.919176>,  <34.272472, 35.294884, 30.867016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566002, 35.028202, 30.919176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366229, -0.226578, 0.902518,
		-0.572167, -0.710048, -0.410435,
		0.733827, -0.666704, 0.130399,
		34.786148, 34.828190, 30.958296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925343, 34.663101, 30.795866>,  <34.272472, 35.294884, 30.867016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925343, 34.663101, 30.795866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.263603, 34.605213, 31.001360>,  <34.466560, 34.570480, 31.124657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.263603, 34.605213, 31.001360>,  <33.925343, 34.663101, 30.795866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263603, 34.605213, 31.001360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531346, -0.137387, 0.835940,
		-0.050391, -0.979889, -0.193075,
		0.845654, -0.144713, 0.513737,
		34.517300, 34.561798, 31.155481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877636, 34.014687, 31.094378>,  <33.925343, 34.663101, 30.795866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877636, 34.014687, 31.094378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.149609, 34.220329, 31.303522>,  <34.312794, 34.343716, 31.429008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.149609, 34.220329, 31.303522>,  <33.877636, 34.014687, 31.094378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149609, 34.220329, 31.303522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562099, -0.092480, 0.821883,
		0.470893, -0.852724, 0.226101,
		0.679930, 0.514110, 0.522863,
		34.353588, 34.374561, 31.460381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056919, 33.626762, 31.576262>,  <33.877636, 34.014687, 31.094378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056919, 33.626762, 31.576262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.177681, 33.967266, 31.747942>,  <34.250137, 34.171570, 31.850950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.177681, 33.967266, 31.747942>,  <34.056919, 33.626762, 31.576262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177681, 33.967266, 31.747942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410726, -0.290141, 0.864362,
		0.860324, -0.437239, 0.262039,
		0.301905, 0.851258, 0.429201,
		34.268253, 34.222645, 31.876701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283344, 33.460789, 32.187180>,  <34.056919, 33.626762, 31.576262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283344, 33.460789, 32.187180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.231567, 33.854725, 32.233379>,  <34.200500, 34.091087, 32.261101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.231567, 33.854725, 32.233379>,  <34.283344, 33.460789, 32.187180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231567, 33.854725, 32.233379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326872, -0.152348, 0.932708,
		0.936163, 0.082974, 0.341636,
		-0.129438, 0.984838, 0.115500,
		34.192738, 34.150177, 32.268028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602398, 33.641685, 32.813133>,  <34.283344, 33.460789, 32.187180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602398, 33.641685, 32.813133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324905, 33.923088, 32.751396>,  <34.158409, 34.091930, 32.714355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324905, 33.923088, 32.751396>,  <34.602398, 33.641685, 32.813133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324905, 33.923088, 32.751396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320761, -0.109917, 0.940761,
		0.644863, 0.702141, 0.301908,
		-0.693732, 0.703502, -0.154338,
		34.116787, 34.134140, 32.705093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543541, 34.094543, 33.464069>,  <34.602398, 33.641685, 32.813133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543541, 34.094543, 33.464069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.204796, 34.143120, 33.256962>,  <34.001549, 34.172264, 33.132698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.204796, 34.143120, 33.256962>,  <34.543541, 34.094543, 33.464069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204796, 34.143120, 33.256962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522695, -0.010508, 0.852455,
		0.098079, 0.992543, 0.072373,
		-0.846859, 0.121437, -0.517767,
		33.950737, 34.179550, 33.101631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259693, 34.559727, 33.818134>,  <34.543541, 34.094543, 33.464069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259693, 34.559727, 33.818134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.960560, 34.399635, 33.606262>,  <33.781082, 34.303581, 33.479137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.960560, 34.399635, 33.606262>,  <34.259693, 34.559727, 33.818134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960560, 34.399635, 33.606262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598089, 0.059836, 0.799193,
		-0.288169, 0.914458, -0.284121,
		-0.747829, -0.400232, -0.529684,
		33.736210, 34.279564, 33.447357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914169, 35.137196, 33.758331>,  <34.259693, 34.559727, 33.818134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914169, 35.137196, 33.758331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676987, 34.819363, 33.706116>,  <33.534679, 34.628662, 33.674786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676987, 34.819363, 33.706116>,  <33.914169, 35.137196, 33.758331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676987, 34.819363, 33.706116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736154, 0.469217, 0.487762,
		-0.326317, 0.385318, -0.863161,
		-0.592954, -0.794585, -0.130540,
		33.499100, 34.580986, 33.666954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254215, 35.846085, 33.578838>,  <33.914169, 35.137196, 33.758331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254215, 35.846085, 33.578838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.631866, 35.940376, 33.486702>,  <34.858456, 35.996952, 33.431419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.631866, 35.940376, 33.486702>,  <34.254215, 35.846085, 33.578838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631866, 35.940376, 33.486702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329573, 0.669958, -0.665235,
		-0.002492, 0.703982, 0.710214,
		0.944127, 0.235725, -0.230344,
		34.915104, 36.011093, 33.417599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155102, 36.237968, 33.033699>,  <34.254215, 35.846085, 33.578838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155102, 36.237968, 33.033699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553375, 36.274124, 33.025349>,  <34.792339, 36.295818, 33.020340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553375, 36.274124, 33.025349>,  <34.155102, 36.237968, 33.033699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553375, 36.274124, 33.025349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079832, 0.720197, -0.689162,
		-0.047262, 0.687856, 0.724307,
		0.995687, 0.090394, -0.020875,
		34.852081, 36.301243, 33.019085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438175, 36.992043, 33.248009>,  <34.155102, 36.237968, 33.033699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438175, 36.992043, 33.248009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679962, 36.788242, 33.003052>,  <34.825035, 36.665962, 32.856079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679962, 36.788242, 33.003052>,  <34.438175, 36.992043, 33.248009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679962, 36.788242, 33.003052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111527, 0.815283, -0.568221,
		0.788783, 0.275173, 0.549637,
		0.604469, -0.509503, -0.612392,
		34.861301, 36.635391, 32.819336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075829, 37.331272, 33.055206>,  <34.438175, 36.992043, 33.248009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075829, 37.331272, 33.055206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.997665, 37.079273, 32.754562>,  <34.950768, 36.928074, 32.574177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.997665, 37.079273, 32.754562>,  <35.075829, 37.331272, 33.055206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997665, 37.079273, 32.754562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364007, 0.665052, -0.652077,
		0.910667, -0.401014, 0.099366,
		-0.195409, -0.629995, -0.751612,
		34.939041, 36.890274, 32.529079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490852, 37.660244, 32.593563>,  <35.075829, 37.331272, 33.055206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490852, 37.660244, 32.593563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.302525, 37.382416, 32.375977>,  <35.189526, 37.215721, 32.245426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.302525, 37.382416, 32.375977>,  <35.490852, 37.660244, 32.593563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302525, 37.382416, 32.375977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274984, 0.470330, -0.838554,
		0.838278, -0.544393, -0.030447,
		-0.470823, -0.694569, -0.543967,
		35.161278, 37.174046, 32.212788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927319, 37.404778, 32.061523>,  <35.490852, 37.660244, 32.593563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927319, 37.404778, 32.061523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.555820, 37.347630, 31.924686>,  <35.332924, 37.313343, 31.842585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.555820, 37.347630, 31.924686>,  <35.927319, 37.404778, 32.061523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555820, 37.347630, 31.924686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303429, 0.237233, -0.922850,
		0.213000, -0.960890, -0.176978,
		-0.928742, -0.142866, -0.342092,
		35.277199, 37.304768, 31.822058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060276, 36.881897, 31.616394>,  <35.927319, 37.404778, 32.061523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060276, 36.881897, 31.616394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712284, 37.040588, 31.499271>,  <35.503487, 37.135803, 31.428997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712284, 37.040588, 31.499271>,  <36.060276, 36.881897, 31.616394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712284, 37.040588, 31.499271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311944, -0.017052, -0.949947,
		-0.381868, -0.917776, -0.108923,
		-0.869981, 0.396732, -0.292806,
		35.451290, 37.159607, 31.411430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910984, 36.557976, 31.008854>,  <36.060276, 36.881897, 31.616394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910984, 36.557976, 31.008854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.665657, 36.873482, 30.992382>,  <35.518463, 37.062786, 30.982498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.665657, 36.873482, 30.992382>,  <35.910984, 36.557976, 31.008854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665657, 36.873482, 30.992382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098237, 0.024445, -0.994863,
		-0.783705, -0.614210, -0.092479,
		-0.613315, 0.788764, -0.041181,
		35.481663, 37.110111, 30.980028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322239, 36.421604, 30.528114>,  <35.910984, 36.557976, 31.008854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322239, 36.421604, 30.528114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387314, 36.815228, 30.556875>,  <35.426361, 37.051399, 30.574131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387314, 36.815228, 30.556875>,  <35.322239, 36.421604, 30.528114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387314, 36.815228, 30.556875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199329, 0.038590, -0.979173,
		-0.966333, 0.173634, -0.189872,
		0.162690, 0.984054, 0.071901,
		35.436119, 37.110443, 30.578445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185524, 36.600384, 29.843479>,  <35.322239, 36.421604, 30.528114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185524, 36.600384, 29.843479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.346916, 36.926468, 30.009678>,  <35.443752, 37.122116, 30.109398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.346916, 36.926468, 30.009678>,  <35.185524, 36.600384, 29.843479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346916, 36.926468, 30.009678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388036, 0.258791, -0.884565,
		-0.828631, 0.518135, -0.211912,
		0.403483, 0.815208, 0.415497,
		35.467960, 37.171032, 30.134327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008934, 37.178211, 29.407269>,  <35.185524, 36.600384, 29.843479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008934, 37.178211, 29.407269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332893, 37.298428, 29.608761>,  <35.527267, 37.370556, 29.729656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332893, 37.298428, 29.608761>,  <35.008934, 37.178211, 29.407269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332893, 37.298428, 29.608761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454540, 0.221247, -0.862811,
		-0.370756, 0.927754, 0.042581,
		0.809897, 0.300538, 0.503730,
		35.575863, 37.388588, 29.759880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198437, 37.715488, 29.066614>,  <35.008934, 37.178211, 29.407269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198437, 37.715488, 29.066614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530819, 37.617367, 29.266352>,  <35.730247, 37.558495, 29.386194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530819, 37.617367, 29.266352>,  <35.198437, 37.715488, 29.066614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530819, 37.617367, 29.266352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555476, 0.315696, -0.769274,
		0.031064, 0.916604, 0.398588,
		0.830952, -0.245303, 0.499345,
		35.780106, 37.543777, 29.416155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569351, 38.249882, 28.900366>,  <35.198437, 37.715488, 29.066614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569351, 38.249882, 28.900366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826302, 37.973446, 29.032879>,  <35.980469, 37.807583, 29.112387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826302, 37.973446, 29.032879>,  <35.569351, 38.249882, 28.900366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826302, 37.973446, 29.032879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662480, 0.283382, -0.693408,
		0.385331, 0.664894, 0.639873,
		0.642371, -0.691094, 0.331283,
		36.019012, 37.766117, 29.132263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174423, 38.605133, 28.901134>,  <35.569351, 38.249882, 28.900366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174423, 38.605133, 28.901134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.288277, 38.221687, 28.898676>,  <36.356590, 37.991619, 28.897202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.288277, 38.221687, 28.898676>,  <36.174423, 38.605133, 28.901134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288277, 38.221687, 28.898676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832279, 0.250296, -0.494635,
		0.475703, 0.135676, 0.869079,
		0.284637, -0.958616, -0.006147,
		36.373669, 37.934101, 28.896832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997711, 38.620922, 29.073069>,  <36.174423, 38.605133, 28.901134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997711, 38.620922, 29.073069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.919098, 38.258911, 28.922176>,  <36.871929, 38.041706, 28.831642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.919098, 38.258911, 28.922176>,  <36.997711, 38.620922, 29.073069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919098, 38.258911, 28.922176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826476, 0.054096, -0.560367,
		0.527554, -0.421900, 0.737352,
		-0.196531, -0.905027, -0.377229,
		36.860138, 37.987404, 28.809008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592300, 38.429573, 29.057096>,  <36.997711, 38.620922, 29.073069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592300, 38.429573, 29.057096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.387173, 38.195160, 28.806154>,  <37.264095, 38.054512, 28.655588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.387173, 38.195160, 28.806154>,  <37.592300, 38.429573, 29.057096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387173, 38.195160, 28.806154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812072, -0.094087, -0.575923,
		0.278485, -0.804804, 0.524153,
		-0.512821, -0.586035, -0.627357,
		37.233326, 38.019348, 28.617947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041111, 37.894135, 28.921238>,  <37.592300, 38.429573, 29.057096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041111, 37.894135, 28.921238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.799042, 37.912025, 28.603304>,  <37.653801, 37.922760, 28.412542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.799042, 37.912025, 28.603304>,  <38.041111, 37.894135, 28.921238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799042, 37.912025, 28.603304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794341, -0.032296, -0.606613,
		-0.052807, -0.998477, -0.015990,
		-0.605172, 0.044735, -0.794837,
		37.617489, 37.925446, 28.364853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416103, 37.523342, 28.377510>,  <38.041111, 37.894135, 28.921238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416103, 37.523342, 28.377510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151466, 37.738945, 28.168983>,  <37.992683, 37.868305, 28.043867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151466, 37.738945, 28.168983>,  <38.416103, 37.523342, 28.377510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151466, 37.738945, 28.168983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669147, 0.110595, -0.734855,
		-0.338437, -0.835009, -0.433843,
		-0.661591, 0.539007, -0.521314,
		37.952988, 37.900646, 28.012589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180370, 37.228077, 27.791273>,  <38.416103, 37.523342, 28.377510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180370, 37.228077, 27.791273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.109589, 37.602993, 27.671154>,  <38.067120, 37.827942, 27.599083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.109589, 37.602993, 27.671154>,  <38.180370, 37.228077, 27.791273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109589, 37.602993, 27.671154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566254, -0.152604, -0.809981,
		-0.805011, -0.313378, -0.503738,
		-0.176958, 0.937287, -0.300299,
		38.056499, 37.884178, 27.581064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073997, 37.159557, 27.092951>,  <38.180370, 37.228077, 27.791273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073997, 37.159557, 27.092951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.170750, 37.541359, 27.162710>,  <38.228802, 37.770439, 27.204565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.170750, 37.541359, 27.162710>,  <38.073997, 37.159557, 27.092951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170750, 37.541359, 27.162710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526599, 0.021826, -0.849833,
		-0.814976, 0.297399, -0.497362,
		0.241884, 0.954504, 0.174398,
		38.243313, 37.827709, 27.215029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054913, 37.418781, 26.469406>,  <38.073997, 37.159557, 27.092951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054913, 37.418781, 26.469406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.261444, 37.696587, 26.669828>,  <38.385365, 37.863270, 26.790081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.261444, 37.696587, 26.669828>,  <38.054913, 37.418781, 26.469406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261444, 37.696587, 26.669828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612709, 0.109182, -0.782731,
		-0.598321, 0.711150, -0.369158,
		0.516334, 0.694510, 0.501054,
		38.416344, 37.904942, 26.820145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160698, 37.914734, 26.018360>,  <38.054913, 37.418781, 26.469406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160698, 37.914734, 26.018360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.444172, 38.014252, 26.282440>,  <38.614258, 38.073963, 26.440887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.444172, 38.014252, 26.282440>,  <38.160698, 37.914734, 26.018360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444172, 38.014252, 26.282440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662253, 0.088081, -0.744085,
		-0.243277, 0.964542, -0.102344,
		0.708687, 0.248797, 0.660200,
		38.656776, 38.088890, 26.480499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689178, 38.458508, 25.675806>,  <38.160698, 37.914734, 26.018360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689178, 38.458508, 25.675806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.925068, 38.338047, 25.975548>,  <39.066601, 38.265770, 26.155394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.925068, 38.338047, 25.975548>,  <38.689178, 38.458508, 25.675806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925068, 38.338047, 25.975548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806086, 0.162616, -0.569018,
		0.049503, 0.939609, 0.338652,
		0.589725, -0.301151, 0.749355,
		39.101986, 38.247704, 26.200354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238533, 38.942883, 25.790541>,  <38.689178, 38.458508, 25.675806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238533, 38.942883, 25.790541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.371017, 38.601524, 25.951546>,  <39.450508, 38.396709, 26.048149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.371017, 38.601524, 25.951546>,  <39.238533, 38.942883, 25.790541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371017, 38.601524, 25.951546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854054, 0.089799, -0.512375,
		0.401114, 0.513470, 0.758588,
		0.331210, -0.853396, 0.402511,
		39.470379, 38.345505, 26.072300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932972, 39.053944, 26.029034>,  <39.238533, 38.942883, 25.790541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932972, 39.053944, 26.029034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.910492, 38.656963, 25.985445>,  <39.897003, 38.418774, 25.959291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.910492, 38.656963, 25.985445>,  <39.932972, 39.053944, 26.029034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910492, 38.656963, 25.985445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800667, 0.020404, -0.598762,
		0.596468, -0.120898, 0.793480,
		-0.056199, -0.992455, -0.108969,
		39.893631, 38.359226, 25.952755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581486, 38.857414, 25.920221>,  <39.932972, 39.053944, 26.029034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581486, 38.857414, 25.920221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.430607, 38.504200, 25.808535>,  <40.340080, 38.292271, 25.741522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.430607, 38.504200, 25.808535>,  <40.581486, 38.857414, 25.920221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430607, 38.504200, 25.808535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757571, -0.120766, -0.641484,
		0.532737, -0.453493, 0.714518,
		-0.377198, -0.883040, -0.279217,
		40.317448, 38.239288, 25.724770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158585, 38.360981, 25.991562>,  <40.581486, 38.857414, 25.920221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158585, 38.360981, 25.991562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.879082, 38.223198, 25.740774>,  <40.711380, 38.140530, 25.590302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.879082, 38.223198, 25.740774>,  <41.158585, 38.360981, 25.991562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879082, 38.223198, 25.740774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705010, -0.183047, -0.685168,
		0.121246, -0.920785, 0.370750,
		-0.698757, -0.344456, -0.626968,
		40.669456, 38.119862, 25.552683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365871, 37.737148, 25.732578>,  <41.158585, 38.360981, 25.991562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365871, 37.737148, 25.732578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.107540, 37.830902, 25.441933>,  <40.952541, 37.887154, 25.267546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.107540, 37.830902, 25.441933>,  <41.365871, 37.737148, 25.732578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107540, 37.830902, 25.441933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710055, -0.165365, -0.684453,
		-0.280584, -0.957975, -0.059631,
		-0.645828, 0.234388, -0.726614,
		40.913792, 37.901218, 25.223948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616711, 37.439167, 26.326820>,  <41.365871, 37.737148, 25.732578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616711, 37.439167, 26.326820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.998581, 37.557018, 26.343775>,  <42.227703, 37.627728, 26.353949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.998581, 37.557018, 26.343775>,  <41.616711, 37.439167, 26.326820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998581, 37.557018, 26.343775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167783, 0.415011, 0.894212,
		0.245868, -0.860791, 0.445633,
		0.954672, 0.294628, 0.042388,
		42.284981, 37.645409, 26.356491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012012, 37.033859, 26.773502>,  <41.616711, 37.439167, 26.326820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012012, 37.033859, 26.773502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.127861, 37.416634, 26.765518>,  <42.197372, 37.646297, 26.760727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.127861, 37.416634, 26.765518>,  <42.012012, 37.033859, 26.773502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127861, 37.416634, 26.765518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426561, 0.147714, 0.892315,
		0.856833, -0.249921, 0.450972,
		0.289623, 0.956933, -0.019960,
		42.214748, 37.703712, 26.759531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252892, 37.176712, 27.444870>,  <42.012012, 37.033859, 26.773502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252892, 37.176712, 27.444870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.200996, 37.539207, 27.283924>,  <42.169861, 37.756706, 27.187357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.200996, 37.539207, 27.283924>,  <42.252892, 37.176712, 27.444870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200996, 37.539207, 27.283924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464582, 0.302939, 0.832101,
		0.875975, 0.294889, 0.381719,
		-0.129739, 0.906239, -0.402367,
		42.162075, 37.811081, 27.163214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442410, 37.585072, 27.938135>,  <42.252892, 37.176712, 27.444870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442410, 37.585072, 27.938135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.220608, 37.818497, 27.700825>,  <42.087528, 37.958553, 27.558439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.220608, 37.818497, 27.700825>,  <42.442410, 37.585072, 27.938135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220608, 37.818497, 27.700825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543799, 0.285551, 0.789141,
		0.629925, 0.760205, 0.159003,
		-0.554506, 0.583565, -0.593275,
		42.054256, 37.993565, 27.522842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576969, 38.346493, 28.115837>,  <42.442410, 37.585072, 27.938135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576969, 38.346493, 28.115837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.213554, 38.312096, 27.952295>,  <41.995506, 38.291458, 27.854170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.213554, 38.312096, 27.952295>,  <42.576969, 38.346493, 28.115837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213554, 38.312096, 27.952295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390374, 0.523418, 0.757391,
		0.148873, 0.847726, -0.509115,
		-0.908540, -0.085990, -0.408853,
		41.940990, 38.286301, 27.829639>
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
