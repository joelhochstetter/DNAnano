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
	<4.799268, -0.137182, 0.307223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.646255, -0.055099, -0.053123>,  <4.554448, -0.005850, -0.269331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.646255, -0.055099, -0.053123>,  <4.799268, -0.137182, 0.307223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.646255, -0.055099, -0.053123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792278, 0.428786, 0.434094,
		0.475358, 0.879792, -0.001445,
		-0.382531, 0.205205, -0.900867,
		4.531496, 0.006462, -0.323383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.575347, 0.643282, 0.272591>,  <4.799268, -0.137182, 0.307223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.575347, 0.643282, 0.272591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.351135, 0.413345, 0.034142>,  <4.216608, 0.275383, -0.108928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.351135, 0.413345, 0.034142>,  <4.575347, 0.643282, 0.272591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.351135, 0.413345, 0.034142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828117, 0.384429, 0.407966,
		-0.005350, 0.722337, -0.691521,
		-0.560529, -0.574843, -0.596123,
		4.182976, 0.240893, -0.144695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.142497, 1.125604, -0.077885>,  <4.575347, 0.643282, 0.272591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.142497, 1.125604, -0.077885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.981983, 0.759239, -0.074402>,  <3.885675, 0.539420, -0.072312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.981983, 0.759239, -0.074402>,  <4.142497, 1.125604, -0.077885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.981983, 0.759239, -0.074402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787287, 0.349759, 0.507787,
		-0.468134, 0.196911, -0.861439,
		-0.401285, -0.915912, 0.008708,
		3.861598, 0.484466, -0.071789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.458383, 1.163369, -0.391080>,  <4.142497, 1.125604, -0.077885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.458383, 1.163369, -0.391080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.469660, 0.874435, -0.114693>,  <3.476426, 0.701075, 0.051140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.469660, 0.874435, -0.114693>,  <3.458383, 1.163369, -0.391080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.469660, 0.874435, -0.114693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900989, 0.281014, 0.330531,
		-0.432926, -0.631873, -0.642893,
		0.028192, -0.722335, 0.690969,
		3.478117, 0.657735, 0.092598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.702486, 1.068454, -0.264545>,  <3.458383, 1.163369, -0.391080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.702486, 1.068454, -0.264545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.890083, 0.917053, 0.054649>,  <3.002641, 0.826213, 0.246166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.890083, 0.917053, 0.054649>,  <2.702486, 1.068454, -0.264545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.890083, 0.917053, 0.054649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797333, 0.207164, 0.566871,
		-0.379875, -0.902120, -0.204633,
		0.468993, -0.378501, 0.797987,
		3.030781, 0.803503, 0.294045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.277128, 0.561703, -0.076838>,  <2.702486, 1.068454, -0.264545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.277128, 0.561703, -0.076838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.502455, 0.626419, 0.247261>,  <2.637650, 0.665249, 0.441720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.502455, 0.626419, 0.247261>,  <2.277128, 0.561703, -0.076838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.502455, 0.626419, 0.247261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823943, 0.036902, 0.565470,
		0.061586, -0.986136, 0.154090,
		0.563316, 0.161787, 0.810247,
		2.671450, 0.674956, 0.490335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.113050, 0.043641, 0.424131>,  <2.277128, 0.561703, -0.076838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.113050, 0.043641, 0.424131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.257769, 0.372887, 0.599213>,  <2.344600, 0.570434, 0.704262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.257769, 0.372887, 0.599213>,  <2.113050, 0.043641, 0.424131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.257769, 0.372887, 0.599213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798859, 0.031712, 0.600682,
		0.480550, -0.566989, 0.669026,
		0.361796, 0.823115, 0.437705,
		2.366307, 0.619821, 0.730524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.059795, -0.103728, 1.138771>,  <2.113050, 0.043641, 0.424131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.059795, -0.103728, 1.138771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.087378, 0.293808, 1.104065>,  <2.103927, 0.532329, 1.083241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.087378, 0.293808, 1.104065>,  <2.059795, -0.103728, 1.138771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.087378, 0.293808, 1.104065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787573, 0.107617, 0.606752,
		0.612351, 0.026494, 0.790142,
		0.068957, 0.993839, -0.086766,
		2.108065, 0.591960, 1.078035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.240952, 0.399130, 1.124497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.217012, 0.762566, 1.289848>,  <1.202648, 0.980627, 1.389059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.217012, 0.762566, 1.289848>,  <1.240952, 0.399130, 1.124497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.217012, 0.762566, 1.289848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952902, 0.175350, -0.247446,
		-0.297313, 0.379100, -0.876292,
		-0.059851, 0.908590, 0.413379,
		1.199057, 1.035143, 1.413862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.330576, 0.982991, 0.732748>,  <1.240952, 0.399130, 1.124497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.330576, 0.982991, 0.732748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.453664, 1.068901, 1.103516>,  <1.527517, 1.120447, 1.325976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.453664, 1.068901, 1.103516>,  <1.330576, 0.982991, 0.732748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.453664, 1.068901, 1.103516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949946, -0.014109, -0.312096,
		-0.053953, 0.976562, -0.208365,
		0.307721, 0.214774, 0.926920,
		1.545981, 1.133333, 1.381591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.713181, 1.684823, 0.777420>,  <1.330576, 0.982991, 0.732748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.713181, 1.684823, 0.777420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.824610, 1.402679, 1.038147>,  <1.891468, 1.233393, 1.194583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.824610, 1.402679, 1.038147>,  <1.713181, 1.684823, 0.777420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.824610, 1.402679, 1.038147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886518, -0.072213, -0.457024,
		0.369435, 0.705162, 0.605198,
		0.278573, -0.705359, 0.651817,
		1.908182, 1.191072, 1.233692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.409617, 1.879305, 0.970701>,  <1.713181, 1.684823, 0.777420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.409617, 1.879305, 0.970701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.335875, 1.492241, 1.039574>,  <2.291630, 1.260002, 1.080897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.335875, 1.492241, 1.039574>,  <2.409617, 1.879305, 0.970701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.335875, 1.492241, 1.039574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867789, -0.242507, -0.433743,
		0.461471, 0.069454, 0.884432,
		-0.184356, -0.967660, 0.172181,
		2.280568, 1.201943, 1.091228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.970495, 1.510499, 1.462040>,  <2.409617, 1.879305, 0.970701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.970495, 1.510499, 1.462040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.788843, 1.234703, 1.236343>,  <2.679852, 1.069225, 1.100925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.788843, 1.234703, 1.236343>,  <2.970495, 1.510499, 1.462040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.788843, 1.234703, 1.236343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890371, -0.328673, -0.314983,
		0.031727, -0.645427, 0.763162,
		-0.454130, -0.689491, -0.564242,
		2.652604, 1.027856, 1.067071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.464883, 1.054010, 1.406234>,  <2.970495, 1.510499, 1.462040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.464883, 1.054010, 1.406234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.202747, 0.895988, 1.148720>,  <3.045465, 0.801176, 0.994211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.202747, 0.895988, 1.148720>,  <3.464883, 1.054010, 1.406234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.202747, 0.895988, 1.148720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754574, -0.380585, -0.534577,
		-0.033829, -0.836115, 0.547510,
		-0.655342, -0.395053, -0.643786,
		3.006144, 0.777473, 0.955584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.612857, 0.380046, 1.367371>,  <3.464883, 1.054010, 1.406234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.612857, 0.380046, 1.367371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.452154, 0.525322, 1.031113>,  <3.355732, 0.612487, 0.829358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.452154, 0.525322, 1.031113>,  <3.612857, 0.380046, 1.367371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.452154, 0.525322, 1.031113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796277, -0.314809, -0.516563,
		-0.452254, -0.876920, -0.162723,
		-0.401758, 0.363190, -0.840645,
		3.331626, 0.634279, 0.778919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.562758, -0.235427, 1.044682>,  <3.612857, 0.380046, 1.367371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.562758, -0.235427, 1.044682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.533652, 0.040291, 0.756355>,  <3.516187, 0.205722, 0.583359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.533652, 0.040291, 0.756355>,  <3.562758, -0.235427, 1.044682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.533652, 0.040291, 0.756355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566495, -0.566264, -0.598689,
		-0.820846, -0.451904, -0.349276,
		-0.072767, 0.689295, -0.720817,
		3.511821, 0.247079, 0.540110>
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
