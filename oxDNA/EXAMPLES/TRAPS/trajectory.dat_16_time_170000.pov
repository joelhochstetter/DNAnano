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
	<36.597954, 52.965851, 49.341282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498386, 53.129631, 49.692368>,  <36.438644, 53.227898, 49.903019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498386, 53.129631, 49.692368>,  <36.597954, 52.965851, 49.341282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498386, 53.129631, 49.692368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873840, -0.295859, 0.385837,
		0.417662, 0.863029, -0.284147,
		-0.248921, 0.409449, 0.877719,
		36.423710, 53.252464, 49.955685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195023, 53.211597, 49.606205>,  <36.597954, 52.965851, 49.341282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195023, 53.211597, 49.606205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928913, 53.161545, 49.900620>,  <36.769245, 53.131516, 50.077267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928913, 53.161545, 49.900620>,  <37.195023, 53.211597, 49.606205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928913, 53.161545, 49.900620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648964, -0.584334, 0.487237,
		0.369123, 0.801809, 0.469948,
		-0.665277, -0.125129, 0.736036,
		36.729332, 53.124004, 50.121429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809200, 53.081539, 49.908394>,  <37.195023, 53.211597, 49.606205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809200, 53.081539, 49.908394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043964, 52.972633, 50.213394>,  <38.184822, 52.907288, 50.396393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043964, 52.972633, 50.213394>,  <37.809200, 53.081539, 49.908394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043964, 52.972633, 50.213394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640324, -0.420262, -0.642934,
		0.495500, 0.865592, -0.072317,
		0.586911, -0.272267, 0.762500,
		38.220039, 52.890953, 50.442142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376709, 53.383022, 49.869701>,  <37.809200, 53.081539, 49.908394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376709, 53.383022, 49.869701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451809, 53.033440, 50.049011>,  <38.496868, 52.823689, 50.156597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451809, 53.033440, 50.049011>,  <38.376709, 53.383022, 49.869701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451809, 53.033440, 50.049011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715484, -0.190988, -0.672016,
		0.672929, 0.446903, 0.589445,
		0.187749, -0.873957, 0.448273,
		38.508133, 52.771252, 50.183495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009762, 53.402496, 49.794453>,  <38.376709, 53.383022, 49.869701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009762, 53.402496, 49.794453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887127, 53.028973, 49.868210>,  <38.813545, 52.804859, 49.912464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887127, 53.028973, 49.868210>,  <39.009762, 53.402496, 49.794453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887127, 53.028973, 49.868210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562433, -0.334015, -0.756375,
		0.767902, -0.128186, 0.627611,
		-0.306588, -0.933811, 0.184395,
		38.795151, 52.748829, 49.923527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548763, 53.081181, 49.414009>,  <39.009762, 53.402496, 49.794453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548763, 53.081181, 49.414009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284351, 52.795258, 49.505306>,  <39.125706, 52.623703, 49.560085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284351, 52.795258, 49.505306>,  <39.548763, 53.081181, 49.414009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284351, 52.795258, 49.505306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268925, -0.509657, -0.817269,
		0.700516, -0.478856, 0.529126,
		-0.661028, -0.714805, 0.228246,
		39.086044, 52.580814, 49.573780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893501, 52.519863, 49.334869>,  <39.548763, 53.081181, 49.414009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893501, 52.519863, 49.334869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506298, 52.442322, 49.271133>,  <39.273975, 52.395798, 49.232891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506298, 52.442322, 49.271133>,  <39.893501, 52.519863, 49.334869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506298, 52.442322, 49.271133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243232, -0.568785, -0.785698,
		0.061680, -0.799316, 0.597737,
		-0.968005, -0.193850, -0.159337,
		39.215897, 52.384167, 49.223331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164825, 52.262783, 48.553326>,  <39.893501, 52.519863, 49.334869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164825, 52.262783, 48.553326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325169, 52.265648, 48.919769>,  <40.421375, 52.267368, 49.139637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325169, 52.265648, 48.919769>,  <40.164825, 52.262783, 48.553326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325169, 52.265648, 48.919769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849590, -0.377074, -0.368798,
		0.342801, 0.926155, -0.157238,
		0.400855, 0.007163, 0.916114,
		40.445427, 52.267796, 49.194603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918823, 52.571667, 48.625893>,  <40.164825, 52.262783, 48.553326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918823, 52.571667, 48.625893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828159, 52.259731, 48.859299>,  <40.773762, 52.072571, 48.999340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828159, 52.259731, 48.859299>,  <40.918823, 52.571667, 48.625893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828159, 52.259731, 48.859299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654222, -0.565726, -0.501944,
		0.721541, 0.267977, 0.638410,
		-0.226655, -0.779835, 0.583511,
		40.760162, 52.025780, 49.034351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523235, 52.338696, 48.916676>,  <40.918823, 52.571667, 48.625893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523235, 52.338696, 48.916676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253799, 52.052650, 48.841965>,  <41.092136, 51.881023, 48.797138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253799, 52.052650, 48.841965>,  <41.523235, 52.338696, 48.916676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253799, 52.052650, 48.841965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721672, -0.581799, -0.375098,
		0.159573, -0.387453, 0.907974,
		-0.673591, -0.715115, -0.186775,
		41.051723, 51.838116, 48.785931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581284, 51.699738, 49.244831>,  <41.523235, 52.338696, 48.916676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581284, 51.699738, 49.244831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386124, 51.630405, 48.902626>,  <41.269028, 51.588806, 48.697304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386124, 51.630405, 48.902626>,  <41.581284, 51.699738, 49.244831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386124, 51.630405, 48.902626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703759, -0.657927, -0.268058,
		-0.516403, -0.732863, 0.442989,
		-0.487904, -0.173332, -0.855515,
		41.239754, 51.578407, 48.645973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378941, 51.043934, 49.182552>,  <41.581284, 51.699738, 49.244831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378941, 51.043934, 49.182552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420033, 51.178139, 48.807983>,  <41.444687, 51.258659, 48.583244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420033, 51.178139, 48.807983>,  <41.378941, 51.043934, 49.182552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420033, 51.178139, 48.807983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403449, -0.874543, -0.269079,
		-0.909217, -0.350153, -0.225206,
		0.102734, 0.335511, -0.936418,
		41.450851, 51.278793, 48.527058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956779, 50.694530, 48.740246>,  <41.378941, 51.043934, 49.182552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956779, 50.694530, 48.740246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303055, 50.803940, 48.572544>,  <41.510818, 50.869587, 48.471924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303055, 50.803940, 48.572544>,  <40.956779, 50.694530, 48.740246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303055, 50.803940, 48.572544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193449, -0.955249, -0.223780,
		-0.461697, 0.112619, -0.879859,
		0.865686, 0.273527, -0.419249,
		41.562759, 50.885998, 48.446770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015446, 50.482937, 48.063740>,  <40.956779, 50.694530, 48.740246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015446, 50.482937, 48.063740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330685, 50.461735, 48.309044>,  <41.519829, 50.449013, 48.456226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330685, 50.461735, 48.309044>,  <41.015446, 50.482937, 48.063740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330685, 50.461735, 48.309044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027315, -0.998316, -0.051187,
		0.614941, 0.023589, -0.788220,
		0.788100, -0.053007, 0.613261,
		41.567116, 50.445831, 48.493023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604507, 50.107132, 47.768555>,  <41.015446, 50.482937, 48.063740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604507, 50.107132, 47.768555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558636, 50.072681, 48.164421>,  <41.531113, 50.052013, 48.401939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558636, 50.072681, 48.164421>,  <41.604507, 50.107132, 47.768555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558636, 50.072681, 48.164421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025182, -0.995663, -0.089562,
		0.993083, -0.035192, 0.112016,
		-0.114682, -0.086122, 0.989662,
		41.524231, 50.046844, 48.461319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351715, 49.853859, 48.148357>,  <41.604507, 50.107132, 47.768555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351715, 49.853859, 48.148357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429878, 49.532475, 47.923405>,  <42.476776, 49.339645, 47.788433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429878, 49.532475, 47.923405>,  <42.351715, 49.853859, 48.148357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429878, 49.532475, 47.923405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920169, 0.048165, -0.388547,
		0.339269, 0.593410, -0.729905,
		0.195412, -0.803458, -0.562379,
		42.488503, 49.291435, 47.754692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272530, 50.014606, 47.418823>,  <42.351715, 49.853859, 48.148357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272530, 50.014606, 47.418823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184238, 49.647999, 47.552254>,  <42.131264, 49.428036, 47.632313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184238, 49.647999, 47.552254>,  <42.272530, 50.014606, 47.418823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184238, 49.647999, 47.552254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973194, 0.184319, -0.137549,
		0.064583, -0.354993, -0.932636,
		-0.220731, -0.916519, 0.333573,
		42.118019, 49.373043, 47.652325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729736, 50.523827, 47.570427>,  <42.272530, 50.014606, 47.418823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729736, 50.523827, 47.570427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946041, 50.859566, 47.548248>,  <43.075825, 51.061008, 47.534943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946041, 50.859566, 47.548248>,  <42.729736, 50.523827, 47.570427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946041, 50.859566, 47.548248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296257, -0.128345, 0.946446,
		0.787281, -0.528226, -0.318067,
		0.540760, 0.839348, -0.055447,
		43.108269, 51.111370, 47.531612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461842, 50.370777, 47.574471>,  <42.729736, 50.523827, 47.570427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461842, 50.370777, 47.574471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388809, 50.737122, 47.717499>,  <43.344990, 50.956928, 47.803314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388809, 50.737122, 47.717499>,  <43.461842, 50.370777, 47.574471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.388809, 50.737122, 47.717499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430075, -0.252643, 0.866722,
		0.884138, 0.312029, -0.347762,
		-0.182583, 0.915866, 0.357567,
		43.334034, 51.011883, 47.824768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066574, 50.769737, 47.732910>,  <43.461842, 50.370777, 47.574471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066574, 50.769737, 47.732910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752552, 50.855907, 47.965214>,  <43.564140, 50.907608, 48.104595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752552, 50.855907, 47.965214>,  <44.066574, 50.769737, 47.732910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752552, 50.855907, 47.965214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523044, -0.271735, 0.807828,
		0.331840, 0.937951, 0.100650,
		-0.785053, 0.215425, 0.580762,
		43.517036, 50.920536, 48.139442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.830112, 50.774822, 47.645813>,  <44.066574, 50.769737, 47.732910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.830112, 50.774822, 47.645813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195461, 50.619286, 47.597557>,  <45.414669, 50.525963, 47.568604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195461, 50.619286, 47.597557>,  <44.830112, 50.774822, 47.645813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195461, 50.619286, 47.597557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334967, 0.549310, 0.765543,
		-0.231405, -0.739636, 0.631973,
		0.913372, -0.388841, -0.120640,
		45.469475, 50.502632, 47.561363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.086815, 50.320385, 48.222443>,  <44.830112, 50.774822, 47.645813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.086815, 50.320385, 48.222443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360531, 50.508896, 47.999863>,  <45.524761, 50.622002, 47.866314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360531, 50.508896, 47.999863>,  <45.086815, 50.320385, 48.222443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360531, 50.508896, 47.999863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074395, 0.804227, 0.589647,
		0.725402, -0.362095, 0.585389,
		0.684293, 0.471281, -0.556449,
		45.565819, 50.650280, 47.832928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780239, 50.222172, 48.394444>,  <45.086815, 50.320385, 48.222443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.780239, 50.222172, 48.394444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084759, 50.438210, 48.250931>,  <46.267471, 50.567833, 48.164822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084759, 50.438210, 48.250931>,  <45.780239, 50.222172, 48.394444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.084759, 50.438210, 48.250931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047705, 0.505179, 0.861695,
		0.646642, -0.673125, 0.358828,
		0.761301, 0.540090, -0.358781,
		46.313148, 50.600235, 48.143295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.183273, 50.403740, 49.022907>,  <45.780239, 50.222172, 48.394444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.183273, 50.403740, 49.022907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336304, 50.645088, 48.743027>,  <46.428123, 50.789898, 48.575100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336304, 50.645088, 48.743027>,  <46.183273, 50.403740, 49.022907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.336304, 50.645088, 48.743027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318591, 0.624711, 0.712906,
		0.867258, -0.495657, 0.046769,
		0.382574, 0.603373, -0.699698,
		46.451077, 50.826099, 48.533119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695766, 49.815395, 49.139393>,  <46.183273, 50.403740, 49.022907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.695766, 49.815395, 49.139393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.440151, 49.821266, 49.447006>,  <45.286781, 49.824787, 49.631573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.440151, 49.821266, 49.447006>,  <45.695766, 49.815395, 49.139393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.440151, 49.821266, 49.447006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465609, 0.803205, 0.371578,
		-0.612238, 0.595522, -0.520114,
		-0.639040, 0.014675, 0.769033,
		45.248440, 49.825668, 49.677715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.255386, 50.493587, 49.220928>,  <45.695766, 49.815395, 49.139393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.255386, 50.493587, 49.220928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336861, 50.334904, 49.578953>,  <45.385746, 50.239693, 49.793766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336861, 50.334904, 49.578953>,  <45.255386, 50.493587, 49.220928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336861, 50.334904, 49.578953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473561, 0.840083, 0.264576,
		-0.856885, 0.369974, 0.358981,
		0.203688, -0.396710, 0.895060,
		45.397968, 50.215889, 49.847469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941429, 50.846310, 49.920204>,  <45.255386, 50.493587, 49.220928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941429, 50.846310, 49.920204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300823, 50.671200, 49.933380>,  <45.516460, 50.566135, 49.941284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300823, 50.671200, 49.933380>,  <44.941429, 50.846310, 49.920204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300823, 50.671200, 49.933380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424088, 0.884889, 0.192666,
		-0.113493, -0.159138, 0.980711,
		0.898481, -0.437774, 0.032940,
		45.570366, 50.539867, 49.943264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314999, 50.946907, 50.640903>,  <44.941429, 50.846310, 49.920204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314999, 50.946907, 50.640903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.550518, 50.905109, 50.320305>,  <45.691830, 50.880032, 50.127945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.550518, 50.905109, 50.320305>,  <45.314999, 50.946907, 50.640903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.550518, 50.905109, 50.320305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212285, 0.976789, 0.028598,
		0.779904, -0.186984, 0.597316,
		0.588799, -0.104497, -0.801496,
		45.727158, 50.873760, 50.079857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.074249, 51.137543, 50.788635>,  <45.314999, 50.946907, 50.640903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.074249, 51.137543, 50.788635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.935219, 51.193077, 50.417709>,  <45.851799, 51.226398, 50.195152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.935219, 51.193077, 50.417709>,  <46.074249, 51.137543, 50.788635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.935219, 51.193077, 50.417709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008352, 0.989397, 0.144998,
		0.937615, 0.042653, -0.345050,
		-0.347576, 0.138834, -0.927316,
		45.830948, 51.234726, 50.139515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.390118, 51.531963, 50.223000>,  <46.074249, 51.137543, 50.788635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.390118, 51.531963, 50.223000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.013504, 51.592766, 50.102730>,  <45.787537, 51.629246, 50.030567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.013504, 51.592766, 50.102730>,  <46.390118, 51.531963, 50.223000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.013504, 51.592766, 50.102730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151697, 0.988123, 0.024521,
		0.300834, -0.022525, -0.953411,
		-0.941535, 0.152006, -0.300678,
		45.731045, 51.638367, 50.012527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.515789, 51.989964, 49.690861>,  <46.390118, 51.531963, 50.223000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.515789, 51.989964, 49.690861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.154015, 52.052895, 49.849476>,  <45.936951, 52.090652, 49.944645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.154015, 52.052895, 49.849476>,  <46.515789, 51.989964, 49.690861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.154015, 52.052895, 49.849476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220105, 0.968334, 0.117824,
		-0.365445, 0.193844, -0.910425,
		-0.904436, 0.157331, 0.396539,
		45.882683, 52.100094, 49.968437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.203972, 52.609669, 49.360241>,  <46.515789, 51.989964, 49.690861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.203972, 52.609669, 49.360241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065956, 52.550003, 49.730904>,  <45.983147, 52.514202, 49.953300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065956, 52.550003, 49.730904>,  <46.203972, 52.609669, 49.360241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065956, 52.550003, 49.730904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185556, 0.956964, 0.223135,
		-0.920062, 0.248938, -0.302515,
		-0.345043, -0.149165, 0.926658,
		45.962444, 52.505253, 50.008900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799301, 53.202942, 49.586277>,  <46.203972, 52.609669, 49.360241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799301, 53.202942, 49.586277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956642, 52.992867, 49.888123>,  <46.051048, 52.866821, 50.069229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.956642, 52.992867, 49.888123>,  <45.799301, 53.202942, 49.586277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.956642, 52.992867, 49.888123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262400, 0.850774, 0.455335,
		-0.881145, 0.018902, 0.472468,
		0.393356, -0.525192, 0.754615,
		46.074650, 52.835308, 50.114506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.623184, 53.478500, 50.305462>,  <45.799301, 53.202942, 49.586277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.623184, 53.478500, 50.305462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958687, 53.261379, 50.322643>,  <46.159988, 53.131107, 50.332951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958687, 53.261379, 50.322643>,  <45.623184, 53.478500, 50.305462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.958687, 53.261379, 50.322643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475392, 0.768481, 0.428298,
		-0.265491, -0.338820, 0.902616,
		0.838759, -0.542806, 0.042952,
		46.210316, 53.098537, 50.335529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.889469, 53.417179, 50.924076>,  <45.623184, 53.478500, 50.305462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.889469, 53.417179, 50.924076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236362, 53.392647, 50.726433>,  <46.444500, 53.377926, 50.607849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236362, 53.392647, 50.726433>,  <45.889469, 53.417179, 50.924076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.236362, 53.392647, 50.726433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386558, 0.708405, 0.590539,
		0.313807, -0.703137, 0.638063,
		0.867236, -0.061333, -0.494105,
		46.496532, 53.374249, 50.578201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.445820, 53.481865, 51.403332>,  <45.889469, 53.417179, 50.924076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.445820, 53.481865, 51.403332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632545, 53.614716, 51.075485>,  <46.744579, 53.694427, 50.878777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632545, 53.614716, 51.075485>,  <46.445820, 53.481865, 51.403332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632545, 53.614716, 51.075485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634828, 0.519392, 0.572035,
		0.615694, -0.787351, 0.031614,
		0.466813, 0.332129, -0.819620,
		46.772591, 53.714355, 50.829601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.114246, 53.330032, 51.445408>,  <46.445820, 53.481865, 51.403332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.114246, 53.330032, 51.445408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.112434, 53.638390, 51.190628>,  <47.111347, 53.823402, 51.037762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.112434, 53.638390, 51.190628>,  <47.114246, 53.330032, 51.445408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.112434, 53.638390, 51.190628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610723, 0.506501, 0.608666,
		0.791831, -0.386242, -0.473096,
		-0.004531, 0.770891, -0.636951,
		47.111076, 53.869656, 50.999542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.823643, 53.456924, 51.381397>,  <47.114246, 53.330032, 51.445408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.823643, 53.456924, 51.381397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610302, 53.789059, 51.316788>,  <47.482300, 53.988338, 51.278023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610302, 53.789059, 51.316788>,  <47.823643, 53.456924, 51.381397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.610302, 53.789059, 51.316788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608217, 0.509141, 0.608973,
		0.587889, 0.226551, -0.776570,
		-0.533348, 0.830331, -0.161526,
		47.450298, 54.038158, 51.268330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.236103, 53.999363, 51.019184>,  <47.823643, 53.456924, 51.381397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.236103, 53.999363, 51.019184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.938389, 54.177479, 51.218285>,  <47.759762, 54.284348, 51.337746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.938389, 54.177479, 51.218285>,  <48.236103, 53.999363, 51.019184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.938389, 54.177479, 51.218285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666480, 0.543119, 0.510711,
		-0.042926, 0.711857, -0.701011,
		-0.744286, 0.445287, 0.497753,
		47.715103, 54.311066, 51.367611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.047520, 54.086849, 51.053089>,  <48.236103, 53.999363, 51.019184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.047520, 54.086849, 51.053089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.986244, 53.693481, 51.014282>,  <48.949478, 53.457458, 50.990997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.986244, 53.693481, 51.014282>,  <49.047520, 54.086849, 51.053089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.986244, 53.693481, 51.014282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802312, 0.181087, -0.568773,
		0.576913, -0.009293, -0.816753,
		-0.153189, -0.983423, -0.097016,
		48.940289, 53.398453, 50.985176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.123711, 53.953766, 50.284855>,  <49.047520, 54.086849, 51.053089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.123711, 53.953766, 50.284855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.884731, 53.722466, 50.507088>,  <48.741344, 53.583683, 50.640427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.884731, 53.722466, 50.507088>,  <49.123711, 53.953766, 50.284855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.884731, 53.722466, 50.507088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754248, 0.169933, -0.634218,
		0.272328, -0.797962, -0.537675,
		-0.597450, -0.578256, 0.555584,
		48.705498, 53.548988, 50.673763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.302002, 54.526096, 49.895576>,  <49.123711, 53.953766, 50.284855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.302002, 54.526096, 49.895576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.582012, 54.738400, 50.086681>,  <49.750019, 54.865784, 50.201344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.582012, 54.738400, 50.086681>,  <49.302002, 54.526096, 49.895576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.582012, 54.738400, 50.086681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585541, -0.809582, 0.041450,
		0.408790, 0.250735, -0.877510,
		0.700023, 0.530762, 0.477764,
		49.792019, 54.897629, 50.230011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.905918, 54.357853, 49.566765>,  <49.302002, 54.526096, 49.895576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.905918, 54.357853, 49.566765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.995850, 54.495918, 49.931252>,  <50.049809, 54.578758, 50.149944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.995850, 54.495918, 49.931252>,  <49.905918, 54.357853, 49.566765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.995850, 54.495918, 49.931252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483262, -0.851538, 0.203324,
		0.846115, 0.394643, -0.358253,
		0.224826, 0.345165, 0.911216,
		50.063297, 54.599468, 50.204617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.673264, 54.528763, 49.674797>,  <49.905918, 54.357853, 49.566765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.673264, 54.528763, 49.674797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.467644, 54.341751, 49.962456>,  <50.344273, 54.229546, 50.135052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.467644, 54.341751, 49.962456>,  <50.673264, 54.528763, 49.674797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.467644, 54.341751, 49.962456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591489, -0.800392, -0.097542,
		0.621202, 0.375225, 0.687979,
		-0.514052, -0.467525, 0.719146,
		50.313427, 54.201492, 50.178200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.086159, 54.431114, 50.212349>,  <50.673264, 54.528763, 49.674797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.086159, 54.431114, 50.212349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.831848, 54.122726, 50.227272>,  <50.679260, 53.937695, 50.236225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.831848, 54.122726, 50.227272>,  <51.086159, 54.431114, 50.212349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.831848, 54.122726, 50.227272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767503, -0.626309, 0.136662,
		-0.081993, 0.115525, 0.989915,
		-0.635780, -0.770968, 0.037312,
		50.641113, 53.891438, 50.238464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.225613, 53.906544, 50.733387>,  <51.086159, 54.431114, 50.212349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.225613, 53.906544, 50.733387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.049969, 53.681671, 50.453064>,  <50.944584, 53.546749, 50.284870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.049969, 53.681671, 50.453064>,  <51.225613, 53.906544, 50.733387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.049969, 53.681671, 50.453064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549911, -0.785029, 0.285179,
		-0.710480, -0.260160, 0.653862,
		-0.439108, -0.562180, -0.700812,
		50.918236, 53.513016, 50.242821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.199116, 53.271538, 51.023914>,  <51.225613, 53.906544, 50.733387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.199116, 53.271538, 51.023914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.874355, 53.095791, 51.177681>,  <50.679501, 52.990341, 51.269939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.874355, 53.095791, 51.177681>,  <51.199116, 53.271538, 51.023914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.874355, 53.095791, 51.177681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583325, -0.584076, 0.564435,
		-0.023470, 0.682502, 0.730507,
		-0.811900, -0.439370, 0.384412,
		50.630787, 52.963982, 51.293003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.143776, 53.396420, 51.714935>,  <51.199116, 53.271538, 51.023914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.143776, 53.396420, 51.714935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.990025, 53.053627, 51.577625>,  <50.897774, 52.847954, 51.495239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.990025, 53.053627, 51.577625>,  <51.143776, 53.396420, 51.714935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.990025, 53.053627, 51.577625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647151, -0.515314, 0.561825,
		-0.658367, -0.006197, 0.752671,
		-0.384380, -0.856979, -0.343276,
		50.874710, 52.796532, 51.474644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.803234, 53.094444, 52.223621>,  <51.143776, 53.396420, 51.714935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.803234, 53.094444, 52.223621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.989548, 52.856205, 51.961842>,  <51.101337, 52.713261, 51.804775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.989548, 52.856205, 51.961842>,  <50.803234, 53.094444, 52.223621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.989548, 52.856205, 51.961842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703990, -0.198675, 0.681855,
		-0.536137, -0.778323, 0.326757,
		0.465785, -0.595601, -0.654449,
		51.129284, 52.677525, 51.765507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.018677, 52.638229, 52.681477>,  <50.803234, 53.094444, 52.223621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.018677, 52.638229, 52.681477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.238476, 52.612320, 52.348282>,  <51.370354, 52.596775, 52.148365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.238476, 52.612320, 52.348282>,  <51.018677, 52.638229, 52.681477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.238476, 52.612320, 52.348282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783117, -0.307529, 0.540513,
		-0.291175, -0.949332, -0.118263,
		0.549495, -0.064770, -0.832983,
		51.403324, 52.592888, 52.098389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.225914, 51.880177, 52.700066>,  <51.018677, 52.638229, 52.681477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.225914, 51.880177, 52.700066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.488388, 52.153683, 52.572388>,  <51.645874, 52.317787, 52.495781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.488388, 52.153683, 52.572388>,  <51.225914, 51.880177, 52.700066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.488388, 52.153683, 52.572388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623813, -0.253523, 0.739313,
		0.424592, -0.684246, -0.592899,
		0.656185, 0.683764, -0.319198,
		51.685246, 52.358810, 52.476627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.772148, 51.518295, 52.495388>,  <51.225914, 51.880177, 52.700066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.772148, 51.518295, 52.495388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.863022, 51.892948, 52.602051>,  <51.917545, 52.117741, 52.666050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.863022, 51.892948, 52.602051>,  <51.772148, 51.518295, 52.495388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.863022, 51.892948, 52.602051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728443, -0.345172, 0.591799,
		0.646341, 0.059795, -0.760702,
		0.227187, 0.936633, 0.266656,
		51.931179, 52.173939, 52.682049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.285976, 51.463837, 52.943611>,  <51.772148, 51.518295, 52.495388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.285976, 51.463837, 52.943611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.344711, 51.859493, 52.945801>,  <52.379951, 52.096889, 52.947113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.344711, 51.859493, 52.945801>,  <52.285976, 51.463837, 52.943611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.344711, 51.859493, 52.945801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732046, -0.112392, 0.671920,
		0.665241, -0.094660, -0.740604,
		0.146842, 0.989145, 0.005472,
		52.388763, 52.156239, 52.947441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.998241, 51.720943, 52.752571>,  <52.285976, 51.463837, 52.943611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.998241, 51.720943, 52.752571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.822937, 51.993973, 52.986500>,  <52.717754, 52.157791, 53.126858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.822937, 51.993973, 52.986500>,  <52.998241, 51.720943, 52.752571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.822937, 51.993973, 52.986500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774759, -0.043013, 0.630792,
		0.455718, 0.729548, -0.509980,
		-0.438257, 0.682575, 0.584826,
		52.691460, 52.198746, 53.161949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.520473, 52.238491, 52.989281>,  <52.998241, 51.720943, 52.752571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.520473, 52.238491, 52.989281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.225361, 52.194717, 53.255726>,  <53.048294, 52.168453, 53.415592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.225361, 52.194717, 53.255726>,  <53.520473, 52.238491, 52.989281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.225361, 52.194717, 53.255726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672853, -0.198578, 0.712626,
		0.054290, 0.973956, 0.220140,
		-0.737782, -0.109433, 0.666110,
		53.004025, 52.161888, 53.455559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.699600, 52.577316, 53.605522>,  <53.520473, 52.238491, 52.989281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.699600, 52.577316, 53.605522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.428974, 52.309639, 53.728447>,  <53.266598, 52.149033, 53.802200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.428974, 52.309639, 53.728447>,  <53.699600, 52.577316, 53.605522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.428974, 52.309639, 53.728447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549861, -0.181508, 0.815296,
		-0.489814, 0.720577, 0.490766,
		-0.676562, -0.669196, 0.307312,
		53.226006, 52.108879, 53.820641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.894657, 53.098225, 53.201862>,  <53.699600, 52.577316, 53.605522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.894657, 53.098225, 53.201862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.124428, 53.424103, 53.233646>,  <54.262291, 53.619629, 53.252716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.124428, 53.424103, 53.233646>,  <53.894657, 53.098225, 53.201862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.124428, 53.424103, 53.233646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787958, -0.524048, -0.323258,
		-0.221715, 0.248298, -0.942969,
		0.574425, 0.814691, 0.079459,
		54.296757, 53.668510, 53.257484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.311245, 53.109131, 52.673676>,  <53.894657, 53.098225, 53.201862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.311245, 53.109131, 52.673676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.490303, 53.307571, 52.971264>,  <54.597740, 53.426636, 53.149818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.490303, 53.307571, 52.971264>,  <54.311245, 53.109131, 52.673676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.490303, 53.307571, 52.971264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886811, -0.353102, -0.298137,
		0.114795, 0.793225, -0.598010,
		0.447648, 0.496097, 0.743975,
		54.624599, 53.456402, 53.194458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.988235, 53.238106, 52.478336>,  <54.311245, 53.109131, 52.673676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.988235, 53.238106, 52.478336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.992180, 53.278801, 52.876240>,  <54.994545, 53.303219, 53.114983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.992180, 53.278801, 52.876240>,  <54.988235, 53.238106, 52.478336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.992180, 53.278801, 52.876240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931147, -0.363571, 0.027954,
		0.364511, 0.925994, -0.098320,
		0.009861, 0.101740, 0.994762,
		54.995136, 53.309322, 53.174667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.547531, 53.739433, 52.844349>,  <54.988235, 53.238106, 52.478336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.547531, 53.739433, 52.844349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.478554, 53.381447, 53.008938>,  <55.437168, 53.166656, 53.107689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.478554, 53.381447, 53.008938>,  <55.547531, 53.739433, 52.844349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.478554, 53.381447, 53.008938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950707, -0.260514, -0.168190,
		0.257716, 0.362182, 0.895771,
		-0.172445, -0.894962, 0.411468,
		55.426819, 53.112957, 53.132378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.096592, 53.559395, 52.426525>,  <55.547531, 53.739433, 52.844349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.096592, 53.559395, 52.426525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.457436, 53.729954, 52.453003>,  <56.673943, 53.832287, 52.468891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.457436, 53.729954, 52.453003>,  <56.096592, 53.559395, 52.426525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.457436, 53.729954, 52.453003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239051, 0.366139, 0.899331,
		0.359183, -0.827145, 0.432224,
		0.902132, 0.426348, 0.066219,
		56.728069, 53.857872, 52.472862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.706036, 53.358997, 52.896664>,  <56.096592, 53.559395, 52.426525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.706036, 53.358997, 52.896664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.706886, 53.752907, 52.827141>,  <56.707397, 53.989254, 52.785427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.706886, 53.752907, 52.827141>,  <56.706036, 53.358997, 52.896664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.706886, 53.752907, 52.827141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160490, 0.171887, 0.971956,
		0.987035, 0.025831, 0.158412,
		0.002123, 0.984778, -0.173804,
		56.707523, 54.048340, 52.774998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.065983, 53.617798, 53.475170>,  <56.706036, 53.358997, 52.896664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.065983, 53.617798, 53.475170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.834557, 53.921173, 53.355148>,  <56.695702, 54.103199, 53.283134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.834557, 53.921173, 53.355148>,  <57.065983, 53.617798, 53.475170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.834557, 53.921173, 53.355148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420484, 0.037876, 0.906509,
		0.698896, 0.650644, 0.296997,
		-0.578565, 0.758438, -0.300057,
		56.660988, 54.148705, 53.265133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.045868, 54.023235, 54.083000>,  <57.065983, 53.617798, 53.475170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.045868, 54.023235, 54.083000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.720329, 54.106159, 53.865860>,  <56.525005, 54.155914, 53.735577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.720329, 54.106159, 53.865860>,  <57.045868, 54.023235, 54.083000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.720329, 54.106159, 53.865860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443639, 0.381682, 0.810866,
		0.375294, 0.900746, -0.218659,
		-0.813842, 0.207307, -0.542849,
		56.476177, 54.168350, 53.703007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.725819, 54.034054, 54.469860>,  <57.045868, 54.023235, 54.083000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.725819, 54.034054, 54.469860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.640373, 53.953297, 54.852192>,  <57.589104, 53.904842, 55.081593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.640373, 53.953297, 54.852192>,  <57.725819, 54.034054, 54.469860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.640373, 53.953297, 54.852192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976051, -0.002905, 0.217522,
		-0.041139, 0.979404, 0.197676,
		-0.213616, -0.201890, 0.955829,
		57.576290, 53.892731, 55.138939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.108418, 54.600727, 54.931511>,  <57.725819, 54.034054, 54.469860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.108418, 54.600727, 54.931511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.114014, 54.231251, 55.084663>,  <58.117371, 54.009563, 55.176556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.114014, 54.231251, 55.084663>,  <58.108418, 54.600727, 54.931511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.114014, 54.231251, 55.084663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999598, 0.022365, 0.017437,
		-0.024670, 0.382483, 0.923633,
		0.013988, -0.923692, 0.382881,
		58.118210, 53.954144, 55.199528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.739838, 54.683121, 55.257286>,  <58.108418, 54.600727, 54.931511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.739838, 54.683121, 55.257286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.672638, 54.289703, 55.230721>,  <58.632317, 54.053654, 55.214783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.672638, 54.289703, 55.230721>,  <58.739838, 54.683121, 55.257286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.672638, 54.289703, 55.230721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969768, -0.176991, 0.168001,
		-0.176991, -0.036181, 0.983547,
		-0.168001, -0.983547, -0.066413,
		58.622238, 53.994640, 55.210796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.131493, 54.290966, 55.826771>,  <58.739838, 54.683121, 55.257286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.131493, 54.290966, 55.826771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.072472, 54.028214, 55.531006>,  <59.037060, 53.870564, 55.353546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.072472, 54.028214, 55.531006>,  <59.131493, 54.290966, 55.826771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.072472, 54.028214, 55.531006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898520, -0.401497, 0.177375,
		-0.413387, -0.638205, 0.649466,
		-0.147557, -0.656882, -0.739414,
		59.028206, 53.831150, 55.309181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.195637, 53.650291, 56.098675>,  <59.131493, 54.290966, 55.826771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.195637, 53.650291, 56.098675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.302147, 53.628029, 55.713760>,  <59.366055, 53.614674, 55.482811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.302147, 53.628029, 55.713760>,  <59.195637, 53.650291, 56.098675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.302147, 53.628029, 55.713760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926469, -0.260721, 0.271441,
		-0.265995, -0.963809, -0.017862,
		0.266274, -0.055653, -0.962289,
		59.382030, 53.611332, 55.425072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.250134, 53.043156, 55.812675>,  <59.195637, 53.650291, 56.098675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.250134, 53.043156, 55.812675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.498360, 53.304146, 55.638702>,  <59.647297, 53.460739, 55.534317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.498360, 53.304146, 55.638702>,  <59.250134, 53.043156, 55.812675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.498360, 53.304146, 55.638702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782534, -0.479651, 0.396958,
		0.050389, -0.586691, -0.808242,
		0.620566, 0.652479, -0.434936,
		59.684528, 53.499889, 55.508221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.977886, 52.715237, 55.780003>,  <59.250134, 53.043156, 55.812675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.977886, 52.715237, 55.780003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.107941, 53.091904, 55.745232>,  <60.185974, 53.317902, 55.724369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.107941, 53.091904, 55.745232>,  <59.977886, 52.715237, 55.780003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.107941, 53.091904, 55.745232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916125, -0.290850, 0.275901,
		0.234523, -0.169341, -0.957247,
		0.325137, 0.941663, -0.086927,
		60.205482, 53.374401, 55.719154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.501732, 52.256638, 56.315063>,  <59.977886, 52.715237, 55.780003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.501732, 52.256638, 56.315063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.355530, 52.170395, 55.952866>,  <60.267811, 52.118649, 55.735546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.355530, 52.170395, 55.952866>,  <60.501732, 52.256638, 56.315063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.355530, 52.170395, 55.952866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603646, 0.795403, 0.054271,
		0.708533, 0.566435, -0.420872,
		-0.365503, -0.215605, -0.905495,
		60.245880, 52.105713, 55.681217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.155758, 52.176380, 56.708759>,  <60.501732, 52.256638, 56.315063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.155758, 52.176380, 56.708759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.545525, 52.095966, 56.748962>,  <61.779385, 52.047718, 56.773083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.545525, 52.095966, 56.748962>,  <61.155758, 52.176380, 56.708759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.545525, 52.095966, 56.748962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202524, 0.979266, -0.004733,
		-0.097471, 0.024966, 0.994925,
		0.974414, -0.201035, 0.100506,
		61.837849, 52.035656, 56.779114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.387703, 52.533501, 57.272102>,  <61.155758, 52.176380, 56.708759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.387703, 52.533501, 57.272102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.658142, 52.462326, 56.986099>,  <61.820404, 52.419621, 56.814499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.658142, 52.462326, 56.986099>,  <61.387703, 52.533501, 57.272102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.658142, 52.462326, 56.986099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197202, 0.978700, -0.057084,
		0.709931, -0.102406, 0.696786,
		0.676098, -0.177933, -0.715004,
		61.860973, 52.408947, 56.771599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.041325, 52.788486, 57.482189>,  <61.387703, 52.533501, 57.272102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.041325, 52.788486, 57.482189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.099037, 52.737419, 57.089684>,  <62.133663, 52.706779, 56.854179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.099037, 52.737419, 57.089684>,  <62.041325, 52.788486, 57.482189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.099037, 52.737419, 57.089684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507295, 0.860959, -0.037427,
		0.849609, -0.492391, 0.188987,
		0.144281, -0.127671, -0.981266,
		62.142323, 52.699120, 56.795303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.782940, 52.781769, 57.136929>,  <62.041325, 52.788486, 57.482189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.782940, 52.781769, 57.136929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.496864, 52.927353, 56.898254>,  <62.325218, 53.014706, 56.755051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.496864, 52.927353, 56.898254>,  <62.782940, 52.781769, 57.136929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.496864, 52.927353, 56.898254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492297, 0.868329, -0.060409,
		0.496130, -0.336949, -0.800200,
		-0.715192, 0.363965, -0.596683,
		62.282307, 53.036541, 56.719250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.129330, 53.046169, 56.494896>,  <62.782940, 52.781769, 57.136929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.129330, 53.046169, 56.494896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.795906, 53.226360, 56.622803>,  <62.595852, 53.334476, 56.699547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.795906, 53.226360, 56.622803>,  <63.129330, 53.046169, 56.494896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.795906, 53.226360, 56.622803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530977, 0.813076, 0.238686,
		-0.152470, 0.368747, -0.916940,
		-0.833556, 0.450481, 0.319766,
		62.545837, 53.361504, 56.718731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.027367, 53.710529, 56.164806>,  <63.129330, 53.046169, 56.494896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.027367, 53.710529, 56.164806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.840607, 53.697823, 56.518303>,  <62.728550, 53.690197, 56.730400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.840607, 53.697823, 56.518303>,  <63.027367, 53.710529, 56.164806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.840607, 53.697823, 56.518303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557251, 0.765401, 0.321922,
		-0.686643, 0.642769, -0.339661,
		-0.466898, -0.031769, 0.883740,
		62.700539, 53.688293, 56.783424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.153965, 54.325356, 56.427021>,  <63.027367, 53.710529, 56.164806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.153965, 54.325356, 56.427021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.059364, 54.124226, 56.759583>,  <63.002605, 54.003548, 56.959122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.059364, 54.124226, 56.759583>,  <63.153965, 54.325356, 56.427021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.059364, 54.124226, 56.759583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612344, 0.587229, 0.529336,
		-0.754388, 0.634296, 0.169020,
		-0.236502, -0.502824, 0.831406,
		62.988415, 53.973377, 57.009003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.804485, 54.800270, 56.835632>,  <63.153965, 54.325356, 56.427021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.804485, 54.800270, 56.835632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.014069, 54.514839, 57.021652>,  <63.139820, 54.343582, 57.133266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.014069, 54.514839, 57.021652>,  <62.804485, 54.800270, 56.835632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.014069, 54.514839, 57.021652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528862, 0.700560, 0.479083,
		-0.667660, -0.005071, 0.744449,
		0.523961, -0.713576, 0.465054,
		63.171257, 54.300766, 57.161167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.838467, 54.851269, 57.640270>,  <62.804485, 54.800270, 56.835632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.838467, 54.851269, 57.640270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.176888, 54.704189, 57.485870>,  <63.379940, 54.615940, 57.393230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.176888, 54.704189, 57.485870>,  <62.838467, 54.851269, 57.640270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.176888, 54.704189, 57.485870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522307, 0.716697, 0.462105,
		0.106728, -0.592574, 0.798414,
		0.846052, -0.367698, -0.385997,
		63.430702, 54.593880, 57.370071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.291634, 54.863049, 58.216778>,  <62.838467, 54.851269, 57.640270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.291634, 54.863049, 58.216778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.460258, 54.912994, 57.857513>,  <63.561432, 54.942963, 57.641956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.460258, 54.912994, 57.857513>,  <63.291634, 54.863049, 58.216778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.460258, 54.912994, 57.857513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384400, 0.872471, 0.301714,
		0.821293, -0.472444, 0.319803,
		0.421562, 0.124864, -0.898162,
		63.586727, 54.950455, 57.588066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.062843, 55.098167, 58.254543>,  <63.291634, 54.863049, 58.216778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.062843, 55.098167, 58.254543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.879944, 55.229248, 57.923836>,  <63.770206, 55.307896, 57.725410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.879944, 55.229248, 57.923836>,  <64.062843, 55.098167, 58.254543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.879944, 55.229248, 57.923836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224233, 0.942082, 0.249401,
		0.860611, -0.071352, -0.504240,
		-0.457240, 0.327704, -0.826766,
		63.742771, 55.327560, 57.675804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.454758, 55.767998, 57.995140>,  <64.062843, 55.098167, 58.254543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.454758, 55.767998, 57.995140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.086121, 55.771507, 57.839920>,  <63.864937, 55.773613, 57.746788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.086121, 55.771507, 57.839920>,  <64.454758, 55.767998, 57.995140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.086121, 55.771507, 57.839920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064884, 0.982193, 0.176314,
		0.382683, 0.187668, -0.904618,
		-0.921598, 0.008777, -0.388046,
		63.809643, 55.774139, 57.723507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.144775, 55.476223, 58.232880>,  <64.454758, 55.767998, 57.995140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.144775, 55.476223, 58.232880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.230103, 55.864151, 58.185638>,  <65.281296, 56.096909, 58.157291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.230103, 55.864151, 58.185638>,  <65.144775, 55.476223, 58.232880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.230103, 55.864151, 58.185638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692975, -0.064976, 0.718027,
		0.688683, -0.235008, -0.685921,
		0.213310, 0.969819, -0.118107,
		65.294098, 56.155098, 58.150208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.808861, 55.487148, 58.287891>,  <65.144775, 55.476223, 58.232880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.808861, 55.487148, 58.287891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.733986, 55.876652, 58.339668>,  <65.689056, 56.110355, 58.370735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.733986, 55.876652, 58.339668>,  <65.808861, 55.487148, 58.287891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.733986, 55.876652, 58.339668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836419, 0.088901, 0.540832,
		0.515132, 0.209506, -0.831111,
		-0.187194, 0.973758, 0.129439,
		65.677826, 56.168777, 58.378502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.372917, 56.003044, 58.036381>,  <65.808861, 55.487148, 58.287891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.372917, 56.003044, 58.036381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.181076, 56.116425, 58.368561>,  <66.065971, 56.184452, 58.567867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.181076, 56.116425, 58.368561>,  <66.372917, 56.003044, 58.036381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.181076, 56.116425, 58.368561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877396, 0.141084, 0.458554,
		0.012817, 0.948551, -0.316365,
		-0.479595, 0.283455, 0.830447,
		66.037201, 56.201462, 58.617695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.664490, 56.587296, 58.192165>,  <66.372917, 56.003044, 58.036381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.664490, 56.587296, 58.192165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.526718, 56.424492, 58.530563>,  <66.444054, 56.326809, 58.733601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.526718, 56.424492, 58.530563>,  <66.664490, 56.587296, 58.192165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.526718, 56.424492, 58.530563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910742, 0.073842, 0.406320,
		-0.227845, 0.910435, 0.345245,
		-0.344435, -0.407007, 0.845996,
		66.423386, 56.302391, 58.784363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.786873, 57.003658, 58.690731>,  <66.664490, 56.587296, 58.192165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.786873, 57.003658, 58.690731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.784210, 56.644165, 58.866112>,  <66.782608, 56.428471, 58.971340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.784210, 56.644165, 58.866112>,  <66.786873, 57.003658, 58.690731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.784210, 56.644165, 58.866112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804313, 0.255711, 0.536369,
		-0.594168, 0.356226, 0.721157,
		-0.006661, -0.898730, 0.438453,
		66.782211, 56.374546, 58.997646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.653702, 57.137501, 59.390717>,  <66.786873, 57.003658, 58.690731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.653702, 57.137501, 59.390717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.851791, 56.793953, 59.338417>,  <66.970642, 56.587822, 59.307037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.851791, 56.793953, 59.338417>,  <66.653702, 57.137501, 59.390717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.851791, 56.793953, 59.338417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722178, 0.323308, 0.611499,
		-0.482928, -0.397249, 0.780368,
		0.495217, -0.858874, -0.130750,
		67.000359, 56.536289, 59.299191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.910782, 56.902596, 60.084412>,  <66.653702, 57.137501, 59.390717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.910782, 56.902596, 60.084412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.131172, 56.726700, 59.800705>,  <67.263405, 56.621162, 59.630482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.131172, 56.726700, 59.800705>,  <66.910782, 56.902596, 60.084412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.131172, 56.726700, 59.800705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831625, 0.218553, 0.510523,
		-0.069484, -0.871129, 0.486114,
		0.550973, -0.439738, -0.709267,
		67.296463, 56.594780, 59.587925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.426086, 56.598660, 60.482357>,  <66.910782, 56.902596, 60.084412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.426086, 56.598660, 60.482357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.548866, 56.654121, 60.105728>,  <67.622536, 56.687397, 59.879749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.548866, 56.654121, 60.105728>,  <67.426086, 56.598660, 60.482357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.548866, 56.654121, 60.105728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881898, 0.330528, 0.336166,
		0.357828, -0.933555, -0.020827,
		0.306946, 0.138657, -0.941572,
		67.640953, 56.695717, 59.823257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.962158, 56.145061, 60.156841>,  <67.426086, 56.598660, 60.482357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.962158, 56.145061, 60.156841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.928085, 56.534275, 60.071091>,  <67.907646, 56.767803, 60.019642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.928085, 56.534275, 60.071091>,  <67.962158, 56.145061, 60.156841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.928085, 56.534275, 60.071091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903431, 0.166159, 0.395226,
		0.420188, -0.160008, -0.893219,
		-0.085176, 0.973031, -0.214374,
		67.902534, 56.826183, 60.006779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.563690, 56.356918, 59.765831>,  <67.962158, 56.145061, 60.156841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.563690, 56.356918, 59.765831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.393799, 56.656410, 59.969406>,  <68.291862, 56.836105, 60.091549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.393799, 56.656410, 59.969406>,  <68.563690, 56.356918, 59.765831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.393799, 56.656410, 59.969406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859472, 0.156840, 0.486527,
		0.284454, 0.644057, -0.710124,
		-0.424727, 0.748727, 0.508935,
		68.266380, 56.881027, 60.122086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.961716, 56.976967, 59.738182>,  <68.563690, 56.356918, 59.765831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.961716, 56.976967, 59.738182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.769386, 56.972778, 60.088882>,  <68.653984, 56.970264, 60.299301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.769386, 56.972778, 60.088882>,  <68.961716, 56.976967, 59.738182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.769386, 56.972778, 60.088882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869768, -0.132195, 0.475424,
		0.110923, 0.991168, 0.072672,
		-0.480832, -0.010473, 0.876750,
		68.625137, 56.969635, 60.351906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.799683, 57.012627, 59.328278>,  <68.961716, 56.976967, 59.738182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.799683, 57.012627, 59.328278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.001457, 57.250248, 59.578926>,  <70.122520, 57.392818, 59.729317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.001457, 57.250248, 59.578926>,  <69.799683, 57.012627, 59.328278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.001457, 57.250248, 59.578926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863438, -0.351071, -0.362247,
		0.004795, 0.723777, -0.690017,
		0.504432, 0.594050, 0.626620,
		70.152786, 57.428463, 59.766911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.369316, 57.292507, 58.918999>,  <69.799683, 57.012627, 59.328278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.369316, 57.292507, 58.918999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.468010, 57.316917, 59.305862>,  <70.527229, 57.331566, 59.537979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.468010, 57.316917, 59.305862>,  <70.369316, 57.292507, 58.918999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.468010, 57.316917, 59.305862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920005, -0.328326, -0.213994,
		0.304483, 0.942591, -0.137160,
		0.246741, 0.061030, 0.967158,
		70.542030, 57.335228, 59.596008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.900986, 57.718983, 59.073776>,  <70.369316, 57.292507, 58.918999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.900986, 57.718983, 59.073776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.886505, 57.406471, 59.323029>,  <70.877815, 57.218964, 59.472580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.886505, 57.406471, 59.323029>,  <70.900986, 57.718983, 59.073776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.886505, 57.406471, 59.323029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827168, -0.373332, -0.420020,
		0.560787, 0.500232, 0.659762,
		-0.036202, -0.781275, 0.623136,
		70.875641, 57.172089, 59.509968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.604568, 57.665718, 59.458305>,  <70.900986, 57.718983, 59.073776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.604568, 57.665718, 59.458305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.393692, 57.341660, 59.355743>,  <71.267166, 57.147224, 59.294209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.393692, 57.341660, 59.355743>,  <71.604568, 57.665718, 59.458305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.393692, 57.341660, 59.355743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818217, -0.402523, -0.410483,
		0.229344, -0.426192, 0.875078,
		-0.527184, -0.810146, -0.256401,
		71.235535, 57.098618, 59.278824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.199936, 57.640709, 59.929321>,  <71.604568, 57.665718, 59.458305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.199936, 57.640709, 59.929321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.542084, 57.714485, 60.122948>,  <72.747375, 57.758751, 60.239124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.542084, 57.714485, 60.122948>,  <72.199936, 57.640709, 59.929321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.542084, 57.714485, 60.122948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164078, -0.789877, 0.590909,
		0.491339, -0.584872, -0.645377,
		0.855374, 0.184444, 0.484062,
		72.798698, 57.769817, 60.268166>
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
