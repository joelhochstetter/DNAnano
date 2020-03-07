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
	<2.238048, 3.698870, 1.220414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.504852, 3.690063, 1.518303>,  <2.664935, 3.684780, 1.697036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.504852, 3.690063, 1.518303>,  <2.238048, 3.698870, 1.220414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.504852, 3.690063, 1.518303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207208, -0.954647, -0.213808,
		0.715655, 0.296925, -0.632198,
		0.667011, -0.022016, 0.744723,
		2.704956, 3.683459, 1.741720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.853920, 3.526070, 1.088399>,  <2.238048, 3.698870, 1.220414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.853920, 3.526070, 1.088399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.675011, 3.417755, 1.429367>,  <2.567665, 3.352766, 1.633948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.675011, 3.417755, 1.429367>,  <2.853920, 3.526070, 1.088399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.675011, 3.417755, 1.429367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786123, -0.573570, 0.230279,
		0.426566, 0.773105, 0.469414,
		-0.447272, -0.270788, 0.852421,
		2.540829, 3.336519, 1.685093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.329531, 3.476522, 1.637611>,  <2.853920, 3.526070, 1.088399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.329531, 3.476522, 1.637611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.048889, 3.196060, 1.688419>,  <2.880504, 3.027783, 1.718905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.048889, 3.196060, 1.688419>,  <3.329531, 3.476522, 1.637611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.048889, 3.196060, 1.688419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712273, -0.695207, 0.096717,
		0.020493, 0.158331, 0.987173,
		-0.701604, -0.701155, 0.127022,
		2.838408, 2.985714, 1.726526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.561346, 3.037832, 2.171831>,  <3.329531, 3.476522, 1.637611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.561346, 3.037832, 2.171831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.273140, 2.816086, 2.005199>,  <3.100217, 2.683038, 1.905221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.273140, 2.816086, 2.005199>,  <3.561346, 3.037832, 2.171831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.273140, 2.816086, 2.005199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546446, -0.823754, 0.151085,
		-0.426915, -0.118778, 0.896457,
		-0.720514, -0.554366, -0.416578,
		3.056986, 2.649776, 1.880226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.345277, 2.539402, 2.729625>,  <3.561346, 3.037832, 2.171831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.345277, 2.539402, 2.729625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.290749, 2.425560, 2.350063>,  <3.258031, 2.357255, 2.122327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.290749, 2.425560, 2.350063>,  <3.345277, 2.539402, 2.729625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.290749, 2.425560, 2.350063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522520, -0.834431, 0.175204,
		-0.841658, -0.471937, 0.262463,
		-0.136322, -0.284604, -0.948903,
		3.249852, 2.340179, 2.065392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.306407, 1.878550, 2.853284>,  <3.345277, 2.539402, 2.729625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.306407, 1.878550, 2.853284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.376038, 1.909935, 2.460644>,  <3.417816, 1.928766, 2.225060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.376038, 1.909935, 2.460644>,  <3.306407, 1.878550, 2.853284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.376038, 1.909935, 2.460644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328874, -0.944218, -0.017153,
		-0.928191, -0.319837, -0.190171,
		0.174076, 0.078463, -0.981601,
		3.428261, 1.933474, 2.166163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.936711, 1.276548, 2.524370>,  <3.306407, 1.878550, 2.853284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.936711, 1.276548, 2.524370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.245094, 1.389515, 2.296032>,  <3.430124, 1.457295, 2.159029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.245094, 1.389515, 2.296032>,  <2.936711, 1.276548, 2.524370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.245094, 1.389515, 2.296032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351614, -0.936071, 0.011766,
		-0.531028, -0.209788, -0.820974,
		0.770959, 0.282418, -0.570844,
		3.476382, 1.474240, 2.124779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.895104, 0.772673, 1.999753>,  <2.936711, 1.276548, 2.524370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.895104, 0.772673, 1.999753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.262253, 0.931396, 1.996758>,  <3.482542, 1.026630, 1.994960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.262253, 0.931396, 1.996758>,  <2.895104, 0.772673, 1.999753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.262253, 0.931396, 1.996758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392822, -0.905637, 0.159726,
		0.056597, -0.149550, -0.987133,
		0.917871, 0.396808, -0.007490,
		3.537614, 1.050439, 1.994511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.540267, 1.507889, 3.442268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.430115, 1.203953, 3.677830>,  <5.364024, 1.021591, 3.819167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.430115, 1.203953, 3.677830>,  <5.540267, 1.507889, 3.442268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.430115, 1.203953, 3.677830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696023, -0.264964, -0.667343,
		0.663113, -0.593662, -0.455901,
		-0.275379, -0.759842, 0.588904,
		5.347501, 0.976000, 3.854501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.269059, 1.043700, 2.998410>,  <5.540267, 1.507889, 3.442268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.269059, 1.043700, 2.998410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.129684, 0.928864, 3.355324>,  <5.046060, 0.859962, 3.569472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.129684, 0.928864, 3.355324>,  <5.269059, 1.043700, 2.998410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.129684, 0.928864, 3.355324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828220, -0.351455, -0.436498,
		0.438912, -0.891099, -0.115316,
		-0.348435, -0.287091, 0.892285,
		5.025154, 0.842736, 3.623009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.723425, 0.898604, 2.428992>,  <5.269059, 1.043700, 2.998410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.723425, 0.898604, 2.428992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.423241, 0.866486, 2.166584>,  <4.243130, 0.847214, 2.009139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.423241, 0.866486, 2.166584>,  <4.723425, 0.898604, 2.428992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.423241, 0.866486, 2.166584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284898, 0.934939, 0.211475,
		0.596358, 0.345602, -0.724511,
		-0.750460, -0.080297, -0.656020,
		4.198102, 0.842396, 1.969778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.806652, 1.424387, 1.840920>,  <4.723425, 0.898604, 2.428992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.806652, 1.424387, 1.840920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.424866, 1.318520, 1.895981>,  <4.195794, 1.254999, 1.929017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.424866, 1.318520, 1.895981>,  <4.806652, 1.424387, 1.840920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.424866, 1.318520, 1.895981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288789, 0.935446, -0.203816,
		-0.074822, -0.234288, -0.969284,
		-0.954464, -0.264668, 0.137651,
		4.138526, 1.239119, 1.937276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.459201, 1.788007, 1.304463>,  <4.806652, 1.424387, 1.840920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.459201, 1.788007, 1.304463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.163185, 1.701454, 1.559185>,  <3.985576, 1.649523, 1.712018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.163185, 1.701454, 1.559185>,  <4.459201, 1.788007, 1.304463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.163185, 1.701454, 1.559185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430926, 0.879502, -0.201937,
		-0.516376, -0.423857, -0.744111,
		-0.740040, -0.216382, 0.636805,
		3.941173, 1.636540, 1.750226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.809997, 2.086687, 0.919953>,  <4.459201, 1.788007, 1.304463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.809997, 2.086687, 0.919953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.689377, 2.012905, 1.294128>,  <3.617005, 1.968636, 1.518633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.689377, 2.012905, 1.294128>,  <3.809997, 2.086687, 0.919953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.689377, 2.012905, 1.294128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622320, 0.781378, -0.046536,
		-0.722347, -0.596175, -0.350415,
		-0.301550, -0.184455, 0.935438,
		3.598912, 1.957569, 1.574760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.172027, 1.975905, 0.837143>,  <3.809997, 2.086687, 0.919953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.172027, 1.975905, 0.837143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.215439, 2.101879, 1.214298>,  <3.241486, 2.177464, 1.440591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.215439, 2.101879, 1.214298>,  <3.172027, 1.975905, 0.837143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.215439, 2.101879, 1.214298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593138, 0.781672, -0.192814,
		-0.797752, -0.538336, 0.271635,
		0.108531, 0.314935, 0.942888,
		3.247998, 2.196360, 1.497164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.495865, 2.037168, 1.105689>,  <3.172027, 1.975905, 0.837143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.495865, 2.037168, 1.105689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.757233, 2.271030, 1.298031>,  <2.914053, 2.411348, 1.413436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.757233, 2.271030, 1.298031>,  <2.495865, 2.037168, 1.105689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.757233, 2.271030, 1.298031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497902, 0.810407, -0.308763,
		-0.570208, -0.037667, 0.820637,
		0.653419, 0.584656, 0.480855,
		2.953258, 2.446427, 1.442287>
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
