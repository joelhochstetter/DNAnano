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
	<4.201853, 2.707405, -0.002063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.002220, 3.025345, -0.140123>,  <3.882440, 3.216109, -0.222959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.002220, 3.025345, -0.140123>,  <4.201853, 2.707405, -0.002063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.002220, 3.025345, -0.140123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866405, -0.450312, 0.215781,
		0.016088, 0.406732, 0.913406,
		-0.499083, 0.794851, -0.345150,
		3.852495, 3.263800, -0.243668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.623933, 2.739583, 0.393000>,  <4.201853, 2.707405, -0.002063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.623933, 2.739583, 0.393000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.515800, 2.903481, 0.044510>,  <3.450921, 3.001819, -0.164584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.515800, 2.903481, 0.044510>,  <3.623933, 2.739583, 0.393000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.515800, 2.903481, 0.044510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953048, -0.242146, 0.181836,
		-0.136457, 0.879474, 0.455966,
		-0.270330, 0.409745, -0.871224,
		3.434701, 3.026404, -0.216857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.775651, 2.073596, 0.777352>,  <3.623933, 2.739583, 0.393000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.775651, 2.073596, 0.777352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.597122, 2.045441, 1.134192>,  <3.490005, 2.028548, 1.348296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.597122, 2.045441, 1.134192>,  <3.775651, 2.073596, 0.777352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.597122, 2.045441, 1.134192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136982, -0.979779, -0.145838,
		0.884326, -0.187292, 0.427655,
		-0.446321, -0.070387, 0.892100,
		3.463226, 2.024324, 1.401822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.104777, 1.650449, 1.254324>,  <3.775651, 2.073596, 0.777352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.104777, 1.650449, 1.254324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.710144, 1.648811, 1.319610>,  <3.473364, 1.647829, 1.358782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.710144, 1.648811, 1.319610>,  <4.104777, 1.650449, 1.254324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.710144, 1.648811, 1.319610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002030, -0.999301, -0.037334,
		0.163255, -0.037164, 0.985884,
		-0.986582, -0.004094, 0.163216,
		3.414170, 1.647583, 1.368575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.011981, 1.166199, 1.808571>,  <4.104777, 1.650449, 1.254324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.011981, 1.166199, 1.808571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.648293, 1.177856, 1.642453>,  <3.430080, 1.184851, 1.542782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.648293, 1.177856, 1.642453>,  <4.011981, 1.166199, 1.808571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.648293, 1.177856, 1.642453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080157, -0.991137, 0.105938,
		-0.408527, 0.129610, 0.903497,
		-0.909220, 0.029143, -0.415295,
		3.375527, 1.186599, 1.517864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.684319, 0.597126, 2.096835>,  <4.011981, 1.166199, 1.808571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.684319, 0.597126, 2.096835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.446487, 0.697075, 1.791145>,  <3.303789, 0.757044, 1.607731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.446487, 0.697075, 1.791145>,  <3.684319, 0.597126, 2.096835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.446487, 0.697075, 1.791145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239059, -0.962440, -0.128689,
		-0.767677, 0.106179, 0.631980,
		-0.594578, 0.249872, -0.764226,
		3.268114, 0.772036, 1.561877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.024099, 0.333368, 2.232224>,  <3.684319, 0.597126, 2.096835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.024099, 0.333368, 2.232224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.081451, 0.356689, 1.837044>,  <3.115863, 0.370682, 1.599937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.081451, 0.356689, 1.837044>,  <3.024099, 0.333368, 2.232224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.081451, 0.356689, 1.837044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254586, -0.962495, -0.093750,
		-0.956362, 0.264960, -0.123159,
		0.143380, 0.058304, -0.987949,
		3.124465, 0.374181, 1.540660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.400319, 0.006096, 1.928656>,  <3.024099, 0.333368, 2.232224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.400319, 0.006096, 1.928656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.693855, -0.008423, 1.657316>,  <2.869977, -0.017134, 1.494512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.693855, -0.008423, 1.657316>,  <2.400319, 0.006096, 1.928656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.693855, -0.008423, 1.657316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210264, -0.961671, -0.176007,
		-0.645961, 0.271794, -0.713346,
		0.733842, -0.036297, -0.678350,
		2.914008, -0.019312, 1.453811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.812570, -1.211212, 1.489449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.053055, -1.140152, 1.177813>,  <3.197346, -1.097516, 0.990831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.053055, -1.140152, 1.177813>,  <2.812570, -1.211212, 1.489449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.053055, -1.140152, 1.177813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145132, 0.983035, 0.112157,
		0.785799, 0.045641, 0.616796,
		0.601213, 0.177650, -0.779092,
		3.233419, -1.086857, 0.944085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.295502, -0.641234, 1.609598>,  <2.812570, -1.211212, 1.489449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.295502, -0.641234, 1.609598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.248085, -0.657043, 1.212733>,  <3.219635, -0.666529, 0.974614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.248085, -0.657043, 1.212733>,  <3.295502, -0.641234, 1.609598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.248085, -0.657043, 1.212733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082075, 0.996178, -0.029876,
		0.989551, 0.077891, -0.121333,
		-0.118542, -0.039523, -0.992162,
		3.212522, -0.668900, 0.915084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.811451, -0.320299, 1.235273>,  <3.295502, -0.641234, 1.609598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.811451, -0.320299, 1.235273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.463280, -0.302406, 1.039170>,  <3.254377, -0.291671, 0.921509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.463280, -0.302406, 1.039170>,  <3.811451, -0.320299, 1.235273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.463280, -0.302406, 1.039170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003317, 0.995308, 0.096703,
		0.492282, 0.085799, -0.866197,
		-0.870429, 0.044732, -0.490257,
		3.202151, -0.288987, 0.892093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.828867, 0.258787, 0.838288>,  <3.811451, -0.320299, 1.235273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.828867, 0.258787, 0.838288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.436638, 0.184059, 0.862208>,  <3.201301, 0.139222, 0.876561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.436638, 0.184059, 0.862208>,  <3.828867, 0.258787, 0.838288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.436638, 0.184059, 0.862208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172158, 0.965753, 0.194122,
		-0.094020, 0.180055, -0.979153,
		-0.980572, -0.186820, 0.059802,
		3.142466, 0.128013, 0.880149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.310549, 0.649966, 0.325436>,  <3.828867, 0.258787, 0.838288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.310549, 0.649966, 0.325436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.156090, 0.558952, 0.683009>,  <3.063414, 0.504344, 0.897553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.156090, 0.558952, 0.683009>,  <3.310549, 0.649966, 0.325436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.156090, 0.558952, 0.683009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057895, 0.973168, 0.222694,
		-0.920618, 0.034238, -0.388960,
		-0.386148, -0.227535, 0.893934,
		3.040245, 0.490692, 0.951189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.591143, 1.077977, 0.454192>,  <3.310549, 0.649966, 0.325436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.591143, 1.077977, 0.454192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.770073, 0.977127, 0.797431>,  <2.877431, 0.916617, 1.003375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.770073, 0.977127, 0.797431>,  <2.591143, 1.077977, 0.454192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.770073, 0.977127, 0.797431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139732, 0.927960, 0.345494,
		-0.883389, -0.274452, 0.379870,
		0.447325, -0.252126, 0.858098,
		2.904270, 0.901489, 1.054860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.164999, 1.303635, 1.080589>,  <2.591143, 1.077977, 0.454192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.164999, 1.303635, 1.080589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.550392, 1.277374, 1.184425>,  <2.781628, 1.261618, 1.246727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.550392, 1.277374, 1.184425>,  <2.164999, 1.303635, 1.080589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.550392, 1.277374, 1.184425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029912, 0.937020, 0.347992,
		-0.266089, -0.343049, 0.900841,
		0.963484, -0.065651, 0.259592,
		2.839437, 1.257679, 1.262303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.177750, 1.730304, 1.599635>,  <2.164999, 1.303635, 1.080589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.177750, 1.730304, 1.599635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.567604, 1.707932, 1.512955>,  <2.801516, 1.694508, 1.460947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.567604, 1.707932, 1.512955>,  <2.177750, 1.730304, 1.599635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.567604, 1.707932, 1.512955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100554, 0.974472, 0.200734,
		0.199941, -0.217432, 0.955378,
		0.974635, -0.055932, -0.216700,
		2.859994, 1.691152, 1.447945>
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
