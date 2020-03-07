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
	<3.619154, 1.396188, 5.294739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.616650, 1.734053, 5.080633>,  <3.615147, 1.936771, 4.952169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.616650, 1.734053, 5.080633>,  <3.619154, 1.396188, 5.294739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.616650, 1.734053, 5.080633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373915, -0.494469, -0.784657,
		-0.927442, -0.205057, -0.312736,
		-0.006261, 0.844661, -0.535266,
		3.614771, 1.987451, 4.920053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.129305, 1.406319, 4.695377>,  <3.619154, 1.396188, 5.294739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.129305, 1.406319, 4.695377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.476902, 1.604185, 4.690321>,  <3.685460, 1.722905, 4.687287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.476902, 1.604185, 4.690321>,  <3.129305, 1.406319, 4.695377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.476902, 1.604185, 4.690321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326727, -0.592778, -0.736114,
		-0.371623, 0.635547, -0.676739,
		0.868991, 0.494666, -0.012640,
		3.737599, 1.752585, 4.686529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.332825, 1.814322, 4.043820>,  <3.129305, 1.406319, 4.695377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.332825, 1.814322, 4.043820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.616737, 1.628334, 4.255486>,  <3.787085, 1.516742, 4.382486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.616737, 1.628334, 4.255486>,  <3.332825, 1.814322, 4.043820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.616737, 1.628334, 4.255486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175698, -0.610606, -0.772198,
		0.682159, 0.641065, -0.351702,
		0.709781, -0.464969, 0.529165,
		3.829672, 1.488843, 4.414236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.048853, 1.794204, 3.653466>,  <3.332825, 1.814322, 4.043820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.048853, 1.794204, 3.653466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.934925, 1.494003, 3.892003>,  <3.866568, 1.313883, 4.035125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.934925, 1.494003, 3.892003>,  <4.048853, 1.794204, 3.653466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.934925, 1.494003, 3.892003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353256, -0.660502, -0.662531,
		0.891116, 0.021960, 0.453244,
		-0.284820, -0.750503, 0.596341,
		3.849479, 1.268852, 4.070906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.621493, 1.313203, 3.846849>,  <4.048853, 1.794204, 3.653466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.621493, 1.313203, 3.846849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.310024, 1.078932, 3.936871>,  <4.123143, 0.938369, 3.990884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.310024, 1.078932, 3.936871>,  <4.621493, 1.313203, 3.846849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.310024, 1.078932, 3.936871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452992, -0.772959, -0.444221,
		0.434130, -0.243955, 0.867190,
		-0.778672, -0.585679, 0.225055,
		4.076423, 0.903228, 4.004387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.778509, 0.796205, 4.356420>,  <4.621493, 1.313203, 3.846849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.778509, 0.796205, 4.356420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.466900, 0.665348, 4.142465>,  <4.279935, 0.586834, 4.014092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.466900, 0.665348, 4.142465>,  <4.778509, 0.796205, 4.356420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.466900, 0.665348, 4.142465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548741, -0.768441, -0.329214,
		-0.303329, -0.549979, 0.778148,
		-0.779022, -0.327142, -0.534887,
		4.233193, 0.567206, 3.981998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.619633, -0.032656, 4.551040>,  <4.778509, 0.796205, 4.356420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.619633, -0.032656, 4.551040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.429943, 0.046982, 4.208001>,  <4.316129, 0.094764, 4.002178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.429943, 0.046982, 4.208001>,  <4.619633, -0.032656, 4.551040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.429943, 0.046982, 4.208001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439148, -0.790771, -0.426415,
		-0.763058, -0.578829, 0.287574,
		-0.474227, 0.199092, -0.857596,
		4.287675, 0.106710, 3.950722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.319909, -0.627357, 4.351946>,  <4.619633, -0.032656, 4.551040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.319909, -0.627357, 4.351946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.299114, -0.433727, 4.002553>,  <4.286637, -0.317550, 3.792917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.299114, -0.433727, 4.002553>,  <4.319909, -0.627357, 4.351946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.299114, -0.433727, 4.002553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170168, -0.857579, -0.485388,
		-0.984043, -0.173872, -0.037790,
		-0.051987, 0.484073, -0.873482,
		4.283518, -0.288505, 3.740509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.367969, 0.051108, 3.457978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.564926, -0.291889, 3.517649>,  <5.683100, -0.497688, 3.553451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.564926, -0.291889, 3.517649>,  <5.367969, 0.051108, 3.457978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.564926, -0.291889, 3.517649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769241, 0.508927, 0.386344,
		-0.407208, -0.075480, 0.910211,
		0.492393, -0.857494, 0.149176,
		5.712644, -0.549137, 3.562402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.321577, -0.340520, 2.819237>,  <5.367969, 0.051108, 3.457978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.321577, -0.340520, 2.819237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.938736, -0.453846, 2.843529>,  <4.709032, -0.521841, 2.858104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.938736, -0.453846, 2.843529>,  <5.321577, -0.340520, 2.819237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.938736, -0.453846, 2.843529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262368, 0.936346, 0.233281,
		-0.122957, 0.207340, -0.970511,
		-0.957102, -0.283314, 0.060731,
		4.651605, -0.538840, 2.861748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.813866, 0.068253, 2.464820>,  <5.321577, -0.340520, 2.819237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.813866, 0.068253, 2.464820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.621414, -0.117863, 2.762012>,  <4.505943, -0.229532, 2.940328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.621414, -0.117863, 2.762012>,  <4.813866, 0.068253, 2.464820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.621414, -0.117863, 2.762012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242073, 0.885085, 0.397525,
		-0.842564, 0.011405, -0.538475,
		-0.481130, -0.465290, 0.742980,
		4.477075, -0.257450, 2.984906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.258214, 0.486917, 2.660762>,  <4.813866, 0.068253, 2.464820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.258214, 0.486917, 2.660762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.270119, 0.245476, 2.979454>,  <4.277261, 0.100611, 3.170669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.270119, 0.245476, 2.979454>,  <4.258214, 0.486917, 2.660762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.270119, 0.245476, 2.979454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400445, 0.723121, 0.562796,
		-0.915837, -0.335795, -0.220190,
		0.029760, -0.603603, 0.796729,
		4.279047, 0.064395, 3.218473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.609255, 0.327242, 2.852812>,  <4.258214, 0.486917, 2.660762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.609255, 0.327242, 2.852812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.834435, 0.260719, 3.176647>,  <3.969542, 0.220806, 3.370948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.834435, 0.260719, 3.176647>,  <3.609255, 0.327242, 2.852812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.834435, 0.260719, 3.176647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470849, 0.740513, 0.479523,
		-0.679258, -0.651140, 0.338565,
		0.562948, -0.166307, 0.809588,
		4.003319, 0.210827, 3.419523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.111612, 0.214816, 3.444804>,  <3.609255, 0.327242, 2.852812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.111612, 0.214816, 3.444804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.466110, 0.338001, 3.583212>,  <3.678809, 0.411912, 3.666257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.466110, 0.338001, 3.583212>,  <3.111612, 0.214816, 3.444804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.466110, 0.338001, 3.583212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463203, 0.583311, 0.667226,
		0.003643, -0.751603, 0.659606,
		0.886245, 0.307962, 0.346020,
		3.731984, 0.430390, 3.687018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.041175, 0.221152, 4.149371>,  <3.111612, 0.214816, 3.444804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.041175, 0.221152, 4.149371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.358032, 0.457180, 4.086981>,  <3.548146, 0.598797, 4.049547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.358032, 0.457180, 4.086981>,  <3.041175, 0.221152, 4.149371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.358032, 0.457180, 4.086981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238202, 0.534181, 0.811117,
		0.561938, -0.605363, 0.563702,
		0.792140, 0.590073, -0.155978,
		3.595675, 0.634201, 4.040188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.378335, 0.258738, 4.804653>,  <3.041175, 0.221152, 4.149371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.378335, 0.258738, 4.804653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.500603, 0.575542, 4.593264>,  <3.573963, 0.765625, 4.466430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.500603, 0.575542, 4.593264>,  <3.378335, 0.258738, 4.804653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.500603, 0.575542, 4.593264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278939, 0.605176, 0.745624,
		0.910362, -0.080503, 0.405906,
		0.305670, 0.792011, -0.528474,
		3.592304, 0.813146, 4.434721>
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
