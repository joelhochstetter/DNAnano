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
	<2.129812, -0.175917, 2.352231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.211647, 0.204971, 2.261528>,  <2.260747, 0.433504, 2.207106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.211647, 0.204971, 2.261528>,  <2.129812, -0.175917, 2.352231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.211647, 0.204971, 2.261528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924097, -0.111497, 0.365533,
		0.322785, -0.284329, -0.902755,
		0.204586, 0.952221, -0.226758,
		2.273022, 0.490638, 2.193501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.820968, -0.101685, 2.099894>,  <2.129812, -0.175917, 2.352231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.820968, -0.101685, 2.099894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.726470, 0.246025, 2.273582>,  <2.669772, 0.454651, 2.377796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.726470, 0.246025, 2.273582>,  <2.820968, -0.101685, 2.099894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.726470, 0.246025, 2.273582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855978, -0.025317, 0.516392,
		0.459880, 0.493679, -0.738100,
		-0.236245, 0.869276, 0.434222,
		2.655597, 0.506808, 2.403849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.490430, 0.339466, 1.948141>,  <2.820968, -0.101685, 2.099894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.490430, 0.339466, 1.948141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.280463, 0.420538, 2.278809>,  <3.154482, 0.469181, 2.477209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.280463, 0.420538, 2.278809>,  <3.490430, 0.339466, 1.948141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.280463, 0.420538, 2.278809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830433, -0.091039, 0.549630,
		0.186658, 0.975004, -0.120525,
		-0.524918, 0.202681, 0.826669,
		3.122987, 0.481342, 2.526809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.967719, 0.779239, 2.487230>,  <3.490430, 0.339466, 1.948141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.967719, 0.779239, 2.487230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.649247, 0.618206, 2.667908>,  <3.458165, 0.521586, 2.776314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.649247, 0.618206, 2.667908>,  <3.967719, 0.779239, 2.487230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.649247, 0.618206, 2.667908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480834, 0.032177, 0.876221,
		-0.367286, 0.914818, 0.167958,
		-0.796178, -0.402584, 0.451694,
		3.410394, 0.497431, 2.803416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.951859, 1.087238, 3.106896>,  <3.967719, 0.779239, 2.487230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.951859, 1.087238, 3.106896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.724548, 0.763893, 3.168358>,  <3.588161, 0.569886, 3.205235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.724548, 0.763893, 3.168358>,  <3.951859, 1.087238, 3.106896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.724548, 0.763893, 3.168358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379650, -0.091913, 0.920553,
		-0.730018, 0.581465, 0.359127,
		-0.568278, -0.808363, 0.153655,
		3.554065, 0.521384, 3.214454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.537331, 1.180952, 3.710077>,  <3.951859, 1.087238, 3.106896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.537331, 1.180952, 3.710077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.543276, 0.782202, 3.679047>,  <3.546843, 0.542952, 3.660429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.543276, 0.782202, 3.679047>,  <3.537331, 1.180952, 3.710077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.543276, 0.782202, 3.679047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096459, -0.075792, 0.992447,
		-0.995226, -0.022232, 0.095031,
		0.014862, -0.996876, -0.077575,
		3.547734, 0.483139, 3.655774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.115024, 1.012622, 4.231000>,  <3.537331, 1.180952, 3.710077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.115024, 1.012622, 4.231000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.354116, 0.701183, 4.154572>,  <3.497571, 0.514320, 4.108715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.354116, 0.701183, 4.154572>,  <3.115024, 1.012622, 4.231000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.354116, 0.701183, 4.154572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181916, -0.100391, 0.978176,
		-0.780785, -0.619444, 0.081632,
		0.597730, -0.778596, -0.191071,
		3.533435, 0.467605, 4.097250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.953289, 0.375425, 4.712296>,  <3.115024, 1.012622, 4.231000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.953289, 0.375425, 4.712296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.328743, 0.335405, 4.580261>,  <3.554015, 0.311394, 4.501040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.328743, 0.335405, 4.580261>,  <2.953289, 0.375425, 4.712296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.328743, 0.335405, 4.580261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320285, -0.102332, 0.941778,
		-0.128009, -0.989706, -0.064005,
		0.938633, -0.100056, -0.330087,
		3.610333, 0.305391, 4.481235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.999838, 0.568554, 5.551701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.313301, 0.330387, 5.480865>,  <4.501379, 0.187487, 5.438365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.313301, 0.330387, 5.480865>,  <3.999838, 0.568554, 5.551701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.313301, 0.330387, 5.480865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024277, 0.255503, -0.966503,
		0.620719, 0.761707, 0.185772,
		0.783657, -0.595417, -0.177087,
		4.548398, 0.151762, 5.427739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.378565, 0.945798, 5.098127>,  <3.999838, 0.568554, 5.551701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.378565, 0.945798, 5.098127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.423927, 0.550076, 5.061440>,  <4.451145, 0.312642, 5.039427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.423927, 0.550076, 5.061440>,  <4.378565, 0.945798, 5.098127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.423927, 0.550076, 5.061440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366237, 0.044191, -0.929472,
		0.923585, 0.138998, -0.357309,
		0.113405, -0.989306, -0.091720,
		4.457949, 0.253284, 5.033924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.791796, 0.671419, 4.475676>,  <4.378565, 0.945798, 5.098127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.791796, 0.671419, 4.475676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.501225, 0.415184, 4.575233>,  <4.326881, 0.261443, 4.634968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.501225, 0.415184, 4.575233>,  <4.791796, 0.671419, 4.475676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.501225, 0.415184, 4.575233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304045, -0.025229, -0.952323,
		0.616326, -0.767470, -0.176441,
		-0.726429, -0.640588, 0.248895,
		4.283296, 0.223008, 4.649902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.791674, 0.083832, 4.048521>,  <4.791796, 0.671419, 4.475676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.791674, 0.083832, 4.048521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.423801, 0.156261, 4.187889>,  <4.203078, 0.199719, 4.271510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.423801, 0.156261, 4.187889>,  <4.791674, 0.083832, 4.048521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.423801, 0.156261, 4.187889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347670, 0.036922, -0.936890,
		-0.182512, -0.982776, 0.028997,
		-0.919682, 0.181075, 0.348421,
		4.147897, 0.210584, 4.292415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.354716, -0.467216, 3.783547>,  <4.791674, 0.083832, 4.048521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.354716, -0.467216, 3.783547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.097282, -0.181316, 3.893044>,  <3.942822, -0.009777, 3.958742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.097282, -0.181316, 3.893044>,  <4.354716, -0.467216, 3.783547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.097282, -0.181316, 3.893044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477633, -0.095595, -0.873343,
		-0.598053, -0.692817, 0.402911,
		-0.643583, 0.714749, 0.273742,
		3.904207, 0.033108, 3.975166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.717359, -0.733713, 3.379791>,  <4.354716, -0.467216, 3.783547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.717359, -0.733713, 3.379791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.642838, -0.357674, 3.493988>,  <3.598125, -0.132050, 3.562507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.642838, -0.357674, 3.493988>,  <3.717359, -0.733713, 3.379791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.642838, -0.357674, 3.493988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524431, 0.150570, -0.838034,
		-0.830821, -0.305850, 0.464965,
		-0.186303, 0.940098, 0.285494,
		3.586947, -0.075644, 3.579636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.927219, -0.579047, 3.202333>,  <3.717359, -0.733713, 3.379791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.927219, -0.579047, 3.202333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.116608, -0.228127, 3.233749>,  <3.230241, -0.017574, 3.252599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.116608, -0.228127, 3.233749>,  <2.927219, -0.579047, 3.202333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.116608, -0.228127, 3.233749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587633, 0.381042, -0.713789,
		-0.656135, 0.291806, 0.695943,
		0.473471, 0.877301, 0.078540,
		3.258649, 0.035064, 3.257311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.382313, -0.037967, 3.346385>,  <2.927219, -0.579047, 3.202333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.382313, -0.037967, 3.346385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.701561, 0.113815, 3.159187>,  <2.893110, 0.204885, 3.046869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.701561, 0.113815, 3.159187>,  <2.382313, -0.037967, 3.346385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.701561, 0.113815, 3.159187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569451, 0.221364, -0.791658,
		-0.196803, 0.898337, 0.392757,
		0.798119, 0.379457, -0.467994,
		2.940997, 0.227652, 3.018789>
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
