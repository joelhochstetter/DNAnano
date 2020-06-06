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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.344247, 15.063993, 15.204652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.273054, 14.891253, 14.850967>,  <4.230338, 14.787609, 14.638757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.273054, 14.891253, 14.850967>,  <4.344247, 15.063993, 15.204652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.273054, 14.891253, 14.850967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683654, -0.592024, 0.426759,
		-0.707770, 0.680450, -0.189866,
		-0.177983, -0.431850, -0.884210,
		4.219659, 14.761699, 14.585705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.016340, 14.914243, 15.427919>,  <4.344247, 15.063993, 15.204652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.016340, 14.914243, 15.427919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.323607, 15.136585, 15.555007>,  <5.507967, 15.269991, 15.631259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.323607, 15.136585, 15.555007>,  <5.016340, 14.914243, 15.427919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.323607, 15.136585, 15.555007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607561, 0.476325, 0.635597,
		0.201962, -0.681278, 0.703613,
		0.768167, 0.555855, 0.317719,
		5.554057, 15.303342, 15.650322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.194766, 15.719780, 15.655569>,  <5.016340, 14.914243, 15.427919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.194766, 15.719780, 15.655569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.988840, 16.052559, 15.572789>,  <4.865284, 16.252226, 15.523122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.988840, 16.052559, 15.572789>,  <5.194766, 15.719780, 15.655569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.988840, 16.052559, 15.572789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092005, -0.293617, -0.951485,
		-0.852350, -0.470799, 0.227702,
		-0.514815, 0.831948, -0.206949,
		4.834395, 16.302143, 15.510705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.492797, 16.273600, 15.249166>,  <5.194766, 15.719780, 15.655569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.492797, 16.273600, 15.249166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.702343, 16.323887, 14.912177>,  <5.828071, 16.354059, 14.709984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.702343, 16.323887, 14.912177>,  <5.492797, 16.273600, 15.249166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.702343, 16.323887, 14.912177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457556, -0.875773, 0.153829,
		-0.718476, -0.466064, -0.516311,
		0.523865, 0.125719, -0.842473,
		5.859502, 16.361603, 14.659435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.445469, 15.647517, 14.807887>,  <5.492797, 16.273600, 15.249166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.445469, 15.647517, 14.807887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.779969, 15.856550, 14.741443>,  <5.980669, 15.981970, 14.701576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.779969, 15.856550, 14.741443>,  <5.445469, 15.647517, 14.807887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.779969, 15.856550, 14.741443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519242, -0.852037, -0.066489,
		-0.176278, -0.030650, -0.983863,
		0.836250, 0.522583, -0.166110,
		6.030844, 16.013325, 14.691609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.766791, 15.373186, 14.193782>,  <5.445469, 15.647517, 14.807887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.766791, 15.373186, 14.193782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.028356, 15.556510, 14.434565>,  <6.185295, 15.666504, 14.579034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.028356, 15.556510, 14.434565>,  <5.766791, 15.373186, 14.193782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.028356, 15.556510, 14.434565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507557, -0.855773, 0.100190,
		0.561056, 0.240011, -0.792219,
		0.653913, 0.458309, 0.601956,
		6.224530, 15.694002, 14.615151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.434515, 15.257491, 13.913797>,  <5.766791, 15.373186, 14.193782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.434515, 15.257491, 13.913797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.514967, 15.345736, 14.295557>,  <6.563239, 15.398682, 14.524612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.514967, 15.345736, 14.295557>,  <6.434515, 15.257491, 13.913797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.514967, 15.345736, 14.295557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577395, -0.813759, 0.066421,
		0.791304, 0.537706, -0.291051,
		0.201130, 0.220611, 0.954399,
		6.575306, 15.411919, 14.581877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.097069, 15.133106, 13.955707>,  <6.434515, 15.257491, 13.913797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.097069, 15.133106, 13.955707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.965564, 15.133056, 14.333471>,  <6.886661, 15.133025, 14.560130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.965564, 15.133056, 14.333471>,  <7.097069, 15.133106, 13.955707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.965564, 15.133056, 14.333471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590890, -0.780116, 0.205592,
		0.736725, 0.625635, 0.256548,
		-0.328763, -0.000127, 0.944413,
		6.866935, 15.133018, 14.616795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.623054, 14.927558, 14.415958>,  <7.097069, 15.133106, 13.955707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.623054, 14.927558, 14.415958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.299483, 14.862048, 14.641812>,  <7.105340, 14.822742, 14.777325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.299483, 14.862048, 14.641812>,  <7.623054, 14.927558, 14.415958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.299483, 14.862048, 14.641812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346722, -0.908512, 0.233217,
		0.474783, 0.384428, 0.791705,
		-0.808928, -0.163774, 0.564636,
		7.056804, 14.812916, 14.811203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.969158, 14.579943, 15.025334>,  <7.623054, 14.927558, 14.415958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.969158, 14.579943, 15.025334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.576429, 14.514271, 14.987235>,  <7.340792, 14.474868, 14.964375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.576429, 14.514271, 14.987235>,  <7.969158, 14.579943, 15.025334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.576429, 14.514271, 14.987235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140638, -0.966247, 0.215841,
		-0.127469, 0.198522, 0.971772,
		-0.981821, -0.164181, -0.095247,
		7.281883, 14.465016, 14.958661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.758347, 14.039442, 15.556850>,  <7.969158, 14.579943, 15.025334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.758347, 14.039442, 15.556850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.434182, 14.041662, 15.322516>,  <7.239683, 14.042994, 15.181916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.434182, 14.041662, 15.322516>,  <7.758347, 14.039442, 15.556850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.434182, 14.041662, 15.322516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015793, -0.999799, 0.012376,
		-0.585648, 0.019281, 0.810336,
		-0.810412, 0.005550, -0.585835,
		7.191058, 14.043327, 15.146766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.263499, 13.740009, 15.934509>,  <7.758347, 14.039442, 15.556850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.263499, 13.740009, 15.934509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.181131, 13.682538, 15.547324>,  <7.131711, 13.648055, 15.315013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.181131, 13.682538, 15.547324>,  <7.263499, 13.740009, 15.934509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.181131, 13.682538, 15.547324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031228, -0.987694, 0.153250,
		-0.978071, 0.061785, 0.198898,
		-0.205919, -0.143679, -0.967964,
		7.119356, 13.639435, 15.256935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.747231, 13.289846, 15.939968>,  <7.263499, 13.740009, 15.934509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.747231, 13.289846, 15.939968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.907351, 13.277390, 15.573626>,  <7.003423, 13.269917, 15.353820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.907351, 13.277390, 15.573626>,  <6.747231, 13.289846, 15.939968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.907351, 13.277390, 15.573626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080306, -0.994385, 0.068909,
		-0.912859, -0.101133, -0.395550,
		0.400298, -0.031139, -0.915855,
		7.027441, 13.268048, 15.298869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.387589, 12.754632, 15.634649>,  <6.747231, 13.289846, 15.939968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.387589, 12.754632, 15.634649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.737486, 12.811354, 15.449300>,  <6.947424, 12.845387, 15.338090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.737486, 12.811354, 15.449300>,  <6.387589, 12.754632, 15.634649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.737486, 12.811354, 15.449300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200820, -0.976330, 0.080318,
		-0.441017, -0.163313, -0.882515,
		0.874743, 0.141805, -0.463374,
		6.999909, 12.853895, 15.310287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.376722, 12.176942, 15.140890>,  <6.387589, 12.754632, 15.634649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.376722, 12.176942, 15.140890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.755185, 12.303082, 15.170118>,  <6.982263, 12.378767, 15.187655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.755185, 12.303082, 15.170118>,  <6.376722, 12.176942, 15.140890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.755185, 12.303082, 15.170118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320316, -0.944668, -0.070712,
		0.046728, 0.090310, -0.994817,
		0.946157, 0.315352, 0.073070,
		7.039032, 12.397688, 15.192039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.774532, 11.950130, 14.520397>,  <6.376722, 12.176942, 15.140890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.774532, 11.950130, 14.520397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.042110, 12.004055, 14.812791>,  <7.202657, 12.036410, 14.988227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.042110, 12.004055, 14.812791>,  <6.774532, 11.950130, 14.520397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.042110, 12.004055, 14.812791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411978, -0.885793, -0.213649,
		0.618698, 0.444069, -0.648086,
		0.668945, 0.134813, 0.730985,
		7.242794, 12.044498, 15.032086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.482730, 11.791395, 14.175791>,  <6.774532, 11.950130, 14.520397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.482730, 11.791395, 14.175791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.536243, 11.748748, 14.569894>,  <7.568351, 11.723160, 14.806356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.536243, 11.748748, 14.569894>,  <7.482730, 11.791395, 14.175791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.536243, 11.748748, 14.569894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518059, -0.840009, -0.161244,
		0.844818, 0.531994, -0.057145,
		0.133783, -0.106618, 0.985259,
		7.576378, 11.716763, 14.865472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.181983, 11.624977, 14.237766>,  <7.482730, 11.791395, 14.175791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.181983, 11.624977, 14.237766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.017028, 11.503264, 14.581243>,  <7.918055, 11.430237, 14.787328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.017028, 11.503264, 14.581243>,  <8.181983, 11.624977, 14.237766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.017028, 11.503264, 14.581243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406978, -0.904820, -0.125177,
		0.815049, 0.297846, 0.496973,
		-0.412388, -0.304283, 0.858690,
		7.893312, 11.411980, 14.838850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.644320, 11.172712, 14.523700>,  <8.181983, 11.624977, 14.237766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.644320, 11.172712, 14.523700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.312723, 11.085988, 14.729909>,  <8.113765, 11.033954, 14.853635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.312723, 11.085988, 14.729909>,  <8.644320, 11.172712, 14.523700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.312723, 11.085988, 14.729909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213123, -0.974711, -0.067213,
		0.517059, 0.054151, 0.854235,
		-0.828993, -0.216811, 0.515523,
		8.064025, 11.020945, 14.884566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.841065, 10.655065, 14.851754>,  <8.644320, 11.172712, 14.523700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.841065, 10.655065, 14.851754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.442385, 10.634393, 14.876778>,  <8.203176, 10.621989, 14.891791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.442385, 10.634393, 14.876778>,  <8.841065, 10.655065, 14.851754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.442385, 10.634393, 14.876778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039079, -0.981375, -0.188085,
		0.071113, -0.185020, 0.980158,
		-0.996702, -0.051679, 0.062558,
		8.143373, 10.618889, 14.895545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.611880, 10.031948, 15.289805>,  <8.841065, 10.655065, 14.851754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.611880, 10.031948, 15.289805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.314165, 10.127659, 15.040396>,  <8.135536, 10.185085, 14.890750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.314165, 10.127659, 15.040396>,  <8.611880, 10.031948, 15.289805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.314165, 10.127659, 15.040396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044847, -0.913603, -0.404126,
		-0.666352, -0.328750, 0.669252,
		-0.744287, 0.239276, -0.623525,
		8.090878, 10.199442, 14.853338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.081351, 9.541494, 15.425914>,  <8.611880, 10.031948, 15.289805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.081351, 9.541494, 15.425914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.022539, 9.666508, 15.050530>,  <7.987252, 9.741515, 14.825300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.022539, 9.666508, 15.050530>,  <8.081351, 9.541494, 15.425914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.022539, 9.666508, 15.050530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090129, -0.949056, -0.301941,
		-0.985017, 0.040188, 0.167709,
		-0.147031, 0.312533, -0.938459,
		7.978430, 9.760267, 14.768992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.880774, 8.951214, 15.077466>,  <8.081351, 9.541494, 15.425914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.880774, 8.951214, 15.077466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.913211, 9.207967, 14.772465>,  <7.932673, 9.362019, 14.589464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.913211, 9.207967, 14.772465>,  <7.880774, 8.951214, 15.077466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.913211, 9.207967, 14.772465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272349, -0.721638, -0.636447,
		-0.958775, 0.259277, 0.116297,
		0.081092, 0.641883, -0.762503,
		7.937538, 9.400532, 14.543714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.400530, 8.671643, 14.698399>,  <7.880774, 8.951214, 15.077466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.400530, 8.671643, 14.698399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.625117, 8.911313, 14.470102>,  <7.759870, 9.055115, 14.333125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.625117, 8.911313, 14.470102>,  <7.400530, 8.671643, 14.698399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.625117, 8.911313, 14.470102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184537, -0.581686, -0.792204,
		-0.806659, 0.550120, -0.216029,
		0.561468, 0.599173, -0.570740,
		7.793558, 9.091065, 14.298881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.056618, 8.817345, 14.046161>,  <7.400530, 8.671643, 14.698399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.056618, 8.817345, 14.046161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.433235, 8.892077, 13.934026>,  <7.659206, 8.936917, 13.866745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.433235, 8.892077, 13.934026>,  <7.056618, 8.817345, 14.046161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.433235, 8.892077, 13.934026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152707, -0.505051, -0.849473,
		-0.300293, 0.842625, -0.446997,
		0.941544, 0.186831, -0.280338,
		7.715698, 8.948127, 13.849924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.033836, 8.722184, 13.394938>,  <7.056618, 8.817345, 14.046161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.033836, 8.722184, 13.394938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.395945, 8.863672, 13.300821>,  <7.613211, 8.948565, 13.244350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.395945, 8.863672, 13.300821>,  <7.033836, 8.722184, 13.394938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.395945, 8.863672, 13.300821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088306, -0.385082, -0.918648,
		-0.415551, 0.852405, -0.317369,
		0.905273, 0.353719, -0.235294,
		7.667527, 8.969788, 13.230233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.983793, 9.137660, 12.832261>,  <7.033836, 8.722184, 13.394938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.983793, 9.137660, 12.832261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.350455, 8.977941, 12.825281>,  <7.570453, 8.882109, 12.821093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.350455, 8.977941, 12.825281>,  <6.983793, 9.137660, 12.832261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.350455, 8.977941, 12.825281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049055, -0.069068, -0.996405,
		0.396657, 0.914216, -0.082900,
		0.916655, -0.399298, -0.017451,
		7.625452, 8.858151, 12.820045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.165924, 9.386034, 12.265267>,  <6.983793, 9.137660, 12.832261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.165924, 9.386034, 12.265267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.426779, 9.097110, 12.357341>,  <7.583292, 8.923756, 12.412584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.426779, 9.097110, 12.357341>,  <7.165924, 9.386034, 12.265267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.426779, 9.097110, 12.357341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164473, -0.161594, -0.973055,
		0.740044, 0.672425, 0.013419,
		0.652138, -0.722311, 0.230183,
		7.622420, 8.880417, 12.426395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.767279, 9.579564, 11.973929>,  <7.165924, 9.386034, 12.265267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.767279, 9.579564, 11.973929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.802564, 9.188182, 12.048594>,  <7.823734, 8.953353, 12.093393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.802564, 9.188182, 12.048594>,  <7.767279, 9.579564, 11.973929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.802564, 9.188182, 12.048594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376889, -0.140678, -0.915513,
		0.922049, 0.151110, 0.356359,
		0.088211, -0.978456, 0.186664,
		7.829027, 8.894645, 12.104593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.087605, 8.905828, 11.543945>,  <7.767279, 9.579564, 11.973929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.087605, 8.905828, 11.543945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.339450, 8.611491, 11.444242>,  <8.490557, 8.434889, 11.384421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.339450, 8.611491, 11.444242>,  <8.087605, 8.905828, 11.543945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.339450, 8.611491, 11.444242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435231, -0.068307, -0.897724,
		0.643556, 0.673700, -0.363267,
		0.629610, -0.735841, -0.249256,
		8.528333, 8.390738, 11.369466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.628839, 8.958371, 10.908090>,  <8.087605, 8.905828, 11.543945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.628839, 8.958371, 10.908090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.484643, 8.589472, 10.963953>,  <8.398125, 8.368133, 10.997471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.484643, 8.589472, 10.963953>,  <8.628839, 8.958371, 10.908090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.484643, 8.589472, 10.963953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371617, 0.004673, -0.928374,
		0.855539, -0.386571, -0.344408,
		-0.360492, -0.922248, 0.139659,
		8.376495, 8.312798, 11.005851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.970804, 8.558578, 10.514343>,  <8.628839, 8.958371, 10.908090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.970804, 8.558578, 10.514343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.584405, 8.463994, 10.556168>,  <8.352565, 8.407244, 10.581262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.584405, 8.463994, 10.556168>,  <8.970804, 8.558578, 10.514343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.584405, 8.463994, 10.556168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169181, 0.272293, -0.947224,
		0.195508, -0.932708, -0.303039,
		-0.965999, -0.236458, 0.104561,
		8.294605, 8.393056, 10.587536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.425374, 9.132795, 10.748750>,  <8.970804, 8.558578, 10.514343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.425374, 9.132795, 10.748750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.768402, 9.273058, 10.598225>,  <9.974219, 9.357216, 10.507910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.768402, 9.273058, 10.598225>,  <9.425374, 9.132795, 10.748750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.768402, 9.273058, 10.598225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350360, 0.933862, 0.071766,
		0.376590, 0.070301, 0.923709,
		0.857571, 0.350657, -0.376314,
		10.025674, 9.378255, 10.485331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.814830, 9.652809, 11.051083>,  <9.425374, 9.132795, 10.748750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.814830, 9.652809, 11.051083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.952940, 9.766666, 10.693364>,  <10.035806, 9.834981, 10.478733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.952940, 9.766666, 10.693364>,  <9.814830, 9.652809, 11.051083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.952940, 9.766666, 10.693364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099212, 0.958628, 0.266814,
		0.933243, -0.003400, 0.359231,
		0.345275, 0.284642, -0.894295,
		10.056522, 9.852059, 10.425076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.311982, 10.204421, 11.190768>,  <9.814830, 9.652809, 11.051083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.311982, 10.204421, 11.190768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.189478, 10.237748, 10.811451>,  <10.115975, 10.257745, 10.583860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.189478, 10.237748, 10.811451>,  <10.311982, 10.204421, 11.190768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.189478, 10.237748, 10.811451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177470, 0.973701, 0.142867,
		0.935258, 0.212049, -0.283421,
		-0.306262, 0.083319, -0.948294,
		10.097599, 10.262744, 10.526962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.498342, 10.927449, 10.840292>,  <10.311982, 10.204421, 11.190768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.498342, 10.927449, 10.840292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.112761, 10.849763, 10.767546>,  <9.881412, 10.803151, 10.723898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.112761, 10.849763, 10.767546>,  <10.498342, 10.927449, 10.840292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.112761, 10.849763, 10.767546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260598, 0.827100, 0.497991,
		0.053703, 0.527433, -0.847897,
		-0.963953, -0.194217, -0.181866,
		9.823575, 10.791498, 10.712986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.276139, 11.488589, 10.467372>,  <10.498342, 10.927449, 10.840292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.276139, 11.488589, 10.467372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.966241, 11.328686, 10.663315>,  <9.780302, 11.232743, 10.780881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.966241, 11.328686, 10.663315>,  <10.276139, 11.488589, 10.467372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.966241, 11.328686, 10.663315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156876, 0.872068, 0.463560,
		-0.612501, 0.282295, -0.738344,
		-0.774747, -0.399759, 0.489857,
		9.733817, 11.208758, 10.810272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.721119, 12.013593, 10.505892>,  <10.276139, 11.488589, 10.467372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.721119, 12.013593, 10.505892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.613961, 11.747674, 10.784826>,  <9.549666, 11.588122, 10.952187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.613961, 11.747674, 10.784826>,  <9.721119, 12.013593, 10.505892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.613961, 11.747674, 10.784826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387744, 0.736982, 0.553635,
		-0.881979, -0.122072, -0.455204,
		-0.267894, -0.664798, 0.697336,
		9.533593, 11.548235, 10.994027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.074207, 12.323275, 10.863023>,  <9.721119, 12.013593, 10.505892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.074207, 12.323275, 10.863023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.190351, 12.049124, 11.130140>,  <9.260036, 11.884633, 11.290411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.190351, 12.049124, 11.130140>,  <9.074207, 12.323275, 10.863023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.190351, 12.049124, 11.130140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347150, 0.574872, 0.740951,
		-0.891728, -0.446966, -0.071010,
		0.290358, -0.685378, 0.667794,
		9.277458, 11.843511, 11.330479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.494188, 12.228716, 11.348177>,  <9.074207, 12.323275, 10.863023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.494188, 12.228716, 11.348177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.824236, 12.107692, 11.539021>,  <9.022264, 12.035077, 11.653528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.824236, 12.107692, 11.539021>,  <8.494188, 12.228716, 11.348177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.824236, 12.107692, 11.539021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215509, 0.612089, 0.760857,
		-0.522240, -0.730619, 0.439842,
		0.825119, -0.302560, 0.477112,
		9.071772, 12.016924, 11.682156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.202379, 12.237971, 12.037832>,  <8.494188, 12.228716, 11.348177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.202379, 12.237971, 12.037832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.601595, 12.261908, 12.045196>,  <8.841125, 12.276269, 12.049613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.601595, 12.261908, 12.045196>,  <8.202379, 12.237971, 12.037832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.601595, 12.261908, 12.045196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055230, 0.703050, 0.708993,
		0.029485, -0.708618, 0.704976,
		0.998038, 0.059841, 0.018408,
		8.901007, 12.279860, 12.050718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.414131, 12.223023, 12.830019>,  <8.202379, 12.237971, 12.037832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.414131, 12.223023, 12.830019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.719834, 12.381437, 12.626425>,  <8.903256, 12.476485, 12.504269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.719834, 12.381437, 12.626425>,  <8.414131, 12.223023, 12.830019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.719834, 12.381437, 12.626425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063208, 0.831434, 0.552017,
		0.641804, -0.389712, 0.660464,
		0.764260, 0.396034, -0.508984,
		8.949112, 12.500248, 12.473729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.088068, 12.471292, 13.352074>,  <8.414131, 12.223023, 12.830019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.088068, 12.471292, 13.352074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.066438, 12.679893, 13.011459>,  <9.053460, 12.805053, 12.807091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.066438, 12.679893, 13.011459>,  <9.088068, 12.471292, 13.352074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.066438, 12.679893, 13.011459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038170, 0.853239, 0.520122,
		0.997807, -0.004377, -0.066044,
		-0.054075, 0.521502, -0.851535,
		9.050216, 12.836343, 12.755999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.505247, 13.014440, 13.449747>,  <9.088068, 12.471292, 13.352074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.505247, 13.014440, 13.449747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.311281, 13.143948, 13.124778>,  <9.194901, 13.221653, 12.929796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.311281, 13.143948, 13.124778>,  <9.505247, 13.014440, 13.449747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.311281, 13.143948, 13.124778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079997, 0.908633, 0.409861,
		0.870895, 0.263740, -0.414709,
		-0.484915, 0.323770, -0.812422,
		9.165807, 13.241078, 12.881051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.868097, 13.632895, 13.202653>,  <9.505247, 13.014440, 13.449747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.868097, 13.632895, 13.202653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.489884, 13.657441, 13.074776>,  <9.262957, 13.672169, 12.998049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.489884, 13.657441, 13.074776>,  <9.868097, 13.632895, 13.202653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.489884, 13.657441, 13.074776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082547, 0.904773, 0.417818,
		0.314890, 0.421450, -0.850426,
		-0.945532, 0.061367, -0.319694,
		9.206224, 13.675851, 12.978868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.873342, 14.240680, 12.926238>,  <9.868097, 13.632895, 13.202653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.873342, 14.240680, 12.926238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.486623, 14.150236, 12.973866>,  <9.254591, 14.095970, 13.002443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.486623, 14.150236, 12.973866>,  <9.873342, 14.240680, 12.926238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.486623, 14.150236, 12.973866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185361, 0.941242, 0.282319,
		-0.175910, 0.250874, -0.951902,
		-0.966797, -0.226109, 0.119071,
		9.196584, 14.082403, 13.009588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.644197, 14.826176, 12.873332>,  <9.873342, 14.240680, 12.926238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.644197, 14.826176, 12.873332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.313242, 14.653977, 13.017612>,  <9.114669, 14.550658, 13.104181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.313242, 14.653977, 13.017612>,  <9.644197, 14.826176, 12.873332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.313242, 14.653977, 13.017612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258353, 0.861985, 0.436160,
		-0.498684, 0.267684, -0.824414,
		-0.827386, -0.430496, 0.360702,
		9.065026, 14.524829, 13.125823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.075345, 15.322233, 12.719441>,  <9.644197, 14.826176, 12.873332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.075345, 15.322233, 12.719441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.981070, 15.090256, 13.031368>,  <8.924504, 14.951069, 13.218525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.981070, 15.090256, 13.031368>,  <9.075345, 15.322233, 12.719441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.981070, 15.090256, 13.031368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442044, 0.778584, 0.445425,
		-0.865475, -0.239732, -0.439865,
		-0.235690, -0.579944, 0.779818,
		8.910363, 14.916272, 13.265313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.415793, 15.471728, 12.831262>,  <9.075345, 15.322233, 12.719441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.415793, 15.471728, 12.831262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.588580, 15.324205, 13.160476>,  <8.692252, 15.235692, 13.358005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.588580, 15.324205, 13.160476>,  <8.415793, 15.471728, 12.831262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.588580, 15.324205, 13.160476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154157, 0.868944, 0.470289,
		-0.888618, -0.330025, 0.318500,
		0.431966, -0.368808, 0.823035,
		8.718170, 15.213563, 13.407386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.028476, 15.750899, 13.421665>,  <8.415793, 15.471728, 12.831262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.028476, 15.750899, 13.421665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.354811, 15.627316, 13.617196>,  <8.550611, 15.553165, 13.734515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.354811, 15.627316, 13.617196>,  <8.028476, 15.750899, 13.421665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.354811, 15.627316, 13.617196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084148, 0.772889, 0.628937,
		-0.572126, -0.554245, 0.604553,
		0.815838, -0.308959, 0.488828,
		8.599562, 15.534628, 13.763844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.787425, 15.556479, 14.084798>,  <8.028476, 15.750899, 13.421665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.787425, 15.556479, 14.084798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.180688, 15.615399, 14.128074>,  <8.416646, 15.650751, 14.154039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.180688, 15.615399, 14.128074>,  <7.787425, 15.556479, 14.084798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.180688, 15.615399, 14.128074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171998, 0.545565, 0.820229,
		0.061795, -0.825022, 0.561711,
		0.983157, 0.147299, 0.108190,
		8.475636, 15.659590, 14.160530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.873600, 15.635927, 14.743730>,  <7.787425, 15.556479, 14.084798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.873600, 15.635927, 14.743730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.230045, 15.786495, 14.642358>,  <8.443913, 15.876836, 14.581534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.230045, 15.786495, 14.642358>,  <7.873600, 15.635927, 14.743730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.230045, 15.786495, 14.642358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090504, 0.694689, 0.713594,
		0.444666, -0.612956, 0.653114,
		0.891112, 0.376420, -0.253430,
		8.497379, 15.899422, 14.566329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.251088, 15.837626, 15.396550>,  <7.873600, 15.635927, 14.743730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.251088, 15.837626, 15.396550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.393239, 16.050943, 15.089485>,  <8.478530, 16.178934, 14.905246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.393239, 16.050943, 15.089485>,  <8.251088, 15.837626, 15.396550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.393239, 16.050943, 15.089485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011097, 0.818808, 0.573960,
		0.934657, -0.212492, 0.285069,
		0.355378, 0.533292, -0.767662,
		8.499852, 16.210932, 14.859186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.981853, 16.095982, 15.621809>,  <8.251088, 15.837626, 15.396550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.981853, 16.095982, 15.621809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.827633, 16.332428, 15.338421>,  <8.735101, 16.474297, 15.168387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.827633, 16.332428, 15.338421>,  <8.981853, 16.095982, 15.621809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.827633, 16.332428, 15.338421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073655, 0.745667, 0.662235,
		0.919742, 0.307507, -0.243953,
		-0.385550, 0.591118, -0.708471,
		8.711967, 16.509764, 15.125879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.006591, 16.679934, 16.024950>,  <8.981853, 16.095982, 15.621809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.006591, 16.679934, 16.024950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.817456, 16.819212, 15.701175>,  <8.703976, 16.902779, 15.506910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.817456, 16.819212, 15.701175>,  <9.006591, 16.679934, 16.024950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.817456, 16.819212, 15.701175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461562, 0.684629, 0.564130,
		0.750591, 0.640347, -0.163004,
		-0.472836, 0.348194, -0.809436,
		8.675606, 16.923670, 15.458344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.220969, 17.396492, 16.028099>,  <9.006591, 16.679934, 16.024950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.220969, 17.396492, 16.028099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.886875, 17.377586, 15.808956>,  <8.686419, 17.366243, 15.677470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.886875, 17.377586, 15.808956>,  <9.220969, 17.396492, 16.028099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.886875, 17.377586, 15.808956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441377, 0.651851, 0.616665,
		0.327974, 0.756872, -0.565312,
		-0.835236, -0.047266, -0.547856,
		8.636304, 17.363407, 15.644599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.807643, 17.314734, 16.448870>,  <9.220969, 17.396492, 16.028099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.807643, 17.314734, 16.448870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.064399, 17.612646, 16.521839>,  <10.218452, 17.791393, 16.565620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.064399, 17.612646, 16.521839>,  <9.807643, 17.314734, 16.448870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.064399, 17.612646, 16.521839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238546, 0.032147, -0.970599,
		-0.728749, 0.666534, -0.157029,
		0.641889, 0.744781, 0.182426,
		10.256966, 17.836081, 16.576567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.149123, 16.616682, 16.528759>,  <9.807643, 17.314734, 16.448870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.149123, 16.616682, 16.528759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.447822, 16.734348, 16.290152>,  <10.627041, 16.804949, 16.146988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.447822, 16.734348, 16.290152>,  <10.149123, 16.616682, 16.528759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.447822, 16.734348, 16.290152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458865, 0.421383, 0.782227,
		0.481471, -0.857846, 0.179681,
		0.746745, 0.294170, -0.596519,
		10.671845, 16.822599, 16.111197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.747446, 16.522657, 16.877073>,  <10.149123, 16.616682, 16.528759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.747446, 16.522657, 16.877073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.868920, 16.805973, 16.622168>,  <10.941805, 16.975962, 16.469225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.868920, 16.805973, 16.622168>,  <10.747446, 16.522657, 16.877073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.868920, 16.805973, 16.622168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347972, 0.540195, 0.766227,
		0.886956, -0.454441, -0.082415,
		0.303685, 0.708288, -0.637262,
		10.960026, 17.018459, 16.430988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.471429, 16.696569, 16.854843>,  <10.747446, 16.522657, 16.877073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.471429, 16.696569, 16.854843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.214178, 17.001570, 16.826614>,  <11.059828, 17.184570, 16.809677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.214178, 17.001570, 16.826614>,  <11.471429, 16.696569, 16.854843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.214178, 17.001570, 16.826614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423351, 0.430835, 0.796967,
		0.638093, 0.482673, -0.599886,
		-0.643126, 0.762501, -0.070573,
		11.021240, 17.230320, 16.805443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.819387, 17.302099, 16.844446>,  <11.471429, 16.696569, 16.854843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.819387, 17.302099, 16.844446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.459179, 17.341274, 17.013903>,  <11.243054, 17.364779, 17.115576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.459179, 17.341274, 17.013903>,  <11.819387, 17.302099, 16.844446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.459179, 17.341274, 17.013903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425757, 0.396426, 0.813374,
		-0.088281, 0.912828, -0.398688,
		-0.900521, 0.097938, 0.423640,
		11.189023, 17.370655, 17.140995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.891354, 17.997011, 17.171551>,  <11.819387, 17.302099, 16.844446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.891354, 17.997011, 17.171551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.577697, 17.831467, 17.356524>,  <11.389503, 17.732140, 17.467506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.577697, 17.831467, 17.356524>,  <11.891354, 17.997011, 17.171551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.577697, 17.831467, 17.356524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399937, 0.232770, 0.886492,
		-0.474524, 0.880078, -0.017007,
		-0.784141, -0.413861, 0.462431,
		11.342455, 17.707308, 17.495253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.490074, 18.415785, 17.528250>,  <11.891354, 17.997011, 17.171551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.490074, 18.415785, 17.528250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.477188, 18.068396, 17.726124>,  <11.469457, 17.859962, 17.844849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.477188, 18.068396, 17.726124>,  <11.490074, 18.415785, 17.528250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.477188, 18.068396, 17.726124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504121, 0.413253, 0.758343,
		-0.863032, 0.273812, 0.424503,
		-0.032216, -0.868475, 0.494685,
		11.467524, 17.807854, 17.874529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.509450, 18.486662, 18.316061>,  <11.490074, 18.415785, 17.528250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.509450, 18.486662, 18.316061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.642596, 18.109472, 18.315933>,  <11.722484, 17.883158, 18.315857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.642596, 18.109472, 18.315933>,  <11.509450, 18.486662, 18.316061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.642596, 18.109472, 18.315933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693646, 0.244623, 0.677507,
		-0.638793, -0.225741, 0.735517,
		0.332866, -0.942974, -0.000321,
		11.742456, 17.826580, 18.315838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.396355, 18.285582, 19.031437>,  <11.509450, 18.486662, 18.316061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.396355, 18.285582, 19.031437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.676957, 18.053709, 18.865612>,  <11.845319, 17.914585, 18.766117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.676957, 18.053709, 18.865612>,  <11.396355, 18.285582, 19.031437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.676957, 18.053709, 18.865612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597601, 0.161544, 0.785351,
		-0.388282, -0.798671, 0.459741,
		0.701505, -0.579679, -0.414563,
		11.887409, 17.879805, 18.741243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.714767, 17.926556, 19.667976>,  <11.396355, 18.285582, 19.031437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.714767, 17.926556, 19.667976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.926173, 17.887001, 19.330717>,  <12.053017, 17.863268, 19.128363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.926173, 17.887001, 19.330717>,  <11.714767, 17.926556, 19.667976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.926173, 17.887001, 19.330717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848251, 0.101082, 0.519858,
		0.033821, -0.989952, 0.137303,
		0.528513, -0.098885, -0.843146,
		12.084727, 17.857336, 19.077774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.220551, 17.468889, 19.894796>,  <11.714767, 17.926556, 19.667976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.220551, 17.468889, 19.894796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.329567, 17.675310, 19.569979>,  <12.394976, 17.799164, 19.375088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.329567, 17.675310, 19.569979>,  <12.220551, 17.468889, 19.894796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.329567, 17.675310, 19.569979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935564, 0.054875, 0.348868,
		0.224596, -0.854797, -0.467845,
		0.272538, 0.516053, -0.812042,
		12.411328, 17.830126, 19.326366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.925267, 17.343477, 19.792587>,  <12.220551, 17.468889, 19.894796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.925267, 17.343477, 19.792587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.863895, 17.690107, 19.602636>,  <12.827072, 17.898085, 19.488667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.863895, 17.690107, 19.602636>,  <12.925267, 17.343477, 19.792587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.863895, 17.690107, 19.602636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881264, 0.337397, 0.330963,
		0.447027, -0.367713, -0.815448,
		-0.153431, 0.866574, -0.474877,
		12.817866, 17.950079, 19.460173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.552317, 17.412636, 19.590927>,  <12.925267, 17.343477, 19.792587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.552317, 17.412636, 19.590927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.404095, 17.777376, 19.520254>,  <13.315162, 17.996222, 19.477850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.404095, 17.777376, 19.520254>,  <13.552317, 17.412636, 19.590927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.404095, 17.777376, 19.520254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868342, 0.407618, 0.282543,
		0.329655, -0.048722, -0.942843,
		-0.370554, 0.911852, -0.176680,
		13.292929, 18.050932, 19.467251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.081899, 17.804863, 19.242704>,  <13.552317, 17.412636, 19.590927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.081899, 17.804863, 19.242704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.831928, 18.077036, 19.395794>,  <13.681946, 18.240339, 19.487648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.831928, 18.077036, 19.395794>,  <14.081899, 17.804863, 19.242704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.831928, 18.077036, 19.395794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777469, 0.586880, 0.226084,
		-0.070778, 0.438841, -0.895773,
		-0.624927, 0.680433, 0.382723,
		13.644450, 18.281166, 19.510611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.377653, 18.420914, 19.069912>,  <14.081899, 17.804863, 19.242704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.377653, 18.420914, 19.069912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.140450, 18.507330, 19.380180>,  <13.998127, 18.559179, 19.566341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.140450, 18.507330, 19.380180>,  <14.377653, 18.420914, 19.069912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.140450, 18.507330, 19.380180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734081, 0.540889, 0.410565,
		-0.330854, 0.812875, -0.479343,
		-0.593010, 0.216039, 0.775672,
		13.962546, 18.572142, 19.612883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.439683, 19.109863, 19.098925>,  <14.377653, 18.420914, 19.069912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.439683, 19.109863, 19.098925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.291198, 18.995771, 19.452387>,  <14.202106, 18.927317, 19.664463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.291198, 18.995771, 19.452387>,  <14.439683, 19.109863, 19.098925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.291198, 18.995771, 19.452387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621646, 0.630575, 0.464685,
		-0.689752, 0.721817, -0.056768,
		-0.371214, -0.285227, 0.883655,
		14.179833, 18.910204, 19.717484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.238993, 19.707489, 19.515469>,  <14.439683, 19.109863, 19.098925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.238993, 19.707489, 19.515469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.316499, 19.428034, 19.790964>,  <14.363003, 19.260361, 19.956261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.316499, 19.428034, 19.790964>,  <14.238993, 19.707489, 19.515469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.316499, 19.428034, 19.790964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551459, 0.658197, 0.512514,
		-0.811387, 0.280503, 0.512806,
		0.193765, -0.698638, 0.688738,
		14.374628, 19.218443, 19.997585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.319578, 20.087208, 20.105553>,  <14.238993, 19.707489, 19.515469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.319578, 20.087208, 20.105553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.472915, 19.738920, 20.228777>,  <14.564917, 19.529947, 20.302711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.472915, 19.738920, 20.228777>,  <14.319578, 20.087208, 20.105553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.472915, 19.738920, 20.228777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433733, 0.464187, 0.772273,
		-0.815429, -0.162427, 0.555601,
		0.383341, -0.870717, 0.308061,
		14.587917, 19.477705, 20.321196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.266844, 20.176950, 20.748175>,  <14.319578, 20.087208, 20.105553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.266844, 20.176950, 20.748175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.531633, 19.880152, 20.705786>,  <14.690507, 19.702072, 20.680353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.531633, 19.880152, 20.705786>,  <14.266844, 20.176950, 20.748175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.531633, 19.880152, 20.705786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555116, 0.390347, 0.734490,
		-0.503625, -0.545038, 0.670295,
		0.661973, -0.741999, -0.105971,
		14.730226, 19.657553, 20.673994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.519889, 19.990711, 21.485998>,  <14.266844, 20.176950, 20.748175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.519889, 19.990711, 21.485998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.790349, 19.804346, 21.257702>,  <14.952625, 19.692528, 21.120724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.790349, 19.804346, 21.257702>,  <14.519889, 19.990711, 21.485998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.790349, 19.804346, 21.257702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701795, 0.171461, 0.691437,
		-0.224288, -0.868059, 0.442908,
		0.676150, -0.465912, -0.570743,
		14.993194, 19.664572, 21.086479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.858639, 19.469690, 21.900219>,  <14.519889, 19.990711, 21.485998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.858639, 19.469690, 21.900219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.103005, 19.550274, 21.593966>,  <15.249625, 19.598623, 21.410213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.103005, 19.550274, 21.593966>,  <14.858639, 19.469690, 21.900219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.103005, 19.550274, 21.593966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773561, 0.053896, 0.631425,
		0.168471, -0.978013, -0.122914,
		0.610918, 0.201459, -0.765633,
		15.286281, 19.610712, 21.364275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.382082, 19.116892, 21.945662>,  <14.858639, 19.469690, 21.900219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.382082, 19.116892, 21.945662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.522275, 19.425238, 21.732899>,  <15.606391, 19.610245, 21.605240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.522275, 19.425238, 21.732899>,  <15.382082, 19.116892, 21.945662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.522275, 19.425238, 21.732899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617965, 0.236420, 0.749817,
		0.703762, -0.591499, -0.393507,
		0.350483, 0.770866, -0.531909,
		15.627419, 19.656498, 21.573326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.045855, 19.018385, 21.967495>,  <15.382082, 19.116892, 21.945662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.045855, 19.018385, 21.967495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.050846, 19.407576, 21.875267>,  <16.053841, 19.641090, 21.819929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.050846, 19.407576, 21.875267>,  <16.045855, 19.018385, 21.967495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.050846, 19.407576, 21.875267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441232, 0.201567, 0.874462,
		0.897306, -0.112648, -0.426793,
		0.012479, 0.972975, -0.230571,
		16.054590, 19.699469, 21.806095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.714813, 19.238609, 22.078693>,  <16.045855, 19.018385, 21.967495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.714813, 19.238609, 22.078693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.499619, 19.575666, 22.069521>,  <16.370502, 19.777901, 22.064018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.499619, 19.575666, 22.069521>,  <16.714813, 19.238609, 22.078693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.499619, 19.575666, 22.069521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471133, 0.323129, 0.820745,
		0.699003, 0.430747, -0.570835,
		-0.537986, 0.842642, -0.022929,
		16.338223, 19.828459, 22.062643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.182842, 19.789600, 22.189526>,  <16.714813, 19.238609, 22.078693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.182842, 19.789600, 22.189526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.831125, 19.959522, 22.275681>,  <16.620096, 20.061476, 22.327374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.831125, 19.959522, 22.275681>,  <17.182842, 19.789600, 22.189526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.831125, 19.959522, 22.275681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399932, 0.412937, 0.818253,
		0.258656, 0.805621, -0.532984,
		-0.879290, 0.424803, 0.215385,
		16.567339, 20.086964, 22.340296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.419321, 20.339888, 22.398090>,  <17.182842, 19.789600, 22.189526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.419321, 20.339888, 22.398090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.038115, 20.353268, 22.518518>,  <16.809391, 20.361296, 22.590775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.038115, 20.353268, 22.518518>,  <17.419321, 20.339888, 22.398090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.038115, 20.353268, 22.518518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284177, 0.442924, 0.850330,
		-0.104909, 0.895935, -0.431618,
		-0.953015, 0.033449, 0.301071,
		16.752211, 20.363302, 22.608839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.394501, 20.900211, 22.889309>,  <17.419321, 20.339888, 22.398090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.394501, 20.900211, 22.889309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.045818, 20.712631, 22.946178>,  <16.836609, 20.600084, 22.980301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.045818, 20.712631, 22.946178>,  <17.394501, 20.900211, 22.889309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.045818, 20.712631, 22.946178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011802, 0.269962, 0.962799,
		-0.489885, 0.840956, -0.229793,
		-0.871707, -0.468949, 0.142175,
		16.784306, 20.571947, 22.988831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.864971, 21.374992, 23.104858>,  <17.394501, 20.900211, 22.889309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.864971, 21.374992, 23.104858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.779009, 21.014143, 23.254517>,  <16.727432, 20.797632, 23.344311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.779009, 21.014143, 23.254517>,  <16.864971, 21.374992, 23.104858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.779009, 21.014143, 23.254517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132886, 0.352524, 0.926319,
		-0.967552, 0.248789, 0.044121,
		-0.214904, -0.902126, 0.374146,
		16.714539, 20.743505, 23.366760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.286783, 21.414524, 23.586788>,  <16.864971, 21.374992, 23.104858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.286783, 21.414524, 23.586788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463869, 21.067074, 23.675779>,  <16.570120, 20.858604, 23.729174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463869, 21.067074, 23.675779>,  <16.286783, 21.414524, 23.586788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.463869, 21.067074, 23.675779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066253, 0.279129, 0.957965,
		-0.894212, -0.409364, 0.181123,
		0.442714, -0.868624, 0.222479,
		16.596684, 20.806486, 23.742523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.914371, 21.221504, 24.151152>,  <16.286783, 21.414524, 23.586788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.914371, 21.221504, 24.151152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.275723, 21.050043, 24.156252>,  <16.492533, 20.947166, 24.159313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.275723, 21.050043, 24.156252>,  <15.914371, 21.221504, 24.151152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.275723, 21.050043, 24.156252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103931, 0.247690, 0.963249,
		-0.416059, -0.868853, 0.268309,
		0.903379, -0.428654, 0.012753,
		16.546736, 20.921448, 24.160078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.888101, 20.840044, 24.706861>,  <15.914371, 21.221504, 24.151152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.888101, 20.840044, 24.706861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.277205, 20.855511, 24.615433>,  <16.510666, 20.864790, 24.560575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.277205, 20.855511, 24.615433>,  <15.888101, 20.840044, 24.706861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.277205, 20.855511, 24.615433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212821, 0.241944, 0.946663,
		0.091903, -0.969520, 0.227125,
		0.972759, 0.038664, -0.228569,
		16.569033, 20.867109, 24.546862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.241119, 20.711950, 25.340498>,  <15.888101, 20.840044, 24.706861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.241119, 20.711950, 25.340498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.564808, 20.813530, 25.128584>,  <16.759022, 20.874477, 25.001436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.564808, 20.813530, 25.128584>,  <16.241119, 20.711950, 25.340498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.564808, 20.813530, 25.128584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521489, 0.104820, 0.846795,
		0.270575, -0.961521, -0.047610,
		0.809221, 0.253950, -0.529783,
		16.807575, 20.889715, 24.969648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.791063, 20.338049, 25.594973>,  <16.241119, 20.711950, 25.340498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.791063, 20.338049, 25.594973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.966202, 20.645424, 25.408300>,  <17.071285, 20.829849, 25.296297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.966202, 20.645424, 25.408300>,  <16.791063, 20.338049, 25.594973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.966202, 20.645424, 25.408300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562925, 0.170414, 0.808749,
		0.701003, -0.616816, -0.357958,
		0.437848, 0.768438, -0.466681,
		17.097557, 20.875956, 25.268295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.482306, 20.293684, 25.652346>,  <16.791063, 20.338049, 25.594973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.482306, 20.293684, 25.652346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.383972, 20.679861, 25.617744>,  <17.324972, 20.911568, 25.596983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.383972, 20.679861, 25.617744>,  <17.482306, 20.293684, 25.652346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.383972, 20.679861, 25.617744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539971, 0.210513, 0.814933,
		0.804983, 0.153630, -0.573063,
		-0.245835, 0.965444, -0.086503,
		17.310221, 20.969494, 25.591793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.104464, 20.633144, 25.732042>,  <17.482306, 20.293684, 25.652346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.104464, 20.633144, 25.732042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.830389, 20.922754, 25.763815>,  <17.665945, 21.096519, 25.782879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.830389, 20.922754, 25.763815>,  <18.104464, 20.633144, 25.732042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.830389, 20.922754, 25.763815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575709, 0.471545, 0.667986,
		0.446182, 0.503424, -0.739923,
		-0.685187, 0.724023, 0.079430,
		17.624832, 21.139961, 25.787643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.402868, 21.284069, 25.479870>,  <18.104464, 20.633144, 25.732042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.402868, 21.284069, 25.479870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.098253, 21.354721, 25.729305>,  <17.915483, 21.397112, 25.878967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.098253, 21.354721, 25.729305>,  <18.402868, 21.284069, 25.479870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.098253, 21.354721, 25.729305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589045, 0.589957, 0.552247,
		-0.270347, 0.787879, -0.553317,
		-0.761537, 0.176630, 0.623589,
		17.869793, 21.407711, 25.916382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.553726, 21.964279, 25.629475>,  <18.402868, 21.284069, 25.479870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.553726, 21.964279, 25.629475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.298658, 21.837618, 25.910362>,  <18.145618, 21.761621, 26.078894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.298658, 21.837618, 25.910362>,  <18.553726, 21.964279, 25.629475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.298658, 21.837618, 25.910362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490952, 0.535398, 0.687252,
		-0.593588, 0.782994, -0.185943,
		-0.637668, -0.316655, 0.702217,
		18.107359, 21.742620, 26.121027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.460335, 22.587824, 26.042067>,  <18.553726, 21.964279, 25.629475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.460335, 22.587824, 26.042067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.318455, 22.270786, 26.240454>,  <18.233328, 22.080564, 26.359486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.318455, 22.270786, 26.240454>,  <18.460335, 22.587824, 26.042067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.318455, 22.270786, 26.240454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260614, 0.425623, 0.866559,
		-0.897925, 0.436624, 0.055592,
		-0.354699, -0.792593, 0.495968,
		18.212046, 22.033009, 26.389244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.977968, 22.742966, 26.591032>,  <18.460335, 22.587824, 26.042067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.977968, 22.742966, 26.591032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.105659, 22.382023, 26.706854>,  <18.182274, 22.165457, 26.776348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.105659, 22.382023, 26.706854>,  <17.977968, 22.742966, 26.591032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.105659, 22.382023, 26.706854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287503, 0.383359, 0.877712,
		-0.903015, -0.196942, 0.381810,
		0.319228, -0.902358, 0.289557,
		18.201427, 22.111315, 26.793720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635599, 22.592199, 27.203379>,  <17.977968, 22.742966, 26.591032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635599, 22.592199, 27.203379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.953239, 22.349262, 27.212690>,  <18.143824, 22.203501, 27.218277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.953239, 22.349262, 27.212690>,  <17.635599, 22.592199, 27.203379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.953239, 22.349262, 27.212690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213993, 0.315235, 0.924572,
		-0.568869, -0.729221, 0.380295,
		0.794100, -0.607341, 0.023279,
		18.191469, 22.167061, 27.219675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.606466, 22.265503, 27.859121>,  <17.635599, 22.592199, 27.203379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.606466, 22.265503, 27.859121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.981157, 22.261847, 27.719145>,  <18.205973, 22.259653, 27.635159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.981157, 22.261847, 27.719145>,  <17.606466, 22.265503, 27.859121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.981157, 22.261847, 27.719145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327693, 0.374485, 0.867397,
		0.123118, -0.927188, 0.353786,
		0.936728, -0.009141, -0.349939,
		18.262177, 22.259104, 27.614162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.077793, 21.927103, 28.451912>,  <17.606466, 22.265503, 27.859121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.077793, 21.927103, 28.451912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.339426, 22.119547, 28.218430>,  <18.496407, 22.235012, 28.078341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.339426, 22.119547, 28.218430>,  <18.077793, 21.927103, 28.451912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.339426, 22.119547, 28.218430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582779, 0.171426, 0.794343,
		0.482227, -0.859737, -0.168253,
		0.654083, 0.481108, -0.583704,
		18.535650, 22.263880, 28.043318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.663334, 21.662710, 28.745687>,  <18.077793, 21.927103, 28.451912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.663334, 21.662710, 28.745687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.793631, 21.979383, 28.538948>,  <18.871809, 22.169388, 28.414904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.793631, 21.979383, 28.538948>,  <18.663334, 21.662710, 28.745687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.793631, 21.979383, 28.538948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668800, 0.193455, 0.717831,
		0.668280, -0.579496, -0.466460,
		0.325742, 0.791681, -0.516849,
		18.891354, 22.216888, 28.383894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.317179, 21.562574, 28.688053>,  <18.663334, 21.662710, 28.745687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.317179, 21.562574, 28.688053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.280647, 21.948473, 28.589323>,  <19.258728, 22.180012, 28.530085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.280647, 21.948473, 28.589323>,  <19.317179, 21.562574, 28.688053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.280647, 21.948473, 28.589323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750068, 0.229681, 0.620197,
		0.655025, -0.128493, -0.744602,
		-0.091330, 0.964747, -0.246825,
		19.253248, 22.237898, 28.515276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.993469, 21.839901, 28.476473>,  <19.317179, 21.562574, 28.688053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.993469, 21.839901, 28.476473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.781879, 22.155354, 28.601852>,  <19.654926, 22.344625, 28.677080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.781879, 22.155354, 28.601852>,  <19.993469, 21.839901, 28.476473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.781879, 22.155354, 28.601852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774066, 0.296972, 0.559133,
		0.347863, 0.538397, -0.767542,
		-0.528974, 0.788629, 0.313449,
		19.623188, 22.391943, 28.695887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.512403, 22.390846, 28.533804>,  <19.993469, 21.839901, 28.476473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.512403, 22.390846, 28.533804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.210539, 22.580008, 28.715727>,  <20.029421, 22.693504, 28.824881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.210539, 22.580008, 28.715727>,  <20.512403, 22.390846, 28.533804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.210539, 22.580008, 28.715727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644550, 0.404777, 0.648622,
		0.122639, 0.782636, -0.610278,
		-0.754662, 0.472902, 0.454807,
		19.984140, 22.721878, 28.852169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.726917, 23.062403, 28.698776>,  <20.512403, 22.390846, 28.533804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.726917, 23.062403, 28.698776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.431028, 23.002655, 28.961226>,  <20.253494, 22.966806, 29.118694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.431028, 23.002655, 28.961226>,  <20.726917, 23.062403, 28.698776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.431028, 23.002655, 28.961226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513831, 0.504206, 0.694085,
		-0.434496, 0.850568, -0.296222,
		-0.739723, -0.149369, 0.656124,
		20.209112, 22.957844, 29.158062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.557196, 23.699760, 29.020092>,  <20.726917, 23.062403, 28.698776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.557196, 23.699760, 29.020092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.464682, 23.406984, 29.276459>,  <20.409174, 23.231319, 29.430279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.464682, 23.406984, 29.276459>,  <20.557196, 23.699760, 29.020092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.464682, 23.406984, 29.276459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474043, 0.490500, 0.731227,
		-0.849583, 0.472943, 0.233526,
		-0.231284, -0.731939, 0.640916,
		20.395296, 23.187403, 29.468733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.456341, 24.052410, 29.704638>,  <20.557196, 23.699760, 29.020092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.456341, 24.052410, 29.704638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.531321, 23.670458, 29.796780>,  <20.576307, 23.441286, 29.852066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.531321, 23.670458, 29.796780>,  <20.456341, 24.052410, 29.704638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.531321, 23.670458, 29.796780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641547, 0.296598, 0.707423,
		-0.743828, 0.015180, 0.668198,
		0.187448, -0.954882, 0.230356,
		20.587555, 23.383993, 29.865887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.358059, 23.861593, 30.456537>,  <20.456341, 24.052410, 29.704638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.358059, 23.861593, 30.456537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.638035, 23.630947, 30.287970>,  <20.806021, 23.492559, 30.186829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.638035, 23.630947, 30.287970>,  <20.358059, 23.861593, 30.456537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.638035, 23.630947, 30.287970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662681, 0.304299, 0.684293,
		-0.266337, -0.758232, 0.595104,
		0.699942, -0.576617, -0.421420,
		20.848017, 23.457962, 30.161543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.518175, 23.438320, 30.959211>,  <20.358059, 23.861593, 30.456537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.518175, 23.438320, 30.959211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.808334, 23.437237, 30.683882>,  <20.982430, 23.436586, 30.518684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.808334, 23.437237, 30.683882>,  <20.518175, 23.438320, 30.959211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.808334, 23.437237, 30.683882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589561, 0.518576, 0.619271,
		0.355271, -0.855027, 0.377771,
		0.725396, -0.002710, -0.688326,
		21.025953, 23.436424, 30.477385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.141283, 23.071968, 31.218540>,  <20.518175, 23.438320, 30.959211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.141283, 23.071968, 31.218540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.193502, 23.392159, 30.984552>,  <21.224834, 23.584274, 30.844160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.193502, 23.392159, 30.984552>,  <21.141283, 23.071968, 31.218540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.193502, 23.392159, 30.984552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620728, 0.394080, 0.677789,
		0.773081, -0.451592, -0.445433,
		0.130548, 0.800478, -0.584971,
		21.232666, 23.632301, 30.809061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.428688, 22.867052, 31.817883>,  <21.141283, 23.071968, 31.218540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.428688, 22.867052, 31.817883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.508812, 22.519892, 31.999706>,  <21.556887, 22.311596, 32.108799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.508812, 22.519892, 31.999706>,  <21.428688, 22.867052, 31.817883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.508812, 22.519892, 31.999706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375793, -0.360413, -0.853746,
		0.904796, 0.341834, 0.253957,
		0.200309, -0.867901, 0.454559,
		21.568905, 22.259521, 32.136074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.048431, 22.797396, 31.961304>,  <21.428688, 22.867052, 31.817883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.048431, 22.797396, 31.961304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.915094, 22.423866, 31.909372>,  <21.835093, 22.199749, 31.878214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.915094, 22.423866, 31.909372>,  <22.048431, 22.797396, 31.961304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.915094, 22.423866, 31.909372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591485, -0.099903, -0.800103,
		0.734185, -0.343500, 0.585645,
		-0.333343, -0.933824, -0.129828,
		21.815092, 22.143719, 31.870424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.247190, 23.571774, 31.635386>,  <22.048431, 22.797396, 31.961304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.247190, 23.571774, 31.635386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.438196, 23.271030, 31.817236>,  <22.552799, 23.090584, 31.926346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.438196, 23.271030, 31.817236>,  <22.247190, 23.571774, 31.635386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.438196, 23.271030, 31.817236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146049, -0.578155, -0.802750,
		0.866400, 0.316928, -0.385887,
		0.477516, -0.751860, 0.454626,
		22.581451, 23.045473, 31.953625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.503796, 23.209335, 31.080914>,  <22.247190, 23.571774, 31.635386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.503796, 23.209335, 31.080914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.521179, 22.949421, 31.384462>,  <22.531609, 22.793472, 31.566591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.521179, 22.949421, 31.384462>,  <22.503796, 23.209335, 31.080914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.521179, 22.949421, 31.384462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229311, -0.745798, -0.625462,
		0.972383, -0.146837, -0.181414,
		0.043457, -0.649788, 0.758872,
		22.534216, 22.754484, 31.612123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.816795, 22.567154, 30.853573>,  <22.503796, 23.209335, 31.080914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.816795, 22.567154, 30.853573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.630175, 22.434900, 31.181721>,  <22.518202, 22.355549, 31.378611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.630175, 22.434900, 31.181721>,  <22.816795, 22.567154, 30.853573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.630175, 22.434900, 31.181721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291157, -0.818403, -0.495424,
		0.835197, -0.469999, 0.285563,
		-0.466554, -0.330633, 0.820371,
		22.490208, 22.335711, 31.427832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.055088, 21.853973, 30.882751>,  <22.816795, 22.567154, 30.853573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.055088, 21.853973, 30.882751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.708326, 21.917219, 31.071844>,  <22.500269, 21.955168, 31.185299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.708326, 21.917219, 31.071844>,  <23.055088, 21.853973, 30.882751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.708326, 21.917219, 31.071844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382385, -0.819325, -0.427186,
		0.319775, -0.551095, 0.770738,
		-0.866905, 0.158116, 0.472731,
		22.448256, 21.964653, 31.213663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.952076, 21.385639, 31.325785>,  <23.055088, 21.853973, 30.882751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.952076, 21.385639, 31.325785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.602989, 21.531597, 31.196039>,  <22.393538, 21.619173, 31.118191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.602989, 21.531597, 31.196039>,  <22.952076, 21.385639, 31.325785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.602989, 21.531597, 31.196039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178829, -0.857121, -0.483077,
		-0.454294, -0.363584, 0.813279,
		-0.872719, 0.364897, -0.324366,
		22.341173, 21.641066, 31.098730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.749849, 20.722452, 31.090042>,  <22.952076, 21.385639, 31.325785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.749849, 20.722452, 31.090042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.480160, 20.983574, 30.951902>,  <22.318346, 21.140247, 30.869019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.480160, 20.983574, 30.951902>,  <22.749849, 20.722452, 31.090042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.480160, 20.983574, 30.951902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434316, -0.728689, -0.529511,
		-0.597319, -0.207020, 0.774824,
		-0.674225, 0.652806, -0.345348,
		22.277893, 21.179417, 30.848297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.094833, 20.534317, 31.245102>,  <22.749849, 20.722452, 31.090042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.094833, 20.534317, 31.245102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.043724, 20.782772, 30.935816>,  <22.013058, 20.931845, 30.750244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.043724, 20.782772, 30.935816>,  <22.094833, 20.534317, 31.245102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.043724, 20.782772, 30.935816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587736, -0.675395, -0.445430,
		-0.798899, 0.397532, 0.451362,
		-0.127775, 0.621136, -0.773217,
		22.005392, 20.969112, 30.703852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.512703, 20.352285, 30.969322>,  <22.094833, 20.534317, 31.245102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.512703, 20.352285, 30.969322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.622814, 20.599888, 30.675097>,  <21.688881, 20.748449, 30.498562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.622814, 20.599888, 30.675097>,  <21.512703, 20.352285, 30.969322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.622814, 20.599888, 30.675097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554746, -0.522610, -0.647406,
		-0.785161, 0.586268, 0.199528,
		0.275278, 0.619006, -0.735563,
		21.705399, 20.785589, 30.454428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.868992, 20.534475, 30.630404>,  <21.512703, 20.352285, 30.969322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.868992, 20.534475, 30.630404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.168947, 20.613806, 30.377951>,  <21.348921, 20.661404, 30.226479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.168947, 20.613806, 30.377951>,  <20.868992, 20.534475, 30.630404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.168947, 20.613806, 30.377951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455072, -0.537806, -0.709700,
		-0.480181, 0.819409, -0.313042,
		0.749891, 0.198328, -0.631134,
		21.393915, 20.673304, 30.188610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.639626, 20.723898, 30.057072>,  <20.868992, 20.534475, 30.630404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.639626, 20.723898, 30.057072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.007647, 20.649406, 29.919188>,  <21.228458, 20.604712, 29.836458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.007647, 20.649406, 29.919188>,  <20.639626, 20.723898, 30.057072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.007647, 20.649406, 29.919188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388934, -0.327961, -0.860913,
		0.047274, 0.926154, -0.374171,
		0.920052, -0.186227, -0.344709,
		21.283663, 20.593538, 29.815775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.719828, 21.002895, 29.474766>,  <20.639626, 20.723898, 30.057072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.719828, 21.002895, 29.474766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.991398, 20.711113, 29.441422>,  <21.154341, 20.536043, 29.421415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.991398, 20.711113, 29.441422>,  <20.719828, 21.002895, 29.474766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.991398, 20.711113, 29.441422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451570, -0.325345, -0.830804,
		0.578915, 0.601699, -0.550287,
		0.678927, -0.729458, -0.083363,
		21.195076, 20.492275, 29.416412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.830296, 20.832539, 28.738119>,  <20.719828, 21.002895, 29.474766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.830296, 20.832539, 28.738119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.995440, 20.507965, 28.903585>,  <21.094526, 20.313221, 29.002865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.995440, 20.507965, 28.903585>,  <20.830296, 20.832539, 28.738119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.995440, 20.507965, 28.903585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225198, -0.531028, -0.816882,
		0.882514, 0.244102, -0.401974,
		0.412862, -0.811433, 0.413668,
		21.119299, 20.264536, 29.027685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.313334, 20.602173, 28.195517>,  <20.830296, 20.832539, 28.738119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.313334, 20.602173, 28.195517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.242710, 20.303881, 28.452488>,  <21.200336, 20.124905, 28.606670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.242710, 20.303881, 28.452488>,  <21.313334, 20.602173, 28.195517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.242710, 20.303881, 28.452488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424228, -0.531295, -0.733319,
		0.888177, -0.402009, -0.222556,
		-0.176558, -0.745731, 0.642427,
		21.189743, 20.080162, 28.645216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.534153, 20.048061, 27.873100>,  <21.313334, 20.602173, 28.195517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.534153, 20.048061, 27.873100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.279581, 19.879326, 28.131405>,  <21.126839, 19.778084, 28.286388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.279581, 19.879326, 28.131405>,  <21.534153, 20.048061, 27.873100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.279581, 19.879326, 28.131405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343088, -0.595008, -0.726812,
		0.690832, -0.684118, 0.233953,
		-0.636429, -0.421839, 0.645763,
		21.088652, 19.752773, 28.325134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.502300, 19.394899, 27.711502>,  <21.534153, 20.048061, 27.873100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.502300, 19.394899, 27.711502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.175982, 19.396391, 27.942831>,  <20.980190, 19.397285, 28.081629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.175982, 19.396391, 27.942831>,  <21.502300, 19.394899, 27.711502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.175982, 19.396391, 27.942831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402685, -0.721413, -0.563390,
		0.415110, -0.692495, 0.590029,
		-0.815799, 0.003727, 0.578324,
		20.931242, 19.397509, 28.116327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.331097, 18.642851, 27.748165>,  <21.502300, 19.394899, 27.711502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.331097, 18.642851, 27.748165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.995476, 18.848902, 27.818182>,  <20.794104, 18.972532, 27.860191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.995476, 18.848902, 27.818182>,  <21.331097, 18.642851, 27.748165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.995476, 18.848902, 27.818182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493589, -0.585425, -0.643154,
		-0.228832, -0.626038, 0.745461,
		-0.839050, 0.515126, 0.175042,
		20.743761, 19.003439, 27.870695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.780157, 18.153868, 27.885563>,  <21.331097, 18.642851, 27.748165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.780157, 18.153868, 27.885563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.594316, 18.491528, 27.778564>,  <20.482811, 18.694124, 27.714365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.594316, 18.491528, 27.778564>,  <20.780157, 18.153868, 27.885563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.594316, 18.491528, 27.778564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624077, -0.526445, -0.577393,
		-0.628229, -0.101320, 0.771403,
		-0.464603, 0.844150, -0.267496,
		20.454935, 18.744772, 27.698315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.124214, 18.016991, 27.877668>,  <20.780157, 18.153868, 27.885563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.124214, 18.016991, 27.877668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.103090, 18.355474, 27.665577>,  <20.090416, 18.558565, 27.538322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.103090, 18.355474, 27.665577>,  <20.124214, 18.016991, 27.877668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.103090, 18.355474, 27.665577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649962, -0.432231, -0.625081,
		-0.758130, 0.311616, 0.572830,
		-0.052810, 0.846210, -0.530226,
		20.087248, 18.609337, 27.506510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.472235, 18.154739, 27.764460>,  <20.124214, 18.016991, 27.877668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.472235, 18.154739, 27.764460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.662035, 18.378572, 27.492659>,  <19.775915, 18.512873, 27.329578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.662035, 18.378572, 27.492659>,  <19.472235, 18.154739, 27.764460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.662035, 18.378572, 27.492659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645612, -0.303495, -0.700768,
		-0.598361, 0.771207, 0.217264,
		0.474498, 0.559581, -0.679501,
		19.804384, 18.546446, 27.288809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.913027, 18.521753, 27.412708>,  <19.472235, 18.154739, 27.764460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.913027, 18.521753, 27.412708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.245388, 18.509050, 27.190504>,  <19.444805, 18.501429, 27.057182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.245388, 18.509050, 27.190504>,  <18.913027, 18.521753, 27.412708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.245388, 18.509050, 27.190504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513693, -0.427443, -0.743916,
		-0.213823, 0.903484, -0.371478,
		0.830902, -0.031759, -0.555511,
		19.494659, 18.499523, 27.023851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.680458, 18.683031, 26.698833>,  <18.913027, 18.521753, 27.412708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.680458, 18.683031, 26.698833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.032166, 18.494225, 26.673267>,  <19.243191, 18.380941, 26.657928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.032166, 18.494225, 26.673267>,  <18.680458, 18.683031, 26.698833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.032166, 18.494225, 26.673267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337373, -0.522419, -0.783108,
		0.336251, 0.710125, -0.618593,
		0.879270, -0.472017, -0.063913,
		19.295946, 18.352619, 26.654093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.759144, 18.641706, 26.042515>,  <18.680458, 18.683031, 26.698833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.759144, 18.641706, 26.042515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.032780, 18.375048, 26.160908>,  <19.196960, 18.215054, 26.231943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.032780, 18.375048, 26.160908>,  <18.759144, 18.641706, 26.042515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.032780, 18.375048, 26.160908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318548, -0.638101, -0.700966,
		0.656162, 0.385240, -0.648877,
		0.684090, -0.666646, 0.295980,
		19.238007, 18.175055, 26.249702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.010027, 18.462360, 25.466284>,  <18.759144, 18.641706, 26.042515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.010027, 18.462360, 25.466284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.080181, 18.184010, 25.744850>,  <19.122272, 18.016998, 25.911989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.080181, 18.184010, 25.744850>,  <19.010027, 18.462360, 25.466284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.080181, 18.184010, 25.744850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265957, -0.714568, -0.647039,
		0.947896, -0.071736, -0.310398,
		0.175384, -0.695878, 0.696415,
		19.132797, 17.975246, 25.953775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.424440, 17.979626, 25.138449>,  <19.010027, 18.462360, 25.466284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.424440, 17.979626, 25.138449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.273773, 17.765528, 25.440876>,  <19.183372, 17.637070, 25.622332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.273773, 17.765528, 25.440876>,  <19.424440, 17.979626, 25.138449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.273773, 17.765528, 25.440876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435152, -0.618288, -0.654495,
		0.817781, -0.575530, -0.000024,
		-0.376666, -0.535244, 0.756067,
		19.160772, 17.604956, 25.667696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.594288, 17.231272, 25.079720>,  <19.424440, 17.979626, 25.138449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.594288, 17.231272, 25.079720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.257622, 17.229118, 25.295710>,  <19.055622, 17.227825, 25.425303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.257622, 17.229118, 25.295710>,  <19.594288, 17.231272, 25.079720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.257622, 17.229118, 25.295710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428500, -0.601856, -0.673912,
		0.328615, -0.798587, 0.504253,
		-0.841665, -0.005385, 0.539973,
		19.005123, 17.227503, 25.457701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.306477, 16.559021, 24.950100>,  <19.594288, 17.231272, 25.079720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.306477, 16.559021, 24.950100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.013746, 16.776506, 25.114443>,  <18.838108, 16.906998, 25.213049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.013746, 16.776506, 25.114443>,  <19.306477, 16.559021, 24.950100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.013746, 16.776506, 25.114443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658097, -0.407232, -0.633301,
		-0.177022, -0.733850, 0.655841,
		-0.731828, 0.543715, 0.410856,
		18.794197, 16.939621, 25.237700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.730425, 16.087965, 25.125999>,  <19.306477, 16.559021, 24.950100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.730425, 16.087965, 25.125999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.572559, 16.454964, 25.106243>,  <18.477840, 16.675163, 25.094389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.572559, 16.454964, 25.106243>,  <18.730425, 16.087965, 25.125999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.572559, 16.454964, 25.106243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509719, -0.263349, -0.819045,
		-0.764478, -0.298071, 0.571600,
		-0.394664, 0.917497, -0.049392,
		18.454161, 16.730213, 25.091425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.007866, 15.974545, 25.115627>,  <18.730425, 16.087965, 25.125999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.007866, 15.974545, 25.115627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.057243, 16.335546, 24.950583>,  <18.086870, 16.552147, 24.851555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.057243, 16.335546, 24.950583>,  <18.007866, 15.974545, 25.115627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.057243, 16.335546, 24.950583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679952, -0.225923, -0.697584,
		-0.722791, 0.366670, 0.585770,
		0.123445, 0.902503, -0.412613,
		18.094276, 16.606297, 24.826799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.288088, 16.216213, 24.892052>,  <18.007866, 15.974545, 25.115627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.288088, 16.216213, 24.892052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.509590, 16.474716, 24.682022>,  <17.642492, 16.629818, 24.556004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.509590, 16.474716, 24.682022>,  <17.288088, 16.216213, 24.892052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.509590, 16.474716, 24.682022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783223, 0.190175, -0.591942,
		-0.282692, 0.739042, 0.611476,
		0.553757, 0.646259, -0.525074,
		17.675718, 16.668594, 24.524500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.853510, 16.756506, 24.672209>,  <17.288088, 16.216213, 24.892052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.853510, 16.756506, 24.672209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.157703, 16.840923, 24.426565>,  <17.340219, 16.891573, 24.279179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.157703, 16.840923, 24.426565>,  <16.853510, 16.756506, 24.672209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.157703, 16.840923, 24.426565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646795, 0.162233, -0.745209,
		-0.057643, 0.963919, 0.259878,
		0.760482, 0.211044, -0.614107,
		17.385849, 16.904236, 24.242332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.703510, 17.350018, 24.307922>,  <16.853510, 16.756506, 24.672209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.703510, 17.350018, 24.307922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.975821, 17.177517, 24.071089>,  <17.139208, 17.074017, 23.928989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.975821, 17.177517, 24.071089>,  <16.703510, 17.350018, 24.307922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.975821, 17.177517, 24.071089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644020, 0.032698, -0.764309,
		0.348970, 0.901639, -0.255475,
		0.680777, -0.431252, -0.592084,
		17.180054, 17.048141, 23.893463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.709444, 17.799868, 23.695654>,  <16.703510, 17.350018, 24.307922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.709444, 17.799868, 23.695654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.853958, 17.444038, 23.583843>,  <16.940666, 17.230541, 23.516758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.853958, 17.444038, 23.583843>,  <16.709444, 17.799868, 23.695654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.853958, 17.444038, 23.583843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625922, -0.009164, -0.779832,
		0.691156, 0.456701, -0.560114,
		0.361283, -0.889573, -0.279525,
		16.962343, 17.177166, 23.499985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.722672, 17.798061, 22.949408>,  <16.709444, 17.799868, 23.695654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.722672, 17.798061, 22.949408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.735474, 17.410807, 23.048758>,  <16.743155, 17.178453, 23.108368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.735474, 17.410807, 23.048758>,  <16.722672, 17.798061, 22.949408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.735474, 17.410807, 23.048758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580259, -0.220332, -0.784062,
		0.813803, -0.119026, -0.568821,
		0.032005, -0.968135, 0.248373,
		16.745075, 17.120365, 23.123270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.867584, 17.392704, 22.336407>,  <16.722672, 17.798061, 22.949408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.867584, 17.392704, 22.336407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.692064, 17.128317, 22.579906>,  <16.586752, 16.969685, 22.726006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.692064, 17.128317, 22.579906>,  <16.867584, 17.392704, 22.336407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.692064, 17.128317, 22.579906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507526, -0.376748, -0.774905,
		0.741533, -0.648985, -0.170141,
		-0.438802, -0.660968, 0.608747,
		16.560423, 16.930027, 22.762531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.869148, 16.753361, 21.925879>,  <16.867584, 17.392704, 22.336407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.869148, 16.753361, 21.925879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.600618, 16.674412, 22.211639>,  <16.439501, 16.627043, 22.383095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.600618, 16.674412, 22.211639>,  <16.869148, 16.753361, 21.925879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.600618, 16.674412, 22.211639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563032, -0.491033, -0.664742,
		0.481996, -0.848487, 0.218515,
		-0.671323, -0.197372, 0.714401,
		16.399221, 16.615200, 22.425961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.759632, 15.983678, 21.934649>,  <16.869148, 16.753361, 21.925879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.759632, 15.983678, 21.934649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.449661, 16.183355, 22.089722>,  <16.263680, 16.303162, 22.182766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.449661, 16.183355, 22.089722>,  <16.759632, 15.983678, 21.934649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.449661, 16.183355, 22.089722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604758, -0.407296, -0.684381,
		-0.183735, -0.764799, 0.617514,
		-0.774925, 0.499192, 0.387684,
		16.217184, 16.333113, 22.206026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.148817, 15.493168, 21.773682>,  <16.759632, 15.983678, 21.934649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.148817, 15.493168, 21.773682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.010792, 15.854827, 21.874439>,  <15.927978, 16.071823, 21.934893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.010792, 15.854827, 21.874439>,  <16.148817, 15.493168, 21.773682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.010792, 15.854827, 21.874439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745621, -0.101060, -0.658662,
		-0.570072, -0.415094, 0.709024,
		-0.345061, 0.904148, 0.251892,
		15.907273, 16.126072, 21.950006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.481305, 15.395065, 21.849245>,  <16.148817, 15.493168, 21.773682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.481305, 15.395065, 21.849245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.494377, 15.789360, 21.783211>,  <15.502220, 16.025936, 21.743589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.494377, 15.789360, 21.783211>,  <15.481305, 15.395065, 21.849245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.494377, 15.789360, 21.783211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764231, -0.081805, -0.639733,
		-0.644114, 0.147071, 0.750658,
		0.032679, 0.985737, -0.165088,
		15.504181, 16.085081, 21.733685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.729474, 15.672624, 21.908255>,  <15.481305, 15.395065, 21.849245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.729474, 15.672624, 21.908255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.957563, 15.906925, 21.677868>,  <15.094417, 16.047506, 21.539635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.957563, 15.906925, 21.677868>,  <14.729474, 15.672624, 21.908255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.957563, 15.906925, 21.677868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690955, -0.037242, -0.721938,
		-0.444328, 0.809633, 0.383493,
		0.570223, 0.585754, -0.575968,
		15.128631, 16.082651, 21.505077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.265203, 15.952072, 21.572304>,  <14.729474, 15.672624, 21.908255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.265203, 15.952072, 21.572304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.585150, 16.082424, 21.370705>,  <14.777119, 16.160635, 21.249746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.585150, 16.082424, 21.370705>,  <14.265203, 15.952072, 21.572304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.585150, 16.082424, 21.370705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543381, 0.036636, -0.838686,
		-0.254848, 0.944701, 0.206381,
		0.799869, 0.325881, -0.503996,
		14.825110, 16.180189, 21.219505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.098156, 16.639494, 21.166727>,  <14.265203, 15.952072, 21.572304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.098156, 16.639494, 21.166727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.420360, 16.480457, 20.990965>,  <14.613682, 16.385035, 20.885508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.420360, 16.480457, 20.990965>,  <14.098156, 16.639494, 21.166727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.420360, 16.480457, 20.990965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425668, 0.127653, -0.895830,
		0.412266, 0.908639, -0.066417,
		0.805508, -0.397592, -0.439406,
		14.662012, 16.361179, 20.859142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.172725, 17.072453, 20.622009>,  <14.098156, 16.639494, 21.166727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.172725, 17.072453, 20.622009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371104, 16.739361, 20.523546>,  <14.490132, 16.539505, 20.464468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371104, 16.739361, 20.523546>,  <14.172725, 17.072453, 20.622009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.371104, 16.739361, 20.523546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480143, -0.026778, -0.876782,
		0.723532, 0.553030, -0.413110,
		0.495949, -0.832731, -0.246158,
		14.519889, 16.489542, 20.449699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.387456, 17.104607, 19.927105>,  <14.172725, 17.072453, 20.622009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.387456, 17.104607, 19.927105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.360313, 16.707834, 19.969948>,  <14.344028, 16.469770, 19.995653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.360313, 16.707834, 19.969948>,  <14.387456, 17.104607, 19.927105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.360313, 16.707834, 19.969948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532050, -0.054837, -0.844936,
		0.843990, -0.114319, -0.524035,
		-0.067856, -0.991930, 0.107105,
		14.339956, 16.410255, 20.002079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.628480, 16.892374, 19.289942>,  <14.387456, 17.104607, 19.927105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.628480, 16.892374, 19.289942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.412897, 16.604929, 19.465723>,  <14.283547, 16.432461, 19.571192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.412897, 16.604929, 19.465723>,  <14.628480, 16.892374, 19.289942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.412897, 16.604929, 19.465723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441664, -0.203153, -0.873878,
		0.717257, -0.665072, -0.207896,
		-0.538957, -0.718615, 0.439451,
		14.251210, 16.389345, 19.597559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.609318, 16.317596, 18.817982>,  <14.628480, 16.892374, 19.289942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.609318, 16.317596, 18.817982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.300087, 16.290768, 19.070284>,  <14.114549, 16.274672, 19.221664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.300087, 16.290768, 19.070284>,  <14.609318, 16.317596, 18.817982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.300087, 16.290768, 19.070284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610134, -0.193297, -0.768357,
		0.173456, -0.978845, 0.108512,
		-0.773078, -0.067070, 0.630756,
		14.068164, 16.270647, 19.259510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.130421, 16.568699, 18.375467>,  <14.609318, 16.317596, 18.817982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.130421, 16.568699, 18.375467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.436822, 16.333757, 18.479971>,  <15.620663, 16.192793, 18.542673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.436822, 16.333757, 18.479971>,  <15.130421, 16.568699, 18.375467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.436822, 16.333757, 18.479971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545699, 0.808947, 0.218672,
		-0.339783, -0.024934, 0.940173,
		0.766002, -0.587353, 0.261260,
		15.666623, 16.157551, 18.558350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.392247, 16.731768, 19.134922>,  <15.130421, 16.568699, 18.375467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.392247, 16.731768, 19.134922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.672212, 16.591188, 18.886211>,  <15.840190, 16.506842, 18.736984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.672212, 16.591188, 18.886211>,  <15.392247, 16.731768, 19.134922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.672212, 16.591188, 18.886211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620331, 0.730603, 0.285322,
		0.353997, -0.585409, 0.729371,
		0.699911, -0.351449, -0.621779,
		15.882185, 16.485754, 18.699678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.012825, 16.344738, 19.443935>,  <15.392247, 16.731768, 19.134922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.012825, 16.344738, 19.443935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.100477, 16.559000, 19.117731>,  <16.153069, 16.687557, 18.922009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.100477, 16.559000, 19.117731>,  <16.012825, 16.344738, 19.443935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.100477, 16.559000, 19.117731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597795, 0.586868, 0.546102,
		0.771119, -0.607174, -0.191612,
		0.219128, 0.535655, -0.815510,
		16.166216, 16.719696, 18.873077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.776606, 16.443365, 19.442329>,  <16.012825, 16.344738, 19.443935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.776606, 16.443365, 19.442329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.583086, 16.729898, 19.241209>,  <16.466974, 16.901817, 19.120537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.583086, 16.729898, 19.241209>,  <16.776606, 16.443365, 19.442329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.583086, 16.729898, 19.241209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601715, 0.689437, 0.403255,
		0.635515, -0.107450, -0.764575,
		-0.483797, 0.716332, -0.502802,
		16.437946, 16.944798, 19.090368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.358704, 16.862705, 19.183697>,  <16.776606, 16.443365, 19.442329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.358704, 16.862705, 19.183697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.024820, 17.079733, 19.146004>,  <16.824490, 17.209949, 19.123388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.024820, 17.079733, 19.146004>,  <17.358704, 16.862705, 19.183697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.024820, 17.079733, 19.146004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492664, 0.812195, 0.312444,
		0.246057, 0.214376, -0.945251,
		-0.834709, 0.542570, -0.094231,
		16.774408, 17.242504, 19.117735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.497175, 17.460287, 18.850641>,  <17.358704, 16.862705, 19.183697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.497175, 17.460287, 18.850641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.172691, 17.557976, 19.063166>,  <16.978001, 17.616589, 19.190681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.172691, 17.557976, 19.063166>,  <17.497175, 17.460287, 18.850641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.172691, 17.557976, 19.063166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542570, 0.653205, 0.528148,
		-0.218071, 0.716714, -0.662394,
		-0.811210, 0.244222, 0.531313,
		16.929329, 17.631243, 19.222559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.617643, 18.215830, 18.992281>,  <17.497175, 17.460287, 18.850641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.617643, 18.215830, 18.992281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.344505, 18.085415, 19.253792>,  <17.180622, 18.007166, 19.410698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.344505, 18.085415, 19.253792>,  <17.617643, 18.215830, 18.992281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.344505, 18.085415, 19.253792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453360, 0.512628, 0.729162,
		-0.572878, 0.794300, -0.202232,
		-0.682844, -0.326037, 0.653777,
		17.139652, 17.987604, 19.449924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.381006, 18.831228, 19.388357>,  <17.617643, 18.215830, 18.992281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.381006, 18.831228, 19.388357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.276352, 18.520882, 19.617994>,  <17.213560, 18.334675, 19.755775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.276352, 18.520882, 19.617994>,  <17.381006, 18.831228, 19.388357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.276352, 18.520882, 19.617994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505129, 0.396774, 0.766430,
		-0.822431, 0.490515, 0.288103,
		-0.261634, -0.775865, 0.574092,
		17.197863, 18.288122, 19.790222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.393253, 19.102579, 20.090534>,  <17.381006, 18.831228, 19.388357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.393253, 19.102579, 20.090534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.406471, 18.711451, 20.173262>,  <17.414402, 18.476774, 20.222898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.406471, 18.711451, 20.173262>,  <17.393253, 19.102579, 20.090534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.406471, 18.711451, 20.173262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580771, 0.187194, 0.792252,
		-0.813396, 0.093936, 0.574075,
		0.033043, -0.977821, 0.206818,
		17.416384, 18.418104, 20.235308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.269928, 19.090757, 20.759119>,  <17.393253, 19.102579, 20.090534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.269928, 19.090757, 20.759119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.460716, 18.749592, 20.674231>,  <17.575190, 18.544893, 20.623297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.460716, 18.749592, 20.674231>,  <17.269928, 19.090757, 20.759119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.460716, 18.749592, 20.674231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384919, -0.014364, 0.922839,
		-0.790150, -0.521855, 0.321451,
		0.476970, -0.852914, -0.212221,
		17.603807, 18.493717, 20.610563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.207672, 18.729214, 21.324162>,  <17.269928, 19.090757, 20.759119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.207672, 18.729214, 21.324162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.512815, 18.551914, 21.135874>,  <17.695902, 18.445534, 21.022902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.512815, 18.551914, 21.135874>,  <17.207672, 18.729214, 21.324162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.512815, 18.551914, 21.135874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501782, -0.053261, 0.863353,
		-0.407752, -0.894814, 0.181784,
		0.762859, -0.443250, -0.470719,
		17.741673, 18.418940, 20.994658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.402008, 18.261385, 21.777199>,  <17.207672, 18.729214, 21.324162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.402008, 18.261385, 21.777199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.718184, 18.299187, 21.535116>,  <17.907888, 18.321869, 21.389866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.718184, 18.299187, 21.535116>,  <17.402008, 18.261385, 21.777199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.718184, 18.299187, 21.535116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601795, -0.304083, 0.738496,
		-0.114242, -0.947946, -0.297232,
		0.790437, 0.094506, -0.605209,
		17.955315, 18.327538, 21.353554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.909437, 17.694147, 21.962833>,  <17.402008, 18.261385, 21.777199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.909437, 17.694147, 21.962833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.132500, 17.985306, 21.803244>,  <18.266338, 18.160002, 21.707489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.132500, 17.985306, 21.803244>,  <17.909437, 17.694147, 21.962833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.132500, 17.985306, 21.803244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760408, -0.255233, 0.597190,
		0.332863, -0.636412, -0.695832,
		0.557658, 0.727898, -0.398975,
		18.299797, 18.203676, 21.683552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.688732, 17.326422, 21.812199>,  <17.909437, 17.694147, 21.962833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.688732, 17.326422, 21.812199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.731337, 17.724142, 21.810562>,  <18.756899, 17.962774, 21.809580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.731337, 17.724142, 21.810562>,  <18.688732, 17.326422, 21.812199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.731337, 17.724142, 21.810562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770450, -0.079932, 0.632469,
		0.628539, -0.070517, -0.774575,
		0.106513, 0.994303, -0.004089,
		18.763290, 18.022432, 21.809336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.422718, 17.461269, 21.676529>,  <18.688732, 17.326422, 21.812199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.422718, 17.461269, 21.676529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.304911, 17.812370, 21.827690>,  <19.234226, 18.023031, 21.918386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.304911, 17.812370, 21.827690>,  <19.422718, 17.461269, 21.676529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.304911, 17.812370, 21.827690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871349, 0.084264, 0.483373,
		0.392438, 0.471648, -0.789646,
		-0.294520, 0.877752, 0.377901,
		19.216555, 18.075695, 21.941061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.026213, 17.948997, 21.618616>,  <19.422718, 17.461269, 21.676529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.026213, 17.948997, 21.618616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.778252, 18.093531, 21.897230>,  <19.629475, 18.180250, 22.064398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.778252, 18.093531, 21.897230>,  <20.026213, 17.948997, 21.618616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.778252, 18.093531, 21.897230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776990, 0.158688, 0.609183,
		0.109587, 0.918834, -0.379123,
		-0.619901, 0.361333, 0.696535,
		19.592281, 18.201931, 22.106192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.348778, 18.517977, 21.928455>,  <20.026213, 17.948997, 21.618616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.348778, 18.517977, 21.928455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.063295, 18.439903, 22.197536>,  <19.892006, 18.393059, 22.358986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.063295, 18.439903, 22.197536>,  <20.348778, 18.517977, 21.928455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.063295, 18.439903, 22.197536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641005, 0.205171, 0.739606,
		-0.282379, 0.959066, -0.021316,
		-0.713704, -0.195186, 0.672702,
		19.849184, 18.381348, 22.399347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.488543, 19.072346, 22.433214>,  <20.348778, 18.517977, 21.928455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.488543, 19.072346, 22.433214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.242161, 18.804754, 22.599619>,  <20.094332, 18.644199, 22.699463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.242161, 18.804754, 22.599619>,  <20.488543, 19.072346, 22.433214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.242161, 18.804754, 22.599619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379412, 0.210883, 0.900875,
		-0.690398, 0.712737, 0.123925,
		-0.615953, -0.668981, 0.416013,
		20.057375, 18.604059, 22.724422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.303362, 19.401381, 22.953430>,  <20.488543, 19.072346, 22.433214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.303362, 19.401381, 22.953430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.227915, 19.021124, 23.051985>,  <20.182646, 18.792971, 23.111118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.227915, 19.021124, 23.051985>,  <20.303362, 19.401381, 22.953430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.227915, 19.021124, 23.051985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503540, 0.121780, 0.855346,
		-0.843131, 0.285401, 0.455715,
		-0.188620, -0.950640, 0.246387,
		20.171329, 18.735931, 23.125900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.898577, 19.397692, 23.549931>,  <20.303362, 19.401381, 22.953430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.898577, 19.397692, 23.549931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.092739, 19.048342, 23.533960>,  <20.209236, 18.838732, 23.524378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.092739, 19.048342, 23.533960>,  <19.898577, 19.397692, 23.549931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.092739, 19.048342, 23.533960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424550, 0.195544, 0.884036,
		-0.764289, -0.446068, 0.465710,
		0.485407, -0.873377, -0.039926,
		20.238361, 18.786329, 23.521982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.004868, 19.210823, 24.253740>,  <19.898577, 19.397692, 23.549931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.004868, 19.210823, 24.253740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.282082, 18.989927, 24.068380>,  <20.448410, 18.857389, 23.957165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.282082, 18.989927, 24.068380>,  <20.004868, 19.210823, 24.253740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.282082, 18.989927, 24.068380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523746, -0.056007, 0.850031,
		-0.495374, -0.831802, 0.250418,
		0.693033, -0.552239, -0.463398,
		20.489992, 18.824255, 23.929361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.259954, 18.717764, 24.726767>,  <20.004868, 19.210823, 24.253740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.259954, 18.717764, 24.726767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.547865, 18.712492, 24.449135>,  <20.720612, 18.709330, 24.282555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.547865, 18.712492, 24.449135>,  <20.259954, 18.717764, 24.726767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.547865, 18.712492, 24.449135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693787, -0.021050, 0.719872,
		-0.024128, -0.999691, -0.005979,
		0.719776, -0.013221, -0.694081,
		20.763798, 18.708538, 24.240911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.640972, 18.254921, 24.968035>,  <20.259954, 18.717764, 24.726767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.640972, 18.254921, 24.968035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.866791, 18.457861, 24.707611>,  <21.002281, 18.579626, 24.551357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.866791, 18.457861, 24.707611>,  <20.640972, 18.254921, 24.968035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.866791, 18.457861, 24.707611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739474, 0.039538, 0.672023,
		0.366694, -0.860831, -0.352853,
		0.564547, 0.507352, -0.651061,
		21.036156, 18.610067, 24.512293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.427240, 18.026745, 25.076864>,  <20.640972, 18.254921, 24.968035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.427240, 18.026745, 25.076864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.401648, 18.368523, 24.870630>,  <21.386292, 18.573589, 24.746889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.401648, 18.368523, 24.870630>,  <21.427240, 18.026745, 25.076864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.401648, 18.368523, 24.870630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733065, 0.390800, 0.556679,
		0.677143, -0.342339, -0.651369,
		-0.063982, 0.854447, -0.515584,
		21.382454, 18.624857, 24.715956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.131189, 18.199333, 24.954208>,  <21.427240, 18.026745, 25.076864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.131189, 18.199333, 24.954208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.904400, 18.528057, 24.931669>,  <21.768326, 18.725290, 24.918146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.904400, 18.528057, 24.931669>,  <22.131189, 18.199333, 24.954208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.904400, 18.528057, 24.931669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606525, 0.462774, 0.646504,
		0.557378, 0.332374, -0.760827,
		-0.566972, 0.821808, -0.056346,
		21.734308, 18.774599, 24.914764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.621950, 18.813444, 24.869286>,  <22.131189, 18.199333, 24.954208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.621950, 18.813444, 24.869286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.274742, 18.962736, 25.000275>,  <22.066418, 19.052311, 25.078869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.274742, 18.962736, 25.000275>,  <22.621950, 18.813444, 24.869286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.274742, 18.962736, 25.000275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496125, 0.678415, 0.541861,
		-0.019924, 0.632814, -0.774047,
		-0.868022, 0.373228, 0.327472,
		22.014336, 19.074705, 25.098516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.832716, 19.508816, 25.122566>,  <22.621950, 18.813444, 24.869286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.832716, 19.508816, 25.122566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.464418, 19.464376, 25.272173>,  <22.243441, 19.437714, 25.361937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.464418, 19.464376, 25.272173>,  <22.832716, 19.508816, 25.122566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.464418, 19.464376, 25.272173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133771, 0.810615, 0.570096,
		-0.366520, 0.574945, -0.731507,
		-0.920743, -0.111098, 0.374017,
		22.188196, 19.431047, 25.384378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.569412, 20.182831, 25.124521>,  <22.832716, 19.508816, 25.122566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.569412, 20.182831, 25.124521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.377508, 19.984545, 25.414099>,  <22.262365, 19.865572, 25.587845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.377508, 19.984545, 25.414099>,  <22.569412, 20.182831, 25.124521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.377508, 19.984545, 25.414099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169397, 0.757246, 0.630780,
		-0.860892, 0.425258, -0.279324,
		-0.479761, -0.495716, 0.723944,
		22.233580, 19.835831, 25.631283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.095184, 20.697598, 25.384430>,  <22.569412, 20.182831, 25.124521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.095184, 20.697598, 25.384430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.140774, 20.402840, 25.650963>,  <22.168127, 20.225985, 25.810883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.140774, 20.402840, 25.650963>,  <22.095184, 20.697598, 25.384430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.140774, 20.402840, 25.650963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023145, 0.668549, 0.743307,
		-0.993214, -0.100140, 0.059142,
		0.113974, -0.736895, 0.666331,
		22.174967, 20.181772, 25.850863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.478561, 20.836567, 25.895245>,  <22.095184, 20.697598, 25.384430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.478561, 20.836567, 25.895245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.751333, 20.611805, 26.082535>,  <21.914997, 20.476948, 26.194908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.751333, 20.611805, 26.082535>,  <21.478561, 20.836567, 25.895245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.751333, 20.611805, 26.082535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044359, 0.607211, 0.793302,
		-0.730070, -0.561747, 0.389151,
		0.681931, -0.561904, 0.468225,
		21.955912, 20.443233, 26.223001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.405386, 20.920193, 26.645670>,  <21.478561, 20.836567, 25.895245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.405386, 20.920193, 26.645670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.765278, 20.747208, 26.669212>,  <21.981213, 20.643415, 26.683338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.765278, 20.747208, 26.669212>,  <21.405386, 20.920193, 26.645670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.765278, 20.747208, 26.669212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208473, 0.544305, 0.812571,
		-0.383442, -0.718824, 0.579884,
		0.899729, -0.432464, 0.058854,
		22.035196, 20.617468, 26.686869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.577698, 20.747952, 27.323114>,  <21.405386, 20.920193, 26.645670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.577698, 20.747952, 27.323114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.926588, 20.825911, 27.143677>,  <22.135921, 20.872686, 27.036015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.926588, 20.825911, 27.143677>,  <21.577698, 20.747952, 27.323114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.926588, 20.825911, 27.143677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088334, 0.839322, 0.536409,
		0.481061, -0.507496, 0.714862,
		0.872226, 0.194900, -0.448595,
		22.188255, 20.884380, 27.009098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.817110, 21.259655, 27.843117>,  <21.577698, 20.747952, 27.323114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.817110, 21.259655, 27.843117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.117411, 21.259096, 27.578884>,  <22.297592, 21.258760, 27.420345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.117411, 21.259096, 27.578884>,  <21.817110, 21.259655, 27.843117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.117411, 21.259096, 27.578884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493702, 0.665590, 0.559686,
		0.438894, -0.746316, 0.500384,
		0.750754, -0.001398, -0.660581,
		22.342636, 21.258677, 27.380711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.474751, 21.082064, 28.250092>,  <21.817110, 21.259655, 27.843117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.474751, 21.082064, 28.250092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.544842, 21.283621, 27.911770>,  <22.586897, 21.404556, 27.708776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.544842, 21.283621, 27.911770>,  <22.474751, 21.082064, 28.250092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.544842, 21.283621, 27.911770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549056, 0.663081, 0.508784,
		0.817211, -0.553547, -0.160477,
		0.175227, 0.503894, -0.845805,
		22.597410, 21.434790, 27.658028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.216789, 21.217621, 28.139002>,  <22.474751, 21.082064, 28.250092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.216789, 21.217621, 28.139002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.988916, 21.520412, 28.010973>,  <22.852194, 21.702087, 27.934155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.988916, 21.520412, 28.010973>,  <23.216789, 21.217621, 28.139002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.988916, 21.520412, 28.010973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337807, 0.570695, 0.748461,
		0.749233, 0.318261, -0.580827,
		-0.569681, 0.756979, -0.320073,
		22.818012, 21.747505, 27.914951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.636974, 21.859629, 28.001286>,  <23.216789, 21.217621, 28.139002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.636974, 21.859629, 28.001286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.272366, 21.946779, 28.140802>,  <23.053600, 21.999069, 28.224512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.272366, 21.946779, 28.140802>,  <23.636974, 21.859629, 28.001286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.272366, 21.946779, 28.140802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406864, 0.601305, 0.687673,
		-0.059905, 0.768741, -0.636748,
		-0.911522, 0.217875, 0.348794,
		22.998909, 22.012142, 28.245441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.375933, 22.601114, 27.849035>,  <23.636974, 21.859629, 28.001286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.375933, 22.601114, 27.849035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.276234, 22.440554, 28.201571>,  <23.216413, 22.344217, 28.413092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.276234, 22.440554, 28.201571>,  <23.375933, 22.601114, 27.849035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.276234, 22.440554, 28.201571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431735, 0.768565, 0.472137,
		-0.866879, 0.498183, -0.018266,
		-0.249249, -0.401399, 0.881336,
		23.201458, 22.320133, 28.465971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.921577, 23.053833, 28.271708>,  <23.375933, 22.601114, 27.849035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.921577, 23.053833, 28.271708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.136148, 22.816568, 28.511843>,  <23.264891, 22.674210, 28.655924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.136148, 22.816568, 28.511843>,  <22.921577, 23.053833, 28.271708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.136148, 22.816568, 28.511843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218574, 0.784721, 0.580033,
		-0.815150, -0.179928, 0.550596,
		0.536429, -0.593160, 0.600337,
		23.297077, 22.638620, 28.691944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.012325, 23.740585, 27.957842>,  <22.921577, 23.053833, 28.271708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.012325, 23.740585, 27.957842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.177177, 24.097029, 27.881865>,  <23.276089, 24.310894, 27.836277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.177177, 24.097029, 27.881865>,  <23.012325, 23.740585, 27.957842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.177177, 24.097029, 27.881865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101095, -0.162461, -0.981522,
		-0.905499, 0.423717, 0.023132,
		0.412130, 0.891106, -0.189944,
		23.300816, 24.364361, 27.824881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.485622, 24.205238, 27.687199>,  <23.012325, 23.740585, 27.957842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.485622, 24.205238, 27.687199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.843716, 24.317978, 27.549143>,  <23.058571, 24.385622, 27.466309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.843716, 24.317978, 27.549143>,  <22.485622, 24.205238, 27.687199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.843716, 24.317978, 27.549143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312532, -0.154951, -0.937184,
		-0.317623, 0.946865, -0.050631,
		0.895232, 0.281847, -0.345141,
		23.112286, 24.402533, 27.445601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.324852, 24.422438, 27.061188>,  <22.485622, 24.205238, 27.687199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.324852, 24.422438, 27.061188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.720745, 24.459274, 27.017466>,  <22.958281, 24.481377, 26.991232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.720745, 24.459274, 27.017466>,  <22.324852, 24.422438, 27.061188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.720745, 24.459274, 27.017466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067845, -0.370384, -0.926398,
		-0.125798, 0.924302, -0.360333,
		0.989733, 0.092092, -0.109303,
		23.017666, 24.486902, 26.984674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.452475, 24.981609, 26.511084>,  <22.324852, 24.422438, 27.061188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.452475, 24.981609, 26.511084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.777020, 24.750338, 26.545496>,  <22.971746, 24.611574, 26.566143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.777020, 24.750338, 26.545496>,  <22.452475, 24.981609, 26.511084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.777020, 24.750338, 26.545496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024854, -0.181161, -0.983139,
		0.584015, 0.795544, -0.161357,
		0.811362, -0.578178, 0.086029,
		23.020428, 24.576883, 26.571304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.907816, 25.148165, 25.985731>,  <22.452475, 24.981609, 26.511084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.907816, 25.148165, 25.985731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.008329, 24.779526, 26.104061>,  <23.068638, 24.558342, 26.175058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.008329, 24.779526, 26.104061>,  <22.907816, 25.148165, 25.985731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.008329, 24.779526, 26.104061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055243, -0.291477, -0.954981,
		0.966336, 0.256311, -0.022331,
		0.251282, -0.921599, 0.295824,
		23.083714, 24.503046, 26.192808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.428444, 24.919764, 25.522320>,  <22.907816, 25.148165, 25.985731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.428444, 24.919764, 25.522320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.303974, 24.579456, 25.691725>,  <23.229292, 24.375271, 25.793367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.303974, 24.579456, 25.691725>,  <23.428444, 24.919764, 25.522320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.303974, 24.579456, 25.691725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013864, -0.441525, -0.897142,
		0.950251, -0.285041, 0.125597,
		-0.311176, -0.850769, 0.423511,
		23.210621, 24.324226, 25.818779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.860773, 24.438347, 25.261059>,  <23.428444, 24.919764, 25.522320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.860773, 24.438347, 25.261059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.527296, 24.251871, 25.379465>,  <23.327209, 24.139986, 25.450510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.527296, 24.251871, 25.379465>,  <23.860773, 24.438347, 25.261059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.527296, 24.251871, 25.379465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010221, -0.522921, -0.852320,
		0.552135, -0.713598, 0.431191,
		-0.833692, -0.466188, 0.296017,
		23.277187, 24.112015, 25.468269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.914803, 23.731396, 25.056145>,  <23.860773, 24.438347, 25.261059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.914803, 23.731396, 25.056145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.522661, 23.774702, 25.122095>,  <23.287376, 23.800686, 25.161667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.522661, 23.774702, 25.122095>,  <23.914803, 23.731396, 25.056145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.522661, 23.774702, 25.122095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197122, -0.507903, -0.838557,
		-0.007046, -0.854584, 0.519266,
		-0.980354, 0.108267, 0.164879,
		23.228556, 23.807182, 25.171558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.582678, 23.156162, 24.763020>,  <23.914803, 23.731396, 25.056145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.582678, 23.156162, 24.763020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.268141, 23.399582, 24.805603>,  <23.079418, 23.545633, 24.831154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.268141, 23.399582, 24.805603>,  <23.582678, 23.156162, 24.763020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.268141, 23.399582, 24.805603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455176, -0.454181, -0.765855,
		-0.417703, -0.650687, 0.634138,
		-0.786346, 0.608544, 0.106464,
		23.032238, 23.582148, 24.837542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.127821, 22.698898, 24.704060>,  <23.582678, 23.156162, 24.763020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.127821, 22.698898, 24.704060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.983130, 23.062250, 24.620155>,  <22.896315, 23.280262, 24.569813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.983130, 23.062250, 24.620155>,  <23.127821, 22.698898, 24.704060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.983130, 23.062250, 24.620155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564996, -0.392571, -0.725718,
		-0.741573, -0.144001, 0.655236,
		-0.361730, 0.908379, -0.209760,
		22.874611, 23.334764, 24.557228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.374928, 22.644674, 24.713539>,  <23.127821, 22.698898, 24.704060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.374928, 22.644674, 24.713539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.486120, 22.948957, 24.478916>,  <22.552835, 23.131527, 24.338142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.486120, 22.948957, 24.478916>,  <22.374928, 22.644674, 24.713539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.486120, 22.948957, 24.478916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533699, -0.385394, -0.752753,
		-0.798682, 0.522294, 0.298858,
		0.277980, 0.760710, -0.586555,
		22.569515, 23.177170, 24.302950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.776176, 22.812279, 24.402000>,  <22.374928, 22.644674, 24.713539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.776176, 22.812279, 24.402000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.047424, 22.998428, 24.174463>,  <22.210173, 23.110119, 24.037941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.047424, 22.998428, 24.174463>,  <21.776176, 22.812279, 24.402000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.047424, 22.998428, 24.174463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503185, -0.270155, -0.820866,
		-0.535687, 0.842877, 0.050973,
		0.678118, 0.465376, -0.568841,
		22.250860, 23.138041, 24.003811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.313437, 23.285593, 24.057880>,  <21.776176, 22.812279, 24.402000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.313437, 23.285593, 24.057880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.654072, 23.144930, 23.902378>,  <21.858454, 23.060532, 23.809076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.654072, 23.144930, 23.902378>,  <21.313437, 23.285593, 24.057880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.654072, 23.144930, 23.902378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521039, -0.486400, -0.701379,
		0.057555, 0.799845, -0.597441,
		0.851590, -0.351658, -0.388756,
		21.909550, 23.039433, 23.785751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.298784, 23.334059, 23.236950>,  <21.313437, 23.285593, 24.057880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.298784, 23.334059, 23.236950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.544207, 23.040934, 23.354616>,  <21.691460, 22.865059, 23.425217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.544207, 23.040934, 23.354616>,  <21.298784, 23.334059, 23.236950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.544207, 23.040934, 23.354616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479660, -0.641794, -0.598353,
		0.627274, 0.226025, -0.745279,
		0.613558, -0.732812, 0.294165,
		21.728273, 22.821091, 23.442865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.378962, 22.893393, 22.686533>,  <21.298784, 23.334059, 23.236950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.378962, 22.893393, 22.686533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.517597, 22.646700, 22.969238>,  <21.600779, 22.498684, 23.138863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.517597, 22.646700, 22.969238>,  <21.378962, 22.893393, 22.686533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.517597, 22.646700, 22.969238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301688, -0.786724, -0.538563,
		0.888179, -0.026563, -0.458729,
		0.346587, -0.616733, 0.706765,
		21.621572, 22.461679, 23.181269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.747608, 22.313875, 22.315001>,  <21.378962, 22.893393, 22.686533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.747608, 22.313875, 22.315001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.657310, 22.176605, 22.679697>,  <21.603132, 22.094244, 22.898516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.657310, 22.176605, 22.679697>,  <21.747608, 22.313875, 22.315001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.657310, 22.176605, 22.679697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462803, -0.785767, -0.410345,
		0.857236, -0.514589, 0.018559,
		-0.225743, -0.343173, 0.911741,
		21.589588, 22.073652, 22.953220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.887403, 21.632502, 22.245756>,  <21.747608, 22.313875, 22.315001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.887403, 21.632502, 22.245756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.628218, 21.685213, 22.545830>,  <21.472706, 21.716839, 22.725874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.628218, 21.685213, 22.545830>,  <21.887403, 21.632502, 22.245756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.628218, 21.685213, 22.545830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564951, -0.743739, -0.357328,
		0.510852, -0.655353, 0.556365,
		-0.647967, 0.131777, 0.750183,
		21.433828, 21.724747, 22.770885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.875227, 20.986975, 22.546946>,  <21.887403, 21.632502, 22.245756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.875227, 20.986975, 22.546946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.544121, 21.192923, 22.636131>,  <21.345457, 21.316490, 22.689642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.544121, 21.192923, 22.636131>,  <21.875227, 20.986975, 22.546946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.544121, 21.192923, 22.636131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560400, -0.739249, -0.373448,
		-0.027451, -0.434076, 0.900458,
		-0.827767, 0.514868, 0.222963,
		21.295790, 21.347383, 22.703020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.317259, 20.423813, 22.747761>,  <21.875227, 20.986975, 22.546946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.317259, 20.423813, 22.747761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.110163, 20.757044, 22.669861>,  <20.985905, 20.956982, 22.623121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.110163, 20.757044, 22.669861>,  <21.317259, 20.423813, 22.747761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.110163, 20.757044, 22.669861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737516, -0.549972, -0.391919,
		-0.433604, -0.059282, 0.899151,
		-0.517742, 0.833076, -0.194749,
		20.954840, 21.006968, 22.611435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.683990, 20.252155, 22.845240>,  <21.317259, 20.423813, 22.747761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.683990, 20.252155, 22.845240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.641514, 20.571581, 22.608252>,  <20.616028, 20.763235, 22.466059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.641514, 20.571581, 22.608252>,  <20.683990, 20.252155, 22.845240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.641514, 20.571581, 22.608252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671300, -0.497133, -0.549741,
		-0.733539, 0.339348, 0.588866,
		-0.106191, 0.798563, -0.592470,
		20.609657, 20.811150, 22.430510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.004362, 20.141542, 22.710260>,  <20.683990, 20.252155, 22.845240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.004362, 20.141542, 22.710260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.117746, 20.409039, 22.435326>,  <20.185778, 20.569536, 22.270365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.117746, 20.409039, 22.435326>,  <20.004362, 20.141542, 22.710260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.117746, 20.409039, 22.435326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342558, -0.598840, -0.723909,
		-0.895714, 0.440654, 0.059335,
		0.283461, 0.668741, -0.687339,
		20.202785, 20.609661, 22.229124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.442907, 20.201139, 22.234285>,  <20.004362, 20.141542, 22.710260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.442907, 20.201139, 22.234285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.778545, 20.324099, 22.054764>,  <19.979929, 20.397875, 21.947052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.778545, 20.324099, 22.054764>,  <19.442907, 20.201139, 22.234285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.778545, 20.324099, 22.054764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325475, -0.377361, -0.866986,
		-0.435870, 0.873559, -0.216592,
		0.839097, 0.307398, -0.448802,
		20.030275, 20.416319, 21.920124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.212042, 20.344667, 21.608065>,  <19.442907, 20.201139, 22.234285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.212042, 20.344667, 21.608065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.608541, 20.301456, 21.577709>,  <19.846441, 20.275530, 21.559496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.608541, 20.301456, 21.577709>,  <19.212042, 20.344667, 21.608065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.608541, 20.301456, 21.577709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108285, -0.336439, -0.935459,
		0.075524, 0.935488, -0.345192,
		0.991247, -0.108029, -0.075890,
		19.905916, 20.269049, 21.554941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.405365, 20.758303, 21.012209>,  <19.212042, 20.344667, 21.608065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.405365, 20.758303, 21.012209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.700691, 20.498640, 21.085407>,  <19.877888, 20.342842, 21.129326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.700691, 20.498640, 21.085407>,  <19.405365, 20.758303, 21.012209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.700691, 20.498640, 21.085407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000157, -0.271158, -0.962535,
		0.674455, 0.710684, -0.200099,
		0.738316, -0.649155, 0.182995,
		19.922186, 20.303894, 21.140306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.882816, 20.840118, 20.559561>,  <19.405365, 20.758303, 21.012209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.882816, 20.840118, 20.559561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.971725, 20.467161, 20.673573>,  <20.025072, 20.243387, 20.741980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.971725, 20.467161, 20.673573>,  <19.882816, 20.840118, 20.559561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.971725, 20.467161, 20.673573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084835, -0.309729, -0.947033,
		0.971286, 0.186321, -0.147944,
		0.222274, -0.932391, 0.285029,
		20.038408, 20.187445, 20.759081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.335085, 20.577082, 19.997812>,  <19.882816, 20.840118, 20.559561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.335085, 20.577082, 19.997812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.234320, 20.244898, 20.196558>,  <20.173861, 20.045588, 20.315805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.234320, 20.244898, 20.196558>,  <20.335085, 20.577082, 19.997812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.234320, 20.244898, 20.196558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095567, -0.532263, -0.841168,
		0.963019, -0.164418, 0.213450,
		-0.251915, -0.830459, 0.496866,
		20.158745, 19.995760, 20.345617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.864357, 20.106178, 19.838438>,  <20.335085, 20.577082, 19.997812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.864357, 20.106178, 19.838438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.526316, 19.912882, 19.929893>,  <20.323490, 19.796904, 19.984766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.526316, 19.912882, 19.929893>,  <20.864357, 20.106178, 19.838438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.526316, 19.912882, 19.929893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016516, -0.451076, -0.892333,
		0.534347, -0.750338, 0.389187,
		-0.845104, -0.483243, 0.228638,
		20.272785, 19.767910, 19.998486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.022429, 19.409679, 19.806805>,  <20.864357, 20.106178, 19.838438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.022429, 19.409679, 19.806805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.624292, 19.413496, 19.768423>,  <20.385410, 19.415787, 19.745394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.624292, 19.413496, 19.768423>,  <21.022429, 19.409679, 19.806805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.624292, 19.413496, 19.768423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059601, -0.721363, -0.689987,
		-0.075804, -0.692491, 0.717433,
		-0.995340, 0.009544, -0.095955,
		20.325691, 19.416359, 19.739635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.778715, 18.704433, 19.777508>,  <21.022429, 19.409679, 19.806805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.778715, 18.704433, 19.777508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.454327, 18.882105, 19.625175>,  <20.259693, 18.988707, 19.533775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.454327, 18.882105, 19.625175>,  <20.778715, 18.704433, 19.777508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.454327, 18.882105, 19.625175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226336, -0.838386, -0.495863,
		-0.539534, -0.315935, 0.780440,
		-0.810972, 0.444177, -0.380831,
		20.211035, 19.015358, 19.510925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.275991, 18.246325, 19.728359>,  <20.778715, 18.704433, 19.777508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.275991, 18.246325, 19.728359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.125811, 18.512764, 19.470568>,  <20.035702, 18.672626, 19.315893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.125811, 18.512764, 19.470568>,  <20.275991, 18.246325, 19.728359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.125811, 18.512764, 19.470568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384134, -0.744646, -0.545842,
		-0.843490, 0.042627, 0.535451,
		-0.375454, 0.666097, -0.644476,
		20.013174, 18.712593, 19.277225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.573887, 18.067341, 19.623598>,  <20.275991, 18.246325, 19.728359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.573887, 18.067341, 19.623598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.683939, 18.265980, 19.294308>,  <19.749969, 18.385162, 19.096733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.683939, 18.265980, 19.294308>,  <19.573887, 18.067341, 19.623598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.683939, 18.265980, 19.294308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385624, -0.727369, -0.567652,
		-0.880681, 0.473632, -0.008620,
		0.275128, 0.496596, -0.823224,
		19.766478, 18.414959, 19.047340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.004063, 18.056791, 19.142557>,  <19.573887, 18.067341, 19.623598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.004063, 18.056791, 19.142557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.303162, 18.142731, 18.891253>,  <19.482622, 18.194294, 18.740471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.303162, 18.142731, 18.891253>,  <19.004063, 18.056791, 19.142557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.303162, 18.142731, 18.891253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555297, -0.316404, -0.769113,
		-0.364028, 0.923974, -0.117285,
		0.747749, 0.214850, -0.628260,
		19.527487, 18.207186, 18.702774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.686264, 18.407724, 18.585487>,  <19.004063, 18.056791, 19.142557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.686264, 18.407724, 18.585487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.048695, 18.309727, 18.447498>,  <19.266153, 18.250929, 18.364704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.048695, 18.309727, 18.447498>,  <18.686264, 18.407724, 18.585487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.048695, 18.309727, 18.447498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399347, -0.225747, -0.888572,
		0.139818, 0.942877, -0.302381,
		0.906075, -0.244993, -0.344972,
		19.320517, 18.236229, 18.344007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.751656, 18.699173, 17.920656>,  <18.686264, 18.407724, 18.585487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.751656, 18.699173, 17.920656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.033884, 18.415720, 17.919655>,  <19.203220, 18.245647, 17.919054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.033884, 18.415720, 17.919655>,  <18.751656, 18.699173, 17.920656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.033884, 18.415720, 17.919655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259930, -0.255516, -0.931208,
		0.659246, 0.657684, -0.364481,
		0.705571, -0.708635, -0.002504,
		19.245556, 18.203129, 17.918903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.081842, 18.764500, 17.253878>,  <18.751656, 18.699173, 17.920656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.081842, 18.764500, 17.253878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.178923, 18.402248, 17.392982>,  <19.237171, 18.184898, 17.476446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.178923, 18.402248, 17.392982>,  <19.081842, 18.764500, 17.253878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.178923, 18.402248, 17.392982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171690, -0.392919, -0.903403,
		0.954788, 0.159548, -0.250848,
		0.242699, -0.905627, 0.347762,
		19.251732, 18.130560, 17.497311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.667452, 18.442694, 16.836653>,  <19.081842, 18.764500, 17.253878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.667452, 18.442694, 16.836653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.504515, 18.114809, 16.997721>,  <19.406752, 17.918079, 17.094362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.504515, 18.114809, 16.997721>,  <19.667452, 18.442694, 16.836653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.504515, 18.114809, 16.997721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030739, -0.428355, -0.903088,
		0.912757, -0.380245, 0.149291,
		-0.407344, -0.819711, 0.402672,
		19.382311, 17.868896, 17.118523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.991238, 17.744644, 16.591961>,  <19.667452, 18.442694, 16.836653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.991238, 17.744644, 16.591961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.640656, 17.611862, 16.731464>,  <19.430305, 17.532194, 16.815166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.640656, 17.611862, 16.731464>,  <19.991238, 17.744644, 16.591961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.640656, 17.611862, 16.731464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097855, -0.586414, -0.804079,
		0.471433, -0.738868, 0.481482,
		-0.876456, -0.331954, 0.348757,
		19.377718, 17.512276, 16.836092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.941547, 17.086222, 16.308453>,  <19.991238, 17.744644, 16.591961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.941547, 17.086222, 16.308453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.573708, 17.205492, 16.410770>,  <19.353004, 17.277054, 16.472162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.573708, 17.205492, 16.410770>,  <19.941547, 17.086222, 16.308453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.573708, 17.205492, 16.410770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387271, -0.578585, -0.717817,
		-0.066035, -0.759165, 0.647540,
		-0.919598, 0.298174, 0.255796,
		19.297829, 17.294945, 16.487509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.615311, 16.520357, 16.391582>,  <19.941547, 17.086222, 16.308453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.615311, 16.520357, 16.391582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.294577, 16.750942, 16.328659>,  <19.102137, 16.889294, 16.290905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.294577, 16.750942, 16.328659>,  <19.615311, 16.520357, 16.391582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.294577, 16.750942, 16.328659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384664, -0.699426, -0.602359,
		-0.457264, -0.422483, 0.782571,
		-0.801838, 0.576464, -0.157308,
		19.054026, 16.923882, 16.281466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.900337, 16.246302, 16.541925>,  <19.615311, 16.520357, 16.391582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.900337, 16.246302, 16.541925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.934307, 16.484489, 16.222374>,  <18.954689, 16.627401, 16.030643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.934307, 16.484489, 16.222374>,  <18.900337, 16.246302, 16.541925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.934307, 16.484489, 16.222374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235812, -0.766984, -0.596764,
		-0.968081, 0.239066, 0.075281,
		0.084927, 0.595468, -0.798877,
		18.959785, 16.663130, 15.982711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.198284, 16.202656, 16.288912>,  <18.900337, 16.246302, 16.541925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.198284, 16.202656, 16.288912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.500425, 16.306627, 16.048285>,  <18.681709, 16.369011, 15.903909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.500425, 16.306627, 16.048285>,  <18.198284, 16.202656, 16.288912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.500425, 16.306627, 16.048285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114818, -0.851279, -0.511997,
		-0.645183, 0.455808, -0.613170,
		0.755351, 0.259928, -0.601566,
		18.727030, 16.384605, 15.867815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.089930, 15.808144, 15.708674>,  <18.198284, 16.202656, 16.288912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.089930, 15.808144, 15.708674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.457300, 15.935570, 15.614859>,  <18.677723, 16.012026, 15.558569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.457300, 15.935570, 15.614859>,  <18.089930, 15.808144, 15.708674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.457300, 15.935570, 15.614859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063903, -0.704571, -0.706750,
		-0.390396, 0.634111, -0.667454,
		0.918427, 0.318565, -0.234540,
		18.732828, 16.031139, 15.544497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.100027, 15.798652, 15.045806>,  <18.089930, 15.808144, 15.708674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.100027, 15.798652, 15.045806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.488190, 15.791882, 15.142157>,  <18.721088, 15.787820, 15.199967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.488190, 15.791882, 15.142157>,  <18.100027, 15.798652, 15.045806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.488190, 15.791882, 15.142157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152297, -0.731216, -0.664928,
		0.187387, 0.681936, -0.707000,
		0.970408, -0.016925, 0.240877,
		18.779312, 15.786804, 15.214419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.910900, 15.768097, 14.706703>,  <18.100027, 15.798652, 15.045806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.910900, 15.768097, 14.706703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.915939, 15.430112, 14.492832>,  <18.918962, 15.227321, 14.364510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.915939, 15.430112, 14.492832>,  <18.910900, 15.768097, 14.706703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.915939, 15.430112, 14.492832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461029, -0.469585, 0.752955,
		-0.887296, -0.255986, 0.383637,
		0.012596, -0.844962, -0.534678,
		18.919718, 15.176623, 14.332429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.569183, 15.173102, 15.082842>,  <18.910900, 15.768097, 14.706703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.569183, 15.173102, 15.082842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.860596, 15.073065, 14.827751>,  <19.035444, 15.013042, 14.674697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.860596, 15.073065, 14.827751>,  <18.569183, 15.173102, 15.082842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.860596, 15.073065, 14.827751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527753, -0.388598, 0.755294,
		-0.436714, -0.886817, -0.151119,
		0.728532, -0.250094, -0.637726,
		19.079155, 14.998037, 14.636434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889664, 14.645543, 15.387966>,  <18.569183, 15.173102, 15.082842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.889664, 14.645543, 15.387966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.150900, 14.748417, 15.103058>,  <19.307642, 14.810142, 14.932113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.150900, 14.748417, 15.103058>,  <18.889664, 14.645543, 15.387966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.150900, 14.748417, 15.103058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757263, -0.228166, 0.611958,
		-0.005130, -0.939040, -0.343770,
		0.653090, 0.257185, -0.712271,
		19.346827, 14.825572, 14.889377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.243137, 14.090661, 15.197783>,  <18.889664, 14.645543, 15.387966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.243137, 14.090661, 15.197783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.451811, 14.431887, 15.202291>,  <19.577015, 14.636622, 15.204995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.451811, 14.431887, 15.202291>,  <19.243137, 14.090661, 15.197783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.451811, 14.431887, 15.202291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530112, -0.334477, 0.779170,
		0.668451, -0.400507, -0.626711,
		0.521684, 0.853065, 0.011268,
		19.608316, 14.687806, 15.205671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.925535, 13.870123, 15.229939>,  <19.243137, 14.090661, 15.197783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.925535, 13.870123, 15.229939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.932785, 14.247260, 15.363038>,  <19.937134, 14.473542, 15.442897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.932785, 14.247260, 15.363038>,  <19.925535, 13.870123, 15.229939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.932785, 14.247260, 15.363038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467010, -0.302249, 0.830992,
		0.884066, 0.140336, -0.445794,
		0.018123, 0.942842, 0.332746,
		19.938221, 14.530113, 15.462862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.487103, 14.269272, 15.014752>,  <19.925535, 13.870123, 15.229939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.487103, 14.269272, 15.014752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.404522, 13.878763, 14.988615>,  <20.354973, 13.644458, 14.972933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.404522, 13.878763, 14.988615>,  <20.487103, 14.269272, 15.014752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.404522, 13.878763, 14.988615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546938, 0.170519, -0.819623,
		0.811318, -0.133473, -0.569164,
		-0.206451, -0.976273, -0.065344,
		20.342587, 13.585881, 14.969012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.698799, 14.005839, 14.363093>,  <20.487103, 14.269272, 15.014752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.698799, 14.005839, 14.363093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.403101, 13.773175, 14.498851>,  <20.225681, 13.633576, 14.580305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.403101, 13.773175, 14.498851>,  <20.698799, 14.005839, 14.363093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.403101, 13.773175, 14.498851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381917, -0.052988, -0.922677,
		0.554669, -0.811704, -0.182975,
		-0.739244, -0.581661, 0.339394,
		20.181328, 13.598677, 14.600669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.548288, 13.652064, 13.797313>,  <20.698799, 14.005839, 14.363093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.548288, 13.652064, 13.797313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.224224, 13.562193, 14.013888>,  <20.029785, 13.508270, 14.143834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.224224, 13.562193, 14.013888>,  <20.548288, 13.652064, 13.797313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.224224, 13.562193, 14.013888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569961, 0.085981, -0.817160,
		0.137047, -0.970632, -0.197718,
		-0.810162, -0.224681, 0.541439,
		19.981174, 13.494790, 14.176320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.222408, 13.092911, 13.387890>,  <20.548288, 13.652064, 13.797313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.222408, 13.092911, 13.387890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.943588, 13.263834, 13.618204>,  <19.776297, 13.366387, 13.756392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.943588, 13.263834, 13.618204>,  <20.222408, 13.092911, 13.387890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.943588, 13.263834, 13.618204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600207, 0.091590, -0.794584,
		-0.392268, -0.899455, 0.192630,
		-0.697050, 0.427307, 0.575787,
		19.734474, 13.392026, 13.790940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.577515, 12.700519, 13.270586>,  <20.222408, 13.092911, 13.387890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.577515, 12.700519, 13.270586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.484133, 13.064241, 13.408374>,  <19.428104, 13.282475, 13.491046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.484133, 13.064241, 13.408374>,  <19.577515, 12.700519, 13.270586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.484133, 13.064241, 13.408374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703348, 0.086701, -0.705538,
		-0.671418, -0.406991, 0.619320,
		-0.233452, 0.909308, 0.344468,
		19.414097, 13.337034, 13.511715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.801607, 12.756190, 13.094967>,  <19.577515, 12.700519, 13.270586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.801607, 12.756190, 13.094967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.922026, 13.123523, 13.197762>,  <18.994276, 13.343922, 13.259439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.922026, 13.123523, 13.197762>,  <18.801607, 12.756190, 13.094967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.922026, 13.123523, 13.197762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604920, 0.392229, -0.692985,
		-0.737187, 0.053164, 0.673594,
		0.301045, 0.918330, 0.256986,
		19.012339, 13.399022, 13.274858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.229971, 13.180314, 13.159916>,  <18.801607, 12.756190, 13.094967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.229971, 13.180314, 13.159916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.541515, 13.417799, 13.079040>,  <18.728441, 13.560290, 13.030514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.541515, 13.417799, 13.079040>,  <18.229971, 13.180314, 13.159916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.541515, 13.417799, 13.079040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492006, 0.378428, -0.784042,
		-0.388980, 0.710140, 0.586852,
		0.778861, 0.593712, -0.202192,
		18.775173, 13.595913, 13.018382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.003403, 13.946776, 13.069538>,  <18.229971, 13.180314, 13.159916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.003403, 13.946776, 13.069538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.363182, 13.943298, 12.894762>,  <18.579050, 13.941212, 12.789897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.363182, 13.943298, 12.894762>,  <18.003403, 13.946776, 13.069538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.363182, 13.943298, 12.894762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357480, 0.560487, -0.747036,
		0.251395, 0.828118, 0.501021,
		0.899449, -0.008696, -0.436939,
		18.633017, 13.940690, 12.763680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.194639, 14.655903, 12.933273>,  <18.003403, 13.946776, 13.069538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.194639, 14.655903, 12.933273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.396843, 14.404651, 12.696660>,  <18.518166, 14.253900, 12.554691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.396843, 14.404651, 12.696660>,  <18.194639, 14.655903, 12.933273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.396843, 14.404651, 12.696660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346428, 0.480136, -0.805889,
		0.790219, 0.612309, 0.025112,
		0.505510, -0.628129, -0.591534,
		18.548496, 14.216212, 12.519199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.500277, 15.078094, 12.389735>,  <18.194639, 14.655903, 12.933273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.500277, 15.078094, 12.389735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.509008, 14.708310, 12.237475>,  <18.514248, 14.486440, 12.146119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.509008, 14.708310, 12.237475>,  <18.500277, 15.078094, 12.389735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.509008, 14.708310, 12.237475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305876, 0.356308, -0.882884,
		0.951821, 0.135703, -0.274993,
		0.021828, -0.924462, -0.380649,
		18.515556, 14.430971, 12.123281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.758703, 15.144475, 11.750339>,  <18.500277, 15.078094, 12.389735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.758703, 15.144475, 11.750339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.577480, 14.788581, 11.728024>,  <18.468746, 14.575045, 11.714636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.577480, 14.788581, 11.728024>,  <18.758703, 15.144475, 11.750339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.577480, 14.788581, 11.728024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235470, 0.179787, -0.955107,
		0.859822, -0.419581, -0.290960,
		-0.453056, -0.889735, -0.055786,
		18.441563, 14.521661, 11.711288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.940819, 15.005119, 10.986007>,  <18.758703, 15.144475, 11.750339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.940819, 15.005119, 10.986007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.654625, 14.746026, 11.090716>,  <18.482908, 14.590570, 11.153543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.654625, 14.746026, 11.090716>,  <18.940819, 15.005119, 10.986007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.654625, 14.746026, 11.090716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337923, -0.007086, -0.941147,
		0.611467, -0.761835, -0.213814,
		-0.715483, -0.647733, 0.261774,
		18.439980, 14.551706, 11.169249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.985844, 14.434638, 10.553827>,  <18.940819, 15.005119, 10.986007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.985844, 14.434638, 10.553827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.607403, 14.433253, 10.683366>,  <18.380339, 14.432423, 10.761089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.607403, 14.433253, 10.683366>,  <18.985844, 14.434638, 10.553827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.607403, 14.433253, 10.683366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321453, -0.111785, -0.940304,
		0.039457, -0.993726, 0.104647,
		-0.946103, -0.003463, 0.323847,
		18.323572, 14.432215, 10.780519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.635973, 13.912366, 10.199512>,  <18.985844, 14.434638, 10.553827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.635973, 13.912366, 10.199512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.329796, 14.138494, 10.322481>,  <18.146090, 14.274172, 10.396263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.329796, 14.138494, 10.322481>,  <18.635973, 13.912366, 10.199512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.329796, 14.138494, 10.322481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380872, -0.012930, -0.924537,
		-0.518687, -0.824769, 0.225213,
		-0.765442, 0.565322, 0.307425,
		18.100163, 14.308091, 10.414708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.014044, 13.655449, 9.870717>,  <18.635973, 13.912366, 10.199512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.014044, 13.655449, 9.870717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.952553, 14.036762, 9.974733>,  <17.915659, 14.265550, 10.037143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.952553, 14.036762, 9.974733>,  <18.014044, 13.655449, 9.870717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.952553, 14.036762, 9.974733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533396, 0.141473, -0.833951,
		-0.831779, -0.266905, 0.486729,
		-0.153727, 0.953282, 0.260040,
		17.906435, 14.322747, 10.052746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.249916, 13.814811, 9.780830>,  <18.014044, 13.655449, 9.870717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.249916, 13.814811, 9.780830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.450716, 14.160365, 9.797300>,  <17.571196, 14.367698, 9.807182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.450716, 14.160365, 9.797300>,  <17.249916, 13.814811, 9.780830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.450716, 14.160365, 9.797300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400841, 0.274585, -0.874031,
		-0.766369, 0.422260, 0.484123,
		0.502001, 0.863886, 0.041174,
		17.601316, 14.419531, 9.809652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.774187, 14.268452, 9.542597>,  <17.249916, 13.814811, 9.780830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.774187, 14.268452, 9.542597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.105612, 14.491487, 9.522263>,  <17.304466, 14.625308, 9.510062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.105612, 14.491487, 9.522263>,  <16.774187, 14.268452, 9.542597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.105612, 14.491487, 9.522263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459458, 0.625224, -0.630868,
		-0.319980, 0.546069, 0.774224,
		0.828560, 0.557588, -0.050837,
		17.354179, 14.658763, 9.507011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.524630, 14.980824, 9.409503>,  <16.774187, 14.268452, 9.542597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.524630, 14.980824, 9.409503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.905685, 14.960563, 9.289561>,  <17.134319, 14.948406, 9.217596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.905685, 14.960563, 9.289561>,  <16.524630, 14.980824, 9.409503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.905685, 14.960563, 9.289561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187564, 0.678277, -0.710465,
		0.239370, 0.733059, 0.636653,
		0.952640, -0.050651, -0.299854,
		17.191477, 14.945368, 9.199605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.772779, 15.591010, 9.221585>,  <16.524630, 14.980824, 9.409503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.772779, 15.591010, 9.221585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.009256, 15.346024, 9.011680>,  <17.151142, 15.199032, 8.885736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.009256, 15.346024, 9.011680>,  <16.772779, 15.591010, 9.221585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.009256, 15.346024, 9.011680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182338, 0.532303, -0.826684,
		0.785649, 0.584414, 0.203018,
		0.591192, -0.612466, -0.524764,
		17.186615, 15.162284, 8.854251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.090017, 16.020031, 8.724705>,  <16.772779, 15.591010, 9.221585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.090017, 16.020031, 8.724705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.158674, 15.647582, 8.595989>,  <17.199869, 15.424112, 8.518760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.158674, 15.647582, 8.595989>,  <17.090017, 16.020031, 8.724705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.158674, 15.647582, 8.595989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165527, 0.294735, -0.941134,
		0.971154, 0.214803, -0.103537,
		0.171642, -0.931124, -0.321788,
		17.210167, 15.368245, 8.499453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.457363, 16.084738, 8.134739>,  <17.090017, 16.020031, 8.724705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.457363, 16.084738, 8.134739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.314150, 15.714898, 8.082695>,  <17.228222, 15.492994, 8.051469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.314150, 15.714898, 8.082695>,  <17.457363, 16.084738, 8.134739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.314150, 15.714898, 8.082695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355583, 0.263867, -0.896624,
		0.863349, -0.274757, -0.423245,
		-0.358034, -0.924598, -0.130111,
		17.206739, 15.437518, 8.043662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.257956, 16.572506, 7.709631>,  <17.457363, 16.084738, 8.134739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.257956, 16.572506, 7.709631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.933254, 16.353470, 7.790826>,  <16.738434, 16.222048, 7.839542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.933254, 16.353470, 7.790826>,  <17.257956, 16.572506, 7.709631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.933254, 16.353470, 7.790826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445755, -0.356400, 0.821146,
		-0.377308, 0.757049, 0.533400,
		-0.811752, -0.547591, 0.202986,
		16.689728, 16.189192, 7.851722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.844751, 17.276943, 7.870942>,  <17.257956, 16.572506, 7.709631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.844751, 17.276943, 7.870942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.142178, 17.199533, 8.126960>,  <17.320633, 17.153088, 8.280570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.142178, 17.199533, 8.126960>,  <16.844751, 17.276943, 7.870942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.142178, 17.199533, 8.126960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668661, 0.215298, -0.711716,
		-0.000068, 0.957181, 0.289490,
		0.743568, -0.193522, 0.640044,
		17.365248, 17.141478, 8.318973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.295301, 17.873451, 8.002549>,  <16.844751, 17.276943, 7.870942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.295301, 17.873451, 8.002549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.492849, 17.526190, 8.022129>,  <17.611378, 17.317833, 8.033877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.492849, 17.526190, 8.022129>,  <17.295301, 17.873451, 8.002549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.492849, 17.526190, 8.022129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687919, 0.355667, -0.632668,
		0.531844, 0.346131, 0.772875,
		0.493872, -0.868156, 0.048951,
		17.641010, 17.265743, 8.036815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711802, 18.063221, 8.402722>,  <17.295301, 17.873451, 8.002549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.711802, 18.063221, 8.402722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.827391, 18.003849, 8.781027>,  <16.896744, 17.968225, 9.008009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.827391, 18.003849, 8.781027>,  <16.711802, 18.063221, 8.402722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.827391, 18.003849, 8.781027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944803, -0.115121, -0.306747,
		0.154408, 0.982199, 0.106972,
		0.288972, -0.148432, 0.945761,
		16.914082, 17.959320, 9.064755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.296696, 18.435474, 8.529991>,  <16.711802, 18.063221, 8.402722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.296696, 18.435474, 8.529991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.301186, 18.150129, 8.810273>,  <17.303879, 17.978922, 8.978442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.301186, 18.150129, 8.810273>,  <17.296696, 18.435474, 8.529991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.301186, 18.150129, 8.810273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996329, -0.051497, -0.068386,
		0.084868, 0.698901, 0.710166,
		0.011224, -0.713362, 0.700705,
		17.304552, 17.936121, 9.020485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.502628, 18.635942, 9.136477>,  <17.296696, 18.435474, 8.529991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.502628, 18.635942, 9.136477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.618328, 18.253399, 9.119925>,  <17.687748, 18.023872, 9.109993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.618328, 18.253399, 9.119925>,  <17.502628, 18.635942, 9.136477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.618328, 18.253399, 9.119925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951796, 0.291941, -0.094097,
		0.102071, -0.012170, 0.994703,
		0.289249, -0.956359, -0.041383,
		17.705103, 17.966492, 9.107510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.019691, 18.450653, 9.650261>,  <17.502628, 18.635942, 9.136477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.019691, 18.450653, 9.650261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.053070, 18.259714, 9.300364>,  <18.073097, 18.145151, 9.090425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.053070, 18.259714, 9.300364>,  <18.019691, 18.450653, 9.650261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.053070, 18.259714, 9.300364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894368, 0.423003, -0.145516,
		0.439481, -0.770201, 0.462220,
		0.083444, -0.477346, -0.874744,
		18.078104, 18.116510, 9.037940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.634714, 18.023970, 9.488504>,  <18.019691, 18.450653, 9.650261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.634714, 18.023970, 9.488504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.516891, 18.127110, 9.120428>,  <18.446198, 18.188993, 8.899582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.516891, 18.127110, 9.120428>,  <18.634714, 18.023970, 9.488504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.516891, 18.127110, 9.120428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951825, 0.165046, -0.258436,
		0.085237, -0.951984, -0.294041,
		-0.294557, 0.257847, -0.920190,
		18.428524, 18.204464, 8.844371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.009743, 17.379272, 9.766249>,  <18.634714, 18.023970, 9.488504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.009743, 17.379272, 9.766249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.791548, 17.495090, 10.080855>,  <18.660631, 17.564581, 10.269620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.791548, 17.495090, 10.080855>,  <19.009743, 17.379272, 9.766249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.791548, 17.495090, 10.080855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816603, -0.027666, 0.576536,
		0.188691, 0.956765, -0.221350,
		-0.545486, 0.289543, 0.786518,
		18.627903, 17.581953, 10.316811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.312975, 17.956656, 10.149158>,  <19.009743, 17.379272, 9.766249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.312975, 17.956656, 10.149158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.078114, 17.761286, 10.407364>,  <18.937197, 17.644064, 10.562288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.078114, 17.761286, 10.407364>,  <19.312975, 17.956656, 10.149158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.078114, 17.761286, 10.407364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797852, -0.214538, 0.563388,
		-0.136685, 0.845822, 0.515658,
		-0.587154, -0.488425, 0.645517,
		18.901968, 17.614758, 10.601019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.435282, 18.148220, 10.932151>,  <19.312975, 17.956656, 10.149158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.435282, 18.148220, 10.932151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.266663, 17.792704, 11.004094>,  <19.165491, 17.579393, 11.047260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.266663, 17.792704, 11.004094>,  <19.435282, 18.148220, 10.932151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.266663, 17.792704, 11.004094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738576, -0.221443, 0.636764,
		-0.526123, 0.401264, 0.749788,
		-0.421546, -0.888791, 0.179857,
		19.140200, 17.526066, 11.058051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.457209, 18.093887, 11.593710>,  <19.435282, 18.148220, 10.932151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.457209, 18.093887, 11.593710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.376263, 17.714220, 11.497272>,  <19.327694, 17.486420, 11.439408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.376263, 17.714220, 11.497272>,  <19.457209, 18.093887, 11.593710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.376263, 17.714220, 11.497272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681561, -0.313289, 0.661306,
		-0.703223, -0.030496, 0.710315,
		-0.202367, -0.949168, -0.241097,
		19.315552, 17.429470, 11.424943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.268490, 17.715061, 12.162188>,  <19.457209, 18.093887, 11.593710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.268490, 17.715061, 12.162188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.431253, 17.473198, 11.888308>,  <19.528912, 17.328081, 11.723979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.431253, 17.473198, 11.888308>,  <19.268490, 17.715061, 12.162188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.431253, 17.473198, 11.888308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747875, -0.209873, 0.629791,
		-0.524508, -0.768337, 0.366809,
		0.406908, -0.604657, -0.684700,
		19.553326, 17.291801, 11.682898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.637798, 17.236917, 12.640045>,  <19.268490, 17.715061, 12.162188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.637798, 17.236917, 12.640045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.796463, 17.146484, 12.284169>,  <19.891661, 17.092224, 12.070643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.796463, 17.146484, 12.284169>,  <19.637798, 17.236917, 12.640045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.796463, 17.146484, 12.284169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736741, -0.499764, 0.455465,
		-0.547608, -0.836135, -0.031673,
		0.396660, -0.226081, -0.889690,
		19.915461, 17.078659, 12.017262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.683382, 16.519836, 12.592854>,  <19.637798, 17.236917, 12.640045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.683382, 16.519836, 12.592854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.935259, 16.661797, 12.316440>,  <20.086386, 16.746973, 12.150591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.935259, 16.661797, 12.316440>,  <19.683382, 16.519836, 12.592854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.935259, 16.661797, 12.316440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743847, -0.531960, 0.404611,
		-0.224006, -0.768806, -0.598965,
		0.629693, 0.354903, -0.691036,
		20.124166, 16.768267, 12.109129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.944071, 15.953943, 12.341236>,  <19.683382, 16.519836, 12.592854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.944071, 15.953943, 12.341236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.209898, 16.239328, 12.252403>,  <20.369394, 16.410559, 12.199103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.209898, 16.239328, 12.252403>,  <19.944071, 15.953943, 12.341236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.209898, 16.239328, 12.252403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738936, -0.583339, 0.337178,
		0.111015, -0.388182, -0.914872,
		0.664567, 0.713464, -0.222082,
		20.409267, 16.453367, 12.185779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.459303, 15.611801, 12.088815>,  <19.944071, 15.953943, 12.341236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.459303, 15.611801, 12.088815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.600168, 15.956052, 12.235950>,  <20.684687, 16.162601, 12.324230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.600168, 15.956052, 12.235950>,  <20.459303, 15.611801, 12.088815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.600168, 15.956052, 12.235950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701034, -0.502942, 0.505570,
		0.620107, 0.079823, -0.780446,
		0.352163, 0.860626, 0.367836,
		20.705816, 16.214239, 12.346300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.945713, 15.239260, 12.315512>,  <20.459303, 15.611801, 12.088815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.945713, 15.239260, 12.315512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.998728, 15.612106, 12.450325>,  <21.030537, 15.835814, 12.531213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.998728, 15.612106, 12.450325>,  <20.945713, 15.239260, 12.315512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.998728, 15.612106, 12.450325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716978, -0.324943, 0.616730,
		0.684381, 0.159907, -0.711374,
		0.132536, 0.932117, 0.337034,
		21.038488, 15.891742, 12.551435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.646851, 15.479073, 12.183858>,  <20.945713, 15.239260, 12.315512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.646851, 15.479073, 12.183858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.534798, 15.704676, 12.494579>,  <21.467566, 15.840037, 12.681012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.534798, 15.704676, 12.494579>,  <21.646851, 15.479073, 12.183858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.534798, 15.704676, 12.494579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741870, -0.386354, 0.548050,
		0.609225, 0.729813, -0.310191,
		-0.280130, 0.564007, 0.776803,
		21.450758, 15.873878, 12.727620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.264727, 15.760920, 12.426271>,  <21.646851, 15.479073, 12.183858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.264727, 15.760920, 12.426271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.994955, 15.758228, 12.721595>,  <21.833092, 15.756614, 12.898789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.994955, 15.758228, 12.721595>,  <22.264727, 15.760920, 12.426271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.994955, 15.758228, 12.721595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701209, -0.318954, 0.637632,
		0.231197, 0.947746, 0.219829,
		-0.674429, -0.006727, 0.738309,
		21.792627, 15.756210, 12.943088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.588486, 16.121767, 13.010905>,  <22.264727, 15.760920, 12.426271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.588486, 16.121767, 13.010905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.301910, 15.874616, 13.140485>,  <22.129965, 15.726325, 13.218232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.301910, 15.874616, 13.140485>,  <22.588486, 16.121767, 13.010905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.301910, 15.874616, 13.140485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659884, -0.449461, 0.602110,
		-0.226429, 0.645143, 0.729740,
		-0.716437, -0.617879, 0.323949,
		22.086979, 15.689252, 13.237670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.806116, 16.046206, 13.805783>,  <22.588486, 16.121767, 13.010905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.806116, 16.046206, 13.805783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.540430, 15.764091, 13.706673>,  <22.381020, 15.594823, 13.647206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.540430, 15.764091, 13.706673>,  <22.806116, 16.046206, 13.805783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.540430, 15.764091, 13.706673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493939, -0.662861, 0.562707,
		-0.561110, 0.251372, 0.788649,
		-0.664214, -0.705285, -0.247776,
		22.341166, 15.552505, 13.632340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.861034, 15.635168, 14.390608>,  <22.806116, 16.046206, 13.805783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.861034, 15.635168, 14.390608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.648571, 15.377866, 14.170031>,  <22.521093, 15.223484, 14.037684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.648571, 15.377866, 14.170031>,  <22.861034, 15.635168, 14.390608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.648571, 15.377866, 14.170031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571349, -0.752534, 0.327494,
		-0.625643, -0.141116, 0.767240,
		-0.531160, -0.643256, -0.551444,
		22.489223, 15.184889, 14.004598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.984613, 15.361217, 15.077469>,  <22.861034, 15.635168, 14.390608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.984613, 15.361217, 15.077469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.328365, 15.162942, 15.127686>,  <23.534616, 15.043977, 15.157816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.328365, 15.162942, 15.127686>,  <22.984613, 15.361217, 15.077469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.328365, 15.162942, 15.127686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107211, -0.065392, -0.992083,
		0.499974, 0.866035, -0.003053,
		0.859379, -0.495689, 0.125543,
		23.586180, 15.014235, 15.165348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.519444, 15.780048, 14.694885>,  <22.984613, 15.361217, 15.077469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.519444, 15.780048, 14.694885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.580551, 15.386399, 14.731023>,  <23.617216, 15.150209, 14.752706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.580551, 15.386399, 14.731023>,  <23.519444, 15.780048, 14.694885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.580551, 15.386399, 14.731023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289715, -0.042803, -0.956155,
		0.944842, 0.172244, 0.278576,
		0.152768, -0.984124, 0.090344,
		23.626381, 15.091162, 14.758126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.184616, 15.867413, 14.408162>,  <23.519444, 15.780048, 14.694885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.184616, 15.867413, 14.408162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.015018, 15.505467, 14.392931>,  <23.913260, 15.288301, 14.383792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.015018, 15.505467, 14.392931>,  <24.184616, 15.867413, 14.408162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.015018, 15.505467, 14.392931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477355, -0.187551, -0.858462,
		0.769649, -0.382161, 0.511462,
		-0.423996, -0.904864, -0.038078,
		23.887819, 15.234009, 14.381508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.593124, 15.276845, 14.495166>,  <24.184616, 15.867413, 14.408162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.593124, 15.276845, 14.495166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291256, 15.244541, 14.234720>,  <24.110134, 15.225159, 14.078453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291256, 15.244541, 14.234720>,  <24.593124, 15.276845, 14.495166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.291256, 15.244541, 14.234720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654200, -0.017068, -0.756129,
		0.049953, -0.996587, 0.065716,
		-0.754670, -0.080762, -0.651115,
		24.064856, 15.220313, 14.039386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.780235, 14.729746, 14.922099>,  <24.593124, 15.276845, 14.495166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.780235, 14.729746, 14.922099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.147379, 14.667036, 14.776247>,  <25.367664, 14.629410, 14.688736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.147379, 14.667036, 14.776247>,  <24.780235, 14.729746, 14.922099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.147379, 14.667036, 14.776247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268857, -0.430230, 0.861753,
		-0.291975, -0.889002, -0.352741,
		0.917860, -0.156773, -0.364631,
		25.422737, 14.620004, 14.666858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.957357, 14.005651, 15.014540>,  <24.780235, 14.729746, 14.922099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.957357, 14.005651, 15.014540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292425, 14.223603, 14.999493>,  <25.493465, 14.354374, 14.990464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292425, 14.223603, 14.999493>,  <24.957357, 14.005651, 15.014540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.292425, 14.223603, 14.999493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309316, -0.416509, 0.854894,
		0.450146, -0.727755, -0.517437,
		0.837671, 0.544878, -0.037617,
		25.543726, 14.387067, 14.988208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.033007, 13.250061, 14.554100>,  <24.957357, 14.005651, 15.014540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.033007, 13.250061, 14.554100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269121, 13.127795, 14.255267>,  <25.410789, 13.054436, 14.075968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269121, 13.127795, 14.255267>,  <25.033007, 13.250061, 14.554100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.269121, 13.127795, 14.255267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589358, 0.795624, 0.140139,
		0.551561, -0.523021, 0.649792,
		0.590286, -0.305665, -0.747082,
		25.446207, 13.036096, 14.031142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785597, 13.305896, 14.742496>,  <25.033007, 13.250061, 14.554100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785597, 13.305896, 14.742496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.748449, 13.335013, 14.345290>,  <25.726160, 13.352484, 14.106967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.748449, 13.335013, 14.345290>,  <25.785597, 13.305896, 14.742496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.748449, 13.335013, 14.345290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622411, 0.782690, -0.000834,
		0.777161, -0.618141, -0.117996,
		-0.092870, 0.072793, -0.993014,
		25.720589, 13.356852, 14.047386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403572, 13.645567, 14.625669>,  <25.785597, 13.305896, 14.742496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403572, 13.645567, 14.625669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202745, 13.696474, 14.283504>,  <26.082249, 13.727018, 14.078205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202745, 13.696474, 14.283504>,  <26.403572, 13.645567, 14.625669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202745, 13.696474, 14.283504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598739, 0.764885, -0.237619,
		0.624050, -0.631469, -0.460225,
		-0.502068, 0.127268, -0.855412,
		26.052124, 13.734654, 14.026881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642267, 14.240300, 14.248913>,  <26.403572, 13.645567, 14.625669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642267, 14.240300, 14.248913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554203, 14.432796, 14.588309>,  <26.501364, 14.548292, 14.791947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554203, 14.432796, 14.588309>,  <26.642267, 14.240300, 14.248913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554203, 14.432796, 14.588309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540004, 0.784519, -0.304837,
		-0.812358, 0.391075, -0.432591,
		-0.220162, 0.481238, 0.848492,
		26.488155, 14.577167, 14.842857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681709, 15.038560, 14.406387>,  <26.642267, 14.240300, 14.248913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681709, 15.038560, 14.406387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687119, 15.054441, 14.806035>,  <26.690363, 15.063971, 15.045824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687119, 15.054441, 14.806035>,  <26.681709, 15.038560, 14.406387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687119, 15.054441, 14.806035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229648, 0.972378, -0.041750,
		-0.973180, 0.230010, 0.004030,
		0.013522, 0.039704, 0.999120,
		26.691175, 15.066353, 15.105771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<17.891878, 24.332102, 21.993567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.702456, 24.030542, 22.175722>,  <17.588802, 23.849607, 22.285015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.702456, 24.030542, 22.175722>,  <17.891878, 24.332102, 21.993567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.702456, 24.030542, 22.175722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349791, -0.313536, -0.882803,
		0.808324, -0.577351, -0.115229,
		-0.473559, -0.753897, 0.455391,
		17.560389, 23.804373, 22.312340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.161732, 23.765345, 21.541811>,  <17.891878, 24.332102, 21.993567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.161732, 23.765345, 21.541811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.852182, 23.625628, 21.753136>,  <17.666452, 23.541798, 21.879930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.852182, 23.625628, 21.753136>,  <18.161732, 23.765345, 21.541811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.852182, 23.625628, 21.753136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226467, -0.626401, -0.745878,
		0.591464, -0.696862, 0.405653,
		-0.773876, -0.349293, 0.528310,
		17.620020, 23.520840, 21.911629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.073919, 23.136671, 21.471436>,  <18.161732, 23.765345, 21.541811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.073919, 23.136671, 21.471436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.694586, 23.205479, 21.578075>,  <17.466986, 23.246763, 21.642059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.694586, 23.205479, 21.578075>,  <18.073919, 23.136671, 21.471436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.694586, 23.205479, 21.578075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307984, -0.700981, -0.643250,
		0.076229, -0.692123, 0.717743,
		-0.948332, 0.172019, 0.266598,
		17.410086, 23.257084, 21.658054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.771637, 22.430782, 21.599186>,  <18.073919, 23.136671, 21.471436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.771637, 22.430782, 21.599186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.467432, 22.685902, 21.550468>,  <17.284908, 22.838974, 21.521238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.467432, 22.685902, 21.550468>,  <17.771637, 22.430782, 21.599186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.467432, 22.685902, 21.550468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449725, -0.652685, -0.609713,
		-0.468365, -0.408923, 0.783209,
		-0.760514, 0.637797, -0.121791,
		17.239279, 22.877241, 21.513931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.241682, 22.008493, 21.616531>,  <17.771637, 22.430782, 21.599186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.241682, 22.008493, 21.616531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.094936, 22.329254, 21.427908>,  <17.006889, 22.521709, 21.314734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.094936, 22.329254, 21.427908>,  <17.241682, 22.008493, 21.616531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.094936, 22.329254, 21.427908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681181, -0.576786, -0.450899,
		-0.633564, 0.155797, 0.757842,
		-0.366864, 0.801901, -0.471557,
		16.984877, 22.569824, 21.286442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.446432, 22.097616, 21.716036>,  <17.241682, 22.008493, 21.616531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.446432, 22.097616, 21.716036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.503445, 22.299109, 21.375227>,  <16.537653, 22.420004, 21.170742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.503445, 22.299109, 21.375227>,  <16.446432, 22.097616, 21.716036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.503445, 22.299109, 21.375227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533548, -0.685936, -0.494792,
		-0.833674, 0.525118, 0.170996,
		0.142532, 0.503729, -0.852022,
		16.546204, 22.450228, 21.119621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.847339, 21.990685, 21.379374>,  <16.446432, 22.097616, 21.716036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.847339, 21.990685, 21.379374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.134483, 22.092415, 21.120146>,  <16.306770, 22.153454, 20.964609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.134483, 22.092415, 21.120146>,  <15.847339, 21.990685, 21.379374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.134483, 22.092415, 21.120146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237950, -0.785188, -0.571716,
		-0.654259, 0.564621, -0.503139,
		0.717862, 0.254328, -0.648068,
		16.349842, 22.168713, 20.925726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.512960, 22.013268, 20.738565>,  <15.847339, 21.990685, 21.379374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.512960, 22.013268, 20.738565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.893729, 21.969648, 20.624056>,  <16.122190, 21.943476, 20.555349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.893729, 21.969648, 20.624056>,  <15.512960, 22.013268, 20.738565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.893729, 21.969648, 20.624056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284690, -0.659985, -0.695249,
		-0.113119, 0.743322, -0.659300,
		0.951922, -0.109050, -0.286273,
		16.179306, 21.936934, 20.538174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.544537, 22.095848, 20.049038>,  <15.512960, 22.013268, 20.738565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.544537, 22.095848, 20.049038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.872246, 21.879349, 20.124769>,  <16.068871, 21.749449, 20.170208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.872246, 21.879349, 20.124769>,  <15.544537, 22.095848, 20.049038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.872246, 21.879349, 20.124769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201297, -0.580649, -0.788877,
		0.536909, 0.608194, -0.584661,
		0.819273, -0.541246, 0.189328,
		16.118027, 21.716974, 20.181568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.881419, 22.093061, 19.379692>,  <15.544537, 22.095848, 20.049038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.881419, 22.093061, 19.379692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.047882, 21.790930, 19.582193>,  <16.147760, 21.609652, 19.703693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.047882, 21.790930, 19.582193>,  <15.881419, 22.093061, 19.379692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.047882, 21.790930, 19.582193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083105, -0.586018, -0.806024,
		0.905487, 0.293360, -0.306647,
		0.416156, -0.755329, 0.506253,
		16.172729, 21.564331, 19.734070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.488329, 21.798517, 18.952599>,  <15.881419, 22.093061, 19.379692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.488329, 21.798517, 18.952599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.338160, 21.506502, 19.181019>,  <16.248058, 21.331293, 19.318071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.338160, 21.506502, 19.181019>,  <16.488329, 21.798517, 18.952599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.338160, 21.506502, 19.181019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148892, -0.655621, -0.740265,
		0.914815, -0.192889, 0.354833,
		-0.375425, -0.730037, 0.571053,
		16.225533, 21.287491, 19.352335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.023502, 21.337942, 18.940899>,  <16.488329, 21.798517, 18.952599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.023502, 21.337942, 18.940899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.696079, 21.130133, 19.038927>,  <16.499626, 21.005447, 19.097744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.696079, 21.130133, 19.038927>,  <17.023502, 21.337942, 18.940899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.696079, 21.130133, 19.038927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236725, -0.693814, -0.680135,
		0.523379, -0.498716, 0.690910,
		-0.818557, -0.519524, 0.245069,
		16.450512, 20.974276, 19.112448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.249519, 20.679142, 18.908495>,  <17.023502, 21.337942, 18.940899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.249519, 20.679142, 18.908495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.851507, 20.654137, 18.877487>,  <16.612700, 20.639133, 18.858883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.851507, 20.654137, 18.877487>,  <17.249519, 20.679142, 18.908495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.851507, 20.654137, 18.877487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099213, -0.689409, -0.717545,
		-0.008585, -0.721669, 0.692184,
		-0.995029, -0.062514, -0.077517,
		16.552998, 20.635384, 18.854233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.078819, 19.958918, 18.782454>,  <17.249519, 20.679142, 18.908495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.078819, 19.958918, 18.782454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.771128, 20.180712, 18.655437>,  <16.586512, 20.313787, 18.579227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.771128, 20.180712, 18.655437>,  <17.078819, 19.958918, 18.782454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.771128, 20.180712, 18.655437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038362, -0.536136, -0.843259,
		-0.637818, -0.636479, 0.433684,
		-0.769230, 0.554483, -0.317541,
		16.540358, 20.347057, 18.560175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.736856, 19.399374, 18.558413>,  <17.078819, 19.958918, 18.782454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.736856, 19.399374, 18.558413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.575333, 19.719658, 18.381414>,  <16.478418, 19.911829, 18.275215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.575333, 19.719658, 18.381414>,  <16.736856, 19.399374, 18.558413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.575333, 19.719658, 18.381414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175730, -0.406790, -0.896460,
		-0.897807, -0.439758, 0.023556,
		-0.403808, 0.800709, -0.442498,
		16.454189, 19.959871, 18.248665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.263552, 19.197912, 18.099131>,  <16.736856, 19.399374, 18.558413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.263552, 19.197912, 18.099131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.334202, 19.558088, 17.940126>,  <16.376593, 19.774193, 17.844725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.334202, 19.558088, 17.940126>,  <16.263552, 19.197912, 18.099131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.334202, 19.558088, 17.940126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059140, -0.412838, -0.908882,
		-0.982500, 0.137022, -0.126170,
		0.176625, 0.900439, -0.397510,
		16.387190, 19.828220, 17.820873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.827834, 19.171612, 17.533890>,  <16.263552, 19.197912, 18.099131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.827834, 19.171612, 17.533890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.128578, 19.432791, 17.497299>,  <16.309025, 19.589499, 17.475346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.128578, 19.432791, 17.497299>,  <15.827834, 19.171612, 17.533890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.128578, 19.432791, 17.497299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178267, -0.334898, -0.925237,
		-0.634766, 0.679342, -0.368195,
		0.751860, 0.652946, -0.091477,
		16.354136, 19.628675, 17.469856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.693037, 19.474714, 16.899784>,  <15.827834, 19.171612, 17.533890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.693037, 19.474714, 16.899784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.078533, 19.526186, 16.993288>,  <16.309832, 19.557070, 17.049391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.078533, 19.526186, 16.993288>,  <15.693037, 19.474714, 16.899784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.078533, 19.526186, 16.993288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260117, -0.257667, -0.930563,
		-0.059513, 0.957627, -0.281796,
		0.963741, 0.128681, 0.233760,
		16.367655, 19.564791, 17.063416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.892094, 19.635925, 16.251345>,  <15.693037, 19.474714, 16.899784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.892094, 19.635925, 16.251345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.224255, 19.544312, 16.454510>,  <16.423552, 19.489344, 16.576408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.224255, 19.544312, 16.454510>,  <15.892094, 19.635925, 16.251345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.224255, 19.544312, 16.454510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429492, -0.317564, -0.845393,
		0.354919, 0.920161, -0.165337,
		0.830403, -0.229035, 0.507912,
		16.473375, 19.475601, 16.606884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.386110, 20.130358, 16.053938>,  <15.892094, 19.635925, 16.251345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.386110, 20.130358, 16.053938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.566891, 19.798189, 16.184254>,  <16.675360, 19.598888, 16.262444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.566891, 19.798189, 16.184254>,  <16.386110, 20.130358, 16.053938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.566891, 19.798189, 16.184254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382827, -0.149313, -0.911674,
		0.805719, 0.536754, 0.250425,
		0.451953, -0.830422, 0.325788,
		16.702477, 19.549063, 16.281990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.093929, 20.212461, 15.658047>,  <16.386110, 20.130358, 16.053938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.093929, 20.212461, 15.658047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.046883, 19.832945, 15.775325>,  <17.018656, 19.605234, 15.845692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.046883, 19.832945, 15.775325>,  <17.093929, 20.212461, 15.658047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.046883, 19.832945, 15.775325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172489, -0.310274, -0.934868,
		0.977964, -0.059381, 0.200149,
		-0.117614, -0.948791, 0.293194,
		17.011599, 19.548307, 15.863283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.772181, 19.819622, 15.568377>,  <17.093929, 20.212461, 15.658047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.772181, 19.819622, 15.568377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.456984, 19.573647, 15.556278>,  <17.267866, 19.426062, 15.549019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.456984, 19.573647, 15.556278>,  <17.772181, 19.819622, 15.568377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.456984, 19.573647, 15.556278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245166, -0.268336, -0.931606,
		0.564766, -0.741515, 0.362209,
		-0.787993, -0.614941, -0.030247,
		17.220585, 19.389164, 15.547204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.956095, 19.088814, 15.511118>,  <17.772181, 19.819622, 15.568377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.956095, 19.088814, 15.511118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.617224, 19.201246, 15.330771>,  <17.413900, 19.268705, 15.222564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.617224, 19.201246, 15.330771>,  <17.956095, 19.088814, 15.511118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.617224, 19.201246, 15.330771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347560, -0.348657, -0.870426,
		-0.401859, -0.894109, 0.197682,
		-0.847179, 0.281082, -0.450867,
		17.363070, 19.285570, 15.195511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.026997, 19.127728, 16.260309>,  <17.956095, 19.088814, 15.511118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.026997, 19.127728, 16.260309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.198547, 19.361795, 15.985022>,  <18.301477, 19.502235, 15.819850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.198547, 19.361795, 15.985022>,  <18.026997, 19.127728, 16.260309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.198547, 19.361795, 15.985022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528260, 0.455546, 0.716533,
		0.732807, -0.670862, -0.113748,
		0.428877, 0.585169, -0.688217,
		18.327209, 19.537346, 15.778557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.755535, 19.022469, 16.295706>,  <18.026997, 19.127728, 16.260309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.755535, 19.022469, 16.295706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.750013, 19.378908, 16.114267>,  <18.746700, 19.592772, 16.005404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.750013, 19.378908, 16.114267>,  <18.755535, 19.022469, 16.295706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.750013, 19.378908, 16.114267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623743, 0.362233, 0.692627,
		0.781508, -0.273366, -0.560818,
		-0.013806, 0.891100, -0.453598,
		18.745872, 19.646238, 15.978188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.482130, 19.327843, 16.267134>,  <18.755535, 19.022469, 16.295706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.482130, 19.327843, 16.267134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.216526, 19.625782, 16.240940>,  <19.057163, 19.804546, 16.225224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.216526, 19.625782, 16.240940>,  <19.482130, 19.327843, 16.267134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.216526, 19.625782, 16.240940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416374, 0.441082, 0.795034,
		0.621065, 0.500646, -0.603019,
		-0.664012, 0.744849, -0.065485,
		19.017323, 19.849237, 16.221294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.896034, 19.844942, 16.521606>,  <19.482130, 19.327843, 16.267134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.896034, 19.844942, 16.521606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.547760, 20.039316, 16.491207>,  <19.338797, 20.155941, 16.472967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.547760, 20.039316, 16.491207>,  <19.896034, 19.844942, 16.521606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.547760, 20.039316, 16.491207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311354, 0.664167, 0.679662,
		0.380748, 0.568108, -0.729578,
		-0.870683, 0.485937, -0.075997,
		19.286554, 20.185097, 16.468409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.041796, 20.561275, 16.343386>,  <19.896034, 19.844942, 16.521606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.041796, 20.561275, 16.343386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.683710, 20.597912, 16.517836>,  <19.468859, 20.619894, 16.622505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.683710, 20.597912, 16.517836>,  <20.041796, 20.561275, 16.343386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.683710, 20.597912, 16.517836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382631, 0.659655, 0.646876,
		-0.228442, 0.745967, -0.625578,
		-0.895214, 0.091592, 0.436123,
		19.415146, 20.625389, 16.648672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.791885, 21.228920, 16.398737>,  <20.041796, 20.561275, 16.343386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.791885, 21.228920, 16.398737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.629168, 21.024343, 16.701509>,  <19.531536, 20.901598, 16.883173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.629168, 21.024343, 16.701509>,  <19.791885, 21.228920, 16.398737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.629168, 21.024343, 16.701509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365338, 0.668359, 0.647938,
		-0.837285, 0.540113, -0.085036,
		-0.406794, -0.511442, 0.756931,
		19.507130, 20.870911, 16.928589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.448244, 21.714302, 16.724155>,  <19.791885, 21.228920, 16.398737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.448244, 21.714302, 16.724155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.485897, 21.425873, 16.998730>,  <19.508490, 21.252815, 17.163473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.485897, 21.425873, 16.998730>,  <19.448244, 21.714302, 16.724155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.485897, 21.425873, 16.998730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124362, 0.692611, 0.710510,
		-0.987762, 0.018484, 0.154871,
		0.094132, -0.721075, 0.686433,
		19.514137, 21.209551, 17.204660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.142309, 21.889570, 17.294220>,  <19.448244, 21.714302, 16.724155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.142309, 21.889570, 17.294220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.372063, 21.599144, 17.445435>,  <19.509914, 21.424889, 17.536163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.372063, 21.599144, 17.445435>,  <19.142309, 21.889570, 17.294220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.372063, 21.599144, 17.445435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199037, 0.571830, 0.795861,
		-0.794021, -0.381886, 0.472964,
		0.574383, -0.726068, 0.378035,
		19.544378, 21.381323, 17.558846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.955477, 21.978920, 18.000217>,  <19.142309, 21.889570, 17.294220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.955477, 21.978920, 18.000217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.283766, 21.753613, 17.961962>,  <19.480740, 21.618427, 17.939009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.283766, 21.753613, 17.961962>,  <18.955477, 21.978920, 18.000217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.283766, 21.753613, 17.961962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402519, 0.451262, 0.796456,
		-0.405458, -0.692165, 0.597086,
		0.820720, -0.563268, -0.095641,
		19.529982, 21.584633, 17.933270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.079960, 21.719723, 18.621235>,  <18.955477, 21.978920, 18.000217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.079960, 21.719723, 18.621235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.434601, 21.691494, 18.438389>,  <19.647385, 21.674557, 18.328680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.434601, 21.691494, 18.438389>,  <19.079960, 21.719723, 18.621235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.434601, 21.691494, 18.438389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453631, 0.325628, 0.829569,
		0.090305, -0.942860, 0.320717,
		0.886602, -0.070573, -0.457116,
		19.700583, 21.670322, 18.301254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.396626, 21.394005, 19.082056>,  <19.079960, 21.719723, 18.621235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.396626, 21.394005, 19.082056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.657730, 21.578571, 18.841724>,  <19.814394, 21.689312, 18.697525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.657730, 21.578571, 18.841724>,  <19.396626, 21.394005, 19.082056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.657730, 21.578571, 18.841724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404849, 0.457878, 0.791483,
		0.640310, -0.759895, 0.112081,
		0.652763, 0.461419, -0.600827,
		19.853559, 21.716997, 18.661476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.015005, 21.190031, 19.327410>,  <19.396626, 21.394005, 19.082056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.015005, 21.190031, 19.327410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.032051, 21.538710, 19.132135>,  <20.042278, 21.747917, 19.014971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.032051, 21.538710, 19.132135>,  <20.015005, 21.190031, 19.327410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.032051, 21.538710, 19.132135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257891, 0.462474, 0.848298,
		0.965234, -0.162051, -0.205094,
		0.042617, 0.871698, -0.488187,
		20.044836, 21.800219, 18.985680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.635818, 21.537872, 19.564058>,  <20.015005, 21.190031, 19.327410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.635818, 21.537872, 19.564058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.431520, 21.834024, 19.389257>,  <20.308941, 22.011717, 19.284376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.431520, 21.834024, 19.389257>,  <20.635818, 21.537872, 19.564058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.431520, 21.834024, 19.389257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230805, 0.607725, 0.759868,
		0.828170, 0.287237, -0.481278,
		-0.510747, 0.740381, -0.437004,
		20.278296, 22.056139, 19.258156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.133944, 22.085230, 19.519928>,  <20.635818, 21.537872, 19.564058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.133944, 22.085230, 19.519928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.765060, 22.237314, 19.491726>,  <20.543730, 22.328566, 19.474804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.765060, 22.237314, 19.491726>,  <21.133944, 22.085230, 19.519928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.765060, 22.237314, 19.491726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172259, 0.567167, 0.805387,
		0.346205, 0.730590, -0.588541,
		-0.922209, 0.380211, -0.070505,
		20.488398, 22.351377, 19.470575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.130718, 22.818323, 19.578003>,  <21.133944, 22.085230, 19.519928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.130718, 22.818323, 19.578003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.744316, 22.756973, 19.661245>,  <20.512474, 22.720163, 19.711191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.744316, 22.756973, 19.661245>,  <21.130718, 22.818323, 19.578003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.744316, 22.756973, 19.661245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046318, 0.689281, 0.723012,
		-0.254335, 0.708073, -0.658746,
		-0.966007, -0.153375, 0.208104,
		20.454514, 22.710960, 19.723677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.816578, 23.475056, 19.586969>,  <21.130718, 22.818323, 19.578003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.816578, 23.475056, 19.586969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.548265, 23.259720, 19.791025>,  <20.387278, 23.130518, 19.913460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.548265, 23.259720, 19.791025>,  <20.816578, 23.475056, 19.586969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.548265, 23.259720, 19.791025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038081, 0.711931, 0.701216,
		-0.740679, 0.450934, -0.498049,
		-0.670779, -0.538342, 0.510141,
		20.347033, 23.098217, 19.944067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.139172, 23.856535, 19.848272>,  <20.816578, 23.475056, 19.586969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.139172, 23.856535, 19.848272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.177694, 23.543476, 20.094261>,  <20.200808, 23.355640, 20.241854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.177694, 23.543476, 20.094261>,  <20.139172, 23.856535, 19.848272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.177694, 23.543476, 20.094261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342626, 0.554018, 0.758730,
		-0.934523, -0.283777, -0.214798,
		0.096309, -0.782646, 0.614972,
		20.206587, 23.308681, 20.278753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.616913, 23.988003, 20.330973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.812424, 23.693579, 20.518297>,  <19.929729, 23.516926, 20.630692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.812424, 23.693579, 20.518297>,  <19.616913, 23.988003, 20.330973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.812424, 23.693579, 20.518297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152953, 0.456189, 0.876640,
		-0.858896, -0.500111, 0.110393,
		0.488777, -0.736058, 0.468312,
		19.959057, 23.472761, 20.658791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.180281, 23.843111, 20.879452>,  <19.616913, 23.988003, 20.330973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.180281, 23.843111, 20.879452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.538883, 23.689440, 20.967712>,  <19.754044, 23.597237, 21.020668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.538883, 23.689440, 20.967712>,  <19.180281, 23.843111, 20.879452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.538883, 23.689440, 20.967712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035507, 0.434140, 0.900146,
		-0.441609, -0.814819, 0.375567,
		0.896505, -0.384177, 0.220652,
		19.807835, 23.574186, 21.033907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.039093, 23.672550, 21.558676>,  <19.180281, 23.843111, 20.879452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.039093, 23.672550, 21.558676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.437967, 23.656708, 21.533199>,  <19.677292, 23.647202, 21.517914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.437967, 23.656708, 21.533199>,  <19.039093, 23.672550, 21.558676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.437967, 23.656708, 21.533199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074988, 0.509434, 0.857236,
		-0.001506, -0.859597, 0.510970,
		0.997183, -0.039607, -0.063692,
		19.737122, 23.644825, 21.514091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.347116, 23.345697, 22.237535>,  <19.039093, 23.672550, 21.558676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.347116, 23.345697, 22.237535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.574371, 23.618097, 22.052727>,  <19.710724, 23.781538, 21.941841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.574371, 23.618097, 22.052727>,  <19.347116, 23.345697, 22.237535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.574371, 23.618097, 22.052727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192468, 0.435901, 0.879174,
		0.800112, -0.588414, 0.116580,
		0.568135, 0.680999, -0.462020,
		19.744812, 23.822397, 21.914122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.909767, 23.341496, 22.664595>,  <19.347116, 23.345697, 22.237535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.909767, 23.341496, 22.664595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.904449, 23.686874, 22.462889>,  <19.901258, 23.894102, 22.341866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.904449, 23.686874, 22.462889>,  <19.909767, 23.341496, 22.664595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.904449, 23.686874, 22.462889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309176, 0.483145, 0.819135,
		0.950912, -0.145015, -0.273382,
		-0.013296, 0.863448, -0.504263,
		19.900461, 23.945910, 22.311609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.412634, 23.598261, 23.012474>,  <19.909767, 23.341496, 22.664595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.412634, 23.598261, 23.012474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.241255, 23.903355, 22.818705>,  <20.138428, 24.086411, 22.702442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.241255, 23.903355, 22.818705>,  <20.412634, 23.598261, 23.012474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.241255, 23.903355, 22.818705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191983, 0.600728, 0.776059,
		0.882936, 0.239499, -0.403813,
		-0.428447, 0.762736, -0.484425,
		20.112720, 24.132175, 22.673378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.978777, 24.158484, 23.068535>,  <20.412634, 23.598261, 23.012474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.978777, 24.158484, 23.068535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.637976, 24.344742, 22.972815>,  <20.433495, 24.456497, 22.915382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.637976, 24.344742, 22.972815>,  <20.978777, 24.158484, 23.068535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.637976, 24.344742, 22.972815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096815, 0.589337, 0.802065,
		0.514505, 0.660195, -0.547199,
		-0.852004, 0.465644, -0.239300,
		20.382374, 24.484434, 22.901024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.185049, 24.832541, 23.108654>,  <20.978777, 24.158484, 23.068535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.185049, 24.832541, 23.108654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.793129, 24.802023, 23.182600>,  <20.557978, 24.783712, 23.226967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.793129, 24.802023, 23.182600>,  <21.185049, 24.832541, 23.108654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.793129, 24.802023, 23.182600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102365, 0.602787, 0.791308,
		-0.171805, 0.794246, -0.582800,
		-0.979798, -0.076292, 0.184865,
		20.499189, 24.779135, 23.238060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.031359, 25.556332, 23.150208>,  <21.185049, 24.832541, 23.108654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.031359, 25.556332, 23.150208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.754524, 25.356894, 23.358982>,  <20.588423, 25.237230, 23.484247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.754524, 25.356894, 23.358982>,  <21.031359, 25.556332, 23.150208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.754524, 25.356894, 23.358982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063812, 0.762521, 0.643808,
		-0.718988, 0.412265, -0.559547,
		-0.692087, -0.498597, 0.521937,
		20.546898, 25.207315, 23.515564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.849485, 26.118319, 23.580635>,  <21.031359, 25.556332, 23.150208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.849485, 26.118319, 23.580635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.645861, 25.795345, 23.699905>,  <20.523685, 25.601562, 23.771467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.645861, 25.795345, 23.699905>,  <20.849485, 26.118319, 23.580635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.645861, 25.795345, 23.699905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177141, 0.437287, 0.881703,
		-0.842304, 0.396023, -0.365636,
		-0.509063, -0.807432, 0.298177,
		20.493141, 25.553116, 23.789358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.183338, 26.327852, 23.750549>,  <20.849485, 26.118319, 23.580635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.183338, 26.327852, 23.750549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.215982, 25.992699, 23.966434>,  <20.235569, 25.791607, 24.095966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.215982, 25.992699, 23.966434>,  <20.183338, 26.327852, 23.750549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.215982, 25.992699, 23.966434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202026, 0.516373, 0.832193,
		-0.975974, -0.176951, -0.127133,
		0.081609, -0.837883, 0.539715,
		20.240465, 25.741333, 24.128349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.729811, 26.477612, 24.314526>,  <20.183338, 26.327852, 23.750549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.729811, 26.477612, 24.314526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.952726, 26.177094, 24.455942>,  <20.086475, 25.996782, 24.540792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.952726, 26.177094, 24.455942>,  <19.729811, 26.477612, 24.314526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.952726, 26.177094, 24.455942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051926, 0.393420, 0.917892,
		-0.828695, -0.529887, 0.180236,
		0.557287, -0.751293, 0.353539,
		20.119913, 25.951706, 24.562004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.503563, 26.334129, 24.976681>,  <19.729811, 26.477612, 24.314526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.503563, 26.334129, 24.976681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.874493, 26.184828, 24.987637>,  <20.097052, 26.095247, 24.994209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.874493, 26.184828, 24.987637>,  <19.503563, 26.334129, 24.976681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.874493, 26.184828, 24.987637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145586, 0.427180, 0.892369,
		-0.344780, -0.823529, 0.450475,
		0.927326, -0.373254, 0.027389,
		20.152691, 26.072851, 24.995853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.633858, 25.945002, 25.718315>,  <19.503563, 26.334129, 24.976681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.633858, 25.945002, 25.718315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.990904, 26.041151, 25.565760>,  <20.205132, 26.098841, 25.474226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.990904, 26.041151, 25.565760>,  <19.633858, 25.945002, 25.718315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.990904, 26.041151, 25.565760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287985, 0.346847, 0.892615,
		0.346847, -0.906596, 0.240376,
		-0.892615, -0.240376, 0.381389,
		20.258688, 26.113264, 25.451344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.144646, 25.596102, 26.078669>,  <19.633858, 25.945002, 25.718315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.144646, 25.596102, 26.078669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.353430, 25.890257, 25.905806>,  <20.478701, 26.066750, 25.802088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.353430, 25.890257, 25.905806>,  <20.144646, 25.596102, 26.078669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.353430, 25.890257, 25.905806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511309, 0.135775, 0.848604,
		0.682730, -0.663904, -0.305142,
		0.521961, 0.735389, -0.432158,
		20.510017, 26.110874, 25.776157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.841574, 25.461493, 26.239550>,  <20.144646, 25.596102, 26.078669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.841574, 25.461493, 26.239550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.838037, 25.843266, 26.120232>,  <20.835917, 26.072329, 26.048641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.838037, 25.843266, 26.120232>,  <20.841574, 25.461493, 26.239550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.838037, 25.843266, 26.120232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658451, 0.230063, 0.716598,
		0.752572, -0.190079, -0.630481,
		-0.008840, 0.954432, -0.298296,
		20.835386, 26.129595, 26.030743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.508247, 25.692745, 26.256130>,  <20.841574, 25.461493, 26.239550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.508247, 25.692745, 26.256130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.267939, 26.007990, 26.309723>,  <21.123755, 26.197138, 26.341879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.267939, 26.007990, 26.309723>,  <21.508247, 25.692745, 26.256130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.267939, 26.007990, 26.309723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647046, 0.380955, 0.660458,
		0.469474, 0.483477, -0.738813,
		-0.600770, 0.788114, 0.133984,
		21.087708, 26.244425, 26.349918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.962120, 26.200222, 26.403263>,  <21.508247, 25.692745, 26.256130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.962120, 26.200222, 26.403263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.617620, 26.363213, 26.524731>,  <21.410921, 26.461006, 26.597610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.617620, 26.363213, 26.524731>,  <21.962120, 26.200222, 26.403263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.617620, 26.363213, 26.524731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438290, 0.293162, 0.849681,
		0.257199, 0.864882, -0.431078,
		-0.861250, 0.407474, 0.303668,
		21.359245, 26.485455, 26.615831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.148884, 26.837132, 26.488039>,  <21.962120, 26.200222, 26.403263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.148884, 26.837132, 26.488039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.801786, 26.784489, 26.679749>,  <21.593529, 26.752903, 26.794773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.801786, 26.784489, 26.679749>,  <22.148884, 26.837132, 26.488039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.801786, 26.784489, 26.679749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438626, 0.250697, 0.862994,
		-0.233730, 0.959078, -0.159813,
		-0.867743, -0.131609, 0.479272,
		21.541464, 26.745007, 26.823530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.943737, 27.467417, 26.899412>,  <22.148884, 26.837132, 26.488039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.943737, 27.467417, 26.899412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.784863, 27.145159, 27.075220>,  <21.689537, 26.951803, 27.180704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.784863, 27.145159, 27.075220>,  <21.943737, 27.467417, 26.899412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.784863, 27.145159, 27.075220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422406, 0.264687, 0.866899,
		-0.814748, 0.529978, 0.235179,
		-0.397188, -0.805645, 0.439519,
		21.665707, 26.903465, 27.207075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.537346, 27.741783, 27.517958>,  <21.943737, 27.467417, 26.899412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.537346, 27.741783, 27.517958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.645876, 27.357391, 27.539503>,  <21.710995, 27.126757, 27.552431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.645876, 27.357391, 27.539503>,  <21.537346, 27.741783, 27.517958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.645876, 27.357391, 27.539503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647547, 0.223662, 0.728463,
		-0.712085, -0.162771, 0.682964,
		0.271326, -0.960979, 0.053864,
		21.727274, 27.069098, 27.555662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.382952, 27.626112, 28.304199>,  <21.537346, 27.741783, 27.517958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.382952, 27.626112, 28.304199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.625645, 27.345901, 28.153923>,  <21.771259, 27.177774, 28.063757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.625645, 27.345901, 28.153923>,  <21.382952, 27.626112, 28.304199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.625645, 27.345901, 28.153923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667093, 0.191702, 0.719887,
		-0.432279, -0.687396, 0.583627,
		0.606731, -0.700526, -0.375688,
		21.807663, 27.135744, 28.041216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.562258, 27.129559, 28.816921>,  <21.382952, 27.626112, 28.304199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.562258, 27.129559, 28.816921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.882040, 27.197641, 28.586479>,  <22.073910, 27.238491, 28.448214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.882040, 27.197641, 28.586479>,  <21.562258, 27.129559, 28.816921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.882040, 27.197641, 28.586479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596125, -0.106361, 0.795816,
		0.074180, -0.979651, -0.186497,
		0.799458, 0.170209, -0.576104,
		22.121878, 27.248705, 28.413649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.065592, 26.738537, 28.647905>,  <21.562258, 27.129559, 28.816921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.065592, 26.738537, 28.647905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.878962, 27.080809, 28.737459>,  <20.766983, 27.286171, 28.791191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.878962, 27.080809, 28.737459>,  <21.065592, 26.738537, 28.647905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.878962, 27.080809, 28.737459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874404, -0.484339, 0.028870,
		0.133138, -0.182294, 0.974188,
		-0.466575, 0.855678, 0.223882,
		20.738989, 27.337511, 28.804625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.598099, 26.401754, 29.251230>,  <21.065592, 26.738537, 28.647905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.598099, 26.401754, 29.251230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.345554, 26.144312, 29.424276>,  <20.194027, 25.989847, 29.528103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.345554, 26.144312, 29.424276>,  <20.598099, 26.401754, 29.251230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.345554, 26.144312, 29.424276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208509, -0.678204, -0.704672,
		0.746931, -0.354699, 0.562390,
		-0.631362, -0.643605, 0.432614,
		20.156145, 25.951231, 29.554060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.900757, 25.639668, 29.214931>,  <20.598099, 26.401754, 29.251230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.900757, 25.639668, 29.214931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.504423, 25.609495, 29.259756>,  <20.266623, 25.591391, 29.286650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.504423, 25.609495, 29.259756>,  <20.900757, 25.639668, 29.214931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.504423, 25.609495, 29.259756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042291, -0.614633, -0.787679,
		0.128293, -0.785198, 0.605809,
		-0.990834, -0.075433, 0.112060,
		20.207172, 25.586864, 29.293373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.694620, 24.887997, 29.129025>,  <20.900757, 25.639668, 29.214931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.694620, 24.887997, 29.129025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.354723, 25.088463, 29.063578>,  <20.150785, 25.208742, 29.024309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.354723, 25.088463, 29.063578>,  <20.694620, 24.887997, 29.129025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.354723, 25.088463, 29.063578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306815, -0.722489, -0.619576,
		-0.428721, -0.476281, 0.767695,
		-0.849743, 0.501166, -0.163616,
		20.099800, 25.238813, 29.014492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.117456, 24.276983, 29.046913>,  <20.694620, 24.887997, 29.129025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.117456, 24.276983, 29.046913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.969860, 24.627800, 28.923855>,  <19.881302, 24.838289, 28.850019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.969860, 24.627800, 28.923855>,  <20.117456, 24.276983, 29.046913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.969860, 24.627800, 28.923855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448886, -0.458001, -0.767292,
		-0.813848, -0.145025, 0.562689,
		-0.368988, 0.877042, -0.307644,
		19.859163, 24.890913, 28.831562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.438259, 24.086277, 28.870142>,  <20.117456, 24.276983, 29.046913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.438259, 24.086277, 28.870142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.533754, 24.398085, 28.638502>,  <19.591051, 24.585169, 28.499517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.533754, 24.398085, 28.638502>,  <19.438259, 24.086277, 28.870142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.533754, 24.398085, 28.638502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410548, -0.459408, -0.787651,
		-0.880032, 0.425789, 0.210352,
		0.238736, 0.779518, -0.579100,
		19.605375, 24.631941, 28.464771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.859573, 24.207340, 28.446552>,  <19.438259, 24.086277, 28.870142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.859573, 24.207340, 28.446552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.165897, 24.382990, 28.258635>,  <19.349691, 24.488380, 28.145884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.165897, 24.382990, 28.258635>,  <18.859573, 24.207340, 28.446552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.165897, 24.382990, 28.258635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323432, -0.368412, -0.871587,
		-0.555812, 0.819417, -0.140107,
		0.765810, 0.439123, -0.469793,
		19.395641, 24.514727, 28.117697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.506639, 24.368572, 27.892651>,  <18.859573, 24.207340, 28.446552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.506639, 24.368572, 27.892651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.890814, 24.417589, 27.792612>,  <19.121319, 24.447001, 27.732590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.890814, 24.417589, 27.792612>,  <18.506639, 24.368572, 27.892651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.890814, 24.417589, 27.792612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225021, -0.187697, -0.956105,
		-0.164107, 0.974553, -0.152695,
		0.960435, 0.122544, -0.250097,
		19.178944, 24.454351, 27.717583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.509287, 24.701031, 27.260653>,  <18.506639, 24.368572, 27.892651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.509287, 24.701031, 27.260653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.893167, 24.589912, 27.243675>,  <19.123495, 24.523241, 27.233488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.893167, 24.589912, 27.243675>,  <18.509287, 24.701031, 27.260653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.893167, 24.589912, 27.243675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065773, -0.075204, -0.994997,
		0.273216, 0.957691, -0.090444,
		0.959702, -0.277797, -0.042443,
		19.181078, 24.506573, 27.230942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.886084, 25.081408, 26.642317>,  <18.509287, 24.701031, 27.260653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.886084, 25.081408, 26.642317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.048737, 24.722689, 26.712065>,  <19.146328, 24.507458, 26.753914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.048737, 24.722689, 26.712065>,  <18.886084, 25.081408, 26.642317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.048737, 24.722689, 26.712065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139497, -0.249572, -0.958256,
		0.902878, 0.365336, -0.226585,
		0.406634, -0.896796, 0.174370,
		19.170727, 24.453650, 26.764376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.418247, 25.103199, 26.193220>,  <18.886084, 25.081408, 26.642317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.418247, 25.103199, 26.193220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.336027, 24.722630, 26.284904>,  <19.286695, 24.494287, 26.339916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.336027, 24.722630, 26.284904>,  <19.418247, 25.103199, 26.193220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.336027, 24.722630, 26.284904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100865, -0.212371, -0.971970,
		0.973435, -0.222906, -0.052313,
		-0.205548, -0.951426, 0.229213,
		19.274363, 24.437202, 26.353668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.729959, 24.757362, 25.715969>,  <19.418247, 25.103199, 26.193220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.729959, 24.757362, 25.715969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.472403, 24.494909, 25.873394>,  <19.317867, 24.337437, 25.967848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.472403, 24.494909, 25.873394>,  <19.729959, 24.757362, 25.715969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.472403, 24.494909, 25.873394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229862, -0.324730, -0.917450,
		0.729770, -0.681205, 0.058272,
		-0.643894, -0.656132, 0.393561,
		19.279234, 24.298069, 25.991463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.894865, 24.218267, 25.328291>,  <19.729959, 24.757362, 25.715969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.894865, 24.218267, 25.328291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.527948, 24.166836, 25.479046>,  <19.307798, 24.135977, 25.569498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.527948, 24.166836, 25.479046>,  <19.894865, 24.218267, 25.328291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.527948, 24.166836, 25.479046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306409, -0.376588, -0.874240,
		0.254342, -0.917414, 0.306042,
		-0.917292, -0.128581, 0.376886,
		19.252762, 24.128262, 25.592112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.729118, 23.717878, 24.854311>,  <19.894865, 24.218267, 25.328291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.729118, 23.717878, 24.854311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.385162, 23.816059, 25.033352>,  <19.178789, 23.874968, 25.140776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.385162, 23.816059, 25.033352>,  <19.729118, 23.717878, 24.854311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.385162, 23.816059, 25.033352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508647, -0.337676, -0.791993,
		-0.043251, -0.908697, 0.415211,
		-0.859888, 0.245450, 0.447601,
		19.127195, 23.889694, 25.167633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.268829, 23.287401, 24.669111>,  <19.729118, 23.717878, 24.854311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.268829, 23.287401, 24.669111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.026226, 23.588480, 24.771557>,  <18.880665, 23.769127, 24.833025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.026226, 23.588480, 24.771557>,  <19.268829, 23.287401, 24.669111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.026226, 23.588480, 24.771557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594988, -0.216011, -0.774163,
		-0.527388, -0.621921, 0.578858,
		-0.606508, 0.752698, 0.256114,
		18.844275, 23.814289, 24.848391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.689850, 23.069775, 24.490717>,  <19.268829, 23.287401, 24.669111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.689850, 23.069775, 24.490717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.615807, 23.461189, 24.526939>,  <18.571381, 23.696037, 24.548672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.615807, 23.461189, 24.526939>,  <18.689850, 23.069775, 24.490717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.615807, 23.461189, 24.526939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586865, -0.036162, -0.808877,
		-0.788242, -0.202872, 0.580963,
		-0.185107, 0.978537, 0.090554,
		18.560274, 23.754751, 24.554106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.889349, 23.162561, 24.479641>,  <18.689850, 23.069775, 24.490717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.889349, 23.162561, 24.479641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.058252, 23.510736, 24.378420>,  <18.159594, 23.719643, 24.317688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.058252, 23.510736, 24.378420>,  <17.889349, 23.162561, 24.479641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.058252, 23.510736, 24.378420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748941, 0.177737, -0.638355,
		-0.510672, 0.459071, 0.726958,
		0.422258, 0.870438, -0.253052,
		18.184929, 23.771868, 24.302504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.272459, 23.574413, 24.389206>,  <17.889349, 23.162561, 24.479641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.272459, 23.574413, 24.389206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.576372, 23.753527, 24.200645>,  <17.758720, 23.860994, 24.087509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.576372, 23.753527, 24.200645>,  <17.272459, 23.574413, 24.389206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.576372, 23.753527, 24.200645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563663, 0.092282, -0.820834,
		-0.324054, 0.889367, 0.322513,
		0.759785, 0.447783, -0.471399,
		17.804308, 23.887861, 24.059225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.047369, 24.071650, 24.036512>,  <17.272459, 23.574413, 24.389206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.047369, 24.071650, 24.036512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.389435, 24.018932, 23.835981>,  <17.594673, 23.987303, 23.715664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.389435, 24.018932, 23.835981>,  <17.047369, 24.071650, 24.036512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.389435, 24.018932, 23.835981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517822, -0.173157, -0.837781,
		0.023604, 0.976037, -0.216322,
		0.855163, -0.131791, -0.501326,
		17.645983, 23.979395, 23.685583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.081165, 24.442141, 23.398336>,  <17.047369, 24.071650, 24.036512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.081165, 24.442141, 23.398336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.333149, 24.134634, 23.354239>,  <17.484339, 23.950130, 23.327780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.333149, 24.134634, 23.354239>,  <17.081165, 24.442141, 23.398336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.333149, 24.134634, 23.354239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345446, -0.150231, -0.926336,
		0.695571, 0.621637, -0.360206,
		0.629959, -0.768764, -0.110245,
		17.522137, 23.904005, 23.321165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.285284, 24.584444, 22.635004>,  <17.081165, 24.442141, 23.398336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.285284, 24.584444, 22.635004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.376976, 24.203779, 22.716780>,  <17.431992, 23.975380, 22.765844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.376976, 24.203779, 22.716780>,  <17.285284, 24.584444, 22.635004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.376976, 24.203779, 22.716780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183472, -0.248510, -0.951094,
		0.955925, 0.180509, -0.231569,
		0.229228, -0.951661, 0.204439,
		17.445744, 23.918282, 22.778111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<14.355235, 14.581699, 5.073930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.749153, 14.557843, 5.008667>,  <14.985504, 14.543530, 4.969509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.749153, 14.557843, 5.008667>,  <14.355235, 14.581699, 5.073930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.749153, 14.557843, 5.008667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171642, 0.189346, 0.966792,
		-0.026768, -0.980097, 0.196704,
		0.984796, -0.059642, -0.163157,
		15.044592, 14.539950, 4.959720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.633317, 14.208894, 5.639276>,  <14.355235, 14.581699, 5.073930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.633317, 14.208894, 5.639276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.949122, 14.394238, 5.478295>,  <15.138606, 14.505444, 5.381707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.949122, 14.394238, 5.478295>,  <14.633317, 14.208894, 5.639276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.949122, 14.394238, 5.478295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347022, 0.203820, 0.915441,
		0.506205, -0.862413, 0.000123,
		0.789513, 0.463359, -0.402451,
		15.185977, 14.533245, 5.357560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.260281, 14.025376, 6.049139>,  <14.633317, 14.208894, 5.639276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.260281, 14.025376, 6.049139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.303659, 14.369953, 5.850682>,  <15.329687, 14.576699, 5.731608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.303659, 14.369953, 5.850682>,  <15.260281, 14.025376, 6.049139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.303659, 14.369953, 5.850682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574811, 0.352854, 0.738300,
		0.811068, -0.365253, -0.456901,
		0.108447, 0.861443, -0.496140,
		15.336193, 14.628386, 5.701840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.994536, 14.158973, 5.794178>,  <15.260281, 14.025376, 6.049139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.994536, 14.158973, 5.794178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.771727, 14.468040, 5.915970>,  <15.638041, 14.653481, 5.989046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.771727, 14.468040, 5.915970>,  <15.994536, 14.158973, 5.794178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.771727, 14.468040, 5.915970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657394, 0.186183, 0.730184,
		0.507501, 0.606893, -0.611656,
		-0.557024, 0.772668, 0.304480,
		15.604620, 14.699841, 6.007314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.360229, 14.807278, 5.836693>,  <15.994536, 14.158973, 5.794178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.360229, 14.807278, 5.836693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.066418, 14.808641, 6.108121>,  <15.890131, 14.809460, 6.270978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.066418, 14.808641, 6.108121>,  <16.360229, 14.807278, 5.836693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.066418, 14.808641, 6.108121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660838, 0.230755, 0.714174,
		-0.154148, 0.973006, -0.171749,
		-0.734528, 0.003410, 0.678570,
		15.846060, 14.809665, 6.311692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.589794, 15.235569, 6.385156>,  <16.360229, 14.807278, 5.836693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.589794, 15.235569, 6.385156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.295509, 15.018578, 6.547364>,  <16.118938, 14.888383, 6.644690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.295509, 15.018578, 6.547364>,  <16.589794, 15.235569, 6.385156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.295509, 15.018578, 6.547364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456757, 0.044706, 0.888468,
		-0.500104, 0.838879, 0.214890,
		-0.735710, -0.542479, 0.405521,
		16.074797, 14.855834, 6.669021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.198042, 15.620684, 6.949016>,  <16.589794, 15.235569, 6.385156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.198042, 15.620684, 6.949016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.265915, 15.228220, 6.985965>,  <16.306639, 14.992742, 7.008135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.265915, 15.228220, 6.985965>,  <16.198042, 15.620684, 6.949016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.265915, 15.228220, 6.985965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561184, 0.173249, 0.809356,
		-0.810112, -0.085494, 0.580009,
		0.169681, -0.981160, 0.092373,
		16.316820, 14.933872, 7.013677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.024775, 15.595273, 7.689923>,  <16.198042, 15.620684, 6.949016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.024775, 15.595273, 7.689923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.265411, 15.310678, 7.544666>,  <16.409794, 15.139922, 7.457512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.265411, 15.310678, 7.544666>,  <16.024775, 15.595273, 7.689923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.265411, 15.310678, 7.544666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615643, 0.123299, 0.778320,
		-0.508988, -0.691798, 0.512197,
		0.601594, -0.711486, -0.363143,
		16.445890, 15.097233, 7.435724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.101330, 14.903251, 8.138921>,  <16.024775, 15.595273, 7.689923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.101330, 14.903251, 8.138921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.430735, 14.946983, 7.916254>,  <16.628378, 14.973223, 7.782654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.430735, 14.946983, 7.916254>,  <16.101330, 14.903251, 8.138921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.430735, 14.946983, 7.916254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563780, -0.048550, 0.824497,
		0.063117, -0.992819, -0.101620,
		0.823510, 0.109331, -0.556667,
		16.677788, 14.979783, 7.749254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670845, 14.307568, 8.141661>,  <16.101330, 14.903251, 8.138921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670845, 14.307568, 8.141661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.858990, 14.645971, 8.041242>,  <16.971876, 14.849013, 7.980990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.858990, 14.645971, 8.041242>,  <16.670845, 14.307568, 8.141661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.858990, 14.645971, 8.041242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650310, -0.139992, 0.746659,
		0.596536, -0.514460, -0.616016,
		0.470364, 0.846010, -0.251048,
		17.000099, 14.899775, 7.965927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.407785, 14.157886, 7.968216>,  <16.670845, 14.307568, 8.141661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.407785, 14.157886, 7.968216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.343395, 14.519108, 8.127504>,  <17.304762, 14.735841, 8.223077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.343395, 14.519108, 8.127504>,  <17.407785, 14.157886, 7.968216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.343395, 14.519108, 8.127504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526455, -0.262722, 0.808593,
		0.834825, 0.339807, -0.433127,
		-0.160974, 0.903055, 0.398220,
		17.295103, 14.790025, 8.246970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.030586, 14.383286, 8.301730>,  <17.407785, 14.157886, 7.968216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.030586, 14.383286, 8.301730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.750286, 14.611059, 8.473634>,  <17.582106, 14.747724, 8.576776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.750286, 14.611059, 8.473634>,  <18.030586, 14.383286, 8.301730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.750286, 14.611059, 8.473634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397633, -0.188397, 0.897995,
		0.592315, 0.800156, -0.094407,
		-0.700750, 0.569435, 0.429759,
		17.540062, 14.781890, 8.602562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.393064, 14.880688, 8.763428>,  <18.030586, 14.383286, 8.301730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.393064, 14.880688, 8.763428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.016649, 14.877753, 8.898717>,  <17.790800, 14.875993, 8.979891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.016649, 14.877753, 8.898717>,  <18.393064, 14.880688, 8.763428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.016649, 14.877753, 8.898717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336637, -0.119407, 0.934033,
		0.033534, 0.992818, 0.114836,
		-0.941037, -0.007336, 0.338224,
		17.734339, 14.875552, 9.000184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.504093, 15.286920, 9.359792>,  <18.393064, 14.880688, 8.763428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.504093, 15.286920, 9.359792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.157196, 15.090830, 9.394597>,  <17.949059, 14.973176, 9.415481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.157196, 15.090830, 9.394597>,  <18.504093, 15.286920, 9.359792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.157196, 15.090830, 9.394597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200686, -0.184244, 0.962174,
		-0.455649, 0.851901, 0.258166,
		-0.867242, -0.490224, 0.087014,
		17.897024, 14.943763, 9.420701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.101599, 15.640170, 9.850304>,  <18.504093, 15.286920, 9.359792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.101599, 15.640170, 9.850304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.937357, 15.275941, 9.831285>,  <17.838812, 15.057404, 9.819875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.937357, 15.275941, 9.831285>,  <18.101599, 15.640170, 9.850304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.937357, 15.275941, 9.831285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116610, -0.104155, 0.987701,
		-0.904326, 0.400012, 0.148948,
		-0.410606, -0.910572, -0.047545,
		17.814175, 15.002769, 9.817022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.669750, 15.572018, 10.474415>,  <18.101599, 15.640170, 9.850304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.669750, 15.572018, 10.474415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.732985, 15.201196, 10.338428>,  <17.770926, 14.978703, 10.256837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.732985, 15.201196, 10.338428>,  <17.669750, 15.572018, 10.474415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.732985, 15.201196, 10.338428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029954, -0.339633, 0.940081,
		-0.986971, -0.158797, -0.025922,
		0.158086, -0.927056, -0.339965,
		17.780411, 14.923079, 10.236439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.216520, 15.064820, 10.902171>,  <17.669750, 15.572018, 10.474415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.216520, 15.064820, 10.902171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.513773, 14.852287, 10.739474>,  <17.692125, 14.724768, 10.641856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.513773, 14.852287, 10.739474>,  <17.216520, 15.064820, 10.902171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.513773, 14.852287, 10.739474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123307, -0.488706, 0.863691,
		-0.657684, -0.691991, -0.297657,
		0.743133, -0.531332, -0.406742,
		17.736713, 14.692887, 10.617452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.138416, 14.457787, 11.314451>,  <17.216520, 15.064820, 10.902171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.138416, 14.457787, 11.314451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.503389, 14.437569, 11.152014>,  <17.722374, 14.425438, 11.054551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.503389, 14.437569, 11.152014>,  <17.138416, 14.457787, 11.314451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.503389, 14.437569, 11.152014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367758, -0.333999, 0.867870,
		-0.179501, -0.941217, -0.286163,
		0.912433, -0.050544, -0.406093,
		17.777119, 14.422405, 11.030186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439852, 13.731430, 11.527065>,  <17.138416, 14.457787, 11.314451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.439852, 13.731430, 11.527065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.735489, 13.980657, 11.424669>,  <17.912870, 14.130193, 11.363232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.735489, 13.980657, 11.424669>,  <17.439852, 13.731430, 11.527065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.735489, 13.980657, 11.424669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500632, -0.253831, 0.827609,
		0.450679, -0.739836, -0.499532,
		0.739091, 0.623067, -0.255989,
		17.957216, 14.167577, 11.347873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.054083, 13.283453, 11.596451>,  <17.439852, 13.731430, 11.527065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.054083, 13.283453, 11.596451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.160891, 13.668056, 11.622391>,  <18.224976, 13.898817, 11.637955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.160891, 13.668056, 11.622391>,  <18.054083, 13.283453, 11.596451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.160891, 13.668056, 11.622391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538218, -0.204610, 0.817592,
		0.799389, -0.183408, -0.572135,
		0.267017, 0.961507, 0.064849,
		18.240995, 13.956508, 11.641846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.739927, 13.314028, 11.425468>,  <18.054083, 13.283453, 11.596451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.739927, 13.314028, 11.425468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.669920, 13.633524, 11.655732>,  <18.627916, 13.825222, 11.793890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.669920, 13.633524, 11.655732>,  <18.739927, 13.314028, 11.425468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.669920, 13.633524, 11.655732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596082, -0.379389, 0.707637,
		0.783617, 0.466988, -0.409715,
		-0.175017, 0.798741, 0.575658,
		18.617414, 13.873146, 11.828430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.353605, 13.501353, 11.743028>,  <18.739927, 13.314028, 11.425468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.353605, 13.501353, 11.743028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.112720, 13.728347, 11.967635>,  <18.968189, 13.864543, 12.102400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.112720, 13.728347, 11.967635>,  <19.353605, 13.501353, 11.743028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.112720, 13.728347, 11.967635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581461, -0.170174, 0.795578,
		0.547033, 0.805607, -0.227489,
		-0.602211, 0.567483, 0.561520,
		18.932056, 13.898592, 12.136091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.801674, 13.662723, 12.290656>,  <19.353605, 13.501353, 11.743028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.801674, 13.662723, 12.290656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.451193, 13.783401, 12.440990>,  <19.240904, 13.855807, 12.531191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.451193, 13.783401, 12.440990>,  <19.801674, 13.662723, 12.290656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.451193, 13.783401, 12.440990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338005, -0.171213, 0.925440,
		0.343549, 0.937905, 0.048043,
		-0.876200, 0.301695, 0.375836,
		19.188334, 13.873909, 12.553741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.792839, 14.355256, 12.757750>,  <19.801674, 13.662723, 12.290656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.792839, 14.355256, 12.757750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.481443, 14.120232, 12.846045>,  <19.294605, 13.979217, 12.899021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.481443, 14.120232, 12.846045>,  <19.792839, 14.355256, 12.757750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.481443, 14.120232, 12.846045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315735, -0.062645, 0.946777,
		-0.542462, 0.806750, 0.234282,
		-0.778490, -0.587562, 0.220737,
		19.247896, 13.943963, 12.912266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.345785, 14.621539, 13.332186>,  <19.792839, 14.355256, 12.757750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.345785, 14.621539, 13.332186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.272865, 14.228528, 13.317184>,  <19.229115, 13.992722, 13.308184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.272865, 14.228528, 13.317184>,  <19.345785, 14.621539, 13.332186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.272865, 14.228528, 13.317184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223451, -0.078543, 0.971546,
		-0.957516, 0.168730, 0.233865,
		-0.182297, -0.982528, -0.037503,
		19.218176, 13.933769, 13.305934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.040722, 14.478740, 14.026623>,  <19.345785, 14.621539, 13.332186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.040722, 14.478740, 14.026623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.176971, 14.138444, 13.866515>,  <19.258722, 13.934266, 13.770451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.176971, 14.138444, 13.866515>,  <19.040722, 14.478740, 14.026623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.176971, 14.138444, 13.866515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384482, -0.262462, 0.885035,
		-0.857991, -0.455362, 0.237693,
		0.340626, -0.850740, -0.400268,
		19.279160, 13.883222, 13.746434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.764160, 13.883410, 14.416540>,  <19.040722, 14.478740, 14.026623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.764160, 13.883410, 14.416540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.095987, 13.742046, 14.243606>,  <19.295084, 13.657228, 14.139845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.095987, 13.742046, 14.243606>,  <18.764160, 13.883410, 14.416540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.095987, 13.742046, 14.243606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339194, -0.296110, 0.892898,
		-0.443579, -0.887367, -0.125769,
		0.829570, -0.353410, -0.432337,
		19.344858, 13.636024, 14.113904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.908970, 13.316248, 14.829964>,  <18.764160, 13.883410, 14.416540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.908970, 13.316248, 14.829964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.247578, 13.354844, 14.620546>,  <19.450743, 13.378001, 14.494896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.247578, 13.354844, 14.620546>,  <18.908970, 13.316248, 14.829964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.247578, 13.354844, 14.620546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517423, -0.380445, 0.766508,
		-0.125219, -0.919756, -0.371979,
		0.846518, 0.096490, -0.523542,
		19.501534, 13.383791, 14.463484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.311100, 12.682808, 15.018439>,  <18.908970, 13.316248, 14.829964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.311100, 12.682808, 15.018439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.567657, 12.971957, 14.915623>,  <19.721592, 13.145447, 14.853932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.567657, 12.971957, 14.915623>,  <19.311100, 12.682808, 15.018439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.567657, 12.971957, 14.915623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571235, -0.226301, 0.788973,
		0.512159, -0.652872, -0.558078,
		0.641392, 0.722873, -0.257041,
		19.760075, 13.188819, 14.838511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.841928, 12.345298, 15.113221>,  <19.311100, 12.682808, 15.018439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.841928, 12.345298, 15.113221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.930510, 12.735187, 15.101386>,  <19.983658, 12.969120, 15.094285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.930510, 12.735187, 15.101386>,  <19.841928, 12.345298, 15.113221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.930510, 12.735187, 15.101386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552985, -0.100528, 0.827104,
		0.803223, -0.199525, -0.561269,
		0.221452, 0.974722, -0.029588,
		19.996944, 13.027603, 15.092509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.540272, 12.398793, 15.417173>,  <19.841928, 12.345298, 15.113221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.540272, 12.398793, 15.417173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.371101, 12.760577, 15.394967>,  <20.269598, 12.977648, 15.381643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.371101, 12.760577, 15.394967>,  <20.540272, 12.398793, 15.417173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.371101, 12.760577, 15.394967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538253, 0.300030, 0.787570,
		0.728983, 0.303204, -0.613720,
		-0.422928, 0.904461, -0.055517,
		20.244223, 13.031916, 15.378312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.161144, 12.960811, 15.417399>,  <20.540272, 12.398793, 15.417173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.161144, 12.960811, 15.417399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.822329, 13.083408, 15.591104>,  <20.619040, 13.156967, 15.695326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.822329, 13.083408, 15.591104>,  <21.161144, 12.960811, 15.417399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.822329, 13.083408, 15.591104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490999, 0.138276, 0.860116,
		0.203573, 0.941775, -0.267614,
		-0.847041, 0.306495, 0.434261,
		20.568216, 13.175357, 15.721382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.776346, 12.496756, 15.078737>,  <21.161144, 12.960811, 15.417399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.776346, 12.496756, 15.078737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.160765, 12.575007, 15.000639>,  <22.391415, 12.621959, 14.953780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.160765, 12.575007, 15.000639>,  <21.776346, 12.496756, 15.078737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.160765, 12.575007, 15.000639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251699, 0.911311, -0.325823,
		0.114190, 0.362274, 0.925050,
		0.961045, 0.195628, -0.195247,
		22.449078, 12.633696, 14.942065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.809738, 13.217381, 15.176319>,  <21.776346, 12.496756, 15.078737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.809738, 13.217381, 15.176319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.121508, 13.121017, 14.944990>,  <22.308569, 13.063197, 14.806192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.121508, 13.121017, 14.944990>,  <21.809738, 13.217381, 15.176319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.121508, 13.121017, 14.944990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022183, 0.933142, -0.358823,
		0.626102, 0.266847, 0.732659,
		0.779425, -0.240913, -0.578323,
		22.355335, 13.048742, 14.771493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.218260, 13.827541, 15.240994>,  <21.809738, 13.217381, 15.176319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.218260, 13.827541, 15.240994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.269505, 13.644027, 14.889289>,  <22.300251, 13.533918, 14.678266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.269505, 13.644027, 14.889289>,  <22.218260, 13.827541, 15.240994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.269505, 13.644027, 14.889289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001389, 0.886651, -0.462438,
		0.991759, 0.058023, 0.114229,
		0.128114, -0.458785, -0.879263,
		22.307938, 13.506392, 14.625510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.862255, 14.144087, 14.876945>,  <22.218260, 13.827541, 15.240994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.862255, 14.144087, 14.876945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.593756, 14.011440, 14.611779>,  <22.432657, 13.931852, 14.452680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.593756, 14.011440, 14.611779>,  <22.862255, 14.144087, 14.876945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.593756, 14.011440, 14.611779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038205, 0.908632, -0.415846,
		0.740248, -0.253809, -0.622586,
		-0.671247, -0.331615, -0.662916,
		22.392382, 13.911956, 14.412904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.926098, 14.342974, 14.154545>,  <22.862255, 14.144087, 14.876945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.926098, 14.342974, 14.154545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.534878, 14.259662, 14.157102>,  <22.300146, 14.209675, 14.158635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.534878, 14.259662, 14.157102>,  <22.926098, 14.342974, 14.154545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.534878, 14.259662, 14.157102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169941, 0.779517, -0.602887,
		0.120586, -0.590739, -0.797801,
		-0.978049, -0.208279, 0.006392,
		22.241463, 14.197178, 14.159019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.674942, 14.212153, 13.387775>,  <22.926098, 14.342974, 14.154545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.674942, 14.212153, 13.387775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.457636, 14.378250, 13.679647>,  <22.327251, 14.477908, 13.854771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.457636, 14.378250, 13.679647>,  <22.674942, 14.212153, 13.387775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.457636, 14.378250, 13.679647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301122, 0.714924, -0.631038,
		-0.783701, -0.562545, -0.263356,
		-0.543267, 0.415243, 0.729681,
		22.294655, 14.502823, 13.898552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.994635, 14.399435, 13.129197>,  <22.674942, 14.212153, 13.387775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.994635, 14.399435, 13.129197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.077208, 14.653856, 13.426605>,  <22.126751, 14.806509, 13.605050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.077208, 14.653856, 13.426605>,  <21.994635, 14.399435, 13.129197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.077208, 14.653856, 13.426605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497506, 0.722561, -0.479994,
		-0.842540, -0.270819, 0.465601,
		0.206433, 0.636053, 0.743520,
		22.139137, 14.844672, 13.649661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.388050, 14.663225, 13.535457>,  <21.994635, 14.399435, 13.129197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.388050, 14.663225, 13.535457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.658293, 14.955533, 13.574509>,  <21.820438, 15.130918, 13.597939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.658293, 14.955533, 13.574509>,  <21.388050, 14.663225, 13.535457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.658293, 14.955533, 13.574509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663186, 0.660223, -0.352547,
		-0.322088, 0.173437, 0.930687,
		0.675606, 0.730770, 0.097629,
		21.860975, 15.174764, 13.603797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.132584, 15.221990, 13.955007>,  <21.388050, 14.663225, 13.535457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.132584, 15.221990, 13.955007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.437128, 15.370030, 13.742083>,  <21.619856, 15.458855, 13.614328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.437128, 15.370030, 13.742083>,  <21.132584, 15.221990, 13.955007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.437128, 15.370030, 13.742083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566374, 0.779258, -0.268286,
		0.315514, 0.505748, 0.802913,
		0.761362, 0.370101, -0.532309,
		21.665537, 15.481061, 13.582390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.041250, 15.899560, 13.979829>,  <21.132584, 15.221990, 13.955007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.041250, 15.899560, 13.979829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.256874, 15.843829, 13.647564>,  <21.386250, 15.810390, 13.448205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.256874, 15.843829, 13.647564>,  <21.041250, 15.899560, 13.979829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.256874, 15.843829, 13.647564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487794, 0.752350, -0.442748,
		0.686636, 0.643861, 0.337600,
		0.539062, -0.139327, -0.830663,
		21.418592, 15.802031, 13.398365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.208323, 16.580502, 13.727407>,  <21.041250, 15.899560, 13.979829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.208323, 16.580502, 13.727407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.255550, 16.344234, 13.408114>,  <21.283886, 16.202475, 13.216539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.255550, 16.344234, 13.408114>,  <21.208323, 16.580502, 13.727407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.255550, 16.344234, 13.408114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430818, 0.693790, -0.577106,
		0.894682, 0.412030, -0.172556,
		0.118068, -0.590666, -0.798231,
		21.290970, 16.167034, 13.168645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.262192, 17.072245, 13.124938>,  <21.208323, 16.580502, 13.727407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.262192, 17.072245, 13.124938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.185516, 16.716160, 12.959636>,  <21.139511, 16.502510, 12.860455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.185516, 16.716160, 12.959636>,  <21.262192, 17.072245, 13.124938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.185516, 16.716160, 12.959636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527640, 0.448512, -0.721410,
		0.827558, 0.079765, -0.555685,
		-0.191688, -0.890210, -0.413257,
		21.128010, 16.449097, 12.835659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.394478, 17.244473, 12.474622>,  <21.262192, 17.072245, 13.124938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.394478, 17.244473, 12.474622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.164978, 16.918911, 12.438029>,  <21.027279, 16.723574, 12.416074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.164978, 16.918911, 12.438029>,  <21.394478, 17.244473, 12.474622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.164978, 16.918911, 12.438029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477355, 0.423069, -0.770159,
		0.665540, -0.398209, -0.631258,
		-0.573750, -0.813906, -0.091483,
		20.992853, 16.674740, 12.410584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.144016, 17.467720, 11.902885>,  <21.394478, 17.244473, 12.474622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.144016, 17.467720, 11.902885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.931543, 17.133640, 11.959855>,  <20.804060, 16.933191, 11.994037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.931543, 17.133640, 11.959855>,  <21.144016, 17.467720, 11.902885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.931543, 17.133640, 11.959855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753022, 0.388335, -0.531181,
		0.388335, -0.389403, -0.835202,
		0.531181, 0.835202, -0.142425,
		20.772188, 16.883080, 12.002583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.961878, 17.322453, 11.297942>,  <21.144016, 17.467720, 11.902885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.961878, 17.322453, 11.297942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.711975, 17.116074, 11.532370>,  <20.562033, 16.992247, 11.673026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.711975, 17.116074, 11.532370>,  <20.961878, 17.322453, 11.297942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.711975, 17.116074, 11.532370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751066, 0.191873, -0.631732,
		0.213494, -0.834851, -0.507389,
		-0.624756, -0.515953, 0.586064,
		20.524548, 16.961290, 11.708191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.474043, 16.881201, 10.848903>,  <20.961878, 17.322453, 11.297942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.474043, 16.881201, 10.848903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.294821, 16.929966, 11.203165>,  <20.187288, 16.959225, 11.415722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.294821, 16.929966, 11.203165>,  <20.474043, 16.881201, 10.848903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.294821, 16.929966, 11.203165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852880, 0.238727, -0.464333,
		-0.268037, -0.963404, -0.002986,
		-0.448054, 0.121912, 0.885655,
		20.160404, 16.966539, 11.468862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.805708, 16.452158, 10.757833>,  <20.474043, 16.881201, 10.848903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.805708, 16.452158, 10.757833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.739151, 16.708532, 11.057570>,  <19.699217, 16.862356, 11.237412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.739151, 16.708532, 11.057570>,  <19.805708, 16.452158, 10.757833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.739151, 16.708532, 11.057570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940383, 0.125468, -0.316130,
		-0.296638, -0.757270, 0.581849,
		-0.166392, 0.640937, 0.749342,
		19.689234, 16.900814, 11.282373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.206350, 16.224888, 10.939299>,  <19.805708, 16.452158, 10.757833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.206350, 16.224888, 10.939299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.238907, 16.587629, 11.104701>,  <19.258440, 16.805275, 11.203943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.238907, 16.587629, 11.104701>,  <19.206350, 16.224888, 10.939299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.238907, 16.587629, 11.104701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923743, 0.224428, -0.310371,
		-0.374265, -0.356713, 0.855968,
		0.081390, 0.906856, 0.413507,
		19.263325, 16.859686, 11.228753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.588049, 16.414751, 11.227639>,  <19.206350, 16.224888, 10.939299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.588049, 16.414751, 11.227639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.773476, 16.761402, 11.153818>,  <18.884731, 16.969393, 11.109526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.773476, 16.761402, 11.153818>,  <18.588049, 16.414751, 11.227639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.773476, 16.761402, 11.153818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835336, 0.357984, -0.417207,
		-0.295496, 0.347567, 0.889876,
		0.463569, 0.866629, -0.184552,
		18.912546, 17.021391, 11.098453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.124161, 16.869316, 11.385777>,  <18.588049, 16.414751, 11.227639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.124161, 16.869316, 11.385777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.367693, 17.098900, 11.166728>,  <18.513813, 17.236650, 11.035298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.367693, 17.098900, 11.166728>,  <18.124161, 16.869316, 11.385777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.367693, 17.098900, 11.166728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785636, 0.531960, -0.315904,
		0.109997, 0.622565, 0.774799,
		0.608833, 0.573961, -0.547623,
		18.550343, 17.271088, 11.002441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<20.751625, 22.348120, 17.979946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.468489, 22.158840, 18.189724>,  <20.298607, 22.045273, 18.315590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.468489, 22.158840, 18.189724>,  <20.751625, 22.348120, 17.979946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.468489, 22.158840, 18.189724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185955, -0.591429, -0.784623,
		0.681456, -0.652911, 0.330644,
		-0.707841, -0.473201, 0.524445,
		20.256136, 22.016880, 18.347057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.721100, 21.773306, 17.557016>,  <20.751625, 22.348120, 17.979946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.721100, 21.773306, 17.557016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.411978, 21.731108, 17.807343>,  <20.226505, 21.705788, 17.957539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.411978, 21.731108, 17.807343>,  <20.721100, 21.773306, 17.557016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.411978, 21.731108, 17.807343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394076, -0.693185, -0.603488,
		0.497472, -0.712997, 0.494123,
		-0.772804, -0.105497, 0.625815,
		20.180136, 21.699459, 17.995087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.695919, 21.062355, 17.730902>,  <20.721100, 21.773306, 17.557016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.695919, 21.062355, 17.730902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.330612, 21.213772, 17.791098>,  <20.111427, 21.304623, 17.827215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.330612, 21.213772, 17.791098>,  <20.695919, 21.062355, 17.730902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.330612, 21.213772, 17.791098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406825, -0.828617, -0.384561,
		-0.020876, -0.412430, 0.910750,
		-0.913268, 0.378544, 0.150488,
		20.056631, 21.327335, 17.836245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.361433, 20.500216, 18.066284>,  <20.695919, 21.062355, 17.730902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.361433, 20.500216, 18.066284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.081844, 20.750198, 17.927221>,  <19.914091, 20.900188, 17.843784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.081844, 20.750198, 17.927221>,  <20.361433, 20.500216, 18.066284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.081844, 20.750198, 17.927221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419996, -0.752193, -0.507749,
		-0.578825, -0.208890, 0.788243,
		-0.698974, 0.624956, -0.347655,
		19.872152, 20.937685, 17.822924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.648155, 20.151396, 18.032547>,  <20.361433, 20.500216, 18.066284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.648155, 20.151396, 18.032547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.616266, 20.475128, 17.799782>,  <19.597132, 20.669369, 17.660122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.616266, 20.475128, 17.799782>,  <19.648155, 20.151396, 18.032547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.616266, 20.475128, 17.799782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504379, -0.536280, -0.676762,
		-0.859794, 0.239552, 0.450964,
		-0.079723, 0.809333, -0.581915,
		19.592350, 20.717928, 17.625208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.903610, 20.088375, 17.731979>,  <19.648155, 20.151396, 18.032547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.903610, 20.088375, 17.731979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.047800, 20.376427, 17.494839>,  <19.134314, 20.549257, 17.352554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.047800, 20.376427, 17.494839>,  <18.903610, 20.088375, 17.731979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.047800, 20.376427, 17.494839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465548, -0.411858, -0.783350,
		-0.808283, 0.558379, 0.186790,
		0.360476, 0.720129, -0.592851,
		19.155943, 20.592464, 17.316984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.321304, 20.357288, 17.271875>,  <18.903610, 20.088375, 17.731979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.321304, 20.357288, 17.271875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.666349, 20.429436, 17.082829>,  <18.873377, 20.472725, 16.969400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.666349, 20.429436, 17.082829>,  <18.321304, 20.357288, 17.271875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.666349, 20.429436, 17.082829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352270, -0.456325, -0.817113,
		-0.363048, 0.871341, -0.330094,
		0.862614, 0.180369, -0.472615,
		18.925133, 20.483547, 16.941044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.080442, 20.687868, 16.604342>,  <18.321304, 20.357288, 17.271875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.080442, 20.687868, 16.604342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.455187, 20.553844, 16.564283>,  <18.680033, 20.473431, 16.540249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.455187, 20.553844, 16.564283>,  <18.080442, 20.687868, 16.604342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.455187, 20.553844, 16.564283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253755, -0.454279, -0.853955,
		0.240632, 0.825448, -0.510619,
		0.936859, -0.335061, -0.100148,
		18.736244, 20.453325, 16.534239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.243298, 20.877897, 15.941604>,  <18.080442, 20.687868, 16.604342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.243298, 20.877897, 15.941604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.488956, 20.579008, 16.043175>,  <18.636353, 20.399673, 16.104116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.488956, 20.579008, 16.043175>,  <18.243298, 20.877897, 15.941604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.488956, 20.579008, 16.043175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115577, -0.403446, -0.907675,
		0.780682, 0.528098, -0.334138,
		0.614148, -0.747224, 0.253927,
		18.673201, 20.354841, 16.119352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.642540, 20.753212, 15.342790>,  <18.243298, 20.877897, 15.941604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.642540, 20.753212, 15.342790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.663832, 20.417347, 15.558988>,  <18.676607, 20.215828, 15.688706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.663832, 20.417347, 15.558988>,  <18.642540, 20.753212, 15.342790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.663832, 20.417347, 15.558988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280771, -0.532010, -0.798832,
		0.958298, -0.109236, -0.264070,
		0.053227, -0.839662, 0.540494,
		18.679800, 20.165449, 15.721136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.044527, 20.249844, 14.934771>,  <18.642540, 20.753212, 15.342790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.044527, 20.249844, 14.934771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.805510, 20.057434, 15.191382>,  <18.662100, 19.941988, 15.345349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.805510, 20.057434, 15.191382>,  <19.044527, 20.249844, 14.934771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.805510, 20.057434, 15.191382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436924, -0.475531, -0.763523,
		0.672340, -0.736536, 0.073979,
		-0.597542, -0.481024, 0.641529,
		18.626247, 19.913126, 15.383842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.001568, 19.602329, 14.542651>,  <19.044527, 20.249844, 14.934771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.001568, 19.602329, 14.542651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.745480, 19.546167, 14.844752>,  <18.591827, 19.512470, 15.026012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.745480, 19.546167, 14.844752>,  <19.001568, 19.602329, 14.542651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.745480, 19.546167, 14.844752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591692, -0.536883, -0.601379,
		0.489919, -0.831891, 0.260646,
		-0.640219, -0.140405, 0.755252,
		18.553413, 19.504045, 15.071328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.898932, 18.955648, 14.850088>,  <19.001568, 19.602329, 14.542651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.898932, 18.955648, 14.850088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535007, 19.121378, 14.859754>,  <18.316654, 19.220816, 14.865553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535007, 19.121378, 14.859754>,  <18.898932, 18.955648, 14.850088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.535007, 19.121378, 14.859754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323756, -0.672097, -0.665934,
		-0.259671, -0.613696, 0.745619,
		-0.909809, 0.414323, 0.024164,
		18.262064, 19.245674, 14.867002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.233418, 18.518404, 15.134741>,  <18.898932, 18.955648, 14.850088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.233418, 18.518404, 15.134741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.078884, 18.797726, 14.893704>,  <17.986164, 18.965319, 14.749083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.078884, 18.797726, 14.893704>,  <18.233418, 18.518404, 15.134741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.078884, 18.797726, 14.893704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406652, -0.715347, -0.568253,
		-0.827876, 0.025510, 0.560330,
		-0.386335, 0.698303, -0.602593,
		17.962984, 19.007217, 14.712927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.225763, 17.713642, 15.546460>,  <18.233418, 18.518404, 15.134741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.225763, 17.713642, 15.546460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.375046, 17.394779, 15.736304>,  <18.464615, 17.203461, 15.850210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.375046, 17.394779, 15.736304>,  <18.225763, 17.713642, 15.546460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.375046, 17.394779, 15.736304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490910, 0.603768, 0.628069,
		-0.787225, -0.001410, 0.616664,
		0.373208, -0.797158, 0.474610,
		18.487009, 17.155632, 15.878687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.174271, 17.879242, 16.258026>,  <18.225763, 17.713642, 15.546460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.174271, 17.879242, 16.258026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.409620, 17.555885, 16.265158>,  <18.550829, 17.361872, 16.269438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.409620, 17.555885, 16.265158>,  <18.174271, 17.879242, 16.258026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.409620, 17.555885, 16.265158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372110, 0.290280, 0.881630,
		-0.717880, -0.512092, 0.471604,
		0.588373, -0.808393, 0.017831,
		18.586132, 17.313368, 16.270508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.007521, 17.586218, 16.858292>,  <18.174271, 17.879242, 16.258026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.007521, 17.586218, 16.858292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.374249, 17.502417, 16.722319>,  <18.594284, 17.452135, 16.640736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.374249, 17.502417, 16.722319>,  <18.007521, 17.586218, 16.858292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.374249, 17.502417, 16.722319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357136, 0.049448, 0.932743,
		-0.178605, -0.976556, 0.120157,
		0.916817, -0.209505, -0.339932,
		18.649294, 17.439566, 16.620338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.269373, 17.014435, 17.266277>,  <18.007521, 17.586218, 16.858292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.269373, 17.014435, 17.266277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.608606, 17.181751, 17.136177>,  <18.812147, 17.282141, 17.058117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.608606, 17.181751, 17.136177>,  <18.269373, 17.014435, 17.266277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.608606, 17.181751, 17.136177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327742, 0.068211, 0.942302,
		0.416341, -0.905749, -0.079242,
		0.848083, 0.418290, -0.325251,
		18.863031, 17.307238, 17.038601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.682850, 16.974840, 17.772144>,  <18.269373, 17.014435, 17.266277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.682850, 16.974840, 17.772144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.912592, 17.204428, 17.538673>,  <19.050436, 17.342180, 17.398592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.912592, 17.204428, 17.538673>,  <18.682850, 16.974840, 17.772144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.912592, 17.204428, 17.538673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504745, 0.313037, 0.804513,
		0.644477, -0.756682, -0.109913,
		0.574354, 0.573968, -0.583676,
		19.084898, 17.376617, 17.363571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.365679, 16.876570, 17.984270>,  <18.682850, 16.974840, 17.772144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.365679, 16.876570, 17.984270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.340313, 17.232779, 17.804071>,  <19.325092, 17.446505, 17.695951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.340313, 17.232779, 17.804071>,  <19.365679, 16.876570, 17.984270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.340313, 17.232779, 17.804071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505239, 0.417933, 0.755026,
		0.860646, -0.179728, -0.476431,
		-0.063417, 0.890522, -0.450498,
		19.321287, 17.499935, 17.668922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.054255, 17.208397, 17.940344>,  <19.365679, 16.876570, 17.984270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.054255, 17.208397, 17.940344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.795748, 17.513433, 17.929079>,  <19.640644, 17.696455, 17.922319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.795748, 17.513433, 17.929079>,  <20.054255, 17.208397, 17.940344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.795748, 17.513433, 17.929079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491910, 0.444523, 0.748614,
		0.583406, 0.469951, -0.662407,
		-0.646268, 0.762591, -0.028163,
		19.601868, 17.742210, 17.920630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.446793, 17.888950, 17.907610>,  <20.054255, 17.208397, 17.940344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.446793, 17.888950, 17.907610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.087759, 17.982609, 18.057020>,  <19.872339, 18.038803, 18.146666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.087759, 17.982609, 18.057020>,  <20.446793, 17.888950, 17.907610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.087759, 17.982609, 18.057020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440174, 0.429231, 0.788675,
		0.024335, 0.872317, -0.488335,
		-0.897583, 0.234145, 0.373526,
		19.818483, 18.052853, 18.169079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.415545, 18.717062, 17.965271>,  <20.446793, 17.888950, 17.907610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.415545, 18.717062, 17.965271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.146572, 18.544666, 18.205965>,  <19.985188, 18.441229, 18.350382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.146572, 18.544666, 18.205965>,  <20.415545, 18.717062, 17.965271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.146572, 18.544666, 18.205965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239271, 0.642750, 0.727751,
		-0.700418, 0.633340, -0.329082,
		-0.672432, -0.430990, 0.601733,
		19.944843, 18.415369, 18.386484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.084988, 19.280788, 18.129528>,  <20.415545, 18.717062, 17.965271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.084988, 19.280788, 18.129528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.990511, 19.000435, 18.398741>,  <19.933825, 18.832222, 18.560268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.990511, 19.000435, 18.398741>,  <20.084988, 19.280788, 18.129528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.990511, 19.000435, 18.398741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021329, 0.688724, 0.724710,
		-0.971472, 0.185527, -0.147722,
		-0.236193, -0.700885, 0.673033,
		19.919653, 18.790169, 18.600651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.566071, 19.587984, 18.465708>,  <20.084988, 19.280788, 18.129528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.566071, 19.587984, 18.465708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704027, 19.307669, 18.715490>,  <19.786800, 19.139479, 18.865360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704027, 19.307669, 18.715490>,  <19.566071, 19.587984, 18.465708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.704027, 19.307669, 18.715490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045190, 0.676902, 0.734685,
		-0.937555, -0.225166, 0.265126,
		0.344890, -0.700788, 0.624457,
		19.807493, 19.097433, 18.902828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199997, 19.697762, 19.070051>,  <19.566071, 19.587984, 18.465708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.199997, 19.697762, 19.070051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.502220, 19.477522, 19.212023>,  <19.683554, 19.345379, 19.297207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.502220, 19.477522, 19.212023>,  <19.199997, 19.697762, 19.070051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.502220, 19.477522, 19.212023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056379, 0.594453, 0.802152,
		-0.652653, -0.586060, 0.480185,
		0.755557, -0.550599, 0.354930,
		19.728888, 19.312342, 19.318502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.001072, 19.450222, 19.739672>,  <19.199997, 19.697762, 19.070051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.001072, 19.450222, 19.739672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.400118, 19.423918, 19.731312>,  <19.639545, 19.408134, 19.726295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.400118, 19.423918, 19.731312>,  <19.001072, 19.450222, 19.739672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.400118, 19.423918, 19.731312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046109, 0.409954, 0.910940,
		-0.051336, -0.909732, 0.412009,
		0.997616, -0.065761, -0.020902,
		19.699404, 19.404190, 19.725040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.193628, 19.117319, 20.245222>,  <19.001072, 19.450222, 19.739672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.193628, 19.117319, 20.245222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.521420, 19.336676, 20.178623>,  <19.718094, 19.468290, 20.138664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.521420, 19.336676, 20.178623>,  <19.193628, 19.117319, 20.245222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.521420, 19.336676, 20.178623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094150, 0.415387, 0.904759,
		0.565323, -0.725755, 0.392032,
		0.819479, 0.548391, -0.166498,
		19.767263, 19.501192, 20.128674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.087626, 18.429104, 20.702328>,  <19.193628, 19.117319, 20.245222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.087626, 18.429104, 20.702328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.747025, 18.418470, 20.911798>,  <18.542664, 18.412090, 21.037481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.747025, 18.418470, 20.911798>,  <19.087626, 18.429104, 20.702328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.747025, 18.418470, 20.911798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514650, -0.148854, -0.844380,
		0.100397, -0.988502, 0.113068,
		-0.851502, -0.026583, 0.523677,
		18.491573, 18.410496, 21.068901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.710131, 17.838518, 20.396658>,  <19.087626, 18.429104, 20.702328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.710131, 17.838518, 20.396658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.413393, 18.039244, 20.574579>,  <18.235352, 18.159679, 20.681332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.413393, 18.039244, 20.574579>,  <18.710131, 17.838518, 20.396658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.413393, 18.039244, 20.574579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627456, -0.285436, -0.724448,
		-0.236578, -0.816520, 0.526617,
		-0.741842, 0.501818, 0.444802,
		18.190840, 18.189789, 20.708021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.182642, 17.384130, 20.353497>,  <18.710131, 17.838518, 20.396658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.182642, 17.384130, 20.353497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.015823, 17.741070, 20.422529>,  <17.915733, 17.955235, 20.463949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.015823, 17.741070, 20.422529>,  <18.182642, 17.384130, 20.353497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.015823, 17.741070, 20.422529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790832, -0.262691, -0.552791,
		-0.447949, -0.367019, 0.815254,
		-0.417045, 0.892351, 0.172578,
		17.890709, 18.008776, 20.474302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.532925, 17.212553, 20.506672>,  <18.182642, 17.384130, 20.353497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.532925, 17.212553, 20.506672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.513578, 17.591623, 20.380455>,  <17.501970, 17.819065, 20.304724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.513578, 17.591623, 20.380455>,  <17.532925, 17.212553, 20.506672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.513578, 17.591623, 20.380455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787084, -0.230659, -0.572098,
		-0.614947, 0.220689, 0.757058,
		-0.048367, 0.947677, -0.315544,
		17.499069, 17.875927, 20.285791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.810755, 17.218002, 20.357878>,  <17.532925, 17.212553, 20.506672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.810755, 17.218002, 20.357878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932447, 17.559004, 20.187853>,  <17.005463, 17.763605, 20.085838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932447, 17.559004, 20.187853>,  <16.810755, 17.218002, 20.357878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.932447, 17.559004, 20.187853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644324, -0.144500, -0.750977,
		-0.701633, 0.502349, 0.505328,
		0.304233, 0.852506, -0.425061,
		17.023718, 17.814756, 20.060335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218634, 17.579762, 20.269621>,  <16.810755, 17.218002, 20.357878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.218634, 17.579762, 20.269621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.491798, 17.712048, 20.009081>,  <16.655697, 17.791420, 19.852757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.491798, 17.712048, 20.009081>,  <16.218634, 17.579762, 20.269621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.491798, 17.712048, 20.009081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658834, -0.106319, -0.744738,
		-0.315547, 0.937723, 0.145280,
		0.682912, 0.330715, -0.651352,
		16.696672, 17.811262, 19.813675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.831733, 17.897100, 19.820318>,  <16.218634, 17.579762, 20.269621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.831733, 17.897100, 19.820318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.178892, 17.840162, 19.629955>,  <16.387188, 17.806000, 19.515738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.178892, 17.840162, 19.629955>,  <15.831733, 17.897100, 19.820318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.178892, 17.840162, 19.629955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496146, -0.295292, -0.816481,
		-0.024311, 0.944744, -0.326907,
		0.867899, -0.142344, -0.475909,
		16.439262, 17.797459, 19.487183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.724790, 18.058401, 19.166306>,  <15.831733, 17.897100, 19.820318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.724790, 18.058401, 19.166306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.035587, 17.807329, 19.147129>,  <16.222067, 17.656687, 19.135624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.035587, 17.807329, 19.147129>,  <15.724790, 18.058401, 19.166306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.035587, 17.807329, 19.147129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449273, -0.499579, -0.740658,
		0.440947, 0.597025, -0.670170,
		0.776994, -0.627680, -0.047939,
		16.268686, 17.619026, 19.132748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.945651, 17.961319, 18.448664>,  <15.724790, 18.058401, 19.166306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.945651, 17.961319, 18.448664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.060318, 17.641586, 18.659903>,  <16.129118, 17.449745, 18.786646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.060318, 17.641586, 18.659903>,  <15.945651, 17.961319, 18.448664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.060318, 17.641586, 18.659903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497848, -0.595251, -0.630732,
		0.818517, -0.082103, -0.568586,
		0.286667, -0.799334, 0.528098,
		16.146318, 17.401787, 18.818333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155073, 17.547300, 17.993715>,  <15.945651, 17.961319, 18.448664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.155073, 17.547300, 17.993715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052498, 17.313829, 18.301888>,  <15.990952, 17.173748, 18.486792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052498, 17.313829, 18.301888>,  <16.155073, 17.547300, 17.993715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.052498, 17.313829, 18.301888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413596, -0.654161, -0.633255,
		0.873601, -0.481037, -0.073655,
		-0.256437, -0.583675, 0.770431,
		15.975567, 17.138727, 18.533016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.369583, 16.904629, 17.941967>,  <16.155073, 17.547300, 17.993715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.369583, 16.904629, 17.941967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.025850, 16.904633, 18.146532>,  <15.819610, 16.904634, 18.269272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.025850, 16.904633, 18.146532>,  <16.369583, 16.904629, 17.941967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.025850, 16.904633, 18.146532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343620, -0.740650, -0.577376,
		0.378774, -0.671891, 0.636469,
		-0.859334, 0.000009, 0.511414,
		15.768050, 16.904634, 18.299957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.201054, 16.284513, 18.140291>,  <16.369583, 16.904629, 17.941967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.201054, 16.284513, 18.140291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.131350, 16.440479, 17.778606>,  <16.089527, 16.534060, 17.561596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.131350, 16.440479, 17.778606>,  <16.201054, 16.284513, 18.140291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.131350, 16.440479, 17.778606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801301, 0.589856, 0.099931,
		0.572320, -0.707131, -0.415230,
		-0.174262, 0.389917, -0.904211,
		16.079071, 16.557455, 17.507343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<20.826925, 19.584414, 25.344967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.197084, 19.444881, 25.285692>,  <21.419180, 19.361162, 25.250128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.197084, 19.444881, 25.285692>,  <20.826925, 19.584414, 25.344967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.197084, 19.444881, 25.285692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283603, -0.377962, -0.881314,
		0.251420, 0.857590, -0.448694,
		0.925396, -0.348831, -0.148187,
		21.474703, 19.340233, 25.241236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.920324, 19.773600, 24.748730>,  <20.826925, 19.584414, 25.344967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.920324, 19.773600, 24.748730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.192030, 19.485495, 24.805046>,  <21.355053, 19.312632, 24.838837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.192030, 19.485495, 24.805046>,  <20.920324, 19.773600, 24.748730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.192030, 19.485495, 24.805046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249387, -0.406963, -0.878742,
		0.690220, 0.561788, -0.456060,
		0.679266, -0.720261, 0.140791,
		21.395809, 19.269417, 24.847284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.480911, 19.804457, 24.207624>,  <20.920324, 19.773600, 24.748730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.480911, 19.804457, 24.207624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.454449, 19.432789, 24.353098>,  <21.438572, 19.209787, 24.440382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.454449, 19.432789, 24.353098>,  <21.480911, 19.804457, 24.207624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.454449, 19.432789, 24.353098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371593, -0.315324, -0.873207,
		0.926036, -0.192910, -0.324412,
		-0.066156, -0.929170, 0.363685,
		21.434603, 19.154037, 24.462204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.774622, 19.270876, 23.686563>,  <21.480911, 19.804457, 24.207624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.774622, 19.270876, 23.686563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.533854, 19.071501, 23.936125>,  <21.389393, 18.951876, 24.085861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.533854, 19.071501, 23.936125>,  <21.774622, 19.270876, 23.686563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.533854, 19.071501, 23.936125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488106, -0.388708, -0.781447,
		0.632017, -0.774899, -0.009319,
		-0.601920, -0.498436, 0.623903,
		21.353277, 18.921970, 24.123295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.614679, 18.759403, 23.256161>,  <21.774622, 19.270876, 23.686563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.614679, 18.759403, 23.256161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.350067, 18.733517, 23.555008>,  <21.191299, 18.717985, 23.734316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.350067, 18.733517, 23.555008>,  <21.614679, 18.759403, 23.256161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.350067, 18.733517, 23.555008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653877, -0.438023, -0.616913,
		0.367181, -0.896631, 0.247448,
		-0.661531, -0.064718, 0.747120,
		21.151608, 18.714102, 23.779144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.285849, 18.078947, 23.226093>,  <21.614679, 18.759403, 23.256161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.285849, 18.078947, 23.226093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.031691, 18.309883, 23.431210>,  <20.879196, 18.448444, 23.554279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.031691, 18.309883, 23.431210>,  <21.285849, 18.078947, 23.226093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.031691, 18.309883, 23.431210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743553, -0.278286, -0.608018,
		-0.208326, -0.767621, 0.606100,
		-0.635397, 0.577334, 0.512793,
		20.841072, 18.483086, 23.585047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.759001, 17.608971, 23.354933>,  <21.285849, 18.078947, 23.226093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.759001, 17.608971, 23.354933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.585058, 17.964836, 23.410646>,  <20.480694, 18.178356, 23.444075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.585058, 17.964836, 23.410646>,  <20.759001, 17.608971, 23.354933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.585058, 17.964836, 23.410646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762622, -0.281590, -0.582336,
		-0.478862, -0.359451, 0.800928,
		-0.434854, 0.889664, 0.139283,
		20.454601, 18.231735, 23.452431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.070435, 17.469772, 23.405865>,  <20.759001, 17.608971, 23.354933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.070435, 17.469772, 23.405865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.092014, 17.862955, 23.335569>,  <20.104963, 18.098866, 23.293392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.092014, 17.862955, 23.335569>,  <20.070435, 17.469772, 23.405865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.092014, 17.862955, 23.335569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684186, -0.091801, -0.723507,
		-0.727309, 0.159274, 0.667573,
		0.053952, 0.982957, -0.175741,
		20.108200, 18.157843, 23.282846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.427029, 17.810816, 23.533077>,  <20.070435, 17.469772, 23.405865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.427029, 17.810816, 23.533077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.623751, 18.024040, 23.257694>,  <19.741783, 18.151976, 23.092464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.623751, 18.024040, 23.257694>,  <19.427029, 17.810816, 23.533077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.623751, 18.024040, 23.257694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812603, -0.002998, -0.582811,
		-0.312738, 0.846070, 0.431694,
		0.491805, 0.533063, -0.688456,
		19.771292, 18.183960, 23.051157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.908764, 18.181868, 23.252995>,  <19.427029, 17.810816, 23.533077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.908764, 18.181868, 23.252995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.203667, 18.246586, 22.990614>,  <19.380610, 18.285416, 22.833185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.203667, 18.246586, 22.990614>,  <18.908764, 18.181868, 23.252995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.203667, 18.246586, 22.990614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674798, 0.128737, -0.726687,
		-0.033128, 0.978391, 0.204090,
		0.737259, 0.161793, -0.655952,
		19.424845, 18.295124, 22.793829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.824615, 18.857132, 23.001211>,  <18.908764, 18.181868, 23.252995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.824615, 18.857132, 23.001211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.043457, 18.662363, 22.728863>,  <19.174761, 18.545502, 22.565453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.043457, 18.662363, 22.728863>,  <18.824615, 18.857132, 23.001211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.043457, 18.662363, 22.728863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721328, 0.138443, -0.678615,
		0.424694, 0.862405, -0.275487,
		0.547102, -0.486920, -0.680873,
		19.207588, 18.516287, 22.524601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.718431, 19.141407, 22.410826>,  <18.824615, 18.857132, 23.001211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.718431, 19.141407, 22.410826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.904013, 18.813749, 22.275919>,  <19.015362, 18.617155, 22.194975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.904013, 18.813749, 22.275919>,  <18.718431, 19.141407, 22.410826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.904013, 18.813749, 22.275919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477970, 0.089074, -0.873848,
		0.745849, 0.566630, -0.350200,
		0.463955, -0.819144, -0.337267,
		19.043200, 18.568007, 22.174738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.150612, 19.242266, 21.782980>,  <18.718431, 19.141407, 22.410826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.150612, 19.242266, 21.782980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.017094, 18.865320, 21.792204>,  <18.936983, 18.639153, 21.797739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.017094, 18.865320, 21.792204>,  <19.150612, 19.242266, 21.782980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.017094, 18.865320, 21.792204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525565, 0.165742, -0.834452,
		0.782535, -0.290657, -0.550597,
		-0.333796, -0.942363, 0.023060,
		18.916954, 18.582611, 21.799122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.041578, 19.060246, 21.031776>,  <19.150612, 19.242266, 21.782980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.041578, 19.060246, 21.031776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.812096, 18.814545, 21.248501>,  <18.674406, 18.667124, 21.378534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.812096, 18.814545, 21.248501>,  <19.041578, 19.060246, 21.031776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.812096, 18.814545, 21.248501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635317, -0.083774, -0.767694,
		0.516946, -0.784652, -0.342182,
		-0.573707, -0.614250, 0.541809,
		18.639984, 18.630270, 21.411043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.758446, 18.970198, 21.004148>,  <19.041578, 19.060246, 21.031776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.758446, 18.970198, 21.004148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.881205, 19.284060, 20.788694>,  <19.954861, 19.472378, 20.659422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.881205, 19.284060, 20.788694>,  <19.758446, 18.970198, 21.004148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.881205, 19.284060, 20.788694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335196, 0.440575, 0.832789,
		0.890763, -0.436128, -0.127802,
		0.306896, 0.784656, -0.538637,
		19.973274, 19.519457, 20.627104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.403770, 19.055897, 21.256239>,  <19.758446, 18.970198, 21.004148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.403770, 19.055897, 21.256239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.308092, 19.403276, 21.082535>,  <20.250685, 19.611704, 20.978312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.308092, 19.403276, 21.082535>,  <20.403770, 19.055897, 21.256239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.308092, 19.403276, 21.082535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309135, 0.492085, 0.813811,
		0.920445, 0.060417, -0.386174,
		-0.239198, 0.868448, -0.434260,
		20.236332, 19.663811, 20.952257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.971329, 19.560791, 21.296719>,  <20.403770, 19.055897, 21.256239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.971329, 19.560791, 21.296719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.629049, 19.764448, 21.259724>,  <20.423681, 19.886642, 21.237526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.629049, 19.764448, 21.259724>,  <20.971329, 19.560791, 21.296719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.629049, 19.764448, 21.259724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275116, 0.598984, 0.752016,
		0.438282, 0.618055, -0.652623,
		-0.855699, 0.509142, -0.092487,
		20.372339, 19.917191, 21.231977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.193481, 20.095572, 21.536064>,  <20.971329, 19.560791, 21.296719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.193481, 20.095572, 21.536064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.803663, 20.184158, 21.522135>,  <20.569773, 20.237310, 21.513777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.803663, 20.184158, 21.522135>,  <21.193481, 20.095572, 21.536064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.803663, 20.184158, 21.522135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157757, 0.787822, 0.595356,
		0.159287, 0.574708, -0.802707,
		-0.974546, 0.221465, -0.034825,
		20.511299, 20.250599, 21.511686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.227467, 20.811548, 21.440187>,  <21.193481, 20.095572, 21.536064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.227467, 20.811548, 21.440187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.854425, 20.719530, 21.551424>,  <20.630602, 20.664318, 21.618166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.854425, 20.719530, 21.551424>,  <21.227467, 20.811548, 21.440187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.854425, 20.719530, 21.551424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015924, 0.743548, 0.668493,
		-0.360558, 0.627866, -0.689770,
		-0.932601, -0.230047, 0.278090,
		20.574646, 20.650517, 21.634851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.777456, 21.330194, 21.343788>,  <21.227467, 20.811548, 21.440187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.777456, 21.330194, 21.343788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.618521, 21.118309, 21.643528>,  <20.523159, 20.991179, 21.823372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.618521, 21.118309, 21.643528>,  <20.777456, 21.330194, 21.343788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.618521, 21.118309, 21.643528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025510, 0.809887, 0.586031,
		-0.917317, 0.251969, -0.308287,
		-0.397339, -0.529712, 0.749351,
		20.499319, 20.959396, 21.868334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.518005, 21.886368, 21.698307>,  <20.777456, 21.330194, 21.343788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.518005, 21.886368, 21.698307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.536509, 21.559175, 21.927660>,  <20.547611, 21.362860, 22.065271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.536509, 21.559175, 21.927660>,  <20.518005, 21.886368, 21.698307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.536509, 21.559175, 21.927660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411621, 0.538611, 0.735164,
		-0.910180, 0.202008, 0.361614,
		0.046260, -0.817980, 0.573384,
		20.550386, 21.313782, 22.099674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.161339, 22.008266, 22.340450>,  <20.518005, 21.886368, 21.698307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.161339, 22.008266, 22.340450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.437250, 21.727232, 22.410397>,  <20.602797, 21.558611, 22.452364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.437250, 21.727232, 22.410397>,  <20.161339, 22.008266, 22.340450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.437250, 21.727232, 22.410397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368574, 0.548633, 0.750436,
		-0.623182, -0.453185, 0.637391,
		0.689780, -0.702584, 0.174865,
		20.644184, 21.516457, 22.462856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.255648, 22.005035, 23.107693>,  <20.161339, 22.008266, 22.340450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.255648, 22.005035, 23.107693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.579355, 21.810963, 22.975220>,  <20.773581, 21.694519, 22.895735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.579355, 21.810963, 22.975220>,  <20.255648, 22.005035, 23.107693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.579355, 21.810963, 22.975220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540670, 0.394740, 0.742870,
		-0.229695, -0.780243, 0.581774,
		0.809268, -0.485182, -0.331184,
		20.822136, 21.665409, 22.875864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.649736, 21.818714, 23.787374>,  <20.255648, 22.005035, 23.107693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.649736, 21.818714, 23.787374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.877853, 21.835564, 23.459230>,  <21.014725, 21.845673, 23.262344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.877853, 21.835564, 23.459230>,  <20.649736, 21.818714, 23.787374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.877853, 21.835564, 23.459230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718020, 0.459548, 0.522746,
		0.399014, -0.887154, 0.231832,
		0.570294, 0.042123, -0.820360,
		21.048943, 21.848200, 23.213123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.264471, 21.722294, 24.122644>,  <20.649736, 21.818714, 23.787374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.264471, 21.722294, 24.122644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.360188, 21.830345, 23.749598>,  <21.417618, 21.895176, 23.525770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.360188, 21.830345, 23.749598>,  <21.264471, 21.722294, 24.122644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.360188, 21.830345, 23.749598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752728, 0.555106, 0.353918,
		0.613304, -0.786694, -0.070502,
		0.239289, 0.270128, -0.932615,
		21.431974, 21.911383, 23.469812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.031784, 21.628014, 24.065742>,  <21.264471, 21.722294, 24.122644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.031784, 21.628014, 24.065742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.901640, 21.887333, 23.790396>,  <21.823553, 22.042925, 23.625187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.901640, 21.887333, 23.790396>,  <22.031784, 21.628014, 24.065742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.901640, 21.887333, 23.790396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682283, 0.664983, 0.303789,
		0.654698, -0.370820, -0.658682,
		-0.325362, 0.648298, -0.688367,
		21.804031, 22.081821, 23.583885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.667332, 21.869568, 23.681480>,  <22.031784, 21.628014, 24.065742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.667332, 21.869568, 23.681480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.378147, 22.141088, 23.630018>,  <22.204636, 22.304001, 23.599140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.378147, 22.141088, 23.630018>,  <22.667332, 21.869568, 23.681480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.378147, 22.141088, 23.630018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644239, 0.729622, 0.229364,
		0.249562, 0.082937, -0.964801,
		-0.722962, 0.678803, -0.128655,
		22.161259, 22.344730, 23.591421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.970032, 22.417534, 23.213667>,  <22.667332, 21.869568, 23.681480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.970032, 22.417534, 23.213667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.667707, 22.597446, 23.404011>,  <22.486313, 22.705395, 23.518217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.667707, 22.597446, 23.404011>,  <22.970032, 22.417534, 23.213667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.667707, 22.597446, 23.404011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652079, 0.583078, 0.484575,
		-0.059510, 0.676547, -0.733991,
		-0.755812, 0.449783, 0.475861,
		22.440964, 22.732382, 23.546768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<16.764772, 22.220459, 25.899483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.019608, 21.913082, 25.875422>,  <17.172508, 21.728657, 25.860985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.019608, 21.913082, 25.875422>,  <16.764772, 22.220459, 25.899483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019608, 21.913082, 25.875422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475824, -0.330692, -0.815006,
		0.606391, 0.547853, -0.576322,
		0.637088, -0.768440, -0.060153,
		17.210733, 21.682550, 25.857376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.082977, 22.183773, 25.191620>,  <16.764772, 22.220459, 25.899483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.082977, 22.183773, 25.191620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.141994, 21.815111, 25.335167>,  <17.177404, 21.593914, 25.421295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.141994, 21.815111, 25.335167>,  <17.082977, 22.183773, 25.191620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.141994, 21.815111, 25.335167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255363, -0.386032, -0.886436,
		0.955521, 0.039145, -0.292312,
		0.147541, -0.921654, 0.358866,
		17.186256, 21.538614, 25.442827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.715044, 21.931404, 24.781900>,  <17.082977, 22.183773, 25.191620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.715044, 21.931404, 24.781900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.497656, 21.624161, 24.917339>,  <17.367224, 21.439814, 24.998604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.497656, 21.624161, 24.917339>,  <17.715044, 21.931404, 24.781900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.497656, 21.624161, 24.917339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043991, -0.376753, -0.925269,
		0.838276, -0.517750, 0.170964,
		-0.543469, -0.768110, 0.338599,
		17.334616, 21.393728, 25.018919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.721104, 21.499310, 24.314829>,  <17.715044, 21.931404, 24.781900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.721104, 21.499310, 24.314829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.439150, 21.299946, 24.516712>,  <17.269978, 21.180326, 24.637842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.439150, 21.299946, 24.516712>,  <17.721104, 21.499310, 24.314829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.439150, 21.299946, 24.516712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177510, -0.564943, -0.805810,
		0.686754, -0.657591, 0.309746,
		-0.704883, -0.498410, 0.504706,
		17.227686, 21.150423, 24.668123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.844881, 20.852495, 24.155510>,  <17.721104, 21.499310, 24.314829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.844881, 20.852495, 24.155510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.472757, 20.857166, 24.302145>,  <17.249483, 20.859968, 24.390125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.472757, 20.857166, 24.302145>,  <17.844881, 20.852495, 24.155510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.472757, 20.857166, 24.302145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309315, -0.562077, -0.767068,
		0.197094, -0.827002, 0.526518,
		-0.930311, 0.011676, 0.366586,
		17.193665, 20.860668, 24.412121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.628380, 20.109089, 24.315769>,  <17.844881, 20.852495, 24.155510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.628380, 20.109089, 24.315769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.317604, 20.353661, 24.255743>,  <17.131140, 20.500404, 24.219727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.317604, 20.353661, 24.255743>,  <17.628380, 20.109089, 24.315769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.317604, 20.353661, 24.255743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182371, -0.446709, -0.875895,
		-0.602586, -0.653148, 0.458572,
		-0.776937, 0.611432, -0.150066,
		17.084522, 20.537090, 24.210724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.235735, 19.692970, 23.899746>,  <17.628380, 20.109089, 24.315769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.235735, 19.692970, 23.899746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.040730, 20.039438, 23.855783>,  <16.923727, 20.247320, 23.829407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.040730, 20.039438, 23.855783>,  <17.235735, 19.692970, 23.899746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.040730, 20.039438, 23.855783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292104, -0.280426, -0.914350,
		-0.822805, -0.413652, 0.389723,
		-0.487511, 0.866172, -0.109907,
		16.894476, 20.299290, 23.822811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.454771, 19.537048, 23.760742>,  <17.235735, 19.692970, 23.899746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.454771, 19.537048, 23.760742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.532845, 19.910109, 23.639374>,  <16.579689, 20.133945, 23.566553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.532845, 19.910109, 23.639374>,  <16.454771, 19.537048, 23.760742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.532845, 19.910109, 23.639374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368049, -0.217110, -0.904104,
		-0.909090, 0.288138, 0.300886,
		0.195182, 0.932652, -0.303421,
		16.591398, 20.189903, 23.548347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867629, 19.658865, 23.370672>,  <16.454771, 19.537048, 23.760742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.867629, 19.658865, 23.370672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.120749, 19.946692, 23.256273>,  <16.272619, 20.119387, 23.187634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.120749, 19.946692, 23.256273>,  <15.867629, 19.658865, 23.370672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.120749, 19.946692, 23.256273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451911, 0.043277, -0.891013,
		-0.628764, 0.693076, 0.352564,
		0.632798, 0.719564, -0.285998,
		16.310587, 20.162561, 23.170473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.544452, 20.157789, 23.017294>,  <15.867629, 19.658865, 23.370672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.544452, 20.157789, 23.017294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.913928, 20.252268, 22.896624>,  <16.135614, 20.308954, 22.824221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.913928, 20.252268, 22.896624>,  <15.544452, 20.157789, 23.017294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.913928, 20.252268, 22.896624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273783, -0.143916, -0.950963,
		-0.268029, 0.960989, -0.068268,
		0.923690, 0.236195, -0.301676,
		16.191034, 20.323126, 22.806120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.469683, 20.712362, 22.608095>,  <15.544452, 20.157789, 23.017294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.469683, 20.712362, 22.608095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.799998, 20.507311, 22.514046>,  <15.998188, 20.384279, 22.457615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.799998, 20.507311, 22.514046>,  <15.469683, 20.712362, 22.608095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.799998, 20.507311, 22.514046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292957, -0.033652, -0.955533,
		0.481921, 0.857951, -0.177967,
		0.825789, -0.512628, -0.235125,
		16.047735, 20.353523, 22.443508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.848760, 20.996677, 21.971821>,  <15.469683, 20.712362, 22.608095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.848760, 20.996677, 21.971821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.954842, 20.612160, 22.001703>,  <16.018492, 20.381449, 22.019632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.954842, 20.612160, 22.001703>,  <15.848760, 20.996677, 21.971821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.954842, 20.612160, 22.001703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065322, -0.095216, -0.993311,
		0.961976, 0.258552, -0.088045,
		0.265206, -0.961293, 0.074707,
		16.034403, 20.323772, 22.024115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.255836, 20.908474, 21.376558>,  <15.848760, 20.996677, 21.971821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.255836, 20.908474, 21.376558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.168383, 20.540663, 21.507195>,  <16.115910, 20.319975, 21.585577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.168383, 20.540663, 21.507195>,  <16.255836, 20.908474, 21.376558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.168383, 20.540663, 21.507195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018575, -0.330707, -0.943551,
		0.975630, -0.212360, 0.055224,
		-0.218635, -0.919531, 0.326592,
		16.102793, 20.264803, 21.605173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290674, 20.490126, 20.828278>,  <16.255836, 20.908474, 21.376558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290674, 20.490126, 20.828278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.076796, 20.252193, 21.068371>,  <15.948468, 20.109434, 21.212427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.076796, 20.252193, 21.068371>,  <16.290674, 20.490126, 20.828278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.076796, 20.252193, 21.068371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484323, -0.366351, -0.794493,
		0.692483, -0.715518, -0.092203,
		-0.534695, -0.594828, 0.600233,
		15.916387, 20.073746, 21.248442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817837, 20.762856, 20.482317>,  <16.290674, 20.490126, 20.828278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.817837, 20.762856, 20.482317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.588966, 20.995991, 20.251522>,  <16.451645, 21.135872, 20.113045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.588966, 20.995991, 20.251522>,  <16.817837, 20.762856, 20.482317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.588966, 20.995991, 20.251522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159121, 0.769054, 0.619062,
		0.804547, 0.262401, -0.532775,
		-0.572175, 0.582840, -0.576986,
		16.417315, 21.170843, 20.078426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.267418, 21.239080, 20.419056>,  <16.817837, 20.762856, 20.482317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.267418, 21.239080, 20.419056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.903656, 21.390860, 20.350939>,  <16.685398, 21.481928, 20.310068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.903656, 21.390860, 20.350939>,  <17.267418, 21.239080, 20.419056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.903656, 21.390860, 20.350939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211124, 0.773934, 0.597036,
		0.358341, 0.506994, -0.783931,
		-0.909405, 0.379449, -0.170293,
		16.630835, 21.504694, 20.299850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500732, 21.882311, 20.308065>,  <17.267418, 21.239080, 20.419056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.500732, 21.882311, 20.308065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.104942, 21.904280, 20.361620>,  <16.867468, 21.917461, 20.393753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.104942, 21.904280, 20.361620>,  <17.500732, 21.882311, 20.308065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.104942, 21.904280, 20.361620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114976, 0.860179, 0.496862,
		-0.087879, 0.507026, -0.857439,
		-0.989473, 0.054922, 0.133888,
		16.808100, 21.920755, 20.401787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.218761, 22.536243, 20.065584>,  <17.500732, 21.882311, 20.308065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.218761, 22.536243, 20.065584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.926634, 22.424528, 20.314945>,  <16.751358, 22.357498, 20.464561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.926634, 22.424528, 20.314945>,  <17.218761, 22.536243, 20.065584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.926634, 22.424528, 20.314945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088346, 0.866321, 0.491613,
		-0.677369, 0.414109, -0.608016,
		-0.730319, -0.279288, 0.623404,
		16.707539, 22.340742, 20.501966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.765091, 23.100985, 20.080685>,  <17.218761, 22.536243, 20.065584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.765091, 23.100985, 20.080685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.727324, 22.894093, 20.420933>,  <16.704662, 22.769957, 20.625082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.727324, 22.894093, 20.420933>,  <16.765091, 23.100985, 20.080685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.727324, 22.894093, 20.420933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195236, 0.828227, 0.525283,
		-0.976201, 0.215669, 0.022781,
		-0.094419, -0.517229, 0.850623,
		16.698997, 22.738924, 20.676119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.480404, 23.580339, 20.621744>,  <16.765091, 23.100985, 20.080685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.480404, 23.580339, 20.621744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.630838, 23.279041, 20.837589>,  <16.721098, 23.098263, 20.967096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.630838, 23.279041, 20.837589>,  <16.480404, 23.580339, 20.621744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.630838, 23.279041, 20.837589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213590, 0.637160, 0.740545,
		-0.901632, -0.163251, 0.400511,
		0.376084, -0.753244, 0.539615,
		16.743664, 23.053068, 20.999474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.133661, 23.503920, 21.358978>,  <16.480404, 23.580339, 20.621744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.133661, 23.503920, 21.358978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.488289, 23.319632, 21.375647>,  <16.701065, 23.209059, 21.385647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.488289, 23.319632, 21.375647>,  <16.133661, 23.503920, 21.358978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.488289, 23.319632, 21.375647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247797, 0.549035, 0.798221,
		-0.390633, -0.697351, 0.600922,
		0.886567, -0.460718, 0.041670,
		16.754259, 23.181416, 21.388147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.215052, 23.461576, 22.170815>,  <16.133661, 23.503920, 21.358978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.215052, 23.461576, 22.170815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.579351, 23.395668, 22.019348>,  <16.797932, 23.356123, 21.928469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.579351, 23.395668, 22.019348>,  <16.215052, 23.461576, 22.170815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.579351, 23.395668, 22.019348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410706, 0.265695, 0.872197,
		-0.043105, -0.949872, 0.309654,
		0.910749, -0.164772, -0.378665,
		16.852575, 23.346237, 21.905748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532856, 23.024300, 22.584818>,  <16.215052, 23.461576, 22.170815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532856, 23.024300, 22.584818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.852165, 23.172615, 22.394964>,  <17.043751, 23.261604, 22.281052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.852165, 23.172615, 22.394964>,  <16.532856, 23.024300, 22.584818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.852165, 23.172615, 22.394964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439693, 0.179806, 0.879966,
		0.411624, -0.911145, -0.019499,
		0.798270, 0.370789, -0.474636,
		17.091646, 23.283852, 22.252573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.090454, 22.641722, 22.845583>,  <16.532856, 23.024300, 22.584818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.090454, 22.641722, 22.845583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.241261, 22.970484, 22.674784>,  <17.331745, 23.167742, 22.572304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.241261, 22.970484, 22.674784>,  <17.090454, 22.641722, 22.845583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.241261, 22.970484, 22.674784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515241, 0.196987, 0.834100,
		0.769665, -0.534478, -0.349212,
		0.377017, 0.821906, -0.426999,
		17.354366, 23.217056, 22.546684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.738726, 22.712360, 23.095371>,  <17.090454, 22.641722, 22.845583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.738726, 22.712360, 23.095371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.672134, 23.087736, 22.974298>,  <17.632179, 23.312962, 22.901655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.672134, 23.087736, 22.974298>,  <17.738726, 22.712360, 23.095371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.672134, 23.087736, 22.974298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509346, 0.344682, 0.788518,
		0.844306, -0.022900, -0.535373,
		-0.166477, 0.938440, -0.302681,
		17.622192, 23.369268, 22.883493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.392101, 23.076059, 23.162209>,  <17.738726, 22.712360, 23.095371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.392101, 23.076059, 23.162209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.103312, 23.352661, 23.152632>,  <17.930038, 23.518621, 23.146885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.103312, 23.352661, 23.152632>,  <18.392101, 23.076059, 23.162209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.103312, 23.352661, 23.152632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393595, 0.438907, 0.807740,
		0.569065, 0.573744, -0.589052,
		-0.721975, 0.691505, -0.023944,
		17.886719, 23.560112, 23.145449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.788639, 23.693148, 23.180065>,  <18.392101, 23.076059, 23.162209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.788639, 23.693148, 23.180065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.424736, 23.786083, 23.317678>,  <18.206394, 23.841845, 23.400248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.424736, 23.786083, 23.317678>,  <18.788639, 23.693148, 23.180065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.424736, 23.786083, 23.317678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406083, 0.325904, 0.853746,
		0.086234, 0.916409, -0.390842,
		-0.909758, 0.232337, 0.344035,
		18.151808, 23.855783, 23.420889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.797729, 24.438101, 23.380733>,  <18.788639, 23.693148, 23.180065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.797729, 24.438101, 23.380733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.521568, 24.233789, 23.585655>,  <18.355871, 24.111202, 23.708609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.521568, 24.233789, 23.585655>,  <18.797729, 24.438101, 23.380733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.521568, 24.233789, 23.585655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579767, 0.032897, 0.814118,
		-0.432685, 0.859084, 0.273419,
		-0.690401, -0.510776, 0.512303,
		18.314447, 24.080557, 23.739346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.235577, 25.023945, 23.295809>,  <18.797729, 24.438101, 23.380733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.235577, 25.023945, 23.295809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.627819, 24.951260, 23.266441>,  <19.863165, 24.907648, 23.248821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.627819, 24.951260, 23.266441>,  <19.235577, 25.023945, 23.295809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.627819, 24.951260, 23.266441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148902, -0.447215, -0.881945,
		0.127425, 0.875774, -0.465600,
		0.980607, -0.181711, -0.073418,
		19.922001, 24.896746, 23.244415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.294643, 25.116127, 22.691095>,  <19.235577, 25.023945, 23.295809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.294643, 25.116127, 22.691095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.623026, 24.899864, 22.764551>,  <19.820055, 24.770107, 22.808624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.623026, 24.899864, 22.764551>,  <19.294643, 25.116127, 22.691095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.623026, 24.899864, 22.764551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139221, -0.501440, -0.853918,
		0.553761, 0.675461, -0.486930,
		0.820955, -0.540657, 0.183640,
		19.869312, 24.737667, 22.819643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.757797, 25.162380, 22.033411>,  <19.294643, 25.116127, 22.691095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.757797, 25.162380, 22.033411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.876614, 24.840647, 22.239250>,  <19.947905, 24.647606, 22.362753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.876614, 24.840647, 22.239250>,  <19.757797, 25.162380, 22.033411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.876614, 24.840647, 22.239250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189232, -0.478647, -0.857373,
		0.935925, 0.352055, 0.010027,
		0.297043, -0.804335, 0.514598,
		19.965727, 24.599346, 22.393629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.273985, 25.018766, 21.674440>,  <19.757797, 25.162380, 22.033411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.273985, 25.018766, 21.674440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.180367, 24.674410, 21.855145>,  <20.124195, 24.467796, 21.963566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.180367, 24.674410, 21.855145>,  <20.273985, 25.018766, 21.674440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.180367, 24.674410, 21.855145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172148, -0.494019, -0.852238,
		0.956863, -0.121693, 0.263824,
		-0.234046, -0.860892, 0.451759,
		20.110153, 24.416142, 21.990673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.798010, 24.486139, 21.408051>,  <20.273985, 25.018766, 21.674440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.798010, 24.486139, 21.408051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.492619, 24.281521, 21.565742>,  <20.309383, 24.158751, 21.660358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.492619, 24.281521, 21.565742>,  <20.798010, 24.486139, 21.408051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.492619, 24.281521, 21.565742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187715, -0.759841, -0.622419,
		0.617949, -0.401201, 0.676148,
		-0.763481, -0.511546, 0.394232,
		20.263575, 24.128057, 21.684011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.016659, 23.847576, 21.265287>,  <20.798010, 24.486139, 21.408051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.016659, 23.847576, 21.265287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.637041, 23.770592, 21.365107>,  <20.409271, 23.724401, 21.424997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.637041, 23.770592, 21.365107>,  <21.016659, 23.847576, 21.265287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.637041, 23.770592, 21.365107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013432, -0.766428, -0.642190,
		0.314857, -0.612819, 0.724788,
		-0.949044, -0.192463, 0.249546,
		20.352327, 23.712852, 21.439970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.025379, 23.171131, 21.386093>,  <21.016659, 23.847576, 21.265287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.025379, 23.171131, 21.386093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.656826, 23.291393, 21.287575>,  <20.435694, 23.363550, 21.228464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.656826, 23.291393, 21.287575>,  <21.025379, 23.171131, 21.386093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.656826, 23.291393, 21.287575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072326, -0.755276, -0.651403,
		-0.381870, -0.582378, 0.717643,
		-0.921382, 0.300656, -0.246296,
		20.380411, 23.381590, 21.213686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.641933, 22.563242, 21.324932>,  <21.025379, 23.171131, 21.386093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.641933, 22.563242, 21.324932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.450232, 22.846895, 21.118071>,  <20.335211, 23.017086, 20.993954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.450232, 22.846895, 21.118071>,  <20.641933, 22.563242, 21.324932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.450232, 22.846895, 21.118071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276141, -0.681137, -0.678085,
		-0.833103, -0.182169, 0.522258,
		-0.479255, 0.709131, -0.517153,
		20.306456, 23.059635, 20.962925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.954622, 22.360088, 21.097076>,  <20.641933, 22.563242, 21.324932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.954622, 22.360088, 21.097076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.048403, 22.658373, 20.847612>,  <20.104671, 22.837343, 20.697935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.048403, 22.658373, 20.847612>,  <19.954622, 22.360088, 21.097076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.048403, 22.658373, 20.847612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201348, -0.590378, -0.781609,
		-0.951047, 0.308822, 0.011732,
		0.234452, 0.745709, -0.623658,
		20.118738, 22.882086, 20.660515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.543171, 22.287464, 20.517977>,  <19.954622, 22.360088, 21.097076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.543171, 22.287464, 20.517977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.784609, 22.554222, 20.343197>,  <19.929472, 22.714277, 20.238329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.784609, 22.554222, 20.343197>,  <19.543171, 22.287464, 20.517977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.784609, 22.554222, 20.343197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091037, -0.486808, -0.868752,
		-0.792077, 0.564153, -0.233123,
		0.603595, 0.666895, -0.436948,
		19.965687, 22.754292, 20.212112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.218138, 22.515108, 19.932003>,  <19.543171, 22.287464, 20.517977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.218138, 22.515108, 19.932003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.610546, 22.560595, 19.869183>,  <19.845991, 22.587887, 19.831490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.610546, 22.560595, 19.869183>,  <19.218138, 22.515108, 19.932003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.610546, 22.560595, 19.869183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075002, -0.524374, -0.848178,
		-0.178805, 0.843860, -0.505894,
		0.981022, 0.113715, -0.157052,
		19.904852, 22.594709, 19.822067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.240366, 22.814396, 19.242901>,  <19.218138, 22.515108, 19.932003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.240366, 22.814396, 19.242901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.607769, 22.684629, 19.333321>,  <19.828211, 22.606770, 19.387571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.607769, 22.684629, 19.333321>,  <19.240366, 22.814396, 19.242901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.607769, 22.684629, 19.333321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061903, -0.446657, -0.892561,
		0.390527, 0.833817, -0.390176,
		0.918508, -0.324416, 0.226047,
		19.883322, 22.587305, 19.401134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.694019, 23.035521, 18.674797>,  <19.240366, 22.814396, 19.242901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.694019, 23.035521, 18.674797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.867958, 22.724133, 18.855856>,  <19.972321, 22.537300, 18.964491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.867958, 22.724133, 18.855856>,  <19.694019, 23.035521, 18.674797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.867958, 22.724133, 18.855856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092843, -0.461225, -0.882412,
		0.895705, 0.425739, -0.128287,
		0.434847, -0.778471, 0.452649,
		19.998411, 22.490591, 18.991650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.347422, 22.876635, 18.286896>,  <19.694019, 23.035521, 18.674797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.347422, 22.876635, 18.286896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.239164, 22.554691, 18.498161>,  <20.174210, 22.361525, 18.624920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.239164, 22.554691, 18.498161>,  <20.347422, 22.876635, 18.286896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.239164, 22.554691, 18.498161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229401, -0.586754, -0.776592,
		0.934948, -0.089017, 0.343435,
		-0.270642, -0.804858, 0.528164,
		20.157972, 22.313234, 18.656610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<11.061023, 9.095036, 14.239346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.183707, 8.870820, 14.547040>,  <11.257318, 8.736291, 14.731656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.183707, 8.870820, 14.547040>,  <11.061023, 9.095036, 14.239346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.183707, 8.870820, 14.547040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794725, -0.595565, -0.117112,
		0.523776, -0.575411, -0.628142,
		0.306711, -0.560540, 0.769235,
		11.275721, 8.702658, 14.777811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.119028, 8.333197, 13.986716>,  <11.061023, 9.095036, 14.239346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.119028, 8.333197, 13.986716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.497741, 8.212721, 14.032126>,  <11.724968, 8.140435, 14.059373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.497741, 8.212721, 14.032126>,  <11.119028, 8.333197, 13.986716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.497741, 8.212721, 14.032126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271526, -0.936759, -0.220807,
		0.172851, 0.178230, -0.968688,
		0.946782, -0.301191, 0.113526,
		11.781775, 8.122364, 14.066184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.213223, 7.955526, 14.612161>,  <11.119028, 8.333197, 13.986716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.213223, 7.955526, 14.612161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.549832, 7.955419, 14.828249>,  <11.751798, 7.955354, 14.957902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.549832, 7.955419, 14.828249>,  <11.213223, 7.955526, 14.612161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.549832, 7.955419, 14.828249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418313, 0.633098, -0.651307,
		-0.341837, 0.774071, 0.532880,
		0.841523, -0.000270, 0.540221,
		11.802289, 7.955338, 14.990315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.780968, 8.470227, 14.977976>,  <11.213223, 7.955526, 14.612161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.780968, 8.470227, 14.977976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.431629, 8.653851, 14.912821>,  <10.222026, 8.764025, 14.873728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.431629, 8.653851, 14.912821>,  <10.780968, 8.470227, 14.977976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.431629, 8.653851, 14.912821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483890, -0.855974, 0.182095,
		-0.055836, 0.237852, 0.969695,
		-0.873346, 0.459059, -0.162888,
		10.169625, 8.791568, 14.863955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.266941, 8.301212, 15.628578>,  <10.780968, 8.470227, 14.977976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.266941, 8.301212, 15.628578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.073747, 8.410715, 15.295884>,  <9.957829, 8.476417, 15.096268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.073747, 8.410715, 15.295884>,  <10.266941, 8.301212, 15.628578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.073747, 8.410715, 15.295884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662757, -0.735069, 0.142922,
		-0.572256, 0.620267, 0.536463,
		-0.482986, 0.273757, -0.831734,
		9.928851, 8.492842, 15.046364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.504539, 8.536524, 15.686228>,  <10.266941, 8.301212, 15.628578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.504539, 8.536524, 15.686228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.569821, 8.345963, 15.340649>,  <9.608992, 8.231627, 15.133301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.569821, 8.345963, 15.340649>,  <9.504539, 8.536524, 15.686228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.569821, 8.345963, 15.340649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662799, -0.701591, 0.261665,
		-0.730795, 0.529917, -0.430262,
		0.163207, -0.476401, -0.863948,
		9.618784, 8.203043, 15.081465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.928180, 8.471637, 15.290574>,  <9.504539, 8.536524, 15.686228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.928180, 8.471637, 15.290574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.161477, 8.166259, 15.179594>,  <9.301455, 7.983032, 15.113006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.161477, 8.166259, 15.179594>,  <8.928180, 8.471637, 15.290574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.161477, 8.166259, 15.179594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760211, -0.633358, 0.144694,
		-0.286191, 0.126529, -0.949782,
		0.583244, -0.763445, -0.277450,
		9.336451, 7.937225, 15.096359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.450678, 8.139447, 14.775048>,  <8.928180, 8.471637, 15.290574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.450678, 8.139447, 14.775048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.670906, 7.821603, 14.877392>,  <8.803043, 7.630896, 14.938798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.670906, 7.821603, 14.877392>,  <8.450678, 8.139447, 14.775048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.670906, 7.821603, 14.877392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803565, -0.587512, -0.095462,
		0.226175, -0.153040, -0.961989,
		0.550571, -0.794612, 0.255858,
		8.836078, 7.583219, 14.954149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.512791, 7.993311, 13.976370>,  <8.450678, 8.139447, 14.775048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.512791, 7.993311, 13.976370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.326384, 8.127522, 13.648895>,  <8.214540, 8.208049, 13.452411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.326384, 8.127522, 13.648895>,  <8.512791, 7.993311, 13.976370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.326384, 8.127522, 13.648895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080251, 0.905462, 0.416772,
		0.881128, 0.259924, -0.395035,
		-0.466018, 0.335528, -0.818687,
		8.186578, 8.228181, 13.403289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.975284, 8.562593, 13.796671>,  <8.512791, 7.993311, 13.976370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.975284, 8.562593, 13.796671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.595468, 8.605309, 13.678710>,  <8.367578, 8.630939, 13.607933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.595468, 8.605309, 13.678710>,  <8.975284, 8.562593, 13.796671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.595468, 8.605309, 13.678710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049051, 0.878115, 0.475928,
		0.309784, 0.466379, -0.828568,
		-0.949541, 0.106793, -0.294902,
		8.310605, 8.637347, 13.590240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.921518, 9.128914, 13.422166>,  <8.975284, 8.562593, 13.796671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.921518, 9.128914, 13.422166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.544281, 9.084702, 13.547615>,  <8.317939, 9.058174, 13.622885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.544281, 9.084702, 13.547615>,  <8.921518, 9.128914, 13.422166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.544281, 9.084702, 13.547615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061518, 0.868870, 0.491204,
		-0.326791, 0.482544, -0.812625,
		-0.943092, -0.110530, 0.313624,
		8.261353, 9.051542, 13.641703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.501640, 9.742258, 13.401729>,  <8.921518, 9.128914, 13.422166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.501640, 9.742258, 13.401729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.297141, 9.546378, 13.684237>,  <8.174441, 9.428850, 13.853742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.297141, 9.546378, 13.684237>,  <8.501640, 9.742258, 13.401729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.297141, 9.546378, 13.684237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136880, 0.857693, 0.495608,
		-0.848463, 0.156704, -0.505524,
		-0.511249, -0.489701, 0.706271,
		8.143766, 9.399467, 13.896118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.885877, 10.069882, 13.427318>,  <8.501640, 9.742258, 13.401729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.885877, 10.069882, 13.427318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.868083, 9.861290, 13.768159>,  <7.857408, 9.736135, 13.972664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.868083, 9.861290, 13.768159>,  <7.885877, 10.069882, 13.427318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.868083, 9.861290, 13.768159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222505, 0.836693, 0.500436,
		-0.973916, -0.167336, -0.153251,
		-0.044483, -0.521481, 0.852102,
		7.854739, 9.704845, 14.023789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.385190, 10.353424, 13.738360>,  <7.885877, 10.069882, 13.427318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.385190, 10.353424, 13.738360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.567591, 10.146035, 14.027703>,  <7.677032, 10.021602, 14.201309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.567591, 10.146035, 14.027703>,  <7.385190, 10.353424, 13.738360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.567591, 10.146035, 14.027703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081069, 0.785204, 0.613908,
		-0.886278, -0.338586, 0.316023,
		0.456003, -0.518473, 0.723358,
		7.704391, 9.990493, 14.244711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.947479, 10.361143, 14.270282>,  <7.385190, 10.353424, 13.738360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.947479, 10.361143, 14.270282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.308114, 10.326192, 14.439754>,  <7.524495, 10.305221, 14.541437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.308114, 10.326192, 14.439754>,  <6.947479, 10.361143, 14.270282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.308114, 10.326192, 14.439754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222677, 0.745931, 0.627695,
		-0.370884, -0.660266, 0.653065,
		0.901587, -0.087379, 0.423680,
		7.578590, 10.299978, 14.566857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.872485, 10.645898, 14.960666>,  <6.947479, 10.361143, 14.270282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.872485, 10.645898, 14.960666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.271588, 10.635348, 14.936062>,  <7.511050, 10.629019, 14.921300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.271588, 10.635348, 14.936062>,  <6.872485, 10.645898, 14.960666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.271588, 10.635348, 14.936062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053236, 0.869735, 0.490639,
		0.040557, -0.492814, 0.869189,
		0.997758, -0.026373, -0.061509,
		7.570916, 10.627437, 14.917609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.127961, 10.750706, 15.691534>,  <6.872485, 10.645898, 14.960666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.127961, 10.750706, 15.691534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.422519, 10.844106, 15.437542>,  <7.599254, 10.900146, 15.285147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.422519, 10.844106, 15.437542>,  <7.127961, 10.750706, 15.691534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.422519, 10.844106, 15.437542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170704, 0.844060, 0.508353,
		0.654661, -0.482743, 0.581703,
		0.736396, 0.233500, -0.634980,
		7.643437, 10.914156, 15.247048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.547005, 11.164768, 16.092493>,  <7.127961, 10.750706, 15.691534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.547005, 11.164768, 16.092493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.643763, 11.255736, 15.715183>,  <7.701817, 11.310317, 15.488797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.643763, 11.255736, 15.715183>,  <7.547005, 11.164768, 16.092493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.643763, 11.255736, 15.715183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015981, 0.971079, 0.238222,
		0.970162, -0.072708, 0.231299,
		0.241930, 0.227417, -0.943266,
		7.716331, 11.323962, 15.432200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.969985, 11.764584, 16.163811>,  <7.547005, 11.164768, 16.092493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.969985, 11.764584, 16.163811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.860728, 11.747858, 15.779386>,  <7.795174, 11.737823, 15.548730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.860728, 11.747858, 15.779386>,  <7.969985, 11.764584, 16.163811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.860728, 11.747858, 15.779386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110264, 0.993831, -0.011900,
		0.955633, 0.102721, -0.276068,
		-0.273142, -0.041813, -0.961064,
		7.778785, 11.735314, 15.491066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.285725, 12.357826, 15.866540>,  <7.969985, 11.764584, 16.163811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.285725, 12.357826, 15.866540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.969971, 12.249386, 15.646221>,  <7.780519, 12.184321, 15.514030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.969971, 12.249386, 15.646221>,  <8.285725, 12.357826, 15.866540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.969971, 12.249386, 15.646221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400352, 0.907504, 0.127101,
		0.465394, 0.320844, -0.824905,
		-0.789384, -0.271100, -0.550797,
		7.733156, 12.168056, 15.480982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.283989, 12.596184, 15.141438>,  <8.285725, 12.357826, 15.866540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.283989, 12.596184, 15.141438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.884921, 12.569802, 15.134487>,  <7.645480, 12.553973, 15.130317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.884921, 12.569802, 15.134487>,  <8.283989, 12.596184, 15.141438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.884921, 12.569802, 15.134487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060105, 0.970594, -0.233100,
		0.032239, -0.231513, -0.972298,
		-0.997672, -0.065955, -0.017376,
		7.585619, 12.550015, 15.129274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.044721, 13.016533, 14.568083>,  <8.283989, 12.596184, 15.141438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.044721, 13.016533, 14.568083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.721864, 12.962676, 14.798003>,  <7.528151, 12.930362, 14.935955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.721864, 12.962676, 14.798003>,  <8.044721, 13.016533, 14.568083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.721864, 12.962676, 14.798003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296207, 0.934583, -0.197018,
		-0.510672, -0.329281, -0.794222,
		-0.807141, -0.134643, 0.574800,
		7.479722, 12.922283, 14.970444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.507003, 13.210009, 14.103049>,  <8.044721, 13.016533, 14.568083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.507003, 13.210009, 14.103049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.373816, 13.245873, 14.478516>,  <7.293903, 13.267392, 14.703795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.373816, 13.245873, 14.478516>,  <7.507003, 13.210009, 14.103049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.373816, 13.245873, 14.478516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430750, 0.871067, -0.236002,
		-0.838801, -0.482911, -0.251415,
		-0.332967, 0.089661, 0.938666,
		7.273925, 13.272772, 14.760116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.788247, 13.401290, 13.971312>,  <7.507003, 13.210009, 14.103049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.788247, 13.401290, 13.971312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.865413, 13.488708, 14.353939>,  <6.911712, 13.541160, 14.583515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.865413, 13.488708, 14.353939>,  <6.788247, 13.401290, 13.971312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.865413, 13.488708, 14.353939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501778, 0.859739, -0.095228,
		-0.843210, -0.461613, 0.275517,
		0.192914, 0.218545, 0.956568,
		6.923287, 13.554272, 14.640909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.201949, 13.864774, 14.285885>,  <6.788247, 13.401290, 13.971312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.201949, 13.864774, 14.285885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.509089, 13.911320, 14.537874>,  <6.693372, 13.939247, 14.689068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.509089, 13.911320, 14.537874>,  <6.201949, 13.864774, 14.285885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.509089, 13.911320, 14.537874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349451, 0.900262, 0.259638,
		-0.536928, -0.419508, 0.731929,
		0.767849, 0.116366, 0.629974,
		6.739443, 13.946230, 14.726867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.978889, 14.114719, 14.956676>,  <6.201949, 13.864774, 14.285885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.978889, 14.114719, 14.956676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.365043, 14.218549, 14.946441>,  <6.596735, 14.280847, 14.940300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.365043, 14.218549, 14.946441>,  <5.978889, 14.114719, 14.956676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.365043, 14.218549, 14.946441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254323, 0.958533, 0.128585,
		0.057904, -0.117627, 0.991368,
		0.965384, 0.259573, -0.025587,
		6.654658, 14.296421, 14.938765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.949328, 14.604900, 15.404798>,  <5.978889, 14.114719, 14.956676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.949328, 14.604900, 15.404798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.293700, 14.657119, 15.208121>,  <6.500323, 14.688450, 15.090116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.293700, 14.657119, 15.208121>,  <5.949328, 14.604900, 15.404798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.293700, 14.657119, 15.208121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119829, 0.991358, 0.053392,
		0.494411, 0.012952, 0.869132,
		0.860929, 0.130545, -0.491690,
		6.551979, 14.696282, 15.060615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.278098, 15.151343, 15.810308>,  <5.949328, 14.604900, 15.404798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.278098, 15.151343, 15.810308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.440330, 15.139901, 15.444862>,  <6.537669, 15.133036, 15.225595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.440330, 15.139901, 15.444862>,  <6.278098, 15.151343, 15.810308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.440330, 15.139901, 15.444862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122381, 0.988812, -0.085288,
		0.905830, 0.146400, 0.397541,
		0.405579, -0.028606, -0.913612,
		6.562003, 15.131319, 15.170778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.705639, 15.739811, 15.825492>,  <6.278098, 15.151343, 15.810308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.705639, 15.739811, 15.825492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.662156, 15.638117, 15.441087>,  <6.636066, 15.577101, 15.210443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.662156, 15.638117, 15.441087>,  <6.705639, 15.739811, 15.825492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.662156, 15.638117, 15.441087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145910, 0.960353, -0.237554,
		0.983307, 0.114398, -0.141492,
		-0.108707, -0.254234, -0.961014,
		6.629544, 15.561847, 15.152782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.091981, 16.231831, 15.425797>,  <6.705639, 15.739811, 15.825492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.091981, 16.231831, 15.425797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.836027, 16.062740, 15.169095>,  <6.682455, 15.961287, 15.015074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.836027, 16.062740, 15.169095>,  <7.091981, 16.231831, 15.425797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.836027, 16.062740, 15.169095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147142, 0.887053, -0.437591,
		0.754253, -0.185578, -0.629812,
		-0.639884, -0.422726, -0.641756,
		6.644062, 15.935923, 14.976568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.081001, 16.685091, 14.702639>,  <7.091981, 16.231831, 15.425797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.081001, 16.685091, 14.702639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.747117, 16.467960, 14.739730>,  <6.546787, 16.337683, 14.761985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.747117, 16.467960, 14.739730>,  <7.081001, 16.685091, 14.702639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.747117, 16.467960, 14.739730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526437, 0.737129, -0.423680,
		0.161632, -0.402466, -0.901053,
		-0.834709, -0.542827, 0.092729,
		6.496704, 16.305113, 14.767549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.453752, 17.043041, 15.200899>,  <7.081001, 16.685091, 14.702639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.453752, 17.043041, 15.200899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.818432, 17.172205, 15.302511>,  <8.037240, 17.249702, 15.363479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.818432, 17.172205, 15.302511>,  <7.453752, 17.043041, 15.200899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.818432, 17.172205, 15.302511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408121, -0.782995, -0.469421,
		0.047324, 0.531647, -0.845643,
		0.911700, 0.322909, 0.254031,
		8.091943, 17.269077, 15.378720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.858058, 17.332853, 14.550432>,  <7.453752, 17.043041, 15.200899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.858058, 17.332853, 14.550432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.102407, 17.193853, 14.834991>,  <8.249015, 17.110455, 15.005725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.102407, 17.193853, 14.834991>,  <7.858058, 17.332853, 14.550432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.102407, 17.193853, 14.834991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462930, -0.572159, -0.677000,
		0.642288, 0.742885, -0.188648,
		0.610870, -0.347498, 0.711395,
		8.285667, 17.089603, 15.048409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.577162, 17.367899, 14.212399>,  <7.858058, 17.332853, 14.550432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.577162, 17.367899, 14.212399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.576468, 17.095024, 14.504869>,  <8.576051, 16.931299, 14.680350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.576468, 17.095024, 14.504869>,  <8.577162, 17.367899, 14.212399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.576468, 17.095024, 14.504869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531444, -0.620004, -0.577202,
		0.847092, 0.387577, 0.363620,
		-0.001735, -0.682187, 0.731176,
		8.575947, 16.890368, 14.724221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.075694, 16.995041, 14.013286>,  <8.577162, 17.367899, 14.212399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.075694, 16.995041, 14.013286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.913204, 16.732300, 14.267380>,  <8.815710, 16.574656, 14.419836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.913204, 16.732300, 14.267380>,  <9.075694, 16.995041, 14.013286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.913204, 16.732300, 14.267380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434286, -0.750429, -0.498248,
		0.803976, 0.073474, 0.590105,
		-0.406224, -0.656855, 0.635236,
		8.791337, 16.535244, 14.457951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.569951, 16.478413, 14.203331>,  <9.075694, 16.995041, 14.013286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.569951, 16.478413, 14.203331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.229451, 16.294872, 14.305180>,  <9.025151, 16.184748, 14.366289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.229451, 16.294872, 14.305180>,  <9.569951, 16.478413, 14.203331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.229451, 16.294872, 14.305180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255072, -0.785834, -0.563385,
		0.458599, -0.414635, 0.785980,
		-0.851249, -0.458849, 0.254621,
		8.974076, 16.157217, 14.381566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.795250, 15.736261, 14.165972>,  <9.569951, 16.478413, 14.203331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.795250, 15.736261, 14.165972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.395494, 15.723516, 14.171721>,  <9.155642, 15.715869, 14.175170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.395494, 15.723516, 14.171721>,  <9.795250, 15.736261, 14.165972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.395494, 15.723516, 14.171721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018687, -0.834495, -0.550698,
		0.029540, -0.550093, 0.834581,
		-0.999389, -0.031863, 0.014372,
		9.095677, 15.713958, 14.176032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.642216, 15.030523, 14.317943>,  <9.795250, 15.736261, 14.165972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.642216, 15.030523, 14.317943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.303991, 15.188484, 14.174232>,  <9.101057, 15.283260, 14.088006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.303991, 15.188484, 14.174232>,  <9.642216, 15.030523, 14.317943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.303991, 15.188484, 14.174232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205283, -0.861709, -0.464023,
		-0.492834, -0.318607, 0.809694,
		-0.845561, 0.394902, -0.359275,
		9.050323, 15.306955, 14.066450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.090657, 14.669949, 14.565173>,  <9.642216, 15.030523, 14.317943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.090657, 14.669949, 14.565173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.992155, 14.829683, 14.211928>,  <8.933054, 14.925525, 13.999981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.992155, 14.829683, 14.211928>,  <9.090657, 14.669949, 14.565173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.992155, 14.829683, 14.211928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149344, -0.915924, -0.372531,
		-0.957630, 0.040149, 0.285190,
		-0.246255, 0.399338, -0.883113,
		8.918279, 14.949485, 13.946995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.658151, 14.189814, 14.250288>,  <9.090657, 14.669949, 14.565173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.658151, 14.189814, 14.250288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.723930, 14.416156, 13.927113>,  <8.763398, 14.551961, 13.733208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.723930, 14.416156, 13.927113>,  <8.658151, 14.189814, 14.250288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.723930, 14.416156, 13.927113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082627, -0.808308, -0.582933,
		-0.982919, 0.162621, -0.086171,
		0.164450, 0.565855, -0.807938,
		8.773266, 14.585913, 13.684731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.166037, 13.972464, 13.823471>,  <8.658151, 14.189814, 14.250288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.166037, 13.972464, 13.823471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.426876, 14.141851, 13.571935>,  <8.583380, 14.243484, 13.421013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.426876, 14.141851, 13.571935>,  <8.166037, 13.972464, 13.823471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.426876, 14.141851, 13.571935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029961, -0.843206, -0.536754,
		-0.757542, 0.331176, -0.562541,
		0.652098, 0.423468, -0.628842,
		8.622505, 14.268892, 13.383282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.937622, 13.776263, 13.208264>,  <8.166037, 13.972464, 13.823471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.937622, 13.776263, 13.208264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.317055, 13.874911, 13.128897>,  <8.544715, 13.934100, 13.081276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.317055, 13.874911, 13.128897>,  <7.937622, 13.776263, 13.208264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.317055, 13.874911, 13.128897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094436, -0.818811, -0.566243,
		-0.302115, 0.518390, -0.799999,
		0.948582, 0.246619, -0.198420,
		8.601629, 13.948897, 13.069370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.999503, 13.805304, 12.486315>,  <7.937622, 13.776263, 13.208264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.999503, 13.805304, 12.486315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.367011, 13.755901, 12.636305>,  <8.587516, 13.726260, 12.726299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.367011, 13.755901, 12.636305>,  <7.999503, 13.805304, 12.486315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.367011, 13.755901, 12.636305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171707, -0.730255, -0.661245,
		0.355496, 0.671918, -0.649729,
		0.918770, -0.123507, 0.374976,
		8.642642, 13.718849, 12.748797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.455692, 13.613685, 11.871664>,  <7.999503, 13.805304, 12.486315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.455692, 13.613685, 11.871664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.665836, 13.491121, 12.189182>,  <8.791923, 13.417583, 12.379693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.665836, 13.491121, 12.189182>,  <8.455692, 13.613685, 11.871664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.665836, 13.491121, 12.189182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336062, -0.782343, -0.524406,
		0.781702, 0.542266, -0.308039,
		0.525360, -0.306409, 0.793795,
		8.823444, 13.399199, 12.427320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.157039, 13.361737, 11.615444>,  <8.455692, 13.613685, 11.871664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.157039, 13.361737, 11.615444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.127067, 13.205743, 11.982551>,  <9.109083, 13.112146, 12.202815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.127067, 13.205743, 11.982551>,  <9.157039, 13.361737, 11.615444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.127067, 13.205743, 11.982551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433057, -0.841762, -0.322333,
		0.898247, 0.373293, 0.231960,
		-0.074931, -0.389987, 0.917767,
		9.104588, 13.088747, 12.257881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.854766, 13.155136, 11.841139>,  <9.157039, 13.361737, 11.615444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.854766, 13.155136, 11.841139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.594809, 12.930616, 12.046110>,  <9.438834, 12.795904, 12.169093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.594809, 12.930616, 12.046110>,  <9.854766, 13.155136, 11.841139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.594809, 12.930616, 12.046110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363375, -0.821646, -0.439153,
		0.667531, -0.099199, 0.737944,
		-0.649893, -0.561299, 0.512428,
		9.399840, 12.762227, 12.199839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.134072, 12.485118, 12.035649>,  <9.854766, 13.155136, 11.841139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.134072, 12.485118, 12.035649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.747045, 12.392564, 12.076188>,  <9.514828, 12.337031, 12.100512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.747045, 12.392564, 12.076188>,  <10.134072, 12.485118, 12.035649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.747045, 12.392564, 12.076188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163039, -0.878481, -0.449098,
		0.192947, -0.418010, 0.887716,
		-0.967569, -0.231385, 0.101348,
		9.456774, 12.323149, 12.106592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.172376, 11.757641, 12.285710>,  <10.134072, 12.485118, 12.035649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.172376, 11.757641, 12.285710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.824623, 11.839136, 12.105637>,  <9.615972, 11.888034, 11.997592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.824623, 11.839136, 12.105637>,  <10.172376, 11.757641, 12.285710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.824623, 11.839136, 12.105637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128450, -0.786548, -0.604022,
		-0.477155, -0.582952, 0.657640,
		-0.869381, 0.203739, -0.450186,
		9.563808, 11.900258, 11.970581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.898170, 11.011845, 12.141951>,  <10.172376, 11.757641, 12.285710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.898170, 11.011845, 12.141951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.691644, 11.266358, 11.912671>,  <9.567727, 11.419066, 11.775104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.691644, 11.266358, 11.912671>,  <9.898170, 11.011845, 12.141951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.691644, 11.266358, 11.912671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125072, -0.718163, -0.684543,
		-0.847215, -0.281751, 0.450382,
		-0.516318, 0.636285, -0.573199,
		9.536749, 11.457244, 11.740711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.336336, 10.671275, 11.944297>,  <9.898170, 11.011845, 12.141951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.336336, 10.671275, 11.944297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.413643, 10.948059, 11.666062>,  <9.460027, 11.114129, 11.499122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.413643, 10.948059, 11.666062>,  <9.336336, 10.671275, 11.944297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.413643, 10.948059, 11.666062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013261, -0.710730, -0.703339,
		-0.981057, 0.126707, -0.146536,
		0.193266, 0.691959, -0.695587,
		9.471622, 11.155647, 11.457386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.825901, 10.557729, 11.496802>,  <9.336336, 10.671275, 11.944297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.825901, 10.557729, 11.496802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.117894, 10.741803, 11.294673>,  <9.293090, 10.852248, 11.173395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.117894, 10.741803, 11.294673>,  <8.825901, 10.557729, 11.496802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.117894, 10.741803, 11.294673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060965, -0.780252, -0.622487,
		-0.680740, 0.423599, -0.597626,
		0.729984, 0.460186, -0.505324,
		9.336889, 10.879859, 11.143076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.637123, 10.344151, 10.831466>,  <8.825901, 10.557729, 11.496802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.637123, 10.344151, 10.831466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.010835, 10.486536, 10.823329>,  <9.235062, 10.571967, 10.818447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.010835, 10.486536, 10.823329>,  <8.637123, 10.344151, 10.831466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.010835, 10.486536, 10.823329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257151, -0.712257, -0.653119,
		-0.246974, 0.604964, -0.756982,
		0.934279, 0.355961, -0.020342,
		9.291119, 10.593325, 10.817226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<23.030041, 23.817358, 23.189255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.789236, 23.627720, 23.446259>,  <22.644753, 23.513937, 23.600460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.789236, 23.627720, 23.446259>,  <23.030041, 23.817358, 23.189255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.789236, 23.627720, 23.446259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460647, 0.451050, 0.764433,
		-0.652216, 0.756168, -0.053148,
		-0.602012, -0.474093, 0.642509,
		22.608633, 23.485493, 23.639011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.647156, 24.301388, 23.567417>,  <23.030041, 23.817358, 23.189255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.647156, 24.301388, 23.567417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.639856, 23.963121, 23.780775>,  <22.635477, 23.760160, 23.908791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.639856, 23.963121, 23.780775>,  <22.647156, 24.301388, 23.567417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.639856, 23.963121, 23.780775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156445, 0.524500, 0.836914,
		-0.987518, 0.098720, 0.122728,
		-0.018249, -0.845668, 0.533397,
		22.634382, 23.709421, 23.940794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.236124, 24.442995, 24.195374>,  <22.647156, 24.301388, 23.567417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.236124, 24.442995, 24.195374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.420462, 24.099499, 24.284985>,  <22.531063, 23.893400, 24.338751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.420462, 24.099499, 24.284985>,  <22.236124, 24.442995, 24.195374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.420462, 24.099499, 24.284985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000788, 0.252034, 0.967718,
		-0.887482, -0.446142, 0.115471,
		0.460842, -0.858741, 0.224027,
		22.558714, 23.841877, 24.352192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.907864, 24.316837, 24.889740>,  <22.236124, 24.442995, 24.195374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.907864, 24.316837, 24.889740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.241766, 24.097431, 24.870483>,  <22.442106, 23.965788, 24.858929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.241766, 24.097431, 24.870483>,  <21.907864, 24.316837, 24.889740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.241766, 24.097431, 24.870483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095781, 0.058547, 0.993679,
		-0.542228, -0.834089, 0.101410,
		0.834754, -0.548514, -0.048144,
		22.492193, 23.932877, 24.856041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.923555, 23.874928, 25.375498>,  <21.907864, 24.316837, 24.889740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.923555, 23.874928, 25.375498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.318150, 23.856215, 25.312691>,  <22.554907, 23.844988, 25.275007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.318150, 23.856215, 25.312691>,  <21.923555, 23.874928, 25.375498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.318150, 23.856215, 25.312691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162555, 0.159750, 0.973682,
		-0.020467, -0.986049, 0.165196,
		0.986487, -0.046782, -0.157017,
		22.614096, 23.842180, 25.265585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.242180, 23.430567, 25.906124>,  <21.923555, 23.874928, 25.375498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.242180, 23.430567, 25.906124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.557444, 23.641644, 25.779413>,  <22.746601, 23.768290, 25.703386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.557444, 23.641644, 25.779413>,  <22.242180, 23.430567, 25.906124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.557444, 23.641644, 25.779413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254180, 0.189675, 0.948375,
		0.560533, -0.827989, 0.015366,
		0.788159, 0.527690, -0.316777,
		22.793892, 23.799950, 25.684380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.788946, 23.250137, 26.363083>,  <22.242180, 23.430567, 25.906124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.788946, 23.250137, 26.363083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.878515, 23.599680, 26.190466>,  <22.932257, 23.809406, 26.086895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.878515, 23.599680, 26.190466>,  <22.788946, 23.250137, 26.363083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.878515, 23.599680, 26.190466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292345, 0.362173, 0.885079,
		0.929728, -0.324348, -0.174370,
		0.223921, 0.873859, -0.431544,
		22.945692, 23.861837, 26.061003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.434290, 23.282675, 26.604954>,  <22.788946, 23.250137, 26.363083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.434290, 23.282675, 26.604954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.343231, 23.650658, 26.477293>,  <23.288595, 23.871447, 26.400698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.343231, 23.650658, 26.477293>,  <23.434290, 23.282675, 26.604954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.343231, 23.650658, 26.477293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469784, 0.390851, 0.791542,
		0.852924, 0.030260, -0.521157,
		-0.227647, 0.919957, -0.319150,
		23.274937, 23.926645, 26.381548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.083187, 23.725538, 26.655544>,  <23.434290, 23.282675, 26.604954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.083187, 23.725538, 26.655544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.768215, 23.972094, 26.657421>,  <23.579233, 24.120028, 26.658546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.768215, 23.972094, 26.657421>,  <24.083187, 23.725538, 26.655544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.768215, 23.972094, 26.657421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403608, 0.509823, 0.759724,
		0.465895, 0.600121, -0.650228,
		-0.787428, 0.616389, 0.004690,
		23.531986, 24.157011, 26.658829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.266413, 24.316441, 26.788927>,  <24.083187, 23.725538, 26.655544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.266413, 24.316441, 26.788927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.881845, 24.387192, 26.873205>,  <23.651106, 24.429642, 26.923771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.881845, 24.387192, 26.873205>,  <24.266413, 24.316441, 26.788927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.881845, 24.387192, 26.873205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260274, 0.336861, 0.904866,
		0.089075, 0.924792, -0.369900,
		-0.961417, 0.176876, 0.210693,
		23.593420, 24.440254, 26.936413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.231640, 24.926689, 27.009771>,  <24.266413, 24.316441, 26.788927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.231640, 24.926689, 27.009771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.894815, 24.766642, 27.154457>,  <23.692720, 24.670612, 27.241268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.894815, 24.766642, 27.154457>,  <24.231640, 24.926689, 27.009771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.894815, 24.766642, 27.154457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135847, 0.491669, 0.860121,
		-0.521996, 0.773411, -0.359659,
		-0.842060, -0.400121, 0.361715,
		23.642197, 24.646605, 27.262972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.835535, 25.479485, 27.403933>,  <24.231640, 24.926689, 27.009771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.835535, 25.479485, 27.403933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.693031, 25.129276, 27.534496>,  <23.607529, 24.919151, 27.612835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.693031, 25.129276, 27.534496>,  <23.835535, 25.479485, 27.403933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.693031, 25.129276, 27.534496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051180, 0.330524, 0.942409,
		-0.932985, 0.352447, -0.072943,
		-0.356259, -0.875520, 0.326412,
		23.586153, 24.866621, 27.632420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.105076, 25.574213, 27.776995>,  <23.835535, 25.479485, 27.403933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.105076, 25.574213, 27.776995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.325134, 25.270882, 27.916866>,  <23.457170, 25.088882, 28.000790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.325134, 25.270882, 27.916866>,  <23.105076, 25.574213, 27.776995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.325134, 25.270882, 27.916866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053232, 0.386048, 0.920942,
		-0.833369, -0.525268, 0.172017,
		0.550148, -0.758327, 0.349681,
		23.490179, 25.043383, 28.021770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.210352, 26.312269, 27.707310>,  <23.105076, 25.574213, 27.776995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.210352, 26.312269, 27.707310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.347002, 26.616953, 27.927525>,  <23.428993, 26.799763, 28.059652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.347002, 26.616953, 27.927525>,  <23.210352, 26.312269, 27.707310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.347002, 26.616953, 27.927525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206665, -0.510557, 0.834638,
		0.916832, -0.398910, -0.017001,
		0.341626, 0.761710, 0.550536,
		23.449490, 26.845467, 28.092686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.521769, 26.077930, 27.616856>,  <23.210352, 26.312269, 27.707310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.521769, 26.077930, 27.616856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.332056, 26.402416, 27.753672>,  <22.218229, 26.597107, 27.835760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.332056, 26.402416, 27.753672>,  <22.521769, 26.077930, 27.616856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.332056, 26.402416, 27.753672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751782, -0.171013, -0.636850,
		-0.458129, -0.559182, 0.690965,
		-0.474279, 0.811215, 0.342037,
		22.189772, 26.645781, 27.856283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.863644, 25.833595, 27.684546>,  <22.521769, 26.077930, 27.616856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.863644, 25.833595, 27.684546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.824661, 26.231092, 27.662729>,  <21.801271, 26.469591, 27.649639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.824661, 26.231092, 27.662729>,  <21.863644, 25.833595, 27.684546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.824661, 26.231092, 27.662729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733422, -0.108754, -0.671018,
		-0.672752, -0.025392, 0.739432,
		-0.097455, 0.993744, -0.054541,
		21.795425, 26.529215, 27.646366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.088657, 25.940615, 27.831242>,  <21.863644, 25.833595, 27.684546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.088657, 25.940615, 27.831242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.245935, 26.239758, 27.617287>,  <21.340303, 26.419243, 27.488914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.245935, 26.239758, 27.617287>,  <21.088657, 25.940615, 27.831242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.245935, 26.239758, 27.617287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610590, -0.222565, -0.760030,
		-0.687442, 0.625438, 0.369122,
		0.393198, 0.747858, -0.534887,
		21.363895, 26.464115, 27.456821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.504528, 26.494942, 27.618954>,  <21.088657, 25.940615, 27.831242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.504528, 26.494942, 27.618954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.810820, 26.603638, 27.385778>,  <20.994595, 26.668856, 27.245872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.810820, 26.603638, 27.385778>,  <20.504528, 26.494942, 27.618954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.810820, 26.603638, 27.385778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583065, -0.089272, -0.807506,
		-0.271471, 0.958221, 0.090083,
		0.765728, 0.271739, -0.582940,
		21.040539, 26.685160, 27.210896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.128798, 26.839418, 27.010925>,  <20.504528, 26.494942, 27.618954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.128798, 26.839418, 27.010925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.503323, 26.741161, 26.910545>,  <20.728039, 26.682207, 26.850317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.503323, 26.741161, 26.910545>,  <20.128798, 26.839418, 27.010925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.503323, 26.741161, 26.910545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292364, -0.149443, -0.944558,
		0.194523, 0.957771, -0.211743,
		0.936314, -0.245644, -0.250948,
		20.784216, 26.667469, 26.835260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.468555, 27.358675, 26.439388>,  <20.128798, 26.839418, 27.010925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.468555, 27.358675, 26.439388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.624376, 26.990675, 26.422201>,  <20.717869, 26.769875, 26.411888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.624376, 26.990675, 26.422201>,  <20.468555, 27.358675, 26.439388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.624376, 26.990675, 26.422201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131374, -0.009329, -0.991289,
		0.911586, 0.391806, -0.124498,
		0.389554, -0.920001, -0.042969,
		20.741243, 26.714674, 26.409311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.699854, 27.397345, 25.755213>,  <20.468555, 27.358675, 26.439388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.699854, 27.397345, 25.755213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.766741, 27.018309, 25.864105>,  <20.806873, 26.790886, 25.929441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.766741, 27.018309, 25.864105>,  <20.699854, 27.397345, 25.755213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.766741, 27.018309, 25.864105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054248, -0.284544, -0.957127,
		0.984427, 0.145280, -0.098986,
		0.167217, -0.947591, 0.272232,
		20.816906, 26.734032, 25.945774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.247965, 27.107973, 25.245781>,  <20.699854, 27.397345, 25.755213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.247965, 27.107973, 25.245781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.035154, 26.808058, 25.403143>,  <20.907469, 26.628109, 25.497561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.035154, 26.808058, 25.403143>,  <21.247965, 27.107973, 25.245781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.035154, 26.808058, 25.403143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138126, -0.381541, -0.913973,
		0.835387, -0.540596, 0.099424,
		-0.532025, -0.749788, 0.393405,
		20.875547, 26.583120, 25.521164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.396519, 26.513580, 24.964327>,  <21.247965, 27.107973, 25.245781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.396519, 26.513580, 24.964327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.048092, 26.392584, 25.119110>,  <20.839035, 26.319986, 25.211981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.048092, 26.392584, 25.119110>,  <21.396519, 26.513580, 24.964327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.048092, 26.392584, 25.119110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151807, -0.583459, -0.797828,
		0.467112, -0.753706, 0.462313,
		-0.871069, -0.302493, 0.386959,
		20.786772, 26.301836, 25.235197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.379686, 25.692804, 24.968576>,  <21.396519, 26.513580, 24.964327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.379686, 25.692804, 24.968576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.002968, 25.827133, 24.962406>,  <20.776936, 25.907730, 24.958704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.002968, 25.827133, 24.962406>,  <21.379686, 25.692804, 24.968576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.002968, 25.827133, 24.962406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203479, -0.605971, -0.769023,
		-0.267605, -0.721125, 0.639036,
		-0.941799, 0.335825, -0.015426,
		20.720428, 25.927881, 24.957779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.937405, 25.152178, 25.123795>,  <21.379686, 25.692804, 24.968576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.937405, 25.152178, 25.123795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.703217, 25.390280, 24.903652>,  <20.562704, 25.533140, 24.771566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.703217, 25.390280, 24.903652>,  <20.937405, 25.152178, 25.123795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.703217, 25.390280, 24.903652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237666, -0.775072, -0.585472,
		-0.775072, -0.211977, 0.595255,
		0.585472, -0.595255, 0.550357,
		20.527575, 25.568857, 24.738544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.547697, 24.692053, 24.728001>,  <20.937405, 25.152178, 25.123795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.547697, 24.692053, 24.728001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.460766, 25.027721, 24.528578>,  <20.408607, 25.229122, 24.408924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.460766, 25.027721, 24.528578>,  <20.547697, 24.692053, 24.728001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.460766, 25.027721, 24.528578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225237, -0.540093, -0.810906,
		-0.949757, -0.063939, 0.306389,
		-0.217327, 0.839173, -0.498555,
		20.395567, 25.279474, 24.379011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.916637, 24.551191, 24.380026>,  <20.547697, 24.692053, 24.728001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.916637, 24.551191, 24.380026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.117878, 24.839659, 24.189531>,  <20.238623, 25.012739, 24.075233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.117878, 24.839659, 24.189531>,  <19.916637, 24.551191, 24.380026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.117878, 24.839659, 24.189531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271752, -0.391094, -0.879316,
		-0.820389, 0.571805, -0.000781,
		0.503103, 0.721169, -0.476238,
		20.268808, 25.056009, 24.046659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.509705, 24.538664, 23.875780>,  <19.916637, 24.551191, 24.380026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.509705, 24.538664, 23.875780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.818426, 24.770580, 23.771347>,  <20.003658, 24.909729, 23.708687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.818426, 24.770580, 23.771347>,  <19.509705, 24.538664, 23.875780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.818426, 24.770580, 23.771347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132619, -0.254791, -0.957859,
		-0.621878, 0.773903, -0.119757,
		0.771803, 0.579790, -0.261083,
		20.049967, 24.944517, 23.693022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.783192, 24.854517, 23.957645>,  <19.509705, 24.538664, 23.875780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.783192, 24.854517, 23.957645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.586199, 24.524332, 24.067972>,  <18.468002, 24.326221, 24.134169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.586199, 24.524332, 24.067972>,  <18.783192, 24.854517, 23.957645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.586199, 24.524332, 24.067972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464354, 0.018822, 0.885450,
		-0.736095, 0.564146, 0.374036,
		-0.492482, -0.825461, 0.275818,
		18.438454, 24.276693, 24.150717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.493649, 25.020782, 24.519764>,  <18.783192, 24.854517, 23.957645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.493649, 25.020782, 24.519764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.515211, 24.621723, 24.536688>,  <18.528149, 24.382288, 24.546843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.515211, 24.621723, 24.536688>,  <18.493649, 25.020782, 24.519764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.515211, 24.621723, 24.536688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149373, 0.049951, 0.987518,
		-0.987310, -0.046913, 0.151715,
		0.053906, -0.997649, 0.042309,
		18.531384, 24.322428, 24.549381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.002184, 24.753735, 25.097824>,  <18.493649, 25.020782, 24.519764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.002184, 24.753735, 25.097824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.281527, 24.473652, 25.038479>,  <18.449133, 24.305603, 25.002872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.281527, 24.473652, 25.038479>,  <18.002184, 24.753735, 25.097824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.281527, 24.473652, 25.038479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213978, 0.006440, 0.976817,
		-0.683016, -0.713913, 0.154325,
		0.698357, -0.700204, -0.148363,
		18.491034, 24.263590, 24.993971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.955109, 24.295673, 25.670263>,  <18.002184, 24.753735, 25.097824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.955109, 24.295673, 25.670263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.314898, 24.227314, 25.509396>,  <18.530771, 24.186298, 25.412876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.314898, 24.227314, 25.509396>,  <17.955109, 24.295673, 25.670263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.314898, 24.227314, 25.509396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393679, -0.082489, 0.915540,
		-0.189641, -0.981829, -0.006917,
		0.899474, -0.170900, -0.402169,
		18.584740, 24.176044, 25.388744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028797, 23.771492, 26.053274>,  <17.955109, 24.295673, 25.670263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.028797, 23.771492, 26.053274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.380550, 23.882395, 25.898453>,  <18.591602, 23.948936, 25.805559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.380550, 23.882395, 25.898453>,  <18.028797, 23.771492, 26.053274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.380550, 23.882395, 25.898453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433280, -0.129036, 0.891974,
		0.197364, -0.952091, -0.233603,
		0.879384, 0.277259, -0.387055,
		18.644365, 23.965572, 25.782335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.560583, 23.291620, 26.385578>,  <18.028797, 23.771492, 26.053274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.560583, 23.291620, 26.385578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.764811, 23.610193, 26.255959>,  <18.887348, 23.801338, 26.178186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.764811, 23.610193, 26.255959>,  <18.560583, 23.291620, 26.385578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.764811, 23.610193, 26.255959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561224, -0.023158, 0.827340,
		0.651418, -0.604281, -0.458802,
		0.510571, 0.796435, -0.324051,
		18.917982, 23.849123, 26.158743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.305470, 23.114201, 26.637489>,  <18.560583, 23.291620, 26.385578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.305470, 23.114201, 26.637489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.275591, 23.504770, 26.556482>,  <19.257664, 23.739113, 26.507877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.275591, 23.504770, 26.556482>,  <19.305470, 23.114201, 26.637489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.275591, 23.504770, 26.556482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413723, 0.215127, 0.884621,
		0.907333, -0.017708, -0.420039,
		-0.074697, 0.976426, -0.202518,
		19.253181, 23.797697, 26.495728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.487371, 22.692249, 27.252586>,  <19.305470, 23.114201, 26.637489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.487371, 22.692249, 27.252586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.185049, 22.587219, 27.492523>,  <19.003654, 22.524200, 27.636484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.185049, 22.587219, 27.492523>,  <19.487371, 22.692249, 27.252586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.185049, 22.587219, 27.492523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349147, -0.613373, -0.708428,
		0.553942, -0.744868, 0.371914,
		-0.755807, -0.262576, 0.599841,
		18.958307, 22.508446, 27.672476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.499760, 21.951637, 27.282108>,  <19.487371, 22.692249, 27.252586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.499760, 21.951637, 27.282108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.133957, 22.069311, 27.393200>,  <18.914474, 22.139915, 27.459854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.133957, 22.069311, 27.393200>,  <19.499760, 21.951637, 27.282108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.133957, 22.069311, 27.393200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403921, -0.624996, -0.668003,
		-0.022936, -0.723074, 0.690390,
		-0.914506, 0.294184, 0.277730,
		18.859606, 22.157566, 27.476519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.186544, 21.334606, 27.214277>,  <19.499760, 21.951637, 27.282108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.186544, 21.334606, 27.214277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.876352, 21.584114, 27.253351>,  <18.690237, 21.733818, 27.276796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.876352, 21.584114, 27.253351>,  <19.186544, 21.334606, 27.214277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.876352, 21.584114, 27.253351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503890, -0.518224, -0.691042,
		-0.380428, -0.585112, 0.716183,
		-0.775480, 0.623769, 0.097685,
		18.643709, 21.771244, 27.282656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.559523, 20.974592, 27.278429>,  <19.186544, 21.334606, 27.214277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.559523, 20.974592, 27.278429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.459414, 21.328918, 27.122122>,  <18.399349, 21.541513, 27.028337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.459414, 21.328918, 27.122122>,  <18.559523, 20.974592, 27.278429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.459414, 21.328918, 27.122122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553899, -0.462035, -0.692618,
		-0.794079, 0.043103, 0.606285,
		-0.250271, 0.885814, -0.390767,
		18.384333, 21.594662, 27.004892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.879711, 20.917055, 27.018917>,  <18.559523, 20.974592, 27.278429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.879711, 20.917055, 27.018917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.991003, 21.273743, 26.876127>,  <18.057777, 21.487755, 26.790453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.991003, 21.273743, 26.876127>,  <17.879711, 20.917055, 27.018917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.991003, 21.273743, 26.876127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735399, -0.041313, -0.676373,
		-0.617881, 0.450705, 0.644273,
		0.278228, 0.891716, -0.356974,
		18.074471, 21.541258, 26.769035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.226822, 21.371799, 27.053675>,  <17.879711, 20.917055, 27.018917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.226822, 21.371799, 27.053675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.493343, 21.455959, 26.767523>,  <17.653257, 21.506456, 26.595831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.493343, 21.455959, 26.767523>,  <17.226822, 21.371799, 27.053675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.493343, 21.455959, 26.767523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710108, -0.113738, -0.694845,
		-0.227562, 0.970976, 0.073623,
		0.666304, 0.210401, -0.715381,
		17.693235, 21.519079, 26.552908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910570, 21.950384, 26.546040>,  <17.226822, 21.371799, 27.053675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.910570, 21.950384, 26.546040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.205170, 21.764147, 26.349756>,  <17.381929, 21.652405, 26.231985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.205170, 21.764147, 26.349756>,  <16.910570, 21.950384, 26.546040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.205170, 21.764147, 26.349756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590068, -0.087503, -0.802598,
		0.330745, 0.880662, -0.339177,
		0.736497, -0.465593, -0.490709,
		17.426119, 21.624470, 26.202543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.596464, 19.446077, 27.997944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.776134, 19.650517, 28.291071>,  <26.883938, 19.773180, 28.466948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.776134, 19.650517, 28.291071>,  <26.596464, 19.446077, 27.997944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776134, 19.650517, 28.291071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559812, 0.800244, -0.214990,
		-0.696312, -0.313670, 0.645570,
		0.449177, 0.511098, 0.732816,
		26.910887, 19.803846, 28.510916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949493, 19.883339, 27.924393>,  <26.596464, 19.446077, 27.997944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949493, 19.883339, 27.924393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.564779, 19.787167, 27.871986>,  <25.333952, 19.729464, 27.840542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.564779, 19.787167, 27.871986>,  <25.949493, 19.883339, 27.924393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.564779, 19.787167, 27.871986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251791, 0.964619, 0.078177,
		0.107584, 0.108178, -0.988293,
		-0.961783, -0.240433, -0.131016,
		25.276245, 19.715036, 27.832682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.727121, 20.197184, 27.321733>,  <25.949493, 19.883339, 27.924393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.727121, 20.197184, 27.321733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.414959, 20.115513, 27.558134>,  <25.227661, 20.066511, 27.699974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.414959, 20.115513, 27.558134>,  <25.727121, 20.197184, 27.321733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.414959, 20.115513, 27.558134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280317, 0.959123, -0.038798,
		-0.558921, -0.195946, -0.805738,
		-0.780404, -0.204177, 0.591000,
		25.180838, 20.054260, 27.735434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.966120, 20.363188, 27.027103>,  <25.727121, 20.197184, 27.321733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.966120, 20.363188, 27.027103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.918798, 20.350601, 27.424095>,  <24.890406, 20.343050, 27.662291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.918798, 20.350601, 27.424095>,  <24.966120, 20.363188, 27.027103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.918798, 20.350601, 27.424095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383205, 0.923518, -0.016397,
		-0.916056, -0.382262, -0.121311,
		-0.118301, -0.031466, 0.992479,
		24.883308, 20.341162, 27.721838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.318024, 20.753981, 27.100266>,  <24.966120, 20.363188, 27.027103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.318024, 20.753981, 27.100266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.530460, 20.724352, 27.437895>,  <24.657923, 20.706573, 27.640472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.530460, 20.724352, 27.437895>,  <24.318024, 20.753981, 27.100266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.530460, 20.724352, 27.437895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236776, 0.943513, 0.231779,
		-0.813561, -0.322951, 0.483551,
		0.531089, -0.074073, 0.844072,
		24.689787, 20.702129, 27.691116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.851122, 21.077677, 27.443384>,  <24.318024, 20.753981, 27.100266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.851122, 21.077677, 27.443384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.208441, 21.095480, 27.622286>,  <24.422832, 21.106161, 27.729628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.208441, 21.095480, 27.622286>,  <23.851122, 21.077677, 27.443384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.208441, 21.095480, 27.622286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146900, 0.969348, 0.196938,
		-0.424780, -0.241626, 0.872455,
		0.893298, 0.044508, 0.447255,
		24.476431, 21.108833, 27.756462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.541183, 20.418520, 27.329575>,  <23.851122, 21.077677, 27.443384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.541183, 20.418520, 27.329575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.506205, 20.067970, 27.140123>,  <23.485218, 19.857641, 27.026453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.506205, 20.067970, 27.140123>,  <23.541183, 20.418520, 27.329575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.506205, 20.067970, 27.140123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426709, -0.462574, 0.777139,
		-0.900151, -0.134142, 0.414407,
		-0.087447, -0.876374, -0.473626,
		23.479971, 19.805058, 26.998035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.223354, 20.151976, 26.648617>,  <23.541183, 20.418520, 27.329575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.223354, 20.151976, 26.648617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.858883, 20.316748, 26.645227>,  <22.640200, 20.415611, 26.643194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.858883, 20.316748, 26.645227>,  <23.223354, 20.151976, 26.648617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.858883, 20.316748, 26.645227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353268, -0.791678, -0.498446,
		-0.212034, -0.451179, 0.866879,
		-0.911177, 0.411928, -0.008476,
		22.585529, 20.440327, 26.642685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.857882, 19.699507, 26.883760>,  <23.223354, 20.151976, 26.648617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.857882, 19.699507, 26.883760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.590282, 19.917826, 26.681950>,  <22.429722, 20.048817, 26.560863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.590282, 19.917826, 26.681950>,  <22.857882, 19.699507, 26.883760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.590282, 19.917826, 26.681950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241106, -0.801452, -0.547305,
		-0.703072, -0.244502, 0.667764,
		-0.668997, 0.545797, -0.504528,
		22.389584, 20.081564, 26.530592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.187716, 19.298069, 26.845304>,  <22.857882, 19.699507, 26.883760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.187716, 19.298069, 26.845304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.182808, 19.571447, 26.553345>,  <22.179863, 19.735474, 26.378170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.182808, 19.571447, 26.553345>,  <22.187716, 19.298069, 26.845304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.182808, 19.571447, 26.553345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338202, -0.689769, -0.640186,
		-0.940994, 0.238999, 0.239606,
		-0.012269, 0.683446, -0.729898,
		22.179127, 19.776482, 26.334375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.523626, 19.234934, 26.501568>,  <22.187716, 19.298069, 26.845304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.523626, 19.234934, 26.501568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.784056, 19.399050, 26.246141>,  <21.940313, 19.497519, 26.092886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.784056, 19.399050, 26.246141>,  <21.523626, 19.234934, 26.501568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.784056, 19.399050, 26.246141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334791, -0.599808, -0.726737,
		-0.681187, 0.686946, -0.253160,
		0.651076, 0.410288, -0.638564,
		21.979378, 19.522137, 26.054573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.088110, 19.228880, 25.985920>,  <21.523626, 19.234934, 26.501568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.088110, 19.228880, 25.985920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.423517, 19.318460, 25.787231>,  <21.624762, 19.372210, 25.668018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.423517, 19.318460, 25.787231>,  <21.088110, 19.228880, 25.985920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.423517, 19.318460, 25.787231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365308, -0.445324, -0.817457,
		-0.404274, 0.866909, -0.291601,
		0.838518, 0.223953, -0.496722,
		21.675072, 19.385647, 25.638214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.457117, 19.165407, 26.389099>,  <21.088110, 19.228880, 25.985920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.457117, 19.165407, 26.389099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.241932, 18.965939, 26.660959>,  <20.112822, 18.846258, 26.824076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.241932, 18.965939, 26.660959>,  <20.457117, 19.165407, 26.389099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.241932, 18.965939, 26.660959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079650, 0.772580, 0.629901,
		-0.839198, 0.392996, -0.375899,
		-0.537961, -0.498672, 0.679651,
		20.080544, 18.816338, 26.864855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.045244, 19.644739, 26.727425>,  <20.457117, 19.165407, 26.389099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.045244, 19.644739, 26.727425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.077827, 19.325130, 26.965729>,  <20.097378, 19.133366, 27.108711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.077827, 19.325130, 26.965729>,  <20.045244, 19.644739, 26.727425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.077827, 19.325130, 26.965729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263705, 0.593723, 0.760232,
		-0.961158, 0.095177, 0.259071,
		0.081460, -0.799021, 0.595760,
		20.102266, 19.085424, 27.144457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.828112, 19.821583, 27.385677>,  <20.045244, 19.644739, 26.727425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.828112, 19.821583, 27.385677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.018843, 19.488174, 27.497307>,  <20.133282, 19.288130, 27.564283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.018843, 19.488174, 27.497307>,  <19.828112, 19.821583, 27.385677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.018843, 19.488174, 27.497307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374686, 0.479938, 0.793266,
		-0.795140, -0.273685, 0.541155,
		0.476825, -0.833521, 0.279072,
		20.161890, 19.238119, 27.581028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.594070, 19.545549, 28.100569>,  <19.828112, 19.821583, 27.385677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.594070, 19.545549, 28.100569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.961519, 19.397875, 28.044233>,  <20.181988, 19.309269, 28.010433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.961519, 19.397875, 28.044233>,  <19.594070, 19.545549, 28.100569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.961519, 19.397875, 28.044233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285204, 0.372808, 0.882991,
		-0.273486, -0.851301, 0.447763,
		0.918621, -0.369189, -0.140836,
		20.237106, 19.287119, 28.001982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.892176, 19.635668, 28.728392>,  <19.594070, 19.545549, 28.100569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.892176, 19.635668, 28.728392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.218311, 19.520969, 28.527195>,  <20.413992, 19.452150, 28.406477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.218311, 19.520969, 28.527195>,  <19.892176, 19.635668, 28.728392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.218311, 19.520969, 28.527195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575286, 0.303155, 0.759700,
		-0.065355, -0.908776, 0.412134,
		0.815338, -0.286745, -0.502993,
		20.462914, 19.434946, 28.376297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.247334, 19.156513, 29.082010>,  <19.892176, 19.635668, 28.728392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.247334, 19.156513, 29.082010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.526358, 19.340225, 28.862020>,  <20.693771, 19.450453, 28.730026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.526358, 19.340225, 28.862020>,  <20.247334, 19.156513, 29.082010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.526358, 19.340225, 28.862020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451237, 0.314655, 0.835091,
		0.556594, -0.830694, 0.012245,
		0.697559, 0.459281, -0.549975,
		20.735626, 19.478010, 28.697027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.814100, 19.085098, 29.452909>,  <20.247334, 19.156513, 29.082010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.814100, 19.085098, 29.452909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.935633, 19.369823, 29.199608>,  <21.008553, 19.540659, 29.047626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.935633, 19.369823, 29.199608>,  <20.814100, 19.085098, 29.452909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.935633, 19.369823, 29.199608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477464, 0.461419, 0.747743,
		0.824448, -0.529543, -0.199672,
		0.303830, 0.711812, -0.633255,
		21.026781, 19.583366, 29.009632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.462694, 19.247433, 29.684875>,  <20.814100, 19.085098, 29.452909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.462694, 19.247433, 29.684875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.388231, 19.559439, 29.445904>,  <21.343554, 19.746643, 29.302521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.388231, 19.559439, 29.445904>,  <21.462694, 19.247433, 29.684875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.388231, 19.559439, 29.445904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593121, 0.573979, 0.564584,
		0.783296, -0.249246, -0.569494,
		-0.186157, 0.780015, -0.597429,
		21.332384, 19.793444, 29.266676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.057245, 19.544931, 29.594244>,  <21.462694, 19.247433, 29.684875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.057245, 19.544931, 29.594244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.817291, 19.851543, 29.502529>,  <21.673319, 20.035511, 29.447500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.817291, 19.851543, 29.502529>,  <22.057245, 19.544931, 29.594244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.817291, 19.851543, 29.502529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510787, 0.587486, 0.627660,
		0.615822, 0.259406, -0.743957,
		-0.599883, 0.766530, -0.229286,
		21.637327, 20.081503, 29.433743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.459719, 20.151712, 29.428797>,  <22.057245, 19.544931, 29.594244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.459719, 20.151712, 29.428797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.098917, 20.282354, 29.541737>,  <21.882437, 20.360739, 29.609501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.098917, 20.282354, 29.541737>,  <22.459719, 20.151712, 29.428797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.098917, 20.282354, 29.541737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431670, 0.693194, 0.577185,
		-0.007213, 0.642505, -0.766248,
		-0.902003, 0.326603, 0.282350,
		21.828316, 20.380335, 29.626442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.402523, 20.791718, 29.316467>,  <22.459719, 20.151712, 29.428797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.402523, 20.791718, 29.316467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.111027, 20.756037, 29.588049>,  <21.936129, 20.734629, 29.750998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.111027, 20.756037, 29.588049>,  <22.402523, 20.791718, 29.316467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.111027, 20.756037, 29.588049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357556, 0.796029, 0.488356,
		-0.584029, 0.598650, -0.548205,
		-0.728741, -0.089201, 0.678955,
		21.892405, 20.729277, 29.791735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.178263, 21.407093, 29.425694>,  <22.402523, 20.791718, 29.316467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.178263, 21.407093, 29.425694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.052492, 21.229549, 29.761343>,  <21.977030, 21.123024, 29.962732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.052492, 21.229549, 29.761343>,  <22.178263, 21.407093, 29.425694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.052492, 21.229549, 29.761343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368702, 0.757454, 0.538816,
		-0.874754, 0.478803, -0.074511,
		-0.314426, -0.443859, 0.839122,
		21.958164, 21.096392, 30.013079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.877199, 21.897221, 29.824234>,  <22.178263, 21.407093, 29.425694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.877199, 21.897221, 29.824234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.903301, 21.594494, 30.084379>,  <21.918962, 21.412859, 30.240467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.903301, 21.594494, 30.084379>,  <21.877199, 21.897221, 29.824234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.903301, 21.594494, 30.084379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299657, 0.636533, 0.710655,
		-0.951813, 0.148513, 0.268322,
		0.065254, -0.756815, 0.650363,
		21.922878, 21.367449, 30.279488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.447956, 22.048252, 30.389677>,  <21.877199, 21.897221, 29.824234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.447956, 22.048252, 30.389677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.746954, 21.798361, 30.479979>,  <21.926353, 21.648426, 30.534159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.746954, 21.798361, 30.479979>,  <21.447956, 22.048252, 30.389677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.746954, 21.798361, 30.479979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356132, 0.663782, 0.657695,
		-0.560731, -0.411227, 0.718660,
		0.747496, -0.624728, 0.225753,
		21.971203, 21.610943, 30.547705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.706394, 22.115131, 30.089220>,  <21.447956, 22.048252, 30.389677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.706394, 22.115131, 30.089220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.653934, 22.507553, 30.032179>,  <20.622459, 22.743006, 29.997953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.653934, 22.507553, 30.032179>,  <20.706394, 22.115131, 30.089220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.653934, 22.507553, 30.032179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826656, -0.187621, -0.530508,
		-0.547212, 0.048310, 0.835599,
		-0.131147, 0.981053, -0.142604,
		20.614590, 22.801868, 29.989397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.009773, 22.227236, 30.249979>,  <20.706394, 22.115131, 30.089220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.009773, 22.227236, 30.249979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.122807, 22.514832, 29.995985>,  <20.190626, 22.687389, 29.843590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.122807, 22.514832, 29.995985>,  <20.009773, 22.227236, 30.249979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.122807, 22.514832, 29.995985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789436, -0.201732, -0.579737,
		-0.544921, 0.665101, 0.510589,
		0.282582, 0.718988, -0.634983,
		20.207581, 22.730528, 29.805490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.469694, 22.776466, 30.180933>,  <20.009773, 22.227236, 30.249979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.469694, 22.776466, 30.180933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.678215, 22.815207, 29.841789>,  <19.803328, 22.838449, 29.638302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.678215, 22.815207, 29.841789>,  <19.469694, 22.776466, 30.180933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.678215, 22.815207, 29.841789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853308, 0.046824, -0.519301,
		-0.010593, 0.994197, 0.107051,
		0.521300, 0.096848, -0.847860,
		19.834604, 22.844261, 29.587431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.070568, 23.143299, 29.737055>,  <19.469694, 22.776466, 30.180933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.070568, 23.143299, 29.737055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.335369, 23.013367, 29.466873>,  <19.494249, 22.935408, 29.304764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.335369, 23.013367, 29.466873>,  <19.070568, 23.143299, 29.737055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.335369, 23.013367, 29.466873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725479, -0.051375, -0.686324,
		0.188237, 0.944376, -0.269668,
		0.662002, -0.324830, -0.675455,
		19.533970, 22.915918, 29.264236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889521, 23.437672, 29.083830>,  <19.070568, 23.143299, 29.737055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.889521, 23.437672, 29.083830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.113743, 23.122684, 28.981321>,  <19.248276, 22.933693, 28.919815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.113743, 23.122684, 28.981321>,  <18.889521, 23.437672, 29.083830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.113743, 23.122684, 28.981321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630820, -0.205548, -0.748208,
		0.536513, 0.581073, -0.611971,
		0.560553, -0.787467, -0.256273,
		19.281908, 22.886444, 28.904440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.021343, 23.490772, 28.350420>,  <18.889521, 23.437672, 29.083830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.021343, 23.490772, 28.350420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.138781, 23.110569, 28.391092>,  <19.209244, 22.882448, 28.415497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.138781, 23.110569, 28.391092>,  <19.021343, 23.490772, 28.350420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.138781, 23.110569, 28.391092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448602, -0.230927, -0.863382,
		0.844132, 0.207870, -0.494198,
		0.293595, -0.950507, 0.101682,
		19.226860, 22.825417, 28.421597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.169062, 23.243370, 27.616669>,  <19.021343, 23.490772, 28.350420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.169062, 23.243370, 27.616669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.112587, 22.926933, 27.854742>,  <19.078703, 22.737072, 27.997585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.112587, 22.926933, 27.854742>,  <19.169062, 23.243370, 27.616669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.112587, 22.926933, 27.854742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553818, -0.435215, -0.709841,
		0.820581, -0.429842, -0.376674,
		-0.141185, -0.791090, 0.595183,
		19.070230, 22.689606, 28.033297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.756697, 23.363159, 27.198915>,  <19.169062, 23.243370, 27.616669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.756697, 23.363159, 27.198915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.611628, 23.697496, 27.034069>,  <19.524586, 23.898098, 26.935162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.611628, 23.697496, 27.034069>,  <19.756697, 23.363159, 27.198915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.611628, 23.697496, 27.034069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293171, 0.522101, 0.800912,
		0.884601, 0.169648, -0.434396,
		-0.362672, 0.835841, -0.412115,
		19.502827, 23.948248, 26.910435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.323221, 23.843243, 27.234940>,  <19.756697, 23.363159, 27.198915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.323221, 23.843243, 27.234940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.966042, 24.022778, 27.221159>,  <19.751734, 24.130499, 27.212891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.966042, 24.022778, 27.221159>,  <20.323221, 23.843243, 27.234940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.966042, 24.022778, 27.221159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272190, 0.599305, 0.752825,
		0.358543, 0.662857, -0.657318,
		-0.892950, 0.448836, -0.034453,
		19.698156, 24.157429, 27.210823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.431677, 24.614117, 27.253351>,  <20.323221, 23.843243, 27.234940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.431677, 24.614117, 27.253351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.056105, 24.581781, 27.387144>,  <19.830761, 24.562380, 27.467421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.056105, 24.581781, 27.387144>,  <20.431677, 24.614117, 27.253351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.056105, 24.581781, 27.387144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235703, 0.557109, 0.796288,
		-0.250715, 0.826496, -0.504031,
		-0.938928, -0.080839, 0.334483,
		19.774426, 24.557529, 27.487490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.166721, 25.288849, 27.355158>,  <20.431677, 24.614117, 27.253351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.166721, 25.288849, 27.355158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.954191, 25.049171, 27.594711>,  <19.826674, 24.905365, 27.738443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.954191, 25.049171, 27.594711>,  <20.166721, 25.288849, 27.355158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.954191, 25.049171, 27.594711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205147, 0.594882, 0.777194,
		-0.821954, 0.535801, -0.193153,
		-0.531325, -0.599193, 0.598884,
		19.794794, 24.869413, 27.774376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.012327, 25.728472, 27.869938>,  <20.166721, 25.288849, 27.355158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.012327, 25.728472, 27.869938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.866028, 25.390129, 28.025248>,  <19.778248, 25.187124, 28.118433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.866028, 25.390129, 28.025248>,  <20.012327, 25.728472, 27.869938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.866028, 25.390129, 28.025248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001886, 0.417851, 0.908513,
		-0.930712, 0.331553, -0.154423,
		-0.365747, -0.845856, 0.388274,
		19.756304, 25.136372, 28.141729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.641985, 26.080618, 28.368019>,  <20.012327, 25.728472, 27.869938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.641985, 26.080618, 28.368019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.629370, 25.698689, 28.486219>,  <19.621799, 25.469532, 28.557140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.629370, 25.698689, 28.486219>,  <19.641985, 26.080618, 28.368019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.629370, 25.698689, 28.486219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110863, 0.297166, 0.948368,
		-0.993335, -0.002849, -0.115227,
		-0.031540, -0.954822, 0.295501,
		19.619907, 25.412243, 28.574869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.995174, 25.824743, 28.867741>,  <19.641985, 26.080618, 28.368019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.995174, 25.824743, 28.867741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.340588, 25.629677, 28.919104>,  <19.547836, 25.512636, 28.949921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.340588, 25.629677, 28.919104>,  <18.995174, 25.824743, 28.867741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.340588, 25.629677, 28.919104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082360, 0.387592, 0.918145,
		-0.497520, -0.782274, 0.374863,
		0.863534, -0.487668, 0.128407,
		19.599648, 25.483376, 28.957626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.924484, 25.462296, 29.450642>,  <18.995174, 25.824743, 28.867741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.924484, 25.462296, 29.450642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.319319, 25.502245, 29.400541>,  <19.556219, 25.526215, 29.370481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.319319, 25.502245, 29.400541>,  <18.924484, 25.462296, 29.450642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.319319, 25.502245, 29.400541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066041, 0.458645, 0.886162,
		0.145950, -0.882989, 0.446126,
		0.987085, 0.099873, -0.125253,
		19.615444, 25.532207, 29.362965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.256479, 25.120504, 30.032135>,  <18.924484, 25.462296, 29.450642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.256479, 25.120504, 30.032135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.522642, 25.377743, 29.880524>,  <19.682341, 25.532085, 29.789557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.522642, 25.377743, 29.880524>,  <19.256479, 25.120504, 30.032135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.522642, 25.377743, 29.880524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072194, 0.560811, 0.824790,
		0.742981, -0.521458, 0.419595,
		0.665407, 0.643096, -0.379026,
		19.722265, 25.570671, 29.766815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<16.384005, 18.436672, 15.792215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.664070, 18.709366, 15.707352>,  <16.832109, 18.872982, 15.656433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.664070, 18.709366, 15.707352>,  <16.384005, 18.436672, 15.792215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.664070, 18.709366, 15.707352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159069, 0.140737, 0.977185,
		0.696039, -0.717935, -0.009904,
		0.700162, 0.681735, -0.212160,
		16.874119, 18.913887, 15.643703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910225, 18.327169, 16.251602>,  <16.384005, 18.436672, 15.792215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.910225, 18.327169, 16.251602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.947155, 18.707703, 16.133995>,  <16.969313, 18.936022, 16.063431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.947155, 18.707703, 16.133995>,  <16.910225, 18.327169, 16.251602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.947155, 18.707703, 16.133995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039654, 0.291530, 0.955739,
		0.994939, -0.099898, -0.010809,
		0.092325, 0.951331, -0.294016,
		16.974852, 18.993101, 16.045790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.433022, 18.567091, 16.673805>,  <16.910225, 18.327169, 16.251602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.433022, 18.567091, 16.673805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.195606, 18.862246, 16.545282>,  <17.053156, 19.039337, 16.468168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.195606, 18.862246, 16.545282>,  <17.433022, 18.567091, 16.673805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.195606, 18.862246, 16.545282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115603, 0.316927, 0.941378,
		0.796459, 0.595889, -0.102807,
		-0.593539, 0.737884, -0.321306,
		17.017544, 19.083611, 16.448891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.534044, 19.168776, 17.278078>,  <17.433022, 18.567091, 16.673805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.534044, 19.168776, 17.278078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.210932, 19.265638, 17.063099>,  <17.017065, 19.323757, 16.934113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.210932, 19.265638, 17.063099>,  <17.534044, 19.168776, 17.278078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.210932, 19.265638, 17.063099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403348, 0.437826, 0.803504,
		0.429883, 0.865833, -0.255994,
		-0.807782, 0.242158, -0.537446,
		16.968597, 19.338285, 16.901865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635569, 19.824572, 17.330536>,  <17.534044, 19.168776, 17.278078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635569, 19.824572, 17.330536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.258011, 19.738646, 17.230200>,  <17.031477, 19.687090, 17.169998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.258011, 19.738646, 17.230200>,  <17.635569, 19.824572, 17.330536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.258011, 19.738646, 17.230200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329271, 0.553738, 0.764823,
		-0.025396, 0.804506, -0.593402,
		-0.943894, -0.214814, -0.250838,
		16.974842, 19.674202, 17.154949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.325302, 20.484945, 17.339291>,  <17.635569, 19.824572, 17.330536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.325302, 20.484945, 17.339291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.028826, 20.219091, 17.377014>,  <16.850941, 20.059578, 17.399649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.028826, 20.219091, 17.377014>,  <17.325302, 20.484945, 17.339291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.028826, 20.219091, 17.377014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291522, 0.445234, 0.846630,
		-0.604690, 0.600022, -0.523760,
		-0.741192, -0.664636, 0.094308,
		16.806469, 20.019701, 17.405306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.809912, 20.947094, 17.399771>,  <17.325302, 20.484945, 17.339291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.809912, 20.947094, 17.399771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.661831, 20.604635, 17.543970>,  <16.572983, 20.399160, 17.630489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.661831, 20.604635, 17.543970>,  <16.809912, 20.947094, 17.399771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.661831, 20.604635, 17.543970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311774, 0.480073, 0.819955,
		-0.875070, 0.191155, -0.444649,
		-0.370202, -0.856148, 0.360500,
		16.550770, 20.347792, 17.652121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.103249, 21.109554, 17.675386>,  <16.809912, 20.947094, 17.399771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.103249, 21.109554, 17.675386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.199741, 20.766045, 17.856190>,  <16.257637, 20.559938, 17.964672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.199741, 20.766045, 17.856190>,  <16.103249, 21.109554, 17.675386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.199741, 20.766045, 17.856190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371933, 0.348389, 0.860401,
		-0.896366, -0.375673, -0.235365,
		0.241231, -0.858775, 0.452010,
		16.272110, 20.508411, 17.991793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.653736, 21.164028, 18.231176>,  <16.103249, 21.109554, 17.675386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.653736, 21.164028, 18.231176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.882180, 20.852924, 18.336187>,  <16.019247, 20.666262, 18.399195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.882180, 20.852924, 18.336187>,  <15.653736, 21.164028, 18.231176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.882180, 20.852924, 18.336187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154439, 0.212299, 0.964924,
		-0.806215, -0.591622, 0.001129,
		0.571110, -0.777762, 0.262528,
		16.053513, 20.619596, 18.414946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.238924, 20.644676, 18.667551>,  <15.653736, 21.164028, 18.231176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.238924, 20.644676, 18.667551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.633339, 20.618586, 18.728838>,  <15.869987, 20.602930, 18.765610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.633339, 20.618586, 18.728838>,  <15.238924, 20.644676, 18.667551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.633339, 20.618586, 18.728838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136581, 0.209619, 0.968197,
		-0.095273, -0.975605, 0.197783,
		0.986037, -0.065229, 0.153220,
		15.929150, 20.599016, 18.774803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.262139, 20.431997, 19.344322>,  <15.238924, 20.644676, 18.667551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.262139, 20.431997, 19.344322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.621404, 20.585018, 19.257639>,  <15.836962, 20.676830, 19.205629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.621404, 20.585018, 19.257639>,  <15.262139, 20.431997, 19.344322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.621404, 20.585018, 19.257639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079086, 0.344276, 0.935532,
		0.432500, -0.857394, 0.278960,
		0.898159, 0.382556, -0.216707,
		15.890852, 20.699783, 19.192627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.672257, 20.294092, 19.952679>,  <15.262139, 20.431997, 19.344322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.672257, 20.294092, 19.952679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.846776, 20.603588, 19.768951>,  <15.951487, 20.789286, 19.658714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.846776, 20.603588, 19.768951>,  <15.672257, 20.294092, 19.952679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.846776, 20.603588, 19.768951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080286, 0.541904, 0.836597,
		0.896214, -0.328127, 0.298551,
		0.436296, 0.773739, -0.459318,
		15.977665, 20.835711, 19.631155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.133888, 19.931772, 20.391739>,  <15.672257, 20.294092, 19.952679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.133888, 19.931772, 20.391739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.868225, 19.887318, 20.687452>,  <15.708827, 19.860645, 20.864882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.868225, 19.887318, 20.687452>,  <16.133888, 19.931772, 20.391739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.868225, 19.887318, 20.687452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563739, -0.575039, -0.592898,
		0.491011, -0.810542, 0.319264,
		-0.664158, -0.111138, 0.739285,
		15.668978, 19.853977, 20.909237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.912808, 19.298389, 20.285130>,  <16.133888, 19.931772, 20.391739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.912808, 19.298389, 20.285130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.620872, 19.409569, 20.534956>,  <15.445711, 19.476276, 20.684851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.620872, 19.409569, 20.534956>,  <15.912808, 19.298389, 20.285130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.620872, 19.409569, 20.534956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657935, -0.533665, -0.531341,
		0.185624, -0.798717, 0.572360,
		-0.729839, 0.277946, 0.624565,
		15.401921, 19.492952, 20.722326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.622728, 18.726803, 20.520750>,  <15.912808, 19.298389, 20.285130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.622728, 18.726803, 20.520750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347876, 19.008377, 20.592663>,  <15.182964, 19.177322, 20.635811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347876, 19.008377, 20.592663>,  <15.622728, 18.726803, 20.520750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.347876, 19.008377, 20.592663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693982, -0.562693, -0.449184,
		-0.215035, -0.433414, 0.875164,
		-0.687131, 0.703938, 0.179783,
		15.141736, 19.219559, 20.646597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.112153, 18.420113, 20.878656>,  <15.622728, 18.726803, 20.520750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.112153, 18.420113, 20.878656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.927073, 18.731102, 20.708273>,  <14.816026, 18.917696, 20.606043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.927073, 18.731102, 20.708273>,  <15.112153, 18.420113, 20.878656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.927073, 18.731102, 20.708273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687455, -0.618052, -0.381337,
		-0.559746, 0.116384, 0.820451,
		-0.462700, 0.777475, -0.425961,
		14.788263, 18.964344, 20.580484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.433097, 18.179157, 20.752384>,  <15.112153, 18.420113, 20.878656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.433097, 18.179157, 20.752384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.417588, 18.513224, 20.532932>,  <14.408283, 18.713663, 20.401260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.417588, 18.513224, 20.532932>,  <14.433097, 18.179157, 20.752384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.417588, 18.513224, 20.532932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692929, -0.418058, -0.587432,
		-0.719962, 0.357387, 0.594919,
		-0.038770, 0.835166, -0.548630,
		14.405957, 18.763773, 20.368343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.813768, 18.551958, 20.925440>,  <14.433097, 18.179157, 20.752384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.813768, 18.551958, 20.925440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.918202, 18.663788, 20.555862>,  <13.980863, 18.730886, 20.334116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.918202, 18.663788, 20.555862>,  <13.813768, 18.551958, 20.925440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.918202, 18.663788, 20.555862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857912, -0.371566, -0.354859,
		-0.442516, 0.885311, 0.142842,
		0.261085, 0.279576, -0.923944,
		13.996528, 18.747662, 20.278679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.195055, 18.649841, 20.620165>,  <13.813768, 18.551958, 20.925440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.195055, 18.649841, 20.620165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.443944, 18.626698, 20.307886>,  <13.593278, 18.612810, 20.120518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.443944, 18.626698, 20.307886>,  <13.195055, 18.649841, 20.620165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.443944, 18.626698, 20.307886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735742, -0.383912, -0.557939,
		-0.267437, 0.921555, -0.281449,
		0.622223, -0.057860, -0.780699,
		13.630610, 18.609339, 20.073677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.822176, 19.125402, 20.046288>,  <13.195055, 18.649841, 20.620165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.822176, 19.125402, 20.046288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.075562, 18.869087, 19.872801>,  <13.227593, 18.715298, 19.768709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.075562, 18.869087, 19.872801>,  <12.822176, 19.125402, 20.046288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.075562, 18.869087, 19.872801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675919, -0.185415, -0.713270,
		0.376638, 0.744991, -0.550575,
		0.633465, -0.640789, -0.433719,
		13.265601, 18.676851, 19.742685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.809868, 19.282873, 19.392740>,  <12.822176, 19.125402, 20.046288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.809868, 19.282873, 19.392740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.964311, 18.914688, 19.368498>,  <13.056976, 18.693777, 19.353952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.964311, 18.914688, 19.368498>,  <12.809868, 19.282873, 19.392740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.964311, 18.914688, 19.368498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751745, -0.275898, -0.598966,
		0.534603, 0.276826, -0.798478,
		0.386108, -0.920461, -0.060606,
		13.080143, 18.638550, 19.350315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.709405, 19.077919, 18.775311>,  <12.809868, 19.282873, 19.392740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.709405, 19.077919, 18.775311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.748511, 18.739460, 18.984871>,  <12.771975, 18.536385, 19.110607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.748511, 18.739460, 18.984871>,  <12.709405, 19.077919, 18.775311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.748511, 18.739460, 18.984871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693995, -0.435276, -0.573504,
		0.713312, -0.307516, -0.629778,
		0.097765, -0.846149, 0.523902,
		12.777841, 18.485615, 19.142042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.938709, 18.543091, 18.401030>,  <12.709405, 19.077919, 18.775311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.938709, 18.543091, 18.401030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.752533, 18.354456, 18.700623>,  <12.640827, 18.241276, 18.880379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.752533, 18.354456, 18.700623>,  <12.938709, 18.543091, 18.401030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.752533, 18.354456, 18.700623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623585, -0.425803, -0.655617,
		0.628098, -0.772204, -0.095887,
		-0.465441, -0.471586, 0.748981,
		12.612901, 18.212980, 18.925316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.785328, 17.888821, 18.018673>,  <12.938709, 18.543091, 18.401030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.785328, 17.888821, 18.018673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.559697, 17.884640, 18.348936>,  <12.424318, 17.882132, 18.547094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.559697, 17.884640, 18.348936>,  <12.785328, 17.888821, 18.018673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.559697, 17.884640, 18.348936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658194, -0.598090, -0.457241,
		0.498596, -0.801361, 0.330488,
		-0.564076, -0.010453, 0.825656,
		12.390474, 17.881504, 18.596634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.831883, 17.174480, 18.108355>,  <12.785328, 17.888821, 18.018673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.831883, 17.174480, 18.108355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.555894, 17.375784, 18.316458>,  <12.390300, 17.496567, 18.441319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.555894, 17.375784, 18.316458>,  <12.831883, 17.174480, 18.108355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.555894, 17.375784, 18.316458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713262, -0.350312, -0.607074,
		-0.123264, -0.789944, 0.600662,
		-0.689974, 0.503259, 0.520256,
		12.348902, 17.526762, 18.472534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.338978, 16.577703, 18.383415>,  <12.831883, 17.174480, 18.108355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.338978, 16.577703, 18.383415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.184957, 16.946758, 18.374672>,  <12.092544, 17.168190, 18.369427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.184957, 16.946758, 18.374672>,  <12.338978, 16.577703, 18.383415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.184957, 16.946758, 18.374672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864696, -0.368946, -0.340852,
		-0.322545, -0.112348, 0.939863,
		-0.385053, 0.922636, -0.021855,
		12.069441, 17.223549, 18.368114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.854099, 16.618473, 19.029434>,  <12.338978, 16.577703, 18.383415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.854099, 16.618473, 19.029434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.924972, 16.238449, 19.132193>,  <12.967495, 16.010435, 19.193848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.924972, 16.238449, 19.132193>,  <12.854099, 16.618473, 19.029434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.924972, 16.238449, 19.132193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731415, 0.301762, 0.611533,
		-0.658513, 0.079545, 0.748354,
		0.177181, -0.950059, 0.256894,
		12.978126, 15.953431, 19.209261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.959177, 16.563108, 19.789906>,  <12.854099, 16.618473, 19.029434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.959177, 16.563108, 19.789906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.194695, 16.300495, 19.601318>,  <13.336005, 16.142927, 19.488165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.194695, 16.300495, 19.601318>,  <12.959177, 16.563108, 19.789906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.194695, 16.300495, 19.601318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772928, 0.286707, 0.566022,
		-0.236440, -0.697682, 0.676266,
		0.588794, -0.656535, -0.471469,
		13.371333, 16.103535, 19.459877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.308932, 15.917123, 20.200230>,  <12.959177, 16.563108, 19.789906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.308932, 15.917123, 20.200230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.536355, 16.036396, 19.893549>,  <13.672809, 16.107960, 19.709541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.536355, 16.036396, 19.893549>,  <13.308932, 15.917123, 20.200230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.536355, 16.036396, 19.893549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747047, 0.203123, 0.632978,
		0.344477, -0.932646, -0.107270,
		0.568556, 0.298182, -0.766702,
		13.706922, 16.125851, 19.663538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.789195, 15.377863, 20.189756>,  <13.308932, 15.917123, 20.200230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.789195, 15.377863, 20.189756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.915176, 15.719150, 20.023466>,  <13.990766, 15.923922, 19.923693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.915176, 15.719150, 20.023466>,  <13.789195, 15.377863, 20.189756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.915176, 15.719150, 20.023466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794469, 0.002635, 0.607299,
		0.519253, -0.521551, -0.677024,
		0.314953, 0.853216, -0.415725,
		14.009663, 15.975115, 19.898748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.505007, 15.155910, 20.118227>,  <13.789195, 15.377863, 20.189756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.505007, 15.155910, 20.118227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.467318, 15.552227, 20.079342>,  <14.444704, 15.790017, 20.056011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.467318, 15.552227, 20.079342>,  <14.505007, 15.155910, 20.118227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.467318, 15.552227, 20.079342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833707, 0.131897, 0.536224,
		0.544109, -0.030522, -0.838459,
		-0.094223, 0.990793, -0.097213,
		14.439051, 15.849465, 20.050179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.207395, 15.468805, 19.915846>,  <14.505007, 15.155910, 20.118227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.207395, 15.468805, 19.915846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.990788, 15.758631, 20.086384>,  <14.860825, 15.932526, 20.188707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.990788, 15.758631, 20.086384>,  <15.207395, 15.468805, 19.915846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.990788, 15.758631, 20.086384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711284, 0.124531, 0.691786,
		0.448150, 0.677864, -0.582805,
		-0.541514, 0.724563, 0.426345,
		14.828334, 15.976000, 20.214287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.747519, 16.005655, 20.231546>,  <15.207395, 15.468805, 19.915846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.747519, 16.005655, 20.231546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.403038, 16.087788, 20.417522>,  <15.196349, 16.137066, 20.529108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.403038, 16.087788, 20.417522>,  <15.747519, 16.005655, 20.231546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.403038, 16.087788, 20.417522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508059, 0.322014, 0.798863,
		0.014312, 0.924201, -0.381639,
		-0.861203, 0.205329, 0.464940,
		15.144677, 16.149385, 20.557005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.921406, 16.520166, 20.574026>,  <15.747519, 16.005655, 20.231546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.921406, 16.520166, 20.574026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.584929, 16.415627, 20.763382>,  <15.383043, 16.352903, 20.876995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.584929, 16.415627, 20.763382>,  <15.921406, 16.520166, 20.574026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.584929, 16.415627, 20.763382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366820, 0.367411, 0.854665,
		-0.397293, 0.892584, -0.213195,
		-0.841191, -0.261348, 0.473388,
		15.332572, 16.337223, 20.905397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.904233, 17.037004, 21.008352>,  <15.921406, 16.520166, 20.574026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.904233, 17.037004, 21.008352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.652864, 16.762043, 21.153986>,  <15.502042, 16.597067, 21.241367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.652864, 16.762043, 21.153986>,  <15.904233, 17.037004, 21.008352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.652864, 16.762043, 21.153986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354801, 0.163229, 0.920582,
		-0.692242, 0.707695, 0.141315,
		-0.628425, -0.687404, 0.364085,
		15.464336, 16.555822, 21.263212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.591376, 17.396908, 21.550367>,  <15.904233, 17.037004, 21.008352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.591376, 17.396908, 21.550367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.563376, 16.999941, 21.590780>,  <15.546576, 16.761761, 21.615028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.563376, 16.999941, 21.590780>,  <15.591376, 17.396908, 21.550367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.563376, 16.999941, 21.590780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389490, 0.066050, 0.918659,
		-0.918367, 0.103657, 0.381913,
		-0.070000, -0.992418, 0.101031,
		15.542377, 16.702215, 21.621090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.423475, 17.271505, 22.251831>,  <15.591376, 17.396908, 21.550367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.423475, 17.271505, 22.251831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.575488, 16.917240, 22.145119>,  <15.666696, 16.704681, 22.081091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.575488, 16.917240, 22.145119>,  <15.423475, 17.271505, 22.251831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.575488, 16.917240, 22.145119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475614, -0.060266, 0.877587,
		-0.793326, -0.460397, 0.398332,
		0.380033, -0.885665, -0.266782,
		15.689498, 16.651541, 22.065084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.286395, 16.907370, 22.856220>,  <15.423475, 17.271505, 22.251831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.286395, 16.907370, 22.856220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.567183, 16.737757, 22.627335>,  <15.735657, 16.635988, 22.490004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.567183, 16.737757, 22.627335>,  <15.286395, 16.907370, 22.856220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.567183, 16.737757, 22.627335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575850, -0.134848, 0.806358,
		-0.419084, -0.895552, 0.149520,
		0.701972, -0.424033, -0.572216,
		15.777775, 16.610546, 22.455669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.455146, 16.262836, 23.309628>,  <15.286395, 16.907370, 22.856220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.455146, 16.262836, 23.309628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.743979, 16.358967, 23.050140>,  <15.917279, 16.416645, 22.894447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.743979, 16.358967, 23.050140>,  <15.455146, 16.262836, 23.309628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.743979, 16.358967, 23.050140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658042, 0.050767, 0.751268,
		0.213484, -0.969363, -0.121488,
		0.722084, 0.240328, -0.648720,
		15.960605, 16.431065, 22.855524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.054371, 16.044670, 23.607637>,  <15.455146, 16.262836, 23.309628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.054371, 16.044670, 23.607637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.189566, 16.308023, 23.338625>,  <16.270683, 16.466036, 23.177217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.189566, 16.308023, 23.338625>,  <16.054371, 16.044670, 23.607637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.189566, 16.308023, 23.338625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779382, 0.204765, 0.592145,
		0.527569, -0.724294, -0.443924,
		0.337987, 0.658384, -0.672530,
		16.290962, 16.505539, 23.136866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.730120, 15.882080, 23.436613>,  <16.054371, 16.044670, 23.607637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.730120, 15.882080, 23.436613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722498, 16.269276, 23.336506>,  <16.717926, 16.501593, 23.276442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722498, 16.269276, 23.336506>,  <16.730120, 15.882080, 23.436613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.722498, 16.269276, 23.336506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840105, 0.151217, 0.520919,
		0.542089, -0.200327, -0.816094,
		-0.019053, 0.967989, -0.250269,
		16.716782, 16.559671, 23.261425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.366926, 15.966703, 23.281445>,  <16.730120, 15.882080, 23.436613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.366926, 15.966703, 23.281445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.265848, 16.349056, 23.341356>,  <17.205200, 16.578468, 23.377304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.265848, 16.349056, 23.341356>,  <17.366926, 15.966703, 23.281445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.265848, 16.349056, 23.341356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775876, 0.107706, 0.621623,
		0.578066, 0.273294, -0.768863,
		-0.252697, 0.955882, 0.149781,
		17.190039, 16.635820, 23.386290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.950056, 16.460608, 22.991879>,  <17.366926, 15.966703, 23.281445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.950056, 16.460608, 22.991879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.740463, 16.646172, 23.277599>,  <17.614708, 16.757509, 23.449032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.740463, 16.646172, 23.277599>,  <17.950056, 16.460608, 22.991879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.740463, 16.646172, 23.277599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820166, 0.048631, 0.570055,
		0.229717, 0.884547, -0.405964,
		-0.523983, 0.463910, 0.714304,
		17.583269, 16.785345, 23.491890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.420412, 16.918024, 23.502254>,  <17.950056, 16.460608, 22.991879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.420412, 16.918024, 23.502254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.087591, 16.898851, 23.723303>,  <17.887897, 16.887348, 23.855932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.087591, 16.898851, 23.723303>,  <18.420412, 16.918024, 23.502254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.087591, 16.898851, 23.723303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551964, 0.027192, 0.833425,
		-0.054975, 0.998480, 0.003832,
		-0.832054, -0.047932, 0.552620,
		17.837975, 16.884472, 23.889090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.297497, 17.520428, 23.839750>,  <18.420412, 16.918024, 23.502254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.297497, 17.520428, 23.839750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.124117, 17.228401, 24.051079>,  <18.020090, 17.053185, 24.177876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.124117, 17.228401, 24.051079>,  <18.297497, 17.520428, 23.839750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.124117, 17.228401, 24.051079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472189, 0.315349, 0.823160,
		-0.767568, 0.606266, 0.208042,
		-0.433448, -0.730066, 0.528324,
		17.994083, 17.009380, 24.209576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.072477, 17.840563, 24.416447>,  <18.297497, 17.520428, 23.839750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.072477, 17.840563, 24.416447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.082600, 17.461557, 24.543932>,  <18.088673, 17.234154, 24.620422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.082600, 17.461557, 24.543932>,  <18.072477, 17.840563, 24.416447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.082600, 17.461557, 24.543932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324788, 0.309311, 0.893778,
		-0.945448, 0.080897, 0.315568,
		0.025304, -0.947514, 0.318712,
		18.090191, 17.177303, 24.639545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.766800, 17.838718, 25.090857>,  <18.072477, 17.840563, 24.416447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.766800, 17.838718, 25.090857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.980247, 17.500429, 25.090664>,  <18.108316, 17.297455, 25.090548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.980247, 17.500429, 25.090664>,  <17.766800, 17.838718, 25.090857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.980247, 17.500429, 25.090664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348872, 0.219606, 0.911077,
		-0.770415, -0.486336, 0.412235,
		0.533619, -0.845725, -0.000481,
		18.140333, 17.246712, 25.090519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.768658, 17.591103, 25.658459>,  <17.766800, 17.838718, 25.090857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.768658, 17.591103, 25.658459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.094879, 17.398361, 25.530279>,  <18.290611, 17.282717, 25.453371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.094879, 17.398361, 25.530279>,  <17.768658, 17.591103, 25.658459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.094879, 17.398361, 25.530279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524753, 0.382372, 0.760543,
		-0.243941, -0.788421, 0.564700,
		0.815554, -0.481855, -0.320450,
		18.339544, 17.253805, 25.434145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.021828, 17.248909, 26.279627>,  <17.768658, 17.591103, 25.658459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.021828, 17.248909, 26.279627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.314619, 17.281359, 26.009035>,  <18.490294, 17.300829, 25.846680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.314619, 17.281359, 26.009035>,  <18.021828, 17.248909, 26.279627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.314619, 17.281359, 26.009035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581462, 0.443124, 0.682307,
		0.355115, -0.892782, 0.277188,
		0.731980, 0.081123, -0.676479,
		18.534212, 17.305696, 25.806091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.614567, 16.888561, 26.617720>,  <18.021828, 17.248909, 26.279627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.614567, 16.888561, 26.617720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.753611, 17.136541, 26.336344>,  <18.837036, 17.285330, 26.167519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.753611, 17.136541, 26.336344>,  <18.614567, 16.888561, 26.617720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.753611, 17.136541, 26.336344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646942, 0.384464, 0.658523,
		0.678701, -0.683993, -0.267431,
		0.347608, 0.619952, -0.703440,
		18.857893, 17.322527, 26.125311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.392542, 16.986034, 26.794033>,  <18.614567, 16.888561, 26.617720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.392542, 16.986034, 26.794033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.290432, 17.286407, 26.550415>,  <19.229166, 17.466631, 26.404243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.290432, 17.286407, 26.550415>,  <19.392542, 16.986034, 26.794033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.290432, 17.286407, 26.550415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634380, 0.605455, 0.480610,
		0.729655, -0.263679, -0.630933,
		-0.255275, 0.750931, -0.609046,
		19.213850, 17.511686, 26.367701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.100046, 17.326269, 26.698885>,  <19.392542, 16.986034, 26.794033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.100046, 17.326269, 26.698885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.821325, 17.584154, 26.573147>,  <19.654093, 17.738884, 26.497704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.821325, 17.584154, 26.573147>,  <20.100046, 17.326269, 26.698885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.821325, 17.584154, 26.573147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513061, 0.754270, 0.409689,
		0.501231, 0.124195, -0.856354,
		-0.696804, 0.644711, -0.314344,
		19.612284, 17.777567, 26.478844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.440926, 17.809555, 26.532557>,  <20.100046, 17.326269, 26.698885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.440926, 17.809555, 26.532557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.083384, 17.987852, 26.551886>,  <19.868858, 18.094830, 26.563482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.083384, 17.987852, 26.551886>,  <20.440926, 17.809555, 26.532557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.083384, 17.987852, 26.551886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420133, 0.795086, 0.437409,
		0.156552, 0.411282, -0.897963,
		-0.893857, 0.445742, 0.048321,
		19.815228, 18.121574, 26.566381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.491329, 18.437628, 26.112608>,  <20.440926, 17.809555, 26.532557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.491329, 18.437628, 26.112608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.209942, 18.465803, 26.395498>,  <20.041109, 18.482708, 26.565233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.209942, 18.465803, 26.395498>,  <20.491329, 18.437628, 26.112608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.209942, 18.465803, 26.395498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422310, 0.841786, 0.336230,
		-0.571650, 0.535196, -0.621917,
		-0.703470, 0.070436, 0.707226,
		19.998901, 18.486935, 26.607666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
