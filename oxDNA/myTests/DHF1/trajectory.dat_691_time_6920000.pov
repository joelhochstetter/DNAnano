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
	<3.356656, 3.627910, 3.990173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.689137, 3.504805, 3.804968>,  <3.888627, 3.430941, 3.693845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.689137, 3.504805, 3.804968>,  <3.356656, 3.627910, 3.990173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.689137, 3.504805, 3.804968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508104, -0.082469, -0.857338,
		0.225673, 0.947882, -0.224925,
		0.831205, -0.307763, -0.463012,
		3.938499, 3.412476, 3.666064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.453814, 4.010174, 3.387146>,  <3.356656, 3.627910, 3.990173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.453814, 4.010174, 3.387146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.625299, 3.648882, 3.379358>,  <3.728191, 3.432106, 3.374686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.625299, 3.648882, 3.379358>,  <3.453814, 4.010174, 3.387146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.625299, 3.648882, 3.379358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482091, -0.210491, -0.850460,
		0.764064, 0.373989, -0.525679,
		0.428713, -0.903231, -0.019468,
		3.753913, 3.377913, 3.373518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.654831, 3.961872, 2.715761>,  <3.453814, 4.010174, 3.387146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.654831, 3.961872, 2.715761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.567200, 3.609234, 2.882994>,  <3.514621, 3.397651, 2.983334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.567200, 3.609234, 2.882994>,  <3.654831, 3.961872, 2.715761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.567200, 3.609234, 2.882994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418416, -0.302206, -0.856505,
		0.881438, -0.362575, -0.302666,
		-0.219079, -0.881596, 0.418083,
		3.501476, 3.344755, 3.008419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.760345, 3.342365, 2.190523>,  <3.654831, 3.961872, 2.715761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.760345, 3.342365, 2.190523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.491224, 3.262276, 2.475409>,  <3.329752, 3.214222, 2.646340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.491224, 3.262276, 2.475409>,  <3.760345, 3.342365, 2.190523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.491224, 3.262276, 2.475409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603492, -0.408323, -0.684886,
		0.427945, -0.890608, 0.153886,
		-0.672801, -0.200224, 0.712215,
		3.289384, 3.202209, 2.689073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.610568, 2.528693, 2.309238>,  <3.760345, 3.342365, 2.190523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.610568, 2.528693, 2.309238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.291225, 2.729425, 2.442381>,  <3.099620, 2.849865, 2.522267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.291225, 2.729425, 2.442381>,  <3.610568, 2.528693, 2.309238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.291225, 2.729425, 2.442381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588903, -0.535178, -0.605622,
		-0.125781, -0.679523, 0.722792,
		-0.798356, 0.501830, 0.332858,
		3.051719, 2.879974, 2.542238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.107926, 1.948562, 2.428272>,  <3.610568, 2.528693, 2.309238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.107926, 1.948562, 2.428272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.931197, 2.303833, 2.377779>,  <2.825160, 2.516996, 2.347483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.931197, 2.303833, 2.377779>,  <3.107926, 1.948562, 2.428272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.931197, 2.303833, 2.377779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672609, -0.421073, -0.608518,
		-0.593626, -0.183951, 0.783435,
		-0.441821, 0.888178, -0.126233,
		2.798651, 2.570286, 2.339909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.382772, 1.801718, 2.346818>,  <3.107926, 1.948562, 2.428272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.382772, 1.801718, 2.346818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.431102, 2.169994, 2.198370>,  <2.460099, 2.390960, 2.109301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.431102, 2.169994, 2.198370>,  <2.382772, 1.801718, 2.346818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.431102, 2.169994, 2.198370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443371, -0.284444, -0.850008,
		-0.888158, 0.267245, 0.373839,
		0.120824, 0.920691, -0.371120,
		2.467349, 2.446202, 2.087034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.717827, 2.007097, 2.112936>,  <2.382772, 1.801718, 2.346818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.717827, 2.007097, 2.112936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.988059, 2.223896, 1.913004>,  <2.150198, 2.353975, 1.793045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.988059, 2.223896, 1.913004>,  <1.717827, 2.007097, 2.112936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.988059, 2.223896, 1.913004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470674, -0.204771, -0.858216,
		-0.567502, 0.815051, 0.116765,
		0.675580, 0.541997, -0.499830,
		2.190733, 2.386495, 1.763055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.927030, 1.792451, 0.303105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.650761, 1.857303, 0.585009>,  <2.484999, 1.896214, 0.754151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.650761, 1.857303, 0.585009>,  <2.927030, 1.792451, 0.303105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.650761, 1.857303, 0.585009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485062, 0.826668, 0.285192,
		-0.536363, 0.538826, -0.649601,
		-0.690673, 0.162130, 0.704758,
		2.443559, 1.905942, 0.796436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.058971, 2.451117, 0.441902>,  <2.927030, 1.792451, 0.303105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.058971, 2.451117, 0.441902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.779472, 2.364914, 0.714756>,  <2.611773, 2.313193, 0.878469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.779472, 2.364914, 0.714756>,  <3.058971, 2.451117, 0.441902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.779472, 2.364914, 0.714756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232994, 0.832992, 0.501835,
		-0.676363, 0.509589, -0.531839,
		-0.698747, -0.215507, 0.682136,
		2.569848, 2.300262, 0.919397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.060491, 3.065551, 0.722649>,  <3.058971, 2.451117, 0.441902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.060491, 3.065551, 0.722649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.844097, 2.824343, 0.957153>,  <2.714261, 2.679618, 1.097856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.844097, 2.824343, 0.957153>,  <3.060491, 3.065551, 0.722649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.844097, 2.824343, 0.957153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002083, 0.698032, 0.716064,
		-0.841031, 0.386157, -0.378880,
		-0.540984, -0.603021, 0.586262,
		2.681802, 2.643436, 1.133032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.027785, 3.322357, 1.402879>,  <3.060491, 3.065551, 0.722649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.027785, 3.322357, 1.402879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.752518, 3.042853, 1.481018>,  <2.587358, 2.875151, 1.527901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.752518, 3.042853, 1.481018>,  <3.027785, 3.322357, 1.402879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.752518, 3.042853, 1.481018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011355, 0.279577, 0.960056,
		-0.725463, 0.658461, -0.200330,
		-0.688167, -0.698760, 0.195346,
		2.546067, 2.833225, 1.539622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.456016, 3.651611, 1.631464>,  <3.027785, 3.322357, 1.402879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.456016, 3.651611, 1.631464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.461258, 3.277441, 1.772776>,  <2.464403, 3.052939, 1.857563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.461258, 3.277441, 1.772776>,  <2.456016, 3.651611, 1.631464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.461258, 3.277441, 1.772776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146621, 0.351289, 0.924715,
		-0.989106, 0.039680, 0.141757,
		0.013105, -0.935426, 0.353280,
		2.465189, 2.996813, 1.878760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.090859, 3.698367, 2.272867>,  <2.456016, 3.651611, 1.631464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.090859, 3.698367, 2.272867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.284416, 3.348519, 2.284777>,  <2.400551, 3.138610, 2.291922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.284416, 3.348519, 2.284777>,  <2.090859, 3.698367, 2.272867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.284416, 3.348519, 2.284777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487506, 0.297660, 0.820815,
		-0.726763, -0.382672, 0.570418,
		0.483893, -0.874620, 0.029773,
		2.429584, 3.086133, 2.293709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.991818, 3.432594, 2.994250>,  <2.090859, 3.698367, 2.272867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.991818, 3.432594, 2.994250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.324169, 3.260545, 2.853033>,  <2.523580, 3.157315, 2.768303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.324169, 3.260545, 2.853033>,  <1.991818, 3.432594, 2.994250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.324169, 3.260545, 2.853033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490656, 0.267020, 0.829432,
		-0.262488, -0.862378, 0.432903,
		0.830877, -0.430122, -0.353041,
		2.573432, 3.131508, 2.747121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.306947, 3.100183, 3.515908>,  <1.991818, 3.432594, 2.994250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.306947, 3.100183, 3.515908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.607822, 3.157969, 3.258741>,  <2.788347, 3.192640, 3.104441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.607822, 3.157969, 3.258741>,  <2.306947, 3.100183, 3.515908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.607822, 3.157969, 3.258741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584471, 0.304313, 0.752188,
		0.304313, -0.941554, 0.144465,
		-0.752188, -0.144465, 0.642917,
		2.833479, 3.201308, 3.065866>
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
