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
	<-0.017401, 2.347169, 1.321144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.052834, 2.042999, 1.071049>,  <0.094974, 1.860497, 0.920991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.052834, 2.042999, 1.071049>,  <-0.017401, 2.347169, 1.321144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.052834, 2.042999, 1.071049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030140, -0.630656, 0.775477,
		-0.984002, -0.155008, -0.087816,
		0.175587, -0.760424, -0.625239,
		0.105510, 1.814872, 0.883477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.582598, 1.762362, 1.289895>,  <-0.017401, 2.347169, 1.321144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.582598, 1.762362, 1.289895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.204796, 1.636993, 1.250549>,  <0.021886, 1.561772, 1.226942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.204796, 1.636993, 1.250549>,  <-0.582598, 1.762362, 1.289895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.204796, 1.636993, 1.250549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122566, -0.614054, 0.779689,
		-0.304772, -0.724365, -0.618392,
		0.944506, -0.313422, -0.098364,
		0.078556, 1.542967, 1.221040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.567584, 1.129249, 1.574085>,  <-0.582598, 1.762362, 1.289895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.567584, 1.129249, 1.574085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.187134, 1.249512, 1.602272>,  <0.041136, 1.321669, 1.619184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.187134, 1.249512, 1.602272>,  <-0.567584, 1.129249, 1.574085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.187134, 1.249512, 1.602272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114667, -0.555739, 0.823411,
		0.286725, -0.775087, -0.563053,
		0.951126, 0.300656, 0.070468,
		0.098204, 1.339709, 1.623412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.160291, 0.534766, 1.666500>,  <-0.567584, 1.129249, 1.574085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.160291, 0.534766, 1.666500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.000984, 0.865387, 1.825596>,  <0.094600, 1.063759, 1.921053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.000984, 0.865387, 1.825596>,  <-0.160291, 0.534766, 1.666500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.000984, 0.865387, 1.825596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068140, -0.459073, 0.885781,
		0.914735, -0.325675, -0.239155,
		0.398266, 0.826552, 0.397739,
		0.118496, 1.113353, 1.944917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.505672, 0.338665, 2.093103>,  <-0.160291, 0.534766, 1.666500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.505672, 0.338665, 2.093103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.392445, 0.696949, 2.230259>,  <0.324508, 0.911920, 2.312552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.392445, 0.696949, 2.230259>,  <0.505672, 0.338665, 2.093103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.392445, 0.696949, 2.230259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272006, -0.267859, 0.924264,
		0.919720, 0.354899, -0.167816,
		-0.283069, 0.895711, 0.342890,
		0.307524, 0.965662, 2.333126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.059942, 0.638110, 2.441097>,  <0.505672, 0.338665, 2.093103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.059942, 0.638110, 2.441097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.764904, 0.841370, 2.618969>,  <0.587882, 0.963325, 2.725692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.764904, 0.841370, 2.618969>,  <1.059942, 0.638110, 2.441097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.764904, 0.841370, 2.618969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204186, -0.459871, 0.864192,
		0.643633, 0.728220, 0.235441,
		-0.737594, 0.508149, 0.444680,
		0.543626, 0.993814, 2.752373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.321446, 0.964138, 3.037239>,  <1.059942, 0.638110, 2.441097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.321446, 0.964138, 3.037239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.925938, 0.960716, 3.096916>,  <0.688633, 0.958663, 3.132722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.925938, 0.960716, 3.096916>,  <1.321446, 0.964138, 3.037239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.925938, 0.960716, 3.096916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133328, -0.501410, 0.854875,
		0.067493, 0.865167, 0.496921,
		-0.988771, -0.008556, 0.149193,
		0.629306, 0.958150, 3.141674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.208117, 1.080154, 3.802284>,  <1.321446, 0.964138, 3.037239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.208117, 1.080154, 3.802284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.882679, 0.908943, 3.644878>,  <0.687416, 0.806217, 3.550435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.882679, 0.908943, 3.644878>,  <1.208117, 1.080154, 3.802284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.882679, 0.908943, 3.644878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061083, -0.610138, 0.789937,
		-0.578213, 0.666727, 0.470260,
		-0.813596, -0.428027, -0.393515,
		0.638600, 0.780535, 3.526824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.991650, -0.381643, 3.998425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.609962, -0.465942, 3.913521>,  <0.380950, -0.516522, 3.862579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.609962, -0.465942, 3.913521>,  <0.991650, -0.381643, 3.998425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.609962, -0.465942, 3.913521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146210, 0.947710, -0.283672,
		0.260943, -0.239650, -0.935135,
		-0.954218, -0.210748, -0.212259,
		0.323697, -0.529167, 3.849843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.908045, -0.250563, 3.350750>,  <0.991650, -0.381643, 3.998425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.908045, -0.250563, 3.350750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.565723, -0.178703, 3.544792>,  <0.360331, -0.135587, 3.661217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.565723, -0.178703, 3.544792>,  <0.908045, -0.250563, 3.350750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.565723, -0.178703, 3.544792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017805, 0.926975, -0.374699,
		-0.516995, -0.329306, -0.790110,
		-0.855803, 0.179650, 0.485105,
		0.308982, -0.124808, 3.690324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.208600, -0.120117, 2.880455>,  <0.908045, -0.250563, 3.350750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.208600, -0.120117, 2.880455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.241196, 0.075249, 3.227974>,  <0.260753, 0.192468, 3.436486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.241196, 0.075249, 3.227974>,  <0.208600, -0.120117, 2.880455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.241196, 0.075249, 3.227974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007129, 0.871961, -0.489524,
		-0.996649, 0.033697, 0.074537,
		0.081489, 0.488415, 0.868798,
		0.265642, 0.221773, 3.488613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.460723, 0.267832, 2.968667>,  <0.208600, -0.120117, 2.880455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.460723, 0.267832, 2.968667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.137474, 0.414742, 3.152863>,  <0.056475, 0.502887, 3.263380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.137474, 0.414742, 3.152863>,  <-0.460723, 0.267832, 2.968667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.137474, 0.414742, 3.152863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062360, 0.830747, -0.553146,
		-0.585706, 0.418293, 0.694247,
		0.808121, 0.367275, 0.460488,
		0.104962, 0.524924, 3.291009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.679428, 0.927473, 3.264525>,  <-0.460723, 0.267832, 2.968667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.679428, 0.927473, 3.264525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.281645, 0.929214, 3.222504>,  <-0.042975, 0.930260, 3.197291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.281645, 0.929214, 3.222504>,  <-0.679428, 0.927473, 3.264525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.281645, 0.929214, 3.222504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061002, 0.837686, -0.542735,
		0.085639, 0.546135, 0.833308,
		0.994457, 0.004354, -0.105054,
		0.016692, 0.930521, 3.190987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.477912, 1.642413, 3.157002>,  <-0.679428, 0.927473, 3.264525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.477912, 1.642413, 3.157002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.163021, 1.427071, 3.036705>,  <0.025914, 1.297866, 2.964527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.163021, 1.427071, 3.036705>,  <-0.477912, 1.642413, 3.157002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.163021, 1.427071, 3.036705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208589, 0.691416, -0.691690,
		0.580312, 0.481786, 0.656597,
		0.787228, -0.538355, -0.300742,
		0.073147, 1.265564, 2.946482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.042560, 2.093331, 2.950055>,  <-0.477912, 1.642413, 3.157002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.042560, 2.093331, 2.950055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.125967, 1.762871, 2.740677>,  <0.176011, 1.564595, 2.615050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.125967, 1.762871, 2.740677>,  <0.042560, 2.093331, 2.950055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.125967, 1.762871, 2.740677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037650, 0.528033, -0.848389,
		0.977294, 0.196611, 0.079000,
		0.208517, -0.826151, -0.523446,
		0.188522, 1.515026, 2.583643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.464592, 2.318033, 2.386064>,  <0.042560, 2.093331, 2.950055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.464592, 2.318033, 2.386064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.342615, 1.954552, 2.272034>,  <0.269429, 1.736463, 2.203616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.342615, 1.954552, 2.272034>,  <0.464592, 2.318033, 2.386064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.342615, 1.954552, 2.272034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247681, 0.364702, -0.897578,
		0.919600, -0.203103, -0.336282,
		-0.304943, -0.908703, -0.285075,
		0.251132, 1.681941, 2.186511>
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
