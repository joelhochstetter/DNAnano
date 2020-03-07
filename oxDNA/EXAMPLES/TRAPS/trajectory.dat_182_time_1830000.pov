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
	<36.760578, 52.739246, 49.929852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920544, 52.656647, 49.572655>,  <37.016525, 52.607086, 49.358337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920544, 52.656647, 49.572655>,  <36.760578, 52.739246, 49.929852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920544, 52.656647, 49.572655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881562, -0.179971, 0.436415,
		-0.250829, -0.961754, 0.110065,
		0.399916, -0.206495, -0.892988,
		37.040520, 52.594700, 49.304760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964916, 52.099400, 49.947964>,  <36.760578, 52.739246, 49.929852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964916, 52.099400, 49.947964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195759, 52.291557, 49.683788>,  <37.334263, 52.406853, 49.525284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195759, 52.291557, 49.683788>,  <36.964916, 52.099400, 49.947964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195759, 52.291557, 49.683788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815856, -0.303051, 0.492482,
		0.036438, -0.823034, -0.566822,
		0.577106, 0.480390, -0.660435,
		37.368889, 52.435673, 49.485657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743637, 51.564293, 49.514744>,  <36.964916, 52.099400, 49.947964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743637, 51.564293, 49.514744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018787, 51.555393, 49.804939>,  <37.183876, 51.550053, 49.979057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018787, 51.555393, 49.804939>,  <36.743637, 51.564293, 49.514744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018787, 51.555393, 49.804939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314694, -0.891557, -0.325719,
		0.654063, 0.452361, -0.606277,
		0.687873, -0.022249, 0.725490,
		37.225151, 51.548717, 50.022587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506348, 51.541485, 49.282131>,  <36.743637, 51.564293, 49.514744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506348, 51.541485, 49.282131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447758, 51.372849, 49.640083>,  <37.412605, 51.271667, 49.854855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447758, 51.372849, 49.640083>,  <37.506348, 51.541485, 49.282131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447758, 51.372849, 49.640083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069729, -0.897986, -0.434465,
		0.986754, -0.126036, 0.102134,
		-0.146473, -0.421589, 0.894879,
		37.403816, 51.246372, 49.908546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149849, 51.907612, 48.980469>,  <37.506348, 51.541485, 49.282131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149849, 51.907612, 48.980469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491993, 51.948940, 48.777420>,  <38.697281, 51.973736, 48.655590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491993, 51.948940, 48.777420>,  <38.149849, 51.907612, 48.980469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491993, 51.948940, 48.777420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068190, 0.993838, 0.087381,
		0.513522, -0.040127, 0.857138,
		0.855363, 0.103320, -0.507622,
		38.748600, 51.979935, 48.625134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697948, 52.229340, 49.377411>,  <38.149849, 51.907612, 48.980469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697948, 52.229340, 49.377411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711025, 52.307163, 48.985271>,  <38.718872, 52.353859, 48.749989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711025, 52.307163, 48.985271>,  <38.697948, 52.229340, 49.377411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711025, 52.307163, 48.985271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059239, 0.978768, 0.196225,
		0.997708, -0.064489, 0.020473,
		0.032692, 0.194563, -0.980345,
		38.720833, 52.365532, 48.691170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394016, 52.516499, 49.027920>,  <38.697948, 52.229340, 49.377411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394016, 52.516499, 49.027920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055759, 52.648952, 48.860474>,  <38.852806, 52.728424, 48.760006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055759, 52.648952, 48.860474>,  <39.394016, 52.516499, 49.027920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055759, 52.648952, 48.860474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263276, 0.941019, 0.212531,
		0.464306, 0.069512, -0.882943,
		-0.845639, 0.331137, -0.418620,
		38.802067, 52.748295, 48.734886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006996, 52.212215, 48.793808>,  <39.394016, 52.516499, 49.027920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006996, 52.212215, 48.793808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170101, 51.848034, 48.766113>,  <40.267963, 51.629524, 48.749496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170101, 51.848034, 48.766113>,  <40.006996, 52.212215, 48.793808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170101, 51.848034, 48.766113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273707, -0.194218, 0.942000,
		-0.871098, -0.365166, -0.328394,
		0.407766, -0.910458, -0.069234,
		40.292431, 51.574898, 48.745342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738312, 52.124954, 48.979946>,  <40.006996, 52.212215, 48.793808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738312, 52.124954, 48.979946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763359, 51.802467, 48.744625>,  <40.778385, 51.608974, 48.603432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763359, 51.802467, 48.744625>,  <40.738312, 52.124954, 48.979946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763359, 51.802467, 48.744625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927039, -0.171368, 0.333514,
		-0.369700, -0.566260, 0.736662,
		0.062616, -0.806215, -0.588300,
		40.782143, 51.560604, 48.568134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264828, 52.484840, 49.374050>,  <40.738312, 52.124954, 48.979946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264828, 52.484840, 49.374050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625458, 52.565212, 49.220795>,  <41.841835, 52.613434, 49.128841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625458, 52.565212, 49.220795>,  <41.264828, 52.484840, 49.374050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625458, 52.565212, 49.220795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327068, 0.263134, 0.907627,
		0.283193, -0.943602, 0.171514,
		0.901570, 0.200937, -0.383139,
		41.895931, 52.625492, 49.105854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854523, 52.973732, 49.732601>,  <41.264828, 52.484840, 49.374050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854523, 52.973732, 49.732601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892189, 53.346085, 49.873795>,  <41.914787, 53.569496, 49.958511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892189, 53.346085, 49.873795>,  <41.854523, 52.973732, 49.732601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892189, 53.346085, 49.873795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955696, 0.014801, -0.293984,
		-0.278887, 0.365032, -0.888242,
		0.094167, 0.930878, 0.352987,
		41.920441, 53.625347, 49.979691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070824, 53.487740, 49.207050>,  <41.854523, 52.973732, 49.732601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070824, 53.487740, 49.207050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188160, 53.617790, 49.566658>,  <42.258560, 53.695820, 49.782425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188160, 53.617790, 49.566658>,  <42.070824, 53.487740, 49.207050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188160, 53.617790, 49.566658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916671, 0.171327, -0.361057,
		-0.271418, 0.930020, -0.247781,
		0.293338, 0.325131, 0.899023,
		42.276161, 53.715328, 49.836365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512691, 54.055031, 49.036274>,  <42.070824, 53.487740, 49.207050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512691, 54.055031, 49.036274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587425, 53.915253, 49.403530>,  <42.632267, 53.831387, 49.623882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587425, 53.915253, 49.403530>,  <42.512691, 54.055031, 49.036274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587425, 53.915253, 49.403530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980146, 0.003162, -0.198251,
		0.066375, 0.936951, 0.343098,
		0.186836, -0.349445, 0.918140,
		42.643475, 53.810417, 49.678970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173874, 54.398041, 49.362877>,  <42.512691, 54.055031, 49.036274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173874, 54.398041, 49.362877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103519, 54.046490, 49.540253>,  <43.061306, 53.835560, 49.646679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103519, 54.046490, 49.540253>,  <43.173874, 54.398041, 49.362877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103519, 54.046490, 49.540253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976636, -0.212292, -0.033371,
		0.123468, 0.427209, 0.895683,
		-0.175890, -0.878876, 0.443439,
		43.050751, 53.782825, 49.673283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433399, 55.191525, 49.008251>,  <43.173874, 54.398041, 49.362877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433399, 55.191525, 49.008251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558197, 54.844685, 49.163582>,  <43.633076, 54.636581, 49.256779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558197, 54.844685, 49.163582>,  <43.433399, 55.191525, 49.008251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558197, 54.844685, 49.163582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881603, 0.111862, -0.458544,
		0.354165, 0.485412, 0.799339,
		0.311998, -0.867100, 0.388324,
		43.651798, 54.584557, 49.280079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105392, 55.291458, 49.261131>,  <43.433399, 55.191525, 49.008251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105392, 55.291458, 49.261131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052555, 54.916332, 49.132729>,  <44.020855, 54.691254, 49.055687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052555, 54.916332, 49.132729>,  <44.105392, 55.291458, 49.261131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052555, 54.916332, 49.132729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840502, 0.065706, -0.537811,
		0.525461, -0.340848, 0.779559,
		-0.132090, -0.937819, -0.321009,
		44.012928, 54.634987, 49.036427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700565, 54.846359, 49.421761>,  <44.105392, 55.291458, 49.261131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700565, 54.846359, 49.421761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.524860, 54.694481, 49.096092>,  <44.419437, 54.603355, 48.900692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.524860, 54.694481, 49.096092>,  <44.700565, 54.846359, 49.421761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.524860, 54.694481, 49.096092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864988, 0.065952, -0.497439,
		0.242572, -0.922757, 0.299462,
		-0.439266, -0.379696, -0.814173,
		44.393082, 54.580570, 48.851841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269661, 54.672401, 49.943665>,  <44.700565, 54.846359, 49.421761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269661, 54.672401, 49.943665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412979, 54.987644, 49.743462>,  <45.498970, 55.176792, 49.623341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412979, 54.987644, 49.743462>,  <45.269661, 54.672401, 49.943665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.412979, 54.987644, 49.743462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873842, -0.094367, 0.476965,
		0.328670, -0.608257, -0.722495,
		0.358297, 0.788110, -0.500505,
		45.520470, 55.224079, 49.593311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.915512, 54.580948, 49.675079>,  <45.269661, 54.672401, 49.943665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.915512, 54.580948, 49.675079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907566, 54.979694, 49.705727>,  <45.902798, 55.218941, 49.724117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907566, 54.979694, 49.705727>,  <45.915512, 54.580948, 49.675079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.907566, 54.979694, 49.705727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882510, -0.018535, 0.469928,
		0.469873, 0.076953, -0.879373,
		-0.019863, 0.996862, 0.076620,
		45.901608, 55.278751, 49.728714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.507435, 54.954132, 49.337097>,  <45.915512, 54.580948, 49.675079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.507435, 54.954132, 49.337097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.380978, 55.161377, 49.654991>,  <46.305103, 55.285725, 49.845730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.380978, 55.161377, 49.654991>,  <46.507435, 54.954132, 49.337097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.380978, 55.161377, 49.654991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907556, -0.078885, 0.412454,
		0.276391, 0.851666, -0.445278,
		-0.316148, 0.518114, 0.794738,
		46.286133, 55.316811, 49.893414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.042957, 55.321468, 49.438324>,  <46.507435, 54.954132, 49.337097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.042957, 55.321468, 49.438324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.829460, 55.337074, 49.776222>,  <46.701363, 55.346439, 49.978962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.829460, 55.337074, 49.776222>,  <47.042957, 55.321468, 49.438324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.829460, 55.337074, 49.776222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842803, -0.057325, 0.535160,
		0.069303, 0.997593, -0.002285,
		-0.533741, 0.039014, 0.844747,
		46.669338, 55.348778, 50.029648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.262508, 55.940311, 49.840580>,  <47.042957, 55.321468, 49.438324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.262508, 55.940311, 49.840580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.132904, 55.634274, 50.063164>,  <47.055141, 55.450649, 50.196712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.132904, 55.634274, 50.063164>,  <47.262508, 55.940311, 49.840580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.132904, 55.634274, 50.063164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893559, -0.054290, 0.445650,
		-0.310755, 0.641624, 0.701249,
		-0.324011, -0.765096, 0.556458,
		47.035702, 55.404743, 50.230103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.302879, 56.109100, 50.605846>,  <47.262508, 55.940311, 49.840580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.302879, 56.109100, 50.605846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.342274, 55.723038, 50.508877>,  <47.365910, 55.491398, 50.450695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.342274, 55.723038, 50.508877>,  <47.302879, 56.109100, 50.605846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.342274, 55.723038, 50.508877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964973, 0.033101, 0.260254,
		-0.243162, -0.259563, 0.934612,
		0.098489, -0.965159, -0.242422,
		47.371819, 55.433491, 50.436150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.716095, 55.692535, 51.139744>,  <47.302879, 56.109100, 50.605846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.716095, 55.692535, 51.139744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.747353, 55.481152, 50.801601>,  <47.766106, 55.354321, 50.598717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.747353, 55.481152, 50.801601>,  <47.716095, 55.692535, 51.139744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.747353, 55.481152, 50.801601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850534, -0.407017, 0.333059,
		-0.520082, -0.745031, 0.417665,
		0.078143, -0.528456, -0.845357,
		47.770794, 55.322617, 50.547993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.750309, 54.933361, 51.300571>,  <47.716095, 55.692535, 51.139744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.750309, 54.933361, 51.300571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.955723, 55.045971, 50.976341>,  <48.078972, 55.113537, 50.781803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.955723, 55.045971, 50.976341>,  <47.750309, 54.933361, 51.300571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.955723, 55.045971, 50.976341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856599, -0.223507, 0.465062,
		-0.050244, -0.933162, -0.355928,
		0.513530, 0.281521, -0.810576,
		48.109783, 55.130428, 50.733170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.159058, 54.359085, 51.150322>,  <47.750309, 54.933361, 51.300571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.159058, 54.359085, 51.150322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.323349, 54.701103, 51.023708>,  <48.421925, 54.906315, 50.947739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.323349, 54.701103, 51.023708>,  <48.159058, 54.359085, 51.150322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.323349, 54.701103, 51.023708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845526, -0.227291, 0.483141,
		0.341163, -0.466079, -0.816320,
		0.410724, 0.855049, -0.316538,
		48.446568, 54.957619, 50.928745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.755386, 54.256596, 50.719025>,  <48.159058, 54.359085, 51.150322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.755386, 54.256596, 50.719025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.779030, 54.602379, 50.918716>,  <48.793217, 54.809849, 51.038532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.779030, 54.602379, 50.918716>,  <48.755386, 54.256596, 50.719025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.779030, 54.602379, 50.918716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844378, -0.310056, 0.436910,
		0.532476, 0.395709, -0.748253,
		0.059111, 0.864453, 0.499225,
		48.796764, 54.861713, 51.068485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.388699, 54.606766, 50.543472>,  <48.755386, 54.256596, 50.719025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.388699, 54.606766, 50.543472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.295094, 54.663651, 50.928185>,  <49.238930, 54.697781, 51.159012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.295094, 54.663651, 50.928185>,  <49.388699, 54.606766, 50.543472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.295094, 54.663651, 50.928185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901057, -0.339815, 0.269483,
		0.365150, 0.929678, -0.048618,
		-0.234012, 0.142209, 0.961777,
		49.224892, 54.706314, 51.216717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.836002, 55.135761, 50.820454>,  <49.388699, 54.606766, 50.543472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.836002, 55.135761, 50.820454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.702374, 54.857277, 51.074600>,  <49.622196, 54.690186, 51.227089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.702374, 54.857277, 51.074600>,  <49.836002, 55.135761, 50.820454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.702374, 54.857277, 51.074600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899812, -0.436250, -0.004903,
		0.280591, 0.570071, 0.772197,
		-0.334076, -0.696208, 0.635365,
		49.602150, 54.648415, 51.265209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.094223, 55.254013, 51.434933>,  <49.836002, 55.135761, 50.820454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.094223, 55.254013, 51.434933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.031048, 54.865177, 51.365547>,  <49.993145, 54.631874, 51.323917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.031048, 54.865177, 51.365547>,  <50.094223, 55.254013, 51.434933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.031048, 54.865177, 51.365547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979397, -0.176601, 0.097950,
		-0.125850, -0.154421, 0.979957,
		-0.157936, -0.972094, -0.173465,
		49.983665, 54.573547, 51.313507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.520969, 54.847214, 51.930706>,  <50.094223, 55.254013, 51.434933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.520969, 54.847214, 51.930706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.455551, 54.660393, 51.583118>,  <50.416302, 54.548298, 51.374565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.455551, 54.660393, 51.583118>,  <50.520969, 54.847214, 51.930706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.455551, 54.660393, 51.583118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978791, -0.186974, -0.083719,
		-0.123373, -0.864233, 0.487729,
		-0.163546, -0.467056, -0.868971,
		50.406487, 54.520275, 51.322426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.731400, 54.793762, 52.312634>,  <50.520969, 54.847214, 51.930706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.731400, 54.793762, 52.312634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.342518, 54.707611, 52.349365>,  <49.109188, 54.655922, 52.371403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.342518, 54.707611, 52.349365>,  <49.731400, 54.793762, 52.312634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.342518, 54.707611, 52.349365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106155, -0.055892, 0.992777,
		-0.208691, 0.974930, 0.077202,
		-0.972203, -0.215379, 0.091830,
		49.050858, 54.642998, 52.376915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.967094, 54.058846, 52.371536>,  <49.731400, 54.793762, 52.312634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.967094, 54.058846, 52.371536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.117649, 54.008080, 52.004444>,  <50.207981, 53.977619, 51.784187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.117649, 54.008080, 52.004444>,  <49.967094, 54.058846, 52.371536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.117649, 54.008080, 52.004444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072453, 0.991572, -0.107408,
		0.923625, -0.026065, 0.382410,
		0.376387, -0.126911, -0.917729,
		50.230564, 53.970005, 51.729126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.659336, 54.271919, 52.379208>,  <49.967094, 54.058846, 52.371536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.659336, 54.271919, 52.379208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.472519, 54.340408, 52.032207>,  <50.360428, 54.381500, 51.824009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.472519, 54.340408, 52.032207>,  <50.659336, 54.271919, 52.379208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.472519, 54.340408, 52.032207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158633, 0.981381, 0.108291,
		0.869887, -0.087037, -0.485511,
		-0.467046, 0.171219, -0.867498,
		50.332405, 54.391773, 51.771957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.149174, 54.547909, 52.766888>,  <50.659336, 54.271919, 52.379208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.149174, 54.547909, 52.766888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.288517, 54.226891, 52.960617>,  <51.372124, 54.034279, 53.076855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.288517, 54.226891, 52.960617>,  <51.149174, 54.547909, 52.766888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.288517, 54.226891, 52.960617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373710, 0.592757, 0.713429,
		-0.859644, -0.067533, 0.506410,
		0.348358, -0.802545, 0.484322,
		51.393024, 53.986126, 53.105915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.098995, 54.553814, 53.551956>,  <51.149174, 54.547909, 52.766888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.098995, 54.553814, 53.551956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.399204, 54.306808, 53.457809>,  <51.579330, 54.158604, 53.401321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.399204, 54.306808, 53.457809>,  <51.098995, 54.553814, 53.551956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.399204, 54.306808, 53.457809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533311, 0.355640, 0.767528,
		-0.390256, -0.701567, 0.596242,
		0.750520, -0.617515, -0.235363,
		51.624359, 54.121555, 53.387199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.429596, 54.289970, 54.204247>,  <51.098995, 54.553814, 53.551956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.429596, 54.289970, 54.204247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.700020, 54.259415, 53.911095>,  <51.862274, 54.241081, 53.735203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.700020, 54.259415, 53.911095>,  <51.429596, 54.289970, 54.204247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.700020, 54.259415, 53.911095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720619, 0.276122, 0.635975,
		0.153781, -0.958082, 0.241723,
		0.676062, -0.076390, -0.732875,
		51.902840, 54.236500, 53.691231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.034233, 54.189964, 54.612965>,  <51.429596, 54.289970, 54.204247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.034233, 54.189964, 54.612965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.167023, 54.258255, 54.241882>,  <52.246696, 54.299229, 54.019234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.167023, 54.258255, 54.241882>,  <52.034233, 54.189964, 54.612965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.167023, 54.258255, 54.241882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911131, 0.196563, 0.362220,
		0.244193, -0.965513, -0.090299,
		0.331979, 0.170726, -0.927709,
		52.266617, 54.309471, 53.963570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.624409, 53.845764, 54.482838>,  <52.034233, 54.189964, 54.612965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.624409, 53.845764, 54.482838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.667061, 54.176102, 54.261345>,  <52.692654, 54.374302, 54.128448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.667061, 54.176102, 54.261345>,  <52.624409, 53.845764, 54.482838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.667061, 54.176102, 54.261345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948918, 0.081806, 0.304735,
		0.296961, -0.557940, -0.774930,
		0.106630, 0.825839, -0.553732,
		52.699051, 54.423855, 54.095226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.382645, 53.813679, 54.326317>,  <52.624409, 53.845764, 54.482838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.382645, 53.813679, 54.326317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.280521, 54.196724, 54.272972>,  <53.219246, 54.426552, 54.240967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.280521, 54.196724, 54.272972>,  <53.382645, 53.813679, 54.326317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.280521, 54.196724, 54.272972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890642, 0.286616, 0.352999,
		0.376261, -0.028652, -0.926071,
		-0.255313, 0.957617, -0.133361,
		53.203926, 54.484009, 54.232964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.941078, 54.105209, 54.011616>,  <53.382645, 53.813679, 54.326317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.941078, 54.105209, 54.011616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.770779, 54.394630, 54.228947>,  <53.668598, 54.568283, 54.359344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.770779, 54.394630, 54.228947>,  <53.941078, 54.105209, 54.011616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.770779, 54.394630, 54.228947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904811, 0.345352, 0.249098,
		-0.007404, 0.597664, -0.801712,
		-0.425750, 0.723553, 0.543330,
		53.643055, 54.611698, 54.391945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.211880, 54.720062, 53.793541>,  <53.941078, 54.105209, 54.011616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.211880, 54.720062, 53.793541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.117378, 54.673531, 54.179420>,  <54.060677, 54.645611, 54.410950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.117378, 54.673531, 54.179420>,  <54.211880, 54.720062, 53.793541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.117378, 54.673531, 54.179420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953624, 0.162802, 0.253172,
		-0.186507, 0.979777, 0.072473,
		-0.236254, -0.116330, 0.964703,
		54.046501, 54.638630, 54.468830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.623543, 55.212151, 54.045967>,  <54.211880, 54.720062, 53.793541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.623543, 55.212151, 54.045967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.551323, 54.940697, 54.330742>,  <54.507992, 54.777824, 54.501606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.551323, 54.940697, 54.330742>,  <54.623543, 55.212151, 54.045967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.551323, 54.940697, 54.330742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904660, 0.169482, 0.390981,
		-0.385994, 0.714656, 0.583331,
		-0.180553, -0.678632, 0.711940,
		54.497158, 54.737106, 54.544323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.694813, 55.509357, 54.770969>,  <54.623543, 55.212151, 54.045967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.694813, 55.509357, 54.770969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.776596, 55.118671, 54.744980>,  <54.825665, 54.884258, 54.729385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.776596, 55.118671, 54.744980>,  <54.694813, 55.509357, 54.770969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.776596, 55.118671, 54.744980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935137, 0.175271, 0.307896,
		-0.289338, -0.123712, 0.949199,
		0.204457, -0.976717, -0.064975,
		54.837933, 54.825657, 54.725487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.336578, 55.497066, 55.373745>,  <54.694813, 55.509357, 54.770969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.336578, 55.497066, 55.373745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.035873, 55.752380, 55.440025>,  <53.855450, 55.905567, 55.479794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.035873, 55.752380, 55.440025>,  <54.336578, 55.497066, 55.373745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.035873, 55.752380, 55.440025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182642, -0.442975, 0.877733,
		0.633642, 0.629579, 0.449587,
		-0.751758, 0.638282, 0.165700,
		53.810345, 55.943867, 55.489735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.353966, 55.822735, 56.019096>,  <54.336578, 55.497066, 55.373745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.353966, 55.822735, 56.019096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.970360, 55.767582, 55.920082>,  <53.740196, 55.734489, 55.860672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.970360, 55.767582, 55.920082>,  <54.353966, 55.822735, 56.019096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.970360, 55.767582, 55.920082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136056, -0.542235, 0.829138,
		-0.248546, 0.828836, 0.501253,
		-0.959017, -0.137881, -0.247539,
		53.682655, 55.726219, 55.845821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.412659, 56.531521, 56.386749>,  <54.353966, 55.822735, 56.019096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.412659, 56.531521, 56.386749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.648605, 56.500629, 56.065231>,  <54.790173, 56.482094, 55.872318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.648605, 56.500629, 56.065231>,  <54.412659, 56.531521, 56.386749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.648605, 56.500629, 56.065231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541650, 0.776105, 0.322918,
		0.598892, -0.625856, 0.499632,
		0.589867, -0.077232, -0.803799,
		54.825565, 56.477459, 55.824093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.062878, 56.558956, 56.636089>,  <54.412659, 56.531521, 56.386749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.062878, 56.558956, 56.636089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.052025, 56.706131, 56.264305>,  <55.045513, 56.794434, 56.041237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.052025, 56.706131, 56.264305>,  <55.062878, 56.558956, 56.636089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.052025, 56.706131, 56.264305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261770, 0.899968, 0.348617,
		0.964749, -0.233844, -0.120734,
		-0.027135, 0.367933, -0.929456,
		55.043884, 56.816509, 55.985470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.759762, 56.821133, 56.419430>,  <55.062878, 56.558956, 56.636089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.759762, 56.821133, 56.419430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.444084, 57.017548, 56.271889>,  <55.254677, 57.135395, 56.183365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.444084, 57.017548, 56.271889>,  <55.759762, 56.821133, 56.419430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.444084, 57.017548, 56.271889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237321, 0.797779, 0.554281,
		0.566432, 0.349902, -0.746139,
		-0.789198, 0.491037, -0.368848,
		55.207325, 57.164860, 56.161236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.932804, 57.376705, 56.610748>,  <55.759762, 56.821133, 56.419430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.932804, 57.376705, 56.610748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.575645, 57.493290, 56.473473>,  <55.361351, 57.563240, 56.391106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.575645, 57.493290, 56.473473>,  <55.932804, 57.376705, 56.610748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.575645, 57.493290, 56.473473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021904, 0.789436, 0.613442,
		0.449722, 0.540225, -0.711272,
		-0.892900, 0.291458, -0.343194,
		55.307774, 57.580727, 56.370514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.911716, 58.097717, 56.335411>,  <55.932804, 57.376705, 56.610748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.911716, 58.097717, 56.335411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.548058, 58.020721, 56.483147>,  <55.329865, 57.974525, 56.571789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.548058, 58.020721, 56.483147>,  <55.911716, 58.097717, 56.335411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.548058, 58.020721, 56.483147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012211, 0.874089, 0.485612,
		-0.416306, 0.446001, -0.792321,
		-0.909143, -0.192488, 0.369335,
		55.275314, 57.962975, 56.593948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.226387, 58.411514, 56.148090>,  <55.911716, 58.097717, 56.335411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.226387, 58.411514, 56.148090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.241707, 58.319988, 56.537178>,  <55.250900, 58.265072, 56.770630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.241707, 58.319988, 56.537178>,  <55.226387, 58.411514, 56.148090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.241707, 58.319988, 56.537178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122081, 0.965067, 0.231822,
		-0.991781, -0.127629, 0.009029,
		0.038300, -0.228814, 0.972717,
		55.253197, 58.251343, 56.828995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.930130, 58.955639, 56.434162>,  <55.226387, 58.411514, 56.148090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.930130, 58.955639, 56.434162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.070473, 58.803188, 56.776306>,  <55.154678, 58.711720, 56.981594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.070473, 58.803188, 56.776306>,  <54.930130, 58.955639, 56.434162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.070473, 58.803188, 56.776306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091118, 0.895200, 0.436250,
		-0.931986, -0.231000, 0.279359,
		0.350856, -0.381124, 0.855362,
		55.175728, 58.688850, 57.032913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.452503, 59.128170, 57.039139>,  <54.930130, 58.955639, 56.434162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.452503, 59.128170, 57.039139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.845581, 59.093742, 57.104752>,  <55.081429, 59.073086, 57.144119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.845581, 59.093742, 57.104752>,  <54.452503, 59.128170, 57.039139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.845581, 59.093742, 57.104752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022709, 0.822846, 0.567811,
		-0.183843, -0.561709, 0.806650,
		0.982693, -0.086069, 0.164030,
		55.140388, 59.067921, 57.153961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.559616, 59.056206, 57.699654>,  <54.452503, 59.128170, 57.039139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.559616, 59.056206, 57.699654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.855019, 59.265995, 57.530167>,  <55.032261, 59.391869, 57.428474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.855019, 59.265995, 57.530167>,  <54.559616, 59.056206, 57.699654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.855019, 59.265995, 57.530167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143869, 0.736537, 0.660920,
		0.658714, -0.427137, 0.619395,
		0.738511, 0.524468, -0.423715,
		55.076572, 59.423336, 57.403049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.129730, 59.155540, 58.241341>,  <54.559616, 59.056206, 57.699654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.129730, 59.155540, 58.241341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.134171, 59.426449, 57.947083>,  <55.136833, 59.588993, 57.770527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.134171, 59.426449, 57.947083>,  <55.129730, 59.155540, 58.241341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.134171, 59.426449, 57.947083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172204, 0.723409, 0.668600,
		0.984999, -0.134104, -0.108598,
		0.011101, 0.677271, -0.735650,
		55.137501, 59.629631, 57.726387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.820473, 59.490402, 57.972736>,  <55.129730, 59.155540, 58.241341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.820473, 59.490402, 57.972736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.502472, 59.731049, 57.941666>,  <55.311672, 59.875435, 57.923023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.502472, 59.731049, 57.941666>,  <55.820473, 59.490402, 57.972736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.502472, 59.731049, 57.941666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367193, 0.579193, 0.727808,
		0.482846, 0.550088, -0.681369,
		-0.795002, 0.601613, -0.077672,
		55.263969, 59.911533, 57.918365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.407803, 59.245182, 57.546314>,  <55.820473, 59.490402, 57.972736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.407803, 59.245182, 57.546314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.232933, 59.591263, 57.644547>,  <56.128010, 59.798912, 57.703487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.232933, 59.591263, 57.644547>,  <56.407803, 59.245182, 57.546314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.232933, 59.591263, 57.644547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851593, 0.486036, -0.196362,
		-0.289253, 0.123290, -0.949280,
		-0.437175, 0.865198, 0.245581,
		56.101780, 59.850822, 57.718220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.594730, 59.787682, 57.029034>,  <56.407803, 59.245182, 57.546314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.594730, 59.787682, 57.029034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.532372, 59.937668, 57.394569>,  <56.494957, 60.027660, 57.613892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.532372, 59.937668, 57.394569>,  <56.594730, 59.787682, 57.029034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.532372, 59.937668, 57.394569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750308, 0.646666, -0.137337,
		-0.642443, 0.664249, -0.382151,
		-0.155898, 0.374962, 0.913838,
		56.485603, 60.050156, 57.668720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.637154, 60.572170, 57.069157>,  <56.594730, 59.787682, 57.029034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.637154, 60.572170, 57.069157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.761757, 60.391502, 57.403572>,  <56.836517, 60.283100, 57.604221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.761757, 60.391502, 57.403572>,  <56.637154, 60.572170, 57.069157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.761757, 60.391502, 57.403572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852488, 0.521514, -0.035886,
		-0.419797, 0.723891, 0.547495,
		0.311504, -0.451668, 0.836039,
		56.855209, 60.256001, 57.654385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.045658, 61.101261, 57.427868>,  <56.637154, 60.572170, 57.069157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.045658, 61.101261, 57.427868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.136444, 60.752232, 57.600883>,  <57.190918, 60.542812, 57.704693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.136444, 60.752232, 57.600883>,  <57.045658, 61.101261, 57.427868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.136444, 60.752232, 57.600883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905744, 0.352351, 0.235535,
		-0.357930, 0.338314, 0.870304,
		0.226968, -0.872578, 0.432543,
		57.204533, 60.490459, 57.730648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.412846, 61.245312, 58.165127>,  <57.045658, 61.101261, 57.427868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.412846, 61.245312, 58.165127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.506149, 60.873280, 58.051613>,  <57.562130, 60.650059, 57.983505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.506149, 60.873280, 58.051613>,  <57.412846, 61.245312, 58.165127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.506149, 60.873280, 58.051613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929683, 0.127739, 0.345502,
		-0.285097, -0.344419, 0.894481,
		0.233258, -0.930085, -0.283782,
		57.576126, 60.594254, 57.966476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.742157, 60.961971, 58.711479>,  <57.412846, 61.245312, 58.165127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.742157, 60.961971, 58.711479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.827263, 60.732212, 58.395302>,  <57.878326, 60.594357, 58.205597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.827263, 60.732212, 58.395302>,  <57.742157, 60.961971, 58.711479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.827263, 60.732212, 58.395302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972527, 0.046284, 0.228143,
		-0.094460, -0.817266, 0.568466,
		0.212764, -0.574399, -0.790441,
		57.891090, 60.559891, 58.158169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.240032, 60.365944, 59.012165>,  <57.742157, 60.961971, 58.711479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.240032, 60.365944, 59.012165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.237694, 60.439919, 58.619072>,  <58.236290, 60.484303, 58.383217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.237694, 60.439919, 58.619072>,  <58.240032, 60.365944, 59.012165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.237694, 60.439919, 58.619072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997524, -0.067796, -0.018697,
		-0.070083, -0.980409, -0.184085,
		-0.005850, 0.184940, -0.982732,
		58.235939, 60.495399, 58.324253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.373417, 59.817787, 58.601189>,  <58.240032, 60.365944, 59.012165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.373417, 59.817787, 58.601189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.541328, 60.146675, 58.447441>,  <58.642075, 60.344009, 58.355194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.541328, 60.146675, 58.447441>,  <58.373417, 59.817787, 58.601189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.541328, 60.146675, 58.447441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897080, -0.311490, 0.313403,
		0.137959, -0.476370, -0.868354,
		0.419779, 0.822220, -0.384369,
		58.667263, 60.393341, 58.332130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.787170, 59.811352, 57.962193>,  <58.373417, 59.817787, 58.601189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.787170, 59.811352, 57.962193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.916565, 60.075500, 58.233269>,  <58.994202, 60.233990, 58.395916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.916565, 60.075500, 58.233269>,  <58.787170, 59.811352, 57.962193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.916565, 60.075500, 58.233269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903762, -0.427788, -0.014550,
		0.280300, 0.617178, -0.735203,
		0.323490, 0.660370, 0.677691,
		59.013611, 60.273613, 58.436577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.370537, 60.065845, 57.789639>,  <58.787170, 59.811352, 57.962193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.370537, 60.065845, 57.789639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.410789, 60.107910, 58.185379>,  <59.434940, 60.133148, 58.422825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.410789, 60.107910, 58.185379>,  <59.370537, 60.065845, 57.789639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.410789, 60.107910, 58.185379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925221, -0.375538, -0.054195,
		0.365840, 0.920821, -0.135090,
		0.100636, 0.105162, 0.989350,
		59.440979, 60.139458, 58.482185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.029972, 60.432335, 57.916756>,  <59.370537, 60.065845, 57.789639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.029972, 60.432335, 57.916756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.910728, 60.146996, 58.170456>,  <59.839184, 59.975792, 58.322674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.910728, 60.146996, 58.170456>,  <60.029972, 60.432335, 57.916756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.910728, 60.146996, 58.170456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940743, -0.332099, 0.068649,
		0.161663, 0.617128, 0.770077,
		-0.298107, -0.713346, 0.634247,
		59.821297, 59.932991, 58.360729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.431225, 60.593452, 58.501945>,  <60.029972, 60.432335, 57.916756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.431225, 60.593452, 58.501945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.338707, 60.208694, 58.443626>,  <60.283195, 59.977840, 58.408634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.338707, 60.208694, 58.443626>,  <60.431225, 60.593452, 58.501945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.338707, 60.208694, 58.443626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971976, -0.222001, -0.077313,
		0.041999, -0.159597, 0.986288,
		-0.231296, -0.961896, -0.145801,
		60.269318, 59.920124, 58.399887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.558300, 60.214901, 59.086292>,  <60.431225, 60.593452, 58.501945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.558300, 60.214901, 59.086292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.604492, 60.004837, 58.749039>,  <60.632206, 59.878799, 58.546688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.604492, 60.004837, 58.749039>,  <60.558300, 60.214901, 59.086292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.604492, 60.004837, 58.749039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938911, -0.219332, 0.265215,
		-0.324206, -0.822253, 0.467750,
		0.115481, -0.525160, -0.843132,
		60.639137, 59.847290, 58.496098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.917919, 59.606258, 59.226250>,  <60.558300, 60.214901, 59.086292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.917919, 59.606258, 59.226250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.971962, 59.655602, 58.833000>,  <61.004387, 59.685207, 58.597050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.971962, 59.655602, 58.833000>,  <60.917919, 59.606258, 59.226250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.971962, 59.655602, 58.833000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959669, -0.263179, 0.098858,
		-0.246543, -0.956828, -0.153938,
		0.135103, 0.123357, -0.983123,
		61.012493, 59.692608, 58.538063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.289753, 59.119255, 58.932941>,  <60.917919, 59.606258, 59.226250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.289753, 59.119255, 58.932941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.405258, 59.474548, 58.790024>,  <61.474560, 59.687725, 58.704273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.405258, 59.474548, 58.790024>,  <61.289753, 59.119255, 58.932941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.405258, 59.474548, 58.790024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847370, -0.063405, 0.527204,
		0.445625, -0.454999, -0.770970,
		0.288761, 0.888232, -0.357298,
		61.491886, 59.741016, 58.682835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.001930, 58.943409, 58.724358>,  <61.289753, 59.119255, 58.932941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.001930, 58.943409, 58.724358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.952209, 59.326679, 58.827461>,  <61.922379, 59.556641, 58.889324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.952209, 59.326679, 58.827461>,  <62.001930, 58.943409, 58.724358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.952209, 59.326679, 58.827461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828225, -0.042866, 0.558753,
		0.546435, 0.282939, -0.788260,
		-0.124303, 0.958180, 0.257760,
		61.914917, 59.614132, 58.904789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.672176, 59.241676, 58.707958>,  <62.001930, 58.943409, 58.724358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.672176, 59.241676, 58.707958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.434990, 59.445587, 58.957283>,  <62.292679, 59.567932, 59.106876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.434990, 59.445587, 58.957283>,  <62.672176, 59.241676, 58.707958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.434990, 59.445587, 58.957283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751365, 0.071944, 0.655953,
		0.289546, 0.857294, -0.425688,
		-0.592971, 0.509776, 0.623309,
		62.257099, 59.598518, 59.144276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.904938, 59.955669, 58.923481>,  <62.672176, 59.241676, 58.707958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.904938, 59.955669, 58.923481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.690643, 59.784119, 59.214424>,  <62.562065, 59.681187, 59.388988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.690643, 59.784119, 59.214424>,  <62.904938, 59.955669, 58.923481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.690643, 59.784119, 59.214424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791429, 0.045213, 0.609587,
		-0.294324, 0.902231, 0.315203,
		-0.535737, -0.428877, 0.727358,
		62.529922, 59.655457, 59.432632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.026058, 60.355953, 59.539951>,  <62.904938, 59.955669, 58.923481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.026058, 60.355953, 59.539951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.934402, 59.973297, 59.611877>,  <62.879410, 59.743702, 59.655033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.934402, 59.973297, 59.611877>,  <63.026058, 60.355953, 59.539951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.934402, 59.973297, 59.611877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829701, -0.095356, 0.550004,
		-0.509009, 0.275223, 0.815575,
		-0.229143, -0.956640, 0.179815,
		62.865658, 59.686306, 59.665821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.006401, 60.125813, 60.300220>,  <63.026058, 60.355953, 59.539951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.006401, 60.125813, 60.300220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.151649, 59.826973, 60.077515>,  <63.238800, 59.647671, 59.943890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.151649, 59.826973, 60.077515>,  <63.006401, 60.125813, 60.300220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.151649, 59.826973, 60.077515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772831, -0.092283, 0.627866,
		-0.520457, -0.658279, 0.543869,
		0.363122, -0.747096, -0.556768,
		63.260586, 59.602844, 59.910484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.190430, 59.534046, 60.736095>,  <63.006401, 60.125813, 60.300220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.190430, 59.534046, 60.736095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.408394, 59.538918, 60.400734>,  <63.539173, 59.541840, 60.199516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.408394, 59.538918, 60.400734>,  <63.190430, 59.534046, 60.736095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.408394, 59.538918, 60.400734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838053, 0.024530, 0.545037,
		0.027213, -0.999625, 0.003146,
		0.544910, 0.012195, -0.838406,
		63.571865, 59.542572, 60.149212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.847633, 59.082680, 60.815739>,  <63.190430, 59.534046, 60.736095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.847633, 59.082680, 60.815739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.923584, 59.329254, 60.510071>,  <63.969154, 59.477200, 60.326668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.923584, 59.329254, 60.510071>,  <63.847633, 59.082680, 60.815739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.923584, 59.329254, 60.510071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933413, 0.128016, 0.335190,
		0.304448, -0.776931, -0.551080,
		0.189872, 0.616433, -0.764172,
		63.980545, 59.514183, 60.280819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.423752, 58.876488, 60.565495>,  <63.847633, 59.082680, 60.815739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.423752, 58.876488, 60.565495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.391800, 59.268230, 60.491219>,  <64.372627, 59.503277, 60.446655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.391800, 59.268230, 60.491219>,  <64.423752, 58.876488, 60.565495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.391800, 59.268230, 60.491219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895377, 0.152371, 0.418430,
		0.438085, -0.132833, -0.889065,
		-0.079886, 0.979356, -0.185687,
		64.367836, 59.562038, 60.435513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.099449, 59.063805, 60.231491>,  <64.423752, 58.876488, 60.565495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.099449, 59.063805, 60.231491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.866081, 59.314034, 60.438675>,  <64.726059, 59.464169, 60.562984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.866081, 59.314034, 60.438675>,  <65.099449, 59.063805, 60.231491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.866081, 59.314034, 60.438675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742784, 0.153072, 0.651798,
		0.328460, 0.765005, -0.553969,
		-0.583426, 0.625569, 0.517955,
		64.691055, 59.501705, 60.594063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.601692, 59.615387, 59.830715>,  <65.099449, 59.063805, 60.231491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.601692, 59.615387, 59.830715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.629433, 59.665001, 60.226654>,  <65.646080, 59.694771, 60.464218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.629433, 59.665001, 60.226654>,  <65.601692, 59.615387, 59.830715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.629433, 59.665001, 60.226654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734925, 0.664622, -0.134772,
		-0.674593, 0.736813, -0.045062,
		0.069352, 0.124033, 0.989852,
		65.650238, 59.702209, 60.523609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.639130, 60.298710, 60.052814>,  <65.601692, 59.615387, 59.830715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.639130, 60.298710, 60.052814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.810493, 60.116364, 60.364876>,  <65.913315, 60.006954, 60.552113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.810493, 60.116364, 60.364876>,  <65.639130, 60.298710, 60.052814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.810493, 60.116364, 60.364876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833021, 0.533751, -0.145554,
		-0.350057, 0.712245, 0.608414,
		0.428412, -0.455870, 0.780158,
		65.939018, 59.979603, 60.598923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.912636, 60.809456, 60.442879>,  <65.639130, 60.298710, 60.052814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.912636, 60.809456, 60.442879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.095894, 60.455574, 60.408485>,  <66.205849, 60.243244, 60.387852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.095894, 60.455574, 60.408485>,  <65.912636, 60.809456, 60.442879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.095894, 60.455574, 60.408485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887799, 0.460207, -0.004755,
		0.043775, -0.074154, 0.996286,
		0.458145, -0.884709, -0.085979,
		66.233337, 60.190163, 60.382690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.590652, 61.184383, 60.322102>,  <65.912636, 60.809456, 60.442879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.590652, 61.184383, 60.322102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.615967, 60.799328, 60.216782>,  <66.631157, 60.568295, 60.153591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.615967, 60.799328, 60.216782>,  <66.590652, 61.184383, 60.322102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.615967, 60.799328, 60.216782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873398, 0.181072, -0.452094,
		0.482879, -0.201355, 0.852223,
		0.063283, -0.962636, -0.263299,
		66.634949, 60.510536, 60.137791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.193527, 61.211403, 59.912159>,  <66.590652, 61.184383, 60.322102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.193527, 61.211403, 59.912159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.169388, 60.812889, 59.936707>,  <67.154900, 60.573780, 59.951435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.169388, 60.812889, 59.936707>,  <67.193527, 61.211403, 59.912159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.169388, 60.812889, 59.936707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905450, -0.080520, -0.416746,
		0.420141, 0.030410, 0.906949,
		-0.060355, -0.996289, 0.061365,
		67.151283, 60.514004, 59.955116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.853569, 60.991745, 60.046326>,  <67.193527, 61.211403, 59.912159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.853569, 60.991745, 60.046326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.664185, 60.678810, 59.884445>,  <67.550552, 60.491047, 59.787319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.664185, 60.678810, 59.884445>,  <67.853569, 60.991745, 60.046326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.664185, 60.678810, 59.884445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763438, -0.135322, -0.631546,
		0.439320, -0.607971, 0.661338,
		-0.473456, -0.782342, -0.404699,
		67.522148, 60.444107, 59.763035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.356865, 60.394753, 60.075233>,  <67.853569, 60.991745, 60.046326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.356865, 60.394753, 60.075233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.099930, 60.367889, 59.769844>,  <67.945770, 60.351772, 59.586609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.099930, 60.367889, 59.769844>,  <68.356865, 60.394753, 60.075233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.099930, 60.367889, 59.769844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759256, -0.191686, -0.621922,
		-0.104582, -0.979156, 0.174115,
		-0.642335, -0.067156, -0.763477,
		67.907227, 60.347744, 59.540802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.837639, 60.217499, 60.625698>,  <68.356865, 60.394753, 60.075233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.837639, 60.217499, 60.625698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.033089, 60.183899, 60.278320>,  <69.150360, 60.163738, 60.069893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.033089, 60.183899, 60.278320>,  <68.837639, 60.217499, 60.625698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.033089, 60.183899, 60.278320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857912, -0.134989, 0.495747,
		-0.158871, -0.987280, 0.006104,
		0.488617, -0.083996, -0.868446,
		69.179672, 60.158699, 60.017788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.027496, 59.532345, 60.391876>,  <68.837639, 60.217499, 60.625698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.027496, 59.532345, 60.391876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.299942, 59.805641, 60.286598>,  <69.463409, 59.969620, 60.223431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.299942, 59.805641, 60.286598>,  <69.027496, 59.532345, 60.391876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.299942, 59.805641, 60.286598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514645, -0.191062, 0.835844,
		0.520801, -0.704749, -0.481763,
		0.681107, 0.683246, -0.263190,
		69.504272, 60.010616, 60.207642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.693565, 59.295353, 60.559799>,  <69.027496, 59.532345, 60.391876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.693565, 59.295353, 60.559799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.525856, 59.638588, 60.678391>,  <69.425232, 59.844528, 60.749546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.525856, 59.638588, 60.678391>,  <69.693565, 59.295353, 60.559799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.525856, 59.638588, 60.678391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825229, -0.496340, 0.269526,
		0.378433, -0.131662, 0.916217,
		-0.419269, 0.858086, 0.296482,
		69.400078, 59.896015, 60.767334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.790115, 58.562168, 60.759838>,  <69.693565, 59.295353, 60.559799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.790115, 58.562168, 60.759838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.897415, 58.245453, 60.540344>,  <69.961792, 58.055424, 60.408646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.897415, 58.245453, 60.540344>,  <69.790115, 58.562168, 60.759838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.897415, 58.245453, 60.540344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950146, 0.123463, 0.286322,
		-0.158959, -0.598184, 0.785435,
		0.268245, -0.791791, -0.548737,
		69.977890, 58.007915, 60.375725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.214462, 58.191502, 61.180172>,  <69.790115, 58.562168, 60.759838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.214462, 58.191502, 61.180172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.297630, 58.146301, 60.791534>,  <70.347534, 58.119183, 60.558353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.297630, 58.146301, 60.791534>,  <70.214462, 58.191502, 61.180172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.297630, 58.146301, 60.791534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969871, 0.152734, 0.189795,
		0.126949, -0.981785, 0.141355,
		0.207928, -0.113002, -0.971595,
		70.360008, 58.112400, 60.500057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.903778, 57.772530, 61.018013>,  <70.214462, 58.191502, 61.180172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.903778, 57.772530, 61.018013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.840675, 58.002327, 60.696747>,  <70.802818, 58.140205, 60.503986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.840675, 58.002327, 60.696747>,  <70.903778, 57.772530, 61.018013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.840675, 58.002327, 60.696747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975107, 0.218975, -0.034888,
		0.155829, -0.788673, -0.594737,
		-0.157748, 0.574495, -0.803163,
		70.793350, 58.174675, 60.455799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.208420, 57.519913, 60.318787>,  <70.903778, 57.772530, 61.018013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.208420, 57.519913, 60.318787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.201973, 57.914421, 60.384514>,  <71.198105, 58.151127, 60.423950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.201973, 57.914421, 60.384514>,  <71.208420, 57.519913, 60.318787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.201973, 57.914421, 60.384514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977909, 0.049810, -0.203009,
		-0.208407, 0.157415, -0.965291,
		-0.016124, 0.986276, 0.164318,
		71.197136, 58.210304, 60.433807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.476013, 57.946239, 59.773502>,  <71.208420, 57.519913, 60.318787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.476013, 57.946239, 59.773502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.532806, 58.130447, 60.123993>,  <71.566879, 58.240971, 60.334286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.532806, 58.130447, 60.123993>,  <71.476013, 57.946239, 59.773502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.532806, 58.130447, 60.123993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989868, -0.064519, -0.126484,
		-0.001715, 0.885302, -0.465013,
		0.141978, 0.460519, 0.876222,
		71.575401, 58.268604, 60.386860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.876335, 58.537048, 59.584217>,  <71.476013, 57.946239, 59.773502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.876335, 58.537048, 59.584217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.927605, 58.371399, 59.944679>,  <71.958366, 58.272011, 60.160957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.927605, 58.371399, 59.944679>,  <71.876335, 58.537048, 59.584217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.927605, 58.371399, 59.944679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919190, -0.291563, -0.264728,
		0.372372, 0.862261, 0.343285,
		0.128175, -0.414121, 0.901152,
		71.966057, 58.247162, 60.215023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.498817, 58.865063, 59.841137>,  <71.876335, 58.537048, 59.584217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.498817, 58.865063, 59.841137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.428986, 58.498638, 59.985558>,  <72.387085, 58.278782, 60.072208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.428986, 58.498638, 59.985558>,  <72.498817, 58.865063, 59.841137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.428986, 58.498638, 59.985558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956238, -0.245169, -0.159690,
		0.234805, 0.317374, 0.918771,
		-0.174573, -0.916060, 0.361052,
		72.376617, 58.223820, 60.093872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.057304, 58.580902, 60.297890>,  <72.498817, 58.865063, 59.841137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.057304, 58.580902, 60.297890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.922272, 58.218491, 60.195793>,  <72.841255, 58.001045, 60.134533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.922272, 58.218491, 60.195793>,  <73.057304, 58.580902, 60.297890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.922272, 58.218491, 60.195793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940329, -0.312306, -0.135077,
		0.042670, -0.285613, 0.957395,
		-0.337580, -0.906030, -0.255244,
		72.820999, 57.946682, 60.119221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.170883, 58.063381, 60.817806>,  <73.057304, 58.580902, 60.297890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.170883, 58.063381, 60.817806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.171303, 57.941360, 60.436874>,  <73.171555, 57.868149, 60.208313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.171303, 57.941360, 60.436874>,  <73.170883, 58.063381, 60.817806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.171303, 57.941360, 60.436874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998640, -0.049333, 0.016893,
		-0.052135, -0.951056, 0.304590,
		0.001040, -0.305057, -0.952334,
		73.171616, 57.849842, 60.151173>
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
