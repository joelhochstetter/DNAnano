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
	<2.378539, 5.750911, 4.675558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.153616, 5.764629, 5.006044>,  <2.018662, 5.772861, 5.204336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.153616, 5.764629, 5.006044>,  <2.378539, 5.750911, 4.675558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.153616, 5.764629, 5.006044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758174, -0.420258, -0.498554,
		0.330125, -0.906756, 0.262317,
		-0.562307, 0.034296, 0.826217,
		1.984924, 5.774918, 5.253910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.967907, 6.038795, 4.415312>,  <2.378539, 5.750911, 4.675558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.967907, 6.038795, 4.415312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.143635, 5.760670, 4.642833>,  <3.249072, 5.593794, 4.779345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.143635, 5.760670, 4.642833>,  <2.967907, 6.038795, 4.415312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.143635, 5.760670, 4.642833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286118, -0.708504, -0.645103,
		0.851548, 0.120662, -0.510202,
		0.439320, -0.695315, 0.568801,
		3.275431, 5.552075, 4.813473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.336680, 5.576002, 4.020819>,  <2.967907, 6.038795, 4.415312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.336680, 5.576002, 4.020819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.255718, 5.369560, 4.353726>,  <3.207141, 5.245696, 4.553471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.255718, 5.369560, 4.353726>,  <3.336680, 5.576002, 4.020819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.255718, 5.369560, 4.353726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355907, -0.752980, -0.553490,
		0.912339, -0.408239, -0.031278,
		-0.202404, -0.516103, 0.832268,
		3.194997, 5.214729, 4.603407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.321513, 4.896891, 3.786228>,  <3.336680, 5.576002, 4.020819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.321513, 4.896891, 3.786228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.129305, 4.878803, 4.136555>,  <3.013980, 4.867950, 4.346751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.129305, 4.878803, 4.136555>,  <3.321513, 4.896891, 3.786228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.129305, 4.878803, 4.136555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536656, -0.774695, -0.334437,
		0.693614, -0.630716, 0.347990,
		-0.480521, -0.045220, 0.875817,
		2.985149, 4.865237, 4.399300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.281471, 4.299786, 4.197490>,  <3.321513, 4.896891, 3.786228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.281471, 4.299786, 4.197490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.938120, 4.498604, 4.248301>,  <2.732109, 4.617894, 4.278787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.938120, 4.498604, 4.248301>,  <3.281471, 4.299786, 4.197490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.938120, 4.498604, 4.248301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505970, -0.779316, -0.369678,
		-0.084753, -0.381595, 0.920436,
		-0.858377, 0.497044, 0.127026,
		2.680607, 4.647717, 4.286408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.784919, 3.810698, 4.621397>,  <3.281471, 4.299786, 4.197490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.784919, 3.810698, 4.621397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.605244, 4.073135, 4.378820>,  <2.497438, 4.230598, 4.233275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.605244, 4.073135, 4.378820>,  <2.784919, 3.810698, 4.621397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.605244, 4.073135, 4.378820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550249, -0.737919, -0.390770,
		-0.703884, 0.158161, 0.692482,
		-0.449191, 0.656095, -0.606438,
		2.470487, 4.269964, 4.196888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.941230, 3.768382, 4.633785>,  <2.784919, 3.810698, 4.621397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.941230, 3.768382, 4.633785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.168549, 3.838367, 4.312182>,  <2.304940, 3.880358, 4.119221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.168549, 3.838367, 4.312182>,  <1.941230, 3.768382, 4.633785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.168549, 3.838367, 4.312182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421601, -0.777202, -0.467130,
		-0.706606, 0.604439, -0.367917,
		0.568297, 0.174963, -0.804007,
		2.339038, 3.890856, 4.070981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.508284, 3.730055, 4.036955>,  <1.941230, 3.768382, 4.633785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.508284, 3.730055, 4.036955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.881460, 3.693836, 3.897572>,  <2.105366, 3.672105, 3.813941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.881460, 3.693836, 3.897572>,  <1.508284, 3.730055, 4.036955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.881460, 3.693836, 3.897572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309628, -0.695672, -0.648205,
		-0.183720, 0.712630, -0.677057,
		0.932940, -0.090547, -0.348459,
		2.161342, 3.666672, 3.793034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.877425, 3.872122, 0.559561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.521059, 3.981861, 0.414783>,  <2.307240, 4.047705, 0.327917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.521059, 3.981861, 0.414783>,  <2.877425, 3.872122, 0.559561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.521059, 3.981861, 0.414783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011131, 0.783506, 0.621284,
		0.454033, 0.557540, -0.694984,
		-0.890915, 0.274348, -0.361944,
		2.253784, 4.064166, 0.306200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.801453, 4.606861, 0.426980>,  <2.877425, 3.872122, 0.559561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.801453, 4.606861, 0.426980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.468708, 4.419514, 0.546067>,  <2.269061, 4.307105, 0.617520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.468708, 4.419514, 0.546067>,  <2.801453, 4.606861, 0.426980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.468708, 4.419514, 0.546067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062163, 0.611704, 0.788640,
		-0.551490, 0.637533, -0.537969,
		-0.831862, -0.468369, 0.297718,
		2.219149, 4.279003, 0.635383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.346149, 5.181377, 0.661753>,  <2.801453, 4.606861, 0.426980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.346149, 5.181377, 0.661753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.294622, 4.839977, 0.863721>,  <2.263706, 4.635137, 0.984901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.294622, 4.839977, 0.863721>,  <2.346149, 5.181377, 0.661753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.294622, 4.839977, 0.863721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133318, 0.489634, 0.861676,
		-0.982666, 0.178313, 0.050713,
		-0.128817, -0.853501, 0.504919,
		2.255977, 4.583927, 1.015197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.716596, 4.999138, 1.071549>,  <2.346149, 5.181377, 0.661753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.716596, 4.999138, 1.071549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.056902, 4.856197, 1.225691>,  <2.261086, 4.770433, 1.318176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.056902, 4.856197, 1.225691>,  <1.716596, 4.999138, 1.071549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.056902, 4.856197, 1.225691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103937, 0.604357, 0.789905,
		-0.515166, -0.712076, 0.477024,
		0.850765, -0.357352, 0.385355,
		2.312131, 4.748992, 1.341297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.609610, 4.709787, 1.737596>,  <1.716596, 4.999138, 1.071549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.609610, 4.709787, 1.737596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.991590, 4.828320, 1.731169>,  <2.220779, 4.899439, 1.727312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.991590, 4.828320, 1.731169>,  <1.609610, 4.709787, 1.737596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.991590, 4.828320, 1.731169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177045, 0.612325, 0.770528,
		0.238169, -0.732972, 0.637203,
		0.954951, 0.296330, -0.016068,
		2.278076, 4.917219, 1.726348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.927471, 4.720974, 2.460592>,  <1.609610, 4.709787, 1.737596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.927471, 4.720974, 2.460592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.123531, 4.983135, 2.230741>,  <2.241168, 5.140432, 2.092830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.123531, 4.983135, 2.230741>,  <1.927471, 4.720974, 2.460592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.123531, 4.983135, 2.230741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052375, 0.680206, 0.731147,
		0.870063, -0.328277, 0.367730,
		0.490151, 0.655403, -0.574628,
		2.270577, 5.179756, 2.058352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.028471, 4.519837, 3.123617>,  <1.927471, 4.720974, 2.460592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.028471, 4.519837, 3.123617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.829174, 4.813896, 3.307493>,  <1.709596, 4.990331, 3.417819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.829174, 4.813896, 3.307493>,  <2.028471, 4.519837, 3.123617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.829174, 4.813896, 3.307493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606200, 0.083700, -0.790896,
		-0.619901, -0.672721, 0.403943,
		-0.498242, 0.735147, 0.459689,
		1.679701, 5.034440, 3.445400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.177343, 4.486971, 3.222282>,  <2.028471, 4.519837, 3.123617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.177343, 4.486971, 3.222282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.308784, 4.864368, 3.205125>,  <1.387650, 5.090807, 3.194831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.308784, 4.864368, 3.205125>,  <1.177343, 4.486971, 3.222282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.308784, 4.864368, 3.205125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619512, 0.181042, -0.763825,
		-0.712898, 0.277569, 0.643997,
		0.328605, 0.943493, -0.042893,
		1.407366, 5.147417, 3.192257>
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
