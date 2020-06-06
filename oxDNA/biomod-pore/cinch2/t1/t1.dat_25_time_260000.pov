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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.979126, 32.268326, 22.907337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161556, 32.093304, 22.597359>,  <43.271015, 31.988289, 22.411371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161556, 32.093304, 22.597359>,  <42.979126, 32.268326, 22.907337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161556, 32.093304, 22.597359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756730, -0.648944, -0.078938,
		-0.468356, 0.622426, -0.627080,
		0.456073, -0.437559, -0.774945,
		43.298378, 31.962036, 22.364876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454975, 32.130478, 22.476648>,  <42.979126, 32.268326, 22.907337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454975, 32.130478, 22.476648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743179, 31.866055, 22.392872>,  <42.916103, 31.707401, 22.342606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743179, 31.866055, 22.392872>,  <42.454975, 32.130478, 22.476648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743179, 31.866055, 22.392872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692671, -0.700339, -0.172431,
		-0.032693, 0.269312, -0.962498,
		0.720512, -0.661057, -0.209441,
		42.959332, 31.667738, 22.330040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349926, 31.774473, 21.798824>,  <42.454975, 32.130478, 22.476648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349926, 31.774473, 21.798824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547035, 31.544064, 22.059704>,  <42.665302, 31.405817, 22.216232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547035, 31.544064, 22.059704>,  <42.349926, 31.774473, 21.798824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547035, 31.544064, 22.059704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670021, -0.729408, -0.137973,
		0.555196, -0.368998, -0.745385,
		0.492778, -0.576025, 0.652200,
		42.694870, 31.371256, 22.255363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723343, 31.268267, 21.436623>,  <42.349926, 31.774473, 21.798824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723343, 31.268267, 21.436623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597481, 31.091030, 21.772400>,  <42.521965, 30.984688, 21.973866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597481, 31.091030, 21.772400>,  <42.723343, 31.268267, 21.436623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597481, 31.091030, 21.772400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805296, -0.343547, -0.483192,
		0.502486, -0.828037, -0.248721,
		-0.314654, -0.443091, 0.839443,
		42.503086, 30.958103, 22.024233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124058, 31.864933, 21.623804>,  <42.723343, 31.268267, 21.436623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124058, 31.864933, 21.623804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855629, 31.968414, 21.345886>,  <42.694572, 32.030502, 21.179136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855629, 31.968414, 21.345886>,  <43.124058, 31.864933, 21.623804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855629, 31.968414, 21.345886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723904, 0.431001, -0.538704,
		0.160092, -0.864472, -0.476507,
		-0.671069, 0.258703, -0.694794,
		42.654308, 32.046024, 21.137447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309212, 31.516321, 20.948952>,  <43.124058, 31.864933, 21.623804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309212, 31.516321, 20.948952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070938, 31.823318, 20.854202>,  <42.927975, 32.007519, 20.797352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070938, 31.823318, 20.854202>,  <43.309212, 31.516321, 20.948952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070938, 31.823318, 20.854202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601862, 0.231215, -0.764396,
		-0.531901, -0.597907, -0.599657,
		-0.595688, 0.767494, -0.236874,
		42.892231, 32.053566, 20.783140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168739, 31.426130, 20.216980>,  <43.309212, 31.516321, 20.948952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168739, 31.426130, 20.216980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141098, 31.808605, 20.330772>,  <43.124512, 32.038090, 20.399048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141098, 31.808605, 20.330772>,  <43.168739, 31.426130, 20.216980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141098, 31.808605, 20.330772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543613, 0.275200, -0.792937,
		-0.836486, 0.099853, -0.538814,
		-0.069105, 0.956188, 0.284482,
		43.120365, 32.095463, 20.416117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.106274, 31.813814, 19.578897>,  <43.168739, 31.426130, 20.216980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.106274, 31.813814, 19.578897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221390, 32.085228, 19.849236>,  <43.290459, 32.248077, 20.011438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221390, 32.085228, 19.849236>,  <43.106274, 31.813814, 19.578897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221390, 32.085228, 19.849236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677939, 0.354116, -0.644205,
		-0.676444, 0.643577, -0.358096,
		0.287788, 0.678536, 0.675845,
		43.307728, 32.288788, 20.051989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120880, 32.357765, 19.208681>,  <43.106274, 31.813814, 19.578897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120880, 32.357765, 19.208681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356625, 32.437782, 19.521767>,  <43.498070, 32.485794, 19.709618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356625, 32.437782, 19.521767>,  <43.120880, 32.357765, 19.208681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356625, 32.437782, 19.521767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644458, 0.467826, -0.604824,
		-0.487165, 0.860884, 0.146797,
		0.589359, 0.200045, 0.782712,
		43.533432, 32.497795, 19.756580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255016, 32.953781, 19.083487>,  <43.120880, 32.357765, 19.208681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255016, 32.953781, 19.083487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552288, 32.879303, 19.340549>,  <43.730652, 32.834614, 19.494787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552288, 32.879303, 19.340549>,  <43.255016, 32.953781, 19.083487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552288, 32.879303, 19.340549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639645, 0.479510, -0.600769,
		-0.196300, 0.857555, 0.475464,
		0.743183, -0.186198, 0.642658,
		43.775242, 32.823444, 19.533346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639004, 33.532429, 19.050423>,  <43.255016, 32.953781, 19.083487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639004, 33.532429, 19.050423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888500, 33.279491, 19.234200>,  <44.038200, 33.127728, 19.344465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888500, 33.279491, 19.234200>,  <43.639004, 33.532429, 19.050423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888500, 33.279491, 19.234200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781491, 0.493455, -0.381804,
		0.014718, 0.597196, 0.801960,
		0.623743, -0.632344, 0.459441,
		44.075623, 33.089787, 19.372032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162964, 33.937462, 19.314163>,  <43.639004, 33.532429, 19.050423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162964, 33.937462, 19.314163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336411, 33.579128, 19.275276>,  <44.440479, 33.364128, 19.251944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336411, 33.579128, 19.275276>,  <44.162964, 33.937462, 19.314163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336411, 33.579128, 19.275276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769154, 0.424168, -0.477999,
		0.469446, 0.132494, 0.872964,
		0.433615, -0.895839, -0.097216,
		44.466496, 33.310375, 19.246111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933186, 34.060780, 19.349819>,  <44.162964, 33.937462, 19.314163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933186, 34.060780, 19.349819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840012, 33.722660, 19.157478>,  <44.784107, 33.519791, 19.042074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840012, 33.722660, 19.157478>,  <44.933186, 34.060780, 19.349819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840012, 33.722660, 19.157478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809934, 0.105064, -0.577034,
		0.538284, -0.523870, 0.660159,
		-0.232932, -0.845294, -0.480854,
		44.770134, 33.469070, 19.013222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.523167, 33.790791, 19.251354>,  <44.933186, 34.060780, 19.349819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.523167, 33.790791, 19.251354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.297020, 33.600647, 18.981720>,  <45.161331, 33.486561, 18.819939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.297020, 33.600647, 18.981720>,  <45.523167, 33.790791, 19.251354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.297020, 33.600647, 18.981720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708800, 0.137981, -0.691783,
		0.421859, -0.868903, 0.258927,
		-0.565365, -0.475362, -0.674087,
		45.127411, 33.458038, 18.779493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.047112, 33.386166, 18.811911>,  <45.523167, 33.790791, 19.251354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.047112, 33.386166, 18.811911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707378, 33.428005, 18.604958>,  <45.503536, 33.453110, 18.480785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707378, 33.428005, 18.604958>,  <46.047112, 33.386166, 18.811911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707378, 33.428005, 18.604958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527554, 0.135249, -0.838686,
		-0.017753, -0.985275, -0.170056,
		-0.849336, 0.104603, -0.517384,
		45.452576, 33.459385, 18.449741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.066803, 33.000664, 18.089834>,  <46.047112, 33.386166, 18.811911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.066803, 33.000664, 18.089834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763474, 33.258850, 18.053345>,  <45.581474, 33.413761, 18.031450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763474, 33.258850, 18.053345>,  <46.066803, 33.000664, 18.089834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.763474, 33.258850, 18.053345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242000, 0.148808, -0.958797,
		-0.605293, -0.749156, -0.269046,
		-0.758325, 0.645462, -0.091224,
		45.535976, 33.452488, 18.025978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.948257, 32.990906, 17.414417>,  <46.066803, 33.000664, 18.089834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.948257, 32.990906, 17.414417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759865, 33.332512, 17.502808>,  <45.646832, 33.537476, 17.555841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759865, 33.332512, 17.502808>,  <45.948257, 32.990906, 17.414417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759865, 33.332512, 17.502808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183324, 0.339787, -0.922462,
		-0.862885, -0.393950, -0.316594,
		-0.470979, 0.854019, 0.220977,
		45.618572, 33.588718, 17.569101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.463932, 33.061306, 16.919243>,  <45.948257, 32.990906, 17.414417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.463932, 33.061306, 16.919243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520271, 33.428585, 17.067337>,  <45.554073, 33.648952, 17.156193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520271, 33.428585, 17.067337>,  <45.463932, 33.061306, 16.919243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.520271, 33.428585, 17.067337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128735, 0.353801, -0.926419,
		-0.981626, 0.178147, -0.068372,
		0.140849, 0.918199, 0.370234,
		45.562527, 33.704044, 17.178408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018764, 33.421837, 16.482426>,  <45.463932, 33.061306, 16.919243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018764, 33.421837, 16.482426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.281273, 33.683922, 16.632095>,  <45.438778, 33.841175, 16.721897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.281273, 33.683922, 16.632095>,  <45.018764, 33.421837, 16.482426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281273, 33.683922, 16.632095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018760, 0.509922, -0.860016,
		-0.754295, 0.557381, 0.346937,
		0.656268, 0.655214, 0.374175,
		45.478153, 33.880486, 16.744349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017784, 34.069870, 15.984085>,  <45.018764, 33.421837, 16.482426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017784, 34.069870, 15.984085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.338718, 34.114723, 16.218586>,  <45.531277, 34.141636, 16.359287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.338718, 34.114723, 16.218586>,  <45.017784, 34.069870, 15.984085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.338718, 34.114723, 16.218586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419200, 0.593332, -0.687189,
		-0.424896, 0.797110, 0.429044,
		0.802331, 0.112128, 0.586252,
		45.579418, 34.148361, 16.394463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.161030, 34.778782, 16.031322>,  <45.017784, 34.069870, 15.984085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.161030, 34.778782, 16.031322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.509018, 34.599892, 16.114407>,  <45.717812, 34.492558, 16.164257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.509018, 34.599892, 16.114407>,  <45.161030, 34.778782, 16.031322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.509018, 34.599892, 16.114407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459790, 0.583499, -0.669418,
		0.178184, 0.677875, 0.713257,
		0.869967, -0.447229, 0.207710,
		45.770008, 34.465725, 16.176720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.581490, 35.296978, 16.102821>,  <45.161030, 34.778782, 16.031322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.581490, 35.296978, 16.102821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.828903, 34.988823, 16.040943>,  <45.977352, 34.803932, 16.003817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.828903, 34.988823, 16.040943>,  <45.581490, 35.296978, 16.102821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.828903, 34.988823, 16.040943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596031, 0.588284, -0.546507,
		0.512023, 0.245829, 0.823044,
		0.618530, -0.770384, -0.154693,
		46.014462, 34.757710, 15.994535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.212421, 35.622993, 16.076435>,  <45.581490, 35.296978, 16.102821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.212421, 35.622993, 16.076435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304939, 35.270061, 15.912484>,  <46.360451, 35.058304, 15.814114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304939, 35.270061, 15.912484>,  <46.212421, 35.622993, 16.076435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.304939, 35.270061, 15.912484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548412, 0.466233, -0.694170,
		0.803584, -0.064222, 0.591717,
		0.231297, -0.882328, -0.409877,
		46.374329, 35.005363, 15.789521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.942669, 35.684948, 15.926708>,  <46.212421, 35.622993, 16.076435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.942669, 35.684948, 15.926708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.794212, 35.402855, 15.685081>,  <46.705139, 35.233601, 15.540104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.794212, 35.402855, 15.685081>,  <46.942669, 35.684948, 15.926708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.794212, 35.402855, 15.685081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355359, 0.493141, -0.794061,
		0.857888, -0.509372, 0.067584,
		-0.371144, -0.705232, -0.604069,
		46.682869, 35.191284, 15.503860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.500389, 35.792740, 15.351322>,  <46.942669, 35.684948, 15.926708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.500389, 35.792740, 15.351322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.182571, 35.583252, 15.228412>,  <46.991882, 35.457561, 15.154665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.182571, 35.583252, 15.228412>,  <47.500389, 35.792740, 15.351322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.182571, 35.583252, 15.228412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059630, 0.436306, -0.897820,
		0.604272, -0.731681, -0.315435,
		-0.794544, -0.523718, -0.307277,
		46.944206, 35.426136, 15.136229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.727882, 35.281998, 14.828130>,  <47.500389, 35.792740, 15.351322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.727882, 35.281998, 14.828130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.338768, 35.362732, 14.782617>,  <47.105301, 35.411175, 14.755309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.338768, 35.362732, 14.782617>,  <47.727882, 35.281998, 14.828130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.338768, 35.362732, 14.782617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179020, 0.342984, -0.922125,
		-0.147095, -0.917400, -0.369783,
		-0.972787, 0.201838, -0.113782,
		47.046932, 35.423283, 14.748482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.708080, 35.124653, 14.219712>,  <47.727882, 35.281998, 14.828130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.708080, 35.124653, 14.219712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.378605, 35.339550, 14.292268>,  <47.180920, 35.468491, 14.335801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.378605, 35.339550, 14.292268>,  <47.708080, 35.124653, 14.219712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.378605, 35.339550, 14.292268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061026, 0.402018, -0.913596,
		-0.563746, -0.741451, -0.363924,
		-0.823690, 0.537245, 0.181389,
		47.131496, 35.500725, 14.346684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.086529, 35.145817, 13.629328>,  <47.708080, 35.124653, 14.219712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.086529, 35.145817, 13.629328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.170490, 35.504719, 13.784701>,  <47.220867, 35.720058, 13.877926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.170490, 35.504719, 13.784701>,  <47.086529, 35.145817, 13.629328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.170490, 35.504719, 13.784701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149298, 0.363211, -0.919667,
		-0.966256, 0.251033, -0.057719,
		0.209902, 0.897251, 0.388434,
		47.233459, 35.773895, 13.901232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.738888, 35.707760, 13.323226>,  <47.086529, 35.145817, 13.629328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.738888, 35.707760, 13.323226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.110561, 35.789040, 13.446729>,  <47.333565, 35.837807, 13.520830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.110561, 35.789040, 13.446729>,  <46.738888, 35.707760, 13.323226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.110561, 35.789040, 13.446729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223992, 0.354923, -0.907666,
		-0.294022, 0.912546, 0.284274,
		0.929182, 0.203198, 0.308758,
		47.389317, 35.849998, 13.539356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936161, 36.405815, 13.230926>,  <46.738888, 35.707760, 13.323226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936161, 36.405815, 13.230926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.294147, 36.228336, 13.249593>,  <47.508938, 36.121849, 13.260793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.294147, 36.228336, 13.249593>,  <46.936161, 36.405815, 13.230926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.294147, 36.228336, 13.249593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264699, 0.443872, -0.856103,
		0.359133, 0.778532, 0.514695,
		0.894962, -0.443694, 0.046667,
		47.562637, 36.095226, 13.263593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.688721, 37.146454, 13.055256>,  <46.936161, 36.405815, 13.230926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.688721, 37.146454, 13.055256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.754311, 37.531380, 13.142024>,  <46.793667, 37.762337, 13.194085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.754311, 37.531380, 13.142024>,  <46.688721, 37.146454, 13.055256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.754311, 37.531380, 13.142024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393632, -0.137800, 0.908881,
		0.904525, -0.234424, 0.356204,
		0.163978, 0.962318, 0.216920,
		46.803505, 37.820076, 13.207100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.173450, 37.140858, 13.596623>,  <46.688721, 37.146454, 13.055256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.173450, 37.140858, 13.596623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883476, 37.416008, 13.582221>,  <46.709492, 37.581100, 13.573580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883476, 37.416008, 13.582221>,  <47.173450, 37.140858, 13.596623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.883476, 37.416008, 13.582221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337291, -0.308913, 0.889274,
		0.600590, 0.656808, 0.455956,
		-0.724933, 0.687878, -0.036005,
		46.665997, 37.622372, 13.571420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.911777, 37.280605, 14.279655>,  <47.173450, 37.140858, 13.596623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.911777, 37.280605, 14.279655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.649101, 37.521061, 14.097495>,  <46.491497, 37.665337, 13.988198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.649101, 37.521061, 14.097495>,  <46.911777, 37.280605, 14.279655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.649101, 37.521061, 14.097495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534904, 0.054416, 0.843159,
		0.531639, 0.797287, 0.285819,
		-0.656687, 0.601142, -0.455402,
		46.452095, 37.701405, 13.960875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.000622, 37.886253, 14.738973>,  <46.911777, 37.280605, 14.279655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.000622, 37.886253, 14.738973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679520, 37.762505, 14.535062>,  <46.486858, 37.688255, 14.412716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679520, 37.762505, 14.535062>,  <47.000622, 37.886253, 14.738973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679520, 37.762505, 14.535062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558852, 0.092116, 0.824135,
		-0.208004, 0.946470, -0.246839,
		-0.802757, -0.309370, -0.509776,
		46.438694, 37.669693, 14.382129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.408928, 38.512833, 14.820841>,  <47.000622, 37.886253, 14.738973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.408928, 38.512833, 14.820841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.272289, 38.138271, 14.788676>,  <46.190308, 37.913536, 14.769378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.272289, 38.138271, 14.788676>,  <46.408928, 38.512833, 14.820841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.272289, 38.138271, 14.788676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430435, 0.079815, 0.899086,
		-0.835486, 0.341738, -0.430323,
		-0.341598, -0.936400, -0.080412,
		46.169811, 37.857353, 14.764553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.656139, 38.543983, 15.142391>,  <46.408928, 38.512833, 14.820841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.656139, 38.543983, 15.142391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.803730, 38.174393, 15.102151>,  <45.892284, 37.952637, 15.078007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.803730, 38.174393, 15.102151>,  <45.656139, 38.543983, 15.142391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.803730, 38.174393, 15.102151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413495, -0.260124, 0.872558,
		-0.832393, -0.280355, -0.478040,
		0.368976, -0.923979, -0.100600,
		45.914421, 37.897198, 15.071971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.160954, 38.113052, 15.305427>,  <45.656139, 38.543983, 15.142391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.160954, 38.113052, 15.305427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484524, 37.880646, 15.341340>,  <45.678665, 37.741199, 15.362888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484524, 37.880646, 15.341340>,  <45.160954, 38.113052, 15.305427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484524, 37.880646, 15.341340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366044, -0.378230, 0.850267,
		-0.460065, -0.720663, -0.518638,
		0.808920, -0.581022, 0.089784,
		45.727200, 37.706341, 15.368276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.909485, 37.386196, 15.364746>,  <45.160954, 38.113052, 15.305427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.909485, 37.386196, 15.364746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275597, 37.388142, 15.525859>,  <45.495266, 37.389309, 15.622526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275597, 37.388142, 15.525859>,  <44.909485, 37.386196, 15.364746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275597, 37.388142, 15.525859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327150, -0.574416, 0.750346,
		0.235011, -0.818549, -0.524163,
		0.915283, 0.004860, 0.402782,
		45.550182, 37.389599, 15.646693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021286, 36.677319, 15.575927>,  <44.909485, 37.386196, 15.364746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.021286, 36.677319, 15.575927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.262634, 36.915997, 15.787545>,  <45.407444, 37.059204, 15.914516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.262634, 36.915997, 15.787545>,  <45.021286, 36.677319, 15.575927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.262634, 36.915997, 15.787545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434579, -0.310217, 0.845521,
		0.668641, -0.740079, 0.072135,
		0.603375, 0.596698, 0.529047,
		45.443645, 37.095005, 15.946259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.308704, 36.207867, 16.020218>,  <45.021286, 36.677319, 15.575927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.308704, 36.207867, 16.020218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363247, 36.568367, 16.184727>,  <45.395973, 36.784668, 16.283432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363247, 36.568367, 16.184727>,  <45.308704, 36.207867, 16.020218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363247, 36.568367, 16.184727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432053, -0.319486, 0.843361,
		0.891480, -0.292693, 0.345825,
		0.136359, 0.901254, 0.411274,
		45.404156, 36.838745, 16.308109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.656380, 36.096893, 16.604143>,  <45.308704, 36.207867, 16.020218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.656380, 36.096893, 16.604143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483463, 36.455780, 16.640205>,  <45.379715, 36.671112, 16.661842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483463, 36.455780, 16.640205>,  <45.656380, 36.096893, 16.604143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483463, 36.455780, 16.640205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345025, -0.256948, 0.902738,
		0.833118, 0.359135, 0.420638,
		-0.432287, 0.897218, 0.090157,
		45.353779, 36.724945, 16.667252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.771408, 36.195896, 17.282623>,  <45.656380, 36.096893, 16.604143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.771408, 36.195896, 17.282623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479591, 36.446777, 17.173527>,  <45.304501, 36.597305, 17.108068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479591, 36.446777, 17.173527>,  <45.771408, 36.195896, 17.282623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.479591, 36.446777, 17.173527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526301, -0.260155, 0.809522,
		0.436777, 0.734125, 0.519890,
		-0.729543, 0.627200, -0.272741,
		45.260727, 36.634937, 17.091703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.472824, 36.498878, 17.910667>,  <45.771408, 36.195896, 17.282623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.472824, 36.498878, 17.910667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190334, 36.539814, 17.630447>,  <45.020840, 36.564377, 17.462315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190334, 36.539814, 17.630447>,  <45.472824, 36.498878, 17.910667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190334, 36.539814, 17.630447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682783, -0.360106, 0.635713,
		-0.187214, 0.927282, 0.324191,
		-0.706228, 0.102338, -0.700549,
		44.978466, 36.570515, 17.420282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.989910, 36.851379, 18.354485>,  <45.472824, 36.498878, 17.910667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.989910, 36.851379, 18.354485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808365, 36.687378, 18.038029>,  <44.699436, 36.588978, 17.848156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808365, 36.687378, 18.038029>,  <44.989910, 36.851379, 18.354485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.808365, 36.687378, 18.038029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807475, -0.186212, 0.559740,
		-0.376817, 0.892872, -0.246555,
		-0.453865, -0.410007, -0.791139,
		44.672207, 36.564377, 17.800688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184242, 37.138805, 18.367304>,  <44.989910, 36.851379, 18.354485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184242, 37.138805, 18.367304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192764, 36.800327, 18.154324>,  <44.197876, 36.597240, 18.026535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192764, 36.800327, 18.154324>,  <44.184242, 37.138805, 18.367304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192764, 36.800327, 18.154324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865488, -0.282210, 0.413869,
		-0.500476, 0.452012, -0.738383,
		0.021306, -0.846193, -0.532451,
		44.199158, 36.546471, 17.994589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502209, 37.033909, 18.168913>,  <44.184242, 37.138805, 18.367304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502209, 37.033909, 18.168913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689644, 36.680542, 18.169846>,  <43.802105, 36.468521, 18.170404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689644, 36.680542, 18.169846>,  <43.502209, 37.033909, 18.168913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689644, 36.680542, 18.169846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758411, -0.400928, 0.513877,
		-0.453033, -0.242561, -0.857861,
		0.468587, -0.883414, 0.002327,
		43.830219, 36.415520, 18.170544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989120, 36.664070, 18.164499>,  <43.502209, 37.033909, 18.168913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989120, 36.664070, 18.164499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260311, 36.387821, 18.265202>,  <43.423027, 36.222073, 18.325623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260311, 36.387821, 18.265202>,  <42.989120, 36.664070, 18.164499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260311, 36.387821, 18.265202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694169, -0.488867, 0.528335,
		-0.241806, -0.532961, -0.810853,
		0.677981, -0.690624, 0.251754,
		43.463707, 36.180634, 18.340727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671204, 36.022446, 18.000763>,  <42.989120, 36.664070, 18.164499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671204, 36.022446, 18.000763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976288, 35.919075, 18.237907>,  <43.159340, 35.857052, 18.380194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976288, 35.919075, 18.237907>,  <42.671204, 36.022446, 18.000763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976288, 35.919075, 18.237907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591911, -0.648308, 0.478893,
		0.260600, -0.716180, -0.647437,
		0.762712, -0.258425, 0.592863,
		43.205101, 35.841549, 18.415766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643425, 35.354218, 18.066307>,  <42.671204, 36.022446, 18.000763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643425, 35.354218, 18.066307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861446, 35.439293, 18.390697>,  <42.992260, 35.490337, 18.585331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861446, 35.439293, 18.390697>,  <42.643425, 35.354218, 18.066307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861446, 35.439293, 18.390697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589099, -0.591108, 0.550957,
		0.596555, -0.778046, -0.196892,
		0.545054, 0.212687, 0.810975,
		43.024963, 35.503098, 18.633989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905876, 34.669827, 18.273729>,  <42.643425, 35.354218, 18.066307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905876, 34.669827, 18.273729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904785, 34.932262, 18.575600>,  <42.904133, 35.089725, 18.756721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904785, 34.932262, 18.575600>,  <42.905876, 34.669827, 18.273729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904785, 34.932262, 18.575600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404861, -0.690785, 0.599086,
		0.914374, -0.303907, 0.267508,
		-0.002724, 0.656092, 0.754676,
		42.903969, 35.129089, 18.802002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074604, 34.231724, 18.925247>,  <42.905876, 34.669827, 18.273729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074604, 34.231724, 18.925247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882023, 34.554611, 19.061836>,  <42.766476, 34.748344, 19.143789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882023, 34.554611, 19.061836>,  <43.074604, 34.231724, 18.925247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882023, 34.554611, 19.061836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407611, -0.551112, 0.728099,
		0.775925, 0.211356, 0.594365,
		-0.481450, 0.807220, 0.341471,
		42.737587, 34.796776, 19.164278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015892, 34.135918, 19.660225>,  <43.074604, 34.231724, 18.925247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015892, 34.135918, 19.660225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748409, 34.417984, 19.565937>,  <42.587917, 34.587223, 19.509363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748409, 34.417984, 19.565937>,  <43.015892, 34.135918, 19.660225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748409, 34.417984, 19.565937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577501, -0.292912, 0.762033,
		0.468316, 0.645709, 0.603109,
		-0.668710, 0.705168, -0.235722,
		42.547798, 34.629536, 19.495220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826328, 34.346260, 20.283405>,  <43.015892, 34.135918, 19.660225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826328, 34.346260, 20.283405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527763, 34.470432, 20.047947>,  <42.348625, 34.544933, 19.906672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527763, 34.470432, 20.047947>,  <42.826328, 34.346260, 20.283405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527763, 34.470432, 20.047947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658545, -0.217157, 0.720529,
		0.095845, 0.925460, 0.366520,
		-0.746413, 0.310429, -0.588644,
		42.303841, 34.563560, 19.871353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396706, 34.726276, 20.732248>,  <42.826328, 34.346260, 20.283405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396706, 34.726276, 20.732248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154259, 34.666634, 20.419739>,  <42.008789, 34.630848, 20.232233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154259, 34.666634, 20.419739>,  <42.396706, 34.726276, 20.732248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154259, 34.666634, 20.419739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755193, -0.200383, 0.624124,
		-0.249614, 0.968305, 0.008852,
		-0.606116, -0.149105, -0.781276,
		41.972424, 34.621902, 20.185356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785786, 35.160927, 20.860853>,  <42.396706, 34.726276, 20.732248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785786, 35.160927, 20.860853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714924, 34.845535, 20.625256>,  <41.672405, 34.656300, 20.483896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714924, 34.845535, 20.625256>,  <41.785786, 35.160927, 20.860853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714924, 34.845535, 20.625256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764437, -0.266697, 0.586949,
		-0.619881, 0.554230, -0.555496,
		-0.177156, -0.788480, -0.588995,
		41.661777, 34.608990, 20.448557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090778, 35.136311, 20.862967>,  <41.785786, 35.160927, 20.860853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090778, 35.136311, 20.862967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195065, 34.776451, 20.722870>,  <41.257637, 34.560535, 20.638813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195065, 34.776451, 20.722870>,  <41.090778, 35.136311, 20.862967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195065, 34.776451, 20.722870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787581, -0.408015, 0.461779,
		-0.558340, 0.155451, -0.814918,
		0.260715, -0.899644, -0.350241,
		41.273277, 34.506557, 20.617798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431477, 34.858955, 20.602026>,  <41.090778, 35.136311, 20.862967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431477, 34.858955, 20.602026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650806, 34.529140, 20.657864>,  <40.782406, 34.331253, 20.691366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650806, 34.529140, 20.657864>,  <40.431477, 34.858955, 20.602026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650806, 34.529140, 20.657864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787393, -0.452805, 0.418306,
		-0.281697, -0.339283, -0.897515,
		0.548324, -0.824533, 0.139595,
		40.815304, 34.281780, 20.699743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045944, 34.363632, 20.363609>,  <40.431477, 34.858955, 20.602026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045944, 34.363632, 20.363609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303715, 34.260590, 20.651596>,  <40.458378, 34.198765, 20.824389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303715, 34.260590, 20.651596>,  <40.045944, 34.363632, 20.363609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303715, 34.260590, 20.651596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751939, -0.384540, 0.535459,
		0.138919, -0.886436, -0.441512,
		0.644429, -0.257604, 0.719966,
		40.497044, 34.183308, 20.867586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865650, 33.662010, 20.599445>,  <40.045944, 34.363632, 20.363609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865650, 33.662010, 20.599445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022915, 33.832397, 20.925385>,  <40.117275, 33.934628, 21.120947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022915, 33.832397, 20.925385>,  <39.865650, 33.662010, 20.599445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022915, 33.832397, 20.925385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745466, -0.371100, 0.553684,
		0.538240, -0.825129, 0.171639,
		0.393165, 0.425965, 0.814846,
		40.140865, 33.960186, 21.169838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054306, 33.232929, 21.218035>,  <39.865650, 33.662010, 20.599445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054306, 33.232929, 21.218035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938572, 33.594425, 21.344234>,  <39.869133, 33.811321, 21.419954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938572, 33.594425, 21.344234>,  <40.054306, 33.232929, 21.218035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938572, 33.594425, 21.344234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842883, -0.396753, 0.363504,
		0.453688, -0.160756, 0.876541,
		-0.289335, 0.903739, 0.315501,
		39.851772, 33.865547, 21.438885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019756, 33.352379, 21.961327>,  <40.054306, 33.232929, 21.218035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019756, 33.352379, 21.961327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727200, 33.551441, 21.774822>,  <39.551666, 33.670879, 21.662920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727200, 33.551441, 21.774822>,  <40.019756, 33.352379, 21.961327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727200, 33.551441, 21.774822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681872, -0.544215, 0.488753,
		-0.010514, 0.675401, 0.737375,
		-0.731395, 0.497657, -0.466259,
		39.507782, 33.700737, 21.634945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458420, 33.063915, 22.279539>,  <40.019756, 33.352379, 21.961327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458420, 33.063915, 22.279539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281395, 33.296360, 22.006351>,  <39.175179, 33.435825, 21.842438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281395, 33.296360, 22.006351>,  <39.458420, 33.063915, 22.279539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281395, 33.296360, 22.006351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888311, -0.388262, 0.245268,
		-0.122644, 0.715237, 0.688036,
		-0.442564, 0.581109, -0.682971,
		39.148624, 33.470692, 21.801460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003288, 33.545368, 22.673626>,  <39.458420, 33.063915, 22.279539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003288, 33.545368, 22.673626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906479, 33.433208, 22.302078>,  <38.848392, 33.365913, 22.079149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906479, 33.433208, 22.302078>,  <39.003288, 33.545368, 22.673626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906479, 33.433208, 22.302078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866152, -0.369000, 0.337075,
		-0.437270, 0.886122, -0.153565,
		-0.242024, -0.280404, -0.928869,
		38.833870, 33.349087, 22.023418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230080, 33.469158, 22.601776>,  <39.003288, 33.545368, 22.673626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230080, 33.469158, 22.601776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283581, 33.347622, 22.224461>,  <38.315681, 33.274700, 21.998072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283581, 33.347622, 22.224461>,  <38.230080, 33.469158, 22.601776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283581, 33.347622, 22.224461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980474, -0.179030, -0.081361,
		-0.144157, 0.935751, -0.321853,
		0.133755, -0.303839, -0.943287,
		38.323708, 33.256470, 21.941475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790283, 33.050655, 23.089109>,  <38.230080, 33.469158, 22.601776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790283, 33.050655, 23.089109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528881, 33.303726, 23.255318>,  <37.372040, 33.455570, 23.355042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528881, 33.303726, 23.255318>,  <37.790283, 33.050655, 23.089109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528881, 33.303726, 23.255318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071926, -0.494568, 0.866158,
		0.753499, 0.595923, 0.277696,
		-0.653503, 0.632676, 0.415519,
		37.332829, 33.493530, 23.379972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125454, 33.172565, 23.613903>,  <37.790283, 33.050655, 23.089109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125454, 33.172565, 23.613903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735153, 33.241192, 23.668274>,  <37.500973, 33.282368, 23.700895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735153, 33.241192, 23.668274>,  <38.125454, 33.172565, 23.613903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735153, 33.241192, 23.668274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013857, -0.571335, 0.820600,
		0.218445, 0.802585, 0.555104,
		-0.975751, 0.171564, 0.135926,
		37.442429, 33.292660, 23.709051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065014, 33.240456, 24.364515>,  <38.125454, 33.172565, 23.613903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065014, 33.240456, 24.364515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706268, 33.147121, 24.214211>,  <37.491020, 33.091122, 24.124027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706268, 33.147121, 24.214211>,  <38.065014, 33.240456, 24.364515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706268, 33.147121, 24.214211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100139, -0.720363, 0.686330,
		-0.430829, 0.653171, 0.622700,
		-0.896861, -0.233334, -0.375761,
		37.437210, 33.077122, 24.101482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560139, 33.199371, 24.902884>,  <38.065014, 33.240456, 24.364515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560139, 33.199371, 24.902884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397053, 32.961132, 24.626034>,  <37.299202, 32.818188, 24.459925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397053, 32.961132, 24.626034>,  <37.560139, 33.199371, 24.902884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397053, 32.961132, 24.626034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122551, -0.715434, 0.687848,
		-0.904850, 0.365264, 0.218699,
		-0.407711, -0.595598, -0.692124,
		37.274738, 32.782452, 24.418396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952820, 32.964333, 25.276331>,  <37.560139, 33.199371, 24.902884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952820, 32.964333, 25.276331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009682, 32.701607, 24.980118>,  <37.043800, 32.543972, 24.802389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009682, 32.701607, 24.980118>,  <36.952820, 32.964333, 25.276331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009682, 32.701607, 24.980118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123416, -0.754054, 0.645114,
		-0.982120, -0.000313, -0.188254,
		0.142155, -0.656813, -0.740533,
		37.052330, 32.504562, 24.757957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379448, 32.451477, 25.287149>,  <36.952820, 32.964333, 25.276331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379448, 32.451477, 25.287149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668320, 32.283127, 25.067581>,  <36.841644, 32.182117, 24.935841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668320, 32.283127, 25.067581>,  <36.379448, 32.451477, 25.287149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668320, 32.283127, 25.067581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139283, -0.865806, 0.480603,
		-0.677533, -0.270629, -0.683893,
		0.722184, -0.420879, -0.548918,
		36.884975, 32.156864, 24.902905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161724, 31.741510, 24.956564>,  <36.379448, 32.451477, 25.287149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161724, 31.741510, 24.956564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561565, 31.742420, 24.967789>,  <36.801472, 31.742966, 24.974524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561565, 31.742420, 24.967789>,  <36.161724, 31.741510, 24.956564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561565, 31.742420, 24.967789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013834, -0.828457, 0.559882,
		0.024521, -0.560048, -0.828097,
		0.999603, 0.002273, 0.028062,
		36.861446, 31.743103, 24.976208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306194, 31.087175, 25.026672>,  <36.161724, 31.741510, 24.956564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306194, 31.087175, 25.026672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669254, 31.232807, 25.110207>,  <36.887093, 31.320187, 25.160328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669254, 31.232807, 25.110207>,  <36.306194, 31.087175, 25.026672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669254, 31.232807, 25.110207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144172, -0.737731, 0.659521,
		0.394183, -0.568508, -0.722093,
		0.907654, 0.364077, 0.208838,
		36.941551, 31.342030, 25.172857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786026, 30.483721, 25.000206>,  <36.306194, 31.087175, 25.026672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786026, 30.483721, 25.000206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944790, 30.757236, 25.245121>,  <37.040047, 30.921347, 25.392071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944790, 30.757236, 25.245121>,  <36.786026, 30.483721, 25.000206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944790, 30.757236, 25.245121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069235, -0.687485, 0.722890,
		0.915244, -0.244528, -0.320210,
		0.396907, 0.683791, 0.612287,
		37.063862, 30.962374, 25.428806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036861, 30.007473, 25.446041>,  <36.786026, 30.483721, 25.000206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036861, 30.007473, 25.446041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120110, 30.359722, 25.616306>,  <37.170059, 30.571072, 25.718466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120110, 30.359722, 25.616306>,  <37.036861, 30.007473, 25.446041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120110, 30.359722, 25.616306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261288, -0.369322, 0.891812,
		0.942556, -0.296829, 0.153231,
		0.208124, 0.880621, 0.425665,
		37.182549, 30.623909, 25.744005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529716, 29.906128, 25.964928>,  <37.036861, 30.007473, 25.446041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529716, 29.906128, 25.964928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359840, 30.240486, 26.104019>,  <37.257915, 30.441101, 26.187473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359840, 30.240486, 26.104019>,  <37.529716, 29.906128, 25.964928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359840, 30.240486, 26.104019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074664, -0.350441, 0.933604,
		0.902253, 0.422459, 0.086419,
		-0.424694, 0.835895, 0.347728,
		37.232433, 30.491255, 26.208338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798729, 30.070034, 26.604906>,  <37.529716, 29.906128, 25.964928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798729, 30.070034, 26.604906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444839, 30.255589, 26.586674>,  <37.232506, 30.366920, 26.575733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444839, 30.255589, 26.586674>,  <37.798729, 30.070034, 26.604906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444839, 30.255589, 26.586674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207047, -0.303491, 0.930067,
		0.417610, 0.832289, 0.364551,
		-0.884723, 0.463884, -0.045582,
		37.179424, 30.394754, 26.573000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808620, 30.380884, 27.226961>,  <37.798729, 30.070034, 26.604906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808620, 30.380884, 27.226961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424583, 30.369907, 27.115623>,  <37.194160, 30.363321, 27.048820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424583, 30.369907, 27.115623>,  <37.808620, 30.380884, 27.226961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424583, 30.369907, 27.115623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256846, -0.307455, 0.916243,
		-0.110724, 0.951167, 0.288135,
		-0.960089, -0.027444, -0.278346,
		37.136559, 30.361673, 27.032120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518604, 30.593842, 27.859474>,  <37.808620, 30.380884, 27.226961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518604, 30.593842, 27.859474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232174, 30.423824, 27.638000>,  <37.060314, 30.321814, 27.505116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232174, 30.423824, 27.638000>,  <37.518604, 30.593842, 27.859474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232174, 30.423824, 27.638000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352562, -0.464366, 0.812443,
		-0.602438, 0.776982, 0.182668,
		-0.716079, -0.425045, -0.553686,
		37.017349, 30.296310, 27.471895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964375, 30.859587, 28.162544>,  <37.518604, 30.593842, 27.859474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964375, 30.859587, 28.162544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893822, 30.517036, 27.968426>,  <36.851490, 30.311506, 27.851955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893822, 30.517036, 27.968426>,  <36.964375, 30.859587, 28.162544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893822, 30.517036, 27.968426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297835, -0.423480, 0.855546,
		-0.938181, 0.295443, -0.180363,
		-0.176385, -0.856375, -0.485294,
		36.840908, 30.260124, 27.822838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299763, 30.685656, 28.270847>,  <36.964375, 30.859587, 28.162544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299763, 30.685656, 28.270847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454327, 30.338123, 28.147030>,  <36.547066, 30.129604, 28.072739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454327, 30.338123, 28.147030>,  <36.299763, 30.685656, 28.270847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454327, 30.338123, 28.147030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240444, -0.418898, 0.875620,
		-0.890434, -0.263921, -0.370773,
		0.386411, -0.868832, -0.309543,
		36.570251, 30.077473, 28.054167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682999, 30.143154, 28.210808>,  <36.299763, 30.685656, 28.270847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682999, 30.143154, 28.210808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038982, 29.970215, 28.268841>,  <36.252571, 29.866451, 28.303661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038982, 29.970215, 28.268841>,  <35.682999, 30.143154, 28.210808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038982, 29.970215, 28.268841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364865, -0.484187, 0.795259,
		-0.273580, -0.760683, -0.588655,
		0.889959, -0.432346, 0.145082,
		36.305969, 29.840511, 28.312365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447842, 29.488035, 28.265226>,  <35.682999, 30.143154, 28.210808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447842, 29.488035, 28.265226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809818, 29.526310, 28.431080>,  <36.027004, 29.549274, 28.530592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809818, 29.526310, 28.431080>,  <35.447842, 29.488035, 28.265226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809818, 29.526310, 28.431080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237613, -0.694705, 0.678915,
		0.353009, -0.712902, -0.605934,
		0.904945, 0.095685, 0.414631,
		36.081303, 29.555016, 28.555470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493748, 28.932232, 28.664249>,  <35.447842, 29.488035, 28.265226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493748, 28.932232, 28.664249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808411, 29.131046, 28.810745>,  <35.997208, 29.250336, 28.898643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808411, 29.131046, 28.810745>,  <35.493748, 28.932232, 28.664249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808411, 29.131046, 28.810745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006679, -0.600017, 0.799959,
		0.617359, -0.626845, -0.475325,
		0.786653, 0.497036, 0.366239,
		36.044407, 29.280157, 28.920616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025322, 28.433014, 28.800863>,  <35.493748, 28.932232, 28.664249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025322, 28.433014, 28.800863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047153, 28.757114, 29.034279>,  <36.060253, 28.951574, 29.174328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047153, 28.757114, 29.034279>,  <36.025322, 28.433014, 28.800863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047153, 28.757114, 29.034279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123033, -0.574498, 0.809206,
		0.990901, -0.115957, 0.068335,
		0.054575, 0.810251, 0.583537,
		36.063526, 29.000189, 29.209339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431507, 28.266176, 29.411285>,  <36.025322, 28.433014, 28.800863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431507, 28.266176, 29.411285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272823, 28.601246, 29.561443>,  <36.177612, 28.802288, 29.651539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272823, 28.601246, 29.561443>,  <36.431507, 28.266176, 29.411285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272823, 28.601246, 29.561443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015519, -0.402773, 0.915168,
		0.917812, 0.368884, 0.146785,
		-0.396712, 0.837674, 0.375395,
		36.153809, 28.852549, 29.674061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774632, 28.347731, 30.160456>,  <36.431507, 28.266176, 29.411285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774632, 28.347731, 30.160456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442223, 28.570133, 30.166962>,  <36.242779, 28.703575, 30.170866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442223, 28.570133, 30.166962>,  <36.774632, 28.347731, 30.160456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442223, 28.570133, 30.166962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185738, -0.304938, 0.934085,
		0.524316, 0.773221, 0.356681,
		-0.831020, 0.556005, 0.016267,
		36.192917, 28.736935, 30.171843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814613, 28.648478, 30.755703>,  <36.774632, 28.347731, 30.160456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814613, 28.648478, 30.755703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429111, 28.663509, 30.650055>,  <36.197811, 28.672527, 30.586666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429111, 28.663509, 30.650055>,  <36.814613, 28.648478, 30.755703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429111, 28.663509, 30.650055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264049, -0.275694, 0.924268,
		-0.038085, 0.960511, 0.275624,
		-0.963757, 0.037577, -0.264122,
		36.139984, 28.674782, 30.570818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527397, 28.927076, 31.355165>,  <36.814613, 28.648478, 30.755703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527397, 28.927076, 31.355165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216759, 28.765430, 31.161842>,  <36.030376, 28.668442, 31.045849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216759, 28.765430, 31.161842>,  <36.527397, 28.927076, 31.355165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216759, 28.765430, 31.161842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349859, -0.361344, 0.864309,
		-0.523921, 0.840310, 0.139235,
		-0.776599, -0.404116, -0.483306,
		35.983780, 28.644196, 31.016851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981544, 29.042006, 31.766066>,  <36.527397, 28.927076, 31.355165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981544, 29.042006, 31.766066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833630, 28.737881, 31.552456>,  <35.744881, 28.555407, 31.424290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833630, 28.737881, 31.552456>,  <35.981544, 29.042006, 31.766066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833630, 28.737881, 31.552456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336695, -0.426040, 0.839718,
		-0.865964, 0.490320, -0.098448,
		-0.369788, -0.760313, -0.534024,
		35.722694, 28.509787, 31.392248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412983, 28.878431, 32.170330>,  <35.981544, 29.042006, 31.766066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412983, 28.878431, 32.170330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479168, 28.569416, 31.925117>,  <35.518879, 28.384007, 31.777990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479168, 28.569416, 31.925117>,  <35.412983, 28.878431, 32.170330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479168, 28.569416, 31.925117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344805, -0.627684, 0.697941,
		-0.923977, 0.095895, -0.370232,
		0.165459, -0.772539, -0.613031,
		35.528805, 28.337654, 31.741209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760220, 28.446548, 32.120342>,  <35.412983, 28.878431, 32.170330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760220, 28.446548, 32.120342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061928, 28.205177, 32.016842>,  <35.242954, 28.060354, 31.954741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061928, 28.205177, 32.016842>,  <34.760220, 28.446548, 32.120342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061928, 28.205177, 32.016842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336599, -0.693765, 0.636703,
		-0.563717, -0.393150, -0.726399,
		0.754270, -0.603426, -0.258753,
		35.288208, 28.024149, 31.939217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416813, 27.738735, 32.091766>,  <34.760220, 28.446548, 32.120342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416813, 27.738735, 32.091766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813007, 27.684162, 32.084629>,  <35.050724, 27.651419, 32.080345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813007, 27.684162, 32.084629>,  <34.416813, 27.738735, 32.091766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813007, 27.684162, 32.084629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084739, -0.707029, 0.702089,
		-0.108406, -0.693899, -0.711865,
		0.990488, -0.136434, -0.017846,
		35.110153, 27.643232, 32.079277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494953, 27.047277, 31.955957>,  <34.416813, 27.738735, 32.091766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494953, 27.047277, 31.955957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820576, 27.182529, 32.144840>,  <35.015949, 27.263681, 32.258171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820576, 27.182529, 32.144840>,  <34.494953, 27.047277, 31.955957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820576, 27.182529, 32.144840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065694, -0.754222, 0.653325,
		0.577060, -0.562864, -0.591765,
		0.814056, 0.338132, 0.472208,
		35.064793, 27.283970, 32.286503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909302, 26.493351, 32.002491>,  <34.494953, 27.047277, 31.955957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909302, 26.493351, 32.002491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041607, 26.742756, 32.285851>,  <35.120991, 26.892399, 32.455868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041607, 26.742756, 32.285851>,  <34.909302, 26.493351, 32.002491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041607, 26.742756, 32.285851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067498, -0.764357, 0.641251,
		0.941297, -0.164286, -0.294906,
		0.330762, 0.623513, 0.708398,
		35.140835, 26.929810, 32.498371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439098, 26.080179, 32.324654>,  <34.909302, 26.493351, 32.002491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439098, 26.080179, 32.324654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335693, 26.377964, 32.570889>,  <35.273651, 26.556635, 32.718628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335693, 26.377964, 32.570889>,  <35.439098, 26.080179, 32.324654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335693, 26.377964, 32.570889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021511, -0.632654, 0.774136,
		0.965768, 0.213366, 0.147535,
		-0.258513, 0.744462, 0.615587,
		35.258141, 26.601303, 32.755566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746677, 25.895069, 32.935303>,  <35.439098, 26.080179, 32.324654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746677, 25.895069, 32.935303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482422, 26.173866, 33.046844>,  <35.323868, 26.341145, 33.113770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482422, 26.173866, 33.046844>,  <35.746677, 25.895069, 32.935303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482422, 26.173866, 33.046844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306299, -0.589393, 0.747527,
		0.685376, 0.408431, 0.602863,
		-0.660637, 0.696993, 0.278854,
		35.284229, 26.382965, 33.130501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832069, 26.003777, 33.740417>,  <35.746677, 25.895069, 32.935303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832069, 26.003777, 33.740417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459759, 26.113647, 33.643917>,  <35.236370, 26.179569, 33.586018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459759, 26.113647, 33.643917>,  <35.832069, 26.003777, 33.740417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459759, 26.113647, 33.643917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354481, -0.516736, 0.779312,
		0.089396, 0.810887, 0.578335,
		-0.930780, 0.274676, -0.241250,
		35.180523, 26.196051, 33.571541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491360, 26.111208, 34.431496>,  <35.832069, 26.003777, 33.740417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491360, 26.111208, 34.431496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175911, 26.073997, 34.188377>,  <34.986641, 26.051672, 34.042507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175911, 26.073997, 34.188377>,  <35.491360, 26.111208, 34.431496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175911, 26.073997, 34.188377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533263, -0.388634, 0.751395,
		-0.306111, 0.916684, 0.256878,
		-0.788623, -0.093026, -0.607799,
		34.939323, 26.046089, 34.006039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933983, 26.435575, 34.751049>,  <35.491360, 26.111208, 34.431496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933983, 26.435575, 34.751049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761684, 26.187004, 34.489277>,  <34.658306, 26.037861, 34.332214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761684, 26.187004, 34.489277>,  <34.933983, 26.435575, 34.751049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761684, 26.187004, 34.489277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515410, -0.425869, 0.743632,
		-0.740817, 0.657619, -0.136849,
		-0.430747, -0.621429, -0.654434,
		34.632462, 26.000576, 34.292946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255913, 26.465179, 34.972275>,  <34.933983, 26.435575, 34.751049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255913, 26.465179, 34.972275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287521, 26.118225, 34.775745>,  <34.306484, 25.910051, 34.657829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287521, 26.118225, 34.775745>,  <34.255913, 26.465179, 34.972275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287521, 26.118225, 34.775745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677559, -0.408247, 0.611759,
		-0.731211, 0.284559, -0.619965,
		0.079018, -0.867387, -0.491320,
		34.311226, 25.858009, 34.628349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591553, 26.179773, 34.878189>,  <34.255913, 26.465179, 34.972275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591553, 26.179773, 34.878189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804192, 25.844112, 34.832180>,  <33.931774, 25.642715, 34.804573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804192, 25.844112, 34.832180>,  <33.591553, 26.179773, 34.878189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804192, 25.844112, 34.832180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596753, -0.467437, 0.652218,
		-0.601078, -0.278073, -0.749254,
		0.531593, -0.839153, -0.115025,
		33.963669, 25.592367, 34.797672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117027, 25.741463, 35.034145>,  <33.591553, 26.179773, 34.878189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117027, 25.741463, 35.034145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445854, 25.515301, 35.061035>,  <33.643150, 25.379604, 35.077168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445854, 25.515301, 35.061035>,  <33.117027, 25.741463, 35.034145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445854, 25.515301, 35.061035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445097, -0.564503, 0.695144,
		-0.355091, -0.601377, -0.715720,
		0.822070, -0.565404, 0.067221,
		33.692474, 25.345680, 35.081200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885597, 24.978401, 34.998863>,  <33.117027, 25.741463, 35.034145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885597, 24.978401, 34.998863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252342, 24.989780, 35.158138>,  <33.472389, 24.996609, 35.253704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252342, 24.989780, 35.158138>,  <32.885597, 24.978401, 34.998863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252342, 24.989780, 35.158138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310716, -0.575391, 0.756558,
		0.250637, -0.817384, -0.518715,
		0.916862, 0.028448, 0.398189,
		33.527401, 24.998314, 35.277596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023693, 24.301052, 35.183651>,  <32.885597, 24.978401, 34.998863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023693, 24.301052, 35.183651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291233, 24.499012, 35.405537>,  <33.451759, 24.617788, 35.538670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291233, 24.499012, 35.405537>,  <33.023693, 24.301052, 35.183651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291233, 24.499012, 35.405537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223039, -0.578221, 0.784802,
		0.709148, -0.648639, -0.276363,
		0.668852, 0.494901, 0.554716,
		33.491890, 24.647482, 35.571953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581882, 23.844349, 35.357716>,  <33.023693, 24.301052, 35.183651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581882, 23.844349, 35.357716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576958, 24.128548, 35.639153>,  <33.574001, 24.299067, 35.808014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576958, 24.128548, 35.639153>,  <33.581882, 23.844349, 35.357716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576958, 24.128548, 35.639153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148916, -0.697105, 0.701334,
		0.988773, -0.096140, 0.114389,
		-0.012315, 0.710495, 0.703595,
		33.573265, 24.341696, 35.850231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926098, 23.599855, 35.910378>,  <33.581882, 23.844349, 35.357716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926098, 23.599855, 35.910378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708118, 23.891060, 36.076763>,  <33.577332, 24.065783, 36.176594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708118, 23.891060, 36.076763>,  <33.926098, 23.599855, 35.910378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708118, 23.891060, 36.076763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268560, -0.621521, 0.735925,
		0.794294, 0.289332, 0.534214,
		-0.544952, 0.728010, 0.415968,
		33.544632, 24.109463, 36.201553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103653, 23.953825, 36.610619>,  <33.926098, 23.599855, 35.910378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103653, 23.953825, 36.610619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719704, 23.911247, 36.506840>,  <33.489334, 23.885700, 36.444572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719704, 23.911247, 36.506840>,  <34.103653, 23.953825, 36.610619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719704, 23.911247, 36.506840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092641, -0.752866, 0.651621,
		-0.264690, 0.649509, 0.712795,
		-0.959873, -0.106444, -0.259447,
		33.431740, 23.879314, 36.429005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641205, 24.038828, 37.157627>,  <34.103653, 23.953825, 36.610619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641205, 24.038828, 37.157627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457623, 23.784363, 36.909546>,  <33.347473, 23.631683, 36.760696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457623, 23.784363, 36.909546>,  <33.641205, 24.038828, 37.157627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457623, 23.784363, 36.909546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203038, -0.604497, 0.770298,
		-0.864949, 0.479458, 0.148271,
		-0.458955, -0.636163, -0.620207,
		33.319935, 23.593513, 36.723484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875950, 23.975040, 37.356560>,  <33.641205, 24.038828, 37.157627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875950, 23.975040, 37.356560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073101, 23.673138, 37.183395>,  <33.191391, 23.491995, 37.079498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073101, 23.673138, 37.183395>,  <32.875950, 23.975040, 37.356560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073101, 23.673138, 37.183395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047200, -0.520002, 0.852860,
		-0.868818, -0.399921, -0.291922,
		0.492876, -0.754759, -0.432911,
		33.220963, 23.446711, 37.053524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413456, 23.343483, 37.389874>,  <32.875950, 23.975040, 37.356560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413456, 23.343483, 37.389874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807129, 23.274464, 37.405926>,  <33.043331, 23.233053, 37.415558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807129, 23.274464, 37.405926>,  <32.413456, 23.343483, 37.389874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807129, 23.274464, 37.405926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121976, -0.495743, 0.859861,
		-0.128470, -0.851156, -0.508948,
		0.984184, -0.172546, 0.040132,
		33.102383, 23.222700, 37.417965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465622, 22.627377, 37.522499>,  <32.413456, 23.343483, 37.389874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465622, 22.627377, 37.522499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784355, 22.818295, 37.670685>,  <32.975594, 22.932844, 37.759598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784355, 22.818295, 37.670685>,  <32.465622, 22.627377, 37.522499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784355, 22.818295, 37.670685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115202, -0.481887, 0.868627,
		0.593114, -0.734830, -0.328999,
		0.796834, 0.477294, 0.370468,
		33.023407, 22.961483, 37.781826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887171, 23.095554, 37.853146>,  <32.465622, 22.627377, 37.522499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887171, 23.095554, 37.853146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865568, 23.387344, 38.125893>,  <31.852606, 23.562418, 38.289543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865568, 23.387344, 38.125893>,  <31.887171, 23.095554, 37.853146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865568, 23.387344, 38.125893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064573, -0.683991, 0.726627,
		0.996450, -0.004787, 0.084045,
		-0.054008, 0.729475, 0.681872,
		31.849365, 23.606186, 38.330456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800148, 23.832924, 37.777714>,  <31.887171, 23.095554, 37.853146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800148, 23.832924, 37.777714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483231, 24.032150, 37.918682>,  <31.293079, 24.151686, 38.003265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483231, 24.032150, 37.918682>,  <31.800148, 23.832924, 37.777714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483231, 24.032150, 37.918682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216323, 0.769394, -0.601030,
		-0.570505, -0.399955, -0.717329,
		-0.792293, 0.498065, 0.352423,
		31.245543, 24.181570, 38.024410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433260, 24.051691, 37.186726>,  <31.800148, 23.832924, 37.777714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433260, 24.051691, 37.186726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400789, 24.310459, 37.490013>,  <31.381306, 24.465721, 37.671986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400789, 24.310459, 37.490013>,  <31.433260, 24.051691, 37.186726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400789, 24.310459, 37.490013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145872, 0.760253, -0.633037,
		-0.985967, 0.059215, -0.156083,
		-0.081178, 0.646922, 0.758223,
		31.376436, 24.504536, 37.717480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036306, 24.612614, 36.954147>,  <31.433260, 24.051691, 37.186726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036306, 24.612614, 36.954147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258154, 24.743027, 37.260376>,  <31.391262, 24.821274, 37.444115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258154, 24.743027, 37.260376>,  <31.036306, 24.612614, 36.954147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258154, 24.743027, 37.260376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269954, 0.799779, -0.536170,
		-0.787097, 0.504039, 0.355560,
		0.554620, 0.326033, 0.765571,
		31.424540, 24.840837, 37.490047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961939, 25.309269, 37.056252>,  <31.036306, 24.612614, 36.954147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961939, 25.309269, 37.056252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300524, 25.281502, 37.267410>,  <31.503675, 25.264841, 37.394108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300524, 25.281502, 37.267410>,  <30.961939, 25.309269, 37.056252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300524, 25.281502, 37.267410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311274, 0.868904, -0.384857,
		-0.431980, 0.490089, 0.757103,
		0.846464, -0.069416, 0.527902,
		31.554462, 25.260677, 37.425781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067978, 25.920038, 37.454010>,  <30.961939, 25.309269, 37.056252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067978, 25.920038, 37.454010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446924, 25.799316, 37.411282>,  <31.674292, 25.726883, 37.385643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446924, 25.799316, 37.411282>,  <31.067978, 25.920038, 37.454010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446924, 25.799316, 37.411282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248580, 0.903691, -0.348642,
		0.201756, 0.303739, 0.931149,
		0.947366, -0.301805, -0.106821,
		31.731134, 25.708775, 37.379234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436443, 26.511286, 37.846455>,  <31.067978, 25.920038, 37.454010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436443, 26.511286, 37.846455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717377, 26.338142, 37.620407>,  <31.885937, 26.234257, 37.484779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717377, 26.338142, 37.620407>,  <31.436443, 26.511286, 37.846455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717377, 26.338142, 37.620407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313141, 0.900809, -0.300810,
		0.639272, 0.034308, 0.768215,
		0.702335, -0.432859, -0.565119,
		31.928078, 26.208284, 37.450871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018864, 27.042629, 37.827557>,  <31.436443, 26.511286, 37.846455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018864, 27.042629, 37.827557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071121, 26.809902, 37.506454>,  <32.102478, 26.670265, 37.313793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071121, 26.809902, 37.506454>,  <32.018864, 27.042629, 37.827557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071121, 26.809902, 37.506454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349372, 0.784774, -0.511926,
		0.927831, -0.213578, 0.305800,
		0.130648, -0.581819, -0.802756,
		32.110317, 26.635357, 37.265629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730251, 27.075340, 37.621368>,  <32.018864, 27.042629, 37.827557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730251, 27.075340, 37.621368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527489, 26.963493, 37.295212>,  <32.405830, 26.896385, 37.099518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527489, 26.963493, 37.295212>,  <32.730251, 27.075340, 37.621368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527489, 26.963493, 37.295212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286769, 0.837345, -0.465421,
		0.812902, -0.469753, -0.344271,
		-0.506906, -0.279615, -0.815390,
		32.375416, 26.879608, 37.050594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113171, 27.121138, 37.041092>,  <32.730251, 27.075340, 37.621368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113171, 27.121138, 37.041092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760975, 27.138870, 36.852299>,  <32.549656, 27.149509, 36.739025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760975, 27.138870, 36.852299>,  <33.113171, 27.121138, 37.041092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760975, 27.138870, 36.852299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371618, 0.682701, -0.629142,
		0.294331, -0.729352, -0.617588,
		-0.880494, 0.044331, -0.471980,
		32.496826, 27.152170, 36.710705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237392, 27.086355, 36.300968>,  <33.113171, 27.121138, 37.041092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237392, 27.086355, 36.300968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875477, 27.247082, 36.357399>,  <32.658329, 27.343517, 36.391258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875477, 27.247082, 36.357399>,  <33.237392, 27.086355, 36.300968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875477, 27.247082, 36.357399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210793, 0.710405, -0.671484,
		-0.370037, -0.577812, -0.727466,
		-0.904787, 0.401819, 0.141077,
		32.604042, 27.367628, 36.399723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978737, 27.025938, 35.688557>,  <33.237392, 27.086355, 36.300968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978737, 27.025938, 35.688557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754524, 27.302082, 35.871513>,  <32.619995, 27.467768, 35.981289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754524, 27.302082, 35.871513>,  <32.978737, 27.025938, 35.688557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754524, 27.302082, 35.871513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122682, 0.615445, -0.778573,
		-0.818995, -0.380301, -0.429672,
		-0.560532, 0.690360, 0.457391,
		32.586365, 27.509190, 36.008732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449459, 27.121334, 35.187504>,  <32.978737, 27.025938, 35.688557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449459, 27.121334, 35.187504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413605, 27.428211, 35.441551>,  <32.392090, 27.612337, 35.593979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413605, 27.428211, 35.441551>,  <32.449459, 27.121334, 35.187504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413605, 27.428211, 35.441551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126960, 0.623684, -0.771297,
		-0.987849, -0.149773, 0.041497,
		-0.089639, 0.767194, 0.635121,
		32.386715, 27.658369, 35.632088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835114, 27.394648, 34.974419>,  <32.449459, 27.121334, 35.187504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835114, 27.394648, 34.974419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031048, 27.672863, 35.184669>,  <32.148609, 27.839792, 35.310822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031048, 27.672863, 35.184669>,  <31.835114, 27.394648, 34.974419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031048, 27.672863, 35.184669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174855, 0.669040, -0.722365,
		-0.854099, 0.261933, 0.449339,
		0.489837, 0.695540, 0.525627,
		32.177998, 27.881525, 35.342358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294081, 27.918770, 35.123295>,  <31.835114, 27.394648, 34.974419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294081, 27.918770, 35.123295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650785, 28.099728, 35.127350>,  <31.864809, 28.208302, 35.129784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650785, 28.099728, 35.127350>,  <31.294081, 27.918770, 35.123295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650785, 28.099728, 35.127350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372080, 0.745827, -0.552537,
		-0.257523, 0.488960, 0.833427,
		0.891761, 0.452393, 0.010135,
		31.918314, 28.235445, 35.130390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092760, 28.709534, 34.934933>,  <31.294081, 27.918770, 35.123295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092760, 28.709534, 34.934933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492186, 28.698376, 34.916622>,  <31.731840, 28.691681, 34.905636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492186, 28.698376, 34.916622>,  <31.092760, 28.709534, 34.934933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492186, 28.698376, 34.916622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014309, 0.684219, -0.729137,
		0.051661, 0.728743, 0.682836,
		0.998562, -0.027897, -0.045775,
		31.791754, 28.690006, 34.902889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414738, 29.407928, 35.184727>,  <31.092760, 28.709534, 34.934933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414738, 29.407928, 35.184727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663397, 29.209538, 34.942219>,  <31.812592, 29.090504, 34.796715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663397, 29.209538, 34.942219>,  <31.414738, 29.407928, 35.184727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663397, 29.209538, 34.942219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004331, 0.771807, -0.635842,
		0.783287, 0.397894, 0.477642,
		0.621646, -0.495977, -0.606270,
		31.849890, 29.060743, 34.760338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902414, 29.846506, 34.875011>,  <31.414738, 29.407928, 35.184727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902414, 29.846506, 34.875011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942316, 29.546169, 34.613850>,  <31.966257, 29.365967, 34.457153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942316, 29.546169, 34.613850>,  <31.902414, 29.846506, 34.875011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942316, 29.546169, 34.613850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255404, 0.653514, -0.712522,
		0.961675, -0.095679, 0.256958,
		0.099752, -0.750843, -0.652905,
		31.972242, 29.320917, 34.417976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539726, 30.023109, 34.468166>,  <31.902414, 29.846506, 34.875011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539726, 30.023109, 34.468166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354912, 29.738049, 34.257015>,  <32.244022, 29.567013, 34.130325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354912, 29.738049, 34.257015>,  <32.539726, 30.023109, 34.468166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354912, 29.738049, 34.257015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446681, 0.327207, -0.832713,
		0.766159, -0.620533, 0.167148,
		-0.462034, -0.712653, -0.527873,
		32.216301, 29.524252, 34.098652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004658, 29.761934, 34.056347>,  <32.539726, 30.023109, 34.468166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004658, 29.761934, 34.056347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661552, 29.649113, 33.884441>,  <32.455688, 29.581419, 33.781300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661552, 29.649113, 33.884441>,  <33.004658, 29.761934, 34.056347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661552, 29.649113, 33.884441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357075, 0.274490, -0.892834,
		0.369795, -0.919293, -0.134731,
		-0.857758, -0.282056, -0.429762,
		32.404224, 29.564497, 33.755512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249828, 29.306463, 33.488411>,  <33.004658, 29.761934, 34.056347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249828, 29.306463, 33.488411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887676, 29.459789, 33.415344>,  <32.670387, 29.551785, 33.371506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887676, 29.459789, 33.415344>,  <33.249828, 29.306463, 33.488411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887676, 29.459789, 33.415344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339843, 0.396244, -0.852935,
		-0.254562, -0.834303, -0.489016,
		-0.905376, 0.383314, -0.182663,
		32.616062, 29.574783, 33.360546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319633, 29.399765, 32.806595>,  <33.249828, 29.306463, 33.488411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319633, 29.399765, 32.806595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010258, 29.637096, 32.895809>,  <32.824631, 29.779495, 32.949337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010258, 29.637096, 32.895809>,  <33.319633, 29.399765, 32.806595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010258, 29.637096, 32.895809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209709, 0.571576, -0.793299,
		-0.598171, -0.566798, -0.566508,
		-0.773443, 0.593330, 0.223038,
		32.778225, 29.815096, 32.962719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127319, 29.617178, 32.166454>,  <33.319633, 29.399765, 32.806595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127319, 29.617178, 32.166454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929222, 29.869255, 32.405651>,  <32.810364, 30.020502, 32.549168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929222, 29.869255, 32.405651>,  <33.127319, 29.617178, 32.166454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929222, 29.869255, 32.405651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025611, 0.677439, -0.735133,
		-0.868376, -0.379386, -0.319358,
		-0.495245, 0.630193, 0.597988,
		32.780647, 30.058313, 32.585049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511559, 29.970911, 31.825384>,  <33.127319, 29.617178, 32.166454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511559, 29.970911, 31.825384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630329, 30.217598, 32.116997>,  <32.701591, 30.365610, 32.291965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630329, 30.217598, 32.116997>,  <32.511559, 29.970911, 31.825384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630329, 30.217598, 32.116997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111094, 0.735971, -0.667836,
		-0.948414, 0.279293, 0.150019,
		0.296931, 0.616719, 0.729033,
		32.719410, 30.402615, 32.335705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022804, 30.636055, 31.775810>,  <32.511559, 29.970911, 31.825384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022804, 30.636055, 31.775810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334103, 30.739590, 32.004665>,  <32.520882, 30.801710, 32.141979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334103, 30.739590, 32.004665>,  <32.022804, 30.636055, 31.775810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334103, 30.739590, 32.004665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287409, 0.663256, -0.691005,
		-0.558330, 0.702207, 0.441783,
		0.778244, 0.258836, 0.572137,
		32.567577, 30.817240, 32.176308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923801, 31.313396, 31.877638>,  <32.022804, 30.636055, 31.775810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923801, 31.313396, 31.877638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311665, 31.227379, 31.924145>,  <32.544384, 31.175768, 31.952049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311665, 31.227379, 31.924145>,  <31.923801, 31.313396, 31.877638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311665, 31.227379, 31.924145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234820, 0.687086, -0.687584,
		0.067976, 0.694023, 0.716736,
		0.969659, -0.215043, 0.116266,
		32.602562, 31.162867, 31.959024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280251, 31.998926, 31.718681>,  <31.923801, 31.313396, 31.877638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280251, 31.998926, 31.718681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565243, 31.719105, 31.696808>,  <32.736240, 31.551212, 31.683683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565243, 31.719105, 31.696808>,  <32.280251, 31.998926, 31.718681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565243, 31.719105, 31.696808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502939, 0.563468, -0.655405,
		0.489305, 0.439462, 0.753295,
		0.712483, -0.699555, -0.054684,
		32.778988, 31.509239, 31.680403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018566, 32.353710, 31.775991>,  <32.280251, 31.998926, 31.718681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018566, 32.353710, 31.775991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055344, 31.999660, 31.593521>,  <33.077412, 31.787230, 31.484039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055344, 31.999660, 31.593521>,  <33.018566, 32.353710, 31.775991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055344, 31.999660, 31.593521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656528, 0.398327, -0.640553,
		0.748677, -0.240596, 0.617734,
		0.091946, -0.885127, -0.456176,
		33.082928, 31.734123, 31.456669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675037, 32.407429, 31.582527>,  <33.018566, 32.353710, 31.775991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675037, 32.407429, 31.582527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512093, 32.122395, 31.354042>,  <33.414326, 31.951374, 31.216951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512093, 32.122395, 31.354042>,  <33.675037, 32.407429, 31.582527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512093, 32.122395, 31.354042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410830, 0.415619, -0.811468,
		0.815644, -0.565231, 0.123443,
		-0.407362, -0.712583, -0.571212,
		33.389885, 31.908619, 31.182678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214535, 32.152905, 31.211493>,  <33.675037, 32.407429, 31.582527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214535, 32.152905, 31.211493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902126, 32.016590, 31.002163>,  <33.714680, 31.934801, 30.876566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902126, 32.016590, 31.002163>,  <34.214535, 32.152905, 31.211493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902126, 32.016590, 31.002163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462511, 0.247425, -0.851389,
		0.419629, -0.906996, -0.035625,
		-0.781021, -0.340791, -0.523323,
		33.667820, 31.914352, 30.845165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537933, 31.722494, 30.658089>,  <34.214535, 32.152905, 31.211493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537933, 31.722494, 30.658089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164429, 31.791016, 30.532398>,  <33.940327, 31.832129, 30.456984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164429, 31.791016, 30.532398>,  <34.537933, 31.722494, 30.658089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164429, 31.791016, 30.532398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313563, -0.031639, -0.949040,
		-0.172518, -0.984710, -0.024172,
		-0.933764, 0.171306, -0.314227,
		33.884300, 31.842407, 30.438129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447258, 31.262024, 30.133596>,  <34.537933, 31.722494, 30.658089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447258, 31.262024, 30.133596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142586, 31.514889, 30.076721>,  <33.959782, 31.666607, 30.042597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142586, 31.514889, 30.076721>,  <34.447258, 31.262024, 30.133596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142586, 31.514889, 30.076721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253289, 0.088505, -0.963334,
		-0.596398, -0.769765, -0.227531,
		-0.761678, 0.632162, -0.142189,
		33.914082, 31.704536, 30.034065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126274, 31.057673, 29.562733>,  <34.447258, 31.262024, 30.133596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126274, 31.057673, 29.562733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032146, 31.446083, 29.579361>,  <33.975670, 31.679131, 29.589338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032146, 31.446083, 29.579361>,  <34.126274, 31.057673, 29.562733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032146, 31.446083, 29.579361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165183, 0.082109, -0.982839,
		-0.957777, -0.224418, -0.179719,
		-0.235323, 0.971028, 0.041572,
		33.961548, 31.737391, 29.591833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695442, 31.177752, 28.982868>,  <34.126274, 31.057673, 29.562733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695442, 31.177752, 28.982868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823643, 31.542160, 29.086647>,  <33.900562, 31.760805, 29.148914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823643, 31.542160, 29.086647>,  <33.695442, 31.177752, 28.982868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823643, 31.542160, 29.086647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245519, 0.184642, -0.951645,
		-0.914875, 0.368706, -0.164495,
		0.320505, 0.911023, 0.259448,
		33.919796, 31.815468, 29.164482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420433, 31.695684, 28.560740>,  <33.695442, 31.177752, 28.982868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420433, 31.695684, 28.560740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760612, 31.850475, 28.703278>,  <33.964722, 31.943350, 28.788801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760612, 31.850475, 28.703278>,  <33.420433, 31.695684, 28.560740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760612, 31.850475, 28.703278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200699, 0.387475, -0.899768,
		-0.486264, 0.836727, 0.251863,
		0.850451, 0.386976, 0.356346,
		34.015747, 31.966568, 28.810181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446453, 32.339058, 28.190702>,  <33.420433, 31.695684, 28.560740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446453, 32.339058, 28.190702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817398, 32.305389, 28.336529>,  <34.039967, 32.285191, 28.424025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817398, 32.305389, 28.336529>,  <33.446453, 32.339058, 28.190702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817398, 32.305389, 28.336529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338325, 0.604733, -0.720996,
		-0.159780, 0.791968, 0.589285,
		0.927366, -0.084169, 0.364566,
		34.095608, 32.280140, 28.445898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666855, 33.009544, 28.128620>,  <33.446453, 32.339058, 28.190702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666855, 33.009544, 28.128620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006542, 32.805347, 28.182621>,  <34.210354, 32.682831, 28.215021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006542, 32.805347, 28.182621>,  <33.666855, 33.009544, 28.128620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006542, 32.805347, 28.182621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459120, 0.587552, -0.666327,
		0.260832, 0.627841, 0.733337,
		0.849221, -0.510489, 0.135002,
		34.261307, 32.652203, 28.223122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225716, 33.530792, 28.328436>,  <33.666855, 33.009544, 28.128620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225716, 33.530792, 28.328436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408459, 33.207886, 28.178978>,  <34.518105, 33.014141, 28.089304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408459, 33.207886, 28.178978>,  <34.225716, 33.530792, 28.328436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408459, 33.207886, 28.178978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640732, 0.590000, -0.491287,
		0.617048, -0.014959, 0.786783,
		0.456853, -0.807265, -0.373643,
		34.545513, 32.965706, 28.066885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109894, 33.599415, 28.185900>,  <34.225716, 33.530792, 28.328436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109894, 33.599415, 28.185900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992294, 33.295994, 27.953293>,  <34.921734, 33.113941, 27.813728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992294, 33.295994, 27.953293>,  <35.109894, 33.599415, 28.185900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992294, 33.295994, 27.953293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540361, 0.369933, -0.755751,
		0.788399, -0.536422, 0.301131,
		-0.294003, -0.758552, -0.581516,
		34.904095, 33.068428, 27.778837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652939, 33.492218, 27.837639>,  <35.109894, 33.599415, 28.185900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652939, 33.492218, 27.837639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366432, 33.311718, 27.624722>,  <35.194527, 33.203419, 27.496971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366432, 33.311718, 27.624722>,  <35.652939, 33.492218, 27.837639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366432, 33.311718, 27.624722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467327, 0.256291, -0.846121,
		0.518230, -0.854805, 0.027306,
		-0.716270, -0.451246, -0.532291,
		35.151550, 33.176346, 27.465034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977692, 33.353889, 27.228264>,  <35.652939, 33.492218, 27.837639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977692, 33.353889, 27.228264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592297, 33.319065, 27.126980>,  <35.361061, 33.298172, 27.066210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592297, 33.319065, 27.126980>,  <35.977692, 33.353889, 27.228264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592297, 33.319065, 27.126980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217534, 0.296870, -0.929811,
		0.156121, -0.950941, -0.267091,
		-0.963486, -0.087061, -0.253210,
		35.303249, 33.292946, 27.051018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928650, 32.961781, 26.483099>,  <35.977692, 33.353889, 27.228264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928650, 32.961781, 26.483099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591595, 33.165062, 26.554302>,  <35.389362, 33.287033, 26.597025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591595, 33.165062, 26.554302>,  <35.928650, 32.961781, 26.483099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591595, 33.165062, 26.554302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087805, 0.455827, -0.885727,
		-0.531274, -0.730716, -0.428720,
		-0.842637, 0.508208, 0.178009,
		35.338802, 33.317524, 26.607704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485790, 32.846798, 25.921137>,  <35.928650, 32.961781, 26.483099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485790, 32.846798, 25.921137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332600, 33.181213, 26.078297>,  <35.240685, 33.381863, 26.172592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332600, 33.181213, 26.078297>,  <35.485790, 32.846798, 25.921137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332600, 33.181213, 26.078297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147375, 0.475175, -0.867461,
		-0.911925, -0.274316, -0.305193,
		-0.382978, 0.836038, 0.392897,
		35.217705, 33.432026, 26.196165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929298, 33.097137, 25.500462>,  <35.485790, 32.846798, 25.921137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929298, 33.097137, 25.500462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017784, 33.443710, 25.679508>,  <35.070873, 33.651653, 25.786936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017784, 33.443710, 25.679508>,  <34.929298, 33.097137, 25.500462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017784, 33.443710, 25.679508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060283, 0.445961, -0.893020,
		-0.973361, 0.224528, 0.046420,
		0.221210, 0.866433, 0.447617,
		35.084148, 33.703640, 25.813793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480778, 33.632183, 25.262337>,  <34.929298, 33.097137, 25.500462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480778, 33.632183, 25.262337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784229, 33.852600, 25.401382>,  <34.966301, 33.984848, 25.484810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784229, 33.852600, 25.401382>,  <34.480778, 33.632183, 25.262337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784229, 33.852600, 25.401382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063999, 0.593989, -0.801924,
		-0.648370, 0.586117, 0.485884,
		0.758631, 0.551039, 0.347614,
		35.011818, 34.017910, 25.505667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749798, 33.618919, 25.473686>,  <34.480778, 33.632183, 25.262337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749798, 33.618919, 25.473686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392982, 33.629429, 25.293209>,  <33.178894, 33.635735, 25.184923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392982, 33.629429, 25.293209>,  <33.749798, 33.618919, 25.473686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392982, 33.629429, 25.293209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443831, -0.239384, 0.863545,
		-0.085317, 0.970569, 0.225203,
		-0.892040, 0.026277, -0.451192,
		33.125370, 33.637314, 25.157852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445354, 34.002499, 25.922441>,  <33.749798, 33.618919, 25.473686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445354, 34.002499, 25.922441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162388, 33.799873, 25.725281>,  <32.992607, 33.678299, 25.606985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162388, 33.799873, 25.725281>,  <33.445354, 34.002499, 25.922441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162388, 33.799873, 25.725281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491570, -0.148467, 0.858089,
		-0.507856, 0.849324, -0.143982,
		-0.707419, -0.506563, -0.492902,
		32.950161, 33.647903, 25.577410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812725, 34.309238, 26.120197>,  <33.445354, 34.002499, 25.922441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812725, 34.309238, 26.120197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704975, 33.946014, 25.991909>,  <32.640327, 33.728081, 25.914936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704975, 33.946014, 25.991909>,  <32.812725, 34.309238, 26.120197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704975, 33.946014, 25.991909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456231, -0.172960, 0.872891,
		-0.848111, 0.381454, -0.367696,
		-0.269372, -0.908063, -0.320720,
		32.624165, 33.673595, 25.895693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119469, 34.250484, 26.308035>,  <32.812725, 34.309238, 26.120197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119469, 34.250484, 26.308035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267628, 33.884960, 26.241394>,  <32.356522, 33.665646, 26.201410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267628, 33.884960, 26.241394>,  <32.119469, 34.250484, 26.308035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267628, 33.884960, 26.241394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330194, -0.297175, 0.895912,
		-0.868204, -0.276832, -0.411807,
		0.370396, -0.913811, -0.166600,
		32.378746, 33.610817, 26.191414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549992, 33.838669, 26.358088>,  <32.119469, 34.250484, 26.308035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549992, 33.838669, 26.358088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840738, 33.567627, 26.402828>,  <32.015186, 33.405003, 26.429672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840738, 33.567627, 26.402828>,  <31.549992, 33.838669, 26.358088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840738, 33.567627, 26.402828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425962, -0.317057, 0.847367,
		-0.538721, -0.663567, -0.519094,
		0.726867, -0.677608, 0.111849,
		32.058800, 33.364346, 26.436382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210484, 33.229561, 26.527569>,  <31.549992, 33.838669, 26.358088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210484, 33.229561, 26.527569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578812, 33.176575, 26.674290>,  <31.799809, 33.144783, 26.762323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578812, 33.176575, 26.674290>,  <31.210484, 33.229561, 26.527569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578812, 33.176575, 26.674290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389495, -0.265091, 0.882055,
		-0.019599, -0.955082, -0.295693,
		0.920820, -0.132459, 0.366804,
		31.855057, 33.136837, 26.784330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064604, 32.744736, 26.944994>,  <31.210484, 33.229561, 26.527569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064604, 32.744736, 26.944994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434671, 32.824623, 27.074097>,  <31.656712, 32.872555, 27.151558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434671, 32.824623, 27.074097>,  <31.064604, 32.744736, 26.944994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434671, 32.824623, 27.074097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239879, -0.351319, 0.905005,
		0.294141, -0.914705, -0.277120,
		0.925170, 0.199724, 0.322756,
		31.712223, 32.884541, 27.170923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340105, 32.106205, 27.161049>,  <31.064604, 32.744736, 26.944994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340105, 32.106205, 27.161049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554262, 32.389019, 27.345852>,  <31.682756, 32.558708, 27.456734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554262, 32.389019, 27.345852>,  <31.340105, 32.106205, 27.161049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554262, 32.389019, 27.345852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173077, -0.443561, 0.879373,
		0.826680, -0.550772, -0.115106,
		0.535391, 0.707039, 0.462010,
		31.714880, 32.601131, 27.484455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696831, 31.720287, 27.560816>,  <31.340105, 32.106205, 27.161049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696831, 31.720287, 27.560816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685335, 32.097309, 27.693939>,  <31.678438, 32.323521, 27.773813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685335, 32.097309, 27.693939>,  <31.696831, 31.720287, 27.560816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685335, 32.097309, 27.693939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273819, -0.327636, 0.904256,
		0.961352, -0.065143, 0.267505,
		-0.028738, 0.942556, 0.332811,
		31.676714, 32.380077, 27.793783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880310, 31.657816, 28.272739>,  <31.696831, 31.720287, 27.560816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880310, 31.657816, 28.272739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743139, 32.033550, 28.275528>,  <31.660837, 32.258991, 28.277201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743139, 32.033550, 28.275528>,  <31.880310, 31.657816, 28.272739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743139, 32.033550, 28.275528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192382, -0.077495, 0.978256,
		0.919451, 0.334130, 0.207286,
		-0.342928, 0.939336, 0.006972,
		31.640261, 32.315350, 28.277620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184128, 31.971781, 28.775751>,  <31.880310, 31.657816, 28.272739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184128, 31.971781, 28.775751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851156, 32.191006, 28.743046>,  <31.651373, 32.322540, 28.723423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851156, 32.191006, 28.743046>,  <32.184128, 31.971781, 28.775751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851156, 32.191006, 28.743046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339290, -0.387459, 0.857180,
		0.438107, 0.741286, 0.508485,
		-0.832433, 0.548061, -0.081762,
		31.601427, 32.355423, 28.718517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113297, 32.211754, 29.414885>,  <32.184128, 31.971781, 28.775751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113297, 32.211754, 29.414885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753042, 32.280071, 29.255043>,  <31.536890, 32.321064, 29.159138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753042, 32.280071, 29.255043>,  <32.113297, 32.211754, 29.414885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753042, 32.280071, 29.255043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433674, -0.294034, 0.851746,
		0.027978, 0.940411, 0.338888,
		-0.900636, 0.170797, -0.399605,
		31.482851, 32.331310, 29.135162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735493, 32.528893, 29.955555>,  <32.113297, 32.211754, 29.414885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735493, 32.528893, 29.955555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461903, 32.370209, 29.710670>,  <31.297749, 32.274998, 29.563740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461903, 32.370209, 29.710670>,  <31.735493, 32.528893, 29.955555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461903, 32.370209, 29.710670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494161, -0.365387, 0.788858,
		-0.536638, 0.842090, 0.053879,
		-0.683976, -0.396706, -0.612209,
		31.256710, 32.251198, 29.527008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063995, 32.869114, 30.240631>,  <31.735493, 32.528893, 29.955555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063995, 32.869114, 30.240631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979694, 32.553379, 30.009972>,  <30.929113, 32.363937, 29.871576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979694, 32.553379, 30.009972>,  <31.063995, 32.869114, 30.240631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979694, 32.553379, 30.009972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497063, -0.421413, 0.758512,
		-0.841732, 0.446488, -0.303539,
		-0.210751, -0.789341, -0.576649,
		30.916470, 32.316578, 29.836977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343697, 32.843067, 30.271557>,  <31.063995, 32.869114, 30.240631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343697, 32.843067, 30.271557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477282, 32.472843, 30.200218>,  <30.557432, 32.250710, 30.157415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477282, 32.472843, 30.200218>,  <30.343697, 32.843067, 30.271557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477282, 32.472843, 30.200218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497611, -0.333814, 0.800594,
		-0.800533, -0.178622, -0.572051,
		0.333962, -0.925561, -0.178345,
		30.577471, 32.195175, 30.146715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823757, 32.429306, 30.551994>,  <30.343697, 32.843067, 30.271557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823757, 32.429306, 30.551994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131744, 32.175194, 30.528133>,  <30.316538, 32.022724, 30.513817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131744, 32.175194, 30.528133>,  <29.823757, 32.429306, 30.551994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131744, 32.175194, 30.528133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268748, -0.407671, 0.872685,
		-0.578725, -0.655909, -0.484626,
		0.769969, -0.635287, -0.059655,
		30.362736, 31.984608, 30.510237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610855, 31.766825, 30.524591>,  <29.823757, 32.429306, 30.551994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610855, 31.766825, 30.524591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971510, 31.758518, 30.697392>,  <30.187902, 31.753534, 30.801071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971510, 31.758518, 30.697392>,  <29.610855, 31.766825, 30.524591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971510, 31.758518, 30.697392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394942, -0.446650, 0.802823,
		0.176281, -0.894468, -0.410917,
		0.901635, -0.020766, 0.432000,
		30.242001, 31.752289, 30.826992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594952, 31.178808, 30.840555>,  <29.610855, 31.766825, 30.524591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594952, 31.178808, 30.840555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899895, 31.366165, 31.019180>,  <30.082861, 31.478579, 31.126356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899895, 31.366165, 31.019180>,  <29.594952, 31.178808, 30.840555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899895, 31.366165, 31.019180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283961, -0.377956, 0.881201,
		0.581529, -0.798598, -0.155133,
		0.762358, 0.468392, 0.446563,
		30.128603, 31.506683, 31.153149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821898, 30.599937, 31.210787>,  <29.594952, 31.178808, 30.840555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821898, 30.599937, 31.210787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007437, 30.908611, 31.384842>,  <30.118761, 31.093815, 31.489275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007437, 30.908611, 31.384842>,  <29.821898, 30.599937, 31.210787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007437, 30.908611, 31.384842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170003, -0.404514, 0.898592,
		0.869450, -0.490786, -0.056445,
		0.463849, 0.771685, 0.435140,
		30.146591, 31.140116, 31.515385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389381, 30.309917, 31.498055>,  <29.821898, 30.599937, 31.210787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389381, 30.309917, 31.498055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338984, 30.657181, 31.690063>,  <30.308744, 30.865540, 31.805269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338984, 30.657181, 31.690063>,  <30.389381, 30.309917, 31.498055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338984, 30.657181, 31.690063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080716, -0.491248, 0.867272,
		0.988742, 0.070526, 0.131969,
		-0.125994, 0.868160, 0.480025,
		30.301186, 30.917629, 31.834070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932873, 30.378374, 32.046700>,  <30.389381, 30.309917, 31.498055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932873, 30.378374, 32.046700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644279, 30.625717, 32.171345>,  <30.471125, 30.774122, 32.246132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644279, 30.625717, 32.171345>,  <30.932873, 30.378374, 32.046700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644279, 30.625717, 32.171345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043519, -0.489624, 0.870847,
		0.691065, 0.614739, 0.380165,
		-0.721482, 0.618356, 0.311609,
		30.427835, 30.811224, 32.264828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966816, 30.534937, 32.709808>,  <30.932873, 30.378374, 32.046700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966816, 30.534937, 32.709808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575298, 30.585526, 32.645355>,  <30.340387, 30.615879, 32.606682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575298, 30.585526, 32.645355>,  <30.966816, 30.534937, 32.709808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575298, 30.585526, 32.645355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204835, -0.607667, 0.767322,
		-0.000871, 0.784058, 0.620688,
		-0.978796, 0.126471, -0.161132,
		30.281660, 30.623466, 32.597015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576824, 30.734421, 33.362408>,  <30.966816, 30.534937, 32.709808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576824, 30.734421, 33.362408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322111, 30.551403, 33.114162>,  <30.169283, 30.441593, 32.965214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322111, 30.551403, 33.114162>,  <30.576824, 30.734421, 33.362408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322111, 30.551403, 33.114162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231807, -0.654061, 0.720048,
		-0.735374, 0.602376, 0.310432,
		-0.636781, -0.457545, -0.620615,
		30.131077, 30.414139, 32.927979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026094, 30.466415, 33.802288>,  <30.576824, 30.734421, 33.362408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026094, 30.466415, 33.802288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959993, 30.235291, 33.482582>,  <29.920332, 30.096615, 33.290760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959993, 30.235291, 33.482582>,  <30.026094, 30.466415, 33.802288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959993, 30.235291, 33.482582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079931, -0.799895, 0.594793,
		-0.983007, 0.162178, 0.086000,
		-0.165253, -0.577812, -0.799265,
		29.910418, 30.061947, 33.242802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481737, 30.038229, 33.968712>,  <30.026094, 30.466415, 33.802288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481737, 30.038229, 33.968712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639292, 29.831875, 33.664417>,  <29.733824, 29.708063, 33.481842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639292, 29.831875, 33.664417>,  <29.481737, 30.038229, 33.968712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639292, 29.831875, 33.664417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182952, -0.855085, 0.485138,
		-0.900768, -0.051911, -0.431187,
		0.393885, -0.515883, -0.760736,
		29.757458, 29.677111, 33.436195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991333, 29.521996, 33.779308>,  <29.481737, 30.038229, 33.968712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991333, 29.521996, 33.779308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349659, 29.388035, 33.662445>,  <29.564655, 29.307659, 33.592327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349659, 29.388035, 33.662445>,  <28.991333, 29.521996, 33.779308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349659, 29.388035, 33.662445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253266, -0.924884, 0.283630,
		-0.365199, -0.180087, -0.913345,
		0.895816, -0.334901, -0.292157,
		29.618404, 29.287565, 33.574799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808361, 28.849890, 33.377399>,  <28.991333, 29.521996, 33.779308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808361, 28.849890, 33.377399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196890, 28.852917, 33.472462>,  <29.430006, 28.854733, 33.529499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196890, 28.852917, 33.472462>,  <28.808361, 28.849890, 33.377399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196890, 28.852917, 33.472462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050697, -0.969919, 0.238088,
		0.232308, -0.243308, -0.941719,
		0.971320, 0.007568, 0.237655,
		29.488285, 28.855186, 33.543758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146675, 28.364790, 32.918262>,  <28.808361, 28.849890, 33.377399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146675, 28.364790, 32.918262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402277, 28.376480, 33.225723>,  <29.555637, 28.383493, 33.410198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402277, 28.376480, 33.225723>,  <29.146675, 28.364790, 32.918262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402277, 28.376480, 33.225723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070548, -0.997293, -0.020733,
		0.765961, 0.067475, -0.639336,
		0.639004, 0.029223, 0.768648,
		29.593979, 28.385246, 33.456318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567810, 27.805103, 32.780174>,  <29.146675, 28.364790, 32.918262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567810, 27.805103, 32.780174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665876, 27.886292, 33.159374>,  <29.724716, 27.935003, 33.386894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665876, 27.886292, 33.159374>,  <29.567810, 27.805103, 32.780174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665876, 27.886292, 33.159374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256597, -0.956552, 0.138440,
		0.934907, 0.209312, -0.286597,
		0.245168, 0.202968, 0.947996,
		29.739428, 27.947182, 33.443771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358315, 27.675961, 32.935169>,  <29.567810, 27.805103, 32.780174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358315, 27.675961, 32.935169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144686, 27.638580, 33.271271>,  <30.016508, 27.616152, 33.472931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144686, 27.638580, 33.271271>,  <30.358315, 27.675961, 32.935169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144686, 27.638580, 33.271271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249070, -0.967155, 0.050745,
		0.807917, 0.236385, 0.539807,
		-0.534073, -0.093452, 0.840258,
		29.984465, 27.610544, 33.523350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841957, 27.286690, 33.305809>,  <30.358315, 27.675961, 32.935169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841957, 27.286690, 33.305809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481752, 27.242886, 33.474136>,  <30.265631, 27.216602, 33.575134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481752, 27.242886, 33.474136>,  <30.841957, 27.286690, 33.305809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481752, 27.242886, 33.474136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263877, -0.906828, 0.328683,
		0.345616, 0.407027, 0.845505,
		-0.900510, -0.109511, 0.420819,
		30.211599, 27.210032, 33.600384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033966, 27.092569, 33.965626>,  <30.841957, 27.286690, 33.305809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033966, 27.092569, 33.965626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650082, 26.980442, 33.973351>,  <30.419750, 26.913166, 33.977985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650082, 26.980442, 33.973351>,  <31.033966, 27.092569, 33.965626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650082, 26.980442, 33.973351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251714, -0.827179, 0.502409,
		-0.124863, 0.487029, 0.864414,
		-0.959713, -0.280317, 0.019308,
		30.362167, 26.896347, 33.979141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808979, 26.908125, 34.751263>,  <31.033966, 27.092569, 33.965626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808979, 26.908125, 34.751263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559149, 26.734295, 34.491711>,  <30.409250, 26.629997, 34.335979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559149, 26.734295, 34.491711>,  <30.808979, 26.908125, 34.751263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559149, 26.734295, 34.491711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086874, -0.864381, 0.495277,
		-0.776116, 0.252967, 0.577625,
		-0.624577, -0.434573, -0.648884,
		30.371777, 26.603924, 34.297047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312300, 26.646608, 35.132221>,  <30.808979, 26.908125, 34.751263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312300, 26.646608, 35.132221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275835, 26.418659, 34.805557>,  <30.253956, 26.281889, 34.609558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275835, 26.418659, 34.805557>,  <30.312300, 26.646608, 35.132221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275835, 26.418659, 34.805557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124101, -0.807181, 0.577111,
		-0.988073, 0.153959, 0.002863,
		-0.091162, -0.569873, -0.816661,
		30.248486, 26.247698, 34.560558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790020, 26.127197, 35.235214>,  <30.312300, 26.646608, 35.132221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790020, 26.127197, 35.235214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000315, 25.980175, 34.928360>,  <30.126492, 25.891962, 34.744247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000315, 25.980175, 34.928360>,  <29.790020, 26.127197, 35.235214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000315, 25.980175, 34.928360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025879, -0.908324, 0.417465,
		-0.850251, -0.199626, -0.487055,
		0.525741, -0.367555, -0.767138,
		30.158037, 25.869909, 34.698219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411940, 25.508770, 34.926086>,  <29.790020, 26.127197, 35.235214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411940, 25.508770, 34.926086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797859, 25.484062, 34.823837>,  <30.029411, 25.469238, 34.762486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797859, 25.484062, 34.823837>,  <29.411940, 25.508770, 34.926086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797859, 25.484062, 34.823837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010064, -0.962642, 0.270590,
		-0.262790, -0.263638, -0.928136,
		0.964801, -0.061767, -0.255626,
		30.087299, 25.465532, 34.747150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352119, 24.879642, 34.567417>,  <29.411940, 25.508770, 34.926086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352119, 24.879642, 34.567417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737827, 24.939472, 34.654884>,  <29.969252, 24.975370, 34.707363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737827, 24.939472, 34.654884>,  <29.352119, 24.879642, 34.567417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737827, 24.939472, 34.654884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095430, -0.966071, 0.239998,
		0.247145, -0.210555, -0.945825,
		0.964268, 0.149574, 0.218667,
		30.027107, 24.984344, 34.720486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698969, 24.323648, 34.153053>,  <29.352119, 24.879642, 34.567417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698969, 24.323648, 34.153053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938564, 24.452007, 34.446514>,  <30.082321, 24.529022, 34.622589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938564, 24.452007, 34.446514>,  <29.698969, 24.323648, 34.153053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938564, 24.452007, 34.446514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216039, -0.946978, 0.237822,
		0.771066, 0.016045, -0.636553,
		0.598986, 0.320897, 0.733649,
		30.118259, 24.548277, 34.666611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286072, 23.686897, 34.082924>,  <29.698969, 24.323648, 34.153053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286072, 23.686897, 34.082924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151924, 23.408283, 33.829193>,  <29.071436, 23.241116, 33.676956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151924, 23.408283, 33.829193>,  <29.286072, 23.686897, 34.082924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151924, 23.408283, 33.829193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024872, 0.666537, -0.745057,
		0.941758, -0.265648, -0.206213,
		-0.335372, -0.696534, -0.634324,
		29.051313, 23.199324, 33.638897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787079, 23.607199, 33.533077>,  <29.286072, 23.686897, 34.082924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787079, 23.607199, 33.533077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431501, 23.473633, 33.407677>,  <29.218155, 23.393494, 33.332436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431501, 23.473633, 33.407677>,  <29.787079, 23.607199, 33.533077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431501, 23.473633, 33.407677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118847, 0.492864, -0.861951,
		0.442328, -0.803485, -0.398444,
		-0.888944, -0.333912, -0.313500,
		29.164818, 23.373459, 33.313625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885769, 23.544046, 32.875820>,  <29.787079, 23.607199, 33.533077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885769, 23.544046, 32.875820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490179, 23.568901, 32.929585>,  <29.252825, 23.583815, 32.961845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490179, 23.568901, 32.929585>,  <29.885769, 23.544046, 32.875820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490179, 23.568901, 32.929585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063900, 0.639758, -0.765916,
		-0.133586, -0.766060, -0.628734,
		-0.988975, 0.062139, 0.134414,
		29.193487, 23.587543, 32.969910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477400, 23.410284, 32.204514>,  <29.885769, 23.544046, 32.875820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477400, 23.410284, 32.204514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272591, 23.646988, 32.453560>,  <29.149704, 23.789009, 32.602989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272591, 23.646988, 32.453560>,  <29.477400, 23.410284, 32.204514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272591, 23.646988, 32.453560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099930, 0.678884, -0.727413,
		-0.853139, -0.434671, -0.288471,
		-0.512024, 0.591758, 0.622619,
		29.118984, 23.824514, 32.640347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055212, 23.613834, 31.764385>,  <29.477400, 23.410284, 32.204514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055212, 23.613834, 31.764385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003160, 23.849529, 32.083351>,  <28.971930, 23.990946, 32.274731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003160, 23.849529, 32.083351>,  <29.055212, 23.613834, 31.764385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003160, 23.849529, 32.083351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236530, 0.762582, -0.602098,
		-0.962871, -0.266962, 0.040138,
		-0.130129, 0.589236, 0.797413,
		28.964123, 24.026300, 32.322575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564234, 24.086586, 31.578039>,  <29.055212, 23.613834, 31.764385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564234, 24.086586, 31.578039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759478, 24.266808, 31.877037>,  <28.876623, 24.374941, 32.056435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759478, 24.266808, 31.877037>,  <28.564234, 24.086586, 31.578039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759478, 24.266808, 31.877037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113479, 0.881943, -0.457493,
		-0.865374, 0.138482, 0.481614,
		0.488110, 0.450555, 0.747495,
		28.905910, 24.401974, 32.101284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171001, 24.807081, 31.718607>,  <28.564234, 24.086586, 31.578039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171001, 24.807081, 31.718607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522469, 24.835094, 31.907516>,  <28.733349, 24.851902, 32.020863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522469, 24.835094, 31.907516>,  <28.171001, 24.807081, 31.718607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522469, 24.835094, 31.907516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043426, 0.973359, -0.225135,
		-0.475458, 0.218328, 0.852217,
		0.878666, 0.070034, 0.472272,
		28.786068, 24.856104, 32.049198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125978, 25.341198, 32.142365>,  <28.171001, 24.807081, 31.718607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125978, 25.341198, 32.142365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505236, 25.277195, 32.032513>,  <28.732790, 25.238794, 31.966600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505236, 25.277195, 32.032513>,  <28.125978, 25.341198, 32.142365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505236, 25.277195, 32.032513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050492, 0.928898, -0.366876,
		0.313808, 0.333984, 0.888808,
		0.948143, -0.160006, -0.274633,
		28.789679, 25.229193, 31.950123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419168, 26.052887, 32.376160>,  <28.125978, 25.341198, 32.142365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419168, 26.052887, 32.376160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699886, 25.872421, 32.155636>,  <28.868317, 25.764143, 32.023323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699886, 25.872421, 32.155636>,  <28.419168, 26.052887, 32.376160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699886, 25.872421, 32.155636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292239, 0.888106, -0.354775,
		0.649679, 0.087866, 0.755114,
		0.701794, -0.451163, -0.551305,
		28.910425, 25.737072, 31.990244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127243, 26.453199, 32.411957>,  <28.419168, 26.052887, 32.376160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127243, 26.453199, 32.411957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146749, 26.244293, 32.071404>,  <29.158453, 26.118950, 31.867071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146749, 26.244293, 32.071404>,  <29.127243, 26.453199, 32.411957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146749, 26.244293, 32.071404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399607, 0.791409, -0.462586,
		0.915388, -0.317662, 0.247296,
		0.048767, -0.522267, -0.851386,
		29.161379, 26.087612, 31.815987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866930, 26.429319, 32.185894>,  <29.127243, 26.453199, 32.411957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866930, 26.429319, 32.185894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601276, 26.382164, 31.890591>,  <29.441885, 26.353870, 31.713408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601276, 26.382164, 31.890591>,  <29.866930, 26.429319, 32.185894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601276, 26.382164, 31.890591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348339, 0.824953, -0.445098,
		0.661503, -0.552769, -0.506814,
		-0.664134, -0.117890, -0.738260,
		29.402037, 26.346796, 31.669113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288557, 26.632113, 31.523636>,  <29.866930, 26.429319, 32.185894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288557, 26.632113, 31.523636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906689, 26.672127, 31.411495>,  <29.677568, 26.696135, 31.344212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906689, 26.672127, 31.411495>,  <30.288557, 26.632113, 31.523636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906689, 26.672127, 31.411495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253286, 0.767750, -0.588563,
		0.156363, -0.632892, -0.758286,
		-0.954671, 0.100034, -0.280350,
		29.620287, 26.702137, 31.327391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347517, 26.773106, 30.854593>,  <30.288557, 26.632113, 31.523636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347517, 26.773106, 30.854593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984121, 26.896328, 30.967556>,  <29.766085, 26.970261, 31.035334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984121, 26.896328, 30.967556>,  <30.347517, 26.773106, 30.854593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984121, 26.896328, 30.967556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105359, 0.822757, -0.558544,
		-0.404413, -0.477676, -0.779921,
		-0.908487, 0.308054, 0.282405,
		29.711575, 26.988745, 31.052279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131212, 27.168671, 30.257055>,  <30.347517, 26.773106, 30.854593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131212, 27.168671, 30.257055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866449, 27.272396, 30.538376>,  <29.707592, 27.334631, 30.707169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866449, 27.272396, 30.538376>,  <30.131212, 27.168671, 30.257055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866449, 27.272396, 30.538376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150879, 0.872963, -0.463866,
		-0.734243, -0.413150, -0.538697,
		-0.661909, 0.259312, 0.703302,
		29.667877, 27.350189, 30.749367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730282, 27.472414, 29.877634>,  <30.131212, 27.168671, 30.257055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730282, 27.472414, 29.877634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641069, 27.616215, 30.240074>,  <29.587542, 27.702496, 30.457539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641069, 27.616215, 30.240074>,  <29.730282, 27.472414, 29.877634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641069, 27.616215, 30.240074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206429, 0.891013, -0.404330,
		-0.952704, -0.277223, -0.124512,
		-0.223031, 0.359504, 0.906098,
		29.574160, 27.724066, 30.511904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948809, 27.790142, 29.892632>,  <29.730282, 27.472414, 29.877634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948809, 27.790142, 29.892632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141621, 27.968147, 30.194523>,  <29.257307, 28.074951, 30.375658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141621, 27.968147, 30.194523>,  <28.948809, 27.790142, 29.892632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141621, 27.968147, 30.194523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252258, 0.895422, -0.366859,
		-0.839055, -0.013549, 0.543877,
		0.482029, 0.445013, 0.754727,
		29.286230, 28.101650, 30.420940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499891, 28.354815, 30.166607>,  <28.948809, 27.790142, 29.892632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499891, 28.354815, 30.166607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876431, 28.441555, 30.270020>,  <29.102354, 28.493599, 30.332067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876431, 28.441555, 30.270020>,  <28.499891, 28.354815, 30.166607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876431, 28.441555, 30.270020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115549, 0.926997, -0.356826,
		-0.317037, 0.306025, 0.897684,
		0.941348, 0.216853, 0.258532,
		29.158834, 28.506611, 30.347580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486265, 29.020224, 30.526155>,  <28.499891, 28.354815, 30.166607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486265, 29.020224, 30.526155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864634, 28.965691, 30.408409>,  <29.091654, 28.932970, 30.337761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864634, 28.965691, 30.408409>,  <28.486265, 29.020224, 30.526155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864634, 28.965691, 30.408409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014976, 0.924788, -0.380188,
		0.324057, 0.355219, 0.876816,
		0.945919, -0.136334, -0.294364,
		29.148409, 28.924791, 30.320101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833715, 29.678738, 30.648737>,  <28.486265, 29.020224, 30.526155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833715, 29.678738, 30.648737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082708, 29.523487, 30.376892>,  <29.232105, 29.430336, 30.213785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082708, 29.523487, 30.376892>,  <28.833715, 29.678738, 30.648737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082708, 29.523487, 30.376892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218421, 0.920017, -0.325363,
		0.751535, 0.054092, 0.657471,
		0.622484, -0.388128, -0.679610,
		29.269453, 29.407049, 30.173010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330000, 30.195389, 30.634588>,  <28.833715, 29.678738, 30.648737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330000, 30.195389, 30.634588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389402, 29.986782, 30.298500>,  <29.425043, 29.861618, 30.096848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389402, 29.986782, 30.298500>,  <29.330000, 30.195389, 30.634588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389402, 29.986782, 30.298500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269183, 0.838875, -0.473105,
		0.951571, -0.155915, 0.264960,
		0.148504, -0.521516, -0.840219,
		29.433954, 29.830328, 30.046434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023149, 30.453091, 30.235182>,  <29.330000, 30.195389, 30.634588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023149, 30.453091, 30.235182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789177, 30.281525, 29.959824>,  <29.648794, 30.178585, 29.794609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789177, 30.281525, 29.959824>,  <30.023149, 30.453091, 30.235182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789177, 30.281525, 29.959824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067314, 0.820137, -0.568194,
		0.808287, -0.378691, -0.450849,
		-0.584928, -0.428916, -0.688397,
		29.613699, 30.152849, 29.753305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277882, 30.672657, 29.592779>,  <30.023149, 30.453091, 30.235182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277882, 30.672657, 29.592779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931639, 30.525578, 29.456825>,  <29.723894, 30.437330, 29.375252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931639, 30.525578, 29.456825>,  <30.277882, 30.672657, 29.592779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931639, 30.525578, 29.456825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019869, 0.653032, -0.757070,
		0.500331, -0.662077, -0.557963,
		-0.865606, -0.367700, -0.339887,
		29.671957, 30.415268, 29.354858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365160, 30.670666, 28.843176>,  <30.277882, 30.672657, 29.592779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365160, 30.670666, 28.843176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976860, 30.644192, 28.935490>,  <29.743879, 30.628307, 28.990879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976860, 30.644192, 28.935490>,  <30.365160, 30.670666, 28.843176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976860, 30.644192, 28.935490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228769, 0.546681, -0.805484,
		-0.072855, -0.834721, -0.545832,
		-0.970751, -0.066185, 0.230787,
		29.685635, 30.624336, 29.004726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136730, 30.353600, 28.264496>,  <30.365160, 30.670666, 28.843176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136730, 30.353600, 28.264496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831251, 30.540688, 28.442486>,  <29.647963, 30.652941, 28.549280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831251, 30.540688, 28.442486>,  <30.136730, 30.353600, 28.264496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831251, 30.540688, 28.442486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121448, 0.572873, -0.810597,
		-0.634045, -0.673093, -0.380700,
		-0.763700, 0.467719, 0.444973,
		29.602140, 30.681004, 28.575977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680447, 30.272713, 27.771692>,  <30.136730, 30.353600, 28.264496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680447, 30.272713, 27.771692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540060, 30.569439, 28.000263>,  <29.455828, 30.747475, 28.137405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540060, 30.569439, 28.000263>,  <29.680447, 30.272713, 27.771692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540060, 30.569439, 28.000263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303561, 0.487155, -0.818859,
		-0.885817, -0.460857, 0.054211,
		-0.350968, 0.741816, 0.571429,
		29.434771, 30.791985, 28.171692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074568, 30.462950, 27.506508>,  <29.680447, 30.272713, 27.771692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074568, 30.462950, 27.506508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166283, 30.784302, 27.726330>,  <29.221312, 30.977114, 27.858223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166283, 30.784302, 27.726330>,  <29.074568, 30.462950, 27.506508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166283, 30.784302, 27.726330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205961, 0.591855, -0.779287,
		-0.951319, 0.065495, 0.301171,
		0.229288, 0.803379, 0.549553,
		29.235069, 31.025316, 27.891195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598640, 31.008734, 27.320105>,  <29.074568, 30.462950, 27.506508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598640, 31.008734, 27.320105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928812, 31.167793, 27.480373>,  <29.126915, 31.263229, 27.576534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928812, 31.167793, 27.480373>,  <28.598640, 31.008734, 27.320105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928812, 31.167793, 27.480373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013646, 0.695517, -0.718380,
		-0.564340, 0.598440, 0.568674,
		0.825430, 0.397651, 0.400674,
		29.176441, 31.287088, 27.600576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400488, 31.672342, 27.406553>,  <28.598640, 31.008734, 27.320105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400488, 31.672342, 27.406553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799812, 31.663353, 27.385136>,  <29.039408, 31.657959, 27.372286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799812, 31.663353, 27.385136>,  <28.400488, 31.672342, 27.406553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799812, 31.663353, 27.385136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014957, 0.791436, -0.611068,
		0.056109, 0.610838, 0.789765,
		0.998313, -0.022473, -0.053543,
		29.099306, 31.656610, 27.369072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602732, 32.341953, 27.214125>,  <28.400488, 31.672342, 27.406553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602732, 32.341953, 27.214125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959423, 32.176060, 27.141663>,  <29.173437, 32.076523, 27.098185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959423, 32.176060, 27.141663>,  <28.602732, 32.341953, 27.214125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959423, 32.176060, 27.141663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158981, 0.661829, -0.732604,
		0.423730, 0.624483, 0.656106,
		0.891728, -0.414734, -0.181156,
		29.226942, 32.051640, 27.087317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050697, 32.854839, 27.102438>,  <28.602732, 32.341953, 27.214125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050697, 32.854839, 27.102438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238588, 32.544846, 26.933319>,  <29.351324, 32.358849, 26.831848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238588, 32.544846, 26.933319>,  <29.050697, 32.854839, 27.102438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238588, 32.544846, 26.933319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118711, 0.530021, -0.839634,
		0.874793, 0.344210, 0.340965,
		0.469730, -0.774982, -0.422797,
		29.379507, 32.312351, 26.806480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485027, 33.106693, 26.723007>,  <29.050697, 32.854839, 27.102438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485027, 33.106693, 26.723007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483763, 32.743740, 26.554890>,  <29.483004, 32.525967, 26.454020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483763, 32.743740, 26.554890>,  <29.485027, 33.106693, 26.723007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483763, 32.743740, 26.554890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041881, 0.419806, -0.906647,
		0.999117, -0.020467, 0.036676,
		-0.003160, -0.907383, -0.420292,
		29.482815, 32.471523, 26.428802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118160, 33.033279, 26.322588>,  <29.485027, 33.106693, 26.723007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118160, 33.033279, 26.322588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869246, 32.768967, 26.154720>,  <29.719896, 32.610378, 26.053999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869246, 32.768967, 26.154720>,  <30.118160, 33.033279, 26.322588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869246, 32.768967, 26.154720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044904, 0.505106, -0.861889,
		0.781500, -0.555187, -0.284649,
		-0.622288, -0.660784, -0.419670,
		29.682560, 32.570732, 26.028820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444805, 32.939442, 25.693632>,  <30.118160, 33.033279, 26.322588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444805, 32.939442, 25.693632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062449, 32.828907, 25.653809>,  <29.833035, 32.762585, 25.629913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062449, 32.828907, 25.653809>,  <30.444805, 32.939442, 25.693632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062449, 32.828907, 25.653809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017898, 0.283524, -0.958798,
		0.293203, -0.918281, -0.266069,
		-0.955883, -0.276360, -0.099566,
		29.775682, 32.746006, 25.623941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389736, 32.336597, 25.229689>,  <30.444805, 32.939442, 25.693632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389736, 32.336597, 25.229689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043533, 32.535477, 25.205395>,  <29.835812, 32.654804, 25.190819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043533, 32.535477, 25.205395>,  <30.389736, 32.336597, 25.229689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043533, 32.535477, 25.205395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086400, 0.028752, -0.995846,
		-0.493391, -0.867158, -0.067843,
		-0.865506, 0.497203, -0.060736,
		29.783882, 32.684639, 25.187174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223751, 32.330223, 24.504593>,  <30.389736, 32.336597, 25.229689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223751, 32.330223, 24.504593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934261, 32.577423, 24.627426>,  <29.760567, 32.725742, 24.701126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934261, 32.577423, 24.627426>,  <30.223751, 32.330223, 24.504593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934261, 32.577423, 24.627426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010385, 0.435185, -0.900281,
		-0.690010, -0.654745, -0.308536,
		-0.723725, 0.617999, 0.307082,
		29.717144, 32.762821, 24.719551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790157, 32.378994, 23.909679>,  <30.223751, 32.330223, 24.504593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790157, 32.378994, 23.909679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707916, 32.703049, 24.129280>,  <29.658571, 32.897480, 24.261042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707916, 32.703049, 24.129280>,  <29.790157, 32.378994, 23.909679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707916, 32.703049, 24.129280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106501, 0.539134, -0.835459,
		-0.972824, -0.230241, -0.024566,
		-0.205601, 0.810138, 0.549003,
		29.646236, 32.946091, 24.293982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105768, 32.613564, 23.554411>,  <29.790157, 32.378994, 23.909679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105768, 32.613564, 23.554411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271587, 32.916046, 23.756916>,  <29.371078, 33.097534, 23.878420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271587, 32.916046, 23.756916>,  <29.105768, 32.613564, 23.554411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271587, 32.916046, 23.756916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113955, 0.595074, -0.795551,
		-0.902864, 0.272104, 0.332861,
		0.414549, 0.756205, 0.506263,
		29.395952, 33.142906, 23.908794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632938, 33.238602, 23.553970>,  <29.105768, 32.613564, 23.554411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632938, 33.238602, 23.553970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001705, 33.368572, 23.638344>,  <29.222965, 33.446556, 23.688967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001705, 33.368572, 23.638344>,  <28.632938, 33.238602, 23.553970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001705, 33.368572, 23.638344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109361, 0.740644, -0.662938,
		-0.371633, 0.588105, 0.718346,
		0.921916, 0.324929, 0.210932,
		29.278280, 33.466049, 23.701624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578978, 33.924820, 23.310329>,  <28.632938, 33.238602, 23.553970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578978, 33.924820, 23.310329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974741, 33.879162, 23.346195>,  <29.212200, 33.851768, 23.367714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974741, 33.879162, 23.346195>,  <28.578978, 33.924820, 23.310329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974741, 33.879162, 23.346195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143194, 0.666530, -0.731597,
		0.023742, 0.736688, 0.675816,
		0.989410, -0.114143, 0.089664,
		29.271564, 33.844917, 23.373095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826145, 34.515682, 23.163004>,  <28.578978, 33.924820, 23.310329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826145, 34.515682, 23.163004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156445, 34.292816, 23.127903>,  <29.354624, 34.159096, 23.106842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156445, 34.292816, 23.127903>,  <28.826145, 34.515682, 23.163004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156445, 34.292816, 23.127903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305584, 0.572694, -0.760684,
		0.474083, 0.601320, 0.643164,
		0.825750, -0.557168, -0.087751,
		29.404169, 34.125668, 23.101578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515411, 34.249660, 22.619692>,  <28.826145, 34.515682, 23.163004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515411, 34.249660, 22.619692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650679, 33.919849, 22.438232>,  <28.731840, 33.721962, 22.329357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650679, 33.919849, 22.438232>,  <28.515411, 34.249660, 22.619692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650679, 33.919849, 22.438232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649208, 0.553372, -0.521832,
		0.681301, -0.118043, 0.722423,
		0.338170, -0.824527, -0.453647,
		28.752131, 33.672493, 22.302137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880257, 34.804188, 22.758423>,  <28.515411, 34.249660, 22.619692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880257, 34.804188, 22.758423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542778, 34.901669, 22.567097>,  <27.340290, 34.960155, 22.452301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542778, 34.901669, 22.567097>,  <27.880257, 34.804188, 22.758423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542778, 34.901669, 22.567097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240253, 0.625381, 0.742413,
		0.480058, 0.741288, -0.469081,
		-0.843696, 0.243703, -0.478316,
		27.289669, 34.974781, 22.423601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757824, 35.530159, 22.774588>,  <27.880257, 34.804188, 22.758423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757824, 35.530159, 22.774588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387306, 35.388687, 22.722607>,  <27.164995, 35.303806, 22.691418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387306, 35.388687, 22.722607>,  <27.757824, 35.530159, 22.774588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387306, 35.388687, 22.722607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349114, 0.675835, 0.649128,
		-0.141754, 0.646653, -0.749497,
		-0.926297, -0.353676, -0.129953,
		27.109417, 35.282585, 22.683620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202021, 36.042805, 22.528843>,  <27.757824, 35.530159, 22.774588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202021, 36.042805, 22.528843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009319, 35.742462, 22.709564>,  <26.893698, 35.562256, 22.817997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009319, 35.742462, 22.709564>,  <27.202021, 36.042805, 22.528843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009319, 35.742462, 22.709564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378972, 0.643385, 0.665158,
		-0.790123, 0.149222, -0.594507,
		-0.481753, -0.750858, 0.451803,
		26.864794, 35.517204, 22.845104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.449253, 36.163673, 22.643248>,  <27.202021, 36.042805, 22.528843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.449253, 36.163673, 22.643248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590919, 35.905716, 22.914150>,  <26.675920, 35.750942, 23.076693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590919, 35.905716, 22.914150>,  <26.449253, 36.163673, 22.643248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590919, 35.905716, 22.914150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463299, 0.508087, 0.726086,
		-0.812354, -0.570930, -0.118830,
		0.354168, -0.644893, 0.677258,
		26.697170, 35.712250, 23.117327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.329891, 36.425652, 23.234175>,  <26.449253, 36.163673, 22.643248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.329891, 36.425652, 23.234175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451159, 36.072399, 23.377380>,  <26.523918, 35.860447, 23.463305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451159, 36.072399, 23.377380>,  <26.329891, 36.425652, 23.234175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451159, 36.072399, 23.377380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291258, 0.271846, 0.917207,
		-0.907336, -0.382343, -0.174803,
		0.303168, -0.883127, 0.358016,
		26.542109, 35.807461, 23.484785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709843, 36.027946, 23.504620>,  <26.329891, 36.425652, 23.234175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709843, 36.027946, 23.504620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055590, 35.951561, 23.690693>,  <26.263039, 35.905727, 23.802338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055590, 35.951561, 23.690693>,  <25.709843, 36.027946, 23.504620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055590, 35.951561, 23.690693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441184, 0.155897, 0.883772,
		-0.241291, -0.969138, 0.050502,
		0.864370, -0.190966, 0.465185,
		26.314901, 35.894272, 23.830248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248695, 35.493092, 23.633865>,  <25.709843, 36.027946, 23.504620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.248695, 35.493092, 23.633865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897863, 35.643436, 23.514225>,  <24.687365, 35.733643, 23.442442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897863, 35.643436, 23.514225>,  <25.248695, 35.493092, 23.633865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.897863, 35.643436, 23.514225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280124, -0.906060, -0.317154,
		-0.390207, -0.194385, 0.899974,
		-0.877080, 0.375859, -0.299099,
		24.634739, 35.756195, 23.424496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.792215, 35.056732, 23.842562>,  <25.248695, 35.493092, 23.633865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.792215, 35.056732, 23.842562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609015, 35.251766, 23.545242>,  <24.499094, 35.368786, 23.366852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609015, 35.251766, 23.545242>,  <24.792215, 35.056732, 23.842562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.609015, 35.251766, 23.545242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122983, -0.862865, -0.490243,
		-0.880402, -0.133121, 0.455160,
		-0.458004, 0.487588, -0.743297,
		24.471613, 35.398041, 23.322252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.143465, 34.715229, 23.609224>,  <24.792215, 35.056732, 23.842562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.143465, 34.715229, 23.609224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.196632, 34.960423, 23.297691>,  <24.228533, 35.107540, 23.110771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.196632, 34.960423, 23.297691>,  <24.143465, 34.715229, 23.609224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.196632, 34.960423, 23.297691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313999, -0.719283, -0.619706,
		-0.940073, 0.326924, 0.096870,
		0.132920, 0.612986, -0.778833,
		24.236509, 35.144318, 23.064041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.607843, 34.620483, 23.222923>,  <24.143465, 34.715229, 23.609224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.607843, 34.620483, 23.222923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.854803, 34.801273, 22.965385>,  <24.002979, 34.909748, 22.810862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.854803, 34.801273, 22.965385>,  <23.607843, 34.620483, 23.222923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.854803, 34.801273, 22.965385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331256, -0.592984, -0.733921,
		-0.713505, 0.666399, -0.216387,
		0.617398, 0.451976, -0.643845,
		24.040022, 34.936867, 22.772232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.178526, 34.889069, 22.631033>,  <23.607843, 34.620483, 23.222923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.178526, 34.889069, 22.631033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.556318, 34.819832, 22.519321>,  <23.782993, 34.778290, 22.452295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.556318, 34.819832, 22.519321>,  <23.178526, 34.889069, 22.631033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.556318, 34.819832, 22.519321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328464, -0.518686, -0.789352,
		-0.008231, 0.837261, -0.546742,
		0.944481, -0.173087, -0.279279,
		23.839663, 34.767906, 22.435537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.273741, 35.125080, 21.897745>,  <23.178526, 34.889069, 22.631033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.273741, 35.125080, 21.897745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.530533, 34.836132, 22.000538>,  <23.684608, 34.662762, 22.062214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.530533, 34.836132, 22.000538>,  <23.273741, 35.125080, 21.897745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.530533, 34.836132, 22.000538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340536, -0.568940, -0.748560,
		0.686946, 0.393049, -0.611242,
		0.641981, -0.722371, 0.256984,
		23.723127, 34.619419, 22.077633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.535002, 34.803631, 21.221493>,  <23.273741, 35.125080, 21.897745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.535002, 34.803631, 21.221493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.675409, 34.549500, 21.496635>,  <23.759653, 34.397022, 21.661720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.675409, 34.549500, 21.496635>,  <23.535002, 34.803631, 21.221493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.675409, 34.549500, 21.496635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260225, -0.771850, -0.580113,
		0.899483, 0.024632, -0.436260,
		0.351017, -0.635327, 0.687856,
		23.780714, 34.358902, 21.702991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.938040, 34.234585, 20.776274>,  <23.535002, 34.803631, 21.221493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.938040, 34.234585, 20.776274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.878384, 34.068935, 21.135441>,  <23.842590, 33.969547, 21.350941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.878384, 34.068935, 21.135441>,  <23.938040, 34.234585, 20.776274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.878384, 34.068935, 21.135441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272316, -0.855759, -0.439911,
		0.950579, -0.310126, 0.014857,
		-0.149142, -0.414124, 0.897919,
		23.833641, 33.944698, 21.404816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.424091, 33.677456, 20.765072>,  <23.938040, 34.234585, 20.776274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.424091, 33.677456, 20.765072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.121897, 33.581566, 21.008965>,  <23.940580, 33.524033, 21.155300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.121897, 33.581566, 21.008965>,  <24.424091, 33.677456, 20.765072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.121897, 33.581566, 21.008965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107636, -0.872592, -0.476443,
		0.646263, -0.425575, 0.633428,
		-0.755486, -0.239727, 0.609731,
		23.895250, 33.509647, 21.191883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.415440, 33.041157, 20.800411>,  <24.424091, 33.677456, 20.765072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.415440, 33.041157, 20.800411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.038218, 33.088627, 20.924709>,  <23.811884, 33.117107, 20.999289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.038218, 33.088627, 20.924709>,  <24.415440, 33.041157, 20.800411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.038218, 33.088627, 20.924709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247228, -0.875059, -0.416113,
		0.222539, -0.469242, 0.854569,
		-0.943056, 0.118672, 0.310745,
		23.755301, 33.124229, 21.017933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.241224, 32.364796, 20.695496>,  <24.415440, 33.041157, 20.800411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.241224, 32.364796, 20.695496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.884748, 32.527828, 20.775150>,  <23.670862, 32.625648, 20.822943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.884748, 32.527828, 20.775150>,  <24.241224, 32.364796, 20.695496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.884748, 32.527828, 20.775150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452975, -0.823151, -0.342398,
		0.024364, -0.395347, 0.918209,
		-0.891190, 0.407583, 0.199138,
		23.617392, 32.650105, 20.834892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.820354, 31.835718, 20.926970>,  <24.241224, 32.364796, 20.695496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.820354, 31.835718, 20.926970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.582052, 32.120308, 20.777905>,  <23.439070, 32.291061, 20.688465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.582052, 32.120308, 20.777905>,  <23.820354, 31.835718, 20.926970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.582052, 32.120308, 20.777905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495829, -0.690821, -0.526233,
		-0.631843, -0.128732, 0.764332,
		-0.595759, 0.711474, -0.372661,
		23.403324, 32.333752, 20.666105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.056782, 31.691599, 20.987305>,  <23.820354, 31.835718, 20.926970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.056782, 31.691599, 20.987305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.088121, 31.949478, 20.683140>,  <23.106924, 32.104206, 20.500641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.088121, 31.949478, 20.683140>,  <23.056782, 31.691599, 20.987305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.088121, 31.949478, 20.683140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668255, -0.532062, -0.519947,
		-0.739795, 0.548887, 0.389136,
		0.078347, 0.644697, -0.760413,
		23.111626, 32.142887, 20.455015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.394306, 31.845997, 20.655573>,  <23.056782, 31.691599, 20.987305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.394306, 31.845997, 20.655573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.620607, 31.947491, 20.341747>,  <22.756388, 32.008389, 20.153452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.620607, 31.947491, 20.341747>,  <22.394306, 31.845997, 20.655573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.620607, 31.947491, 20.341747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528148, -0.619180, -0.581099,
		-0.633231, 0.743126, -0.216294,
		0.565754, 0.253735, -0.784564,
		22.790333, 32.023609, 20.106379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.905977, 31.947229, 20.144186>,  <22.394306, 31.845997, 20.655573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.905977, 31.947229, 20.144186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.245327, 31.906307, 19.936420>,  <22.448936, 31.881754, 19.811762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.245327, 31.906307, 19.936420>,  <21.905977, 31.947229, 20.144186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.245327, 31.906307, 19.936420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497188, -0.490969, -0.715370,
		-0.181829, 0.865149, -0.467392,
		0.848376, -0.102306, -0.519414,
		22.499840, 31.875616, 19.780596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.810081, 32.146458, 19.442959>,  <21.905977, 31.947229, 20.144186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.810081, 32.146458, 19.442959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.125698, 31.902477, 19.413639>,  <22.315067, 31.756088, 19.396048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.125698, 31.902477, 19.413639>,  <21.810081, 32.146458, 19.442959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.125698, 31.902477, 19.413639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409455, -0.433186, -0.802930,
		0.457996, 0.663558, -0.591549,
		0.789042, -0.609951, -0.073300,
		22.362411, 31.719492, 19.391649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.932676, 32.188251, 18.776695>,  <21.810081, 32.146458, 19.442959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.932676, 32.188251, 18.776695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.114090, 31.849091, 18.886505>,  <22.222939, 31.645594, 18.952391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.114090, 31.849091, 18.886505>,  <21.932676, 32.188251, 18.776695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.114090, 31.849091, 18.886505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469282, -0.489064, -0.735249,
		0.757681, 0.204631, -0.619714,
		0.453535, -0.847904, 0.274525,
		22.250151, 31.594719, 18.968863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.227959, 31.886803, 18.191580>,  <21.932676, 32.188251, 18.776695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.227959, 31.886803, 18.191580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.189754, 31.578442, 18.443481>,  <22.166832, 31.393425, 18.594622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.189754, 31.578442, 18.443481>,  <22.227959, 31.886803, 18.191580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.189754, 31.578442, 18.443481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295866, -0.582070, -0.757402,
		0.950443, -0.258661, -0.172490,
		-0.095509, -0.770901, 0.629753,
		22.161102, 31.347172, 18.632408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.341827, 31.392561, 17.740047>,  <22.227959, 31.886803, 18.191580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.341827, 31.392561, 17.740047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.208872, 31.179924, 18.051670>,  <22.129099, 31.052341, 18.238644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.208872, 31.179924, 18.051670>,  <22.341827, 31.392561, 17.740047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.208872, 31.179924, 18.051670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338184, -0.703914, -0.624609,
		0.880427, -0.471075, 0.054195,
		-0.332386, -0.531595, 0.779055,
		22.109156, 31.020445, 18.285387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.556026, 30.615440, 17.696583>,  <22.341827, 31.392561, 17.740047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.556026, 30.615440, 17.696583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.234526, 30.613586, 17.934563>,  <22.041626, 30.612474, 18.077351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.234526, 30.613586, 17.934563>,  <22.556026, 30.615440, 17.696583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.234526, 30.613586, 17.934563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445887, -0.657368, -0.607497,
		0.393915, -0.753556, 0.526293,
		-0.803751, -0.004635, 0.594948,
		21.993401, 30.612196, 18.113047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.369093, 29.934427, 17.724720>,  <22.556026, 30.615440, 17.696583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.369093, 29.934427, 17.724720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.031582, 30.119907, 17.832809>,  <21.829075, 30.231195, 17.897663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.031582, 30.119907, 17.832809>,  <22.369093, 29.934427, 17.724720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.031582, 30.119907, 17.832809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531792, -0.654487, -0.537442,
		-0.072354, -0.597185, 0.798834,
		-0.843778, 0.463700, 0.270223,
		21.778448, 30.259018, 17.913876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.897419, 29.330538, 17.787909>,  <22.369093, 29.934427, 17.724720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.897419, 29.330538, 17.787909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.680893, 29.663616, 17.741272>,  <21.550978, 29.863462, 17.713291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.680893, 29.663616, 17.741272>,  <21.897419, 29.330538, 17.787909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.680893, 29.663616, 17.741272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607879, -0.483371, -0.629949,
		-0.580913, -0.270127, 0.767835,
		-0.541315, 0.832697, -0.116592,
		21.518497, 29.913425, 17.706295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.159906, 29.137182, 17.744343>,  <21.897419, 29.330538, 17.787909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.159906, 29.137182, 17.744343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.219587, 29.490017, 17.565609>,  <21.255396, 29.701717, 17.458368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.219587, 29.490017, 17.565609>,  <21.159906, 29.137182, 17.744343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.219587, 29.490017, 17.565609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597565, -0.279603, -0.751490,
		-0.787816, 0.379137, 0.485387,
		0.149202, 0.882087, -0.446835,
		21.264347, 29.754642, 17.431559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.723602, 29.022280, 17.160543>,  <21.159906, 29.137182, 17.744343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.723602, 29.022280, 17.160543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.861776, 29.396973, 17.137909>,  <20.944681, 29.621788, 17.124329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.861776, 29.396973, 17.137909>,  <20.723602, 29.022280, 17.160543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.861776, 29.396973, 17.137909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384570, 0.086297, -0.919053,
		-0.856025, 0.339237, 0.390051,
		0.345437, 0.936735, -0.056588,
		20.965406, 29.677994, 17.120932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.227665, 29.460629, 17.049763>,  <20.723602, 29.022280, 17.160543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.227665, 29.460629, 17.049763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.556494, 29.623287, 16.890347>,  <20.753792, 29.720882, 16.794697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.556494, 29.623287, 16.890347>,  <20.227665, 29.460629, 17.049763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.556494, 29.623287, 16.890347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492586, 0.156855, -0.856011,
		-0.285582, 0.900019, 0.329254,
		0.822072, 0.406647, -0.398542,
		20.803116, 29.745281, 16.770784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.958525, 29.582062, 17.770210>,  <20.227665, 29.460629, 17.049763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.958525, 29.582062, 17.770210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.877438, 29.321507, 18.062675>,  <19.828785, 29.165173, 18.238155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.877438, 29.321507, 18.062675>,  <19.958525, 29.582062, 17.770210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.877438, 29.321507, 18.062675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978742, 0.158540, -0.130115,
		-0.031163, -0.741996, -0.669679,
		-0.202716, -0.651388, 0.731163,
		19.816624, 29.126091, 18.282024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.492037, 29.723776, 17.159237>,  <19.958525, 29.582062, 17.770210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.492037, 29.723776, 17.159237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.598093, 29.463455, 16.874657>,  <19.661726, 29.307262, 16.703909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.598093, 29.463455, 16.874657>,  <19.492037, 29.723776, 17.159237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.598093, 29.463455, 16.874657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918986, 0.052759, -0.390745,
		0.291833, 0.757413, -0.584088,
		0.265140, -0.650801, -0.711449,
		19.677635, 29.268215, 16.661222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.665634, 30.091124, 16.509296>,  <19.492037, 29.723776, 17.159237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.665634, 30.091124, 16.509296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.351290, 30.291965, 16.653694>,  <19.162683, 30.412470, 16.740334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.351290, 30.291965, 16.653694>,  <19.665634, 30.091124, 16.509296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.351290, 30.291965, 16.653694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609658, 0.531199, 0.588341,
		0.103649, 0.682435, -0.723560,
		-0.785859, 0.502105, 0.360994,
		19.115532, 30.442596, 16.761992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.928629, 30.802542, 16.672173>,  <19.665634, 30.091124, 16.509296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.928629, 30.802542, 16.672173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.602400, 30.756920, 16.899094>,  <19.406662, 30.729548, 17.035246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.602400, 30.756920, 16.899094>,  <19.928629, 30.802542, 16.672173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.602400, 30.756920, 16.899094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458262, 0.471307, 0.753569,
		-0.353320, 0.874564, -0.332119,
		-0.815574, -0.114054, 0.567302,
		19.357727, 30.722704, 17.069284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.479589, 31.455263, 16.911449>,  <19.928629, 30.802542, 16.672173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.479589, 31.455263, 16.911449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.472233, 31.170082, 17.191837>,  <19.467819, 30.998974, 17.360071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.472233, 31.170082, 17.191837>,  <19.479589, 31.455263, 16.911449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.472233, 31.170082, 17.191837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292989, 0.666470, 0.685548,
		-0.955939, 0.217985, 0.196629,
		-0.018392, -0.712952, 0.700972,
		19.466715, 30.956196, 17.402128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.952208, 31.556316, 17.500614>,  <19.479589, 31.455263, 16.911449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.952208, 31.556316, 17.500614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.271057, 31.339043, 17.606098>,  <19.462368, 31.208679, 17.669388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.271057, 31.339043, 17.606098>,  <18.952208, 31.556316, 17.500614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.271057, 31.339043, 17.606098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286645, 0.724807, 0.626490,
		-0.531438, -0.423800, 0.733463,
		0.797125, -0.543184, 0.263709,
		19.510195, 31.176088, 17.685211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889023, 31.500132, 18.297785>,  <18.952208, 31.556316, 17.500614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.889023, 31.500132, 18.297785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.264860, 31.483517, 18.161880>,  <19.490362, 31.473549, 18.080338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.264860, 31.483517, 18.161880>,  <18.889023, 31.500132, 18.297785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.264860, 31.483517, 18.161880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305971, 0.546887, 0.779292,
		0.153442, -0.836176, 0.526560,
		0.939594, -0.041536, -0.339761,
		19.546738, 31.471056, 18.059952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.218187, 31.259893, 18.876417>,  <18.889023, 31.500132, 18.297785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.218187, 31.259893, 18.876417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.498045, 31.402996, 18.629028>,  <19.665958, 31.488857, 18.480595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.498045, 31.402996, 18.629028>,  <19.218187, 31.259893, 18.876417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.498045, 31.402996, 18.629028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462340, 0.433264, 0.773643,
		0.544739, -0.827219, 0.137725,
		0.699644, 0.357758, -0.618473,
		19.707937, 31.510324, 18.443487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.847233, 31.193275, 19.283503>,  <19.218187, 31.259893, 18.876417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.847233, 31.193275, 19.283503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.920420, 31.465736, 18.999939>,  <19.964331, 31.629213, 18.829800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.920420, 31.465736, 18.999939>,  <19.847233, 31.193275, 19.283503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.920420, 31.465736, 18.999939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119903, 0.700240, 0.703766,
		0.975780, -0.213765, 0.046448,
		0.182966, 0.681152, -0.708911,
		19.975309, 31.670082, 18.787266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.596058, 31.425915, 19.360052>,  <19.847233, 31.193275, 19.283503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.596058, 31.425915, 19.360052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.344276, 31.678802, 19.179348>,  <20.193209, 31.830536, 19.070925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.344276, 31.678802, 19.179348>,  <20.596058, 31.425915, 19.360052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.344276, 31.678802, 19.179348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204017, 0.695457, 0.688997,
		0.749777, 0.341523, -0.566741,
		-0.629453, 0.632219, -0.451761,
		20.155441, 31.868469, 19.043819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.976538, 31.981436, 19.212297>,  <20.596058, 31.425915, 19.360052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.976538, 31.981436, 19.212297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.612604, 32.141487, 19.168301>,  <20.394243, 32.237518, 19.141903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.612604, 32.141487, 19.168301>,  <20.976538, 31.981436, 19.212297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.612604, 32.141487, 19.168301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332038, 0.860945, 0.385388,
		0.248902, 0.314118, -0.916176,
		-0.909835, 0.400129, -0.109992,
		20.339653, 32.261524, 19.135303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.119129, 32.588818, 18.951229>,  <20.976538, 31.981436, 19.212297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.119129, 32.588818, 18.951229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.746912, 32.637409, 19.089405>,  <20.523581, 32.666565, 19.172312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.746912, 32.637409, 19.089405>,  <21.119129, 32.588818, 18.951229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.746912, 32.637409, 19.089405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251055, 0.898398, 0.360351,
		-0.266569, 0.422047, -0.866497,
		-0.930544, 0.121480, 0.345442,
		20.467749, 32.673855, 19.193037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.007984, 33.274372, 18.804859>,  <21.119129, 32.588818, 18.951229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.007984, 33.274372, 18.804859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.775270, 33.144165, 19.103004>,  <20.635643, 33.066040, 19.281893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.775270, 33.144165, 19.103004>,  <21.007984, 33.274372, 18.804859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.775270, 33.144165, 19.103004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072764, 0.891915, 0.446310,
		-0.810082, 0.313892, -0.495217,
		-0.581784, -0.325513, 0.745364,
		20.600735, 33.046513, 19.326614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.451416, 33.756851, 18.827112>,  <21.007984, 33.274372, 18.804859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.451416, 33.756851, 18.827112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.492380, 33.584988, 19.185978>,  <20.516958, 33.481869, 19.401297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.492380, 33.584988, 19.185978>,  <20.451416, 33.756851, 18.827112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.492380, 33.584988, 19.185978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020504, 0.902627, 0.429934,
		-0.994531, -0.025635, 0.101250,
		0.102412, -0.429659, 0.897165,
		20.523104, 33.456089, 19.455128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.142010, 34.236446, 19.282671>,  <20.451416, 33.756851, 18.827112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.142010, 34.236446, 19.282671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.329750, 33.994644, 19.540131>,  <20.442394, 33.849564, 19.694607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.329750, 33.994644, 19.540131>,  <20.142010, 34.236446, 19.282671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.329750, 33.994644, 19.540131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191806, 0.781314, 0.593935,
		-0.861928, -0.155308, 0.482658,
		0.469350, -0.604506, 0.643648,
		20.470554, 33.813293, 19.733225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.034138, 34.410561, 19.924152>,  <20.142010, 34.236446, 19.282671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.034138, 34.410561, 19.924152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.383844, 34.222103, 19.970951>,  <20.593668, 34.109028, 19.999031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.383844, 34.222103, 19.970951>,  <20.034138, 34.410561, 19.924152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.383844, 34.222103, 19.970951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294363, 0.706149, 0.643974,
		-0.386021, -0.528564, 0.756048,
		0.874264, -0.471140, 0.116999,
		20.646124, 34.080761, 20.006050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.080904, 34.214783, 20.650877>,  <20.034138, 34.410561, 19.924152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.080904, 34.214783, 20.650877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.449299, 34.190048, 20.497013>,  <20.670336, 34.175209, 20.404696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.449299, 34.190048, 20.497013>,  <20.080904, 34.214783, 20.650877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.449299, 34.190048, 20.497013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355323, 0.538246, 0.764223,
		0.159783, -0.840516, 0.517689,
		0.920986, -0.061837, -0.384657,
		20.725595, 34.171497, 20.381617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.530539, 34.318886, 21.236649>,  <20.080904, 34.214783, 20.650877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.530539, 34.318886, 21.236649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.760155, 34.360233, 20.911739>,  <20.897924, 34.385040, 20.716793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.760155, 34.360233, 20.911739>,  <20.530539, 34.318886, 21.236649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.760155, 34.360233, 20.911739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564409, 0.668739, 0.483974,
		0.593228, -0.736276, 0.325541,
		0.574041, 0.103369, -0.812276,
		20.932367, 34.391243, 20.668056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.113724, 34.360748, 21.576088>,  <20.530539, 34.318886, 21.236649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.113724, 34.360748, 21.576088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.170130, 34.542419, 21.224216>,  <21.203974, 34.651424, 21.013094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.170130, 34.542419, 21.224216>,  <21.113724, 34.360748, 21.576088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.170130, 34.542419, 21.224216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482189, 0.744530, 0.461701,
		0.864643, -0.489278, -0.114012,
		0.141015, 0.454182, -0.879678,
		21.212435, 34.678673, 20.960314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.708006, 34.430279, 21.623549>,  <21.113724, 34.360748, 21.576088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.708006, 34.430279, 21.623549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.599939, 34.701080, 21.349709>,  <21.535099, 34.863560, 21.185404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.599939, 34.701080, 21.349709>,  <21.708006, 34.430279, 21.623549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.599939, 34.701080, 21.349709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383757, 0.727837, 0.568317,
		0.883029, -0.109179, -0.456442,
		-0.270166, 0.677003, -0.684599,
		21.518890, 34.904182, 21.144329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.307648, 34.875381, 21.325026>,  <21.708006, 34.430279, 21.623549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.307648, 34.875381, 21.325026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.975788, 35.096027, 21.290615>,  <21.776672, 35.228416, 21.269968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.975788, 35.096027, 21.290615>,  <22.307648, 34.875381, 21.325026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.975788, 35.096027, 21.290615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409246, 0.705713, 0.578348,
		0.379737, 0.444620, -0.811241,
		-0.829649, 0.551617, -0.086027,
		21.726892, 35.261513, 21.264807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.634354, 35.451305, 21.402292>,  <22.307648, 34.875381, 21.325026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.634354, 35.451305, 21.402292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.251989, 35.568203, 21.413776>,  <22.022570, 35.638340, 21.420666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.251989, 35.568203, 21.413776>,  <22.634354, 35.451305, 21.402292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.251989, 35.568203, 21.413776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240277, 0.722215, 0.648593,
		0.168814, 0.626896, -0.760594,
		-0.955913, 0.292244, 0.028709,
		21.965216, 35.655876, 21.422388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.640118, 36.240635, 21.397720>,  <22.634354, 35.451305, 21.402292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.640118, 36.240635, 21.397720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.301453, 36.117527, 21.571358>,  <22.098253, 36.043663, 21.675541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.301453, 36.117527, 21.571358>,  <22.640118, 36.240635, 21.397720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.301453, 36.117527, 21.571358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112099, 0.694300, 0.710901,
		-0.520188, 0.650555, -0.553337,
		-0.846663, -0.307774, 0.434093,
		22.047453, 36.025196, 21.701586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.271709, 36.854805, 21.523304>,  <22.640118, 36.240635, 21.397720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.271709, 36.854805, 21.523304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.091490, 36.585724, 21.758072>,  <21.983358, 36.424274, 21.898933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.091490, 36.585724, 21.758072>,  <22.271709, 36.854805, 21.523304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.091490, 36.585724, 21.758072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109959, 0.694240, 0.711295,
		-0.885954, 0.255936, -0.386759,
		-0.450549, -0.672702, 0.586922,
		21.956326, 36.383915, 21.934149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.645498, 37.134430, 21.743204>,  <22.271709, 36.854805, 21.523304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.645498, 37.134430, 21.743204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.740885, 36.861828, 22.019955>,  <21.798117, 36.698269, 22.186005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.740885, 36.861828, 22.019955>,  <21.645498, 37.134430, 21.743204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.740885, 36.861828, 22.019955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064360, 0.699771, 0.711462,
		-0.969016, -0.214189, 0.123011,
		0.238467, -0.681501, 0.691874,
		21.812426, 36.657379, 22.227516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.187052, 37.360840, 22.238951>,  <21.645498, 37.134430, 21.743204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.187052, 37.360840, 22.238951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.462196, 37.112961, 22.390118>,  <21.627283, 36.964233, 22.480818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.462196, 37.112961, 22.390118>,  <21.187052, 37.360840, 22.238951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.462196, 37.112961, 22.390118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049251, 0.559311, 0.827494,
		-0.724168, -0.550589, 0.415249,
		0.687862, -0.619696, 0.377918,
		21.668554, 36.927052, 22.503492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.976128, 37.259281, 22.935474>,  <21.187052, 37.360840, 22.238951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.976128, 37.259281, 22.935474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.368759, 37.189613, 22.904053>,  <21.604338, 37.147812, 22.885201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.368759, 37.189613, 22.904053>,  <20.976128, 37.259281, 22.935474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.368759, 37.189613, 22.904053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179470, 0.699459, 0.691772,
		-0.065539, -0.693126, 0.717831,
		0.981578, -0.174168, -0.078553,
		21.663233, 37.137363, 22.880487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.813887, 37.970013, 22.835943>,  <20.976128, 37.259281, 22.935474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.813887, 37.970013, 22.835943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.546917, 37.688461, 22.738705>,  <20.386736, 37.519531, 22.680361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.546917, 37.688461, 22.738705>,  <20.813887, 37.970013, 22.835943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.546917, 37.688461, 22.738705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625677, 0.353020, 0.695633,
		-0.403826, 0.616382, -0.676017,
		-0.667423, -0.703882, -0.243097,
		20.346689, 37.477295, 22.665775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.093380, 38.194633, 22.591766>,  <20.813887, 37.970013, 22.835943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.093380, 38.194633, 22.591766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.094769, 37.842419, 22.781353>,  <20.095602, 37.631088, 22.895105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.094769, 37.842419, 22.781353>,  <20.093380, 38.194633, 22.591766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.094769, 37.842419, 22.781353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670918, 0.349411, 0.654049,
		-0.741523, -0.320264, -0.589555,
		0.003471, -0.880536, 0.473967,
		20.095810, 37.578259, 22.923544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.363470, 38.208149, 22.703085>,  <20.093380, 38.194633, 22.591766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.363470, 38.208149, 22.703085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.543234, 37.940022, 22.939289>,  <19.651093, 37.779144, 23.081013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.543234, 37.940022, 22.939289>,  <19.363470, 38.208149, 22.703085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.543234, 37.940022, 22.939289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779449, 0.028727, 0.625807,
		-0.436454, -0.741517, -0.509569,
		0.449408, -0.670319, 0.590512,
		19.678057, 37.738926, 23.116444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.917038, 37.593082, 22.806540>,  <19.363470, 38.208149, 22.703085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.917038, 37.593082, 22.806540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.166979, 37.679852, 23.106541>,  <19.316944, 37.731911, 23.286541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.166979, 37.679852, 23.106541>,  <18.917038, 37.593082, 22.806540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.166979, 37.679852, 23.106541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779393, 0.116849, 0.615543,
		0.045884, -0.969172, 0.242076,
		0.624853, 0.216916, 0.750003,
		19.354435, 37.744926, 23.331541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.640839, 37.221222, 23.398447>,  <18.917038, 37.593082, 22.806540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.640839, 37.221222, 23.398447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.861980, 37.530251, 23.523342>,  <18.994665, 37.715668, 23.598280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.861980, 37.530251, 23.523342>,  <18.640839, 37.221222, 23.398447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.861980, 37.530251, 23.523342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698680, 0.225579, 0.678940,
		0.454094, -0.593508, 0.664490,
		0.552852, 0.772569, 0.312238,
		19.027836, 37.762020, 23.617014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.872768, 26.403130, 28.962765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.253483, 26.328880, 29.060452>,  <34.481911, 26.284330, 29.119064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.253483, 26.328880, 29.060452>,  <33.872768, 26.403130, 28.962765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253483, 26.328880, 29.060452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303690, 0.682444, -0.664863,
		-0.043250, 0.706975, 0.705915,
		0.951789, -0.185624, 0.244217,
		34.539021, 26.273193, 29.133717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138477, 27.083256, 29.125664>,  <33.872768, 26.403130, 28.962765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138477, 27.083256, 29.125664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.448788, 26.848244, 29.033596>,  <34.634975, 26.707235, 28.978355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.448788, 26.848244, 29.033596>,  <34.138477, 27.083256, 29.125664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448788, 26.848244, 29.033596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304730, 0.668241, -0.678671,
		0.552550, 0.456356, 0.697443,
		0.775776, -0.587531, -0.230171,
		34.681519, 26.671984, 28.964544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816593, 27.493631, 29.127417>,  <34.138477, 27.083256, 29.125664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816593, 27.493631, 29.127417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.912846, 27.170677, 28.911926>,  <34.970596, 26.976904, 28.782633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.912846, 27.170677, 28.911926>,  <34.816593, 27.493631, 29.127417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912846, 27.170677, 28.911926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405049, 0.587924, -0.700200,
		0.882061, -0.049720, 0.468504,
		0.240632, -0.807386, -0.538724,
		34.985035, 26.928461, 28.750309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502243, 27.662663, 28.819157>,  <34.816593, 27.493631, 29.127417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502243, 27.662663, 28.819157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351864, 27.378448, 28.581230>,  <35.261635, 27.207920, 28.438475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351864, 27.378448, 28.581230>,  <35.502243, 27.662663, 28.819157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351864, 27.378448, 28.581230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295594, 0.516412, -0.803706,
		0.878229, -0.477976, 0.015885,
		-0.375948, -0.710533, -0.594815,
		35.239079, 27.165289, 28.402786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091244, 27.409773, 28.274639>,  <35.502243, 27.662663, 28.819157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091244, 27.409773, 28.274639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.725136, 27.313122, 28.145706>,  <35.505470, 27.255131, 28.068346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.725136, 27.313122, 28.145706>,  <36.091244, 27.409773, 28.274639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725136, 27.313122, 28.145706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189312, 0.448294, -0.873610,
		0.355584, -0.860610, -0.364568,
		-0.915271, -0.241625, -0.322330,
		35.450554, 27.240635, 28.049007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358974, 27.445732, 27.570786>,  <36.091244, 27.409773, 28.274639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358974, 27.445732, 27.570786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.958981, 27.446663, 27.572376>,  <35.718983, 27.447222, 27.573332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.958981, 27.446663, 27.572376>,  <36.358974, 27.445732, 27.570786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958981, 27.446663, 27.572376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002891, 0.355398, -0.934711,
		-0.003589, -0.934712, -0.355388,
		-0.999990, 0.002328, 0.003978,
		35.658985, 27.447361, 27.573570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155006, 27.467806, 26.877430>,  <36.358974, 27.445732, 27.570786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155006, 27.467806, 26.877430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.809753, 27.577347, 27.047142>,  <35.602604, 27.643072, 27.148970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.809753, 27.577347, 27.047142>,  <36.155006, 27.467806, 26.877430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809753, 27.577347, 27.047142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196506, 0.591819, -0.781752,
		-0.465183, -0.758125, -0.457002,
		-0.863128, 0.273854, 0.424281,
		35.550816, 27.659504, 27.174427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575207, 27.271751, 26.391438>,  <36.155006, 27.467806, 26.877430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575207, 27.271751, 26.391438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457409, 27.558205, 26.644554>,  <35.386730, 27.730078, 26.796423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457409, 27.558205, 26.644554>,  <35.575207, 27.271751, 26.391438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457409, 27.558205, 26.644554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322628, 0.548776, -0.771204,
		-0.899546, -0.431272, 0.069433,
		-0.294496, 0.716134, 0.632790,
		35.369061, 27.773045, 26.834391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939716, 27.601297, 26.100832>,  <35.575207, 27.271751, 26.391438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939716, 27.601297, 26.100832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.060394, 27.869690, 26.371761>,  <35.132801, 28.030725, 26.534319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.060394, 27.869690, 26.371761>,  <34.939716, 27.601297, 26.100832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060394, 27.869690, 26.371761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328533, 0.740079, -0.586813,
		-0.895012, -0.045484, 0.443717,
		0.301695, 0.670980, 0.677323,
		35.150902, 28.070984, 26.574959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366890, 28.187031, 26.083284>,  <34.939716, 27.601297, 26.100832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366890, 28.187031, 26.083284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.674934, 28.364868, 26.266266>,  <34.859760, 28.471571, 26.376055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.674934, 28.364868, 26.266266>,  <34.366890, 28.187031, 26.083284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674934, 28.364868, 26.266266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088749, 0.784814, -0.613344,
		-0.631704, 0.431745, 0.643852,
		0.770113, 0.444593, 0.457453,
		34.905968, 28.498245, 26.403502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295307, 28.795189, 26.533379>,  <34.366890, 28.187031, 26.083284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295307, 28.795189, 26.533379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.670017, 28.842083, 26.401493>,  <34.894844, 28.870218, 26.322361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.670017, 28.842083, 26.401493>,  <34.295307, 28.795189, 26.533379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670017, 28.842083, 26.401493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247221, 0.888555, -0.386460,
		0.247663, 0.443538, 0.861358,
		0.936773, 0.117234, -0.329714,
		34.951050, 28.877253, 26.302578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383301, 29.502110, 26.606905>,  <34.295307, 28.795189, 26.533379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383301, 29.502110, 26.606905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.664658, 29.390762, 26.345295>,  <34.833473, 29.323954, 26.188330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.664658, 29.390762, 26.345295>,  <34.383301, 29.502110, 26.606905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664658, 29.390762, 26.345295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064809, 0.891174, -0.449008,
		0.707839, 0.358216, 0.608806,
		0.703394, -0.278370, -0.654023,
		34.875675, 29.307251, 26.149088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850445, 30.142689, 26.498997>,  <34.383301, 29.502110, 26.606905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850445, 30.142689, 26.498997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909260, 29.899292, 26.187069>,  <34.944550, 29.753254, 25.999912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909260, 29.899292, 26.187069>,  <34.850445, 30.142689, 26.498997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909260, 29.899292, 26.187069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176525, 0.759588, -0.625991,
		0.973251, 0.229705, 0.004278,
		0.147042, -0.608491, -0.779819,
		34.953373, 29.716745, 25.953123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168629, 30.681284, 26.078327>,  <34.850445, 30.142689, 26.498997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168629, 30.681284, 26.078327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.129963, 30.368282, 25.832287>,  <35.106762, 30.180481, 25.684664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.129963, 30.368282, 25.832287>,  <35.168629, 30.681284, 26.078327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129963, 30.368282, 25.832287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024705, 0.619689, -0.784459,
		0.995010, -0.060633, -0.079234,
		-0.096664, -0.782502, -0.615099,
		35.100964, 30.133532, 25.647757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681370, 30.679577, 25.642883>,  <35.168629, 30.681284, 26.078327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681370, 30.679577, 25.642883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.385254, 30.481400, 25.461113>,  <35.207584, 30.362494, 25.352051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.385254, 30.481400, 25.461113>,  <35.681370, 30.679577, 25.642883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385254, 30.481400, 25.461113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075134, 0.610735, -0.788263,
		0.668078, -0.617684, -0.414895,
		-0.740288, -0.495449, -0.454428,
		35.163166, 30.332766, 25.324785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854893, 30.486439, 24.998669>,  <35.681370, 30.679577, 25.642883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854893, 30.486439, 24.998669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.458416, 30.471195, 24.947922>,  <35.220531, 30.462049, 24.917473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.458416, 30.471195, 24.947922>,  <35.854893, 30.486439, 24.998669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458416, 30.471195, 24.947922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093439, 0.477725, -0.873526,
		0.093897, -0.877682, -0.469954,
		-0.991187, -0.038109, -0.126866,
		35.161060, 30.459763, 24.909863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786476, 30.513260, 24.251635>,  <35.854893, 30.486439, 24.998669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786476, 30.513260, 24.251635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.422268, 30.584335, 24.400967>,  <35.203743, 30.626980, 24.490566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.422268, 30.584335, 24.400967>,  <35.786476, 30.513260, 24.251635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422268, 30.584335, 24.400967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178674, 0.645181, -0.742844,
		-0.372859, -0.743081, -0.555704,
		-0.910523, 0.177686, 0.373331,
		35.149113, 30.637642, 24.512966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353649, 30.428616, 23.654404>,  <35.786476, 30.513260, 24.251635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353649, 30.428616, 23.654404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.158699, 30.655048, 23.920341>,  <35.041729, 30.790909, 24.079905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.158699, 30.655048, 23.920341>,  <35.353649, 30.428616, 23.654404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158699, 30.655048, 23.920341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405432, 0.527644, -0.746469,
		-0.773365, -0.633358, -0.027650,
		-0.487371, 0.566083, 0.664845,
		35.012489, 30.824873, 24.119795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622002, 30.313766, 23.509796>,  <35.353649, 30.428616, 23.654404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622002, 30.313766, 23.509796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625622, 30.647537, 23.730213>,  <34.627792, 30.847799, 23.862463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625622, 30.647537, 23.730213>,  <34.622002, 30.313766, 23.509796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625622, 30.647537, 23.730213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519782, 0.474693, -0.710276,
		-0.854251, -0.279995, 0.438017,
		0.009050, 0.834427, 0.551043,
		34.628338, 30.897865, 23.895527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953053, 30.572742, 23.562077>,  <34.622002, 30.313766, 23.509796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953053, 30.572742, 23.562077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214142, 30.872311, 23.607811>,  <34.370796, 31.052052, 23.635252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214142, 30.872311, 23.607811>,  <33.953053, 30.572742, 23.562077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214142, 30.872311, 23.607811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486613, 0.530117, -0.694395,
		-0.580658, 0.397610, 0.710453,
		0.652721, 0.748921, 0.114334,
		34.409958, 31.096987, 23.642111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507610, 31.204351, 23.695803>,  <33.953053, 30.572742, 23.562077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507610, 31.204351, 23.695803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.854961, 31.358967, 23.571537>,  <34.063370, 31.451736, 23.496977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.854961, 31.358967, 23.571537>,  <33.507610, 31.204351, 23.695803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854961, 31.358967, 23.571537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494227, 0.623018, -0.606291,
		-0.040807, 0.680026, 0.732051,
		0.868375, 0.386540, -0.310664,
		34.115475, 31.474928, 23.478338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389423, 31.993038, 23.477751>,  <33.507610, 31.204351, 23.695803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389423, 31.993038, 23.477751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.734135, 31.891666, 23.301971>,  <33.940960, 31.830843, 23.196503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.734135, 31.891666, 23.301971>,  <33.389423, 31.993038, 23.477751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734135, 31.891666, 23.301971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192927, 0.637448, -0.745949,
		0.469170, 0.727622, 0.500444,
		0.861776, -0.253428, -0.439449,
		33.992668, 31.815638, 23.170137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776302, 32.331818, 23.580866>,  <33.389423, 31.993038, 23.477751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776302, 32.331818, 23.580866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.551559, 32.189789, 23.282001>,  <32.416714, 32.104572, 23.102684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.551559, 32.189789, 23.282001>,  <32.776302, 32.331818, 23.580866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551559, 32.189789, 23.282001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360841, -0.707548, 0.607593,
		-0.744388, 0.610984, 0.269415,
		-0.561854, -0.355069, -0.747159,
		32.383003, 32.083267, 23.057854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307732, 32.120586, 24.007204>,  <32.776302, 32.331818, 23.580866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307732, 32.120586, 24.007204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.226650, 31.954144, 23.652630>,  <32.178001, 31.854277, 23.439886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.226650, 31.954144, 23.652630>,  <32.307732, 32.120586, 24.007204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226650, 31.954144, 23.652630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306508, -0.832778, 0.461013,
		-0.930035, 0.365146, 0.041264,
		-0.202701, -0.416111, -0.886433,
		32.165840, 31.829309, 23.386700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660784, 31.751188, 24.120871>,  <32.307732, 32.120586, 24.007204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660784, 31.751188, 24.120871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.807341, 31.577602, 23.791645>,  <31.895275, 31.473452, 23.594110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.807341, 31.577602, 23.791645>,  <31.660784, 31.751188, 24.120871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807341, 31.577602, 23.791645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241294, -0.898629, 0.366393,
		-0.898629, 0.064357, -0.433964,
		-0.366393, 0.433964, 0.823062,
		31.917259, 31.447412, 23.544725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149242, 31.306938, 23.889807>,  <31.660784, 31.751188, 24.120871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149242, 31.306938, 23.889807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.497257, 31.181854, 23.737362>,  <31.706066, 31.106804, 23.645895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.497257, 31.181854, 23.737362>,  <31.149242, 31.306938, 23.889807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497257, 31.181854, 23.737362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181117, -0.921765, 0.342851,
		-0.458507, -0.229268, -0.858608,
		0.870039, -0.312708, -0.381112,
		31.758268, 31.088041, 23.623028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013456, 30.634659, 23.489521>,  <31.149242, 31.306938, 23.889807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013456, 30.634659, 23.489521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.404955, 30.648079, 23.570450>,  <31.639854, 30.656132, 23.619007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.404955, 30.648079, 23.570450>,  <31.013456, 30.634659, 23.489521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404955, 30.648079, 23.570450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009689, -0.977860, 0.209034,
		0.204857, -0.206551, -0.956750,
		0.978744, 0.033552, 0.202322,
		31.698578, 30.658144, 23.631147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263052, 30.027504, 23.203953>,  <31.013456, 30.634659, 23.489521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263052, 30.027504, 23.203953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.571928, 30.097839, 23.448185>,  <31.757254, 30.140041, 23.594725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.571928, 30.097839, 23.448185>,  <31.263052, 30.027504, 23.203953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571928, 30.097839, 23.448185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052875, -0.975395, 0.214031,
		0.633190, -0.132988, -0.762486,
		0.772188, 0.175839, 0.610578,
		31.803585, 30.150591, 23.631359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781174, 29.448568, 23.096188>,  <31.263052, 30.027504, 23.203953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781174, 29.448568, 23.096188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.860334, 29.612110, 23.452541>,  <31.907831, 29.710236, 23.666353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.860334, 29.612110, 23.452541>,  <31.781174, 29.448568, 23.096188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860334, 29.612110, 23.452541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063504, -0.901602, 0.427880,
		0.978163, -0.141252, -0.152463,
		0.197900, 0.408855, 0.890884,
		31.919704, 29.734766, 23.719807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361931, 29.058800, 23.364262>,  <31.781174, 29.448568, 23.096188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361931, 29.058800, 23.364262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.147697, 29.220329, 23.660931>,  <32.019157, 29.317247, 23.838932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.147697, 29.220329, 23.660931>,  <32.361931, 29.058800, 23.364262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147697, 29.220329, 23.660931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003994, -0.879458, 0.475960,
		0.844474, 0.251952, 0.472634,
		-0.535581, 0.403824, 0.741674,
		31.987022, 29.341476, 23.883432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616093, 28.717285, 23.957914>,  <32.361931, 29.058800, 23.364262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616093, 28.717285, 23.957914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.289227, 28.892986, 24.107208>,  <32.093109, 28.998407, 24.196785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.289227, 28.892986, 24.107208>,  <32.616093, 28.717285, 23.957914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289227, 28.892986, 24.107208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002988, -0.650737, 0.759298,
		0.576402, 0.619353, 0.533069,
		-0.817161, 0.439253, 0.373235,
		32.044079, 29.024763, 24.219179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789200, 28.750402, 24.569799>,  <32.616093, 28.717285, 23.957914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789200, 28.750402, 24.569799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.391323, 28.791374, 24.565964>,  <32.152596, 28.815958, 24.563662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.391323, 28.791374, 24.565964>,  <32.789200, 28.750402, 24.569799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391323, 28.791374, 24.565964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068798, -0.593002, 0.802257,
		0.076488, 0.798660, 0.596902,
		-0.994694, 0.102429, -0.009589,
		32.092915, 28.822104, 24.563087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613464, 28.964525, 25.253946>,  <32.789200, 28.750402, 24.569799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613464, 28.964525, 25.253946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.303932, 28.779171, 25.081223>,  <32.118214, 28.667959, 24.977589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.303932, 28.779171, 25.081223>,  <32.613464, 28.964525, 25.253946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303932, 28.779171, 25.081223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124795, -0.556835, 0.821195,
		-0.620974, 0.689355, 0.373069,
		-0.773833, -0.463384, -0.431808,
		32.071781, 28.640156, 24.951679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150864, 28.928381, 25.749012>,  <32.613464, 28.964525, 25.253946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150864, 28.928381, 25.749012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.039932, 28.647808, 25.486385>,  <31.973373, 28.479464, 25.328810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.039932, 28.647808, 25.486385>,  <32.150864, 28.928381, 25.749012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039932, 28.647808, 25.486385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143122, -0.645589, 0.750155,
		-0.950055, 0.302009, 0.078651,
		-0.277330, -0.701431, -0.656569,
		31.956734, 28.437378, 25.289415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546152, 28.623360, 25.995199>,  <32.150864, 28.928381, 25.749012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546152, 28.623360, 25.995199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.621052, 28.325207, 25.739281>,  <31.665991, 28.146315, 25.585730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.621052, 28.325207, 25.739281>,  <31.546152, 28.623360, 25.995199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621052, 28.325207, 25.739281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302158, -0.663445, 0.684501,
		-0.934686, 0.065148, -0.349453,
		0.187249, -0.745383, -0.639797,
		31.677227, 28.101591, 25.547342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991903, 28.125181, 26.068144>,  <31.546152, 28.623360, 25.995199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991903, 28.125181, 26.068144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.304077, 27.923637, 25.920063>,  <31.491381, 27.802711, 25.831215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.304077, 27.923637, 25.920063>,  <30.991903, 28.125181, 26.068144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304077, 27.923637, 25.920063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179870, -0.747999, 0.638861,
		-0.598807, -0.432001, -0.674393,
		0.780434, -0.503858, -0.370203,
		31.538208, 27.772480, 25.809002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834793, 27.434376, 26.116385>,  <30.991903, 28.125181, 26.068144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834793, 27.434376, 26.116385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.227333, 27.388302, 26.054829>,  <31.462858, 27.360657, 26.017895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.227333, 27.388302, 26.054829>,  <30.834793, 27.434376, 26.116385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227333, 27.388302, 26.054829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029068, -0.702445, 0.711144,
		-0.190010, -0.702356, -0.685998,
		0.981352, -0.115184, -0.153888,
		31.521738, 27.353746, 26.008663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003212, 26.754972, 26.214275>,  <30.834793, 27.434376, 26.116385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003212, 26.754972, 26.214275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.369802, 26.913364, 26.237152>,  <31.589756, 27.008400, 26.250879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.369802, 26.913364, 26.237152>,  <31.003212, 26.754972, 26.214275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369802, 26.913364, 26.237152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273108, -0.723646, 0.633837,
		0.292375, -0.565276, -0.771349,
		0.916477, 0.395980, 0.057194,
		31.644745, 27.032158, 26.254311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431679, 26.208546, 26.136135>,  <31.003212, 26.754972, 26.214275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431679, 26.208546, 26.136135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.628336, 26.485653, 26.347176>,  <31.746330, 26.651917, 26.473799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.628336, 26.485653, 26.347176>,  <31.431679, 26.208546, 26.136135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628336, 26.485653, 26.347176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341364, -0.710714, 0.615107,
		0.801098, -0.122310, -0.585903,
		0.491643, 0.692767, 0.527600,
		31.775829, 26.693483, 26.505455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056206, 25.873686, 26.319544>,  <31.431679, 26.208546, 26.136135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056206, 25.873686, 26.319544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.036751, 26.185413, 26.569439>,  <32.025078, 26.372450, 26.719376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.036751, 26.185413, 26.569439>,  <32.056206, 25.873686, 26.319544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036751, 26.185413, 26.569439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324524, -0.579213, 0.747794,
		0.944626, 0.239117, -0.224733,
		-0.048642, 0.779317, 0.624739,
		32.022160, 26.419209, 26.756861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.976448, 25.981348, 26.827318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683540, 26.174850, 27.019054>,  <32.507797, 26.290951, 27.134096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683540, 26.174850, 27.019054>,  <32.976448, 25.981348, 26.827318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683540, 26.174850, 27.019054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187231, -0.533729, 0.824669,
		0.654775, 0.693624, 0.300258,
		-0.732267, 0.483755, 0.479340,
		32.463860, 26.319977, 27.162857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298935, 26.128302, 27.505295>,  <32.976448, 25.981348, 26.827318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298935, 26.128302, 27.505295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.900448, 26.121883, 27.539448>,  <32.661354, 26.118032, 27.559940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.900448, 26.121883, 27.539448>,  <33.298935, 26.128302, 27.505295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900448, 26.121883, 27.539448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082750, -0.474563, 0.876323,
		0.026459, 0.880075, 0.474097,
		-0.996219, -0.016045, 0.085383,
		32.601582, 26.117069, 27.565063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151009, 26.350546, 28.217016>,  <33.298935, 26.128302, 27.505295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151009, 26.350546, 28.217016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.819309, 26.162567, 28.096020>,  <32.620289, 26.049780, 28.023422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.819309, 26.162567, 28.096020>,  <33.151009, 26.350546, 28.217016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819309, 26.162567, 28.096020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060673, -0.462341, 0.884624,
		-0.555580, 0.751925, 0.354882,
		-0.829247, -0.469947, -0.302489,
		32.570534, 26.021584, 28.005274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712250, 26.394281, 28.792471>,  <33.151009, 26.350546, 28.217016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712250, 26.394281, 28.792471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.579807, 26.080650, 28.582485>,  <32.500340, 25.892471, 28.456493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.579807, 26.080650, 28.582485>,  <32.712250, 26.394281, 28.792471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579807, 26.080650, 28.582485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187353, -0.490639, 0.850983,
		-0.924805, 0.380122, 0.015555,
		-0.331110, -0.784080, -0.524962,
		32.480473, 25.845427, 28.424997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161327, 26.189564, 29.208529>,  <32.712250, 26.394281, 28.792471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161327, 26.189564, 29.208529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.254322, 25.879868, 28.973072>,  <32.310120, 25.694050, 28.831799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.254322, 25.879868, 28.973072>,  <32.161327, 26.189564, 29.208529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254322, 25.879868, 28.973072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116150, -0.622998, 0.773552,
		-0.965639, -0.111471, -0.234767,
		0.232488, -0.774240, -0.588644,
		32.324070, 25.647596, 28.796478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872459, 25.695093, 29.607737>,  <32.161327, 26.189564, 29.208529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872459, 25.695093, 29.607737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079670, 25.484772, 29.337868>,  <32.203995, 25.358580, 29.175947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079670, 25.484772, 29.337868>,  <31.872459, 25.695093, 29.607737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079670, 25.484772, 29.337868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036169, -0.801512, 0.596884,
		-0.854602, -0.284797, -0.434219,
		0.518022, -0.525804, -0.674673,
		32.235077, 25.327030, 29.135466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499947, 25.058823, 29.623238>,  <31.872459, 25.695093, 29.607737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499947, 25.058823, 29.623238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.866468, 25.018745, 29.468140>,  <32.086380, 24.994699, 29.375080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.866468, 25.018745, 29.468140>,  <31.499947, 25.058823, 29.623238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866468, 25.018745, 29.468140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085102, -0.897374, 0.432986,
		-0.391333, -0.429745, -0.813743,
		0.916306, -0.100191, -0.387745,
		32.141361, 24.988688, 29.351816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493464, 24.441387, 29.253347>,  <31.499947, 25.058823, 29.623238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493464, 24.441387, 29.253347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.864935, 24.528587, 29.373371>,  <32.087818, 24.580908, 29.445385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.864935, 24.528587, 29.373371>,  <31.493464, 24.441387, 29.253347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864935, 24.528587, 29.373371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015506, -0.831138, 0.555850,
		0.370564, -0.511552, -0.775239,
		0.928677, 0.217999, 0.300058,
		32.143539, 24.593987, 29.463388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861811, 23.751287, 29.339640>,  <31.493464, 24.441387, 29.253347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861811, 23.751287, 29.339640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.043125, 24.032345, 29.559029>,  <32.151913, 24.200979, 29.690662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.043125, 24.032345, 29.559029>,  <31.861811, 23.751287, 29.339640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043125, 24.032345, 29.559029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123459, -0.658878, 0.742049,
		0.882775, -0.268645, -0.385407,
		0.453284, 0.702644, 0.548475,
		32.179111, 24.243137, 29.723572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310604, 23.300131, 29.624855>,  <31.861811, 23.751287, 29.339640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310604, 23.300131, 29.624855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.341557, 23.631275, 29.847084>,  <32.360126, 23.829962, 29.980421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.341557, 23.631275, 29.847084>,  <32.310604, 23.300131, 29.624855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341557, 23.631275, 29.847084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020774, -0.558459, 0.829272,
		0.996785, -0.052627, -0.060411,
		0.077379, 0.827861, 0.555570,
		32.364769, 23.879633, 30.013756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803459, 23.230896, 30.089098>,  <32.310604, 23.300131, 29.624855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803459, 23.230896, 30.089098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.579643, 23.515495, 30.259129>,  <32.445354, 23.686255, 30.361147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.579643, 23.515495, 30.259129>,  <32.803459, 23.230896, 30.089098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579643, 23.515495, 30.259129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134776, -0.584162, 0.800369,
		0.817773, 0.390547, 0.422753,
		-0.559538, 0.711497, 0.425075,
		32.411781, 23.728945, 30.386652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867485, 23.108170, 30.682163>,  <32.803459, 23.230896, 30.089098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867485, 23.108170, 30.682163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.562405, 23.362766, 30.728062>,  <32.379356, 23.515524, 30.755600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.562405, 23.362766, 30.728062>,  <32.867485, 23.108170, 30.682163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562405, 23.362766, 30.728062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254613, -0.458584, 0.851395,
		0.594528, 0.620142, 0.511821,
		-0.762699, 0.636494, 0.114744,
		32.333595, 23.553715, 30.762486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801929, 23.374901, 31.395687>,  <32.867485, 23.108170, 30.682163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801929, 23.374901, 31.395687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.430439, 23.398846, 31.249325>,  <32.207546, 23.413212, 31.161509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.430439, 23.398846, 31.249325>,  <32.801929, 23.374901, 31.395687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430439, 23.398846, 31.249325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322890, -0.615645, 0.718835,
		-0.182237, 0.785747, 0.591093,
		-0.928726, 0.059860, -0.365903,
		32.151821, 23.416803, 31.139553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337948, 23.539280, 31.986938>,  <32.801929, 23.374901, 31.395687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337948, 23.539280, 31.986938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.113445, 23.377659, 31.698013>,  <31.978745, 23.280685, 31.524658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.113445, 23.377659, 31.698013>,  <32.337948, 23.539280, 31.986938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113445, 23.377659, 31.698013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452557, -0.580884, 0.676584,
		-0.692957, 0.706622, 0.143166,
		-0.561252, -0.404053, -0.722314,
		31.945070, 23.256443, 31.481319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850708, 23.398186, 32.392532>,  <32.337948, 23.539280, 31.986938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850708, 23.398186, 32.392532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.758741, 23.172523, 32.075329>,  <31.703562, 23.037127, 31.885006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.758741, 23.172523, 32.075329>,  <31.850708, 23.398186, 32.392532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758741, 23.172523, 32.075329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381442, -0.697407, 0.606733,
		-0.895343, 0.441987, -0.054847,
		-0.229918, -0.564155, -0.793011,
		31.689766, 23.003277, 31.837425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161461, 23.153570, 32.463608>,  <31.850708, 23.398186, 32.392532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161461, 23.153570, 32.463608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.322838, 22.910011, 32.190411>,  <31.419664, 22.763876, 32.026493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.322838, 22.910011, 32.190411>,  <31.161461, 23.153570, 32.463608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322838, 22.910011, 32.190411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292769, -0.793096, 0.534121,
		-0.866903, -0.015529, -0.498236,
		0.403443, -0.608899, -0.682990,
		31.443871, 22.727341, 31.985514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676903, 22.830217, 32.264023>,  <31.161461, 23.153570, 32.463608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676903, 22.830217, 32.264023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.000134, 22.604774, 32.195480>,  <31.194073, 22.469509, 32.154354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.000134, 22.604774, 32.195480>,  <30.676903, 22.830217, 32.264023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000134, 22.604774, 32.195480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444602, -0.774342, 0.450249,
		-0.386447, -0.287653, -0.876307,
		0.808077, -0.563605, -0.171351,
		31.242556, 22.435694, 32.144073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420307, 22.200699, 31.921520>,  <30.676903, 22.830217, 32.264023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420307, 22.200699, 31.921520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.772890, 22.140209, 32.100479>,  <30.984440, 22.103916, 32.207855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.772890, 22.140209, 32.100479>,  <30.420307, 22.200699, 31.921520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772890, 22.140209, 32.100479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388583, -0.770631, 0.505105,
		0.268392, -0.619080, -0.738042,
		0.881458, -0.151224, 0.447395,
		31.037327, 22.094841, 32.234699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375641, 21.595671, 32.225842>,  <30.420307, 22.200699, 31.921520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375641, 21.595671, 32.225842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.725790, 21.678539, 32.400566>,  <30.935881, 21.728260, 32.505402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.725790, 21.678539, 32.400566>,  <30.375641, 21.595671, 32.225842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725790, 21.678539, 32.400566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203320, -0.661974, 0.721423,
		0.438613, -0.720327, -0.537353,
		0.875374, 0.207171, 0.436807,
		30.988401, 21.740690, 32.531609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667742, 20.931456, 32.355808>,  <30.375641, 21.595671, 32.225842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667742, 20.931456, 32.355808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.858120, 21.167793, 32.616386>,  <30.972347, 21.309597, 32.772732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.858120, 21.167793, 32.616386>,  <30.667742, 20.931456, 32.355808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858120, 21.167793, 32.616386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051336, -0.720791, 0.691249,
		0.877976, -0.362439, -0.312725,
		0.475945, 0.590846, 0.651443,
		31.000904, 21.345047, 32.811821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289877, 20.485935, 32.734852>,  <30.667742, 20.931456, 32.355808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289877, 20.485935, 32.734852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.184671, 20.804054, 32.953327>,  <31.121548, 20.994926, 33.084412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.184671, 20.804054, 32.953327>,  <31.289877, 20.485935, 32.734852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184671, 20.804054, 32.953327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036891, -0.573998, 0.818026,
		0.964087, 0.195001, 0.180308,
		-0.263012, 0.795300, 0.546190,
		31.105768, 21.042645, 33.117184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646719, 20.480246, 33.333363>,  <31.289877, 20.485935, 32.734852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646719, 20.480246, 33.333363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.359060, 20.730659, 33.453964>,  <31.186464, 20.880907, 33.526325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.359060, 20.730659, 33.453964>,  <31.646719, 20.480246, 33.333363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359060, 20.730659, 33.453964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054456, -0.483357, 0.873728,
		0.692719, 0.611921, 0.381697,
		-0.719149, 0.626034, 0.301508,
		31.143316, 20.918470, 33.544418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850479, 20.725056, 33.950298>,  <31.646719, 20.480246, 33.333363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850479, 20.725056, 33.950298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452711, 20.748936, 33.985096>,  <31.214050, 20.763264, 34.005974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452711, 20.748936, 33.985096>,  <31.850479, 20.725056, 33.950298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452711, 20.748936, 33.985096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067148, -0.277942, 0.958248,
		0.081386, 0.958741, 0.272382,
		-0.994418, 0.059698, 0.086998,
		31.154387, 20.766846, 34.011196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534742, 21.122358, 34.597359>,  <31.850479, 20.725056, 33.950298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534742, 21.122358, 34.597359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262981, 20.852947, 34.480896>,  <31.099926, 20.691299, 34.411018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262981, 20.852947, 34.480896>,  <31.534742, 21.122358, 34.597359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262981, 20.852947, 34.480896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178570, -0.233101, 0.955917,
		-0.711707, 0.701442, 0.038097,
		-0.679401, -0.673530, -0.291157,
		31.059162, 20.650888, 34.393547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349789, 21.222916, 34.479256>,  <31.534742, 21.122358, 34.597359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349789, 21.222916, 34.479256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.700642, 21.240704, 34.670528>,  <32.911156, 21.251377, 34.785290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.700642, 21.240704, 34.670528>,  <32.349789, 21.222916, 34.479256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700642, 21.240704, 34.670528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180587, 0.892081, -0.414223,
		-0.444994, 0.449683, 0.774446,
		0.877137, 0.044471, 0.478178,
		32.963783, 21.254045, 34.813980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394127, 21.889305, 34.871487>,  <32.349789, 21.222916, 34.479256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394127, 21.889305, 34.871487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.750618, 21.731709, 34.781616>,  <32.964512, 21.637150, 34.727695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.750618, 21.731709, 34.781616>,  <32.394127, 21.889305, 34.871487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750618, 21.731709, 34.781616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341915, 0.909110, -0.237936,
		0.297999, 0.135236, 0.944938,
		0.891230, -0.393993, -0.224674,
		33.017986, 21.613510, 34.714214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744762, 22.410969, 35.020397>,  <32.394127, 21.889305, 34.871487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744762, 22.410969, 35.020397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.986435, 22.182400, 34.798244>,  <33.131439, 22.045258, 34.664955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.986435, 22.182400, 34.798244>,  <32.744762, 22.410969, 35.020397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986435, 22.182400, 34.798244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479817, 0.817334, -0.318969,
		0.636197, -0.073767, 0.767993,
		0.604177, -0.571423, -0.555379,
		33.167686, 22.010973, 34.631630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347561, 22.719498, 35.107399>,  <32.744762, 22.410969, 35.020397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347561, 22.719498, 35.107399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.334118, 22.495609, 34.776199>,  <33.326050, 22.361277, 34.577480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.334118, 22.495609, 34.776199>,  <33.347561, 22.719498, 35.107399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334118, 22.495609, 34.776199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486871, 0.714348, -0.502657,
		0.872827, -0.420023, 0.248503,
		-0.033610, -0.559721, -0.827999,
		33.324036, 22.327692, 34.527798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829201, 23.084623, 34.755348>,  <33.347561, 22.719498, 35.107399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829201, 23.084623, 34.755348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.673786, 22.838406, 34.481079>,  <33.580536, 22.690676, 34.316517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.673786, 22.838406, 34.481079>,  <33.829201, 23.084623, 34.755348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673786, 22.838406, 34.481079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303699, 0.617011, -0.725992,
		0.869947, -0.490311, -0.052790,
		-0.388535, -0.615543, -0.685674,
		33.557224, 22.653744, 34.275375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405476, 22.930273, 34.261818>,  <33.829201, 23.084623, 34.755348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405476, 22.930273, 34.261818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.061684, 22.864464, 34.068226>,  <33.855408, 22.824978, 33.952072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.061684, 22.864464, 34.068226>,  <34.405476, 22.930273, 34.261818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061684, 22.864464, 34.068226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255699, 0.681454, -0.685739,
		0.442625, -0.713129, -0.543627,
		-0.859478, -0.164520, -0.483975,
		33.803841, 22.815107, 33.923035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636665, 22.801727, 33.664562>,  <34.405476, 22.930273, 34.261818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636665, 22.801727, 33.664562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248978, 22.894642, 33.631908>,  <34.016365, 22.950390, 33.612316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248978, 22.894642, 33.631908>,  <34.636665, 22.801727, 33.664562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248978, 22.894642, 33.631908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221384, 0.677074, -0.701826,
		-0.107749, -0.698294, -0.707654,
		-0.969216, 0.232285, -0.081638,
		33.958214, 22.964327, 33.607418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452320, 22.668308, 32.930573>,  <34.636665, 22.801727, 33.664562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452320, 22.668308, 32.930573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195099, 22.947060, 33.057590>,  <34.040764, 23.114311, 33.133801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195099, 22.947060, 33.057590>,  <34.452320, 22.668308, 32.930573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195099, 22.947060, 33.057590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197969, 0.551828, -0.810120,
		-0.739788, -0.458088, -0.492817,
		-0.643057, 0.696880, 0.317548,
		34.002182, 23.156124, 33.152855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008224, 22.898766, 32.360512>,  <34.452320, 22.668308, 32.930573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008224, 22.898766, 32.360512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.944084, 23.187912, 32.629360>,  <33.905598, 23.361399, 32.790668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.944084, 23.187912, 32.629360>,  <34.008224, 22.898766, 32.360512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944084, 23.187912, 32.629360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061733, 0.672260, -0.737737,
		-0.985127, -0.159792, -0.063175,
		-0.160354, 0.722865, 0.672126,
		33.895977, 23.404772, 32.830997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378880, 23.189524, 32.376881>,  <34.008224, 22.898766, 32.360512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378880, 23.189524, 32.376881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.621178, 23.471478, 32.524509>,  <33.766556, 23.640650, 32.613087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.621178, 23.471478, 32.524509>,  <33.378880, 23.189524, 32.376881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621178, 23.471478, 32.524509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089984, 0.521569, -0.848451,
		-0.790555, 0.480733, 0.379365,
		0.605743, 0.704884, 0.369071,
		33.802902, 23.682943, 32.635231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237572, 23.826118, 31.994738>,  <33.378880, 23.189524, 32.376881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237572, 23.826118, 31.994738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.577374, 23.948986, 32.166309>,  <33.781254, 24.022707, 32.269253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.577374, 23.948986, 32.166309>,  <33.237572, 23.826118, 31.994738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577374, 23.948986, 32.166309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166131, 0.615910, -0.770101,
		-0.500735, 0.725466, 0.472190,
		0.849509, 0.307170, 0.428930,
		33.832226, 24.041138, 32.294987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218582, 24.574970, 31.868628>,  <33.237572, 23.826118, 31.994738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218582, 24.574970, 31.868628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597397, 24.481976, 31.957230>,  <33.824688, 24.426178, 32.010391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597397, 24.481976, 31.957230>,  <33.218582, 24.574970, 31.868628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597397, 24.481976, 31.957230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320562, 0.644058, -0.694571,
		0.018816, 0.728793, 0.684475,
		0.947040, -0.232486, 0.221505,
		33.881508, 24.412230, 32.023682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582729, 25.174116, 31.879425>,  <33.218582, 24.574970, 31.868628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582729, 25.174116, 31.879425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.859138, 24.893326, 31.810467>,  <34.024982, 24.724852, 31.769093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.859138, 24.893326, 31.810467>,  <33.582729, 25.174116, 31.879425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859138, 24.893326, 31.810467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319555, 0.510603, -0.798229,
		0.648360, 0.496505, 0.577158,
		0.691023, -0.701973, -0.172394,
		34.066444, 24.682734, 31.758749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169498, 25.512440, 31.845432>,  <33.582729, 25.174116, 31.879425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169498, 25.512440, 31.845432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.245590, 25.173229, 31.647579>,  <34.291245, 24.969702, 31.528868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.245590, 25.173229, 31.647579>,  <34.169498, 25.512440, 31.845432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245590, 25.173229, 31.647579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417455, 0.525886, -0.741064,
		0.888563, -0.065514, 0.454053,
		0.190230, -0.848028, -0.494632,
		34.302658, 24.918821, 31.499189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871441, 25.570400, 31.576862>,  <34.169498, 25.512440, 31.845432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871441, 25.570400, 31.576862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.693237, 25.278133, 31.369923>,  <34.586315, 25.102774, 31.245758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.693237, 25.278133, 31.369923>,  <34.871441, 25.570400, 31.576862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693237, 25.278133, 31.369923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305588, 0.419052, -0.854992,
		0.841509, -0.539002, 0.036591,
		-0.445509, -0.730665, -0.517349,
		34.559586, 25.058933, 31.214718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413071, 25.318922, 31.009233>,  <34.871441, 25.570400, 31.576862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413071, 25.318922, 31.009233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.048534, 25.209877, 30.885857>,  <34.829811, 25.144449, 30.811831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.048534, 25.209877, 30.885857>,  <35.413071, 25.318922, 31.009233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048534, 25.209877, 30.885857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203993, 0.351729, -0.913605,
		0.357588, -0.895515, -0.264921,
		-0.911327, -0.272653, -0.308453,
		34.775131, 25.128094, 30.793324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542679, 24.936699, 30.470167>,  <35.413071, 25.318922, 31.009233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542679, 24.936699, 30.470167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162094, 25.048805, 30.419292>,  <34.933743, 25.116070, 30.388767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162094, 25.048805, 30.419292>,  <35.542679, 24.936699, 30.470167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162094, 25.048805, 30.419292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187382, 0.199679, -0.961778,
		-0.244158, -0.938924, -0.242503,
		-0.951459, 0.280266, -0.127185,
		34.876656, 25.132885, 30.381138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411839, 24.806675, 29.756735>,  <35.542679, 24.936699, 30.470167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411839, 24.806675, 29.756735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119522, 25.059517, 29.859795>,  <34.944130, 25.211222, 29.921631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119522, 25.059517, 29.859795>,  <35.411839, 24.806675, 29.756735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119522, 25.059517, 29.859795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003145, 0.380567, -0.924748,
		-0.682589, -0.674992, -0.280104,
		-0.730796, 0.632104, 0.257648,
		34.900284, 25.249147, 29.937088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983242, 24.954762, 29.077841>,  <35.411839, 24.806675, 29.756735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983242, 24.954762, 29.077841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854218, 25.256660, 29.306335>,  <34.776802, 25.437799, 29.443432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854218, 25.256660, 29.306335>,  <34.983242, 24.954762, 29.077841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854218, 25.256660, 29.306335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009513, 0.606049, -0.795370,
		-0.946500, -0.251123, -0.202669,
		-0.322564, 0.754746, 0.571236,
		34.757450, 25.483084, 29.477707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346565, 25.261326, 28.761410>,  <34.983242, 24.954762, 29.077841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346565, 25.261326, 28.761410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.544418, 25.516094, 28.997944>,  <34.663128, 25.668955, 29.139864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.544418, 25.516094, 28.997944>,  <34.346565, 25.261326, 28.761410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544418, 25.516094, 28.997944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108667, 0.720378, -0.685016,
		-0.862284, 0.274570, 0.425532,
		0.494629, 0.636919, 0.591334,
		34.692806, 25.707170, 29.175344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.731668, 30.900652, 18.252348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.055916, 30.694881, 18.140442>,  <21.250463, 30.571419, 18.073299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.055916, 30.694881, 18.140442>,  <20.731668, 30.900652, 18.252348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.055916, 30.694881, 18.140442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519368, 0.410928, 0.749263,
		-0.270478, -0.752665, 0.600281,
		0.810616, -0.514426, -0.279763,
		21.299101, 30.540554, 18.056513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.958328, 30.605669, 18.882694>,  <20.731668, 30.900652, 18.252348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.958328, 30.605669, 18.882694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.270723, 30.599369, 18.632954>,  <21.458160, 30.595589, 18.483110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.270723, 30.599369, 18.632954>,  <20.958328, 30.605669, 18.882694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.270723, 30.599369, 18.632954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592909, 0.332850, 0.733259,
		0.196266, -0.942848, 0.269290,
		0.780985, -0.015751, -0.624350,
		21.505018, 30.594645, 18.445648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.554153, 30.373331, 19.258530>,  <20.958328, 30.605669, 18.882694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.554153, 30.373331, 19.258530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.727407, 30.572517, 18.958015>,  <21.831360, 30.692028, 18.777708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.727407, 30.572517, 18.958015>,  <21.554153, 30.373331, 19.258530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.727407, 30.572517, 18.958015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578597, 0.485500, 0.655374,
		0.691101, -0.718555, -0.077833,
		0.433135, 0.497964, -0.751284,
		21.857347, 30.721907, 18.732630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.228201, 30.284010, 19.437550>,  <21.554153, 30.373331, 19.258530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.228201, 30.284010, 19.437550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.207510, 30.603580, 19.197868>,  <22.195095, 30.795322, 19.054060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.207510, 30.603580, 19.197868>,  <22.228201, 30.284010, 19.437550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.207510, 30.603580, 19.197868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681961, 0.466583, 0.563231,
		0.729557, -0.379497, -0.568972,
		-0.051728, 0.798926, -0.599201,
		22.191992, 30.843258, 19.018108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.878187, 30.535202, 19.360764>,  <22.228201, 30.284010, 19.437550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.878187, 30.535202, 19.360764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.660177, 30.849724, 19.244366>,  <22.529371, 31.038437, 19.174526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.660177, 30.849724, 19.244366>,  <22.878187, 30.535202, 19.360764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.660177, 30.849724, 19.244366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612940, 0.610491, 0.501603,
		0.572061, 0.095023, -0.814688,
		-0.545023, 0.786303, -0.290994,
		22.496670, 31.085615, 19.157068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.416231, 31.022316, 19.262655>,  <22.878187, 30.535202, 19.360764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.416231, 31.022316, 19.262655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.088205, 31.249599, 19.289890>,  <22.891390, 31.385969, 19.306231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.088205, 31.249599, 19.289890>,  <23.416231, 31.022316, 19.262655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.088205, 31.249599, 19.289890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525231, 0.700067, 0.483775,
		0.227219, 0.432488, -0.872540,
		-0.820063, 0.568208, 0.068087,
		22.842186, 31.420061, 19.310316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.679884, 31.725382, 19.151777>,  <23.416231, 31.022316, 19.262655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.679884, 31.725382, 19.151777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.323341, 31.777924, 19.325317>,  <23.109415, 31.809448, 19.429441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.323341, 31.777924, 19.325317>,  <23.679884, 31.725382, 19.151777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.323341, 31.777924, 19.325317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385463, 0.723279, 0.572962,
		-0.238534, 0.677948, -0.695333,
		-0.891359, 0.131354, 0.433850,
		23.055933, 31.817329, 19.455473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.606062, 32.385258, 19.190947>,  <23.679884, 31.725382, 19.151777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.606062, 32.385258, 19.190947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.350239, 32.276157, 19.478439>,  <23.196745, 32.210697, 19.650934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.350239, 32.276157, 19.478439>,  <23.606062, 32.385258, 19.190947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.350239, 32.276157, 19.478439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277400, 0.790070, 0.546661,
		-0.716950, 0.548997, -0.429633,
		-0.639556, -0.272749, 0.718733,
		23.158373, 32.194332, 19.694059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.336153, 33.014721, 19.491482>,  <23.606062, 32.385258, 19.190947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.336153, 33.014721, 19.491482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.250168, 32.745556, 19.774601>,  <23.198576, 32.584057, 19.944473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.250168, 32.745556, 19.774601>,  <23.336153, 33.014721, 19.491482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.250168, 32.745556, 19.774601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186168, 0.683217, 0.706085,
		-0.958713, 0.283553, -0.021593,
		-0.214965, -0.672913, 0.707798,
		23.185678, 32.543682, 19.986940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.879238, 33.317963, 19.961329>,  <23.336153, 33.014721, 19.491482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.879238, 33.317963, 19.961329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.029659, 33.016842, 20.177429>,  <23.119911, 32.836170, 20.307089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.029659, 33.016842, 20.177429>,  <22.879238, 33.317963, 19.961329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.029659, 33.016842, 20.177429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295634, 0.650052, 0.700023,
		-0.878172, -0.103527, 0.467007,
		0.376051, -0.752804, 0.540251,
		23.142475, 32.791000, 20.339504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.512140, 33.321686, 20.610117>,  <22.879238, 33.317963, 19.961329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.512140, 33.321686, 20.610117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.863213, 33.139519, 20.669807>,  <23.073856, 33.030216, 20.705622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.863213, 33.139519, 20.669807>,  <22.512140, 33.321686, 20.610117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.863213, 33.139519, 20.669807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224670, 0.666038, 0.711278,
		-0.423321, -0.590748, 0.686888,
		0.877680, -0.455422, 0.149225,
		23.126516, 33.002892, 20.714575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.592289, 33.053757, 21.465199>,  <22.512140, 33.321686, 20.610117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.592289, 33.053757, 21.465199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.958994, 33.082863, 21.308098>,  <23.179016, 33.100327, 21.213837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.958994, 33.082863, 21.308098>,  <22.592289, 33.053757, 21.465199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.958994, 33.082863, 21.308098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257552, 0.643880, 0.720476,
		0.305313, -0.761658, 0.571543,
		0.916761, 0.072768, -0.392751,
		23.234022, 33.104694, 21.190273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.992979, 33.237858, 22.063145>,  <22.592289, 33.053757, 21.465199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.992979, 33.237858, 22.063145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.261021, 33.323891, 21.778976>,  <23.421846, 33.375511, 21.608475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.261021, 33.323891, 21.778976>,  <22.992979, 33.237858, 22.063145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.261021, 33.323891, 21.778976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289130, 0.805868, 0.516702,
		0.683640, -0.551649, 0.477828,
		0.670104, 0.215084, -0.710422,
		23.462051, 33.388416, 21.565849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.512245, 33.423367, 22.562830>,  <22.992979, 33.237858, 22.063145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.512245, 33.423367, 22.562830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.614168, 33.586578, 22.212154>,  <23.675322, 33.684505, 22.001749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.614168, 33.586578, 22.212154>,  <23.512245, 33.423367, 22.562830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.614168, 33.586578, 22.212154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486499, 0.729427, 0.480890,
		0.835699, -0.549042, -0.012645,
		0.254805, 0.408031, -0.876689,
		23.690609, 33.708988, 21.949148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.191967, 33.522732, 22.613066>,  <23.512245, 33.423367, 22.562830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.191967, 33.522732, 22.613066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.065170, 33.767681, 22.323372>,  <23.989092, 33.914650, 22.149555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.065170, 33.767681, 22.323372>,  <24.191967, 33.522732, 22.613066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.065170, 33.767681, 22.323372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444475, 0.770487, 0.456937,
		0.837829, -0.177059, -0.516423,
		-0.316993, 0.612372, -0.724235,
		23.970072, 33.951393, 22.106102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.847383, 33.874054, 22.196459>,  <24.191967, 33.522732, 22.613066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.847383, 33.874054, 22.196459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.514362, 34.093292, 22.164330>,  <24.314550, 34.224834, 22.145052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.514362, 34.093292, 22.164330>,  <24.847383, 33.874054, 22.196459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.514362, 34.093292, 22.164330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483710, 0.789970, 0.376791,
		0.269969, 0.274845, -0.922809,
		-0.832551, 0.548094, -0.080322,
		24.264597, 34.257721, 22.140232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.097811, 34.564472, 22.112926>,  <24.847383, 33.874054, 22.196459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.097811, 34.564472, 22.112926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.719194, 34.634048, 22.221596>,  <24.492025, 34.675793, 22.286797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.719194, 34.634048, 22.221596>,  <25.097811, 34.564472, 22.112926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.719194, 34.634048, 22.221596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281157, 0.857716, 0.430435,
		-0.158148, 0.483807, -0.860767,
		-0.946541, 0.173938, 0.271672,
		24.435232, 34.686230, 22.303097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.991837, 35.303059, 21.989683>,  <25.097811, 34.564472, 22.112926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.991837, 35.303059, 21.989683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.679136, 35.186111, 22.210007>,  <24.491516, 35.115944, 22.342201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.679136, 35.186111, 22.210007>,  <24.991837, 35.303059, 21.989683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.679136, 35.186111, 22.210007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057116, 0.845997, 0.530120,
		-0.620973, 0.445880, -0.644658,
		-0.781749, -0.292369, 0.550808,
		24.444613, 35.098400, 22.375250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.537340, 35.900932, 22.074343>,  <24.991837, 35.303059, 21.989683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.537340, 35.900932, 22.074343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.419329, 35.645908, 22.359013>,  <24.348522, 35.492893, 22.529814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.419329, 35.645908, 22.359013>,  <24.537340, 35.900932, 22.074343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.419329, 35.645908, 22.359013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040466, 0.752497, 0.657351,
		-0.954632, 0.165138, -0.247806,
		-0.295027, -0.637556, 0.711675,
		24.330820, 35.454643, 22.572515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.909056, 36.046696, 22.345396>,  <24.537340, 35.900932, 22.074343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.909056, 36.046696, 22.345396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.099361, 35.849220, 22.636578>,  <24.213545, 35.730736, 22.811287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.099361, 35.849220, 22.636578>,  <23.909056, 36.046696, 22.345396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.099361, 35.849220, 22.636578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130682, 0.858112, 0.496555,
		-0.869811, -0.141112, 0.472775,
		0.475764, -0.493692, 0.727954,
		24.242090, 35.701111, 22.854963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.469433, 36.208447, 22.867146>,  <23.909056, 36.046696, 22.345396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.469433, 36.208447, 22.867146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.832226, 36.087845, 22.984776>,  <24.049902, 36.015484, 23.055353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.832226, 36.087845, 22.984776>,  <23.469433, 36.208447, 22.867146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.832226, 36.087845, 22.984776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070583, 0.797168, 0.599617,
		-0.415215, -0.523085, 0.744298,
		0.906981, -0.301505, 0.294075,
		24.104321, 35.997395, 23.072998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.942698, 36.739964, 22.991053>,  <23.469433, 36.208447, 22.867146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.942698, 36.739964, 22.991053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.553892, 36.833405, 22.981117>,  <22.320608, 36.889469, 22.975157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.553892, 36.833405, 22.981117>,  <22.942698, 36.739964, 22.991053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.553892, 36.833405, 22.981117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113178, -0.558307, -0.821878,
		-0.205862, -0.796066, 0.569121,
		-0.972014, 0.233605, -0.024837,
		22.262287, 36.903484, 22.973665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.620407, 36.159649, 22.978706>,  <22.942698, 36.739964, 22.991053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.620407, 36.159649, 22.978706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.332266, 36.396835, 22.834770>,  <22.159382, 36.539146, 22.748407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.332266, 36.396835, 22.834770>,  <22.620407, 36.159649, 22.978706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.332266, 36.396835, 22.834770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279057, -0.722721, -0.632298,
		-0.634994, -0.355062, 0.686085,
		-0.720353, 0.592963, -0.359841,
		22.116159, 36.574726, 22.726818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.028446, 35.743263, 23.084036>,  <22.620407, 36.159649, 22.978706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.028446, 35.743263, 23.084036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.964058, 36.026020, 22.808533>,  <21.925425, 36.195675, 22.643230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.964058, 36.026020, 22.808533>,  <22.028446, 35.743263, 23.084036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.964058, 36.026020, 22.808533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244490, -0.704669, -0.666083,
		-0.956197, 0.061176, 0.286259,
		-0.160970, 0.706894, -0.688759,
		21.915768, 36.238087, 22.601906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.326893, 35.682606, 22.829613>,  <22.028446, 35.743263, 23.084036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.326893, 35.682606, 22.829613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.537655, 35.876179, 22.550133>,  <21.664112, 35.992321, 22.382444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.537655, 35.876179, 22.550133>,  <21.326893, 35.682606, 22.829613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.537655, 35.876179, 22.550133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348329, -0.626908, -0.696888,
		-0.775267, 0.610571, -0.161753,
		0.526904, 0.483931, -0.698701,
		21.695726, 36.021358, 22.340523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.927639, 35.620701, 22.245800>,  <21.326893, 35.682606, 22.829613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.927639, 35.620701, 22.245800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.258081, 35.765961, 22.073441>,  <21.456347, 35.853115, 21.970024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.258081, 35.765961, 22.073441>,  <20.927639, 35.620701, 22.245800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.258081, 35.765961, 22.073441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177048, -0.558675, -0.810269,
		-0.534981, 0.745656, -0.397229,
		0.826105, 0.363150, -0.430898,
		21.505913, 35.874905, 21.944172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.670914, 35.941994, 21.666021>,  <20.927639, 35.620701, 22.245800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.670914, 35.941994, 21.666021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.054985, 35.869160, 21.581264>,  <21.285429, 35.825459, 21.530411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.054985, 35.869160, 21.581264>,  <20.670914, 35.941994, 21.666021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.054985, 35.869160, 21.581264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268385, -0.390475, -0.880624,
		0.077608, 0.902427, -0.423795,
		0.960181, -0.182084, -0.211893,
		21.343039, 35.814533, 21.517696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.757977, 36.033043, 20.985710>,  <20.670914, 35.941994, 21.666021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.757977, 36.033043, 20.985710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.074341, 35.803425, 21.070496>,  <21.264160, 35.665653, 21.121367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.074341, 35.803425, 21.070496>,  <20.757977, 36.033043, 20.985710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.074341, 35.803425, 21.070496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203225, -0.573125, -0.793868,
		0.577201, 0.584803, -0.569952,
		0.790910, -0.574050, 0.211962,
		21.311613, 35.631210, 21.134085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.044872, 35.825268, 20.320339>,  <20.757977, 36.033043, 20.985710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.044872, 35.825268, 20.320339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.189718, 35.548882, 20.570599>,  <21.276627, 35.383049, 20.720755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.189718, 35.548882, 20.570599>,  <21.044872, 35.825268, 20.320339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.189718, 35.548882, 20.570599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136559, -0.703284, -0.697670,
		0.922076, 0.167200, -0.349028,
		0.362116, -0.690968, 0.625648,
		21.298353, 35.341591, 20.758293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.442080, 35.337986, 19.876362>,  <21.044872, 35.825268, 20.320339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.442080, 35.337986, 19.876362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.352034, 35.126743, 20.203880>,  <21.298006, 35.000000, 20.400393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.352034, 35.126743, 20.203880>,  <21.442080, 35.337986, 19.876362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.352034, 35.126743, 20.203880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297842, -0.762843, -0.573900,
		0.927693, -0.373065, 0.014435,
		-0.225114, -0.528104, 0.818798,
		21.284500, 34.968311, 20.449520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.725327, 34.677475, 19.724703>,  <21.442080, 35.337986, 19.876362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.725327, 34.677475, 19.724703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.465960, 34.616894, 20.023129>,  <21.310339, 34.580547, 20.202185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.465960, 34.616894, 20.023129>,  <21.725327, 34.677475, 19.724703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.465960, 34.616894, 20.023129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305376, -0.845965, -0.437137,
		0.697350, -0.511279, 0.502291,
		-0.648419, -0.151450, 0.746066,
		21.271433, 34.571457, 20.246948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.947014, 34.054417, 19.879242>,  <21.725327, 34.677475, 19.724703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.947014, 34.054417, 19.879242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.584154, 34.104053, 20.040081>,  <21.366438, 34.133835, 20.136585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.584154, 34.104053, 20.040081>,  <21.947014, 34.054417, 19.879242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.584154, 34.104053, 20.040081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231567, -0.945052, -0.230768,
		0.351366, -0.302454, 0.886038,
		-0.907149, 0.124093, 0.402097,
		21.312010, 34.141281, 20.160709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.761305, 33.419235, 20.211933>,  <21.947014, 34.054417, 19.879242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.761305, 33.419235, 20.211933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.415438, 33.615799, 20.170235>,  <21.207916, 33.733738, 20.145216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.415438, 33.615799, 20.170235>,  <21.761305, 33.419235, 20.211933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.415438, 33.615799, 20.170235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456361, -0.855159, -0.245841,
		-0.209955, -0.164997, 0.963688,
		-0.864669, 0.491405, -0.104247,
		21.156036, 33.763222, 20.138960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.279579, 33.004787, 20.446955>,  <21.761305, 33.419235, 20.211933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.279579, 33.004787, 20.446955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.024689, 33.238644, 20.246101>,  <20.871756, 33.378960, 20.125589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.024689, 33.238644, 20.246101>,  <21.279579, 33.004787, 20.446955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.024689, 33.238644, 20.246101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576169, -0.794114, -0.193424,
		-0.511835, 0.166059, 0.842882,
		-0.637224, 0.584643, -0.502133,
		20.833521, 33.414036, 20.095461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.566748, 32.861397, 20.585499>,  <21.279579, 33.004787, 20.446955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.566748, 32.861397, 20.585499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.542959, 33.045822, 20.231350>,  <20.528687, 33.156479, 20.018860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.542959, 33.045822, 20.231350>,  <20.566748, 32.861397, 20.585499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.542959, 33.045822, 20.231350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443822, -0.806669, -0.390265,
		-0.894139, 0.369739, 0.252603,
		-0.059471, 0.461062, -0.885373,
		20.525118, 33.184139, 19.965738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.946087, 32.645966, 20.348759>,  <20.566748, 32.861397, 20.585499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.946087, 32.645966, 20.348759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.114935, 32.797249, 20.019207>,  <20.216244, 32.888020, 19.821476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.114935, 32.797249, 20.019207>,  <19.946087, 32.645966, 20.348759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.114935, 32.797249, 20.019207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421848, -0.722473, -0.547793,
		-0.802409, 0.578785, -0.145424,
		0.422119, 0.378207, -0.823878,
		20.241571, 32.910709, 19.772043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.365047, 32.755329, 19.842861>,  <19.946087, 32.645966, 20.348759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.365047, 32.755329, 19.842861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.720083, 32.728477, 19.660576>,  <19.933105, 32.712364, 19.551205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.720083, 32.728477, 19.660576>,  <19.365047, 32.755329, 19.842861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.720083, 32.728477, 19.660576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401011, -0.599410, -0.692746,
		-0.226654, 0.797622, -0.558952,
		0.887591, -0.067132, -0.455714,
		19.986361, 32.708340, 19.523861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.161636, 32.699642, 19.126759>,  <19.365047, 32.755329, 19.842861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.161636, 32.699642, 19.126759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.541676, 32.576130, 19.109020>,  <19.769699, 32.502022, 19.098377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.541676, 32.576130, 19.109020>,  <19.161636, 32.699642, 19.126759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.541676, 32.576130, 19.109020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250891, -0.671900, -0.696853,
		0.185377, 0.673206, -0.715842,
		0.950100, -0.308779, -0.044347,
		19.826706, 32.483498, 19.095716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.372965, 32.635517, 18.419146>,  <19.161636, 32.699642, 19.126759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.372965, 32.635517, 18.419146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.623842, 32.399635, 18.622665>,  <19.774368, 32.258106, 18.744778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.623842, 32.399635, 18.622665>,  <19.372965, 32.635517, 18.419146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.623842, 32.399635, 18.622665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016774, -0.663333, -0.748137,
		0.778683, 0.460691, -0.425929,
		0.627193, -0.589706, 0.508798,
		19.812000, 32.222725, 18.775305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.984001, 32.632576, 17.924015>,  <19.372965, 32.635517, 18.419146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.984001, 32.632576, 17.924015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.969122, 32.325554, 18.179977>,  <19.960194, 32.141342, 18.333555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.969122, 32.325554, 18.179977>,  <19.984001, 32.632576, 17.924015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.969122, 32.325554, 18.179977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010163, -0.640027, -0.768286,
		0.999256, -0.035083, 0.016008,
		-0.037200, -0.767551, 0.639907,
		19.957962, 32.095287, 18.371950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.578382, 32.147606, 17.706970>,  <19.984001, 32.632576, 17.924015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.578382, 32.147606, 17.706970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.321800, 31.944042, 17.936596>,  <20.167850, 31.821905, 18.074371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.321800, 31.944042, 17.936596>,  <20.578382, 32.147606, 17.706970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.321800, 31.944042, 17.936596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065028, -0.709537, -0.701661,
		0.764401, -0.487413, 0.422042,
		-0.641454, -0.508906, 0.574067,
		20.129364, 31.791370, 18.108816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.809242, 31.512981, 17.638060>,  <20.578382, 32.147606, 17.706970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.809242, 31.512981, 17.638060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.430758, 31.477898, 17.762634>,  <20.203667, 31.456848, 17.837379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.430758, 31.477898, 17.762634>,  <20.809242, 31.512981, 17.638060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.430758, 31.477898, 17.762634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213143, -0.555211, -0.803934,
		0.243425, -0.827072, 0.506652,
		-0.946211, -0.087708, 0.311437,
		20.146894, 31.451586, 17.856066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<31.546139, 27.531387, 24.424414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650457, 27.802277, 24.699615>,  <31.713049, 27.964811, 24.864737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650457, 27.802277, 24.699615>,  <31.546139, 27.531387, 24.424414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650457, 27.802277, 24.699615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237084, 0.735772, -0.634374,
		-0.935829, 0.002327, 0.352445,
		0.260795, 0.677225, 0.688005,
		31.728697, 28.005444, 24.906017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961596, 28.117298, 24.517170>,  <31.546139, 27.531387, 24.424414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961596, 28.117298, 24.517170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318773, 28.258984, 24.628296>,  <31.533081, 28.343994, 24.694971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318773, 28.258984, 24.628296>,  <30.961596, 28.117298, 24.517170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318773, 28.258984, 24.628296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127527, 0.790904, -0.598504,
		-0.431721, 0.499003, 0.751407,
		0.892947, 0.354212, 0.277814,
		31.586657, 28.365248, 24.711639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756330, 28.859785, 24.545635>,  <30.961596, 28.117298, 24.517170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756330, 28.859785, 24.545635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155594, 28.857788, 24.569832>,  <31.395151, 28.856590, 24.584351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155594, 28.857788, 24.569832>,  <30.756330, 28.859785, 24.545635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155594, 28.857788, 24.569832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034517, 0.866457, -0.498057,
		-0.049929, 0.499227, 0.865031,
		0.998156, -0.004990, 0.060493,
		31.455040, 28.856291, 24.587980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972155, 29.513096, 24.796337>,  <30.756330, 28.859785, 24.545635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972155, 29.513096, 24.796337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293222, 29.364071, 24.610039>,  <31.485863, 29.274656, 24.498259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293222, 29.364071, 24.610039>,  <30.972155, 29.513096, 24.796337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293222, 29.364071, 24.610039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089770, 0.847470, -0.523198,
		0.589630, 0.378144, 0.713683,
		0.802669, -0.372560, -0.465748,
		31.534023, 29.252302, 24.470314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575342, 29.900871, 24.963507>,  <30.972155, 29.513096, 24.796337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575342, 29.900871, 24.963507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659544, 29.710949, 24.621689>,  <31.710066, 29.596996, 24.416597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659544, 29.710949, 24.621689>,  <31.575342, 29.900871, 24.963507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659544, 29.710949, 24.621689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173703, 0.878388, -0.445265,
		0.962037, -0.054706, 0.267380,
		0.210505, -0.474806, -0.854545,
		31.722696, 29.568506, 24.365326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172977, 30.260761, 24.870138>,  <31.575342, 29.900871, 24.963507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172977, 30.260761, 24.870138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098507, 30.096554, 24.513081>,  <32.053825, 29.998030, 24.298845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098507, 30.096554, 24.513081>,  <32.172977, 30.260761, 24.870138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098507, 30.096554, 24.513081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243743, 0.860829, -0.446725,
		0.951803, -0.300745, -0.060204,
		-0.186175, -0.410520, -0.892643,
		32.042656, 29.973398, 24.245287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643314, 30.504881, 24.521132>,  <32.172977, 30.260761, 24.870138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643314, 30.504881, 24.521132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373577, 30.390270, 24.248905>,  <32.211735, 30.321505, 24.085569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373577, 30.390270, 24.248905>,  <32.643314, 30.504881, 24.521132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373577, 30.390270, 24.248905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143235, 0.853389, -0.501210,
		0.724397, -0.435466, -0.534432,
		-0.674338, -0.286525, -0.680566,
		32.171276, 30.304312, 24.044735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936913, 30.609852, 23.907696>,  <32.643314, 30.504881, 24.521132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936913, 30.609852, 23.907696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549244, 30.611710, 23.809162>,  <32.316643, 30.612825, 23.750042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549244, 30.611710, 23.809162>,  <32.936913, 30.609852, 23.907696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549244, 30.611710, 23.809162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146248, 0.815469, -0.560019,
		0.198276, -0.578782, -0.791011,
		-0.969174, 0.004645, -0.246334,
		32.258492, 30.613104, 23.735262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883228, 30.675112, 23.168179>,  <32.936913, 30.609852, 23.907696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883228, 30.675112, 23.168179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524303, 30.802986, 23.289925>,  <32.308949, 30.879711, 23.362972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524303, 30.802986, 23.289925>,  <32.883228, 30.675112, 23.168179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524303, 30.802986, 23.289925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024424, 0.724441, -0.688904,
		-0.440727, -0.610726, -0.657856,
		-0.897309, 0.319685, 0.304364,
		32.255112, 30.898891, 23.381233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445999, 30.819016, 22.560728>,  <32.883228, 30.675112, 23.168179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445999, 30.819016, 22.560728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288853, 31.032505, 22.860271>,  <32.194565, 31.160599, 23.039997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288853, 31.032505, 22.860271>,  <32.445999, 30.819016, 22.560728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288853, 31.032505, 22.860271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011525, 0.817132, -0.576336,
		-0.919522, -0.217794, -0.327177,
		-0.392869, 0.533724, 0.748861,
		32.170994, 31.192623, 23.084930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976168, 31.230545, 22.239199>,  <32.445999, 30.819016, 22.560728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976168, 31.230545, 22.239199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044708, 31.409847, 22.590130>,  <32.085835, 31.517427, 22.800690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044708, 31.409847, 22.590130>,  <31.976168, 31.230545, 22.239199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044708, 31.409847, 22.590130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222482, 0.885103, -0.408771,
		-0.959760, -0.125146, 0.251394,
		0.171353, 0.448253, 0.877329,
		32.096115, 31.544323, 22.853329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414497, 31.650753, 22.329988>,  <31.976168, 31.230545, 22.239199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414497, 31.650753, 22.329988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724133, 31.802486, 22.532726>,  <31.909914, 31.893526, 22.654369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724133, 31.802486, 22.532726>,  <31.414497, 31.650753, 22.329988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724133, 31.802486, 22.532726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041076, 0.829012, -0.557721,
		-0.631742, 0.410907, 0.657311,
		0.774090, 0.379335, 0.506843,
		31.956360, 31.916286, 22.684778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186867, 32.279022, 22.620317>,  <31.414497, 31.650753, 22.329988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186867, 32.279022, 22.620317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567337, 32.251137, 22.500046>,  <31.795618, 32.234406, 22.427883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567337, 32.251137, 22.500046>,  <31.186867, 32.279022, 22.620317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567337, 32.251137, 22.500046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186653, 0.645928, -0.740228,
		0.245825, 0.760208, 0.601376,
		0.951173, -0.069717, -0.300680,
		31.852690, 32.230221, 22.409842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027206, 32.853035, 22.983717>,  <31.186867, 32.279022, 22.620317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027206, 32.853035, 22.983717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045578, 32.492435, 23.155853>,  <31.056601, 32.276077, 23.259136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045578, 32.492435, 23.155853>,  <31.027206, 32.853035, 22.983717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045578, 32.492435, 23.155853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225110, 0.429056, 0.874778,
		-0.973250, 0.056696, 0.222642,
		0.045929, -0.901497, 0.430342,
		31.059357, 32.221985, 23.284956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351358, 33.304882, 22.926270>,  <31.027206, 32.853035, 22.983717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351358, 33.304882, 22.926270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067232, 33.578594, 22.992256>,  <29.896757, 33.742821, 23.031849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067232, 33.578594, 22.992256>,  <30.351358, 33.304882, 22.926270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067232, 33.578594, 22.992256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019653, -0.214994, 0.976418,
		0.703611, 0.696805, 0.139265,
		-0.710314, 0.684281, 0.164966,
		29.854137, 33.783878, 23.041746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501772, 33.569965, 23.517710>,  <30.351358, 33.304882, 22.926270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501772, 33.569965, 23.517710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113018, 33.655128, 23.477493>,  <29.879765, 33.706226, 23.453363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113018, 33.655128, 23.477493>,  <30.501772, 33.569965, 23.517710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113018, 33.655128, 23.477493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144348, -0.201421, 0.968810,
		0.186016, 0.956086, 0.226491,
		-0.971886, 0.212908, -0.100542,
		29.821453, 33.719002, 23.447330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337194, 34.025635, 24.060823>,  <30.501772, 33.569965, 23.517710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337194, 34.025635, 24.060823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010466, 33.830814, 23.937153>,  <29.814428, 33.713924, 23.862951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010466, 33.830814, 23.937153>,  <30.337194, 34.025635, 24.060823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010466, 33.830814, 23.937153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249255, -0.185372, 0.950531,
		-0.520266, 0.853477, 0.030017,
		-0.816820, -0.487047, -0.309176,
		29.765419, 33.684700, 23.844400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824272, 34.202194, 24.461599>,  <30.337194, 34.025635, 24.060823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824272, 34.202194, 24.461599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666040, 33.870819, 24.302998>,  <29.571102, 33.671993, 24.207836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666040, 33.870819, 24.302998>,  <29.824272, 34.202194, 24.461599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666040, 33.870819, 24.302998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160676, -0.362635, 0.917975,
		-0.904269, 0.426839, 0.010341,
		-0.395577, -0.828435, -0.396502,
		29.547367, 33.622288, 24.184048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210972, 34.013039, 24.897083>,  <29.824272, 34.202194, 24.461599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210972, 34.013039, 24.897083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320389, 33.678398, 24.707233>,  <29.386038, 33.477612, 24.593323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320389, 33.678398, 24.707233>,  <29.210972, 34.013039, 24.897083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320389, 33.678398, 24.707233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165029, -0.526948, 0.833721,
		-0.947598, -0.149729, -0.282205,
		0.273540, -0.836604, -0.474626,
		29.402451, 33.427418, 24.564846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800663, 33.540607, 25.233879>,  <29.210972, 34.013039, 24.897083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800663, 33.540607, 25.233879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083694, 33.312645, 25.066765>,  <29.253513, 33.175869, 24.966497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083694, 33.312645, 25.066765>,  <28.800663, 33.540607, 25.233879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083694, 33.312645, 25.066765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050923, -0.630817, 0.774259,
		-0.704799, -0.526573, -0.475372,
		0.707577, -0.569905, -0.417785,
		29.295967, 33.141674, 24.941429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530024, 32.901150, 25.112419>,  <28.800663, 33.540607, 25.233879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530024, 32.901150, 25.112419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923494, 32.838596, 25.148022>,  <29.159576, 32.801064, 25.169384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923494, 32.838596, 25.148022>,  <28.530024, 32.901150, 25.112419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923494, 32.838596, 25.148022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155847, -0.493182, 0.855852,
		-0.089947, -0.855754, -0.509505,
		0.983677, -0.156387, 0.089006,
		29.218597, 32.791679, 25.174725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525816, 32.354847, 25.452009>,  <28.530024, 32.901150, 25.112419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525816, 32.354847, 25.452009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910301, 32.452858, 25.502655>,  <29.140991, 32.511665, 25.533043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910301, 32.452858, 25.502655>,  <28.525816, 32.354847, 25.452009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910301, 32.452858, 25.502655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014411, -0.503052, 0.864136,
		0.275435, -0.828793, -0.487071,
		0.961212, 0.245032, 0.126614,
		29.198666, 32.526367, 25.540640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713446, 31.721901, 25.723953>,  <28.525816, 32.354847, 25.452009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713446, 31.721901, 25.723953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019049, 31.973064, 25.783318>,  <29.202410, 32.123764, 25.818935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019049, 31.973064, 25.783318>,  <28.713446, 31.721901, 25.723953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019049, 31.973064, 25.783318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169901, -0.417690, 0.892563,
		0.622437, -0.656709, -0.425800,
		0.764006, 0.627908, 0.148410,
		29.248251, 32.161438, 25.827841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328609, 31.338734, 25.860416>,  <28.713446, 31.721901, 25.723953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328609, 31.338734, 25.860416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363226, 31.688965, 26.050522>,  <29.383997, 31.899103, 26.164585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363226, 31.688965, 26.050522>,  <29.328609, 31.338734, 25.860416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363226, 31.688965, 26.050522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104574, -0.482400, 0.869686,
		0.990744, -0.025565, -0.133311,
		0.086543, 0.875578, 0.475262,
		29.389189, 31.951637, 26.193100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070868, 31.327293, 26.184919>,  <29.328609, 31.338734, 25.860416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070868, 31.327293, 26.184919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859846, 31.612198, 26.370121>,  <29.733234, 31.783140, 26.481243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859846, 31.612198, 26.370121>,  <30.070868, 31.327293, 26.184919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859846, 31.612198, 26.370121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214933, -0.415380, 0.883891,
		0.821884, 0.565814, 0.066046,
		-0.527552, 0.712260, 0.463006,
		29.701580, 31.825876, 26.509024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335644, 31.319187, 26.855474>,  <30.070868, 31.327293, 26.184919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335644, 31.319187, 26.855474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013630, 31.542286, 26.936310>,  <29.820421, 31.676146, 26.984812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013630, 31.542286, 26.936310>,  <30.335644, 31.319187, 26.855474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013630, 31.542286, 26.936310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032902, -0.382115, 0.923529,
		0.592317, 0.736822, 0.325966,
		-0.805033, 0.557747, 0.202091,
		29.772120, 31.709610, 26.996937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440197, 31.597223, 27.500938>,  <30.335644, 31.319187, 26.855474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440197, 31.597223, 27.500938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045477, 31.638973, 27.451416>,  <29.808645, 31.664022, 27.421703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045477, 31.638973, 27.451416>,  <30.440197, 31.597223, 27.500938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045477, 31.638973, 27.451416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147543, -0.264478, 0.953038,
		0.066730, 0.958727, 0.276387,
		-0.986802, 0.104375, -0.123805,
		29.749435, 31.670286, 27.414274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174999, 31.987087, 28.105762>,  <30.440197, 31.597223, 27.500938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174999, 31.987087, 28.105762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879608, 31.767620, 27.948990>,  <29.702374, 31.635941, 27.854927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879608, 31.767620, 27.948990>,  <30.174999, 31.987087, 28.105762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879608, 31.767620, 27.948990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206984, -0.368735, 0.906196,
		-0.641720, 0.750332, 0.158738,
		-0.738480, -0.548668, -0.391932,
		29.658064, 31.603020, 27.831409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256426, 32.490520, 28.715645>,  <30.174999, 31.987087, 28.105762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256426, 32.490520, 28.715645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635746, 32.430801, 28.827671>,  <30.863338, 32.394970, 28.894888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635746, 32.430801, 28.827671>,  <30.256426, 32.490520, 28.715645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635746, 32.430801, 28.827671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315753, 0.532923, -0.785043,
		-0.032050, 0.832889, 0.552512,
		0.948300, -0.149297, 0.280067,
		30.920237, 32.386013, 28.911692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579317, 33.102585, 28.747793>,  <30.256426, 32.490520, 28.715645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579317, 33.102585, 28.747793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871716, 32.832325, 28.709534>,  <31.047153, 32.670170, 28.686579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871716, 32.832325, 28.709534>,  <30.579317, 33.102585, 28.747793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871716, 32.832325, 28.709534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387139, 0.526051, -0.757228,
		0.561934, 0.516500, 0.646109,
		0.730995, -0.675646, -0.095649,
		31.091015, 32.629631, 28.680840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995087, 33.390804, 28.293652>,  <30.579317, 33.102585, 28.747793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995087, 33.390804, 28.293652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206566, 33.051350, 28.286728>,  <31.333452, 32.847679, 28.282574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206566, 33.051350, 28.286728>,  <30.995087, 33.390804, 28.293652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206566, 33.051350, 28.286728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496317, 0.325616, -0.804763,
		0.688586, 0.416886, 0.593343,
		0.528696, -0.848635, -0.017307,
		31.365175, 32.796761, 28.281536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673601, 33.616627, 28.233526>,  <30.995087, 33.390804, 28.293652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673601, 33.616627, 28.233526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674374, 33.237072, 28.107285>,  <31.674837, 33.009338, 28.031540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674374, 33.237072, 28.107285>,  <31.673601, 33.616627, 28.233526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674374, 33.237072, 28.107285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612899, 0.250501, -0.749403,
		0.790159, -0.191988, 0.582056,
		0.001929, -0.948889, -0.315605,
		31.674952, 32.952404, 28.012604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349422, 33.522083, 28.107975>,  <31.673601, 33.616627, 28.233526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349422, 33.522083, 28.107975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144489, 33.240147, 27.911724>,  <32.021530, 33.070984, 27.793974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144489, 33.240147, 27.911724>,  <32.349422, 33.522083, 28.107975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144489, 33.240147, 27.911724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611336, 0.101909, -0.784782,
		0.603146, -0.702007, 0.378683,
		-0.512332, -0.704840, -0.490628,
		31.990789, 33.028694, 27.764536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797218, 33.262627, 27.679005>,  <32.349422, 33.522083, 28.107975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797218, 33.262627, 27.679005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461792, 33.122463, 27.512138>,  <32.260536, 33.038364, 27.412018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461792, 33.122463, 27.512138>,  <32.797218, 33.262627, 27.679005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461792, 33.122463, 27.512138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368350, 0.199524, -0.908025,
		0.401416, -0.915097, -0.038239,
		-0.838561, -0.350410, -0.417168,
		32.210224, 33.017342, 27.386988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031246, 32.773014, 27.220669>,  <32.797218, 33.262627, 27.679005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031246, 32.773014, 27.220669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682621, 32.903336, 27.074116>,  <32.473446, 32.981529, 26.986183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682621, 32.903336, 27.074116>,  <33.031246, 32.773014, 27.220669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682621, 32.903336, 27.074116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401996, 0.047057, -0.914431,
		-0.280683, -0.944266, -0.171984,
		-0.871559, 0.325802, -0.366383,
		32.421154, 33.001076, 26.964201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004322, 32.499100, 26.622284>,  <33.031246, 32.773014, 27.220669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004322, 32.499100, 26.622284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708012, 32.762199, 26.567703>,  <32.530224, 32.920059, 26.534954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708012, 32.762199, 26.567703>,  <33.004322, 32.499100, 26.622284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708012, 32.762199, 26.567703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247735, 0.078686, -0.965627,
		-0.624400, -0.749119, -0.221236,
		-0.740778, 0.657746, -0.136451,
		32.485779, 32.959522, 26.526768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773640, 32.384701, 25.986916>,  <33.004322, 32.499100, 26.622284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773640, 32.384701, 25.986916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670425, 32.764492, 26.058361>,  <32.608498, 32.992367, 26.101229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670425, 32.764492, 26.058361>,  <32.773640, 32.384701, 25.986916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670425, 32.764492, 26.058361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278843, 0.250196, -0.927172,
		-0.925021, -0.189438, -0.329315,
		-0.258035, 0.949481, 0.178614,
		32.593014, 33.049335, 26.111944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510895, 32.520706, 25.367062>,  <32.773640, 32.384701, 25.986916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510895, 32.520706, 25.367062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533794, 32.880169, 25.541019>,  <32.547535, 33.095848, 25.645393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533794, 32.880169, 25.541019>,  <32.510895, 32.520706, 25.367062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533794, 32.880169, 25.541019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196779, 0.416906, -0.887394,
		-0.978775, 0.136379, -0.152970,
		0.057248, 0.898660, 0.434893,
		32.550968, 33.149769, 25.671488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011868, 32.958881, 25.005991>,  <32.510895, 32.520706, 25.367062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011868, 32.958881, 25.005991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301502, 33.171505, 25.181786>,  <32.475281, 33.299080, 25.287262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301502, 33.171505, 25.181786>,  <32.011868, 32.958881, 25.005991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301502, 33.171505, 25.181786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181799, 0.467577, -0.865056,
		-0.665320, 0.706272, 0.241929,
		0.724085, 0.531556, 0.439488,
		32.518726, 33.330971, 25.313631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902164, 33.704853, 24.833448>,  <32.011868, 32.958881, 25.005991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902164, 33.704853, 24.833448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283192, 33.632473, 24.931324>,  <32.511806, 33.589046, 24.990049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283192, 33.632473, 24.931324>,  <31.902164, 33.704853, 24.833448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283192, 33.632473, 24.931324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291434, 0.310861, -0.904672,
		0.087633, 0.933072, 0.348850,
		0.952568, -0.180946, 0.244687,
		32.568962, 33.578190, 25.004730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.507479, 31.654541, 32.656231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.792561, 31.391769, 32.557846>,  <29.963610, 31.234106, 32.498817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.792561, 31.391769, 32.557846>,  <29.507479, 31.654541, 32.656231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792561, 31.391769, 32.557846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177022, 0.507728, -0.843135,
		0.678759, 0.557367, 0.478151,
		0.712706, -0.656928, -0.245959,
		30.006372, 31.194691, 32.484058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091471, 31.996513, 32.566196>,  <29.507479, 31.654541, 32.656231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091471, 31.996513, 32.566196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.151733, 31.671623, 32.340775>,  <30.187891, 31.476688, 32.205521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.151733, 31.671623, 32.340775>,  <30.091471, 31.996513, 32.566196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151733, 31.671623, 32.340775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369922, 0.574964, -0.729777,
		0.916767, -0.098527, 0.387081,
		0.150654, -0.812225, -0.563555,
		30.196930, 31.427956, 32.171707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760101, 32.164127, 32.127247>,  <30.091471, 31.996513, 32.566196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760101, 32.164127, 32.127247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.582188, 31.857731, 31.941593>,  <30.475439, 31.673893, 31.830200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.582188, 31.857731, 31.941593>,  <30.760101, 32.164127, 32.127247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582188, 31.857731, 31.941593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310967, 0.353907, -0.882071,
		0.839920, -0.536663, 0.080785,
		-0.444785, -0.765991, -0.464138,
		30.448751, 31.627934, 31.802351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181187, 32.003529, 31.660936>,  <30.760101, 32.164127, 32.127247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181187, 32.003529, 31.660936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.864304, 31.819328, 31.500763>,  <30.674173, 31.708809, 31.404659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.864304, 31.819328, 31.500763>,  <31.181187, 32.003529, 31.660936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864304, 31.819328, 31.500763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345908, 0.201725, -0.916327,
		0.502746, -0.864434, -0.000517,
		-0.792208, -0.460501, -0.400431,
		30.626640, 31.681179, 31.380634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427458, 31.460382, 31.140408>,  <31.181187, 32.003529, 31.660936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427458, 31.460382, 31.140408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.054470, 31.577156, 31.055298>,  <30.830677, 31.647221, 31.004232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.054470, 31.577156, 31.055298>,  <31.427458, 31.460382, 31.140408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054470, 31.577156, 31.055298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282576, 0.222505, -0.933082,
		-0.225057, -0.930196, -0.289973,
		-0.932470, 0.291936, -0.212775,
		30.774729, 31.664738, 30.991465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197611, 31.020018, 30.557480>,  <31.427458, 31.460382, 31.140408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197611, 31.020018, 30.557480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.965256, 31.344826, 30.534874>,  <30.825842, 31.539711, 30.521311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.965256, 31.344826, 30.534874>,  <31.197611, 31.020018, 30.557480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965256, 31.344826, 30.534874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210104, 0.082496, -0.974192,
		-0.786401, -0.577770, -0.218529,
		-0.580887, 0.812019, -0.056517,
		30.790989, 31.588432, 30.517920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897467, 30.949619, 29.927523>,  <31.197611, 31.020018, 30.557480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897467, 30.949619, 29.927523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.828762, 31.338184, 29.993076>,  <30.787539, 31.571323, 30.032410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.828762, 31.338184, 29.993076>,  <30.897467, 30.949619, 29.927523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828762, 31.338184, 29.993076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232602, 0.201645, -0.951439,
		-0.957285, -0.125300, -0.260587,
		-0.171761, 0.971411, 0.163886,
		30.777233, 31.629608, 30.042242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790981, 31.185101, 29.222273>,  <30.897467, 30.949619, 29.927523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790981, 31.185101, 29.222273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.803772, 31.536591, 29.412777>,  <30.811445, 31.747484, 29.527079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.803772, 31.536591, 29.412777>,  <30.790981, 31.185101, 29.222273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803772, 31.536591, 29.412777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173438, 0.464396, -0.868479,
		-0.984326, 0.110372, -0.137554,
		0.031976, 0.878723, 0.476259,
		30.813364, 31.800207, 29.555655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347809, 31.663023, 28.802294>,  <30.790981, 31.185101, 29.222273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347809, 31.663023, 28.802294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.628138, 31.854839, 29.013535>,  <30.796335, 31.969929, 29.140280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.628138, 31.854839, 29.013535>,  <30.347809, 31.663023, 28.802294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628138, 31.854839, 29.013535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258972, 0.518776, -0.814742,
		-0.664667, 0.707753, 0.239382,
		0.700822, 0.479539, 0.528101,
		30.838385, 31.998701, 29.171965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694138, 32.024658, 28.629557>,  <30.347809, 31.663023, 28.802294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694138, 32.024658, 28.629557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.528597, 31.732105, 28.412743>,  <29.429272, 31.556572, 28.282654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.528597, 31.732105, 28.412743>,  <29.694138, 32.024658, 28.629557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528597, 31.732105, 28.412743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188566, -0.513630, 0.837035,
		-0.890600, 0.448619, 0.074653,
		-0.413854, -0.731386, -0.542033,
		29.404440, 31.512690, 28.250134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070837, 31.732449, 28.993362>,  <29.694138, 32.024658, 28.629557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070837, 31.732449, 28.993362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.168066, 31.446365, 28.731251>,  <29.226402, 31.274715, 28.573984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.168066, 31.446365, 28.731251>,  <29.070837, 31.732449, 28.993362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168066, 31.446365, 28.731251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301003, -0.697807, 0.649971,
		-0.922125, 0.039253, -0.384897,
		0.243071, -0.715209, -0.655280,
		29.240988, 31.231802, 28.534666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527174, 31.191984, 29.108225>,  <29.070837, 31.732449, 28.993362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527174, 31.191984, 29.108225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.860788, 31.038494, 28.949661>,  <29.060957, 30.946400, 28.854523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.860788, 31.038494, 28.949661>,  <28.527174, 31.191984, 29.108225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860788, 31.038494, 28.949661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045615, -0.764010, 0.643591,
		-0.549822, -0.518695, -0.654715,
		0.834035, -0.383725, -0.396409,
		29.110998, 30.923376, 28.830738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438293, 30.546389, 29.306616>,  <28.527174, 31.191984, 29.108225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438293, 30.546389, 29.306616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.811865, 30.556152, 29.163967>,  <29.036009, 30.562012, 29.078379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.811865, 30.556152, 29.163967>,  <28.438293, 30.546389, 29.306616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811865, 30.556152, 29.163967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231119, -0.802313, 0.550344,
		-0.272687, -0.596405, -0.754946,
		0.933930, 0.024411, -0.356621,
		29.092045, 30.563475, 29.056980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536507, 29.958811, 28.947130>,  <28.438293, 30.546389, 29.306616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536507, 29.958811, 28.947130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.884319, 30.098183, 29.087139>,  <29.093006, 30.181805, 29.171144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.884319, 30.098183, 29.087139>,  <28.536507, 29.958811, 28.947130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884319, 30.098183, 29.087139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125750, -0.841553, 0.525333,
		0.477602, -0.412779, -0.775571,
		0.869531, 0.348428, 0.350021,
		29.145178, 30.202711, 29.192144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073589, 29.485910, 28.802860>,  <28.536507, 29.958811, 28.947130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073589, 29.485910, 28.802860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.224897, 29.703781, 29.102257>,  <29.315683, 29.834503, 29.281895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.224897, 29.703781, 29.102257>,  <29.073589, 29.485910, 28.802860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224897, 29.703781, 29.102257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174204, -0.836012, 0.520324,
		0.909155, -0.066434, -0.411124,
		0.378272, 0.544675, 0.748491,
		29.338379, 29.867184, 29.326805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786543, 29.172491, 29.027105>,  <29.073589, 29.485910, 28.802860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786543, 29.172491, 29.027105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.656288, 29.380005, 29.343288>,  <29.578135, 29.504513, 29.532999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.656288, 29.380005, 29.343288>,  <29.786543, 29.172491, 29.027105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656288, 29.380005, 29.343288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060026, -0.822997, 0.564866,
		0.943587, 0.231390, 0.236858,
		-0.325638, 0.518782, 0.790459,
		29.558598, 29.535639, 29.580425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174374, 28.886978, 29.467941>,  <29.786543, 29.172491, 29.027105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174374, 28.886978, 29.467941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.879398, 29.062279, 29.673512>,  <29.702414, 29.167459, 29.796854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.879398, 29.062279, 29.673512>,  <30.174374, 28.886978, 29.467941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879398, 29.062279, 29.673512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097859, -0.822205, 0.560716,
		0.668288, 0.363201, 0.649212,
		-0.737438, 0.438251, 0.513927,
		29.658167, 29.193754, 29.827690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422461, 28.726503, 30.034464>,  <30.174374, 28.886978, 29.467941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422461, 28.726503, 30.034464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.037071, 28.786922, 30.122921>,  <29.805838, 28.823174, 30.175995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.037071, 28.786922, 30.122921>,  <30.422461, 28.726503, 30.034464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037071, 28.786922, 30.122921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025092, -0.771210, 0.636086,
		0.266624, 0.618401, 0.739251,
		-0.963474, 0.151047, 0.221141,
		29.748030, 28.832237, 30.189262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406240, 28.773281, 30.763855>,  <30.422461, 28.726503, 30.034464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406240, 28.773281, 30.763855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.045099, 28.673580, 30.623722>,  <29.828415, 28.613760, 30.539642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.045099, 28.673580, 30.623722>,  <30.406240, 28.773281, 30.763855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045099, 28.673580, 30.623722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098876, -0.672612, 0.733359,
		-0.418428, 0.696755, 0.582625,
		-0.902852, -0.249250, -0.350332,
		29.774244, 28.598804, 30.518623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985254, 28.633934, 31.360031>,  <30.406240, 28.773281, 30.763855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985254, 28.633934, 31.360031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.785805, 28.446533, 31.068310>,  <29.666136, 28.334093, 30.893278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.785805, 28.446533, 31.068310>,  <29.985254, 28.633934, 31.360031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785805, 28.446533, 31.068310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070453, -0.816668, 0.572792,
		-0.863951, 0.336989, 0.374203,
		-0.498624, -0.468500, -0.729302,
		29.636217, 28.305983, 30.849520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400343, 28.228971, 31.681892>,  <29.985254, 28.633934, 31.360031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400343, 28.228971, 31.681892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.450468, 28.069859, 31.318340>,  <29.480543, 27.974390, 31.100208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.450468, 28.069859, 31.318340>,  <29.400343, 28.228971, 31.681892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450468, 28.069859, 31.318340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047964, -0.917460, 0.394926,
		-0.990957, -0.005895, -0.134048,
		0.125312, -0.397784, -0.908881,
		29.488062, 27.950523, 31.045675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780174, 27.888298, 31.448191>,  <29.400343, 28.228971, 31.681892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780174, 27.888298, 31.448191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.043745, 27.691174, 31.220875>,  <29.201887, 27.572899, 31.084486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.043745, 27.691174, 31.220875>,  <28.780174, 27.888298, 31.448191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043745, 27.691174, 31.220875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148844, -0.825981, 0.543692,
		-0.737332, -0.273668, -0.617614,
		0.658928, -0.492810, -0.568288,
		29.241423, 27.543331, 31.050388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515253, 27.247425, 31.388969>,  <28.780174, 27.888298, 31.448191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515253, 27.247425, 31.388969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.904135, 27.202492, 31.306797>,  <29.137465, 27.175531, 31.257494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.904135, 27.202492, 31.306797>,  <28.515253, 27.247425, 31.388969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904135, 27.202492, 31.306797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018129, -0.838644, 0.544378,
		-0.233433, -0.532971, -0.813297,
		0.972204, -0.112332, -0.205429,
		29.195795, 27.168793, 31.245169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.362408, 27.456194, 32.264668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.973896, 27.539444, 32.218544>,  <35.740788, 27.589394, 32.190872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.973896, 27.539444, 32.218544>,  <36.362408, 27.456194, 32.264668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973896, 27.539444, 32.218544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179994, 0.325787, -0.928151,
		-0.155609, -0.922251, -0.353893,
		-0.971282, 0.208128, -0.115304,
		35.682510, 27.601883, 32.183952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107059, 27.157784, 31.603348>,  <36.362408, 27.456194, 32.264668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107059, 27.157784, 31.603348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.839069, 27.440681, 31.693626>,  <35.678276, 27.610420, 31.747793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.839069, 27.440681, 31.693626>,  <36.107059, 27.157784, 31.603348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839069, 27.440681, 31.693626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058498, 0.353364, -0.933655,
		-0.740074, -0.612324, -0.278118,
		-0.669977, 0.707243, 0.225696,
		35.638077, 27.652855, 31.761335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695312, 27.262974, 31.078112>,  <36.107059, 27.157784, 31.603348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695312, 27.262974, 31.078112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.636616, 27.616379, 31.256042>,  <35.601398, 27.828423, 31.362801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.636616, 27.616379, 31.256042>,  <35.695312, 27.262974, 31.078112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636616, 27.616379, 31.256042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023385, 0.446471, -0.894492,
		-0.988898, -0.141661, -0.044855,
		-0.146742, 0.883513, 0.444827,
		35.592594, 27.881433, 31.389490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253326, 27.572527, 30.652397>,  <35.695312, 27.262974, 31.078112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253326, 27.572527, 30.652397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.383827, 27.871151, 30.884331>,  <35.462128, 28.050325, 31.023491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.383827, 27.871151, 30.884331>,  <35.253326, 27.572527, 30.652397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383827, 27.871151, 30.884331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128378, 0.572721, -0.809636,
		-0.936524, 0.338585, 0.091011,
		0.326254, 0.746560, 0.579834,
		35.481705, 28.095119, 31.058281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990459, 28.120697, 30.354788>,  <35.253326, 27.572527, 30.652397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990459, 28.120697, 30.354788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.294674, 28.274231, 30.564266>,  <35.477203, 28.366352, 30.689953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.294674, 28.274231, 30.564266>,  <34.990459, 28.120697, 30.354788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294674, 28.274231, 30.564266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275802, 0.539203, -0.795734,
		-0.587809, 0.749620, 0.304221,
		0.760535, 0.383835, 0.523695,
		35.522835, 28.389381, 30.721375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882862, 28.739904, 30.190250>,  <34.990459, 28.120697, 30.354788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882862, 28.739904, 30.190250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.263779, 28.729424, 30.311871>,  <35.492329, 28.723135, 30.384842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.263779, 28.729424, 30.311871>,  <34.882862, 28.739904, 30.190250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263779, 28.729424, 30.311871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253226, 0.623892, -0.739348,
		-0.170322, 0.781071, 0.600764,
		0.952296, -0.026202, 0.304050,
		35.549469, 28.721563, 30.403086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161987, 29.476898, 30.195492>,  <34.882862, 28.739904, 30.190250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161987, 29.476898, 30.195492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.488148, 29.245361, 30.198658>,  <35.683846, 29.106440, 30.200558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.488148, 29.245361, 30.198658>,  <35.161987, 29.476898, 30.195492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488148, 29.245361, 30.198658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374723, 0.517342, -0.769376,
		0.441251, 0.630317, 0.638747,
		0.815402, -0.578841, 0.007917,
		35.732769, 29.071709, 30.201033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679283, 29.919641, 30.176142>,  <35.161987, 29.476898, 30.195492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679283, 29.919641, 30.176142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.808777, 29.578457, 30.012360>,  <35.886475, 29.373747, 29.914091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.808777, 29.578457, 30.012360>,  <35.679283, 29.919641, 30.176142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808777, 29.578457, 30.012360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503203, 0.521698, -0.688925,
		0.801238, 0.016989, 0.598104,
		0.323734, -0.852961, -0.409456,
		35.905895, 29.322569, 29.889523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348454, 30.094740, 29.895414>,  <35.679283, 29.919641, 30.176142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348454, 30.094740, 29.895414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.272202, 29.754593, 29.699238>,  <36.226452, 29.550505, 29.581532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.272202, 29.754593, 29.699238>,  <36.348454, 30.094740, 29.895414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272202, 29.754593, 29.699238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306849, 0.422951, -0.852617,
		0.932472, -0.313025, 0.180309,
		-0.190628, -0.850369, -0.490442,
		36.215012, 29.499481, 29.552105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022274, 29.900637, 29.462934>,  <36.348454, 30.094740, 29.895414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022274, 29.900637, 29.462934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.730556, 29.687092, 29.291763>,  <36.555527, 29.558966, 29.189060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.730556, 29.687092, 29.291763>,  <37.022274, 29.900637, 29.462934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730556, 29.687092, 29.291763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436030, 0.119337, -0.891985,
		0.527262, -0.837110, 0.145747,
		-0.729296, -0.533860, -0.427927,
		36.511768, 29.526934, 29.163385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360916, 29.449778, 28.974314>,  <37.022274, 29.900637, 29.462934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360916, 29.449778, 28.974314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.984921, 29.477741, 28.840729>,  <36.759323, 29.494520, 28.760578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.984921, 29.477741, 28.840729>,  <37.360916, 29.449778, 28.974314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984921, 29.477741, 28.840729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341065, 0.220318, -0.913857,
		0.009690, -0.972919, -0.230941,
		-0.939990, 0.069910, -0.333964,
		36.702923, 29.498714, 28.740540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372566, 29.132158, 28.308262>,  <37.360916, 29.449778, 28.974314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372566, 29.132158, 28.308262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037197, 29.349514, 28.291447>,  <36.835976, 29.479927, 28.281357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037197, 29.349514, 28.291447>,  <37.372566, 29.132158, 28.308262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037197, 29.349514, 28.291447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244258, 0.305683, -0.920269,
		-0.487215, -0.781847, -0.389020,
		-0.838427, 0.543390, -0.042039,
		36.785667, 29.512531, 28.278835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198429, 29.077934, 27.574743>,  <37.372566, 29.132158, 28.308262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198429, 29.077934, 27.574743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.998486, 29.384422, 27.736259>,  <36.878517, 29.568316, 27.833168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.998486, 29.384422, 27.736259>,  <37.198429, 29.077934, 27.574743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998486, 29.384422, 27.736259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054133, 0.492940, -0.868378,
		-0.864411, -0.412211, -0.287881,
		-0.499863, 0.766219, 0.403789,
		36.848526, 29.614288, 27.857395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603046, 29.144764, 27.162666>,  <37.198429, 29.077934, 27.574743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603046, 29.144764, 27.162666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.668980, 29.491295, 27.351265>,  <36.708538, 29.699213, 27.464424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.668980, 29.491295, 27.351265>,  <36.603046, 29.144764, 27.162666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668980, 29.491295, 27.351265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064110, 0.486437, -0.871360,
		-0.984236, 0.113401, 0.135722,
		0.164833, 0.866325, 0.471499,
		36.718430, 29.751192, 27.492714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892117, 29.069834, 26.976444>,  <36.603046, 29.144764, 27.162666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892117, 29.069834, 26.976444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.606876, 28.882019, 26.768208>,  <35.435730, 28.769331, 26.643265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.606876, 28.882019, 26.768208>,  <35.892117, 29.069834, 26.976444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606876, 28.882019, 26.768208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073674, -0.788663, 0.610396,
		-0.697175, 0.396922, 0.596992,
		-0.713105, -0.469535, -0.520593,
		35.392944, 28.741158, 26.612030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404720, 29.009569, 27.428974>,  <35.892117, 29.069834, 26.976444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404720, 29.009569, 27.428974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.315723, 28.731003, 27.156063>,  <35.262325, 28.563862, 26.992317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.315723, 28.731003, 27.156063>,  <35.404720, 29.009569, 27.428974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315723, 28.731003, 27.156063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025173, -0.703689, 0.710063,
		-0.974610, 0.140805, 0.174093,
		-0.222488, -0.696417, -0.682278,
		35.248978, 28.522078, 26.951380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844753, 28.596373, 27.650000>,  <35.404720, 29.009569, 27.428974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844753, 28.596373, 27.650000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.008213, 28.337021, 27.393063>,  <35.106289, 28.181410, 27.238899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.008213, 28.337021, 27.393063>,  <34.844753, 28.596373, 27.650000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008213, 28.337021, 27.393063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006120, -0.701830, 0.712318,
		-0.912669, -0.295022, -0.282836,
		0.408653, -0.648380, -0.642344,
		35.130810, 28.142508, 27.200359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448597, 28.069550, 27.708349>,  <34.844753, 28.596373, 27.650000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448597, 28.069550, 27.708349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.796272, 27.936768, 27.561752>,  <35.004879, 27.857098, 27.473793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.796272, 27.936768, 27.561752>,  <34.448597, 28.069550, 27.708349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796272, 27.936768, 27.561752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081638, -0.634660, 0.768467,
		-0.487697, -0.697862, -0.524539,
		0.869188, -0.331956, -0.366494,
		35.057030, 27.837181, 27.451803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318909, 27.415304, 27.729399>,  <34.448597, 28.069550, 27.708349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318909, 27.415304, 27.729399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.715416, 27.420364, 27.676910>,  <34.953320, 27.423401, 27.645418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.715416, 27.420364, 27.676910>,  <34.318909, 27.415304, 27.729399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715416, 27.420364, 27.676910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088526, -0.801438, 0.591490,
		-0.097683, -0.597944, -0.795564,
		0.991273, 0.012649, -0.131221,
		35.012798, 27.424158, 27.637545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350323, 26.837177, 27.473621>,  <34.318909, 27.415304, 27.729399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350323, 26.837177, 27.473621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.696014, 26.952389, 27.638618>,  <34.903427, 27.021515, 27.737617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.696014, 26.952389, 27.638618>,  <34.350323, 26.837177, 27.473621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696014, 26.952389, 27.638618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086747, -0.722310, 0.686107,
		0.495568, -0.628734, -0.599254,
		0.864226, 0.288030, 0.412495,
		34.955284, 27.038797, 27.762367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688797, 26.217712, 27.734272>,  <34.350323, 26.837177, 27.473621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688797, 26.217712, 27.734272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.873390, 26.514240, 27.929199>,  <34.984146, 26.692156, 28.046156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.873390, 26.514240, 27.929199>,  <34.688797, 26.217712, 27.734272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873390, 26.514240, 27.929199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156693, -0.608785, 0.777707,
		0.873201, -0.282541, -0.397104,
		0.461485, 0.741318, 0.487319,
		35.011837, 26.736635, 28.075396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393887, 25.939083, 27.967932>,  <34.688797, 26.217712, 27.734272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393887, 25.939083, 27.967932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.247822, 26.234138, 28.195103>,  <35.160183, 26.411173, 28.331406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.247822, 26.234138, 28.195103>,  <35.393887, 25.939083, 27.967932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247822, 26.234138, 28.195103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218575, -0.525071, 0.822512,
		0.904921, 0.424485, 0.030507,
		-0.365162, 0.737640, 0.567929,
		35.138271, 26.455431, 28.365482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734283, 25.931581, 28.624189>,  <35.393887, 25.939083, 27.967932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734283, 25.931581, 28.624189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.418568, 26.155941, 28.724121>,  <35.229137, 26.290556, 28.784081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.418568, 26.155941, 28.724121>,  <35.734283, 25.931581, 28.624189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418568, 26.155941, 28.724121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005029, -0.400956, 0.916083,
		0.614002, 0.724311, 0.313649,
		-0.789289, 0.560899, 0.249830,
		35.181782, 26.324211, 28.799070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810322, 26.284222, 29.312426>,  <35.734283, 25.931581, 28.624189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810322, 26.284222, 29.312426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.415462, 26.279835, 29.248650>,  <35.178547, 26.277203, 29.210384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.415462, 26.279835, 29.248650>,  <35.810322, 26.284222, 29.312426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415462, 26.279835, 29.248650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138023, -0.444412, 0.885126,
		-0.080565, 0.895756, 0.437186,
		-0.987147, -0.010968, -0.159439,
		35.119320, 26.276545, 29.200817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345772, 26.537474, 29.960302>,  <35.810322, 26.284222, 29.312426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345772, 26.537474, 29.960302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.137135, 26.302429, 29.712868>,  <35.011951, 26.161402, 29.564407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.137135, 26.302429, 29.712868>,  <35.345772, 26.537474, 29.960302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137135, 26.302429, 29.712868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282239, -0.565372, 0.775045,
		-0.805160, 0.578848, 0.129046,
		-0.521592, -0.587613, -0.618589,
		34.980656, 26.126144, 29.527290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668854, 26.451937, 30.304321>,  <35.345772, 26.537474, 29.960302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668854, 26.451937, 30.304321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677582, 26.148739, 30.043564>,  <34.682819, 25.966820, 29.887110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677582, 26.148739, 30.043564>,  <34.668854, 26.451937, 30.304321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677582, 26.148739, 30.043564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239430, -0.637039, 0.732704,
		-0.970668, 0.140093, -0.195390,
		0.021824, -0.757995, -0.651896,
		34.684128, 25.921341, 29.847996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053005, 26.135691, 30.197939>,  <34.668854, 26.451937, 30.304321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053005, 26.135691, 30.197939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325989, 25.849163, 30.139786>,  <34.489780, 25.677246, 30.104895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325989, 25.849163, 30.139786>,  <34.053005, 26.135691, 30.197939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325989, 25.849163, 30.139786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379352, -0.517138, 0.767242,
		-0.624774, -0.468459, -0.624663,
		0.682458, -0.716320, -0.145383,
		34.530727, 25.634268, 30.096170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663563, 25.524580, 30.173124>,  <34.053005, 26.135691, 30.197939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663563, 25.524580, 30.173124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.023804, 25.368534, 30.249783>,  <34.239948, 25.274906, 30.295778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.023804, 25.368534, 30.249783>,  <33.663563, 25.524580, 30.173124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023804, 25.368534, 30.249783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389453, -0.528504, 0.754327,
		-0.192989, -0.753985, -0.627903,
		0.900601, -0.390115, 0.191646,
		34.293983, 25.251499, 30.307276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288807, 25.040260, 29.766485>,  <33.663563, 25.524580, 30.173124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288807, 25.040260, 29.766485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.931808, 24.887524, 29.670452>,  <32.717609, 24.795881, 29.612833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.931808, 24.887524, 29.670452>,  <33.288807, 25.040260, 29.766485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931808, 24.887524, 29.670452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041488, 0.460524, -0.886677,
		0.449123, -0.801325, -0.395179,
		-0.892506, -0.381832, -0.240077,
		32.664059, 24.772970, 29.598427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373234, 24.880123, 29.087938>,  <33.288807, 25.040260, 29.766485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373234, 24.880123, 29.087938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.985100, 24.931122, 29.170097>,  <32.752220, 24.961721, 29.219393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.985100, 24.931122, 29.170097>,  <33.373234, 24.880123, 29.087938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985100, 24.931122, 29.170097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119172, 0.486946, -0.865264,
		-0.210337, -0.864076, -0.457309,
		-0.970338, 0.127498, 0.205397,
		32.693996, 24.969372, 29.231716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114323, 24.742029, 28.424301>,  <33.373234, 24.880123, 29.087938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114323, 24.742029, 28.424301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.819931, 24.911594, 28.635445>,  <32.643295, 25.013334, 28.762131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.819931, 24.911594, 28.635445>,  <33.114323, 24.742029, 28.424301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819931, 24.911594, 28.635445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354515, 0.422927, -0.833937,
		-0.576762, -0.800894, -0.160982,
		-0.735979, 0.423912, 0.527857,
		32.599136, 25.038769, 28.793802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477772, 24.609673, 28.084850>,  <33.114323, 24.742029, 28.424301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477772, 24.609673, 28.084850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.410797, 24.932209, 28.311752>,  <32.370613, 25.125731, 28.447893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.410797, 24.932209, 28.311752>,  <32.477772, 24.609673, 28.084850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410797, 24.932209, 28.311752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322104, 0.499059, -0.804480,
		-0.931780, -0.317413, 0.176166,
		-0.167435, 0.806343, 0.567254,
		32.360565, 25.174112, 28.481928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053299, 24.901945, 27.654978>,  <32.477772, 24.609673, 28.084850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053299, 24.901945, 27.654978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.153255, 25.193855, 27.909531>,  <32.213230, 25.369001, 28.062262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.153255, 25.193855, 27.909531>,  <32.053299, 24.901945, 27.654978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153255, 25.193855, 27.909531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178899, 0.680714, -0.710368,
		-0.951604, 0.063665, 0.300659,
		0.249889, 0.729777, 0.636381,
		32.228222, 25.412788, 28.100445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525852, 25.417652, 27.570391>,  <32.053299, 24.901945, 27.654978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525852, 25.417652, 27.570391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.838938, 25.603901, 27.735584>,  <32.026791, 25.715651, 27.834700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.838938, 25.603901, 27.735584>,  <31.525852, 25.417652, 27.570391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838938, 25.603901, 27.735584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061826, 0.718441, -0.692834,
		-0.619303, 0.516758, 0.591121,
		0.782714, 0.465621, 0.412984,
		32.073753, 25.743587, 27.859480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300842, 26.127407, 27.760605>,  <31.525852, 25.417652, 27.570391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300842, 26.127407, 27.760605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.697374, 26.151958, 27.714134>,  <31.935293, 26.166689, 27.686253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.697374, 26.151958, 27.714134>,  <31.300842, 26.127407, 27.760605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697374, 26.151958, 27.714134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118311, 0.801586, -0.586056,
		0.057153, 0.594720, 0.801898,
		0.991331, 0.061379, -0.116175,
		31.994774, 26.170372, 27.679281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449156, 26.862852, 27.756088>,  <31.300842, 26.127407, 27.760605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449156, 26.862852, 27.756088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.754839, 26.676960, 27.577198>,  <31.938250, 26.565424, 27.469864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.754839, 26.676960, 27.577198>,  <31.449156, 26.862852, 27.756088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754839, 26.676960, 27.577198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010071, 0.684723, -0.728734,
		0.644889, 0.561410, 0.518591,
		0.764210, -0.464730, -0.447224,
		31.984102, 26.537540, 27.443031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991871, 27.341728, 27.698126>,  <31.449156, 26.862852, 27.756088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991871, 27.341728, 27.698126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.998308, 27.054787, 27.419518>,  <32.002171, 26.882622, 27.252352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.998308, 27.054787, 27.419518>,  <31.991871, 27.341728, 27.698126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998308, 27.054787, 27.419518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014004, 0.696705, -0.717221,
		0.999772, 0.001789, 0.021258,
		0.016094, -0.717356, -0.696521,
		32.003136, 26.839581, 27.210562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428715, 27.581865, 27.152502>,  <31.991871, 27.341728, 27.698126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428715, 27.581865, 27.152502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.211880, 27.305504, 26.961174>,  <32.081779, 27.139687, 26.846376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.211880, 27.305504, 26.961174>,  <32.428715, 27.581865, 27.152502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211880, 27.305504, 26.961174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054758, 0.597044, -0.800337,
		0.838536, -0.407661, -0.361483,
		-0.542088, -0.690906, -0.478321,
		32.049255, 27.098232, 26.817678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763451, 27.616310, 26.537271>,  <32.428715, 27.581865, 27.152502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763451, 27.616310, 26.537271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.424576, 27.427170, 26.440369>,  <32.221252, 27.313684, 26.382227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.424576, 27.427170, 26.440369>,  <32.763451, 27.616310, 26.537271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424576, 27.427170, 26.440369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011214, 0.439956, -0.897949,
		0.531182, -0.763444, -0.367421,
		-0.847183, -0.472855, -0.242258,
		32.170422, 27.285315, 26.367691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800243, 27.388027, 25.906414>,  <32.763451, 27.616310, 26.537271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800243, 27.388027, 25.906414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.402130, 27.349712, 25.912663>,  <32.163261, 27.326723, 25.916412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.402130, 27.349712, 25.912663>,  <32.800243, 27.388027, 25.906414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402130, 27.349712, 25.912663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071307, 0.612530, -0.787224,
		0.065839, -0.784622, -0.616469,
		-0.995279, -0.095788, 0.015621,
		32.103546, 27.320976, 25.917349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571758, 27.152716, 25.268616>,  <32.800243, 27.388027, 25.906414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571758, 27.152716, 25.268616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.238472, 27.319809, 25.413532>,  <32.038502, 27.420065, 25.500483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.238472, 27.319809, 25.413532>,  <32.571758, 27.152716, 25.268616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238472, 27.319809, 25.413532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111665, 0.514580, -0.850140,
		-0.541558, -0.748804, -0.382109,
		-0.833214, 0.417732, 0.362290,
		31.988508, 27.445129, 25.522219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056950, 27.153372, 24.735733>,  <32.571758, 27.152716, 25.268616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056950, 27.153372, 24.735733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.943743, 27.440395, 24.990295>,  <31.875818, 27.612610, 25.143032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.943743, 27.440395, 24.990295>,  <32.056950, 27.153372, 24.735733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943743, 27.440395, 24.990295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027699, 0.657142, -0.753258,
		-0.958715, -0.230811, -0.166106,
		-0.283015, 0.717559, 0.636405,
		31.858839, 27.655663, 25.181217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<45.776199, 35.627907, 14.582648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.166489, 35.547127, 14.616523>,  <46.400661, 35.498657, 14.636847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.166489, 35.547127, 14.616523>,  <45.776199, 35.627907, 14.582648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.166489, 35.547127, 14.616523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217032, -0.840222, 0.496914,
		-0.029196, -0.503233, -0.863658,
		0.975728, -0.201949, 0.084687,
		46.459206, 35.486542, 14.641929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.923397, 34.937241, 14.510523>,  <45.776199, 35.627907, 14.582648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.923397, 34.937241, 14.510523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.228573, 35.079506, 14.726459>,  <46.411678, 35.164864, 14.856020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.228573, 35.079506, 14.726459>,  <45.923397, 34.937241, 14.510523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.228573, 35.079506, 14.726459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164503, -0.700763, 0.694168,
		0.625189, -0.618414, -0.476133,
		0.762940, 0.355661, 0.539841,
		46.457455, 35.186203, 14.888411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.209431, 34.255421, 14.695210>,  <45.923397, 34.937241, 14.510523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.209431, 34.255421, 14.695210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.364906, 34.522472, 14.949199>,  <46.458191, 34.682705, 15.101592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.364906, 34.522472, 14.949199>,  <46.209431, 34.255421, 14.695210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.364906, 34.522472, 14.949199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162493, -0.628689, 0.760490,
		0.906927, -0.398773, -0.135880,
		0.388689, 0.667630, 0.634973,
		46.481514, 34.722763, 15.139690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.547237, 33.880489, 15.122222>,  <46.209431, 34.255421, 14.695210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.547237, 33.880489, 15.122222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.499744, 34.218853, 15.330197>,  <46.471249, 34.421871, 15.454983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.499744, 34.218853, 15.330197>,  <46.547237, 33.880489, 15.122222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.499744, 34.218853, 15.330197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226825, -0.532905, 0.815207,
		0.966671, -0.021142, 0.255148,
		-0.118734, 0.845911, 0.519939,
		46.464123, 34.472626, 15.486179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.762661, 33.707470, 15.767035>,  <46.547237, 33.880489, 15.122222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.762661, 33.707470, 15.767035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.549908, 34.038757, 15.837640>,  <46.422256, 34.237530, 15.880002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.549908, 34.038757, 15.837640>,  <46.762661, 33.707470, 15.767035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.549908, 34.038757, 15.837640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122862, -0.281710, 0.951601,
		0.837855, 0.484457, 0.251594,
		-0.531887, 0.828215, 0.176511,
		46.390343, 34.287224, 15.890593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.957581, 33.970360, 16.476538>,  <46.762661, 33.707470, 15.767035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.957581, 33.970360, 16.476538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.588711, 34.087112, 16.375034>,  <46.367390, 34.157166, 16.314133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.588711, 34.087112, 16.375034>,  <46.957581, 33.970360, 16.476538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.588711, 34.087112, 16.375034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336032, -0.279800, 0.899330,
		0.191495, 0.914613, 0.356106,
		-0.922178, 0.291880, -0.253759,
		46.312057, 34.174675, 16.298906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.690620, 34.060577, 17.157370>,  <46.957581, 33.970360, 16.476538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.690620, 34.060577, 17.157370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.369869, 34.130676, 16.928886>,  <46.177418, 34.172733, 16.791796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.369869, 34.130676, 16.928886>,  <46.690620, 34.060577, 17.157370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.369869, 34.130676, 16.928886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577755, 0.016233, 0.816049,
		0.152279, 0.984391, 0.088231,
		-0.801879, 0.175243, -0.571209,
		46.129307, 34.183250, 16.757524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.396484, 34.748611, 17.317537>,  <46.690620, 34.060577, 17.157370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.396484, 34.748611, 17.317537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.124683, 34.495178, 17.169559>,  <45.961605, 34.343121, 17.080772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.124683, 34.495178, 17.169559>,  <46.396484, 34.748611, 17.317537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.124683, 34.495178, 17.169559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427495, -0.067881, 0.901466,
		-0.596262, 0.770694, -0.224727,
		-0.679500, -0.633579, -0.369942,
		45.920834, 34.305103, 17.058577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708717, 34.939415, 17.578590>,  <46.396484, 34.748611, 17.317537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.708717, 34.939415, 17.578590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.653748, 34.559845, 17.464993>,  <45.620766, 34.332104, 17.396835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.653748, 34.559845, 17.464993>,  <45.708717, 34.939415, 17.578590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653748, 34.559845, 17.464993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452711, -0.194842, 0.870108,
		-0.881003, 0.248140, -0.402814,
		-0.137424, -0.948927, -0.283992,
		45.612522, 34.275166, 17.379795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282974, 34.662865, 18.067596>,  <45.708717, 34.939415, 17.578590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282974, 34.662865, 18.067596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.328377, 34.326771, 17.855515>,  <45.355618, 34.125114, 17.728266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.328377, 34.326771, 17.855515>,  <45.282974, 34.662865, 18.067596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328377, 34.326771, 17.855515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500832, -0.509283, 0.699856,
		-0.858070, 0.186103, -0.478626,
		0.113511, -0.840236, -0.530207,
		45.362431, 34.074699, 17.696453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589428, 34.292694, 17.817495>,  <45.282974, 34.662865, 18.067596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589428, 34.292694, 17.817495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.898674, 34.049358, 17.889290>,  <45.084221, 33.903355, 17.932367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.898674, 34.049358, 17.889290>,  <44.589428, 34.292694, 17.817495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898674, 34.049358, 17.889290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527712, -0.459944, 0.714123,
		-0.351875, -0.646817, -0.676618,
		0.773113, -0.608342, 0.179490,
		45.130608, 33.866856, 17.943136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298721, 33.591877, 17.818811>,  <44.589428, 34.292694, 17.817495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298721, 33.591877, 17.818811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.640358, 33.542091, 18.020813>,  <44.845341, 33.512218, 18.142014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.640358, 33.542091, 18.020813>,  <44.298721, 33.591877, 17.818811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640358, 33.542091, 18.020813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468344, -0.606341, 0.642654,
		0.226218, -0.785404, -0.576165,
		0.854096, -0.124463, 0.505005,
		44.896587, 33.504753, 18.172314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242580, 32.968269, 17.923729>,  <44.298721, 33.591877, 17.818811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242580, 32.968269, 17.923729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.516903, 33.096714, 18.184975>,  <44.681496, 33.173782, 18.341722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.516903, 33.096714, 18.184975>,  <44.242580, 32.968269, 17.923729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516903, 33.096714, 18.184975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438818, -0.533481, 0.723074,
		0.580615, -0.782485, -0.224951,
		0.685802, 0.321115, 0.653116,
		44.722645, 33.193050, 18.380909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499367, 32.352100, 18.391560>,  <44.242580, 32.968269, 17.923729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499367, 32.352100, 18.391560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.578140, 32.691841, 18.587444>,  <44.625404, 32.895687, 18.704975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.578140, 32.691841, 18.587444>,  <44.499367, 32.352100, 18.391560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578140, 32.691841, 18.587444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310282, -0.419826, 0.852919,
		0.930022, -0.319919, 0.180860,
		0.196936, 0.849351, 0.489713,
		44.637222, 32.946648, 18.734358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870907, 32.124550, 19.021227>,  <44.499367, 32.352100, 18.391560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870907, 32.124550, 19.021227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.756012, 32.495598, 19.116741>,  <44.687077, 32.718227, 19.174049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.756012, 32.495598, 19.116741>,  <44.870907, 32.124550, 19.021227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756012, 32.495598, 19.116741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525434, -0.361023, 0.770442,
		0.800884, 0.095831, 0.591101,
		-0.287233, 0.927620, 0.238784,
		44.669842, 32.773884, 19.188377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948956, 32.158043, 19.722134>,  <44.870907, 32.124550, 19.021227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948956, 32.158043, 19.722134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.680084, 32.428299, 19.601021>,  <44.518761, 32.590454, 19.528353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.680084, 32.428299, 19.601021>,  <44.948956, 32.158043, 19.722134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.680084, 32.428299, 19.601021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631292, -0.309346, 0.711179,
		0.386839, 0.669186, 0.634465,
		-0.672180, 0.675644, -0.302784,
		44.478432, 32.630993, 19.510185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595440, 32.318714, 20.326990>,  <44.948956, 32.158043, 19.722134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595440, 32.318714, 20.326990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.354240, 32.518463, 20.078148>,  <44.209522, 32.638313, 19.928843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.354240, 32.518463, 20.078148>,  <44.595440, 32.318714, 20.326990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354240, 32.518463, 20.078148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754978, -0.105337, 0.647234,
		0.257682, 0.859959, 0.440534,
		-0.603000, 0.499374, -0.622107,
		44.173340, 32.668274, 19.891516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310352, 32.895226, 20.673800>,  <44.595440, 32.318714, 20.326990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.310352, 32.895226, 20.673800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.061893, 32.735889, 20.403835>,  <43.912819, 32.640285, 20.241858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.061893, 32.735889, 20.403835>,  <44.310352, 32.895226, 20.673800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.061893, 32.735889, 20.403835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731434, -0.014558, 0.681757,
		-0.281398, 0.917121, -0.282319,
		-0.621144, -0.398343, -0.674910,
		43.875549, 32.616386, 20.201363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669655, 33.276741, 20.828606>,  <44.310352, 32.895226, 20.673800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669655, 33.276741, 20.828606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.559273, 32.967793, 20.599766>,  <43.493042, 32.782425, 20.462461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.559273, 32.967793, 20.599766>,  <43.669655, 33.276741, 20.828606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559273, 32.967793, 20.599766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856140, -0.073031, 0.511558,
		-0.436891, 0.630963, -0.641102,
		-0.275954, -0.772368, -0.572099,
		43.476486, 32.736084, 20.428137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952168, 33.292057, 20.763327>,  <43.669655, 33.276741, 20.828606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952168, 33.292057, 20.763327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.030518, 32.911701, 20.667454>,  <43.077526, 32.683487, 20.609930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.030518, 32.911701, 20.667454>,  <42.952168, 33.292057, 20.763327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030518, 32.911701, 20.667454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842871, -0.288173, 0.454451,
		-0.501202, 0.113008, -0.857920,
		0.195873, -0.950887, -0.239684,
		43.089279, 32.626434, 20.595549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366364, 33.106739, 20.441860>,  <42.952168, 33.292057, 20.763327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366364, 33.106739, 20.441860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.556736, 32.806000, 20.624382>,  <42.670959, 32.625557, 20.733894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.556736, 32.806000, 20.624382>,  <42.366364, 33.106739, 20.441860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556736, 32.806000, 20.624382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837301, -0.228595, 0.496660,
		-0.269103, -0.618442, -0.738318,
		0.475931, -0.751847, 0.456306,
		42.699516, 32.580444, 20.761274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658058, 33.274288, 20.842190>,  <42.366364, 33.106739, 20.441860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658058, 33.274288, 20.842190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.385056, 33.557999, 20.771629>,  <41.221252, 33.728226, 20.729294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.385056, 33.557999, 20.771629>,  <41.658058, 33.274288, 20.842190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385056, 33.557999, 20.771629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608529, 0.417772, -0.674655,
		-0.404819, -0.567801, -0.716745,
		-0.682506, 0.709273, -0.176402,
		41.180305, 33.770782, 20.718708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614017, 33.310795, 20.151979>,  <41.658058, 33.274288, 20.842190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614017, 33.310795, 20.151979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.483986, 33.668518, 20.274967>,  <41.405968, 33.883152, 20.348759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.483986, 33.668518, 20.274967>,  <41.614017, 33.310795, 20.151979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483986, 33.668518, 20.274967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446052, 0.431689, -0.784017,
		-0.833883, -0.117722, -0.539241,
		-0.325081, 0.894307, 0.307468,
		41.386463, 33.936810, 20.367208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441658, 33.649506, 19.538061>,  <41.614017, 33.310795, 20.151979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441658, 33.649506, 19.538061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.501213, 33.928066, 19.818874>,  <41.536945, 34.095203, 19.987362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.501213, 33.928066, 19.818874>,  <41.441658, 33.649506, 19.538061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501213, 33.928066, 19.818874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510074, 0.554121, -0.657856,
		-0.847146, 0.456036, -0.272717,
		0.148888, 0.696406, 0.702033,
		41.545879, 34.136990, 20.029484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195427, 34.275578, 19.198879>,  <41.441658, 33.649506, 19.538061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195427, 34.275578, 19.198879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.438297, 34.371853, 19.501774>,  <41.584019, 34.429619, 19.683512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.438297, 34.371853, 19.501774>,  <41.195427, 34.275578, 19.198879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438297, 34.371853, 19.501774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525096, 0.593705, -0.609745,
		-0.596334, 0.767844, 0.234099,
		0.607174, 0.240687, 0.757238,
		41.620449, 34.444057, 19.728945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306255, 35.005024, 19.182343>,  <41.195427, 34.275578, 19.198879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306255, 35.005024, 19.182343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.622452, 34.869698, 19.386566>,  <41.812168, 34.788502, 19.509100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.622452, 34.869698, 19.386566>,  <41.306255, 35.005024, 19.182343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622452, 34.869698, 19.386566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603457, 0.572748, -0.554796,
		-0.104726, 0.746661, 0.656909,
		0.790488, -0.338315, 0.510559,
		41.859600, 34.768204, 19.539734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623844, 35.583527, 19.373684>,  <41.306255, 35.005024, 19.182343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623844, 35.583527, 19.373684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.916500, 35.311756, 19.395916>,  <42.092094, 35.148693, 19.409256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.916500, 35.311756, 19.395916>,  <41.623844, 35.583527, 19.373684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916500, 35.311756, 19.395916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609373, 0.615290, -0.500082,
		0.305571, 0.399747, 0.864193,
		0.731635, -0.679426, 0.055580,
		42.135990, 35.107929, 19.412590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260807, 35.890297, 19.670866>,  <41.623844, 35.583527, 19.373684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260807, 35.890297, 19.670866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.386349, 35.545891, 19.510788>,  <42.461674, 35.339249, 19.414742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.386349, 35.545891, 19.510788>,  <42.260807, 35.890297, 19.670866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386349, 35.545891, 19.510788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786073, 0.472031, -0.399094,
		0.532529, -0.189327, 0.824965,
		0.313850, -0.861012, -0.400195,
		42.480503, 35.287586, 19.390730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014595, 35.963871, 19.822212>,  <42.260807, 35.890297, 19.670866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014595, 35.963871, 19.822212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.959911, 35.703770, 19.523285>,  <42.927101, 35.547710, 19.343929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.959911, 35.703770, 19.523285>,  <43.014595, 35.963871, 19.822212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959911, 35.703770, 19.523285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833143, 0.332640, -0.441841,
		0.535896, -0.683024, 0.496280,
		-0.136705, -0.650253, -0.747317,
		42.918900, 35.508694, 19.299089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735165, 35.831081, 19.657064>,  <43.014595, 35.963871, 19.822212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735165, 35.831081, 19.657064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.530991, 35.716671, 19.332684>,  <43.408485, 35.648026, 19.138056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.530991, 35.716671, 19.332684>,  <43.735165, 35.831081, 19.657064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530991, 35.716671, 19.332684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776961, 0.250716, -0.577472,
		0.368493, -0.924840, 0.094260,
		-0.510436, -0.286030, -0.810951,
		43.377861, 35.630863, 19.089397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173664, 35.367413, 19.204782>,  <43.735165, 35.831081, 19.657064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173664, 35.367413, 19.204782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.882206, 35.514954, 18.973949>,  <43.707333, 35.603477, 18.835449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.882206, 35.514954, 18.973949>,  <44.173664, 35.367413, 19.204782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882206, 35.514954, 18.973949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684862, 0.400324, -0.608855,
		0.006439, -0.838860, -0.544309,
		-0.728644, 0.368856, -0.577081,
		43.663612, 35.625610, 18.800825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435616, 35.367065, 18.604435>,  <44.173664, 35.367413, 19.204782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435616, 35.367065, 18.604435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.122295, 35.590744, 18.495823>,  <43.934303, 35.724953, 18.430656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.122295, 35.590744, 18.495823>,  <44.435616, 35.367065, 18.604435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.122295, 35.590744, 18.495823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484021, 0.274551, -0.830870,
		-0.390074, -0.782251, -0.485722,
		-0.783305, 0.559200, -0.271530,
		43.887302, 35.758503, 18.414364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334087, 35.263893, 17.922047>,  <44.435616, 35.367065, 18.604435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334087, 35.263893, 17.922047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.192951, 35.624428, 18.022522>,  <44.108269, 35.840748, 18.082808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.192951, 35.624428, 18.022522>,  <44.334087, 35.263893, 17.922047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192951, 35.624428, 18.022522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576798, 0.420905, -0.700102,
		-0.736754, -0.102140, -0.668402,
		-0.352842, 0.901336, 0.251189,
		44.087097, 35.894829, 18.097879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145344, 35.588116, 17.183889>,  <44.334087, 35.263893, 17.922047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145344, 35.588116, 17.183889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.161434, 35.896511, 17.438118>,  <44.171089, 36.081551, 17.590656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.161434, 35.896511, 17.438118>,  <44.145344, 35.588116, 17.183889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161434, 35.896511, 17.438118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587761, 0.496138, -0.639050,
		-0.808034, 0.399272, -0.433200,
		0.040228, 0.770992, 0.635573,
		44.173504, 36.127808, 17.628790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985199, 36.130039, 16.838202>,  <44.145344, 35.588116, 17.183889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985199, 36.130039, 16.838202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.205013, 36.282955, 17.135353>,  <44.336903, 36.374702, 17.313644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.205013, 36.282955, 17.135353>,  <43.985199, 36.130039, 16.838202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205013, 36.282955, 17.135353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519138, 0.540438, -0.662135,
		-0.654605, 0.749522, 0.098529,
		0.549534, 0.382286, 0.742879,
		44.369873, 36.397640, 17.358217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018021, 36.777309, 16.569151>,  <43.985199, 36.130039, 16.838202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018021, 36.777309, 16.569151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.312740, 36.731552, 16.835697>,  <44.489571, 36.704098, 16.995625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.312740, 36.731552, 16.835697>,  <44.018021, 36.777309, 16.569151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312740, 36.731552, 16.835697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620173, 0.506894, -0.598702,
		-0.269288, 0.854384, 0.444424,
		0.736797, -0.114397, 0.666366,
		44.533779, 36.697231, 17.035606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335052, 37.477108, 16.667253>,  <44.018021, 36.777309, 16.569151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335052, 37.477108, 16.667253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.603519, 37.210846, 16.797752>,  <44.764599, 37.051090, 16.876053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.603519, 37.210846, 16.797752>,  <44.335052, 37.477108, 16.667253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603519, 37.210846, 16.797752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702582, 0.430808, -0.566377,
		0.236460, 0.609351, 0.756821,
		0.671167, -0.665654, 0.326250,
		44.804871, 37.011150, 16.895628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949905, 37.905258, 16.808224>,  <44.335052, 37.477108, 16.667253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949905, 37.905258, 16.808224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.064529, 37.525604, 16.756023>,  <45.133305, 37.297813, 16.724703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.064529, 37.525604, 16.756023>,  <44.949905, 37.905258, 16.808224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.064529, 37.525604, 16.756023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629936, 0.289286, -0.720759,
		0.721849, 0.124333, 0.680791,
		0.286557, -0.949134, -0.130499,
		45.150497, 37.240864, 16.716873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.669262, 38.068607, 16.838724>,  <44.949905, 37.905258, 16.808224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.669262, 38.068607, 16.838724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.611134, 37.698414, 16.698803>,  <45.576256, 37.476299, 16.614851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.611134, 37.698414, 16.698803>,  <45.669262, 38.068607, 16.838724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.611134, 37.698414, 16.698803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692983, 0.157135, -0.703622,
		0.706157, -0.344657, 0.618510,
		-0.145319, -0.925484, -0.349803,
		45.567539, 37.420769, 16.593863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.327999, 37.892113, 16.526829>,  <45.669262, 38.068607, 16.838724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.327999, 37.892113, 16.526829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.059090, 37.647125, 16.360485>,  <45.897743, 37.500134, 16.260679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.059090, 37.647125, 16.360485>,  <46.327999, 37.892113, 16.526829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.059090, 37.647125, 16.360485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482626, 0.063369, -0.873531,
		0.561361, -0.787953, 0.252991,
		-0.672270, -0.612466, -0.415860,
		45.857410, 37.463387, 16.235727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.697323, 37.430187, 16.136171>,  <46.327999, 37.892113, 16.526829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.697323, 37.430187, 16.136171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.325474, 37.418449, 15.989238>,  <46.102364, 37.411407, 15.901077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.325474, 37.418449, 15.989238>,  <46.697323, 37.430187, 16.136171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.325474, 37.418449, 15.989238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367612, -0.004541, -0.929968,
		0.025622, -0.999559, 0.015009,
		-0.929626, -0.029345, -0.367334,
		46.046585, 37.409645, 15.879038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.772800, 37.021221, 15.569946>,  <46.697323, 37.430187, 16.136171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.772800, 37.021221, 15.569946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.443550, 37.237106, 15.499322>,  <46.245998, 37.366638, 15.456947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.443550, 37.237106, 15.499322>,  <46.772800, 37.021221, 15.569946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443550, 37.237106, 15.499322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264449, 0.089174, -0.960268,
		-0.502526, -0.837112, -0.216128,
		-0.823125, 0.539715, -0.176560,
		46.196613, 37.399021, 15.446354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.406494, 26.631521, 30.839348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.776583, 26.653469, 30.989525>,  <28.998636, 26.666637, 31.079630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.776583, 26.653469, 30.989525>,  <28.406494, 26.631521, 30.839348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776583, 26.653469, 30.989525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042844, -0.968052, 0.247064,
		0.377002, -0.244674, -0.893311,
		0.925221, 0.054871, 0.375440,
		29.054150, 26.669930, 31.102158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797314, 26.081142, 30.570904>,  <28.406494, 26.631521, 30.839348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797314, 26.081142, 30.570904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.961658, 26.173645, 30.923656>,  <29.060266, 26.229147, 31.135307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.961658, 26.173645, 30.923656>,  <28.797314, 26.081142, 30.570904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961658, 26.173645, 30.923656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030996, -0.963192, 0.267019,
		0.911170, -0.137043, -0.388572,
		0.410863, 0.231256, 0.881880,
		29.084917, 26.243021, 31.188221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170828, 25.494383, 30.688641>,  <28.797314, 26.081142, 30.570904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170828, 25.494383, 30.688641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.169420, 25.665070, 31.050392>,  <29.168575, 25.767481, 31.267443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.169420, 25.665070, 31.050392>,  <29.170828, 25.494383, 30.688641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169420, 25.665070, 31.050392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075366, -0.901926, 0.425265,
		0.997150, -0.066663, 0.035334,
		-0.003520, 0.426716, 0.904379,
		29.168364, 25.793085, 31.321705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706511, 25.181683, 31.140249>,  <29.170828, 25.494383, 30.688641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706511, 25.181683, 31.140249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.466976, 25.356369, 31.408779>,  <29.323256, 25.461180, 31.569897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.466976, 25.356369, 31.408779>,  <29.706511, 25.181683, 31.140249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466976, 25.356369, 31.408779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025012, -0.827634, 0.560710,
		0.800481, 0.352564, 0.484693,
		-0.598835, 0.436715, 0.671324,
		29.287325, 25.487383, 31.610176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099377, 25.104746, 31.781950>,  <29.706511, 25.181683, 31.140249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099377, 25.104746, 31.781950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.704906, 25.146454, 31.833466>,  <29.468224, 25.171478, 31.864376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.704906, 25.146454, 31.833466>,  <30.099377, 25.104746, 31.781950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704906, 25.146454, 31.833466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038858, -0.901053, 0.431965,
		0.161088, 0.420988, 0.892648,
		-0.986175, 0.104271, 0.128790,
		29.409054, 25.177734, 31.872103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940495, 25.021318, 32.494972>,  <30.099377, 25.104746, 31.781950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940495, 25.021318, 32.494972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.584396, 24.955875, 32.324940>,  <29.370737, 24.916609, 32.222919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.584396, 24.955875, 32.324940>,  <29.940495, 25.021318, 32.494972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584396, 24.955875, 32.324940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169471, -0.747276, 0.642540,
		-0.422776, 0.644058, 0.637534,
		-0.890247, -0.163607, -0.425080,
		29.317322, 24.906794, 32.197414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472866, 25.024429, 33.026512>,  <29.940495, 25.021318, 32.494972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472866, 25.024429, 33.026512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.296955, 24.812382, 32.736526>,  <29.191408, 24.685154, 32.562534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.296955, 24.812382, 32.736526>,  <29.472866, 25.024429, 33.026512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296955, 24.812382, 32.736526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133228, -0.759775, 0.636390,
		-0.888171, 0.376454, 0.263504,
		-0.439776, -0.530117, -0.724965,
		29.165022, 24.653347, 32.519035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821627, 24.773178, 33.388248>,  <29.472866, 25.024429, 33.026512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821627, 24.773178, 33.388248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.881323, 24.546741, 33.063961>,  <28.917141, 24.410879, 32.869389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.881323, 24.546741, 33.063961>,  <28.821627, 24.773178, 33.388248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881323, 24.546741, 33.063961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092397, -0.824298, 0.558565,
		-0.984475, -0.008451, -0.175323,
		0.149239, -0.566093, -0.810720,
		28.926094, 24.376913, 32.820744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245920, 24.376127, 33.415489>,  <28.821627, 24.773178, 33.388248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245920, 24.376127, 33.415489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.537029, 24.217014, 33.192020>,  <28.711695, 24.121548, 33.057938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.537029, 24.217014, 33.192020>,  <28.245920, 24.376127, 33.415489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537029, 24.217014, 33.192020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094802, -0.865139, 0.492490,
		-0.679233, -0.305458, -0.667337,
		0.727774, -0.397780, -0.558672,
		28.755362, 24.097681, 33.024418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964956, 23.682888, 33.262398>,  <28.245920, 24.376127, 33.415489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964956, 23.682888, 33.262398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.355612, 23.679817, 33.176498>,  <28.590006, 23.677975, 33.124958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.355612, 23.679817, 33.176498>,  <27.964956, 23.682888, 33.262398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355612, 23.679817, 33.176498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082582, -0.909211, 0.408063,
		-0.198387, -0.416265, -0.887336,
		0.976638, -0.007676, -0.214752,
		28.648603, 23.677515, 33.112072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959803, 23.015839, 32.911999>,  <27.964956, 23.682888, 33.262398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959803, 23.015839, 32.911999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.326857, 23.123459, 33.028999>,  <28.547089, 23.188030, 33.099201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.326857, 23.123459, 33.028999>,  <27.959803, 23.015839, 32.911999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326857, 23.123459, 33.028999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021303, -0.768240, 0.639808,
		0.396856, -0.580878, -0.710694,
		0.917634, 0.269051, 0.292506,
		28.602146, 23.204174, 33.116753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335964, 22.409811, 32.960167>,  <27.959803, 23.015839, 32.911999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335964, 22.409811, 32.960167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.542007, 22.676125, 33.176090>,  <28.665632, 22.835913, 33.305645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.542007, 22.676125, 33.176090>,  <28.335964, 22.409811, 32.960167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542007, 22.676125, 33.176090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137649, -0.685874, 0.714584,
		0.846001, -0.293782, -0.444943,
		0.515107, 0.665785, 0.539811,
		28.696539, 22.875860, 33.338032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896894, 21.975977, 33.310169>,  <28.335964, 22.409811, 32.960167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896894, 21.975977, 33.310169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.838966, 22.312321, 33.518776>,  <28.804211, 22.514128, 33.643940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.838966, 22.312321, 33.518776>,  <28.896894, 21.975977, 33.310169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838966, 22.312321, 33.518776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161213, -0.499979, 0.850900,
		0.976236, 0.207302, -0.063152,
		-0.144819, 0.840861, 0.521517,
		28.795521, 22.564579, 33.675232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465332, 21.942652, 33.742363>,  <28.896894, 21.975977, 33.310169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465332, 21.942652, 33.742363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.193140, 22.195049, 33.891384>,  <29.029825, 22.346487, 33.980797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.193140, 22.195049, 33.891384>,  <29.465332, 21.942652, 33.742363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193140, 22.195049, 33.891384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101096, -0.422716, 0.900605,
		0.725760, 0.650507, 0.223859,
		-0.680479, 0.630992, 0.372554,
		28.988997, 22.384346, 34.003151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100445, 21.518476, 33.851307>,  <29.465332, 21.942652, 33.742363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100445, 21.518476, 33.851307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.463993, 21.365414, 33.784939>,  <30.682121, 21.273577, 33.745117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.463993, 21.365414, 33.784939>,  <30.100445, 21.518476, 33.851307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463993, 21.365414, 33.784939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168242, 0.700370, -0.693669,
		0.381640, 0.602542, 0.700924,
		0.908871, -0.382656, -0.165916,
		30.736654, 21.250616, 33.735165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584179, 22.035786, 33.810459>,  <30.100445, 21.518476, 33.851307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584179, 22.035786, 33.810459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.774414, 21.738400, 33.622383>,  <30.888556, 21.559967, 33.509537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.774414, 21.738400, 33.622383>,  <30.584179, 22.035786, 33.810459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774414, 21.738400, 33.622383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429547, 0.662722, -0.613424,
		0.767662, 0.089769, 0.634536,
		0.475587, -0.743466, -0.470186,
		30.917089, 21.515360, 33.481327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336405, 22.114029, 33.767986>,  <30.584179, 22.035786, 33.810459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336405, 22.114029, 33.767986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.236231, 21.877884, 33.461063>,  <31.176126, 21.736197, 33.276909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.236231, 21.877884, 33.461063>,  <31.336405, 22.114029, 33.767986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236231, 21.877884, 33.461063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611136, 0.518292, -0.598236,
		0.750863, -0.618745, 0.230995,
		-0.250433, -0.590362, -0.767304,
		31.161100, 21.700775, 33.230873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949314, 22.009485, 33.293369>,  <31.336405, 22.114029, 33.767986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949314, 22.009485, 33.293369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.657623, 21.932388, 33.030743>,  <31.482609, 21.886129, 32.873169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.657623, 21.932388, 33.030743>,  <31.949314, 22.009485, 33.293369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657623, 21.932388, 33.030743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562756, 0.376922, -0.735687,
		0.389269, -0.905970, -0.166398,
		-0.729229, -0.192739, -0.656565,
		31.438854, 21.874565, 32.833775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201393, 21.815388, 32.619709>,  <31.949314, 22.009485, 33.293369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201393, 21.815388, 32.619709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.833792, 21.889027, 32.480255>,  <31.613232, 21.933210, 32.396584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.833792, 21.889027, 32.480255>,  <32.201393, 21.815388, 32.619709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833792, 21.889027, 32.480255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388114, 0.577955, -0.717869,
		0.069339, -0.795032, -0.602591,
		-0.918999, 0.184098, -0.348638,
		31.558092, 21.944256, 32.375664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190411, 21.626312, 31.869593>,  <32.201393, 21.815388, 32.619709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190411, 21.626312, 31.869593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.900690, 21.885952, 31.962597>,  <31.726858, 22.041735, 32.018398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.900690, 21.885952, 31.962597>,  <32.190411, 21.626312, 31.869593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900690, 21.885952, 31.962597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270677, 0.577841, -0.769957,
		-0.634131, -0.494746, -0.594226,
		-0.724301, 0.649097, 0.232510,
		31.683399, 22.080681, 32.032349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081059, 21.903309, 31.213272>,  <32.190411, 21.626312, 31.869593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081059, 21.903309, 31.213272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.879160, 22.161690, 31.442348>,  <31.758020, 22.316719, 31.579794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.879160, 22.161690, 31.442348>,  <32.081059, 21.903309, 31.213272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879160, 22.161690, 31.442348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198832, 0.732553, -0.651024,
		-0.840056, -0.214734, -0.498191,
		-0.504748, 0.645953, 0.572690,
		31.727736, 22.355476, 31.614155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577026, 22.216537, 30.773685>,  <32.081059, 21.903309, 31.213272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577026, 22.216537, 30.773685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.610155, 22.463371, 31.086697>,  <31.630032, 22.611471, 31.274504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.610155, 22.463371, 31.086697>,  <31.577026, 22.216537, 30.773685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610155, 22.463371, 31.086697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202227, 0.758480, -0.619526,
		-0.975830, 0.209557, -0.061973,
		0.082821, 0.617085, 0.782526,
		31.635002, 22.648497, 31.321455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233364, 22.808332, 30.524866>,  <31.577026, 22.216537, 30.773685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233364, 22.808332, 30.524866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.448198, 22.933979, 30.838009>,  <31.577099, 23.009367, 31.025894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.448198, 22.933979, 30.838009>,  <31.233364, 22.808332, 30.524866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448198, 22.933979, 30.838009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133364, 0.884784, -0.446510,
		-0.832918, 0.344220, 0.433314,
		0.537086, 0.314118, 0.782859,
		31.609324, 23.028214, 31.072866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977013, 23.534277, 30.680504>,  <31.233364, 22.808332, 30.524866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977013, 23.534277, 30.680504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.353176, 23.493870, 30.810383>,  <31.578875, 23.469625, 30.888309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.353176, 23.493870, 30.810383>,  <30.977013, 23.534277, 30.680504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353176, 23.493870, 30.810383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254692, 0.841911, -0.475728,
		-0.225308, 0.530076, 0.817469,
		0.940409, -0.101017, 0.324695,
		31.635300, 23.463564, 30.907791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185814, 24.181751, 30.893600>,  <30.977013, 23.534277, 30.680504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185814, 24.181751, 30.893600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.535280, 23.993561, 30.844025>,  <31.744959, 23.880646, 30.814280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.535280, 23.993561, 30.844025>,  <31.185814, 24.181751, 30.893600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535280, 23.993561, 30.844025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389192, 0.828685, -0.402258,
		0.291958, 0.303203, 0.907099,
		0.873665, -0.470478, -0.123937,
		31.797380, 23.852417, 30.806843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692703, 24.695858, 30.955723>,  <31.185814, 24.181751, 30.893600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692703, 24.695858, 30.955723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.928713, 24.408691, 30.807957>,  <32.070320, 24.236391, 30.719296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.928713, 24.408691, 30.807957>,  <31.692703, 24.695858, 30.955723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928713, 24.408691, 30.807957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399456, 0.657191, -0.639167,
		0.701646, 0.229557, 0.674534,
		0.590023, -0.717916, -0.369418,
		32.105721, 24.193317, 30.697132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386463, 24.922750, 30.837343>,  <31.692703, 24.695858, 30.955723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386463, 24.922750, 30.837343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384335, 24.604118, 30.595539>,  <32.383057, 24.412939, 30.450457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384335, 24.604118, 30.595539>,  <32.386463, 24.922750, 30.837343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384335, 24.604118, 30.595539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364435, 0.561401, -0.742977,
		0.931213, -0.224255, 0.287317,
		-0.005317, -0.796579, -0.604511,
		32.382740, 24.365145, 30.414186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978519, 24.962883, 30.476772>,  <32.386463, 24.922750, 30.837343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978519, 24.962883, 30.476772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732182, 24.758091, 30.237236>,  <32.584377, 24.635216, 30.093515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732182, 24.758091, 30.237236>,  <32.978519, 24.962883, 30.476772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732182, 24.758091, 30.237236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276024, 0.571697, -0.772641,
		0.737932, -0.641122, -0.210758,
		-0.615847, -0.511982, -0.598839,
		32.547428, 24.604496, 30.057585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619781, 24.659769, 30.343878>,  <32.978519, 24.962883, 30.476772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619781, 24.659769, 30.343878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972607, 24.785099, 30.484612>,  <34.184303, 24.860296, 30.569052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972607, 24.785099, 30.484612>,  <33.619781, 24.659769, 30.343878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972607, 24.785099, 30.484612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103326, -0.599959, 0.793330,
		0.459657, -0.736123, -0.496829,
		0.882065, 0.313324, 0.351836,
		34.237225, 24.879097, 30.590162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080292, 24.055925, 30.504675>,  <33.619781, 24.659769, 30.343878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080292, 24.055925, 30.504675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.252636, 24.353603, 30.708843>,  <34.356045, 24.532211, 30.831345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.252636, 24.353603, 30.708843>,  <34.080292, 24.055925, 30.504675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252636, 24.353603, 30.708843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105724, -0.520092, 0.847542,
		0.896203, -0.419139, -0.145409,
		0.430863, 0.744196, 0.510421,
		34.381893, 24.576862, 30.861969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514122, 23.781202, 30.921961>,  <34.080292, 24.055925, 30.504675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514122, 23.781202, 30.921961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452862, 24.139793, 31.088272>,  <34.416103, 24.354948, 31.188059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452862, 24.139793, 31.088272>,  <34.514122, 23.781202, 30.921961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452862, 24.139793, 31.088272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028558, -0.424579, 0.904940,
		0.987790, 0.126721, 0.090627,
		-0.153154, 0.896479, 0.415776,
		34.406918, 24.408737, 31.213005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889355, 23.716873, 31.574467>,  <34.514122, 23.781202, 30.921961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889355, 23.716873, 31.574467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667007, 24.045712, 31.623730>,  <34.533600, 24.243015, 31.653288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667007, 24.045712, 31.623730>,  <34.889355, 23.716873, 31.574467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667007, 24.045712, 31.623730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016532, -0.159060, 0.987130,
		0.831107, 0.546677, 0.102007,
		-0.555867, 0.822097, 0.123158,
		34.500248, 24.292341, 31.660677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139595, 24.117233, 32.174194>,  <34.889355, 23.716873, 31.574467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139595, 24.117233, 32.174194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750195, 24.196815, 32.129089>,  <34.516556, 24.244564, 32.102024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750195, 24.196815, 32.129089>,  <35.139595, 24.117233, 32.174194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750195, 24.196815, 32.129089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154788, -0.210264, 0.965313,
		0.168345, 0.957186, 0.235488,
		-0.973499, 0.198956, -0.112764,
		34.458145, 24.256502, 32.095261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882763, 24.597540, 32.717842>,  <35.139595, 24.117233, 32.174194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882763, 24.597540, 32.717842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.560986, 24.395756, 32.592373>,  <34.367920, 24.274685, 32.517090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.560986, 24.395756, 32.592373>,  <34.882763, 24.597540, 32.717842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560986, 24.395756, 32.592373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137343, -0.355786, 0.924421,
		-0.577935, 0.786724, 0.216925,
		-0.804443, -0.504462, -0.313672,
		34.319653, 24.244417, 32.498272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375496, 24.631788, 33.176262>,  <34.882763, 24.597540, 32.717842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375496, 24.631788, 33.176262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260323, 24.297798, 32.988682>,  <34.191219, 24.097404, 32.876133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260323, 24.297798, 32.988682>,  <34.375496, 24.631788, 33.176262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260323, 24.297798, 32.988682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182371, -0.432916, 0.882794,
		-0.940125, 0.339708, -0.027624,
		-0.287933, -0.834975, -0.468948,
		34.173943, 24.047306, 32.847996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121918, 25.168823, 33.407097>,  <34.375496, 24.631788, 33.176262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121918, 25.168823, 33.407097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239941, 25.433357, 33.682945>,  <34.310753, 25.592077, 33.848454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239941, 25.433357, 33.682945>,  <34.121918, 25.168823, 33.407097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239941, 25.433357, 33.682945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194054, 0.665237, -0.720974,
		-0.935568, 0.346550, 0.067946,
		0.295053, 0.661334, 0.689623,
		34.328457, 25.631758, 33.889832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868519, 25.941668, 33.280003>,  <34.121918, 25.168823, 33.407097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868519, 25.941668, 33.280003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.202732, 25.974621, 33.497292>,  <34.403259, 25.994392, 33.627666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.202732, 25.974621, 33.497292>,  <33.868519, 25.941668, 33.280003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202732, 25.974621, 33.497292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353755, 0.675840, -0.646604,
		-0.420402, 0.732429, 0.535546,
		0.835535, 0.082382, 0.543226,
		34.453392, 25.999336, 33.660259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005463, 26.585356, 33.203571>,  <33.868519, 25.941668, 33.280003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005463, 26.585356, 33.203571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363785, 26.445282, 33.313042>,  <34.578777, 26.361237, 33.378723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363785, 26.445282, 33.313042>,  <34.005463, 26.585356, 33.203571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363785, 26.445282, 33.313042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444313, 0.690930, -0.570264,
		0.010610, 0.632444, 0.774534,
		0.895809, -0.350186, 0.273672,
		34.632526, 26.340225, 33.395142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355400, 27.170465, 33.498543>,  <34.005463, 26.585356, 33.203571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355400, 27.170465, 33.498543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.646950, 26.923252, 33.380711>,  <34.821880, 26.774923, 33.310009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.646950, 26.923252, 33.380711>,  <34.355400, 27.170465, 33.498543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646950, 26.923252, 33.380711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460890, 0.761096, -0.456415,
		0.506286, 0.196897, 0.839587,
		0.728873, -0.618033, -0.294584,
		34.865612, 26.737843, 33.292336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983921, 27.521580, 33.626389>,  <34.355400, 27.170465, 33.498543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983921, 27.521580, 33.626389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068233, 27.240295, 33.354782>,  <35.118820, 27.071526, 33.191818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068233, 27.240295, 33.354782>,  <34.983921, 27.521580, 33.626389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068233, 27.240295, 33.354782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475746, 0.680606, -0.557173,
		0.853953, -0.205596, 0.478012,
		0.210785, -0.703211, -0.679017,
		35.131470, 27.029331, 33.151077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711250, 27.609192, 33.433792>,  <34.983921, 27.521580, 33.626389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711250, 27.609192, 33.433792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534752, 27.417828, 33.130100>,  <35.428852, 27.303009, 32.947887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534752, 27.417828, 33.130100>,  <35.711250, 27.609192, 33.433792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534752, 27.417828, 33.130100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383662, 0.664252, -0.641540,
		0.811239, -0.574361, -0.109547,
		-0.441242, -0.478413, -0.759227,
		35.402378, 27.274303, 32.902332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138084, 27.822910, 32.849213>,  <35.711250, 27.609192, 33.433792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138084, 27.822910, 32.849213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.800117, 27.668316, 32.701298>,  <35.597336, 27.575560, 32.612549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.800117, 27.668316, 32.701298>,  <36.138084, 27.822910, 32.849213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800117, 27.668316, 32.701298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197928, 0.416358, -0.887395,
		0.496931, -0.822967, -0.275292,
		-0.844917, -0.386486, -0.369789,
		35.546642, 27.552370, 32.590363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.057003, 24.982357, 35.544796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.787289, 24.855919, 35.277836>,  <30.625460, 24.780056, 35.117661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.787289, 24.855919, 35.277836>,  <31.057003, 24.982357, 35.544796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787289, 24.855919, 35.277836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072698, 0.870957, -0.485952,
		0.734882, -0.376190, -0.564296,
		-0.674287, -0.316094, -0.667399,
		30.585003, 24.761091, 35.077618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323189, 25.142492, 34.960403>,  <31.057003, 24.982357, 35.544796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323189, 25.142492, 34.960403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.932964, 25.106255, 34.880333>,  <30.698830, 25.084513, 34.832291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.932964, 25.106255, 34.880333>,  <31.323189, 25.142492, 34.960403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932964, 25.106255, 34.880333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000300, 0.910494, -0.413522,
		0.219722, -0.403477, -0.888217,
		-0.975563, -0.090594, -0.200177,
		30.640295, 25.079077, 34.820278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285063, 25.292362, 34.241100>,  <31.323189, 25.142492, 34.960403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285063, 25.292362, 34.241100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.920351, 25.347862, 34.395714>,  <30.701525, 25.381163, 34.488483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.920351, 25.347862, 34.395714>,  <31.285063, 25.292362, 34.241100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920351, 25.347862, 34.395714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081741, 0.861058, -0.501893,
		-0.402468, -0.489211, -0.773752,
		-0.911778, 0.138749, 0.386537,
		30.646818, 25.389486, 34.511673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810747, 25.388577, 33.677681>,  <31.285063, 25.292362, 34.241100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810747, 25.388577, 33.677681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.596252, 25.538799, 33.980045>,  <30.467556, 25.628933, 34.161465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.596252, 25.538799, 33.980045>,  <30.810747, 25.388577, 33.677681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596252, 25.538799, 33.980045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061167, 0.875917, -0.478570,
		-0.841849, -0.302863, -0.446726,
		-0.536235, 0.375559, 0.755915,
		30.435381, 25.651466, 34.206821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107174, 25.657652, 33.406471>,  <30.810747, 25.388577, 33.677681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107174, 25.657652, 33.406471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.138386, 25.829861, 33.766151>,  <30.157114, 25.933186, 33.981960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.138386, 25.829861, 33.766151>,  <30.107174, 25.657652, 33.406471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138386, 25.829861, 33.766151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256396, 0.880278, -0.399213,
		-0.963417, -0.199400, 0.179073,
		0.078031, 0.430523, 0.899200,
		30.161795, 25.959017, 34.035912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556923, 26.057121, 33.390434>,  <30.107174, 25.657652, 33.406471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556923, 26.057121, 33.390434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.787977, 26.212017, 33.677876>,  <29.926609, 26.304955, 33.850338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.787977, 26.212017, 33.677876>,  <29.556923, 26.057121, 33.390434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787977, 26.212017, 33.677876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285017, 0.920590, -0.266982,
		-0.764921, -0.050595, 0.642134,
		0.577634, 0.387239, 0.718599,
		29.961267, 26.328188, 33.893456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077604, 26.438068, 33.871777>,  <29.556923, 26.057121, 33.390434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077604, 26.438068, 33.871777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.448540, 26.586517, 33.890999>,  <29.671101, 26.675587, 33.902531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.448540, 26.586517, 33.890999>,  <29.077604, 26.438068, 33.871777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448540, 26.586517, 33.890999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359506, 0.919154, -0.160968,
		-0.103907, 0.131997, 0.985789,
		0.927340, 0.371123, 0.048053,
		29.726742, 26.697855, 33.905415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068598, 27.113461, 34.213360>,  <29.077604, 26.438068, 33.871777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068598, 27.113461, 34.213360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.422537, 27.133286, 34.028065>,  <29.634899, 27.145180, 33.916885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.422537, 27.133286, 34.028065>,  <29.068598, 27.113461, 34.213360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422537, 27.133286, 34.028065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174862, 0.956961, -0.231621,
		0.431822, 0.285952, 0.855430,
		0.884846, 0.049563, -0.463239,
		29.687990, 27.148155, 33.889091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426048, 27.569927, 34.670441>,  <29.068598, 27.113461, 34.213360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426048, 27.569927, 34.670441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.582483, 27.573914, 34.302322>,  <29.676344, 27.576305, 34.081451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.582483, 27.573914, 34.302322>,  <29.426048, 27.569927, 34.670441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582483, 27.573914, 34.302322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179175, 0.979985, 0.086755,
		0.902745, -0.198824, 0.381473,
		0.391087, 0.009966, -0.920300,
		29.699810, 27.576904, 34.026234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037968, 28.022940, 34.700577>,  <29.426048, 27.569927, 34.670441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037968, 28.022940, 34.700577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.932610, 28.002693, 34.315231>,  <29.869394, 27.990545, 34.084026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.932610, 28.002693, 34.315231>,  <30.037968, 28.022940, 34.700577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932610, 28.002693, 34.315231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118452, 0.989369, -0.084369,
		0.957388, -0.136335, -0.254600,
		-0.263396, -0.050616, -0.963359,
		29.853590, 27.987509, 34.026222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423786, 28.464447, 34.431362>,  <30.037968, 28.022940, 34.700577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423786, 28.464447, 34.431362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.168558, 28.433231, 34.124954>,  <30.015421, 28.414501, 33.941109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.168558, 28.433231, 34.124954>,  <30.423786, 28.464447, 34.431362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168558, 28.433231, 34.124954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185152, 0.950109, -0.251021,
		0.747387, -0.301998, -0.591785,
		-0.638068, -0.078040, -0.766015,
		29.977139, 28.409819, 33.895149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762423, 28.645763, 33.835411>,  <30.423786, 28.464447, 34.431362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762423, 28.645763, 33.835411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.377480, 28.726665, 33.762794>,  <30.146513, 28.775208, 33.719223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.377480, 28.726665, 33.762794>,  <30.762423, 28.645763, 33.835411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377480, 28.726665, 33.762794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262161, 0.866981, -0.423811,
		0.071676, -0.455452, -0.887370,
		-0.962359, 0.202257, -0.181543,
		30.088772, 28.787342, 33.708332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523726, 28.692190, 33.430149>,  <30.762423, 28.645763, 33.835411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523726, 28.692190, 33.430149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.742235, 28.955803, 33.636936>,  <31.873341, 29.113972, 33.761009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.742235, 28.955803, 33.636936>,  <31.523726, 28.692190, 33.430149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742235, 28.955803, 33.636936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042603, -0.638263, 0.768639,
		0.836523, -0.397862, -0.376743,
		0.546273, 0.659034, 0.516971,
		31.906116, 29.153513, 33.792027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113297, 28.319908, 33.643375>,  <31.523726, 28.692190, 33.430149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113297, 28.319908, 33.643375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.083496, 28.638329, 33.883625>,  <32.065617, 28.829380, 34.027775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.083496, 28.638329, 33.883625>,  <32.113297, 28.319908, 33.643375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083496, 28.638329, 33.883625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205322, -0.577152, 0.790404,
		0.975855, 0.182208, -0.120449,
		-0.074500, 0.796050, 0.600628,
		32.061146, 28.877144, 34.063812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699539, 28.384352, 34.072853>,  <32.113297, 28.319908, 33.643375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699539, 28.384352, 34.072853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.436604, 28.598831, 34.284660>,  <32.278843, 28.727520, 34.411747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.436604, 28.598831, 34.284660>,  <32.699539, 28.384352, 34.072853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436604, 28.598831, 34.284660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300594, -0.457780, 0.836709,
		0.691047, 0.709173, 0.139739,
		-0.657341, 0.536201, 0.529521,
		32.239403, 28.759691, 34.443516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054058, 28.638618, 34.656940>,  <32.699539, 28.384352, 34.072853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054058, 28.638618, 34.656940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.665436, 28.640472, 34.751656>,  <32.432262, 28.641584, 34.808483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.665436, 28.640472, 34.751656>,  <33.054058, 28.638618, 34.656940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665436, 28.640472, 34.751656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200339, -0.517119, 0.832137,
		0.126302, 0.855901, 0.501479,
		-0.971551, 0.004635, 0.236784,
		32.373970, 28.641863, 34.822689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034763, 28.888470, 35.331833>,  <33.054058, 28.638618, 34.656940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034763, 28.888470, 35.331833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.697872, 28.682266, 35.268711>,  <32.495739, 28.558544, 35.230839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.697872, 28.682266, 35.268711>,  <33.034763, 28.888470, 35.331833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697872, 28.682266, 35.268711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164913, -0.525025, 0.834957,
		-0.513278, 0.677200, 0.527205,
		-0.842229, -0.515508, -0.157805,
		32.445202, 28.527615, 35.221371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711723, 28.917809, 35.907810>,  <33.034763, 28.888470, 35.331833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711723, 28.917809, 35.907810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.536709, 28.602009, 35.735645>,  <32.431702, 28.412529, 35.632347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.536709, 28.602009, 35.735645>,  <32.711723, 28.917809, 35.907810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536709, 28.602009, 35.735645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102708, -0.431652, 0.896174,
		-0.893316, 0.436314, 0.107775,
		-0.437535, -0.789497, -0.430415,
		32.405449, 28.365160, 35.606522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204567, 28.698647, 36.428417>,  <32.711723, 28.917809, 35.907810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204567, 28.698647, 36.428417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.259327, 28.393349, 36.175842>,  <32.292183, 28.210171, 36.024296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.259327, 28.393349, 36.175842>,  <32.204567, 28.698647, 36.428417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259327, 28.393349, 36.175842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093281, -0.644541, 0.758858,
		-0.986183, -0.044986, -0.159434,
		0.136899, -0.763245, -0.631440,
		32.300396, 28.164375, 35.986412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688875, 28.266026, 36.561207>,  <32.204567, 28.698647, 36.428417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688875, 28.266026, 36.561207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.965425, 28.038136, 36.383484>,  <32.131355, 27.901402, 36.276848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.965425, 28.038136, 36.383484>,  <31.688875, 28.266026, 36.561207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965425, 28.038136, 36.383484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264264, -0.771766, 0.578397,
		-0.672429, -0.282476, -0.684140,
		0.691379, -0.569724, -0.444309,
		32.172840, 27.867218, 36.250191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346176, 27.668695, 36.406078>,  <31.688875, 28.266026, 36.561207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346176, 27.668695, 36.406078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.738159, 27.589149, 36.401443>,  <31.973349, 27.541422, 36.398663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.738159, 27.589149, 36.401443>,  <31.346176, 27.668695, 36.406078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738159, 27.589149, 36.401443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165083, -0.843295, 0.511469,
		-0.111489, -0.499305, -0.859224,
		0.979958, -0.198866, -0.011592,
		32.032146, 27.529490, 36.397964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317686, 27.025396, 36.243484>,  <31.346176, 27.668695, 36.406078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317686, 27.025396, 36.243484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.693417, 27.076107, 36.370983>,  <31.918854, 27.106533, 36.447483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.693417, 27.076107, 36.370983>,  <31.317686, 27.025396, 36.243484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693417, 27.076107, 36.370983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005097, -0.923937, 0.382511,
		0.342994, -0.360927, -0.867230,
		0.939324, 0.126779, 0.318744,
		31.975214, 27.114141, 36.466606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710867, 26.447380, 36.011562>,  <31.317686, 27.025396, 36.243484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710867, 26.447380, 36.011562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.910612, 26.587009, 36.328747>,  <32.030460, 26.670788, 36.519058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.910612, 26.587009, 36.328747>,  <31.710867, 26.447380, 36.011562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910612, 26.587009, 36.328747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017666, -0.910948, 0.412142,
		0.866213, -0.219816, -0.448726,
		0.499362, 0.349076, 0.792959,
		32.060421, 26.691732, 36.566635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233410, 25.951273, 36.153080>,  <31.710867, 26.447380, 36.011562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233410, 25.951273, 36.153080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.189518, 26.155960, 36.493927>,  <32.163181, 26.278772, 36.698437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.189518, 26.155960, 36.493927>,  <32.233410, 25.951273, 36.153080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189518, 26.155960, 36.493927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127910, -0.842896, 0.522652,
		0.985697, 0.166346, 0.027039,
		-0.109732, 0.511717, 0.852118,
		32.156597, 26.309475, 36.749561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776592, 25.717180, 36.658001>,  <32.233410, 25.951273, 36.153080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776592, 25.717180, 36.658001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.492462, 25.851063, 36.905678>,  <32.321983, 25.931393, 37.054283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.492462, 25.851063, 36.905678>,  <32.776592, 25.717180, 36.658001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492462, 25.851063, 36.905678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007369, -0.876117, 0.482042,
		0.703831, 0.346971, 0.619866,
		-0.710329, 0.334708, 0.619195,
		32.279362, 25.951475, 37.091434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006756, 25.579311, 37.393284>,  <32.776592, 25.717180, 36.658001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006756, 25.579311, 37.393284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.609150, 25.582813, 37.349720>,  <32.370586, 25.584915, 37.323582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.609150, 25.582813, 37.349720>,  <33.006756, 25.579311, 37.393284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609150, 25.582813, 37.349720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060775, -0.872664, 0.484524,
		-0.090800, 0.488242, 0.867972,
		-0.994013, 0.008756, -0.108911,
		32.310947, 25.585440, 37.317047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964104, 24.941944, 36.963017>,  <33.006756, 25.579311, 37.393284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964104, 24.941944, 36.963017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.172466, 24.696522, 36.725628>,  <33.297482, 24.549269, 36.583195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.172466, 24.696522, 36.725628>,  <32.964104, 24.941944, 36.963017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172466, 24.696522, 36.725628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308678, 0.783589, -0.539173,
		0.795850, 0.097666, 0.597565,
		0.520904, -0.613556, -0.593472,
		33.328739, 24.512455, 36.547585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529785, 25.395874, 36.654224>,  <32.964104, 24.941944, 36.963017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529785, 25.395874, 36.654224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.558777, 25.068974, 36.425541>,  <33.576172, 24.872833, 36.288330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.558777, 25.068974, 36.425541>,  <33.529785, 25.395874, 36.654224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558777, 25.068974, 36.425541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591794, 0.496639, -0.634924,
		0.802824, -0.292316, 0.519639,
		0.072475, -0.817252, -0.571705,
		33.580521, 24.823797, 36.254028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266533, 25.381577, 36.309105>,  <33.529785, 25.395874, 36.654224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266533, 25.381577, 36.309105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.025780, 25.146824, 36.092476>,  <33.881329, 25.005972, 35.962498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.025780, 25.146824, 36.092476>,  <34.266533, 25.381577, 36.309105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025780, 25.146824, 36.092476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445475, 0.316102, -0.837635,
		0.662786, -0.745418, 0.071185,
		-0.601886, -0.586883, -0.541572,
		33.845215, 24.970758, 35.930004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743587, 24.935116, 35.774040>,  <34.266533, 25.381577, 36.309105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743587, 24.935116, 35.774040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.371223, 24.934292, 35.627945>,  <34.147804, 24.933798, 35.540287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.371223, 24.934292, 35.627945>,  <34.743587, 24.935116, 35.774040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371223, 24.934292, 35.627945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349561, 0.284830, -0.892568,
		0.105869, -0.958575, -0.264432,
		-0.930913, -0.002060, -0.365236,
		34.091949, 24.933674, 35.518375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780872, 24.660456, 35.144688>,  <34.743587, 24.935116, 35.774040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780872, 24.660456, 35.144688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.443047, 24.874619, 35.141586>,  <34.240353, 25.003117, 35.139725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.443047, 24.874619, 35.141586>,  <34.780872, 24.660456, 35.144688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443047, 24.874619, 35.141586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277369, 0.425045, -0.861629,
		-0.458023, -0.729848, -0.507481,
		-0.844560, 0.535405, -0.007757,
		34.189678, 25.035240, 35.139259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487637, 24.479692, 34.503399>,  <34.780872, 24.660456, 35.144688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487637, 24.479692, 34.503399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.352871, 24.842312, 34.605106>,  <34.272011, 25.059883, 34.666130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.352871, 24.842312, 34.605106>,  <34.487637, 24.479692, 34.503399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352871, 24.842312, 34.605106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337785, 0.368463, -0.866105,
		-0.878857, -0.205915, -0.430360,
		-0.336916, 0.906551, 0.254271,
		34.251797, 25.114277, 34.681389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398273, 24.756575, 33.933514>,  <34.487637, 24.479692, 34.503399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398273, 24.756575, 33.933514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.366211, 25.096985, 34.141102>,  <34.346973, 25.301231, 34.265656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.366211, 25.096985, 34.141102>,  <34.398273, 24.756575, 33.933514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366211, 25.096985, 34.141102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185624, 0.524283, -0.831066,
		-0.979346, 0.029717, -0.199996,
		-0.080158, 0.851025, 0.518971,
		34.342163, 25.352293, 34.296795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885418, 24.282501, 33.778942>,  <34.398273, 24.756575, 33.933514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885418, 24.282501, 33.778942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.893227, 24.017464, 33.479454>,  <33.897911, 23.858440, 33.299759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.893227, 24.017464, 33.479454>,  <33.885418, 24.282501, 33.778942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893227, 24.017464, 33.479454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398787, -0.691879, 0.601891,
		-0.916836, 0.286831, -0.277742,
		0.019523, -0.662595, -0.748724,
		33.899082, 23.818686, 33.254837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156532, 24.024784, 33.627838>,  <33.885418, 24.282501, 33.778942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156532, 24.024784, 33.627838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.411842, 23.754459, 33.480392>,  <33.565029, 23.592264, 33.391926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.411842, 23.754459, 33.480392>,  <33.156532, 24.024784, 33.627838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411842, 23.754459, 33.480392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413525, -0.704893, 0.576302,
		-0.649302, -0.215414, -0.729386,
		0.638282, -0.675813, -0.368609,
		33.603325, 23.551716, 33.369808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722046, 23.381437, 33.486328>,  <33.156532, 24.024784, 33.627838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722046, 23.381437, 33.486328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.095810, 23.239372, 33.497208>,  <33.320068, 23.154133, 33.503735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.095810, 23.239372, 33.497208>,  <32.722046, 23.381437, 33.486328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095810, 23.239372, 33.497208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315304, -0.789170, 0.527062,
		-0.165726, -0.501068, -0.849392,
		0.934408, -0.355164, 0.027203,
		33.376133, 23.132822, 33.505367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587765, 22.723545, 33.329979>,  <32.722046, 23.381437, 33.486328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587765, 22.723545, 33.329979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.953007, 22.738384, 33.492390>,  <33.172153, 22.747288, 33.589836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.953007, 22.738384, 33.492390>,  <32.587765, 22.723545, 33.329979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953007, 22.738384, 33.492390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246948, -0.742079, 0.623166,
		0.324419, -0.669285, -0.668438,
		0.913110, 0.037098, 0.406023,
		33.226940, 22.749514, 33.614197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844517, 22.093290, 33.295815>,  <32.587765, 22.723545, 33.329979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844517, 22.093290, 33.295815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.071136, 22.257305, 33.581722>,  <33.207108, 22.355713, 33.753265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.071136, 22.257305, 33.581722>,  <32.844517, 22.093290, 33.295815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071136, 22.257305, 33.581722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070116, -0.840273, 0.537611,
		0.821039, -0.354700, -0.447306,
		0.566550, 0.410036, 0.714767,
		33.241100, 22.380316, 33.796154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261166, 21.580259, 33.435734>,  <32.844517, 22.093290, 33.295815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261166, 21.580259, 33.435734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.304626, 21.811386, 33.759296>,  <33.330704, 21.950062, 33.953434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.304626, 21.811386, 33.759296>,  <33.261166, 21.580259, 33.435734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304626, 21.811386, 33.759296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081855, -0.805756, 0.586564,
		0.990704, -0.129944, -0.040251,
		0.108653, 0.577816, 0.808902,
		33.337223, 21.984732, 34.001968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849854, 21.272823, 33.784164>,  <33.261166, 21.580259, 33.435734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849854, 21.272823, 33.784164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.650875, 21.486153, 34.057838>,  <33.531487, 21.614151, 34.222042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.650875, 21.486153, 34.057838>,  <33.849854, 21.272823, 33.784164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650875, 21.486153, 34.057838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141673, -0.728159, 0.670606,
		0.855846, 0.430523, 0.286665,
		-0.497449, 0.533323, 0.684186,
		33.501640, 21.646149, 34.263096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265656, 21.190178, 34.457214>,  <33.849854, 21.272823, 33.784164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265656, 21.190178, 34.457214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.894176, 21.307510, 34.547970>,  <33.671288, 21.377909, 34.602421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.894176, 21.307510, 34.547970>,  <34.265656, 21.190178, 34.457214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894176, 21.307510, 34.547970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099045, -0.785797, 0.610502,
		0.357364, 0.544501, 0.758821,
		-0.928699, 0.293329, 0.226885,
		33.615566, 21.395510, 34.616035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119247, 20.936634, 35.173634>,  <34.265656, 21.190178, 34.457214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119247, 20.936634, 35.173634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.759689, 21.026390, 35.023098>,  <33.543953, 21.080244, 34.932777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.759689, 21.026390, 35.023098>,  <34.119247, 20.936634, 35.173634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759689, 21.026390, 35.023098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367560, -0.853700, 0.368911,
		-0.238502, 0.469941, 0.849866,
		-0.898897, 0.224391, -0.376341,
		33.490021, 21.093708, 34.910194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.053909, 31.559189, 22.547476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711945, 31.625725, 22.744030>,  <34.506767, 31.665648, 22.861963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711945, 31.625725, 22.744030>,  <35.053909, 31.559189, 22.547476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711945, 31.625725, 22.744030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409330, -0.365630, 0.835921,
		0.318714, 0.915776, 0.244492,
		-0.854909, 0.166342, 0.491386,
		34.455471, 31.675627, 22.891445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291889, 31.960615, 23.165262>,  <35.053909, 31.559189, 22.547476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291889, 31.960615, 23.165262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937553, 31.788643, 23.235054>,  <34.724953, 31.685459, 23.276930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937553, 31.788643, 23.235054>,  <35.291889, 31.960615, 23.165262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937553, 31.788643, 23.235054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293229, -0.227313, 0.928626,
		-0.359583, 0.873778, 0.327432,
		-0.885842, -0.429931, 0.174479,
		34.671803, 31.659664, 23.287397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212505, 32.026829, 23.907204>,  <35.291889, 31.960615, 23.165262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212505, 32.026829, 23.907204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925896, 31.760250, 23.824791>,  <34.753929, 31.600304, 23.775343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925896, 31.760250, 23.824791>,  <35.212505, 32.026829, 23.907204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925896, 31.760250, 23.824791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226415, -0.501559, 0.834970,
		-0.659800, 0.551623, 0.510270,
		-0.716520, -0.666446, -0.206033,
		34.710941, 31.560316, 23.762981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819805, 32.033684, 24.480740>,  <35.212505, 32.026829, 23.907204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819805, 32.033684, 24.480740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760017, 31.681351, 24.301056>,  <34.724144, 31.469950, 24.193247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760017, 31.681351, 24.301056>,  <34.819805, 32.033684, 24.480740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760017, 31.681351, 24.301056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337643, -0.472473, 0.814105,
		-0.929331, -0.029986, 0.368029,
		-0.149472, -0.880835, -0.449208,
		34.715176, 31.417101, 24.166294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357830, 31.652023, 24.869600>,  <34.819805, 32.033684, 24.480740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357830, 31.652023, 24.869600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540977, 31.376888, 24.644306>,  <34.650867, 31.211807, 24.509130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540977, 31.376888, 24.644306>,  <34.357830, 31.652023, 24.869600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540977, 31.376888, 24.644306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006717, -0.636206, 0.771490,
		-0.888993, -0.349461, -0.295921,
		0.457872, -0.687837, -0.563235,
		34.678341, 31.170538, 24.475336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945538, 31.002979, 24.925421>,  <34.357830, 31.652023, 24.869600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945538, 31.002979, 24.925421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306976, 30.879749, 24.806355>,  <34.523838, 30.805811, 24.734915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306976, 30.879749, 24.806355>,  <33.945538, 31.002979, 24.925421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306976, 30.879749, 24.806355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036858, -0.748187, 0.662464,
		-0.426799, -0.587627, -0.687413,
		0.903595, -0.308076, -0.297666,
		34.578056, 30.787327, 24.717054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884716, 30.216423, 24.828112>,  <33.945538, 31.002979, 24.925421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884716, 30.216423, 24.828112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269955, 30.315224, 24.870892>,  <34.501099, 30.374504, 24.896559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269955, 30.315224, 24.870892>,  <33.884716, 30.216423, 24.828112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269955, 30.315224, 24.870892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157713, -0.839849, 0.519404,
		0.218115, -0.483368, -0.847809,
		0.963095, 0.247000, 0.106950,
		34.558884, 30.389324, 24.902977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281013, 29.558722, 24.701124>,  <33.884716, 30.216423, 24.828112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281013, 29.558722, 24.701124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527370, 29.807827, 24.894138>,  <34.675186, 29.957291, 25.009947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527370, 29.807827, 24.894138>,  <34.281013, 29.558722, 24.701124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527370, 29.807827, 24.894138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271643, -0.742792, 0.611940,
		0.739517, -0.245813, -0.626650,
		0.615893, 0.622765, 0.482534,
		34.712139, 29.994656, 25.038898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945992, 29.298780, 24.679113>,  <34.281013, 29.558722, 24.701124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945992, 29.298780, 24.679113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963192, 29.532028, 25.003613>,  <34.973515, 29.671976, 25.198313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963192, 29.532028, 25.003613>,  <34.945992, 29.298780, 24.679113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963192, 29.532028, 25.003613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321001, -0.777010, 0.541492,
		0.946102, 0.237125, -0.220596,
		0.043004, 0.583118, 0.811248,
		34.976093, 29.706964, 25.246986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441452, 28.988844, 25.004015>,  <34.945992, 29.298780, 24.679113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441452, 28.988844, 25.004015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338520, 29.230072, 25.306030>,  <35.276760, 29.374809, 25.487240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338520, 29.230072, 25.306030>,  <35.441452, 28.988844, 25.004015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338520, 29.230072, 25.306030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214605, -0.726173, 0.653159,
		0.942191, 0.330115, 0.057447,
		-0.257334, 0.603073, 0.755038,
		35.261318, 29.410994, 25.532541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882072, 28.898800, 25.482130>,  <35.441452, 28.988844, 25.004015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882072, 28.898800, 25.482130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575340, 29.047672, 25.691299>,  <35.391300, 29.136995, 25.816801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575340, 29.047672, 25.691299>,  <35.882072, 28.898800, 25.482130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575340, 29.047672, 25.691299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276801, -0.543299, 0.792595,
		0.579090, 0.752535, 0.313601,
		-0.766835, 0.372179, 0.522922,
		35.345291, 29.159327, 25.848175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143841, 29.238934, 26.146444>,  <35.882072, 28.898800, 25.482130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143841, 29.238934, 26.146444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767742, 29.113464, 26.199417>,  <35.542084, 29.038183, 26.231201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767742, 29.113464, 26.199417>,  <36.143841, 29.238934, 26.146444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767742, 29.113464, 26.199417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299064, -0.574918, 0.761597,
		-0.162756, 0.755697, 0.634376,
		-0.940251, -0.313674, 0.132430,
		35.485668, 29.019361, 26.239145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112724, 29.702511, 26.758789>,  <36.143841, 29.238934, 26.146444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112724, 29.702511, 26.758789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374294, 29.910084, 26.979004>,  <36.531239, 30.034628, 27.111134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374294, 29.910084, 26.979004>,  <36.112724, 29.702511, 26.758789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374294, 29.910084, 26.979004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127471, 0.641711, -0.756279,
		-0.745742, 0.564729, 0.353483,
		0.653927, 0.518930, 0.550537,
		36.570473, 30.065763, 27.144165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884720, 30.352884, 26.588928>,  <36.112724, 29.702511, 26.758789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884720, 30.352884, 26.588928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263943, 30.327629, 26.713634>,  <36.491478, 30.312475, 26.788458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263943, 30.327629, 26.713634>,  <35.884720, 30.352884, 26.588928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263943, 30.327629, 26.713634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269852, 0.678557, -0.683183,
		-0.168416, 0.731829, 0.660350,
		0.948059, -0.063138, 0.311766,
		36.548359, 30.308687, 26.807163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041676, 31.012392, 26.535191>,  <35.884720, 30.352884, 26.588928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041676, 31.012392, 26.535191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393715, 30.822647, 26.543324>,  <36.604939, 30.708801, 26.548203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393715, 30.822647, 26.543324>,  <36.041676, 31.012392, 26.535191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393715, 30.822647, 26.543324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348398, 0.616116, -0.706414,
		0.322569, 0.628795, 0.707507,
		0.880096, -0.474361, 0.020331,
		36.657745, 30.680338, 26.549423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568157, 31.603907, 26.474817>,  <36.041676, 31.012392, 26.535191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568157, 31.603907, 26.474817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758270, 31.260006, 26.400063>,  <36.872337, 31.053665, 26.355209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758270, 31.260006, 26.400063>,  <36.568157, 31.603907, 26.474817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758270, 31.260006, 26.400063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395667, 0.398583, -0.827393,
		0.785844, 0.319304, 0.529617,
		0.475286, -0.859754, -0.186885,
		36.900856, 31.002079, 26.343996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228420, 31.748648, 26.390699>,  <36.568157, 31.603907, 26.474817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228420, 31.748648, 26.390699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202938, 31.403183, 26.190685>,  <37.187649, 31.195904, 26.070677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202938, 31.403183, 26.190685>,  <37.228420, 31.748648, 26.390699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202938, 31.403183, 26.190685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350456, 0.449779, -0.821510,
		0.934410, -0.227575, 0.274021,
		-0.063706, -0.863660, -0.500033,
		37.183826, 31.144085, 26.040676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793289, 31.763988, 26.060997>,  <37.228420, 31.748648, 26.390699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793289, 31.763988, 26.060997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540668, 31.514336, 25.876999>,  <37.389095, 31.364544, 25.766600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540668, 31.514336, 25.876999>,  <37.793289, 31.763988, 26.060997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540668, 31.514336, 25.876999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107066, 0.517403, -0.849018,
		0.767905, -0.585449, -0.259944,
		-0.631553, -0.624134, -0.459998,
		37.351204, 31.327095, 25.739000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133797, 31.832916, 25.498320>,  <37.793289, 31.763988, 26.060997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133797, 31.832916, 25.498320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791725, 31.659737, 25.384315>,  <37.586483, 31.555828, 25.315914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791725, 31.659737, 25.384315>,  <38.133797, 31.832916, 25.498320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791725, 31.659737, 25.384315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001536, 0.547729, -0.836655,
		0.518335, -0.715925, -0.467739,
		-0.855176, -0.432949, -0.285007,
		37.535172, 31.529852, 25.298813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167248, 31.666115, 24.821451>,  <38.133797, 31.832916, 25.498320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167248, 31.666115, 24.821451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771664, 31.685860, 24.877338>,  <37.534313, 31.697706, 24.910872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771664, 31.685860, 24.877338>,  <38.167248, 31.666115, 24.821451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771664, 31.685860, 24.877338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065848, 0.698281, -0.712789,
		-0.132750, -0.714120, -0.687321,
		-0.988960, 0.049364, 0.139720,
		37.474976, 31.700668, 24.919254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866722, 31.700886, 24.139185>,  <38.167248, 31.666115, 24.821451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866722, 31.700886, 24.139185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580822, 31.829262, 24.387741>,  <37.409283, 31.906288, 24.536875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580822, 31.829262, 24.387741>,  <37.866722, 31.700886, 24.139185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580822, 31.829262, 24.387741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258783, 0.704063, -0.661307,
		-0.649738, -0.633476, -0.420177,
		-0.714753, 0.320942, 0.621389,
		37.366398, 31.925545, 24.574158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341564, 31.753262, 23.699287>,  <37.866722, 31.700886, 24.139185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341564, 31.753262, 23.699287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251450, 31.969551, 24.023476>,  <37.197380, 32.099323, 24.217989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251450, 31.969551, 24.023476>,  <37.341564, 31.753262, 23.699287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251450, 31.969551, 24.023476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270685, 0.764371, -0.585207,
		-0.935936, -0.351222, -0.025838,
		-0.225287, 0.540722, 0.810473,
		37.183865, 32.131767, 24.266617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682041, 32.033810, 23.609852>,  <37.341564, 31.753262, 23.699287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682041, 32.033810, 23.609852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879864, 32.255955, 23.877281>,  <36.998558, 32.389240, 24.037739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879864, 32.255955, 23.877281>,  <36.682041, 32.033810, 23.609852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879864, 32.255955, 23.877281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204752, 0.822025, -0.531367,
		-0.844686, 0.125897, 0.520245,
		0.494552, 0.555360, 0.668575,
		37.028229, 32.422562, 24.077854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303219, 32.680763, 23.658934>,  <36.682041, 32.033810, 23.609852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303219, 32.680763, 23.658934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652935, 32.816040, 23.798218>,  <36.862762, 32.897205, 23.881788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652935, 32.816040, 23.798218>,  <36.303219, 32.680763, 23.658934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652935, 32.816040, 23.798218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123652, 0.848857, -0.513957,
		-0.469396, 0.406288, 0.783962,
		0.874287, 0.338188, 0.348212,
		36.915222, 32.917496, 23.902681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184124, 33.411663, 24.008974>,  <36.303219, 32.680763, 23.658934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184124, 33.411663, 24.008974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561474, 33.353577, 23.889675>,  <36.787884, 33.318726, 23.818096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561474, 33.353577, 23.889675>,  <36.184124, 33.411663, 24.008974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561474, 33.353577, 23.889675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004068, 0.904086, -0.427332,
		0.331699, 0.401922, 0.853484,
		0.943376, -0.145218, -0.298249,
		36.844486, 33.310013, 23.800200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478580, 33.965927, 24.175797>,  <36.184124, 33.411663, 24.008974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478580, 33.965927, 24.175797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720360, 33.849026, 23.879356>,  <36.865429, 33.778885, 23.701492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720360, 33.849026, 23.879356>,  <36.478580, 33.965927, 24.175797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720360, 33.849026, 23.879356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099345, 0.895365, -0.434110,
		0.790425, 0.336022, 0.512169,
		0.604449, -0.292250, -0.741102,
		36.901695, 33.761353, 23.657026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162033, 34.034874, 24.922386>,  <36.478580, 33.965927, 24.175797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162033, 34.034874, 24.922386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883335, 34.321281, 24.939659>,  <35.716118, 34.493126, 24.950024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883335, 34.321281, 24.939659>,  <36.162033, 34.034874, 24.922386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883335, 34.321281, 24.939659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072518, -0.130203, 0.988832,
		0.713648, 0.685828, 0.142642,
		-0.696741, 0.716022, 0.043184,
		35.674313, 34.536087, 24.952614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312088, 34.545582, 25.476923>,  <36.162033, 34.034874, 24.922386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312088, 34.545582, 25.476923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921234, 34.488003, 25.414333>,  <35.686722, 34.453457, 25.376780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921234, 34.488003, 25.414333>,  <36.312088, 34.545582, 25.476923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921234, 34.488003, 25.414333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111611, -0.279119, 0.953748,
		-0.180961, 0.949407, 0.256672,
		-0.977137, -0.143944, -0.156474,
		35.628094, 34.444820, 25.367392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904186, 34.792435, 25.988111>,  <36.312088, 34.545582, 25.476923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904186, 34.792435, 25.988111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637997, 34.532398, 25.841400>,  <35.478283, 34.376377, 25.753374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637997, 34.532398, 25.841400>,  <35.904186, 34.792435, 25.988111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637997, 34.532398, 25.841400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309350, -0.206987, 0.928148,
		-0.679300, 0.731120, -0.063362,
		-0.665472, -0.650092, -0.366779,
		35.438354, 34.337372, 25.731367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278831, 34.807095, 26.475948>,  <35.904186, 34.792435, 25.988111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278831, 34.807095, 26.475948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220669, 34.463223, 26.280071>,  <35.185772, 34.256897, 26.162544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220669, 34.463223, 26.280071>,  <35.278831, 34.807095, 26.475948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220669, 34.463223, 26.280071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410596, -0.397884, 0.820427,
		-0.900148, 0.320365, -0.295127,
		-0.145409, -0.859683, -0.489695,
		35.177048, 34.205318, 26.133163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672756, 34.457161, 26.754675>,  <35.278831, 34.807095, 26.475948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672756, 34.457161, 26.754675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823101, 34.135658, 26.570194>,  <34.913307, 33.942757, 26.459507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823101, 34.135658, 26.570194>,  <34.672756, 34.457161, 26.754675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823101, 34.135658, 26.570194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321620, -0.579900, 0.748516,
		-0.869075, -0.133005, -0.476465,
		0.375858, -0.803757, -0.461199,
		34.935860, 33.894531, 26.431835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206375, 33.919029, 26.728863>,  <34.672756, 34.457161, 26.754675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206375, 33.919029, 26.728863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561771, 33.739414, 26.691010>,  <34.775009, 33.631645, 26.668297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561771, 33.739414, 26.691010>,  <34.206375, 33.919029, 26.728863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561771, 33.739414, 26.691010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336320, -0.777465, 0.531448,
		-0.312214, -0.440358, -0.841788,
		0.888488, -0.449036, -0.094635,
		34.828320, 33.604702, 26.662619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999817, 33.226063, 26.742258>,  <34.206375, 33.919029, 26.728863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999817, 33.226063, 26.742258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391689, 33.223579, 26.822437>,  <34.626812, 33.222088, 26.870544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391689, 33.223579, 26.822437>,  <33.999817, 33.226063, 26.742258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391689, 33.223579, 26.822437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157030, -0.645437, 0.747497,
		0.124735, -0.763788, -0.633300,
		0.979685, -0.006208, 0.200447,
		34.685596, 33.221718, 26.882572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190117, 32.598206, 26.841057>,  <33.999817, 33.226063, 26.742258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190117, 32.598206, 26.841057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485641, 32.797684, 27.022369>,  <34.662956, 32.917370, 27.131157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485641, 32.797684, 27.022369>,  <34.190117, 32.598206, 26.841057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485641, 32.797684, 27.022369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033248, -0.644823, 0.763609,
		0.673092, -0.579233, -0.459822,
		0.738811, 0.498691, 0.453283,
		34.707283, 32.947292, 27.158354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749004, 32.068501, 27.041607>,  <34.190117, 32.598206, 26.841057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749004, 32.068501, 27.041607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752460, 32.395218, 27.272354>,  <34.754536, 32.591248, 27.410803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752460, 32.395218, 27.272354>,  <34.749004, 32.068501, 27.041607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752460, 32.395218, 27.272354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208489, -0.562739, 0.799911,
		0.977987, -0.127181, 0.165430,
		0.008639, 0.816793, 0.576867,
		34.755051, 32.640255, 27.445414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116974, 31.853184, 27.608412>,  <34.749004, 32.068501, 27.041607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116974, 31.853184, 27.608412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923660, 32.179840, 27.734608>,  <34.807671, 32.375835, 27.810326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923660, 32.179840, 27.734608>,  <35.116974, 31.853184, 27.608412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923660, 32.179840, 27.734608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166088, -0.439351, 0.882828,
		0.859564, 0.374259, 0.347966,
		-0.483286, 0.816640, 0.315491,
		34.778675, 32.424831, 27.829254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324436, 31.891750, 28.288044>,  <35.116974, 31.853184, 27.608412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324436, 31.891750, 28.288044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002819, 32.128857, 28.269547>,  <34.809849, 32.271118, 28.258448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002819, 32.128857, 28.269547>,  <35.324436, 31.891750, 28.288044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002819, 32.128857, 28.269547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363715, -0.428847, 0.826923,
		0.470340, 0.681704, 0.560411,
		-0.804048, 0.592764, -0.046242,
		34.761604, 32.306686, 28.255674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352222, 32.229855, 28.894211>,  <35.324436, 31.891750, 28.288044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352222, 32.229855, 28.894211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975536, 32.235416, 28.759758>,  <34.749527, 32.238754, 28.679087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975536, 32.235416, 28.759758>,  <35.352222, 32.229855, 28.894211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975536, 32.235416, 28.759758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334821, -0.135980, 0.932419,
		-0.032744, 0.990614, 0.132709,
		-0.941713, 0.013902, -0.336131,
		34.693024, 32.239586, 28.658918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945011, 32.591801, 29.436241>,  <35.352222, 32.229855, 28.894211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945011, 32.591801, 29.436241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655262, 32.420952, 29.219780>,  <34.481411, 32.318443, 29.089903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655262, 32.420952, 29.219780>,  <34.945011, 32.591801, 29.436241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655262, 32.420952, 29.219780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528001, -0.160999, 0.833843,
		-0.443275, 0.889747, -0.108895,
		-0.724377, -0.427118, -0.541154,
		34.437950, 32.292816, 29.057434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311241, 32.947128, 29.590906>,  <34.945011, 32.591801, 29.436241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311241, 32.947128, 29.590906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206169, 32.585598, 29.455799>,  <34.143124, 32.368679, 29.374735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206169, 32.585598, 29.455799>,  <34.311241, 32.947128, 29.590906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206169, 32.585598, 29.455799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541223, -0.151784, 0.827067,
		-0.798796, 0.400066, -0.449302,
		-0.262685, -0.903830, -0.337769,
		34.127365, 32.314449, 29.354469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633873, 32.997585, 29.690767>,  <34.311241, 32.947128, 29.590906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633873, 32.997585, 29.690767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731483, 32.610706, 29.662533>,  <33.790051, 32.378578, 29.645592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731483, 32.610706, 29.662533>,  <33.633873, 32.997585, 29.690767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731483, 32.610706, 29.662533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507863, -0.189462, 0.840345,
		-0.826152, -0.169217, -0.537437,
		0.244024, -0.967197, -0.070586,
		33.804691, 32.320549, 29.641357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049263, 32.671959, 29.926609>,  <33.633873, 32.997585, 29.690767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049263, 32.671959, 29.926609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299637, 32.360130, 29.917904>,  <33.449860, 32.173035, 29.912682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299637, 32.360130, 29.917904>,  <33.049263, 32.671959, 29.926609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299637, 32.360130, 29.917904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484158, -0.410311, 0.772810,
		-0.611391, -0.473192, -0.634264,
		0.625933, -0.779573, -0.021761,
		33.487415, 32.126259, 29.911375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643452, 32.025051, 29.922421>,  <33.049263, 32.671959, 29.926609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643452, 32.025051, 29.922421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007057, 31.974506, 30.081276>,  <33.225220, 31.944180, 30.176590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007057, 31.974506, 30.081276>,  <32.643452, 32.025051, 29.922421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007057, 31.974506, 30.081276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381143, -0.637521, 0.669550,
		0.168577, -0.759999, -0.627681,
		0.909016, -0.126365, 0.397140,
		33.279762, 31.936596, 30.200418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680717, 31.367094, 30.115664>,  <32.643452, 32.025051, 29.922421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680717, 31.367094, 30.115664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972527, 31.525131, 30.338982>,  <33.147614, 31.619953, 30.472973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972527, 31.525131, 30.338982>,  <32.680717, 31.367094, 30.115664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972527, 31.525131, 30.338982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326555, -0.516019, 0.791887,
		0.600961, -0.760016, -0.247430,
		0.729526, 0.395094, 0.558294,
		33.191383, 31.643660, 30.506470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913639, 30.869232, 30.516140>,  <32.680717, 31.367094, 30.115664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913639, 30.869232, 30.516140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086830, 31.168053, 30.717911>,  <33.190746, 31.347345, 30.838974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086830, 31.168053, 30.717911>,  <32.913639, 30.869232, 30.516140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086830, 31.168053, 30.717911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233181, -0.447729, 0.863230,
		0.870723, -0.491381, -0.019658,
		0.432976, 0.747050, 0.504429,
		33.216724, 31.392168, 30.869240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435932, 30.596813, 30.971807>,  <32.913639, 30.869232, 30.516140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435932, 30.596813, 30.971807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336697, 30.961636, 31.102409>,  <33.277157, 31.180529, 31.180771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336697, 30.961636, 31.102409>,  <33.435932, 30.596813, 30.971807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336697, 30.961636, 31.102409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086459, -0.356542, 0.930270,
		0.964872, 0.202557, 0.167308,
		-0.248085, 0.912057, 0.326505,
		33.262272, 31.235252, 31.200361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801125, 30.704222, 31.580210>,  <33.435932, 30.596813, 30.971807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801125, 30.704222, 31.580210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488102, 30.950752, 31.615414>,  <33.300289, 31.098671, 31.636536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488102, 30.950752, 31.615414>,  <33.801125, 30.704222, 31.580210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488102, 30.950752, 31.615414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198676, -0.381195, 0.902894,
		0.590026, 0.689082, 0.420757,
		-0.782558, 0.616325, 0.088011,
		33.253334, 31.135651, 31.641817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870262, 30.861280, 32.225666>,  <33.801125, 30.704222, 31.580210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870262, 30.861280, 32.225666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486492, 30.949970, 32.155979>,  <33.256229, 31.003183, 32.114166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486492, 30.949970, 32.155979>,  <33.870262, 30.861280, 32.225666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486492, 30.949970, 32.155979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251856, -0.395977, 0.883047,
		0.126807, 0.891090, 0.435751,
		-0.959421, 0.221723, -0.174213,
		33.198666, 31.016487, 32.103714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644783, 31.176022, 32.853245>,  <33.870262, 30.861280, 32.225666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644783, 31.176022, 32.853245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314644, 31.075199, 32.651150>,  <33.116558, 31.014706, 32.529892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314644, 31.075199, 32.651150>,  <33.644783, 31.176022, 32.853245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314644, 31.075199, 32.651150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353533, -0.467004, 0.810507,
		-0.440240, 0.847570, 0.296332,
		-0.825350, -0.252054, -0.505238,
		33.067039, 30.999582, 32.499577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121475, 31.163740, 33.329727>,  <33.644783, 31.176022, 32.853245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121475, 31.163740, 33.329727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984985, 30.936630, 33.030075>,  <32.903091, 30.800365, 32.850285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984985, 30.936630, 33.030075>,  <33.121475, 31.163740, 33.329727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984985, 30.936630, 33.030075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466595, -0.589539, 0.659343,
		-0.816001, 0.574524, -0.063756,
		-0.341221, -0.567773, -0.749135,
		32.882618, 30.766298, 32.805336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415924, 30.955976, 33.505325>,  <33.121475, 31.163740, 33.329727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415924, 30.955976, 33.505325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511566, 30.694153, 33.218445>,  <32.568951, 30.537060, 33.046314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511566, 30.694153, 33.218445>,  <32.415924, 30.955976, 33.505325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511566, 30.694153, 33.218445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487339, -0.719759, 0.494417,
		-0.839839, 0.231304, -0.491089,
		0.239105, -0.654557, -0.717206,
		32.583298, 30.497786, 33.003284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773451, 30.637434, 33.257912>,  <32.415924, 30.955976, 33.505325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773451, 30.637434, 33.257912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080318, 30.385956, 33.207008>,  <32.264439, 30.235069, 33.176468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080318, 30.385956, 33.207008>,  <31.773451, 30.637434, 33.257912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080318, 30.385956, 33.207008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422064, -0.644153, 0.637910,
		-0.483024, -0.435674, -0.759523,
		0.767170, -0.628694, -0.127259,
		32.310471, 30.197348, 33.168831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414656, 30.010138, 33.088772>,  <31.773451, 30.637434, 33.257912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414656, 30.010138, 33.088772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787325, 29.893375, 33.175282>,  <32.010925, 29.823318, 33.227188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787325, 29.893375, 33.175282>,  <31.414656, 30.010138, 33.088772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787325, 29.893375, 33.175282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359880, -0.660106, 0.659352,
		-0.049706, -0.692134, -0.720055,
		0.931674, -0.291907, 0.216275,
		32.066826, 29.805803, 33.240166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302732, 29.262665, 33.088619>,  <31.414656, 30.010138, 33.088772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302732, 29.262665, 33.088619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622078, 29.366623, 33.305901>,  <31.813684, 29.428997, 33.436268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622078, 29.366623, 33.305901>,  <31.302732, 29.262665, 33.088619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622078, 29.366623, 33.305901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215336, -0.719204, 0.660588,
		0.562358, -0.644360, -0.518221,
		0.798363, 0.259895, 0.543204,
		31.861588, 29.444592, 33.468861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752373, 28.925571, 33.026295>,  <31.302732, 29.262665, 33.088619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752373, 28.925571, 33.026295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410309, 29.013596, 33.214027>,  <30.205070, 29.066410, 33.326668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410309, 29.013596, 33.214027>,  <30.752373, 28.925571, 33.026295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410309, 29.013596, 33.214027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055021, 0.861766, -0.504313,
		-0.515438, -0.457091, -0.724839,
		-0.855159, 0.220061, 0.469337,
		30.153761, 29.079615, 33.354828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354235, 29.065397, 32.478634>,  <30.752373, 28.925571, 33.026295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354235, 29.065397, 32.478634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151354, 29.240261, 32.775723>,  <30.029625, 29.345179, 32.953976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151354, 29.240261, 32.775723>,  <30.354235, 29.065397, 32.478634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151354, 29.240261, 32.775723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233346, 0.759951, -0.606649,
		-0.829636, -0.481006, -0.283440,
		-0.507202, 0.437158, 0.742724,
		29.999193, 29.371408, 32.998539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805613, 29.313492, 32.178974>,  <30.354235, 29.065397, 32.478634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805613, 29.313492, 32.178974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839409, 29.530991, 32.512970>,  <29.859688, 29.661489, 32.713367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839409, 29.530991, 32.512970>,  <29.805613, 29.313492, 32.178974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839409, 29.530991, 32.512970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337896, 0.803964, -0.489354,
		-0.937383, -0.240791, 0.251659,
		0.084493, 0.543747, 0.834985,
		29.864758, 29.694115, 32.763466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297176, 29.894785, 32.062538>,  <29.805613, 29.313492, 32.178974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297176, 29.894785, 32.062538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526299, 30.050514, 32.351070>,  <29.663771, 30.143951, 32.524189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526299, 30.050514, 32.351070>,  <29.297176, 29.894785, 32.062538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526299, 30.050514, 32.351070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097292, 0.906076, -0.411778,
		-0.813898, 0.165688, 0.556883,
		0.572804, 0.389325, 0.721333,
		29.698139, 30.167313, 32.567471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048723, 30.494658, 32.158573>,  <29.297176, 29.894785, 32.062538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048723, 30.494658, 32.158573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426598, 30.520344, 32.287228>,  <29.653322, 30.535755, 32.364418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426598, 30.520344, 32.287228>,  <29.048723, 30.494658, 32.158573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426598, 30.520344, 32.287228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109254, 0.863031, -0.493195,
		-0.309250, 0.501053, 0.808276,
		0.944684, 0.064213, 0.321634,
		29.710003, 30.539608, 32.383717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
