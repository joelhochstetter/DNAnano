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
	<4.529098, 5.970917, 3.531316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.373035, 6.062931, 3.174696>,  <4.279398, 6.118139, 2.960724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.373035, 6.062931, 3.174696>,  <4.529098, 5.970917, 3.531316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.373035, 6.062931, 3.174696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005329, -0.968837, -0.247643,
		-0.920734, -0.091868, 0.379222,
		-0.390155, 0.230035, -0.891551,
		4.255989, 6.131941, 2.907231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.863931, 5.599683, 3.396153>,  <4.529098, 5.970917, 3.531316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.863931, 5.599683, 3.396153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.073170, 5.659996, 3.060621>,  <4.198713, 5.696184, 2.859302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.073170, 5.659996, 3.060621>,  <3.863931, 5.599683, 3.396153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.073170, 5.659996, 3.060621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010256, -0.985268, -0.170709,
		-0.852212, 0.080694, -0.516937,
		0.523097, 0.150782, -0.838829,
		4.230099, 5.705231, 2.808973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.573746, 5.255318, 2.791116>,  <3.863931, 5.599683, 3.396153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.573746, 5.255318, 2.791116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.962492, 5.272392, 2.698462>,  <4.195740, 5.282637, 2.642869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.962492, 5.272392, 2.698462>,  <3.573746, 5.255318, 2.791116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.962492, 5.272392, 2.698462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085575, -0.852247, -0.516092,
		-0.219440, 0.521394, -0.824617,
		0.971866, 0.042685, -0.231636,
		4.254052, 5.285198, 2.628971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.706622, 5.295705, 2.119915>,  <3.573746, 5.255318, 2.791116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.706622, 5.295705, 2.119915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.997524, 5.112869, 2.324724>,  <4.172066, 5.003168, 2.447610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.997524, 5.112869, 2.324724>,  <3.706622, 5.295705, 2.119915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.997524, 5.112869, 2.324724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193662, -0.852335, -0.485820,
		0.658479, 0.254156, -0.708386,
		0.727256, -0.457089, 0.512024,
		4.215701, 4.975742, 2.478331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.265347, 4.931750, 1.571465>,  <3.706622, 5.295705, 2.119915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.265347, 4.931750, 1.571465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.291733, 4.764160, 1.933704>,  <4.307564, 4.663606, 2.151048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.291733, 4.764160, 1.933704>,  <4.265347, 4.931750, 1.571465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.291733, 4.764160, 1.933704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004122, -0.907453, -0.420134,
		0.997814, 0.031447, -0.058133,
		0.065965, -0.418976, 0.905598,
		4.311522, 4.638467, 2.205384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.768487, 4.413491, 1.510997>,  <4.265347, 4.931750, 1.571465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.768487, 4.413491, 1.510997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.526224, 4.314789, 1.813597>,  <4.380866, 4.255568, 1.995156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.526224, 4.314789, 1.813597>,  <4.768487, 4.413491, 1.510997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.526224, 4.314789, 1.813597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094469, -0.966277, -0.239549,
		0.790098, -0.073619, 0.608544,
		-0.605658, -0.246756, 0.756499,
		4.344527, 4.240762, 2.040546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.923487, 3.832571, 1.553040>,  <4.768487, 4.413491, 1.510997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.923487, 3.832571, 1.553040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.592203, 3.812115, 1.776272>,  <4.393433, 3.799841, 1.910211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.592203, 3.812115, 1.776272>,  <4.923487, 3.832571, 1.553040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.592203, 3.812115, 1.776272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040686, -0.998687, -0.031137,
		0.558939, -0.003082, 0.829203,
		-0.828210, -0.051141, 0.558079,
		4.343740, 3.796772, 1.943696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.064379, 3.429090, 2.198134>,  <4.923487, 3.832571, 1.553040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.064379, 3.429090, 2.198134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.670860, 3.416653, 2.127504>,  <4.434749, 3.409190, 2.085126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.670860, 3.416653, 2.127504>,  <5.064379, 3.429090, 2.198134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.670860, 3.416653, 2.127504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050470, -0.993049, -0.106329,
		-0.172041, -0.113518, 0.978527,
		-0.983796, -0.031094, -0.176575,
		4.375721, 3.407325, 2.074532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.621456, 2.438663, 1.561014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.242252, 2.314339, 1.588363>,  <4.014730, 2.239744, 1.604772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.242252, 2.314339, 1.588363>,  <4.621456, 2.438663, 1.561014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.242252, 2.314339, 1.588363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258134, 0.876653, 0.406013,
		-0.186131, 0.367255, -0.911306,
		-0.948009, -0.310811, 0.068371,
		3.957850, 2.221095, 1.608874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.226123, 2.987598, 1.160137>,  <4.621456, 2.438663, 1.561014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.226123, 2.987598, 1.160137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.045792, 2.794060, 1.460176>,  <3.937593, 2.677937, 1.640200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.045792, 2.794060, 1.460176>,  <4.226123, 2.987598, 1.160137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.045792, 2.794060, 1.460176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215979, 0.874501, 0.434282,
		-0.866088, 0.033781, -0.498749,
		-0.450828, -0.483845, 0.750099,
		3.910543, 2.648906, 1.685206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.536507, 3.268695, 1.198559>,  <4.226123, 2.987598, 1.160137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.536507, 3.268695, 1.198559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.720165, 3.151398, 1.533986>,  <3.830360, 3.081020, 1.735242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.720165, 3.151398, 1.533986>,  <3.536507, 3.268695, 1.198559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.720165, 3.151398, 1.533986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073754, 0.928106, 0.364937,
		-0.885294, -0.229407, 0.404508,
		0.459145, -0.293242, 0.838567,
		3.857909, 3.063425, 1.785556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.128437, 3.493337, 1.811410>,  <3.536507, 3.268695, 1.198559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.128437, 3.493337, 1.811410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.510265, 3.437103, 1.916506>,  <3.739362, 3.403363, 1.979563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.510265, 3.437103, 1.916506>,  <3.128437, 3.493337, 1.811410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.510265, 3.437103, 1.916506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012425, 0.899728, 0.436275,
		-0.297727, -0.413190, 0.860600,
		0.954570, -0.140584, 0.262739,
		3.796636, 3.394928, 1.995328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.239168, 3.712508, 2.502331>,  <3.128437, 3.493337, 1.811410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.239168, 3.712508, 2.502331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.618229, 3.727058, 2.375441>,  <3.845665, 3.735789, 2.299306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.618229, 3.727058, 2.375441>,  <3.239168, 3.712508, 2.502331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.618229, 3.727058, 2.375441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105189, 0.902468, 0.417717,
		0.301482, -0.429219, 0.851399,
		0.947652, 0.036376, -0.317227,
		3.902524, 3.737971, 2.280272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.662570, 3.952228, 3.139066>,  <3.239168, 3.712508, 2.502331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.662570, 3.952228, 3.139066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.878151, 4.038132, 2.813266>,  <4.007499, 4.089674, 2.617786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.878151, 4.038132, 2.813266>,  <3.662570, 3.952228, 3.139066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.878151, 4.038132, 2.813266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367159, 0.810367, 0.456617,
		0.758107, -0.545145, 0.357898,
		0.538951, 0.214759, -0.814500,
		4.039836, 4.102559, 2.568916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.352346, 3.934020, 3.263078>,  <3.662570, 3.952228, 3.139066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.352346, 3.934020, 3.263078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.319267, 4.181671, 2.950708>,  <4.299420, 4.330262, 2.763287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.319267, 4.181671, 2.950708>,  <4.352346, 3.934020, 3.263078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.319267, 4.181671, 2.950708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468638, 0.715720, 0.517807,
		0.879511, -0.323149, -0.349335,
		-0.082697, 0.619128, -0.780923,
		4.294458, 4.367410, 2.716431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.010065, 4.268638, 3.187365>,  <4.352346, 3.934020, 3.263078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.010065, 4.268638, 3.187365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.745296, 4.500298, 2.997018>,  <4.586436, 4.639293, 2.882810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.745296, 4.500298, 2.997018>,  <5.010065, 4.268638, 3.187365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.745296, 4.500298, 2.997018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437606, 0.814002, 0.381971,
		0.608574, 0.044593, -0.792243,
		-0.661920, 0.579148, -0.475867,
		4.546721, 4.674042, 2.854258>
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
