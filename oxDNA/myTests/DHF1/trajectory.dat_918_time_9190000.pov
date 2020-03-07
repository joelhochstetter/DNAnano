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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<1.662527, 5.475977, 4.011501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.850060, 5.759426, 3.800579>,  <1.962579, 5.929496, 3.674026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.850060, 5.759426, 3.800579>,  <1.662527, 5.475977, 4.011501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.850060, 5.759426, 3.800579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096930, -0.634649, -0.766697,
		-0.877954, 0.308340, -0.366229,
		0.468830, 0.708623, -0.527305,
		1.990709, 5.972013, 3.642387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.284668, 5.568915, 3.481210>,  <1.662527, 5.475977, 4.011501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.284668, 5.568915, 3.481210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.675713, 5.607204, 3.406254>,  <1.910339, 5.630178, 3.361280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.675713, 5.607204, 3.406254>,  <1.284668, 5.568915, 3.481210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.675713, 5.607204, 3.406254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029774, -0.818650, -0.573520,
		-0.208306, 0.566259, -0.797471,
		0.977611, 0.095723, -0.187390,
		1.968996, 5.635921, 3.350037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.407424, 5.483310, 2.729080>,  <1.284668, 5.568915, 3.481210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.407424, 5.483310, 2.729080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.738541, 5.399139, 2.937111>,  <1.937211, 5.348637, 3.061929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.738541, 5.399139, 2.937111>,  <1.407424, 5.483310, 2.729080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.738541, 5.399139, 2.937111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077573, -0.875164, -0.477568,
		0.555646, 0.435671, -0.708131,
		0.827793, -0.210427, 0.520077,
		1.986878, 5.336011, 3.093134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.931637, 5.225492, 2.219599>,  <1.407424, 5.483310, 2.729080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.931637, 5.225492, 2.219599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.013260, 5.119175, 2.596474>,  <2.062234, 5.055384, 2.822598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.013260, 5.119175, 2.596474>,  <1.931637, 5.225492, 2.219599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.013260, 5.119175, 2.596474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389001, -0.861176, -0.327191,
		0.898353, 0.433277, -0.072335,
		0.204057, -0.265794, 0.942186,
		2.074477, 5.039437, 2.879129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.579422, 4.952479, 2.210364>,  <1.931637, 5.225492, 2.219599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.579422, 4.952479, 2.210364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.439903, 4.806526, 2.555664>,  <2.356192, 4.718955, 2.762844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.439903, 4.806526, 2.555664>,  <2.579422, 4.952479, 2.210364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.439903, 4.806526, 2.555664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435615, -0.878671, -0.195389,
		0.829807, 0.307894, 0.465426,
		-0.348797, -0.364882, 0.863251,
		2.335264, 4.697062, 2.814639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.233674, 4.844446, 2.601646>,  <2.579422, 4.952479, 2.210364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.233674, 4.844446, 2.601646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.944756, 4.612587, 2.752537>,  <2.771405, 4.473472, 2.843071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.944756, 4.612587, 2.752537>,  <3.233674, 4.844446, 2.601646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.944756, 4.612587, 2.752537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553182, -0.811595, -0.187891,
		0.415066, 0.072961, 0.906861,
		-0.722295, -0.579646, 0.377226,
		2.728067, 4.438693, 2.865705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.577080, 4.312232, 2.915511>,  <3.233674, 4.844446, 2.601646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.577080, 4.312232, 2.915511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.213242, 4.152340, 2.870163>,  <2.994939, 4.056405, 2.842954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.213242, 4.152340, 2.870163>,  <3.577080, 4.312232, 2.915511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.213242, 4.152340, 2.870163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414448, -0.892236, -0.179300,
		-0.029483, -0.210077, 0.977240,
		-0.909595, -0.399729, -0.113371,
		2.940363, 4.032421, 2.836152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.652605, 3.628089, 3.163839>,  <3.577080, 4.312232, 2.915511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.652605, 3.628089, 3.163839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.317451, 3.627781, 2.945499>,  <3.116359, 3.627596, 2.814496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.317451, 3.627781, 2.945499>,  <3.652605, 3.628089, 3.163839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.317451, 3.627781, 2.945499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230369, -0.907076, -0.352341,
		-0.494855, -0.420967, 0.760201,
		-0.837883, -0.000769, -0.545849,
		3.066087, 3.627550, 2.781745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.784451, 2.703799, 2.094942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.429428, 2.644119, 1.920593>,  <3.216415, 2.608311, 1.815984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.429428, 2.644119, 1.920593>,  <3.784451, 2.703799, 2.094942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.429428, 2.644119, 1.920593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418357, 0.657227, 0.626921,
		0.192930, 0.738777, -0.645744,
		-0.887556, -0.149200, -0.435872,
		3.163161, 2.599359, 1.789832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.443962, 3.315659, 1.701476>,  <3.784451, 2.703799, 2.094942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.443962, 3.315659, 1.701476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.142517, 3.105164, 1.859028>,  <2.961650, 2.978866, 1.953559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.142517, 3.105164, 1.859028>,  <3.443962, 3.315659, 1.701476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.142517, 3.105164, 1.859028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352125, 0.829191, 0.434108,
		-0.555047, 0.188454, -0.810190,
		-0.753612, -0.526239, 0.393881,
		2.916434, 2.947292, 1.977192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.793138, 3.673139, 1.562387>,  <3.443962, 3.315659, 1.701476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.793138, 3.673139, 1.562387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.771530, 3.491795, 1.918262>,  <2.758565, 3.382988, 2.131788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.771530, 3.491795, 1.918262>,  <2.793138, 3.673139, 1.562387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.771530, 3.491795, 1.918262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357236, 0.840793, 0.406755,
		-0.932451, -0.295856, -0.207376,
		-0.054019, -0.453362, 0.889688,
		2.755324, 3.355786, 2.185169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.098669, 3.697364, 1.932545>,  <2.793138, 3.673139, 1.562387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.098669, 3.697364, 1.932545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.370193, 3.641640, 2.220936>,  <2.533108, 3.608205, 2.393970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.370193, 3.641640, 2.220936>,  <2.098669, 3.697364, 1.932545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.370193, 3.641640, 2.220936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418664, 0.733201, 0.535851,
		-0.603272, -0.665589, 0.439380,
		0.678811, -0.139311, 0.720978,
		2.573837, 3.599846, 2.437229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.763132, 3.572819, 2.650004>,  <2.098669, 3.697364, 1.932545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.763132, 3.572819, 2.650004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.127640, 3.732677, 2.689747>,  <2.346344, 3.828593, 2.713593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.127640, 3.732677, 2.689747>,  <1.763132, 3.572819, 2.650004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.127640, 3.732677, 2.689747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379947, 0.722863, 0.577156,
		0.158837, -0.563695, 0.810567,
		0.911269, 0.399647, 0.099357,
		2.401021, 3.852571, 2.719554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.763680, 3.635055, 3.288964>,  <1.763132, 3.572819, 2.650004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.763680, 3.635055, 3.288964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.053391, 3.890720, 3.185509>,  <2.227217, 4.044120, 3.123436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.053391, 3.890720, 3.185509>,  <1.763680, 3.635055, 3.288964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.053391, 3.890720, 3.185509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456732, 0.725738, 0.514490,
		0.516547, -0.254505, 0.817562,
		0.724276, 0.639165, -0.258637,
		2.270673, 4.082470, 3.107918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.932985, 4.071143, 3.884111>,  <1.763680, 3.635055, 3.288964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.932985, 4.071143, 3.884111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.052383, 4.286625, 3.568974>,  <2.124022, 4.415914, 3.379891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.052383, 4.286625, 3.568974>,  <1.932985, 4.071143, 3.884111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.052383, 4.286625, 3.568974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282317, 0.838373, 0.466292,
		0.911701, 0.083236, 0.402335,
		0.298495, 0.538705, -0.787844,
		2.141932, 4.448236, 3.332620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.381824, 4.490162, 4.195927>,  <1.932985, 4.071143, 3.884111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.381824, 4.490162, 4.195927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.217270, 4.652786, 3.869621>,  <2.118537, 4.750361, 3.673838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.217270, 4.652786, 3.869621>,  <2.381824, 4.490162, 4.195927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.217270, 4.652786, 3.869621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211627, 0.827941, 0.519352,
		0.886552, 0.386292, -0.254565,
		-0.411387, 0.406560, -0.815763,
		2.093854, 4.774755, 3.624892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
