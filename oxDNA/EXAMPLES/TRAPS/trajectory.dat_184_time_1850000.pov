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
	<36.341820, 53.546680, 49.527790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589546, 53.372375, 49.789036>,  <36.738182, 53.267792, 49.945782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589546, 53.372375, 49.789036>,  <36.341820, 53.546680, 49.527790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589546, 53.372375, 49.789036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767850, 0.509772, -0.387994,
		-0.163868, 0.741786, 0.650309,
		0.619318, -0.435759, 0.653115,
		36.775341, 53.241646, 49.984970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584141, 53.983616, 50.129063>,  <36.341820, 53.546680, 49.527790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584141, 53.983616, 50.129063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843250, 53.698898, 50.020443>,  <36.998714, 53.528069, 49.955273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843250, 53.698898, 50.020443>,  <36.584141, 53.983616, 50.129063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843250, 53.698898, 50.020443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664603, 0.702224, -0.255312,
		0.372416, -0.015086, 0.927943,
		0.647772, -0.711796, -0.271546,
		37.037582, 53.485359, 49.938980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236374, 54.072884, 50.436958>,  <36.584141, 53.983616, 50.129063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236374, 54.072884, 50.436958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319603, 53.862076, 50.107361>,  <37.369541, 53.735592, 49.909603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319603, 53.862076, 50.107361>,  <37.236374, 54.072884, 50.436958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319603, 53.862076, 50.107361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856114, 0.505554, -0.107167,
		0.473050, -0.683131, 0.556377,
		0.208069, -0.527017, -0.823991,
		37.382023, 53.703972, 49.860165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957146, 53.950359, 50.532116>,  <37.236374, 54.072884, 50.436958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957146, 53.950359, 50.532116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859444, 53.879864, 50.150692>,  <37.800823, 53.837566, 49.921837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859444, 53.879864, 50.150692>,  <37.957146, 53.950359, 50.532116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859444, 53.879864, 50.150692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828677, 0.472765, -0.299645,
		0.503620, -0.863384, 0.030571,
		-0.244256, -0.176240, -0.953561,
		37.786167, 53.826992, 49.864624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218407, 53.418144, 51.158718>,  <37.957146, 53.950359, 50.532116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218407, 53.418144, 51.158718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134964, 53.102688, 51.390068>,  <38.084900, 52.913414, 51.528877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134964, 53.102688, 51.390068>,  <38.218407, 53.418144, 51.158718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134964, 53.102688, 51.390068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703845, 0.289543, 0.648665,
		-0.679032, 0.542405, 0.494683,
		-0.208607, -0.788645, 0.578379,
		38.072380, 52.866093, 51.563583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324306, 53.695091, 51.757175>,  <38.218407, 53.418144, 51.158718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324306, 53.695091, 51.757175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317406, 53.308464, 51.859512>,  <38.313263, 53.076488, 51.920914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317406, 53.308464, 51.859512>,  <38.324306, 53.695091, 51.757175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317406, 53.308464, 51.859512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529252, 0.208265, 0.822507,
		-0.848290, 0.149598, 0.507962,
		-0.017255, -0.966564, 0.255844,
		38.312229, 53.018494, 51.936264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038414, 53.559875, 52.480045>,  <38.324306, 53.695091, 51.757175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038414, 53.559875, 52.480045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270241, 53.251637, 52.374004>,  <38.409336, 53.066692, 52.310379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270241, 53.251637, 52.374004>,  <38.038414, 53.559875, 52.480045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270241, 53.251637, 52.374004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510311, 0.089553, 0.855315,
		-0.635364, -0.630997, 0.445147,
		0.579565, -0.770599, -0.265106,
		38.444111, 53.020458, 52.294472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791573, 53.482510, 52.437424>,  <38.038414, 53.559875, 52.480045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791573, 53.482510, 52.437424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992466, 53.828350, 52.431473>,  <39.113003, 54.035854, 52.427902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992466, 53.828350, 52.431473>,  <38.791573, 53.482510, 52.437424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992466, 53.828350, 52.431473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616901, -0.346184, 0.706816,
		0.605966, -0.364164, -0.707241,
		0.502233, 0.864604, -0.014877,
		39.143135, 54.087730, 52.427010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089851, 53.413361, 53.175205>,  <38.791573, 53.482510, 52.437424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089851, 53.413361, 53.175205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473499, 53.439976, 53.285229>,  <39.703690, 53.455944, 53.351242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473499, 53.439976, 53.285229>,  <39.089851, 53.413361, 53.175205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473499, 53.439976, 53.285229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021068, 0.952483, -0.303861,
		-0.282207, 0.297235, 0.912146,
		0.959122, 0.066534, 0.275060,
		39.761234, 53.459934, 53.367748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309902, 54.068031, 53.574249>,  <39.089851, 53.413361, 53.175205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309902, 54.068031, 53.574249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602417, 53.909107, 53.352486>,  <39.777924, 53.813751, 53.219429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602417, 53.909107, 53.352486>,  <39.309902, 54.068031, 53.574249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602417, 53.909107, 53.352486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224621, 0.907770, -0.354258,
		0.644025, 0.134532, 0.753083,
		0.731285, -0.397309, -0.554408,
		39.821804, 53.789913, 53.186165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152599, 54.250820, 54.332592>,  <39.309902, 54.068031, 53.574249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152599, 54.250820, 54.332592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388321, 54.231575, 54.655182>,  <39.529755, 54.220028, 54.848736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388321, 54.231575, 54.655182>,  <39.152599, 54.250820, 54.332592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388321, 54.231575, 54.655182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594633, -0.649938, -0.473279,
		0.546928, 0.758463, -0.354406,
		0.589306, -0.048108, 0.806476,
		39.565113, 54.217144, 54.897125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948555, 54.360493, 54.325218>,  <39.152599, 54.250820, 54.332592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948555, 54.360493, 54.325218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842205, 54.121284, 54.627655>,  <39.778397, 53.977760, 54.809116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842205, 54.121284, 54.627655>,  <39.948555, 54.360493, 54.325218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842205, 54.121284, 54.627655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408597, -0.780295, -0.473485,
		0.873132, 0.183051, 0.451810,
		-0.265873, -0.598024, 0.756095,
		39.762444, 53.941875, 54.854485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162865, 54.647194, 53.657177>,  <39.948555, 54.360493, 54.325218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162865, 54.647194, 53.657177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382168, 54.937569, 53.491081>,  <40.513748, 55.111794, 53.391422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382168, 54.937569, 53.491081>,  <40.162865, 54.647194, 53.657177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382168, 54.937569, 53.491081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715408, -0.664255, -0.216694,
		-0.433134, -0.178264, -0.883525,
		0.548257, 0.725938, -0.415243,
		40.546646, 55.155350, 53.366508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397675, 54.549095, 52.980995>,  <40.162865, 54.647194, 53.657177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397675, 54.549095, 52.980995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665466, 54.769577, 53.180183>,  <40.826141, 54.901867, 53.299698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665466, 54.769577, 53.180183>,  <40.397675, 54.549095, 52.980995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665466, 54.769577, 53.180183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710522, -0.670721, -0.212818,
		0.216695, 0.496297, -0.840674,
		0.669479, 0.551201, 0.497971,
		40.866310, 54.934937, 53.329575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928364, 54.975037, 52.581463>,  <40.397675, 54.549095, 52.980995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928364, 54.975037, 52.581463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061169, 54.840248, 52.933876>,  <41.140850, 54.759373, 53.145325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061169, 54.840248, 52.933876>,  <40.928364, 54.975037, 52.581463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061169, 54.840248, 52.933876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712475, -0.522523, -0.468347,
		0.618180, 0.783209, 0.066603,
		0.332012, -0.336976, 0.881031,
		41.160770, 54.739155, 53.198185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656635, 55.224384, 52.616570>,  <40.928364, 54.975037, 52.581463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656635, 55.224384, 52.616570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577755, 54.906490, 52.846184>,  <41.530426, 54.715755, 52.983952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577755, 54.906490, 52.846184>,  <41.656635, 55.224384, 52.616570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577755, 54.906490, 52.846184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774157, -0.485482, -0.406189,
		0.601494, 0.364291, 0.710983,
		-0.197198, -0.794732, 0.574032,
		41.518597, 54.668072, 53.018394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262714, 55.022526, 53.092979>,  <41.656635, 55.224384, 52.616570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262714, 55.022526, 53.092979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012707, 54.731323, 52.980293>,  <41.862701, 54.556602, 52.912682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012707, 54.731323, 52.980293>,  <42.262714, 55.022526, 53.092979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012707, 54.731323, 52.980293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764289, -0.497293, -0.410564,
		0.158799, -0.471919, 0.867223,
		-0.625016, -0.728006, -0.281713,
		41.825203, 54.512920, 52.895779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032223, 55.137070, 53.450745>,  <42.262714, 55.022526, 53.092979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032223, 55.137070, 53.450745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061356, 55.161755, 53.052570>,  <43.078835, 55.176567, 52.813667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061356, 55.161755, 53.052570>,  <43.032223, 55.137070, 53.450745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061356, 55.161755, 53.052570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943867, -0.326702, 0.048801,
		-0.322198, -0.943111, -0.082039,
		0.072827, 0.061710, -0.995434,
		43.083202, 55.180267, 52.753941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107750, 54.498196, 53.003681>,  <43.032223, 55.137070, 53.450745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107750, 54.498196, 53.003681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306248, 54.814468, 52.860260>,  <43.425346, 55.004230, 52.774208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306248, 54.814468, 52.860260>,  <43.107750, 54.498196, 53.003681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306248, 54.814468, 52.860260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853542, -0.519849, 0.034962,
		-0.158752, -0.323393, -0.932853,
		0.496249, 0.790679, -0.358557,
		43.455124, 55.051674, 52.752693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545231, 54.451324, 52.310810>,  <43.107750, 54.498196, 53.003681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545231, 54.451324, 52.310810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692818, 54.705666, 52.581974>,  <43.781368, 54.858269, 52.744671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692818, 54.705666, 52.581974>,  <43.545231, 54.451324, 52.310810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692818, 54.705666, 52.581974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843764, -0.535021, 0.042598,
		0.389780, 0.556276, -0.733913,
		0.368962, 0.635854, 0.677906,
		43.803505, 54.896423, 52.785347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.200878, 54.225666, 52.294136>,  <43.545231, 54.451324, 52.310810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.200878, 54.225666, 52.294136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.222916, 54.485844, 52.597157>,  <44.236137, 54.641949, 52.778969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.222916, 54.485844, 52.597157>,  <44.200878, 54.225666, 52.294136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.222916, 54.485844, 52.597157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787790, -0.494471, 0.367267,
		0.613475, 0.576561, -0.539654,
		0.055091, 0.650443, 0.757554,
		44.239445, 54.680977, 52.824425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.871464, 54.438564, 52.217590>,  <44.200878, 54.225666, 52.294136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.871464, 54.438564, 52.217590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.722504, 54.473259, 52.587196>,  <44.633129, 54.494076, 52.808960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.722504, 54.473259, 52.587196>,  <44.871464, 54.438564, 52.217590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.722504, 54.473259, 52.587196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682138, -0.649513, 0.335888,
		0.629293, 0.755387, 0.182707,
		-0.372396, 0.086741, 0.924012,
		44.610786, 54.499283, 52.864399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.419460, 54.596775, 52.657627>,  <44.871464, 54.438564, 52.217590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.419460, 54.596775, 52.657627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135715, 54.399887, 52.859428>,  <44.965469, 54.281754, 52.980511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135715, 54.399887, 52.859428>,  <45.419460, 54.596775, 52.657627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135715, 54.399887, 52.859428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665015, -0.704583, 0.247623,
		0.233580, 0.511157, 0.827139,
		-0.709363, -0.492221, 0.504503,
		44.922905, 54.252220, 53.010780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.773922, 54.402424, 53.349789>,  <45.419460, 54.596775, 52.657627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.773922, 54.402424, 53.349789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.456844, 54.184437, 53.240501>,  <45.266598, 54.053646, 53.174931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.456844, 54.184437, 53.240501>,  <45.773922, 54.402424, 53.349789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.456844, 54.184437, 53.240501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541869, -0.835214, 0.093785,
		-0.279305, -0.073705, 0.957370,
		-0.792696, -0.544964, -0.273217,
		45.219036, 54.020947, 53.158535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.523273, 53.972179, 53.929325>,  <45.773922, 54.402424, 53.349789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.523273, 53.972179, 53.929325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489765, 53.829643, 53.557087>,  <45.469662, 53.744122, 53.333744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489765, 53.829643, 53.557087>,  <45.523273, 53.972179, 53.929325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.489765, 53.829643, 53.557087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554453, -0.792632, 0.253605,
		-0.827988, -0.494725, 0.263977,
		-0.083772, -0.356345, -0.930592,
		45.464634, 53.722740, 53.277908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.840431, 53.346714, 54.134663>,  <45.523273, 53.972179, 53.929325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.840431, 53.346714, 54.134663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.817421, 53.384003, 53.737068>,  <45.803616, 53.406376, 53.498512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.817421, 53.384003, 53.737068>,  <45.840431, 53.346714, 54.134663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.817421, 53.384003, 53.737068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632122, -0.767229, -0.108541,
		-0.772731, -0.634561, -0.014794,
		-0.057525, 0.093225, -0.993982,
		45.800163, 53.411968, 53.438873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.485409, 52.705074, 53.743271>,  <45.840431, 53.346714, 54.134663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.485409, 52.705074, 53.743271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.772583, 52.903587, 53.548019>,  <45.944889, 53.022694, 53.430866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.772583, 52.903587, 53.548019>,  <45.485409, 52.705074, 53.743271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.772583, 52.903587, 53.548019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576013, -0.817279, 0.016261,
		-0.390870, -0.292845, -0.872619,
		0.717935, 0.496284, -0.488132,
		45.987965, 53.052471, 53.401581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856499, 52.195847, 53.279133>,  <45.485409, 52.705074, 53.743271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856499, 52.195847, 53.279133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107410, 52.495789, 53.363255>,  <46.257957, 52.675755, 53.413727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107410, 52.495789, 53.363255>,  <45.856499, 52.195847, 53.279133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107410, 52.495789, 53.363255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775865, -0.625099, -0.085350,
		0.067461, 0.216707, -0.973903,
		0.627282, 0.749860, 0.210305,
		46.295593, 52.720745, 53.426346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.294979, 52.441917, 52.625805>,  <45.856499, 52.195847, 53.279133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.294979, 52.441917, 52.625805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458992, 52.506420, 52.984886>,  <46.557400, 52.545124, 53.200336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458992, 52.506420, 52.984886>,  <46.294979, 52.441917, 52.625805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.458992, 52.506420, 52.984886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777510, -0.576348, -0.251599,
		0.476817, 0.801136, -0.361700,
		0.410030, 0.161259, 0.897703,
		46.582001, 52.554798, 53.254196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.060989, 52.681477, 52.628994>,  <46.294979, 52.441917, 52.625805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.060989, 52.681477, 52.628994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.018188, 52.513424, 52.989449>,  <46.992508, 52.412590, 53.205719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.018188, 52.513424, 52.989449>,  <47.060989, 52.681477, 52.628994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.018188, 52.513424, 52.989449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827173, -0.540496, -0.153780,
		0.551666, 0.728938, 0.405356,
		-0.106998, -0.420135, 0.901132,
		46.986088, 52.387383, 53.259789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.704926, 52.567711, 52.962387>,  <47.060989, 52.681477, 52.628994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.704926, 52.567711, 52.962387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.475853, 52.330093, 53.188358>,  <47.338409, 52.187523, 53.323940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.475853, 52.330093, 53.188358>,  <47.704926, 52.567711, 52.962387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.475853, 52.330093, 53.188358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783537, -0.599277, 0.164125,
		0.241053, 0.536636, 0.808650,
		-0.572681, -0.594044, 0.564931,
		47.304050, 52.151878, 53.357838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.469315, 53.302498, 53.204708>,  <47.704926, 52.567711, 52.962387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.469315, 53.302498, 53.204708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.437199, 53.618721, 52.961868>,  <47.417927, 53.808456, 52.816166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.437199, 53.618721, 52.961868>,  <47.469315, 53.302498, 53.204708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.437199, 53.618721, 52.961868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274633, 0.567943, 0.775898,
		0.958191, 0.229029, 0.171511,
		-0.080294, 0.790561, -0.607097,
		47.413109, 53.855888, 52.779739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.744259, 53.910477, 53.397865>,  <47.469315, 53.302498, 53.204708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.744259, 53.910477, 53.397865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.458797, 54.027668, 53.143349>,  <47.287521, 54.097984, 52.990639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.458797, 54.027668, 53.143349>,  <47.744259, 53.910477, 53.397865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.458797, 54.027668, 53.143349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454983, 0.496786, 0.739049,
		0.532626, 0.816925, -0.221231,
		-0.713652, 0.292981, -0.636288,
		47.244701, 54.115562, 52.952461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.408302, 54.214703, 53.490875>,  <47.744259, 53.910477, 53.397865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.408302, 54.214703, 53.490875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.542179, 54.075245, 53.841057>,  <48.622505, 53.991570, 54.051167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.542179, 54.075245, 53.841057>,  <48.408302, 54.214703, 53.490875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.542179, 54.075245, 53.841057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838528, -0.313691, -0.445498,
		0.429944, 0.883202, 0.187359,
		0.334692, -0.348645, 0.875459,
		48.642586, 53.970650, 54.103695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.125820, 54.540638, 53.629143>,  <48.408302, 54.214703, 53.490875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.125820, 54.540638, 53.629143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.039623, 54.181915, 53.783699>,  <48.987907, 53.966682, 53.876434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.039623, 54.181915, 53.783699>,  <49.125820, 54.540638, 53.629143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.039623, 54.181915, 53.783699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869355, -0.356396, -0.342352,
		0.444733, 0.262137, 0.856445,
		-0.215490, -0.896809, 0.386390,
		48.974976, 53.912872, 53.899616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.667709, 54.253979, 54.047245>,  <49.125820, 54.540638, 53.629143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.667709, 54.253979, 54.047245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.479366, 53.924873, 53.919907>,  <49.366360, 53.727409, 53.843502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.479366, 53.924873, 53.919907>,  <49.667709, 54.253979, 54.047245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.479366, 53.924873, 53.919907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878684, -0.469599, -0.085968,
		-0.078763, -0.320203, 0.944069,
		-0.470861, -0.822767, -0.318345,
		49.338108, 53.678043, 53.824402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.739315, 53.676441, 54.514210>,  <49.667709, 54.253979, 54.047245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.739315, 53.676441, 54.514210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.698471, 53.540936, 54.140083>,  <49.673965, 53.459633, 53.915607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.698471, 53.540936, 54.140083>,  <49.739315, 53.676441, 54.514210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.698471, 53.540936, 54.140083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891055, -0.449159, 0.065400,
		-0.442260, -0.826738, 0.347723,
		-0.102114, -0.338764, -0.935314,
		49.667835, 53.439308, 53.859489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.682766, 53.039902, 54.455975>,  <49.739315, 53.676441, 54.514210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.682766, 53.039902, 54.455975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.882069, 53.159203, 54.130325>,  <50.001648, 53.230782, 53.934937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.882069, 53.159203, 54.130325>,  <49.682766, 53.039902, 54.455975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.882069, 53.159203, 54.130325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715075, -0.672356, 0.191323,
		-0.490317, -0.677485, -0.548274,
		0.498254, 0.298248, -0.814120,
		50.031544, 53.248676, 53.886089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.918488, 52.497887, 54.167370>,  <49.682766, 53.039902, 54.455975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.918488, 52.497887, 54.167370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.173332, 52.790466, 54.070145>,  <50.326237, 52.966015, 54.011810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.173332, 52.790466, 54.070145>,  <49.918488, 52.497887, 54.167370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.173332, 52.790466, 54.070145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769940, -0.618610, 0.156568,
		-0.035837, -0.286892, -0.957292,
		0.637109, 0.731447, -0.243059,
		50.364464, 53.009899, 53.997227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.373543, 52.435711, 53.455475>,  <49.918488, 52.497887, 54.167370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.373543, 52.435711, 53.455475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.537712, 52.627487, 53.765747>,  <50.636215, 52.742554, 53.951912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.537712, 52.627487, 53.765747>,  <50.373543, 52.435711, 53.455475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.537712, 52.627487, 53.765747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815222, -0.574072, -0.076514,
		0.408614, 0.663758, -0.626466,
		0.410423, 0.479444, 0.775684,
		50.660839, 52.771320, 53.998451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.919174, 52.835102, 53.322193>,  <50.373543, 52.435711, 53.455475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.919174, 52.835102, 53.322193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.927849, 52.682621, 53.691887>,  <50.933056, 52.591133, 53.913704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.927849, 52.682621, 53.691887>,  <50.919174, 52.835102, 53.322193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.927849, 52.682621, 53.691887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697230, -0.656778, -0.287251,
		0.716519, 0.650636, 0.251540,
		0.021690, -0.381202, 0.924237,
		50.934357, 52.568260, 53.969158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.597088, 52.994778, 53.589809>,  <50.919174, 52.835102, 53.322193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.597088, 52.994778, 53.589809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.472538, 52.642456, 53.732483>,  <51.397808, 52.431061, 53.818089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.472538, 52.642456, 53.732483>,  <51.597088, 52.994778, 53.589809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.472538, 52.642456, 53.732483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833099, -0.433582, -0.343441,
		0.457158, 0.190217, 0.868806,
		-0.311370, -0.880809, 0.356686,
		51.379128, 52.378212, 53.839489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.090775, 52.611057, 54.042133>,  <51.597088, 52.994778, 53.589809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.090775, 52.611057, 54.042133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.858265, 52.343689, 53.856518>,  <51.718758, 52.183266, 53.745148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.858265, 52.343689, 53.856518>,  <52.090775, 52.611057, 54.042133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.858265, 52.343689, 53.856518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813651, -0.470736, -0.341144,
		0.009592, -0.575861, 0.817491,
		-0.581274, -0.668425, -0.464035,
		51.683884, 52.143162, 53.717308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.138454, 51.820164, 54.238621>,  <52.090775, 52.611057, 54.042133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.138454, 51.820164, 54.238621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.025837, 51.857811, 53.856651>,  <51.958267, 51.880398, 53.627472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.025837, 51.857811, 53.856651>,  <52.138454, 51.820164, 54.238621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.025837, 51.857811, 53.856651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736059, -0.617265, -0.277851,
		-0.615588, -0.781107, 0.104518,
		-0.281547, 0.094110, -0.954921,
		51.941376, 51.886047, 53.570175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.952679, 51.941486, 54.067635>,  <52.138454, 51.820164, 54.238621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.952679, 51.941486, 54.067635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.203045, 52.169762, 53.855011>,  <53.353264, 52.306725, 53.727436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.203045, 52.169762, 53.855011>,  <52.952679, 51.941486, 54.067635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.203045, 52.169762, 53.855011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772813, -0.545479, 0.324364,
		-0.104842, -0.613816, -0.782456,
		0.625914, 0.570686, -0.531554,
		53.390820, 52.340969, 53.695545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.474392, 51.540546, 53.732708>,  <52.952679, 51.941486, 54.067635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.474392, 51.540546, 53.732708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.640930, 51.901608, 53.776283>,  <53.740852, 52.118244, 53.802429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.640930, 51.901608, 53.776283>,  <53.474392, 51.540546, 53.732708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.640930, 51.901608, 53.776283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865511, -0.430181, 0.256581,
		0.278469, -0.012536, -0.960363,
		0.416347, 0.902655, 0.108942,
		53.765835, 52.172405, 53.808968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.261600, 51.674496, 53.473637>,  <53.474392, 51.540546, 53.732708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.261600, 51.674496, 53.473637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.660538, 51.684856, 53.446419>,  <54.899902, 51.691071, 53.430088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.660538, 51.684856, 53.446419>,  <54.261600, 51.674496, 53.473637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.660538, 51.684856, 53.446419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051364, 0.412117, 0.909682,
		0.051600, -0.910763, 0.409693,
		0.997346, 0.025896, -0.068045,
		54.959740, 51.692627, 53.426006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.451000, 51.447144, 54.128681>,  <54.261600, 51.674496, 53.473637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.451000, 51.447144, 54.128681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.752632, 51.660339, 53.975174>,  <54.933613, 51.788258, 53.883068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.752632, 51.660339, 53.975174>,  <54.451000, 51.447144, 54.128681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.752632, 51.660339, 53.975174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129669, 0.452001, 0.882542,
		0.643854, -0.715271, 0.271733,
		0.754081, 0.532993, -0.383771,
		54.978855, 51.820236, 53.860043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.099438, 51.370399, 54.393021>,  <54.451000, 51.447144, 54.128681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.099438, 51.370399, 54.393021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.128067, 51.744183, 54.253494>,  <55.145245, 51.968452, 54.169781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.128067, 51.744183, 54.253494>,  <55.099438, 51.370399, 54.393021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.128067, 51.744183, 54.253494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226613, 0.325329, 0.918045,
		0.971352, -0.144752, -0.188476,
		0.071572, 0.934456, -0.348812,
		55.149540, 52.024521, 54.148849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.770416, 51.513233, 54.168755>,  <55.099438, 51.370399, 54.393021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.770416, 51.513233, 54.168755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.570000, 51.825451, 54.318264>,  <55.449749, 52.012783, 54.407970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.570000, 51.825451, 54.318264>,  <55.770416, 51.513233, 54.168755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.570000, 51.825451, 54.318264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562707, -0.034309, 0.825944,
		0.657509, 0.624159, -0.422027,
		-0.501041, 0.780543, 0.373777,
		55.419685, 52.059612, 54.430397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.244419, 52.125969, 54.340992>,  <55.770416, 51.513233, 54.168755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.244419, 52.125969, 54.340992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.914680, 52.146122, 54.566528>,  <55.716839, 52.158215, 54.701851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.914680, 52.146122, 54.566528>,  <56.244419, 52.125969, 54.340992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.914680, 52.146122, 54.566528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564637, 0.001930, 0.825337,
		0.040494, 0.998728, -0.030038,
		-0.824345, 0.050382, 0.563841,
		55.667377, 52.161236, 54.735680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.331913, 52.695038, 54.775982>,  <56.244419, 52.125969, 54.340992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.331913, 52.695038, 54.775982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.099693, 52.412495, 54.937981>,  <55.960361, 52.242970, 55.035179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.099693, 52.412495, 54.937981>,  <56.331913, 52.695038, 54.775982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.099693, 52.412495, 54.937981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622275, -0.064122, 0.780168,
		-0.525110, 0.704943, 0.476776,
		-0.580546, -0.706359, 0.404998,
		55.925529, 52.200588, 55.059479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.860401, 52.823071, 55.468483>,  <56.331913, 52.695038, 54.775982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.860401, 52.823071, 55.468483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.025879, 52.463036, 55.413795>,  <56.125164, 52.247013, 55.380981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.025879, 52.463036, 55.413795>,  <55.860401, 52.823071, 55.468483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.025879, 52.463036, 55.413795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610126, 0.162638, 0.775432,
		-0.675725, -0.404207, 0.616452,
		0.413694, -0.900092, -0.136719,
		56.149986, 52.193008, 55.372780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.963882, 52.382416, 56.147778>,  <55.860401, 52.823071, 55.468483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.963882, 52.382416, 56.147778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.249077, 52.312130, 55.876259>,  <56.420193, 52.269958, 55.713348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.249077, 52.312130, 55.876259>,  <55.963882, 52.382416, 56.147778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.249077, 52.312130, 55.876259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701035, 0.159376, 0.695089,
		-0.013955, -0.971454, 0.236819,
		0.712990, -0.175718, -0.678799,
		56.462975, 52.259415, 55.672619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.479816, 51.820374, 56.446987>,  <55.963882, 52.382416, 56.147778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.479816, 51.820374, 56.446987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.649185, 52.069664, 56.183990>,  <56.750809, 52.219238, 56.026192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.649185, 52.069664, 56.183990>,  <56.479816, 51.820374, 56.446987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.649185, 52.069664, 56.183990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586740, 0.364322, 0.723192,
		0.690252, -0.691995, -0.211410,
		0.423424, 0.623227, -0.657495,
		56.776211, 52.256634, 55.986740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.158978, 51.669762, 56.353580>,  <56.479816, 51.820374, 56.446987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.158978, 51.669762, 56.353580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.127670, 52.061150, 56.277184>,  <57.108887, 52.295982, 56.231346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.127670, 52.061150, 56.277184>,  <57.158978, 51.669762, 56.353580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.127670, 52.061150, 56.277184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716379, 0.188434, 0.671784,
		0.693308, -0.084244, -0.715701,
		-0.078268, 0.978466, -0.190993,
		57.104191, 52.354691, 56.219887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.761486, 51.809547, 55.985847>,  <57.158978, 51.669762, 56.353580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.761486, 51.809547, 55.985847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.620346, 52.070908, 56.253746>,  <57.535664, 52.227726, 56.414486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.620346, 52.070908, 56.253746>,  <57.761486, 51.809547, 55.985847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.620346, 52.070908, 56.253746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840636, -0.092952, 0.533564,
		0.410887, 0.751282, -0.516477,
		-0.352849, 0.653403, 0.669747,
		57.514492, 52.266930, 56.454670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.153595, 52.096851, 55.400719>,  <57.761486, 51.809547, 55.985847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.153595, 52.096851, 55.400719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.150200, 52.487976, 55.316986>,  <58.148163, 52.722649, 55.266747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.150200, 52.487976, 55.316986>,  <58.153595, 52.096851, 55.400719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.150200, 52.487976, 55.316986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976956, 0.052758, 0.206817,
		0.213271, -0.202751, -0.955723,
		-0.008489, 0.977808, -0.209331,
		58.147652, 52.781319, 55.254189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.630871, 52.358715, 54.890781>,  <58.153595, 52.096851, 55.400719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.630871, 52.358715, 54.890781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.552650, 52.679394, 55.116714>,  <58.505718, 52.871803, 55.252274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.552650, 52.679394, 55.116714>,  <58.630871, 52.358715, 54.890781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.552650, 52.679394, 55.116714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968589, 0.067677, 0.239280,
		0.153605, 0.593882, -0.789753,
		-0.195552, 0.801701, 0.564832,
		58.493984, 52.919903, 55.286163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.340946, 52.452061, 54.840836>,  <58.630871, 52.358715, 54.890781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.340946, 52.452061, 54.840836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.197205, 52.762127, 55.048676>,  <59.110962, 52.948166, 55.173378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.197205, 52.762127, 55.048676>,  <59.340946, 52.452061, 54.840836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.197205, 52.762127, 55.048676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915022, 0.183309, 0.359350,
		0.183309, 0.604576, -0.775168,
		-0.359350, 0.775168, 0.519598,
		59.089401, 52.994678, 55.204556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.730267, 53.100456, 54.757572>,  <59.340946, 52.452061, 54.840836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.730267, 53.100456, 54.757572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.576195, 53.031620, 55.120232>,  <59.483749, 52.990318, 55.337830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.576195, 53.031620, 55.120232>,  <59.730267, 53.100456, 54.757572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.576195, 53.031620, 55.120232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893315, 0.176993, 0.413112,
		-0.231564, 0.969050, 0.085557,
		-0.385183, -0.172091, 0.906652,
		59.460640, 52.979992, 55.392227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.721287, 53.629486, 55.228386>,  <59.730267, 53.100456, 54.757572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.721287, 53.629486, 55.228386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.775375, 53.287991, 55.429520>,  <59.807831, 53.083092, 55.550201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.775375, 53.287991, 55.429520>,  <59.721287, 53.629486, 55.228386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.775375, 53.287991, 55.429520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784622, 0.402176, 0.471828,
		-0.605047, 0.330735, 0.724246,
		0.135225, -0.853738, 0.502838,
		59.815941, 53.031868, 55.580372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.634445, 53.676289, 55.984177>,  <59.721287, 53.629486, 55.228386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.634445, 53.676289, 55.984177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.891205, 53.422012, 55.812660>,  <60.045261, 53.269447, 55.709751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.891205, 53.422012, 55.812660>,  <59.634445, 53.676289, 55.984177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.891205, 53.422012, 55.812660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766372, 0.550354, 0.331337,
		0.025359, -0.541299, 0.840448,
		0.641896, -0.635693, -0.428793,
		60.083775, 53.231304, 55.684021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.174622, 53.401878, 56.401802>,  <59.634445, 53.676289, 55.984177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.174622, 53.401878, 56.401802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.301895, 53.388100, 56.022842>,  <60.378262, 53.379833, 55.795467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.301895, 53.388100, 56.022842>,  <60.174622, 53.401878, 56.401802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.301895, 53.388100, 56.022842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718000, 0.661321, 0.217097,
		0.619059, -0.749312, 0.235155,
		0.318186, -0.034445, -0.947402,
		60.397350, 53.377766, 55.738621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.937355, 53.056046, 56.254929>,  <60.174622, 53.401878, 56.401802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.937355, 53.056046, 56.254929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.789955, 53.363422, 56.045662>,  <60.701515, 53.547848, 55.920101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.789955, 53.363422, 56.045662>,  <60.937355, 53.056046, 56.254929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.789955, 53.363422, 56.045662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799854, 0.548883, 0.242820,
		0.473750, -0.328976, -0.816906,
		-0.368504, 0.768441, -0.523166,
		60.679405, 53.593956, 55.888714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.436184, 53.354053, 55.770336>,  <60.937355, 53.056046, 56.254929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.436184, 53.354053, 55.770336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.173203, 53.636406, 55.875778>,  <61.015411, 53.805817, 55.939041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.173203, 53.636406, 55.875778>,  <61.436184, 53.354053, 55.770336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.173203, 53.636406, 55.875778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748037, 0.569423, 0.340880,
		0.090519, 0.421298, -0.902394,
		-0.657456, 0.705879, 0.263603,
		60.975967, 53.848171, 55.954861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.715462, 53.965504, 55.515171>,  <61.436184, 53.354053, 55.770336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.715462, 53.965504, 55.515171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.466011, 54.031464, 55.820824>,  <61.316341, 54.071041, 56.004215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.466011, 54.031464, 55.820824>,  <61.715462, 53.965504, 55.515171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.466011, 54.031464, 55.820824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704288, 0.542686, 0.457679,
		-0.339209, 0.823589, -0.454574,
		-0.623631, 0.164903, 0.764128,
		61.278923, 54.080933, 56.050060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.420235, 54.670410, 55.610260>,  <61.715462, 53.965504, 55.515171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.420235, 54.670410, 55.610260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.487617, 54.450050, 55.937218>,  <61.528046, 54.317833, 56.133392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.487617, 54.450050, 55.937218>,  <61.420235, 54.670410, 55.610260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.487617, 54.450050, 55.937218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487064, 0.767458, 0.416866,
		-0.856966, 0.327898, 0.397609,
		0.168459, -0.550901, 0.817392,
		61.538155, 54.284779, 56.182434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.178322, 55.051960, 56.225292>,  <61.420235, 54.670410, 55.610260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.178322, 55.051960, 56.225292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.476089, 54.804680, 56.326233>,  <61.654751, 54.656311, 56.386795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.476089, 54.804680, 56.326233>,  <61.178322, 55.051960, 56.225292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.476089, 54.804680, 56.326233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388917, 0.708636, 0.588709,
		-0.542762, -0.340101, 0.767946,
		0.744415, -0.618196, 0.252350,
		61.699413, 54.619221, 56.401939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.255569, 55.177376, 56.957695>,  <61.178322, 55.051960, 56.225292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.255569, 55.177376, 56.957695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.578224, 54.980888, 56.826218>,  <61.771816, 54.862995, 56.747334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.578224, 54.980888, 56.826218>,  <61.255569, 55.177376, 56.957695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.578224, 54.980888, 56.826218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573378, 0.515411, 0.636859,
		-0.143427, -0.702178, 0.697405,
		0.806639, -0.491220, -0.328690,
		61.820217, 54.833523, 56.727612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.450005, 54.677849, 57.491798>,  <61.255569, 55.177376, 56.957695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.450005, 54.677849, 57.491798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.740204, 54.836578, 57.266876>,  <61.914322, 54.931816, 57.131924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.740204, 54.836578, 57.266876>,  <61.450005, 54.677849, 57.491798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.740204, 54.836578, 57.266876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418670, 0.394001, 0.818217,
		0.546236, -0.829033, 0.119709,
		0.725494, 0.396821, -0.562308,
		61.957851, 54.955624, 57.098183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.022373, 54.418503, 57.707981>,  <61.450005, 54.677849, 57.491798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.022373, 54.418503, 57.707981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.108551, 54.778889, 57.557335>,  <62.160259, 54.995121, 57.466946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.108551, 54.778889, 57.557335>,  <62.022373, 54.418503, 57.707981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.108551, 54.778889, 57.557335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477007, 0.239430, 0.845658,
		0.852084, -0.361842, -0.378184,
		0.215446, 0.900968, -0.376616,
		62.173183, 55.049179, 57.444351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.736778, 54.610928, 57.476700>,  <62.022373, 54.418503, 57.707981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.736778, 54.610928, 57.476700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.526337, 54.916229, 57.626717>,  <62.400070, 55.099411, 57.716728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.526337, 54.916229, 57.626717>,  <62.736778, 54.610928, 57.476700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.526337, 54.916229, 57.626717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561968, -0.018976, 0.826942,
		0.638281, 0.645824, -0.418939,
		-0.526109, 0.763251, 0.375044,
		62.368504, 55.145203, 57.739231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.175652, 55.221603, 57.587521>,  <62.736778, 54.610928, 57.476700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.175652, 55.221603, 57.587521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.865089, 55.233181, 57.839348>,  <62.678753, 55.240128, 57.990444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.865089, 55.233181, 57.839348>,  <63.175652, 55.221603, 57.587521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.865089, 55.233181, 57.839348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629291, 0.090083, 0.771932,
		-0.034373, 0.995514, -0.088153,
		-0.776410, 0.028940, 0.629564,
		62.632168, 55.241863, 58.028217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.420380, 55.672955, 58.104237>,  <63.175652, 55.221603, 57.587521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.420380, 55.672955, 58.104237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.108719, 55.461422, 58.238846>,  <62.921722, 55.334503, 58.319611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.108719, 55.461422, 58.238846>,  <63.420380, 55.672955, 58.104237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.108719, 55.461422, 58.238846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524236, -0.255431, 0.812362,
		-0.343646, 0.809376, 0.476255,
		-0.779156, -0.528835, 0.336526,
		62.874973, 55.302773, 58.339802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.828312, 55.799717, 58.740677>,  <63.420380, 55.672955, 58.104237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.828312, 55.799717, 58.740677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.012535, 55.465363, 58.860130>,  <64.123070, 55.264751, 58.931805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.012535, 55.465363, 58.860130>,  <63.828312, 55.799717, 58.740677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.012535, 55.465363, 58.860130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311137, -0.163070, -0.936270,
		0.831314, 0.524121, 0.184973,
		0.460555, -0.835886, 0.298636,
		64.150703, 55.214596, 58.949722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.447632, 55.713718, 58.551792>,  <63.828312, 55.799717, 58.740677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.447632, 55.713718, 58.551792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.303734, 55.340523, 58.547607>,  <64.217392, 55.116604, 58.545097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.303734, 55.340523, 58.547607>,  <64.447632, 55.713718, 58.551792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.303734, 55.340523, 58.547607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029312, -0.000095, -0.999570,
		0.932590, -0.359897, 0.027382,
		-0.359745, -0.932992, -0.010461,
		64.195808, 55.060627, 58.544468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.888763, 55.239441, 58.069118>,  <64.447632, 55.713718, 58.551792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.888763, 55.239441, 58.069118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.516113, 55.095497, 58.048767>,  <64.292526, 55.009132, 58.036556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.516113, 55.095497, 58.048767>,  <64.888763, 55.239441, 58.069118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.516113, 55.095497, 58.048767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046073, 0.255804, -0.965630,
		0.360509, -0.897253, -0.254891,
		-0.931617, -0.359862, -0.050881,
		64.236626, 54.987537, 58.033504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.120674, 55.356998, 58.832233>,  <64.888763, 55.239441, 58.069118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.120674, 55.356998, 58.832233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.378510, 55.114811, 58.645508>,  <65.533211, 54.969498, 58.533470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.378510, 55.114811, 58.645508>,  <65.120674, 55.356998, 58.832233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.378510, 55.114811, 58.645508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230764, -0.428035, 0.873804,
		-0.728873, -0.670968, -0.136186,
		0.644587, -0.605466, -0.466818,
		65.571884, 54.933170, 58.505463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.068993, 54.699356, 59.291851>,  <65.120674, 55.356998, 58.832233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.068993, 54.699356, 59.291851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.382851, 54.715084, 59.044373>,  <65.571167, 54.724522, 58.895885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.382851, 54.715084, 59.044373>,  <65.068993, 54.699356, 59.291851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.382851, 54.715084, 59.044373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568510, -0.443644, 0.692804,
		-0.247238, -0.895340, -0.370458,
		0.784646, 0.039322, -0.618695,
		65.618248, 54.726879, 58.858765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.483620, 54.125580, 59.421860>,  <65.068993, 54.699356, 59.291851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.483620, 54.125580, 59.421860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.724884, 54.380669, 59.230232>,  <65.869644, 54.533722, 59.115257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.724884, 54.380669, 59.230232>,  <65.483620, 54.125580, 59.421860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.724884, 54.380669, 59.230232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791909, -0.407053, 0.455179,
		0.095275, -0.653922, -0.750539,
		0.603160, 0.637726, -0.479065,
		65.905830, 54.571987, 59.086514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.916023, 53.872513, 58.779243>,  <65.483620, 54.125580, 59.421860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.916023, 53.872513, 58.779243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.068970, 54.135700, 59.038742>,  <66.160736, 54.293613, 59.194443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.068970, 54.135700, 59.038742>,  <65.916023, 53.872513, 58.779243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.068970, 54.135700, 59.038742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633920, -0.697611, 0.333893,
		0.672266, 0.283587, -0.683840,
		0.382366, 0.657965, 0.648751,
		66.183678, 54.333088, 59.233368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.574387, 54.123531, 58.606174>,  <65.916023, 53.872513, 58.779243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.574387, 54.123531, 58.606174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.491188, 54.081936, 58.995209>,  <66.441269, 54.056980, 59.228630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.491188, 54.081936, 58.995209>,  <66.574387, 54.123531, 58.606174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.491188, 54.081936, 58.995209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593300, -0.803940, 0.040934,
		0.777643, 0.585549, 0.228918,
		-0.208005, -0.103985, 0.972585,
		66.428787, 54.050739, 59.286983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.185562, 54.279293, 59.123272>,  <66.574387, 54.123531, 58.606174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.185562, 54.279293, 59.123272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.952881, 53.985210, 59.262466>,  <66.813271, 53.808762, 59.345982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.952881, 53.985210, 59.262466>,  <67.185562, 54.279293, 59.123272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.952881, 53.985210, 59.262466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789841, -0.612774, 0.025668,
		0.194365, 0.289784, 0.937149,
		-0.581699, -0.735210, 0.347985,
		66.778374, 53.764648, 59.366863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.536041, 54.044018, 59.840588>,  <67.185562, 54.279293, 59.123272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.536041, 54.044018, 59.840588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.294922, 53.775761, 59.667679>,  <67.150246, 53.614807, 59.563934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.294922, 53.775761, 59.667679>,  <67.536041, 54.044018, 59.840588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.294922, 53.775761, 59.667679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718067, -0.692184, 0.072534,
		-0.347857, -0.266677, 0.898821,
		-0.602807, -0.670645, -0.432273,
		67.114082, 53.574566, 59.537998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.875992, 53.932175, 60.581360>,  <67.536041, 54.044018, 59.840588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.875992, 53.932175, 60.581360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.207169, 53.728249, 60.487892>,  <68.405876, 53.605892, 60.431812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.207169, 53.728249, 60.487892>,  <67.875992, 53.932175, 60.581360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.207169, 53.728249, 60.487892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511851, 0.857206, -0.056637,
		0.229174, -0.072709, 0.970666,
		0.827942, -0.509816, -0.233665,
		68.455551, 53.575302, 60.417793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.416649, 54.201050, 61.080364>,  <67.875992, 53.932175, 60.581360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.416649, 54.201050, 61.080364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.538177, 54.069344, 60.722755>,  <68.611092, 53.990318, 60.508190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.538177, 54.069344, 60.722755>,  <68.416649, 54.201050, 61.080364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.538177, 54.069344, 60.722755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464310, 0.870573, -0.162842,
		0.831933, -0.365632, 0.417374,
		0.303815, -0.329265, -0.894025,
		68.629318, 53.970566, 60.454548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.130432, 54.137150, 60.969738>,  <68.416649, 54.201050, 61.080364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.130432, 54.137150, 60.969738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.920784, 54.229782, 60.641914>,  <68.794998, 54.285362, 60.445221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.920784, 54.229782, 60.641914>,  <69.130432, 54.137150, 60.969738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.920784, 54.229782, 60.641914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479905, 0.875295, -0.059577,
		0.703560, -0.424536, -0.569888,
		-0.524113, 0.231576, -0.819560,
		68.763550, 54.299255, 60.396046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.857597, 54.218597, 61.102184>,  <69.130432, 54.137150, 60.969738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.857597, 54.218597, 61.102184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.036682, 54.493202, 60.873009>,  <70.144135, 54.657967, 60.735504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.036682, 54.493202, 60.873009>,  <69.857597, 54.218597, 61.102184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.036682, 54.493202, 60.873009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524519, 0.317292, 0.790067,
		0.724180, -0.654236, -0.218035,
		0.447710, 0.686514, -0.572936,
		70.170998, 54.699158, 60.701130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.542145, 54.145245, 61.201756>,  <69.857597, 54.218597, 61.102184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.542145, 54.145245, 61.201756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.408447, 54.513683, 61.121902>,  <70.328224, 54.734749, 61.073990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.408447, 54.513683, 61.121902>,  <70.542145, 54.145245, 61.201756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.408447, 54.513683, 61.121902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349737, 0.317909, 0.881259,
		0.875192, 0.224742, -0.428404,
		-0.334249, 0.921100, -0.199631,
		70.308174, 54.790012, 61.062012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.416862, 54.597820, 61.678391>,  <70.542145, 54.145245, 61.201756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.416862, 54.597820, 61.678391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.441811, 54.997005, 61.672920>,  <70.456779, 55.236515, 61.669640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.441811, 54.997005, 61.672920>,  <70.416862, 54.597820, 61.678391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.441811, 54.997005, 61.672920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624172, -0.049695, -0.779705,
		-0.778793, 0.040101, -0.625998,
		0.062375, 0.997959, -0.013672,
		70.460526, 55.296394, 61.668819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.176117, 54.169350, 61.574608>,  <70.416862, 54.597820, 61.678391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.176117, 54.169350, 61.574608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.127388, 54.293510, 61.197502>,  <71.098152, 54.368008, 60.971237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.127388, 54.293510, 61.197502>,  <71.176117, 54.169350, 61.574608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.127388, 54.293510, 61.197502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927288, 0.374334, 0.003420,
		0.353972, -0.873800, -0.333432,
		-0.121826, 0.310398, -0.942768,
		71.090843, 54.386631, 60.914673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.923653, 54.302593, 61.557316>,  <71.176117, 54.169350, 61.574608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.923653, 54.302593, 61.557316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.727287, 54.487442, 61.261902>,  <71.609467, 54.598351, 61.084652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.727287, 54.487442, 61.261902>,  <71.923653, 54.302593, 61.557316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.727287, 54.487442, 61.261902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783244, 0.605310, -0.141874,
		0.381482, -0.648105, -0.659115,
		-0.490918, 0.462125, -0.738539,
		71.580009, 54.626080, 61.040340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.384842, 54.265255, 61.090698>,  <71.923653, 54.302593, 61.557316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.384842, 54.265255, 61.090698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.162666, 54.584339, 60.996758>,  <72.029358, 54.775787, 60.940395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.162666, 54.584339, 60.996758>,  <72.384842, 54.265255, 61.090698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.162666, 54.584339, 60.996758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829839, 0.549877, -0.094886,
		0.053446, -0.247588, -0.967390,
		-0.555438, 0.797706, -0.234847,
		71.996033, 54.823650, 60.926304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.670547, 54.543125, 60.474312>,  <72.384842, 54.265255, 61.090698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.670547, 54.543125, 60.474312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.469093, 54.850197, 60.632812>,  <72.348221, 55.034439, 60.727913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.469093, 54.850197, 60.632812>,  <72.670547, 54.543125, 60.474312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.469093, 54.850197, 60.632812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758463, 0.612505, -0.222644,
		-0.413627, 0.188413, -0.890737,
		-0.503632, 0.767683, 0.396253,
		72.318001, 55.080502, 60.751690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.281883, 55.057209, 60.740425>,  <72.670547, 54.543125, 60.474312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.281883, 55.057209, 60.740425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.957916, 55.254837, 60.613983>,  <72.763535, 55.373413, 60.538120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.957916, 55.254837, 60.613983>,  <73.281883, 55.057209, 60.740425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.957916, 55.254837, 60.613983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560617, 0.810526, -0.169574,
		0.172427, -0.314554, -0.933448,
		-0.809924, 0.494067, -0.316101,
		72.714935, 55.403057, 60.519154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.510872, 55.422932, 60.008480>,  <73.281883, 55.057209, 60.740425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.510872, 55.422932, 60.008480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.239510, 55.597321, 60.245018>,  <73.076691, 55.701954, 60.386940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.239510, 55.597321, 60.245018>,  <73.510872, 55.422932, 60.008480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.239510, 55.597321, 60.245018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498957, 0.864206, -0.064727,
		-0.539265, 0.251146, -0.803815,
		-0.678406, 0.435974, 0.591348,
		73.035988, 55.728111, 60.422421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.235092, 56.067039, 59.614227>,  <73.510872, 55.422932, 60.008480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.235092, 56.067039, 59.614227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.180992, 56.094536, 60.009598>,  <73.148529, 56.111034, 60.246819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.180992, 56.094536, 60.009598>,  <73.235092, 56.067039, 59.614227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.180992, 56.094536, 60.009598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487691, 0.872995, 0.006023,
		-0.862476, 0.482861, -0.151596,
		-0.135251, 0.068737, 0.988424,
		73.140419, 56.115158, 60.306126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.884415, 56.710426, 59.851948>,  <73.235092, 56.067039, 59.614227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.884415, 56.710426, 59.851948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.146194, 56.568806, 60.119179>,  <73.303261, 56.483833, 60.279518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.146194, 56.568806, 60.119179>,  <72.884415, 56.710426, 59.851948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.146194, 56.568806, 60.119179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452982, 0.891065, 0.028475,
		-0.605385, 0.283993, 0.743543,
		0.654459, -0.354050, 0.668081,
		73.342529, 56.462589, 60.319603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.880585, 57.162350, 60.547821>,  <72.884415, 56.710426, 59.851948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.880585, 57.162350, 60.547821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.204300, 56.977612, 60.402634>,  <73.398529, 56.866768, 60.315521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.204300, 56.977612, 60.402634>,  <72.880585, 57.162350, 60.547821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.204300, 56.977612, 60.402634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478201, 0.876854, -0.049498,
		0.341130, -0.133514, 0.930486,
		0.809292, -0.461845, -0.362968,
		73.447090, 56.839058, 60.293743>
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
